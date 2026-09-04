#!/usr/bin/env python3
"""Split struct-fn-replay's merged_funcs.rs back into per-function self-contained .rs (DESIGN.md §4.7).

    python3 split_merged.py <individual-funcs directory>

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
import re
import subprocess
import sys
import tempfile

import backend_libc

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


# ---------------------------------------------------------------------------
# Call-closure symmetry (see main()).
#
# The C unit and the Rust unit that KLEE compares must contain the same set of
# function *definitions*, otherwise the two symbolic executions are exploring
# different programs. They currently do not:
#
#   raw/frontend/csv_parse.i   ->  "static int csv_increase_buffer(struct csv_parser *p);"
#                                  i.e. an LLVM `declare` — no body.
#   raw/frontend/csv_parse.rs  ->  "pub unsafe extern \"C\" fn csv_increase_buffer(...) { .. }"
#                                  i.e. the full body, spliced in by the closure below.
#
# The C `.i` carries forward declarations for callees (buildDependencyForward-
# Declarations); this script splices in their bodies on the Rust side. On
# libcsv that asymmetry is measurable: the Rust csv_parse walks into
# csv_increase_buffer's `while (vp = realloc_func(...)) == NULL` loop through a
# symbolic function pointer and completes 398 paths against the C side's 732,
# losing the deep tree buckets for entry_buf and `data` outright (two 1000s)
# and one bucket each on entry_pos and ret_value.
#
# Fix: keep the closure (the definitions must be *visible* or the file does not
# compile) but replace each non-target body with a forwarding call to an
# undefined `extern` — the exact Rust analogue of C's `declare`. Call sites,
# ABI, safety and visibility of the original item are untouched, so nothing
# upstream has to change.
ASSURE_OPAQUE_CALLEES = os.environ.get("ASSURE_OPAQUE_CALLEES", "1") not in ("0", "", "false")

_FN_START_RE = re.compile(
    r"(?m)^(?P<head>(?:pub(?:\([^)]*\))?\s+)?(?:default\s+)?(?:const\s+)?"
    r"(?:async\s+)?(?:unsafe\s+)?(?:extern\s+\"[^\"]*\"\s+)?fn\s+"
    r"(?P<name>[A-Za-z_]\w*))"
)


def _skip_to_matching(text, i, opener, closer):
    """Index just past the delimiter matching text[i] == opener. -1 if unbalanced.

    Steps over string / char / raw-string literals and comments so a brace in
    "}" or in a doc comment does not close the block early.
    """
    depth = 0
    n = len(text)
    while i < n:
        c = text[i]
        if c == "/" and i + 1 < n and text[i + 1] == "/":
            j = text.find("\n", i)
            i = n if j == -1 else j + 1
            continue
        if c == "/" and i + 1 < n and text[i + 1] == "*":
            j = text.find("*/", i + 2)
            i = n if j == -1 else j + 2
            continue
        if c == "r" and i + 1 < n and text[i + 1] in "#\"":
            k = i + 1
            hashes = 0
            while k < n and text[k] == "#":
                hashes += 1
                k += 1
            if k < n and text[k] == '"':
                term = '"' + "#" * hashes
                j = text.find(term, k + 1)
                i = n if j == -1 else j + len(term)
                continue
        if c == '"':
            i += 1
            while i < n:
                if text[i] == "\\":
                    i += 2
                    continue
                if text[i] == '"':
                    i += 1
                    break
                i += 1
            continue
        if c == "'":
            # Lifetime ('a) or char literal. A char literal is at most 4 chars
            # before the closing quote; a lifetime has no closing quote.
            j = i + 1
            if j < n and text[j] == "\\":
                j += 2
            elif j < n:
                j += 1
            if j < n and text[j] == "'":
                i = j + 1
                continue
            i += 1
            continue
        if c == opener:
            depth += 1
        elif c == closer:
            depth -= 1
            if depth == 0:
                return i + 1
        i += 1
    return -1


def _split_top_level(text, sep=","):
    """Split on `sep` at nesting depth 0 of () [] <> — for a parameter list."""
    out, buf, depth = [], [], 0
    i, n = 0, len(text)
    while i < n:
        c = text[i]
        if c in "([<":
            depth += 1
        elif c in ")]>":
            # `->` is not a closing angle bracket.
            if not (c == ">" and i and text[i - 1] == "-"):
                depth -= 1
        if c == sep and depth == 0:
            out.append("".join(buf))
            buf = []
        else:
            buf.append(c)
        i += 1
    if "".join(buf).strip():
        out.append("".join(buf))
    return [x.strip() for x in out if x.strip()]


def _parse_params(paramText):
    """[(declText, argName)] for a parameter list, or None if unsupported.

    Unsupported = a non-trivial pattern (`self`, tuple/struct destructuring),
    which cannot appear in an `extern` block declaration.
    """
    params = []
    for idx, raw in enumerate(_split_top_level(paramText)):
        if raw.startswith("#["):
            return None
        if raw in ("self", "&self", "&mut self") or raw.startswith("self:"):
            return None
        head, sep, ty = raw.partition(":")
        if not sep:
            return None
        pat = head.strip()
        while pat.startswith("mut ") or pat.startswith("ref "):
            pat = pat.split(" ", 1)[1].strip()
        if pat == "_":
            pat = "__a%d" % idx
        if not re.fullmatch(r"[A-Za-z_]\w*", pat):
            return None
        params.append(("%s: %s" % (pat, ty.strip()), pat))
    return params


def opaque_ize_block(text, keepNames=()):
    """Replace the body of every top-level fn in `text` (except `keepNames`)
    with a call to an undefined extern of the same signature.

    Returns the rewritten text. Any construct the small parser does not
    understand (generics, `where`, `impl Trait`, non-ident patterns) is left
    exactly as it was — worst case a block stays as expensive as before, never
    broken.
    """
    if not ASSURE_OPAQUE_CALLEES or not text:
        return text
    out = []
    pos = 0
    for m in _FN_START_RE.finditer(text):
        if m.start() < pos:
            continue
        name = m.group("name")
        i = m.end()
        # generic parameter list -> give up on this fn
        j = i
        while j < len(text) and text[j].isspace():
            j += 1
        if j < len(text) and text[j] == "<":
            continue
        if j >= len(text) or text[j] != "(":
            continue
        paramEnd = _skip_to_matching(text, j, "(", ")")
        if paramEnd == -1:
            continue
        paramText = text[j + 1:paramEnd - 1]
        braceRel = text.find("{", paramEnd)
        if braceRel == -1:
            continue
        between = text[paramEnd:braceRel]
        if "where" in between or "impl " in between:
            continue
        bodyEnd = _skip_to_matching(text, braceRel, "{", "}")
        if bodyEnd == -1:
            continue
        params = _parse_params(paramText)
        if params is None or name in keepNames:
            continue
        ret = between.strip()
        if ret.startswith("->"):
            ret = ret[2:].strip()
        elif ret:
            continue
        if ret in ("!", "impl", ""):
            retClause = "" if ret == "" else None
            if retClause is None:
                continue
        else:
            retClause = " -> %s" % ret
        shim = "__assure_opaque_%s" % name
        decl = 'extern "C" {\n    fn %s(%s)%s;\n}\n' % (
            shim, ", ".join(p[0] for p in params), retClause)
        call = "{\n    unsafe { %s(%s) }\n}" % (shim, ", ".join(p[1] for p in params))
        out.append(text[pos:m.start()])
        out.append(decl)
        out.append(text[m.start():braceRel])
        out.append(call)
        pos = bodyEnd
    out.append(text[pos:])
    return "".join(out)


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
    stats = {"split": 0, "fallback_merge": 0, "merge_failed": 0, "opaque_reverted": 0}

    for fn in funcs:
        if manifest["block_of"].get(fn) is None or blockText(manifest["block_of"][fn]) is None:
            # failed at merge stage: the frontend already wrote the failure scene <fn>.rs, keep it
            stats["merge_failed"] += 1
            print(f"[split] {fn}: failed at merge stage; keeping the frontend failure dump")
            continue
        need = closure_blocks(fn, manifest)
        own = manifest["block_of"][fn]
        blocks = [(b, blockText(b)) for b in topo if b in need]

        def assemble(opaque):
            # `own` holds the function under test (and, for an SCC, the whole
            # mutually-recursive group) — always keep it whole. Every other
            # block in the closure is a callee, which the paired .i carries as
            # a forward declaration only.
            parts = [structs] + [
                (opaque_ize_block(t, keepNames=set(own.split("@"))) if (opaque and b != own) else t)
                for b, t in blocks
            ]
            return dedupe_top_level(("\n".join(p for p in parts if p)).splitlines())

        out = os.path.join(d, f"{fn}.rs")
        with open(out, "w") as f:
            f.write(assemble(opaque=True))
        ok, err = rustc_ok(out)
        if not ok and ASSURE_OPAQUE_CALLEES and len(blocks) > 1:
            # The opaque rewrite is best-effort; if it did not survive rustc,
            # fall back to the previous behaviour (full callee bodies) BEFORE
            # resorting to the whole merge, so this change can never cost a
            # function its per-function pairing.
            with open(out, "w") as f:
                f.write(assemble(opaque=False))
            ok2, err2 = rustc_ok(out)
            if ok2:
                print(f"[split] {fn}: opaque-callee rewrite rejected by rustc, kept full bodies")
                ok, err = True, ""
                stats["opaque_reverted"] += 1
            else:
                err = err2
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

    print(f"[split] done: closure-split {stats['split']} / whole-merge fallback {stats['fallback_merge']}"
          f" / merge-stage failures {stats['merge_failed']}"
          f" / opaque-callee reverts {stats['opaque_reverted']}  ({len(funcs)} functions total)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
