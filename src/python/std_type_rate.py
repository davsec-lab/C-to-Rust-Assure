#!/usr/bin/env python3
"""R_std = N_std / (N_std + N_raw) — std-library type usage rate of transpiled Rust.

tree-sitter (tree-sitter-rust) analyzer. Walks type-annotation SITES and
classifies each written type as std / raw / neither.

Sites (each contributes exactly one classification):
  * struct fields                (field_declaration)
  * enum-variant fields          (tuple: ordered_field_declaration_list;
                                  struct-style: field_declaration_list)
  * fn parameters                (parameter — `self`/`&self` receivers skipped)
  * fn return types
  * type-annotated let bindings  (`let x: T = ...`; un-annotated `let x = ..` skipped)
The inside of a site's type is NOT itself scanned for more sites (a function-
pointer type is ONE site; the `*mut` inside it is not a separate site).

Classification of a written type:
  1. outermost node is a raw pointer (*const/*mut)  -> raw   (so `*mut Vec<u8>` is raw)
  2. else the type tree contains a std construct     -> std   (so `Option<*mut T>` is std)
  3. else                                            -> neither
A "std construct" = a reference/slice/&str (reference_type) OR a type whose
last path segment is in the std set (default: the strict 9).

deps: pip install --user --break-system-packages tree-sitter tree-sitter-rust

    python3 std_type_rate.py FILE [FILE ...]   [--extended] [--json] [--verbose]
    python3 std_type_rate.py --selftest        # run std_type_tests/*.rs
"""
import json
import os
import sys

STRICT_STD = {"Vec", "String", "Box", "Rc", "Arc", "Option", "Result",
              "HashMap", "HashSet"}
EXTENDED_STD = STRICT_STD | {
    "BTreeMap", "BTreeSet", "VecDeque", "BinaryHeap", "LinkedList",
    "Cow", "Cell", "RefCell", "Mutex", "RwLock", "Weak"}

POINTER = "pointer_type"
REFERENCE = "reference_type"


def _make_parser():
    import tree_sitter_rust as tsr
    from tree_sitter import Language, Parser
    lang = Language(tsr.language())
    try:
        return Parser(lang)
    except TypeError:                       # older tree-sitter API
        p = Parser()
        p.set_language(lang)
        return p


def _last_segment(node):
    """Last path segment of a (scoped_)type_identifier node."""
    name = node.child_by_field_name("name")
    if name is not None:
        return name.text.decode("utf-8", "replace")
    return node.text.decode("utf-8", "replace").split("::")[-1].strip()


def _contains_std(node, std_set):
    """True if the type subtree contains a reference/slice or a std-named type."""
    stack = [node]
    while stack:
        n = stack.pop()
        t = n.type
        if t == REFERENCE:                  # &T / &mut T / &str / &[T]
            return True
        if t == "type_identifier":
            if n.text.decode("utf-8", "replace") in std_set:
                return True
        elif t == "scoped_type_identifier":
            if _last_segment(n) in std_set:
                return True
        stack.extend(n.children)
    return False


def _classify(type_node, std_set):
    if type_node.type == POINTER:           # rule 1: outermost raw pointer
        return "raw"
    if _contains_std(type_node, std_set):   # rule 2: contains a std construct
        return "std"
    return "neither"                        # rule 3


_SKIP_IN_FIELD_LIST = {"visibility_modifier", "attribute_item",
                       "line_comment", "block_comment", "(", ")", ",", "{", "}"}


def _collect_sites(root):
    """Return the list of type nodes that are classification sites."""
    sites = []

    def record(ty):
        # count this type as a site, then keep walking INTO it so that named
        # parameters inside a function-pointer type (e.g. the `size: usize` /
        # `pointer: *mut c_void` of `Option<fn(size: usize) -> *mut c_void>`)
        # are also counted. (Un-named fn-pointer params are bare types, not
        # `parameter` nodes, so they are still NOT counted — see t4.)
        sites.append(ty)
        walk(ty)

    def walk(n):
        t = n.type
        if t == "field_declaration":                 # struct / struct-variant field
            ty = n.child_by_field_name("type")
            if ty is not None:
                record(ty)
            return
        if t == "ordered_field_declaration_list":     # tuple struct / tuple variant
            for c in n.named_children:
                if c.type not in _SKIP_IN_FIELD_LIST:
                    record(c)
            return
        if t == "parameter":                          # fn parameter
            ty = n.child_by_field_name("type")
            if ty is not None:
                record(ty)
            return
        if t == "self_parameter":                     # receiver — skip
            return
        if t in ("function_item", "function_signature_item"):
            params = n.child_by_field_name("parameters")
            if params is not None:
                for c in params.named_children:
                    walk(c)
            rt = n.child_by_field_name("return_type")
            if rt is None:                            # fallback: type after `->`
                seen_arrow = False
                for c in n.children:
                    if c.type == "->":
                        seen_arrow = True
                    elif seen_arrow and c.is_named and c.type != "block":
                        rt = c
                        break
            if rt is not None:
                record(rt)
            body = n.child_by_field_name("body")
            if body is not None:
                walk(body)
            return
        if t == "let_declaration":                    # `let x: T = ..`
            ty = n.child_by_field_name("type")
            if ty is not None:
                record(ty)
            val = n.child_by_field_name("value")
            if val is not None:
                walk(val)                             # closures etc. may nest sites
            return
        for c in n.children:
            walk(c)

    walk(root)
    return sites


def analyze_source(src_bytes, parser, std_set):
    tree = parser.parse(src_bytes)
    root = tree.root_node
    n_std = n_raw = n_neither = 0
    for ty in _collect_sites(root):
        k = _classify(ty, std_set)
        if k == "std":
            n_std += 1
        elif k == "raw":
            n_raw += 1
        else:
            n_neither += 1
    denom = n_std + n_raw
    return {
        "n_std": n_std, "n_raw": n_raw, "n_neither": n_neither,
        "r_std": (n_std / denom) if denom else None,
        "has_error": root.has_error,
    }


def _selftest():
    import glob
    import re
    parser = _make_parser()
    here = os.path.dirname(os.path.abspath(__file__))
    exp_re = re.compile(r"N_std=(\d+)\s+N_raw=(\d+)\s+N_neither=(\d+)")
    ok = True
    for path in sorted(glob.glob(os.path.join(here, "std_type_tests", "*.rs"))):
        src = open(path, "rb").read()
        m = exp_re.search(src.decode("utf-8", "replace"))
        if not m:
            continue
        exp = tuple(int(x) for x in m.groups())
        r = analyze_source(src, parser, STRICT_STD)
        got = (r["n_std"], r["n_raw"], r["n_neither"])
        good = got == exp and not r["has_error"]
        ok &= good
        print(f"[{'PASS' if good else 'FAIL'}] {os.path.basename(path):18} got={got} exp={exp}")
    print("ALL PASS" if ok else "SOME FAILED")
    return 0 if ok else 1


def main(argv):
    if "--selftest" in argv:
        return _selftest()
    std_set = EXTENDED_STD if "--extended" in argv else STRICT_STD
    as_json = "--json" in argv
    files = [a for a in argv if not a.startswith("--")]
    parser = _make_parser()
    out = []
    for path in files:
        r = analyze_source(open(path, "rb").read(), parser, std_set)
        r["file"] = path
        out.append(r)
        if not as_json:
            rs = "n/a" if r["r_std"] is None else f"{r['r_std']:.4f}"
            print(f"{path}: N_std={r['n_std']} N_raw={r['n_raw']} "
                  f"N_neither={r['n_neither']} R_std={rs}"
                  + ("  !PARSE-ERROR" if r["has_error"] else ""))
    if as_json:
        print(json.dumps(out, indent=2))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
