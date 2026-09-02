#!/usr/bin/env python3
"""Supply the `libc` crate to the backend's bare `rustc` (DESIGN.md §5.2 / §14 T6).

━━ Why this is needed ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

The frontend and backend run two separate compilations, and **the compiled text
is not even the same**:

| | frontend `compileWithCargoProject` | backend `llvmBitcodeEmitter` |
|---|---|---|
| compiler | `cargo`, generated Cargo.toml has `libc = "=0.2.149"` | bare `rustc --crate-type=lib` |
| libc | has the dependency, and `_prepend_rust_libc_prelude` injects `use libc::{...}` | **none** |
| compiled text | the snippet the model just emitted | the self-contained file assembled by `buildSelfContainedTranslation` |

So any translation using `libc::`: **passes frontend validation, fails backend
compilation**, and every argument of that function is recorded `"Rust Empty!"`,
scoring 0 under the §5 iron rule.
Measured over three P1 rounds: of 23 backend compile failures, 14 were
`E0432/E0433 unresolved libc`.

━━ Two steps, both required ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Adding only `--extern libc` rescues just 1 of the 23 — the rest turn from
`E0432` into `E0255: the name X is defined multiple times`: the model wrote
`use libc::size_t;`, while `buildSelfContainedTranslation` also spliced in
`pub type size_t = usize;`. Each is fine alone; they only collide when
assembled. **The frontend never sees the assembled text, so it never collides.**

Hence step ②: remove libc imports whose names collide with definitions already
in the file (keeping the local definitions).
Both steps together: **8 of the 23 rescued** (measured 2026-08-23).

━━ Safety ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Callers **compile as-is first and only come here on failure**. Therefore:

* For functions that compile today, the compile command and artifacts are
  **byte-for-byte unchanged**
* golden measurement: **zero regressions** across the 27 that compiled, and the
  2 that didn't compile **still don't**
  → `fixtures/golden_symbols.json` needs no re-freeze

This is not loosening the metric — it removes one frontend/backend
inconsistency, in the same direction as the DESIGN.md §4.5.1 line: change
"whether it can be measured", not "whether what is measured counts as
equivalent".
"""
import glob
import os
import re
import shutil
import subprocess
import tempfile

LIBC_VERSION = os.environ.get("ASSURE_BACKEND_LIBC_VER", "0.2.149")

_cached = None          # (rlibPath, depsDir) or (None, None)


def ensureLibcRlib(logger=None):
    """Build (or reuse) libc's rlib. On failure returns (None, None); callers revert to the original behavior.

    Offline build measured at ~1.2s, so per-process caching is enough — no
    on-disk cache: an on-disk cache would have to handle invalidation when the
    toolchain changes, not worth it.
    """
    global _cached
    if _cached is not None:
        return _cached

    _cached = (None, None)
    work = tempfile.mkdtemp(prefix="assure_libc_")
    try:
        os.makedirs(os.path.join(work, "src"), exist_ok=True)
        with open(os.path.join(work, "Cargo.toml"), "w") as f:
            f.write('[package]\nname = "assure_libc_shim"\nversion = "0.1.0"\n'
                    'edition = "2021"\n\n[dependencies]\n'
                    f'libc = "={LIBC_VERSION}"\n')
        with open(os.path.join(work, "src", "lib.rs"), "w") as f:
            f.write("pub use libc;\n")

        env = dict(os.environ, CARGO_NET_OFFLINE="true")
        r = subprocess.run(["cargo", "build", "--offline"], cwd=work,
                           capture_output=True, text=True, env=env, timeout=300)
        deps = os.path.join(work, "target", "debug", "deps")
        hits = sorted(glob.glob(os.path.join(deps, "liblibc-*.rlib")))
        if r.returncode != 0 or not hits:
            if logger:
                logger.warn("backend libc build failed; falling back to no-libc behavior: %s",
                            (r.stderr or "")[-300:])
            shutil.rmtree(work, ignore_errors=True)
            return _cached
        _cached = (hits[0], deps)
        if logger:
            logger.info("backend libc ready: %s", hits[0])
    except (OSError, subprocess.SubprocessError) as e:
        if logger:
            logger.warn("backend libc build raised: %s", e)
        shutil.rmtree(work, ignore_errors=True)
    return _cached


# ── ② Remove libc imports that collide with local definitions ─────────────

# Only **unindented** top-level items are recognized (^ without \s*). With \s*,
# local declarations inside a function body (the model likes writing
# `unsafe extern "C" { fn realloc(...); }` inside functions) would be judged
# local definitions, causing the top-level `use libc::realloc` to be stripped —
# a local declaration is visible only in that function, so realloc in **other
# functions** would lose its definition (E0425).
# Measured 2026-08-24 sfr-e2e3: csv_init took 13 collateral rows scored 0 this way.
_DEF_PATTERNS = (
    r"^(?:pub\s+)?type\s+(\w+)",
    r"^(?:pub\s+)?struct\s+(\w+)",
    r"^(?:pub\s+)?union\s+(\w+)",
    r"^(?:pub\s+)?enum\s+(\w+)",
    r"^(?:pub\s+)?const\s+(\w+)",
    r"^(?:pub\s+)?static\s+(?:mut\s+)?(\w+)",
    r"^(?:pub\s+)?(?:unsafe\s+)?(?:extern\s+\"C\"\s+)?fn\s+(\w+)",
)


def localDefinitions(src):
    names = set()
    for pat in _DEF_PATTERNS:
        names |= set(re.findall(pat, src, re.M))
    return names


def stripCollidingLibcImports(src):
    """Delete locally defined names from `use libc::...`; **keep the local definitions**.

    Which side to keep doesn't really matter (both point at the same C type),
    but keeping the local definition is the smaller change: the local definition
    may be referenced by other code in the same file, and deleting it would
    require fixing those references too.
    """
    local = localDefinitions(src)

    def replBraced(m):
        kept = [n.strip() for n in m.group(1).split(",") if n.strip()
                if n.split(" as ")[0].strip() not in local]
        return f"use libc::{{{', '.join(kept)}}};" if kept else ""

    src = re.sub(r"use\s+libc::\{([^}]*)\}\s*;", replBraced, src)
    src = re.sub(r"use\s+libc::(\w+)\s*;",
                 lambda m: "" if m.group(1) in local else m.group(0), src)
    return src
