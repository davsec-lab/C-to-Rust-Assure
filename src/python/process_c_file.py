from tree_sitter import Language, Parser
import tree_sitter_c
import sys
import json
from pathlib import Path
from typing import Dict, List, Tuple

C = Language(tree_sitter_c.language())
parser = Parser(C)

def find_identifier(n):
    if n.type == 'identifier':
        return n
    for c in n.children:
        result = find_identifier(c)
        if result:
            return result
    return None


def edit_distance(s1: str, s2: str) -> int:
    len1, len2 = len(s1), len(s2)
    # initialize dp table of size (len1+1) x (len2+1)
    dp = [[0] * (len2 + 1) for _ in range(len1 + 1)]

    # base cases: transforming to or from the empty string
    for i in range(len1 + 1):
        dp[i][0] = i
    for j in range(len2 + 1):
        dp[0][j] = j

    # fill dp table
    for i in range(1, len1 + 1):
        for j in range(1, len2 + 1):
            cost = 0 if s1[i - 1] == s2[j - 1] else 1
            dp[i][j] = min(
                dp[i - 1][j] + 1,        # deletion
                dp[i][j - 1] + 1,        # insertion
                dp[i - 1][j - 1] + cost  # substitution
            )

    return dp[len1][len2]

def get_structs(src_bytes: bytes):
    tree    = parser.parse(src_bytes)
    root    = tree.root_node
    results = []

    def find_identifier(n):
        if n.type == 'identifier':
            return n
        for c in n.children:
            r = find_identifier(c)
            if r:
                return r
        return None

    def visit(node):
        if node.type == 'struct_specifier':
            name_node = node.child_by_field_name('name')
            struct_name = (src_bytes[name_node.start_byte:name_node.end_byte]
                           .decode()) if name_node else None

            body = node.child_by_field_name('body')
            fields = []
            if body:
                for f in body.named_children:
                    if f.type != 'field_declaration':
                        continue
                    # pick out the first two named children: type + declarator
                    kids = [c for c in f.named_children if c.is_named]
                    if len(kids) < 2:
                        continue
                    typ_node, decl_node = kids[0], kids[1]
                    # extract
                    idn = find_identifier(decl_node)
                    pname = (src_bytes[idn.start_byte:idn.end_byte].decode()
                             if idn else None)
                    ptype = src_bytes[typ_node.start_byte:typ_node.end_byte].decode()
                    fields.append((pname, ptype))

            results.append((struct_name, fields))
            return

        for c in node.children:
            visit(c)

    visit(root)
    return results



def find_target_function(src_bytes: bytes, file_name: str) -> str:
    tree = parser.parse(src_bytes)
    root = tree.root_node

    best_name = ""
    best_distance = sys.maxsize

    def visit(node):
        nonlocal best_name, best_distance

        # C function definitions are 'function_definition'
        if node.type == 'function_definition':
            # grab the name token
            decl = node.child_by_field_name('declarator')
            if not decl:
                return

            # 2) locate the identifier
            name_node = find_identifier(decl)
            if not name_node:
                return
            if name_node:
                func_name = src_bytes[name_node.start_byte:name_node.end_byte].decode()
                dist = edit_distance(func_name, file_name)
                if dist < best_distance:
                    best_distance  = dist
                    best_name      = func_name

        for child in node.children:
            visit(child)

    visit(root)
    return best_name


def get_fn_params(src_bytes: bytes, fn_name: str):
    tree    = parser.parse(src_bytes)
    root    = tree.root_node
    results = []

    def find_identifier(n):
        # same helper you already have
        if n.type == 'identifier':
            return n
        for c in n.children:
            r = find_identifier(c)
            if r:
                return r
        return None

    def visit(node):
        # match C function definitions
        if node.type == 'function_definition':
            # 1) get the “declarator” for the signature
            decl = node.child_by_field_name('declarator')
            if not decl:
                return

            # 2) find the identifier inside it
            name_node = find_identifier(decl)
            if not name_node:
                return

            func_name = src_bytes[name_node.start_byte:name_node.end_byte].decode()
            if func_name != fn_name:
                return

            # 3) locate the parameter_list under the declarator
            params_node = None
            # sometimes it's called 'parameter_list' or lives in a function_declarator child
            for c in decl.children:
                if c.type in ('parameter_list', 'parameter_declarator', 'parameter_type_list'):
                    params_node = c
                    break
            if not params_node:
                return

            # 4) iterate each parameter_declaration
            for param in params_node.named_children:
                if param.type != 'parameter_declaration':
                    continue
                # get the name and the type out of each declaration
                # C grammar uses 'declaration_specifiers' for the type
                # and 'declarator' for the name (which might be an identifier or pointer declarator)
                typ_node = param.child_by_field_name('declaration_specifiers')
                decl_node = param.child_by_field_name('declarator')
                # fallback: if declaration_specifiers isn't exposed, try first child
                if not typ_node and param.named_children:
                    typ_node = param.named_children[0]
                if not decl_node:
                    # anonymous parameter (e.g. “void”)
                    pname = None
                else:
                    idn = find_identifier(decl_node)
                    pname = (src_bytes[idn.start_byte:idn.end_byte].decode()
                             if idn else None)

                ptype = (src_bytes[typ_node.start_byte:typ_node.end_byte].decode()
                         if typ_node else None)

                results.append((pname, ptype))
            return

        # recurse
        for c in node.children:
            visit(c)

    visit(root)
    return results

def list_c_files(root_dir: str) -> List[Tuple[str, str]]:
    root = Path(root_dir)
    results: List[Tuple[str, str]] = []
    for path in root.rglob("*.i"):
        full_path = str(path)
        name_without_ext = path.stem
        results.append((full_path, name_without_ext))
    return results


if __name__ == '__main__':
    intput_path = ""
    if len(sys.argv) < 2:
        input_path = "/Users/gab/repo/server/C"
    else:
        input_path = sys.argv[1]

    rs_files = list_c_files(input_path)

    output = "fn_type_map_c.json"
    output_struct = "struct_map_c.json"
    output_path = Path(output)
    output_path_struct = Path(output_struct)


    fn_map: Dict[str, List[Tuple[str, str]]] = {}
    struct_map = {}
    for full_path, name in rs_files:
        src = open(full_path, 'rb').read()
        target_function = find_target_function(src, name)
        params = get_fn_params(src, target_function)
        type_map = {str(idx): ty for idx, (_param, ty) in enumerate(params)}
        fn_map[target_function] = type_map

        structs = get_structs(src)

        for struct_name, fields in structs:
            if struct_name in struct_map:
                continue
            field_map = {i: ftype
                         for i, (_fname, ftype) in enumerate(fields)}
            struct_map[struct_name] = field_map


    with output_path.open('w', encoding='utf-8') as f:
        json.dump(fn_map, f, ensure_ascii=False, indent=4)

    with output_path_struct.open('w', encoding='utf-8') as f:
        json.dump(struct_map, f, ensure_ascii=False, indent=4)

