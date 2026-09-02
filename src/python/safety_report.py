#!/usr/bin/env python3
"""Safety analysis: compute R_std and CROWN metrics for a batch of Rust translations.

Corresponds to DESIGN.md §5B "Safety analysis". Usage:

    python3 safety_report.py <dir> [-o OUT] [--skip-crown] [--timeout SEC]

``<dir>`` is a directory containing ``*.rs`` (``individual-funcs_*/`` or the
backend's ``testcase/Rust/``). Produces ``safety_report.json`` and
``safety_report.csv`` (written under ``<dir>`` by default).

The two metrics have different origins — keep them clearly apart:

* **CROWN** — replicates the method of PerfAssure
  ``PerformanceMixin.runCrownAnalysisForOutput`` (copy into crown's buffer
  crate → ``analyse.sh buffer`` → read ``analysis_results/statistics.json``),
  only changed to run in batch, per function.

* **R_std** — **does not exist in PerfAssure**. ``ARCHITECTURE.md`` only lists it
  as a metric name, and the same file's Open items also state "need actual output
  samples to fix the metric fields". This script gives an explicit, auditable
  definition (see the ``RStdCounter`` docs); **it is new, not a replication**.
"""
import argparse
import csv
import json
import os
import shutil
import subprocess
import sys

try:
    from tree_sitter import Language, Parser
    import tree_sitter_rust
    RUST_LANG = Language(tree_sitter_rust.language())
except Exception as exc:  # pragma: no cover
    print(f"[FATAL] tree_sitter + tree_sitter_rust required: {exc}", file=sys.stderr)
    raise

# ── CROWN ────────────────────────────────────────────────────────────────────

CROWN_ROOT = os.environ.get("ASSURE_CROWN_ROOT", "/home/gabe/crown")
CROWN_CRATE = "buffer"


def runCrown(rsPath, crownRoot=CROWN_ROOT, timeout=600):
    """Run CROWN once; return (statistics dict | None, error description | None).

    Same method as PerfAssure ``runCrownAnalysisForOutput``: copy the file to be
    analyzed into ``<crownRoot>/buffer/src/buffer.rs``, run
    ``bash ./analyse.sh buffer`` under crownRoot, then read back
    ``buffer/analysis_results/statistics.json``.

    Two pitfalls:

    1. **Not parallelizable.** The buffer crate is a globally shared mutable
       location; multiple processes would overwrite each other.
    2. **``RUSTUP_TOOLCHAIN`` must be cleared.** crown's ``rust-toolchain`` pins
       ``nightly-2023-01-26`` (it calls rustc internal APIs), while ``env.sh``
       sets ``RUSTUP_TOOLCHAIN=1.64.0`` to align with the LLVM 14 backend. The
       latter overrides the former, causing
       ``librustc_driver-*.so: cannot open shared object file``.
    """
    analyse = os.path.join(crownRoot, "analyse.sh")
    if not os.path.isfile(analyse):
        return None, f"analyse.sh does not exist: {analyse}"

    bufferSrc = os.path.join(crownRoot, CROWN_CRATE, "src", "buffer.rs")
    statsPath = os.path.join(crownRoot, CROWN_CRATE, "analysis_results", "statistics.json")

    os.makedirs(os.path.dirname(bufferSrc), exist_ok=True)
    shutil.copy2(rsPath, bufferSrc)
    if os.path.exists(statsPath):
        os.remove(statsPath)

    env = dict(os.environ)
    env.pop("RUSTUP_TOOLCHAIN", None)          # see point 2 in the docstring

    try:
        proc = subprocess.run(["bash", "./analyse.sh", CROWN_CRATE], cwd=crownRoot,
                              env=env, text=True, capture_output=True, timeout=timeout)
    except subprocess.TimeoutExpired:
        return None, f"timeout ({timeout}s)"

    if not os.path.isfile(statsPath):
        tail = (proc.stderr or proc.stdout or "").strip().splitlines()
        return None, (tail[-1][:200] if tail else f"returncode={proc.returncode}")

    with open(statsPath) as f:
        return json.load(f), None


# ── Aligned safety metrics (2026-08-26, user decision) ───────────────────────
#
# The three surviving metrics now use the SAME methodology as the PerfAssure
# results repo (/home/gabe/perfassure_result), so numbers are comparable with
# the paper's tables:
#
#   unsafe_usage  = CROWN num_unsafe_usages   ┐ one CROWN run on the MERGED
#   unsafe_ptrs   = CROWN num_unsafe_ptrs     ┘ file (collect_unsafe_csv.sh
#                   method: buffer template supplies extern crate libc etc.,
#                   avoiding the bare-file E0432 → all-zero trap)
#   R_std         = std_type_rate.py (vendored VERBATIM from perfassure_result)
#                   type-annotation-site classification, std/raw/neither,
#                   outermost raw pointer wins; run on the same merged file.
#
# Analyzing the MERGED file (not per-function splits) also kills the
# dependency-closure double counting that T13's self-contained files introduced
# (each shared callee was counted once per includer; cjson unsafe_ptrs
# inflated to 397 that way).
#
# The previous implementations (RustAssure line counting via result.csv
# overall_* for unsafe_usage; our own call-site R_std) are retired from the
# metric surface. result.csv itself is untouched — golden checks its columns.

def analyzeMerged(mergedPath, crownRoot=CROWN_ROOT, timeout=600.0):
    out = {"source": os.path.abspath(mergedPath)}

    stats, err = runCrown(mergedPath, crownRoot=crownRoot, timeout=timeout)
    if stats is None:
        out["crown"] = {"error": err}
    else:
        out["crown"] = {k: stats.get(k) for k in
                        ("num_unsafe_usages", "num_unsafe_ptrs",
                         "num_unsafe_trait_impls", "num_mut_static_accesses",
                         "num_unsafe_fn_calls", "num_union_field_accesses")}

    r = subprocess.run([sys.executable,
                        os.path.join(os.path.dirname(os.path.abspath(__file__)),
                                     "std_type_rate.py"),
                        mergedPath, "--json"],
                       capture_output=True, text=True, timeout=300)
    try:
        rows = json.loads(r.stdout)
        out["r_std"] = rows[0] if rows else {"error": "empty output"}
    except (json.JSONDecodeError, IndexError):
        out["r_std"] = {"error": (r.stderr or r.stdout or "")[-300:]}
    return out


def main():
    ap = argparse.ArgumentParser(description="aligned safety metrics (CROWN + std_type_rate) on the merged translation")
    ap.add_argument("merged", help="path to merged_funcs.rs (or .rs.block)")
    ap.add_argument("-o", "--out", default=".", help="output directory")
    ap.add_argument("--crown-root", default=CROWN_ROOT)
    ap.add_argument("--timeout", type=float, default=600.0)
    args = ap.parse_args()

    if not os.path.isfile(args.merged):
        print(f"[FATAL] merged file not found: {args.merged}", file=sys.stderr)
        return 1
    os.makedirs(args.out, exist_ok=True)

    result = analyzeMerged(args.merged, crownRoot=args.crown_root, timeout=args.timeout)

    summary = {
        "unsafe_usage": result.get("crown", {}).get("num_unsafe_usages"),
        "unsafe_ptrs": result.get("crown", {}).get("num_unsafe_ptrs"),
        "R_std": result.get("r_std", {}).get("r_std"),
    }
    with open(os.path.join(args.out, "safety_report.json"), "w") as f:
        json.dump(result, f, indent=2, sort_keys=True)
        f.write("\n")
    with open(os.path.join(args.out, "safety_summary.json"), "w") as f:
        json.dump(summary, f, indent=2, sort_keys=True)
        f.write("\n")
    print(f"unsafe_usage={summary['unsafe_usage']}  unsafe_ptrs={summary['unsafe_ptrs']}  "
          f"R_std={summary['R_std']}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
