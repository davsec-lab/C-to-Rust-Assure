from tree_sitter import Language, Parser
import tree_sitter_rust
import sys
import json
from pathlib import Path
from typing import Dict, List, Tuple

RUST = Language(tree_sitter_rust.language())
parser = Parser(RUST)

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
    tree = parser.parse(src_bytes)
    root = tree.root_node
    results = []

    def visit(node):
        if node.type == 'struct_item':
            name_node = node.child_by_field_name('name')
            if not name_node:
                return

            struct_name = src_bytes[name_node.start_byte:name_node.end_byte].decode()
            fields = []

            for child in node.children:
                if child.type == 'field_declaration_list':
                    for f in child.named_children:
                        if f.type != 'field_declaration':
                            continue
                        idn = f.child_by_field_name('name')
                        typ = f.child_by_field_name('type')
                        if idn and typ:
                            pname = src_bytes[idn.start_byte:idn.end_byte].decode()
                            ptype = src_bytes[typ.start_byte:typ.end_byte].decode()
                            fields.append((pname, ptype))

                elif child.type == 'tuple_field_declaration_list':
                    for idx, f in enumerate(child.named_children):
                        typ = f.child_by_field_name('type')
                        if typ:
                            ptype = src_bytes[typ.start_byte:typ.end_byte].decode()
                            fields.append((str(idx), ptype))

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

def get_fn_params(src_bytes: bytes, fn_name: str):
    tree = parser.parse(src_bytes)
    root = tree.root_node
    results = []

    def visit(node):
        if node.type == 'function_item':
            name_node = node.child_by_field_name('name')
            if name_node and src_bytes[name_node.start_byte:name_node.end_byte].decode() == fn_name:
                params_node = node.child_by_field_name('parameters')
                for child in params_node.children:
                    if child.type == 'parameter':
                        idn = (child.child_by_field_name('name')
                               or child.child_by_field_name('pattern'))
                        typ = child.child_by_field_name('type')
                        if idn is None or typ is None:
                            continue
                        pname = src_bytes[idn.start_byte:idn.end_byte].decode()
                        ptype = src_bytes[typ.start_byte:typ.end_byte].decode()
                        results.append((pname, ptype))
                    elif child.type == 'self_parameter':
                        results.append(("self", "self"))
                return

        for c in node.children:
            visit(c)

    visit(root)
    return results

def list_rs_files(root_dir: str) -> List[Tuple[str, str]]:
    root = Path(root_dir)
    results: List[Tuple[str, str]] = []
    for path in root.rglob("*.rs"):
        full_path = str(path)
        name_without_ext = path.stem
        results.append((full_path, name_without_ext))
    return results


if __name__ == '__main__':
    intput_path = ""
    if len(sys.argv) < 2:
        input_path = "/Users/gab/repo/server/Rust"
    else:
        input_path = sys.argv[1]

    rs_files = list_rs_files(input_path)

    output = "fn_type_map.json"
    output_struct = "struct_map.json"
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

