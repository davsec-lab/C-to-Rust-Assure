import os.path
import json

from llvmlite import binding as llvm
from tree_sitter import Language, Parser
import tree_sitter_c
import tree_sitter_rust
import tree_sitter_cpp
import sys
from pathlib import Path
import re
from typing import Dict, List, Tuple

llvm.initialize()
llvm.initialize_native_target()
llvm.initialize_native_asmprinter()

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

def find_identifier(n):
    if n.type == 'identifier':
        return n
    for c in n.children:
        result = find_identifier(c)
        if result:
            return result
    return None

def find_c_target_function(root, src_bytes: bytes, file_name: str) -> str:
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

def find_func(node, code, name):
    for child in node.children:
        if child.type in ("function_definition", "function_item"):
            id_node = child.child_by_field_name("name")
            if id_node is not None:
                ident = code[id_node.start_byte:id_node.end_byte].decode()
                if ident == name:
                    return child
        res = find_func(child, code, name)
        if res:
            return res
    return None

def find_func_cpp(root, code: bytes, name: str):
    def node_text(n):
        return code[n.start_byte:n.end_byte].decode("utf-8", errors="replace")

    stack = [root]
    while stack:
        node = stack.pop()

        # In tree-sitter-cpp, function bodies are typically in "function_definition"
        if node.type == "function_definition":
            name_node = node.child_by_field_name("name")
            if name_node is not None:
                ident = node_text(name_node)
                if ident == name or ident.endswith("::" + name):
                    return node

        stack.extend(reversed(node.children))

    return None

def find_c_func(node, code, name):
    for child in node.children:
        if child.type in ("function_definition"):
            decl = child.child_by_field_name('declarator')
            if not decl:
                continue
            name_node = find_identifier(decl)
            if name_node is not None:
                ident = code[name_node.start_byte:name_node.end_byte].decode()
                if ident == name:
                    return child
        res = find_c_func(child, code, name)
        if res:
            return res
    return None

def extract_signature(func_node, code, target_function_name):
    params = func_node.child_by_field_name("parameters")
    if params is None:
        return f"{target_function_name}()"

    param_text = code[params.start_byte:params.end_byte].decode().strip()
    name_node = func_node.child_by_field_name("name")
    prefix_text = ""
    if name_node is not None:
        prefix_text = code[func_node.start_byte:name_node.start_byte].decode("utf-8", errors="replace")
    unsafe_prefix = "unsafe fn " if re.search(r"\bunsafe\b", prefix_text) else ""

    # Rust return clause (e.g. "-> *mut CJson") usually lives between
    # parameters and function body.
    return_clause = ""
    body = func_node.child_by_field_name("body")
    if body is not None and params.end_byte <= body.start_byte:
        between = code[params.end_byte:body.start_byte].decode().strip()
        if between.startswith("->"):
            return_clause = " " + between

    signature = f"{unsafe_prefix}{target_function_name}{param_text}{return_clause}"
    return " ".join(signature.split())

def extract_c_signature(func_node, code: bytes, target_function_name: str) -> str:
    spec_node = func_node.child_by_field_name("declaration_specifiers")
    decl_node = func_node.child_by_field_name("declarator")
    if spec_node and decl_node:
        ret_part = code[spec_node.start_byte:decl_node.start_byte].decode().strip()
    else:
        ret_part = "void"

    func_decl = decl_node
    while func_decl and func_decl.type != "function_declarator":
        func_decl = func_decl.child_by_field_name("declarator")

    params_node = func_decl.child_by_field_name("parameters") if func_decl else None
    param_text  = code[params_node.start_byte:params_node.end_byte].decode().strip() if params_node else "()"

    signature = f"{target_function_name}{param_text}"
    return " ".join(signature.split())

def extract_cpp_signature(func_node, code: bytes, target_function_name: str) -> str:
    # 1) Find the function_declarator inside the declarator chain
    decl_node = func_node.child_by_field_name("declarator")
    func_decl = decl_node
    while func_decl and func_decl.type != "function_declarator":
        func_decl = func_decl.child_by_field_name("declarator")

    ret_type = ""
    if func_decl is not None:
        prefix = code[func_node.start_byte:func_decl.start_byte].decode("utf-8", errors="replace").strip()
        ret_type = " ".join(prefix.split())
        # Guard against markdown language labels leaking into parsed code.
        if ret_type == "cpp":
            ret_type = ""
        elif ret_type.startswith("cpp "):
            ret_type = ret_type[4:].strip()

    # 2) Parameters are a field on function_declarator
    params_node = func_decl.child_by_field_name("parameters") if func_decl else None
    param_text = (
        code[params_node.start_byte:params_node.end_byte].decode("utf-8", errors="replace").strip()
        if params_node else
        "()"
    )

    # 3) Optionally include trailing qualifiers (const/noexcept/-> return type)
    #    These are often children/siblings of function_declarator in tree-sitter-cpp,
    #    but field names differ across versions. We'll try common ones safely.
    suffix_parts = []

    # Some grammars expose these on the function_definition node
    for field in ("ref_qualifier", "noexcept", "trailing_return_type"):
        n = func_node.child_by_field_name(field)
        if n is not None:
            suffix_parts.append(code[n.start_byte:n.end_byte].decode("utf-8", errors="replace").strip())

    # Some grammars put qualifiers on the declarator / function_declarator node
    if func_decl is not None:
        for field in ("type_qualifier", "ref_qualifier", "noexcept", "trailing_return_type"):
            n = func_decl.child_by_field_name(field)
            if n is not None:
                suffix_parts.append(code[n.start_byte:n.end_byte].decode("utf-8", errors="replace").strip())

    suffix = ""
    if suffix_parts:
        suffix = " " + " ".join(suffix_parts)

    signature_parts = []
    if ret_type:
        signature_parts.append(ret_type)
    signature_parts.append(f"{target_function_name}{param_text}{suffix}")
    return " ".join(" ".join(signature_parts).split())


def find_target_cpp_function(src_bytes: bytes, file_name: str):
    """
    Find the C++ function definition whose name is closest (edit distance)
    to `file_name` (usually stem like "foo" from "foo.cpp").

    Requirements:
      - `CPP` is a Tree-sitter Language for C++ (tree-sitter-cpp).
      - You already have `edit_distance(a,b)` implemented.
    """

    parser = Parser(Language(tree_sitter_cpp.language()))
    tree = parser.parse(src_bytes)
    root = tree.root_node

    best_name = ""
    best_distance = sys.maxsize
    function_declare_node = None

    def node_text(n) -> str:
        return src_bytes[n.start_byte:n.end_byte].decode("utf-8", errors="replace")

    def extract_cpp_callable_name(decl_node):
        """
        Try to extract the "callable name" from a C++ declarator subtree.
        Handles common cases:
          - identifier
          - qualified_identifier / scoped names (take the last identifier)
          - template_function (take its name)
          - operator_name / destructor_name (fallback to text)
        """
        if decl_node is None:
            return None

        # Direct name fields if present
        for field in ("name", "declarator"):
            f = decl_node.child_by_field_name(field)
            if f is not None:
                got = extract_cpp_callable_name(f)
                if got:
                    return got

        t = decl_node.type

        # Common simple case
        if t == "identifier":
            return node_text(decl_node)

        # Often appears for A::B::foo
        # We take the last identifier we can find.
        if t in ("qualified_identifier", "scoped_identifier"):
            last_id = None
            stack = [decl_node]
            while stack:
                cur = stack.pop()
                if cur.type == "identifier":
                    last_id = cur
                stack.extend(reversed(cur.children))
            return node_text(last_id) if last_id else node_text(decl_node)

        # template_function usually contains an identifier/qualified_identifier inside
        if t == "template_function":
            # try a 'name' field first (already attempted), else fallback to searching
            stack = [decl_node]
            while stack:
                cur = stack.pop()
                if cur.type in ("identifier", "qualified_identifier", "scoped_identifier"):
                    return extract_cpp_callable_name(cur)
                stack.extend(reversed(cur.children))
            return node_text(decl_node)

        # Operators / destructors etc. — best effort
        if t in ("operator_name", "destructor_name", "conversion_function_id"):
            return node_text(decl_node)

        # Generic fallback: search for a plausible name-bearing node
        stack = [decl_node]
        last_id = None
        while stack:
            cur = stack.pop()
            if cur.type == "identifier":
                last_id = cur
            elif cur.type in ("qualified_identifier", "scoped_identifier", "template_function"):
                cand = extract_cpp_callable_name(cur)
                if cand:
                    return cand
            stack.extend(reversed(cur.children))

        return node_text(last_id) if last_id else None

    def visit(node):
        nonlocal best_name, best_distance, function_declare_node

        # In tree-sitter-cpp, function bodies are typically under 'function_definition'.
        # Constructors/destructors may appear as 'function_definition' too, but some
        # versions also expose other node types; we include a few common ones.
        if node.type in ("function_definition", "constructor_or_destructor_definition"):
            decl = node.child_by_field_name("declarator")
            if decl is not None:
                func_name = extract_cpp_callable_name(decl)
                if func_name:
                    dist = edit_distance(func_name, file_name)
                    if dist < best_distance:
                        best_distance = dist
                        best_name = func_name
                        function_declare_node = node

        for child in node.children:
            visit(child)

    visit(root)
    return best_name, function_declare_node

def find_rust_target_function(root, src_bytes: bytes, file_name: str) -> str:

    best_name = ""
    best_distance = sys.maxsize

    def visit(node):
        nonlocal best_name, best_distance

        # whenever we hit a function declaration/definition
        if node.type == 'function_item':
            name_node = node.child_by_field_name('name')
            if name_node:
                func_name = src_bytes[name_node.start_byte:name_node.end_byte].decode()
                dist = edit_distance(func_name, file_name)
                if dist < best_distance:
                    best_distance = dist
                    best_name = func_name

        # recurse into children
        for child in node.children:
            visit(child)

    visit(root)
    return best_name

def fetch_cpp_function_signature_with_byte(input_byte, target_function_name):
    target_function_name, function_declare_node = find_target_cpp_function(input_byte, target_function_name)
    if not function_declare_node:
        print(f"function '{target_function_name}' not found")
        return "", ""

    result = extract_cpp_signature(function_declare_node, input_byte, target_function_name)
    return target_function_name, result

def fetch_rust_function_signature_with_byte(input_byte, target_function_name):
    parser = Parser(Language(tree_sitter_rust.language()))
    code = input_byte
    tree = parser.parse(code)
    root = tree.root_node
    target_function_name = find_rust_target_function(root, code, target_function_name)
    fn_node = find_func(root, code, target_function_name)
    if not fn_node:
        print(f"function '{target_function_name}' not found")
        return "", ""
    result = extract_signature(fn_node, code, target_function_name)
    return target_function_name, result

def fetch_rust_function_signature(intput_path, target_function_name):
    parser = Parser(Language(tree_sitter_rust.language()))
    code = Path(intput_path).read_bytes()
    tree = parser.parse(code)
    root = tree.root_node
    target_function_name = find_rust_target_function(root, code, target_function_name)
    fn_node = find_func(root, code, target_function_name)
    if not fn_node:
        print(f"function '{target_function_name}' not found")
        return "", ""
    result = extract_signature(fn_node, code, target_function_name)
    return target_function_name, result

def fetch_c_function_signature(intput_path, target_function_name):
    parser = Parser(Language(tree_sitter_c.language()))
    code = Path(intput_path).read_bytes()
    tree = parser.parse(code)
    root = tree.root_node
    target_function_name = find_c_target_function(root, code, target_function_name)
    fn_node = find_c_func(root, code, target_function_name)
    if not fn_node:
        print(f"function '{target_function_name}' not found")
        return "", ""
    result = extract_c_signature(fn_node, code, target_function_name)
    return target_function_name, result

# 2026-08-25 deleted fetch_llvm_function_signature — dead code, and a buggy old version:
#   · unbounded fuzzy matching: iterated over **all** functions taking the
#     smallest edit distance, excluding neither declare nor llvm.* intrinsics,
#     accepting any distance
#   · `target.name` raised AttributeError when the module had no functions at all
#     (target still None)
#   · returned str(func.type) instead of the full signature, so no parameter names
# The active implementation is llvm_function_signature + _pick_function (excludes
# declare/intrinsics, exact name first, fuzzy matching capped at max_dist=3, and
# reports is_exact for the health check).

def _pick_function(mod, stem, max_dist=3):
    """Pick the target function in a per-function .ll: exact name first; else the
    closest non-declaration, non-intrinsic function within `max_dist`. Returns
    (func, is_exact) or (None, False) when nothing plausible matches (never picks
    a `declare` or an intrinsic, and never silently picks a far-off function)."""
    defs = [f for f in mod.functions
            if not f.is_declaration and not f.name.startswith("llvm.")]
    exact = [f for f in defs if f.name == stem]
    if exact:
        return exact[0], True
    if not defs:
        return None, False
    best = min(defs, key=lambda f: edit_distance(stem, f.name))
    if edit_distance(stem, best.name) > max_dist:
        return None, False
    return best, False


def llvm_function_signature(ll_path, stem):
    """Rebuild `define <ret> @fn(...)` losslessly from llvmlite's function object.

    Replaces the old regex scrape of the `define` line, which truncated any
    signature whose params contain nested parens (function-pointer / aggregate
    types) and did its own fuzzy name pick. Returns
    (name, signature, argcount, is_exact); ("", "", 0, False) on failure.
    """
    try:
        with open(ll_path, "r", encoding="utf-8") as f:
            mod = llvm.parse_assembly(f.read())
        mod.verify()
    except Exception as e:
        print(f"[argmap] parse fail {ll_path}: {e}")
        return "", "", 0, False
    func, is_exact = _pick_function(mod, stem)
    if func is None:
        return "", "", 0, False
    ret = str(func.type).split('(', 1)[0].strip()
    args = list(func.arguments)
    parts = [f"{a.type} %{a.name}" if a.name else str(a.type) for a in args]
    sig = f"define {ret} @{func.name}({', '.join(parts)})"
    return func.name, sig, len(args), is_exact


def list_files(is_rust: bool, root_dir: str) -> List[Tuple[str, str]]:
    root = Path(root_dir)
    results: List[Tuple[str, str]] = []
    if is_rust:
        pattern = "*.rs"
    else:
        pattern = "*.i"
    for path in root.rglob(pattern):
        full_path = str(path)
        name_without_ext = path.stem
        results.append((full_path, name_without_ext))
    return results

def list_ir_files(is_rust: bool, root_dir: str) -> List[Tuple[str, str]]:
    root = Path(root_dir)
    results: List[Tuple[str, str]] = []
    for path in root.rglob("*.ll"):
        full_path = str(path)
        name_without_ext = path.stem
        if is_rust:
            name_without_ext = name_without_ext.removesuffix(".rs")
        else:
            name_without_ext = name_without_ext.removesuffix(".i")
        results.append((full_path, name_without_ext))
    return results


def find_best_match(target_function_name: str, function_map) -> str:
    best_distance = sys.maxsize
    target = ""
    for name, info in function_map.items():
        current_distance = edit_distance(target_function_name, name)
        if current_distance < best_distance:
            best_distance = current_distance
            target = name
    return target


def _validate_function_map(fmap: dict) -> dict:
    """Pre-emit health check. Keyed by stem; drop entries that would feed the
    LLM garbage and print a summary (visibility, not silent corruption):
      - a side's signature is missing (e.g. Rust compile failed -> no .ll);
      - Rust IR has fewer args than C IR (translation only keeps/expands args,
        never drops them -> a shortfall means the wrong function was picked).
    Strips internal `_*` fields from kept entries so function_map.json keeps
    exactly the four fields the downstream expects.
    """
    kept, dropped = {}, []
    for stem, e in fmap.items():
        problems = []
        if not e.get("c_original_code") or not e.get("c_ir_file"):
            problems.append("C-side signature missing")
        if not e.get("rust_original_code") or not e.get("rust_ir_file"):
            problems.append("Rust-side signature missing")
        if e.get("c_ir_file") and e.get("rust_ir_file") \
                and e.get("_r_argc", 0) < e.get("_c_argc", 0):
            problems.append(f"Rust args ({e.get('_r_argc')}) < C args ({e.get('_c_argc')}); likely the wrong function was picked")
        if not e.get("_c_exact", True) or not e.get("_r_exact", True):
            # Non-fatal: record only (the LLM may rename; stem pairing is unaffected), do not drop for this
            print(f"[argmap] note {stem}: main function matched by non-exact name "
                  f"(c_exact={e.get('_c_exact')}, r_exact={e.get('_r_exact')})")
        if problems:
            dropped.append((stem, problems))
        else:
            kept[stem] = {k: v for k, v in e.items() if not k.startswith("_")}
    print(f"[argmap] kept {len(kept)} / dropped {len(dropped)} (of {len(fmap)})")
    for stem, ps in dropped:
        print(f"[argmap]   drop {stem}: {'; '.join(ps)}")
    return kept


def build_function_map(input_path: str) -> dict:
    """Walk <input_path>/{C,Rust} and emit function_map.json:
        { stem: {c_original_code, c_ir_file, rust_original_code, rust_ir_file} }

    Keyed by file **stem** (= target-function-name), the identity that names the
    C and Rust symbol-graph dirs and threads through KLEE / distance.py. The
    LLM's internal Rust function name never participates in pairing.
    Consumed by generateCToRustArgumentMap.py to build argument_order_map.json.
    """
    output_path = Path("function_map.json")
    c_dir = os.path.join(input_path, "C")
    rust_dir = os.path.join(input_path, "Rust")

    fmap: Dict[str, dict] = {}

    # C source signature (keyed by stem)
    for full_path, stem in list_files(False, c_dir):
        _, sig = fetch_c_function_signature(full_path, stem)
        fmap.setdefault(stem, {})["c_original_code"] = sig

    # C IR signature (llvmlite rebuild)
    for full_path, stem in list_ir_files(False, c_dir):
        _, sig, argc, exact = llvm_function_signature(full_path, stem)
        e = fmap.setdefault(stem, {})
        e["c_ir_file"], e["_c_argc"], e["_c_exact"] = sig, argc, exact

    # Rust source signature (associate by SAME stem, never by internal name)
    for full_path, stem in list_files(True, rust_dir):
        _, sig = fetch_rust_function_signature(full_path, stem)
        if stem in fmap:
            fmap[stem]["rust_original_code"] = sig
        else:
            print(f"[argmap] Rust source '{stem}' has no same-named C entry, skipping")

    # Rust IR signature (llvmlite rebuild; associate by stem)
    for full_path, stem in list_ir_files(True, rust_dir):
        _, sig, argc, exact = llvm_function_signature(full_path, stem)
        if stem in fmap:
            e = fmap[stem]
            e["rust_ir_file"], e["_r_argc"], e["_r_exact"] = sig, argc, exact
        else:
            print(f"[argmap] Rust IR '{stem}' has no same-named C entry, skipping")

    fmap = _validate_function_map(fmap)

    with output_path.open("w", encoding="utf-8") as fp:
        json.dump(fmap, fp, indent=2, ensure_ascii=False)
    return fmap


if __name__ == "__main__":
    input_path = sys.argv[1] if len(sys.argv) >= 2 else "./testcase"
    fmap = build_function_map(input_path)
    print(f"[createArgumentMap] wrote function_map.json: {len(fmap)} functions")
