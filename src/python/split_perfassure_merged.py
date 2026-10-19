#!/usr/bin/env python3
"""Turn a perfassure_result translation (merged_funcs.rs + per-function .i) into a backend-contract directory.

    python3 split_perfassure_merged.py <perfassure result dir> -o <output dir> [--merged <path>]

perfassure_result runs were produced by the merged modes (NEW_MODE_*), so they
carry only `_Stage.Stage_10/merged_funcs.rs` and never the `split_blocks/` +
`split_manifest.json` that split_merged.py needs. This script rebuilds the same
thing from source: it parses merged_funcs.rs with tree-sitter, keeps every
non-function top-level item as a shared header (use / type / struct / static /
impl ...), and for each `<fn>.i` emits `<fn>.rs` = header + callee closure
(callees first) + the function itself. Callees are found by intersecting the
identifiers used inside a body with the set of function names in the merge —
there is no C-side AST here, so the Rust text is the only source of truth.

Each split file is verified with rustc exactly the way split_merged.py does
(bare, then with the libc rlib); a failing function falls back to the whole
merge, which the backend still handles because SymbolizerPass picks the target
by file name.

FILE* adapter (runs/adapter-experiment, 2026-09-06): when the target function
abstracts a C `FILE *` parameter into `dyn`/`impl` Read|Write|Seek, the backend
cannot measure it — a `dyn` fat pointer gets a symbolic vtable (KLEE dies on the
first vtable call) and an `impl` generic is never instantiated (SymbolizerPass
segfaults). For those parameters the translation is renamed `<fn>_impl` (body
untouched) and a wrapper with the C signature is emitted that wraps the
`*mut c_void` in `CFile`, a concrete Read/Write/Seek over libc fread/fputc/fseek.
Verified on 6 functions x 3 trait shapes: 8/8 arguments moved from Rust Empty! /
crash to edit distance 0. Logic lives in file_adapter.py (shared with split_merged.py);
`--no-file-adapter` or ASSURE_FILE_ADAPTER=0 turns it off.
"""
import argparse
import os
import shutil
import sys

from tree_sitter import Language, Parser
import tree_sitter_rust

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from split_merged import dedupe_top_level, rustc_ok  # noqa: E402
from file_adapter import wrap_file_params, enabled_by_env  # noqa: E402
import rust164_compat  # noqa: E402

RUST = Language(tree_sitter_rust.language())

ATTACHABLE = {"attribute_item", "line_comment", "block_comment"}

def parse_items(src: bytes):
    """Return (header_items, fns) where fns maps name -> (text, callees)."""
    tree = Parser(RUST).parse(src)
    header, fns = [], {}
    pending = []          # attribute / comment nodes waiting for the item they belong to
    for node in tree.root_node.children:
        if node.type in ATTACHABLE:
            pending.append(node)
            continue
        text = src[node.start_byte:node.end_byte].decode()
        prefix = "".join(src[p.start_byte:p.end_byte].decode() + "\n" for p in pending)
        pending = []
        if node.type == "function_item":
            name = src[node.child_by_field_name("name").start_byte:
                       node.child_by_field_name("name").end_byte].decode()
            fns[name] = {"text": prefix + text, "idents": collect_identifiers(src, node)}
        else:
            header.append(prefix + text)
    return header, fns


def collect_identifiers(src: bytes, node):
    out = set()
    stack = [node]
    while stack:
        n = stack.pop()
        if n.type == "identifier":
            out.add(src[n.start_byte:n.end_byte].decode())
        stack.extend(n.children)
    return out


def normalise_name(name):
    """cJSON_Delete -> cjsondelete, c_json_delete -> cjsondelete."""
    return name.replace("_", "").casefold()


def closure_order(fn, fns):
    """Callees of fn, transitively, in callees-first order (fn itself excluded)."""
    order, seen = [], set()

    def visit(name):
        if name in seen:
            return
        seen.add(name)
        for callee in sorted(fns[name]["idents"] & set(fns)):
            if callee != name:
                visit(callee)
        order.append(name)

    visit(fn)
    return [n for n in order if n != fn]


def main():
    ap = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    ap.add_argument("result_dir")
    ap.add_argument("-o", "--out", required=True)
    ap.add_argument("--merged", help="merged_funcs.rs path (default: <dir>/_Stage.Stage_10/merged_funcs.rs or <dir>/merged_funcs.rs)")
    ap.add_argument("--no-verify", action="store_true", help="skip the rustc check / whole-merge fallback")
    ap.add_argument("--no-file-adapter", action="store_true",
                    help="do not wrap dyn/impl Read|Write|Seek parameters that stand for a C FILE*")
    ap.add_argument("--no-rust164-compat", action="store_true",
                    help="do not downgrade post-1.64 constructs (unsafe extern blocks, std::sync::OnceLock)")
    a = ap.parse_args()

    d = os.path.abspath(a.result_dir)
    merged = a.merged or next((p for p in (os.path.join(d, "_Stage.Stage_10", "merged_funcs.rs"),
                                           os.path.join(d, "merged_funcs.rs")) if os.path.isfile(p)), None)
    if not merged:
        print(f"[FATAL] no merged_funcs.rs under {d}", file=sys.stderr)
        return 2
    src = open(merged, "rb").read()
    if rust164_compat.enabled_by_env() and not a.no_rust164_compat:
        downgraded, notes = rust164_compat.downgrade(src.decode())
        for n in sorted(set(notes)):
            print(f"[split] rust1.64 compat: {n} (x{notes.count(n)})")
        src = downgraded.encode()
    header, fns = parse_items(src)
    # A translation may rename the C identifier to Rust convention (gpt's cjson_write turns
    # `cJSON_Delete` into `pub fn c_json_delete`). The lookup below used to be exact, so those
    # functions fell back to "whole merge" and were never split -- and with no split file they
    # are absent from function_map.json, which silently disables every type-conditioned rewrite
    # in the manual field maps. Match on the normalised name (case-folded, `_` stripped) when the
    # exact name is not there, and only when that normalisation is unambiguous.
    norm_index = {}
    for rust_name in fns:
        norm_index.setdefault(normalise_name(rust_name), []).append(rust_name)

    os.makedirs(a.out, exist_ok=True)
    use_adapter = enabled_by_env() and not a.no_file_adapter
    print(f"[split] FILE* adapter: {'on' if use_adapter else 'off'}")
    funcs = sorted(os.path.splitext(f)[0] for f in os.listdir(d) if f.endswith(".i"))
    stats = {"split": 0, "fallback_merge": 0, "missing": 0, "adapted": 0, "renamed": 0}
    for fn in funcs:
        shutil.copy2(os.path.join(d, fn + ".i"), os.path.join(a.out, fn + ".i"))
        out = os.path.join(a.out, fn + ".rs")
        rust_fn = fn if fn in fns else None
        if rust_fn is None:
            renamed = norm_index.get(normalise_name(fn), [])
            if len(renamed) == 1:
                rust_fn = renamed[0]
                stats["renamed"] += 1
                print(f"[split] {fn}: matched renamed Rust fn `{rust_fn}` (normalised name)")
            elif len(renamed) > 1:
                print(f"[split] {fn}: normalised name is ambiguous {renamed} -> whole merge")
        if rust_fn is None:
            # not translated in the merge: write the merge so the backend records
            # a compile/target failure for it instead of a contract violation
            stats["missing"] += 1
            print(f"[split] {fn}: not found in merged_funcs.rs -> whole merge")
            open(out, "w").write(src.decode())
            continue
        parts = header + [fns[n]["text"] for n in closure_order(rust_fn, fns)] + [fns[rust_fn]["text"]]
        plain = dedupe_top_level("\n".join(parts).splitlines()) + "\n"
        content, n_wrapped = plain, 0
        if use_adapter:
            content, n_wrapped = wrap_file_params(plain, fn, open(os.path.join(d, fn + ".i"), "rb").read())
        open(out, "w").write(content)
        if a.no_verify:
            stats["split"] += 1
            stats["adapted"] += bool(n_wrapped)
            continue
        ok, err = rustc_ok(out)
        if ok and n_wrapped:
            stats["adapted"] += 1
            print(f"[split] {fn}: FILE* adapter on {n_wrapped} parameter(s)")
        if not ok and n_wrapped:
            # the adapter itself broke the build: keep the plain split, report it
            first = next((l for l in err.splitlines() if l.startswith("error")), "?")
            print(f"[split] {fn}: adapter does not compile ({first[:90]}) -> plain split")
            open(out, "w").write(plain)
            ok, err = rustc_ok(out)
        if ok:
            stats["split"] += 1
        else:
            open(out, "w").write(src.decode())
            ok2, _ = rustc_ok(out)
            stats["fallback_merge"] += 1
            first = next((l for l in err.splitlines() if l.startswith("error")), "?")
            print(f"[split] {fn}: split does not compile ({first[:90]}) -> whole merge"
                  + ("" if ok2 else " (WARN: merge itself does not compile)"))

    open(os.path.join(a.out, "SOURCE.txt"), "w").write(f"merged: {merged}\nresult_dir: {d}\n")
    print(f"[split] done: split {stats['split']} (FILE* adapter on {stats['adapted']})"
          f" / whole-merge fallback {stats['fallback_merge']}"
          f" / missing in merge {stats['missing']}  ({len(funcs)} functions) -> {a.out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
