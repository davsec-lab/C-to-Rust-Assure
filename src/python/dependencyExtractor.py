import os
import glob
import subprocess
from tree_sitter import Language, Parser, Query, QueryCursor
from loggerFactory import getLogger
from functionAndDepsExtractor import FunctionAndDepsExtractor
from createArgumentMap import *
from dataclasses import dataclass
from typing import Optional
from tree_sitter import Node
from functionAndDeps import *
import shutil

parser = Parser(Language(tree_sitter_c.language()))

@dataclass
class ResolvedArg:
    struct_name: Optional[str]   # e.g. "csv_parser"
    is_pointer: bool             # is it a pointer to that struct?
    field_name: Optional[str]    # e.g. "quoted"
    field_index: Optional[int]   # 0-based index within the struct fields

def find_param_declaration(func_def: Node, var_name: str, source: bytes) -> Node | None:
    """
    func_def: a `function_definition` node
    var_name: name like "stu"
    Return the matching `parameter_declaration` node, or None.
    """
    func_decl = func_def.child_by_field_name("declarator")
    if func_decl is None:
        return None

    params = func_decl.child_by_field_name("parameters")  # parameter_list
    if params is None:
        return None

    for param in params.named_children:
        if param.type != "parameter_declaration":
            continue

        # Find the identifier inside this parameter's declarator
        ident_name = None
        stack = [param]
        while stack:
            n = stack.pop()
            if n.type == "identifier":
                ident_name = parse_node_info(source, n)
                break
            stack.extend(n.children)

        if ident_name == var_name:
            return param

    return None

def find_var_declaration(func_node: Node, var_name: str, use_node: Node, source: bytes) -> Optional[Node]:
    # DFS over the function body to find declarations
    result = None

    def visit(n: Node):
        nonlocal result
        if result is not None:
            return
        if n.type == "declaration" and n.start_byte <= use_node.start_byte:
            # Find identifier inside declarator
            for child in n.children:
                if child.type == "init_declarator" or child.type.endswith("declarator"):
                    # Use a small search: find first identifier in this declarator
                    stack = [child]
                    while stack:
                        c = stack.pop()
                        if c.type == "identifier":
                            name = parse_node_info(source, c)
                            if name == var_name:
                                result = n
                                return
                        stack.extend(c.children)
        for c in n.children:
            visit(c)

    # body is usually func_node.child_by_field_name("body")
    body = func_node.child_by_field_name("body") or func_node
    visit(body)
    return result

def extract_type_from_type_and_declarator(type_node: Node, declarator_node: Node,
                                          source: bytes, tree_root: Node) -> tuple[str, bool] | None:
    """
    type_node: node for the type (type_identifier or struct_specifier, etc.)
    declarator_node: node for the declarator (identifier / pointer_declarator / etc.)
    Returns (struct_name, is_pointer) or None.
    """
    # pointer? (either this declarator or a child is a pointer_declarator)
    is_pointer = (
        declarator_node.type == "pointer_declarator" or
        any(c.type == "pointer_declarator" for c in declarator_node.children)
    )

    struct_name = None

    # Case 1: direct struct type: `struct student *stu`
    if type_node.type == "struct_specifier":
        name_node = type_node.child_by_field_name("name")
        if name_node:
            struct_name = parse_node_info(source, name_node)
        else:
            struct_name = "<anonymous_struct>"

    # Case 2: typedef name: `student *stu` where student is typedef of a struct
    elif type_node.type == "type_identifier":
        typedef_name = parse_node_info(source, type_node)
        struct_name = resolve_typedef_to_struct(typedef_name, tree_root, source)

    if struct_name is None:
        return None

    return (struct_name, is_pointer)

def resolve_typedef_to_struct(typedef_name: str, root: Node, source: bytes) -> Optional[str]:
    """
    Find a typedef that defines typedef_name as a struct; return the struct's tag or typedef_name itself.
    """
    found_struct_name = None

    def visit(n: Node):
        nonlocal found_struct_name
        if found_struct_name is not None:
            return
        if n.type == "type_definition":  # typedef
            # find the declarator identifier (the typedef name)
            typedef_ident = None
            struct_spec = None
            for c in n.children:
                if c.type == "type_identifier":  # sometimes used for typedef name
                    typedef_ident = parse_node_info(source, c)
                if c.type == "struct_specifier":
                    struct_spec = c
            if typedef_ident == typedef_name and struct_spec is not None:
                name_node = struct_spec.child_by_field_name("name")
                if name_node:
                    found_struct_name = parse_node_info(source, name_node)
                else:
                    found_struct_name = typedef_name  # anonymous struct, use typedef
        for c in n.children:
            visit(c)

    visit(root)
    return found_struct_name

def find_struct_specifier(root: Node, struct_name: str, source: bytes) -> Optional[Node]:
    target = None

    def visit(n: Node):
        nonlocal target
        if target is not None:
            return
        if n.type == "struct_specifier":
            name_node = n.child_by_field_name("name")
            if name_node and parse_node_info(source, name_node) == struct_name:
                field_list = n.child_by_field_name("body")
                if field_list:
                    target = n
                    return
        for c in n.children:
            visit(c)

    visit(root)
    return target

def find_field_index(struct_spec: Node, field_name: str, source: bytes) -> Optional[int]:
    """
    struct_spec: struct_specifier node
    Return 0-based index of field_name inside the field_declaration_list.
    """
    field_list = struct_spec.child_by_field_name("body")

    if field_list is None:
        return None

    idx = 0
    for field_decl in field_list.children:
        if field_decl.type != "field_declaration":
            continue
        # In the simple case: field_declaration (type) (field_declarator (field_identifier))
        field_ident = None
        stack = [field_decl]
        while stack:
            n = stack.pop()
            if n.type == "field_identifier":
                field_ident = n
                break
            stack.extend(n.children)
        if field_ident is None:
            continue
        name = parse_node_info(source, field_ident)
        if name == field_name:
            return idx
        idx += 1

    return None

# int *a = stu->a; we want to get stu->a
def fetch_value_from_initialization(decl_node):
    for child in decl_node.children:
        if child.type == "init_declarator":
            rhs = child.child_by_field_name("value")
            if rhs and rhs.type == "pointer_expression" or "field_expression":
                return rhs
    return None

def resolve_argument_base_only(expr_node: Node, source: bytes, tree_root: Node, define_source: bytes) -> Optional[ResolvedArg]:
    # 1. Strip parentheses
    node = expr_node
    while node.type == "parenthesized_expression":
        inner = node.child_by_field_name("expression")
        if inner is None and node.named_children:
            inner = node.named_children[0]
        if inner is None:
            break
        node = inner

    # 2. Identifier case
    if node.type == "identifier":
        name = parse_node_info(source, node)
        func_def = find_enclosing_function(node)
        if func_def is None:
            return None

        # (a) Try parameter first
        param_decl = find_param_declaration(func_def, name, source)
        if param_decl is not None:
            tinfo = extract_type_from_param(param_decl, source, tree_root)
            if tinfo is None:
                return None
            struct_name, is_ptr = tinfo
            return ResolvedArg(
                struct_name=struct_name,
                is_pointer=is_ptr,
                field_name=None,
                field_index=None,
            )

        # (b) local declaration in body
        local_decl = find_var_declaration(func_def, name, node, source)
        if local_decl is not None:
            pointer_expression = fetch_value_from_initialization(local_decl)
            return resolve_argument(pointer_expression, source, define_source)


        # Optionally: you could add a global search here if needed.
        return None

    # Other expression kinds not handled yet
    return None

def extract_type_from_param(param_node: Node, source: bytes, tree_root: Node):
    """
    Extract type info from a parameter_declaration node.
    Returns (struct_name, is_pointer) or None.
    """

    # param node looks like:
    # (parameter_declaration type_node declarator_node)
    children = [c for c in param_node.children if c.is_named]

    if len(children) < 2:
        return None

    # The first named child is always the type specifier
    type_node = children[0]

    # The last named child is always the declarator (identifier, pointer_declarator, etc.)
    declarator_node = children[-1]

    return extract_type_from_type_and_declarator(type_node, declarator_node, source, tree_root)

def resolve_argument(arg_node: Node, source: bytes, define_source: bytes) -> Optional[ResolvedArg]:
    source_tree = parser.parse(source)
    define_source_tree = parser.parse(define_source)
    tree_root = source_tree.root_node
    define_root = define_source_tree.root_node
    """
    arg_node: identifier | field_expression | pointer_expression
    """
    # Case A: struct field, like p.entry or p->entry
    if arg_node.type in ("field_expression", "pointer_expression"):
        base_expr = arg_node.child_by_field_name("argument")
        field_ident = arg_node.child_by_field_name("field")   # field_identifier
        if base_expr is None or field_ident is None:
            return None

        field_name = parse_node_info(source, field_ident)

        # Resolve base expression's type (might be identifier or more complex expr)
        base_resolved = resolve_argument_base_only(base_expr, source, tree_root, define_source)
        if base_resolved is None or base_resolved.struct_name is None:
            return None

        struct_spec = find_struct_specifier(define_root, base_resolved.struct_name, define_source)
        if struct_spec is None:
            return None

        field_idx = find_field_index(struct_spec, field_name, define_source)

        return ResolvedArg(
            struct_name=base_resolved.struct_name,
            is_pointer=base_resolved.is_pointer,
            field_name=field_name,
            field_index=field_idx,
        )

    # Case B: plain identifier (whole struct variable)
    if arg_node.type == "identifier":
        return resolve_argument_base_only(arg_node, source, tree_root, define_source)
    # Other expression types not handled here
    return None

# fetch all functions
def getFunctions(logger, extractor, srcPath, singleFileName, fileList, functionOrderList = [], oldmap = None): # The second time getFunctions is called fileList is empty
    fileFuncMap = {}
    allFiles = glob.iglob(os.path.join(srcPath, "**/*.i"), recursive=True)

    for filename in allFiles:
        # Don't look at files inside the individual-funcs directories
        # the first time we invoke getFunctions
        #
        if "individual-funcs" not in srcPath and "individual-funcs" in filename:
            continue
        if len(fileList) > 0 and os.path.splitext(os.path.basename(filename))[0] not in fileList:
            continue
        if len(singleFileName) > 0:
            if singleFileName not in filename and "individual-funcs" not in srcPath:
                continue
        logger.debug("Extracting function bodies for file: %s", filename)
        funcMap = extractor.extractFuncsAndDeps(filename, functionOrderList, oldmap)
        fileFuncMap.update(funcMap)

    # The second time we refresh the funcMap with the individual
    # files, we also extract additional meta-data.
    # For each struct type used in each function, extract _all_ uses of the same type
    # from other functions
    # TODO: Consider if refactoring the toolchain helps?
    """
    if "individual-funcs" in srcPath:
        logger.info("Going to extract type usage")
        extractor.extractGlobalTypeUsageDetails(srcPath, fileFuncMap)
    """

    return fileFuncMap

# parse node information
def parse_node_info(source_code, node):
    return source_code[node.start_byte:node.end_byte].decode("utf8")

# fetch the function node inside a file
def find_function_node(root, source_bytes, name: str):
    # Recursive DFS
    for child in root.children:
        if child.type == "function_definition":
            # In C grammar: function_definition has a child "declarator"
            if not name:
                return child
            declarator = child.child_by_field_name("declarator")
            if declarator:
                ident = declarator.child_by_field_name("declarator")
                if ident and source_bytes[ident.start_byte:ident.end_byte] == name.encode():
                    return child
        # Search inside children
        result = find_function_node(child, source_bytes, name)
        if result:
            return result
    return None

# find the function that target node defined in
def find_enclosing_function(node: Node) -> Optional[Node]:
    cur = node
    while cur is not None and cur.type != "function_definition":
        cur = cur.parent
    return cur

# fetch all function calls inside target function
# rightnow we don't capture function pointer like p->realloc()
def find_all_function_calls(source_code, func_name):
    result = []
    tree = parser.parse(source_code)
    root = tree.root_node
    func_node = find_function_node(root, source_code, func_name)
    body_node = func_node.child_by_field_name("body")

    query = Query(Language(tree_sitter_c.language()), """
    (
      call_expression
        function: (identifier) @func_name
    )
    """)
    cursor = QueryCursor(query)
    captures = cursor.captures(body_node)

    if not captures:
        return
    for node in captures["func_name"]:
        call_node = node
        while call_node is not None and call_node.type != "call_expression":
            call_node = call_node.parent

        if call_node is None:
            continue  # something weird, skip

        # func_name = source_code[node.start_byte:node.end_byte].decode("utf8")
        # expression = source_code[call_node.start_byte:call_node.end_byte].decode("utf8")
        # result.append(func_name)
        current_result = [node, call_node]
        # print("Function call:", func_name)
        # print("Function expression", expression)
        result.append(current_result)
    return result

# find all functions that call the target function
def find_all_caller_functions(target_function, funcMap):
    result = []
    for func_name in funcMap:
        if func_name == target_function:
            continue
        if target_function in funcMap[func_name].dependFunctions:
            result.append(func_name)
    return result

# find all call instructions for the target_function
def find_target_call_instructions(target_function, funcMap):
    call_instuctions_and_callers = []
    all_caller_functions = find_all_caller_functions(target_function, funcMap)
    for caller_function in all_caller_functions:
        all_calls = find_all_function_calls(funcMap[caller_function].funcCodeLines.encode(), caller_function)
        for (function_name_Node, expression_node) in all_calls:
            if target_function == parse_node_info(funcMap[caller_function].funcCodeLines.encode(), function_name_Node):
                # print(f"{parse_node_info(funcMap[caller_function].funcCodeLines.encode(), function_name_Node)}")
                call_instuctions_and_callers.append((expression_node, caller_function))
                print(f"{parse_node_info(funcMap[caller_function].funcCodeLines.encode(), expression_node)}")
    return call_instuctions_and_callers

def get_call_arguments(node):
    """
    Given an AST node that might be a call_expression (or might contain one),
    return a list of argument expression nodes.
    """
    if node.type != "call_expression":
        return []

    arg_list = node.child_by_field_name("arguments")
    if arg_list is None:
        return []

    # argument_list contains each argument expression as a named child
    return [child for child in arg_list.named_children]

def fetch_target_argument_source(target_function, funcMap, index = None):
    call_instuctions_and_callers = find_target_call_instructions(target_function, funcMap)
    return_value = None
    for call_instruction, caller_function in call_instuctions_and_callers:
        call_arguments = get_call_arguments(call_instruction)
        if not index:
            call_argument = call_arguments[index]
            if call_argument:
                return_value = resolve_argument(call_argument,
                                                funcMap[caller_function].funcCodeLines.encode(),
                                                funcMap[caller_function].typeDeclDefCodeLines.encode())
                print(f"target_function : {target_function}, argument_index : {index} \n")
                print(f"argument_source : {return_value}")

                return return_value
        else:
            for call_argument in call_arguments:
                return_value = resolve_argument(call_argument,
                                                funcMap[caller_function].funcCodeLines.encode(),
                                                funcMap[caller_function].typeDeclDefCodeLines.encode())
                print(f"target_function : {target_function}, argument_index : {index} \n")
                print(f"argument_source : {return_value}")
                return return_value

def find_struct_dependency(target_struct_name):
    for struct_name in FunctionAndDependencies.structsWithUsageInfoMap:
        if struct_name == target_struct_name:
            struct_use_info = FunctionAndDependencies.structsWithUsageInfoMap[struct_name]
            print(f"struct name : {target_struct_name} \n")
            print(f"usage lists : {struct_use_info.useFunctionList} \n")
            return struct_use_info.useFunctionList


if __name__ == "__main__":
    # print("Python PATH:", os.environ["PATH"])
    # print("Python sees ctags at:", subprocess.getoutput("which ctags"))
    # print("ctags version:", subprocess.getoutput("ctags --version"))
    os.environ["PATH"] = "/usr/local/bin:" + os.environ["PATH"]
    logger = getLogger("testlogger")
    extractor = FunctionAndDepsExtractor(logger)
    functionOrderList = []
    # Just save it in the directory
    for name in os.listdir("./inputs-simple/example/individual"):
        full = os.path.join("./inputs-simple/example/individual", name)
        if os.path.isdir(full) and not os.path.islink(full):
            shutil.rmtree(full)
        else:
            os.remove(full)
    funcMap = getFunctions(logger, extractor, "./inputs-simple/example", "", [], functionOrderList)
    for key in funcMap:
        c_path = os.path.join("./inputs-simple/example/individual", f"{key}.i")
        with open(c_path, "w") as c_file:
            c_file.write(funcMap[key].typeDeclDefCodeLines + "\n" + funcMap[key].funcCodeLines)
        #
        # # Filter
        # typedefFilter = TypedefFilter(logger)
        # typedefFilter.filterUnusedTypedefs(c_path)

    extractor.extractGlobalTypeUsageDetails("./inputs-simple/example/individual", funcMap)
    for func in funcMap:
        funcObj = funcMap[func]

        # given a function and a certain argument index, we could find if it comes from a struct
        struct_source = fetch_target_argument_source(func, funcMap, 0)
    
        # give a struct, we could which functions use it.
        if struct_source:
            use_function_lists = find_struct_dependency(struct_source.struct_name)
            print(f"{use_function_lists}")