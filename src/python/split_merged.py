#!/usr/bin/env python3
"""Split struct-fn-replay's merged_funcs.rs back into per-function self-contained .rs (DESIGN.md §4.7).

    python3 split_merged.py <individual-funcs directory> [--no-file-adapter]

Input (written to disk by the frontend's _dumpSplitBlock/_dumpSplitManifest):
    split_blocks/<block>.rs    the raw translation block of each function (or SCC group, name contains "@")
    split_manifest.json        block_of / deps (C-side AST, authoritative) / topo_sccs
    contexted_structs.rs       type header
    merged_funcs.rs            the whole merge (for fallback)

Output: for every function that has a .i, one <fn>.rs = type header + blocks of
the dependency closure (topo order) + its own block. The backend contract
(.i/.rs per-function pairing) is unchanged, and E0425 disappears at the source —
the callee's function body is right there in the file.

Correctness basis (§4.7): these blocks coexist in the merge in one compilation
unit, so a subset + the same type header must compile — as long as the closure
is computed correctly. Hence each split file is verified with rustc; a failing
function falls back to **the whole merge** (guaranteed to compile; KLEE locates
the target via --target-function-name).

A function that already failed at the merge stage has no block — the frontend
already dumped the failure scene as <fn>.rs, and this script does not touch it.
"""
import json
import os
import subprocess
import sys
import tempfile

import backend_libc
from file_adapter import wrap_file_params, enabled_by_env

RUST_EDITION = os.environ.get("ASSURE_RUST_EDITION", "2021")


def dedupe_top_level(lines):
    """Dedupe top-level use / type lines by **bound name**, keeping the first occurrence.

    Exact whole-line dedup is not enough: the model writes both
    `use core::ffi::c_void;` and `use std::os::raw::c_void;` — different text,
    same bound name, and rustc reports E0252. In the merge, cleanCode collapses
    these; the split assembles text itself, so it must do it itself.

    Rules (only common shapes handled; unrecognized lines kept verbatim):
      use a::b::name;            → binds name
      use a::b as alias;         → binds alias
      use a::{x, y as z};        → split per name; already-seen names removed from
                                   the braces; if emptied, the whole line is dropped
      use a::*;                  → wildcard, not handled
      type X = ...; / pub type X → binds X
    """
    import re as _re
    seen, out = set(), []

    def bind_name(item):
        item = item.strip()
        if " as " in item:
            return item.split(" as ")[-1].strip()
        return item.rsplit("::", 1)[-1].strip()

    for ln in lines:
        # Only handle unindented top-level lines — local use/type inside a function
        # body has its own scope and doesn't conflict with same-named top-level
        # bindings (shadowing is legal); deduping them would corrupt the body.
        if ln != ln.lstrip():
            out.append(ln)
            continue
        t = ln.strip()
        m = _re.match(r"(pub\s+)?use\s+(.+?)::\{([^}]*)\}\s*;\s*$", t)
        if m:
            kept = [it for it in (x.strip() for x in m.group(3).split(","))
                    if it and bind_name(it) not in seen]
            for it in kept:
                seen.add(bind_name(it))
            if not kept:
                continue
            out.append(f"{m.group(1) or ''}use {m.group(2)}::{{{', '.join(kept)}}};")
            continue
        m = _re.match(r"(?:pub\s+)?use\s+([\w:]+(?:\s+as\s+\w+)?)\s*;\s*$", t)
        if m and not m.group(1).endswith("*"):
            n = bind_name(m.group(1))
            if n in seen:
                continue
            seen.add(n)
            out.append(ln)
            continue
        m = _re.match(r"(?:pub\s+)?type\s+(\w+)\s*=", t)
        if m:
            if m.group(1) in seen:
                continue
            seen.add(m.group(1))
            out.append(ln)
            continue
        out.append(ln)
    return "\n".join(out)


def closure_blocks(fn, manifest):
    """fn's dependency closure, mapped to a set of block names (an SCC group is pulled in whole automatically)."""
    blockOf, deps = manifest["block_of"], manifest["deps"]
    seen, stack = set(), [fn]
    blocks = set()
    while stack:
        cur = stack.pop()
        if cur in seen:
            continue
        seen.add(cur)
        blk = blockOf.get(cur)
        if blk is None:
            continue                      # dependency that failed at merge stage: block doesn't exist, skip
        blocks.add(blk)
        # The deps of every member of an SCC block must be chased — members call
        # each other, so the closure expands block-wise
        for member in blk.split("@"):
            for d in deps.get(member, []):
                if d not in seen:
                    stack.append(d)
    return blocks


def rustc_ok(path):
    """Verification must mimic the backend's real two steps: bare rustc → on failure, retry with libc (backend_libc).

    Bare compilation alone would misjudge every split file that uses `libc::`
    as failed (E0432) — while the backend would have rescued those anyway.
    -o must be a real temp path: for /dev/null, rustc tries to create a temp
    directory under /dev, Permission denied.
    """
    out = os.path.join(tempfile.mkdtemp(prefix="split_chk_"), "m")
    base = ["rustc", "-A", "dead_code", "--emit=metadata", "--crate-type=lib",
            f"--edition={RUST_EDITION}", "--crate-name", "split_check", "-o", out]
    r = subprocess.run(base + [path], capture_output=True, text=True)
    if r.returncode == 0:
        return True, ""
    rlib, deps = backend_libc.ensureLibcRlib()
    if rlib:
        r2 = subprocess.run(base + ["--extern", f"libc={rlib}",
                                    "-L", f"dependency={deps}", path],
                            capture_output=True, text=True)
        if r2.returncode == 0:
            return True, ""
        return False, r2.stderr
    return False, r.stderr


def main():
    d = os.path.abspath(sys.argv[1])
    manifestPath = os.path.join(d, "split_manifest.json")
    if not os.path.isfile(manifestPath):
        print(f"[split] no split_manifest.json — not a struct-fn-replay output, skipping")
        return 0
    manifest = json.load(open(manifestPath))
    structs = open(os.path.join(d, "contexted_structs.rs")).read() \
        if os.path.isfile(os.path.join(d, "contexted_structs.rs")) else ""
    mergedPath = os.path.join(d, "merged_funcs.rs")
    merged = open(mergedPath).read() if os.path.isfile(mergedPath) else ""
    blockDir = os.path.join(d, "split_blocks")

    def blockText(name):
        p = os.path.join(blockDir, f"{name}.rs")
        return open(p).read() if os.path.isfile(p) else None

    topo = manifest["topo_sccs"]          # block names, callees first
    funcs = sorted(os.path.splitext(f)[0] for f in os.listdir(d) if f.endswith(".i"))
    stats = {"split": 0, "fallback_merge": 0, "merge_failed": 0, "adapted": 0}
    use_adapter = enabled_by_env() and "--no-file-adapter" not in sys.argv[2:]
    print(f"[split] FILE* adapter: {'on' if use_adapter else 'off'}")

    for fn in funcs:
        if manifest["block_of"].get(fn) is None or blockText(manifest["block_of"][fn]) is None:
            # failed at merge stage: the frontend already wrote the failure scene <fn>.rs, keep it
            stats["merge_failed"] += 1
            print(f"[split] {fn}: failed at merge stage; keeping the frontend failure dump")
            continue
        need = closure_blocks(fn, manifest)
        parts = [structs] + [blockText(b) for b in topo if b in need]
        plain = dedupe_top_level(("\n".join(p for p in parts if p)).splitlines())
        out = os.path.join(d, f"{fn}.rs")
        # FILE* adapter (file_adapter.py): dyn/impl Read|Write|Seek standing for a C FILE*
        # get a concrete CFile wrapper, else the backend cannot measure the function at all.
        content, n_wrapped = plain, 0
        if use_adapter:
            content, n_wrapped = wrap_file_params(plain, fn, open(os.path.join(d, f"{fn}.i"), "rb").read())
        with open(out, "w") as f:
            f.write(content)
        ok, err = rustc_ok(out)
        if ok and n_wrapped:
            stats["adapted"] += 1
            print(f"[split] {fn}: FILE* adapter on {n_wrapped} parameter(s)")
        if not ok and n_wrapped:
            firstErr = next((l for l in err.splitlines() if l.startswith("error")), "?")
            print(f"[split] {fn}: adapter does not compile ({firstErr[:80]}) -> plain split")
            with open(out, "w") as f:
                f.write(plain)
            ok, err = rustc_ok(out)
        if ok:
            stats["split"] += 1
        else:
            # Closure missed something (the Rust translation references an edge absent from the C-side AST) — fall back to the whole merge
            with open(out, "w") as f:
                f.write(merged)
            ok2, err2 = rustc_ok(out)
            stats["fallback_merge"] += 1
            tag = "whole-merge fallback" + ("" if ok2 else " (WARN: merge itself does not compile)")
            firstErr = next((l for l in err.splitlines() if l.startswith("error")), "?")
            print(f"[split] {fn}: closure build failed ({firstErr[:80]}) -> {tag}")

    # Cleanup: move the non-per-function .rs files into a subdirectory — the
    # contract check (checkBackendContract) only accepts ".i/.rs per-function
    # pairing", and extra top-level merged_funcs.rs / contexted_structs.rs /
    # performance.rs would be judged a contract violation (that check originally
    # existed to catch mode misconfiguration; keep it strict — tidy the directory
    # here rather than loosening the check). os.listdir only scans the top level,
    # so a subdirectory is safe.
    import shutil
    art = os.path.join(d, "split_artifacts")
    os.makedirs(art, exist_ok=True)
    for extra in ("merged_funcs.rs", "contexted_structs.rs", "performance.rs"):
        src = os.path.join(d, extra)
        if os.path.isfile(src):
            shutil.move(src, os.path.join(art, extra))
    if os.path.isdir(os.path.join(d, "split_blocks")):
        shutil.move(os.path.join(d, "split_blocks"), os.path.join(art, "split_blocks"))
    # ⚠ A subdirectory does not stop the backend: divide_script.sh collects *.rs
    # **recursively** with `find -type f`, so split_blocks/csv_init.rs (the raw
    # block without the type header) would **collide by name** with the top-level
    # self-contained version, causing widespread E0412 in backend compilation
    # (the true culprit of the sfr-e2e2/e2e4 rounds).
    # So all the material gets its suffix changed .rs → .rs.block, and divide's
    # case no longer recognizes it.
    for root, _dirs, files in os.walk(art):
        for f in files:
            if f.endswith(".rs"):
                os.rename(os.path.join(root, f), os.path.join(root, f + ".block"))

    print(f"[split] done: closure-split {stats['split']} (FILE* adapter on {stats['adapted']})"
          f" / whole-merge fallback {stats['fallback_merge']}"
          f" / merge-stage failures {stats['merge_failed']}  ({len(funcs)} functions total)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
