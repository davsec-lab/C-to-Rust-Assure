#!/usr/bin/env python3
"""Compute one eval round's frozen metrics (DESIGN.md §5 METRICS / §7 `score <run>`).

    python3 score.py <runs/<id>> [--json]

Reads the evidence pack assembled by ``assemble_run.py``, outputs ``metrics.json``.

**This file defines the metric semantics and is immutable** — per DESIGN.md §3.2
it should be root-owned; the outer agent can execute it but not modify it. Once
frozen, the metric definition must not change midway, or cross-round results
become incomparable.

━━ Denominator semantics (DESIGN.md §14 open item 1) ━━━━━━━━━━━━━━━━━━━━━━━

Upstream ``processOutput.count_edit_distance`` has mismatched numerator and
denominator domains: the denominator excludes functions whose Rust failed to
compile, while the numerator counts over the full table (see LIMITATION.md L2).
Also, KLEE execution failures (``"Rust Empty!"``) count in the denominator and
are never 0, treating execution failure as semantic inequivalence (L3).

**Current decision: keep the upstream semantics unchanged** (user decision
2026-08-19), so this script outputs the rate under three denominators at once,
for comparison when a later decision is made:

  edit_distance_0_rate_upstream   replicates upstream: denominator excludes
                                  compile-failed functions, numerator is full-table
  edit_distance_0_rate_strict     denominator = all arguments (incl. compile
                                  failures and KLEE no-output)
  edit_distance_0_rate_semantic   denominator = all arguments − KLEE no-output
                                  (asks only about semantics)

The gaming risk in DESIGN.md §11.3 targets the upstream semantics: adding
"emit a placeholder implementation for hard functions" to the prompt can kick
hard functions out of the denominator. ``_strict`` closes that path.
"""
import argparse
import csv
import json
import os
import sys


def loadSummary(runDir):
    p = os.path.join(runDir, "summary.csv")
    if not os.path.isfile(p):
        raise SystemExit(f"[FATAL] missing summary.csv: {p} (run assemble_run.py first)")
    with open(p, newline="") as f:
        return list(csv.DictReader(f))


def num(x, default=0):
    try:
        return float(x)
    except (TypeError, ValueError):
        return default


def main():
    ap = argparse.ArgumentParser(description="Compute the frozen metrics")
    ap.add_argument("run_dir")
    ap.add_argument("--json", action="store_true")
    a = ap.parse_args()

    runDir = os.path.abspath(a.run_dir)
    rows = loadSummary(runDir)

    nFuncs = len(rows)
    nCompiled = sum(1 for r in rows if str(r.get("compiled", "")).lower() == "true")
    argsTotal = sum(int(num(r.get("n_args"))) for r in rows)
    argsEqual = sum(int(num(r.get("n_equal"))) for r in rows)
    argsKleeEmpty = sum(int(num(r.get("n_klee_empty"))) for r in rows)
    argsCompiledFuncs = sum(int(num(r.get("n_args"))) for r in rows
                            if str(r.get("compiled", "")).lower() == "true")

    def rate(n, d):
        return (n / d) if d else None

    metrics = {
        "run": os.path.basename(runDir),
        "compile_success_rate": rate(nCompiled, nFuncs),
        # The main metric. Denominator = the arguments of the functions that
        # compiled, i.e. the upstream convention (2026-09-01 user decision;
        # previously reported as edit_distance_0_rate_upstream alongside two
        # other denominators, which are gone — `counts` below still lets any
        # variant be recomputed).
        #
        # NOTE the trade-off this denominator carries: a function that fails to
        # compile leaves the denominator entirely rather than scoring 0, so a
        # change that breaks compilation on a hard function raises this number.
        # compile_success_rate is the companion that makes that visible.
        "semantic_similarity_score": rate(argsEqual, argsCompiledFuncs),
        "counts": {
            "functions": nFuncs,
            "compiled": nCompiled,
            "arguments_total": argsTotal,
            "arguments_of_compiled_funcs": argsCompiledFuncs,
            "arguments_equal": argsEqual,
            "arguments_klee_no_output": argsKleeEmpty,
        },
    }

    # Safety dimension (2026-08-26 user decision): keep only three items —
    # unsafe_ptrs (CROWN) / unsafe_usage / R_std. Intermediates like site counts
    # and line-count sums no longer enter the metric surface (look in
    # safety_report.json / raw/backend/result.csv instead).
    # safety_summary.json is flat since the 2026-08-26 alignment to the
    # perfassure_result methodology (safety_report.py): all three values come
    # from one analysis of merged_funcs.rs — CROWN buffer-template for
    # unsafe_usage / unsafe_ptrs, vendored std_type_rate.py for R_std.
    sp = os.path.join(runDir, "safety_summary.json")
    if os.path.isfile(sp):
        s = json.load(open(sp))
        metrics["R_std"] = s.get("R_std")
        metrics["unsafe_ptrs"] = s.get("unsafe_ptrs")
        metrics["unsafe_usage"] = s.get("unsafe_usage")
    else:
        metrics["R_std"] = None
        metrics["unsafe_ptrs"] = None
        metrics["unsafe_usage"] = None

    # coverage comes from the trimmed result.csv echo in execution.log.
    exe = os.path.join(runDir, "execution.log")
    if os.path.isfile(exe):
        for line in open(exe):
            t = line.strip()
            if t.startswith("custom,") and t.count(",") >= 8:
                f = t.split(",")
                metrics["rust_coverage"] = num(f[-3])
                metrics["c_coverage"] = num(f[-2])

    with open(os.path.join(runDir, "metrics.json"), "w") as f:
        json.dump(metrics, f, indent=2, sort_keys=True)
        f.write("\n")

    if a.json:
        print(json.dumps(metrics, indent=2, sort_keys=True))
    else:
        c = metrics["counts"]
        def pct(v):
            return f"{v*100:.2f}%" if v is not None else "n/a"
        print(f"=== {metrics['run']} ===")
        print(f"  compile_success_rate      : {pct(metrics['compile_success_rate'])}"
              f"   ({c['compiled']}/{c['functions']})")
        print(f"  semantic similarity score : {pct(metrics['semantic_similarity_score'])}"
              f"   ({c['arguments_equal']}/{c['arguments_of_compiled_funcs']})")
        print(f"  unsafe_usage (CROWN)      : {metrics.get('unsafe_usage') if metrics.get('unsafe_usage') is not None else 'n/a'}")
        print(f"  unsafe_ptrs (CROWN)       : {metrics.get('unsafe_ptrs') if metrics.get('unsafe_ptrs') is not None else 'n/a'}")
        print(f"  R_std                     : "
              f"{metrics['R_std']:.4f}" if metrics.get("R_std") is not None else
              "  R_std                     : n/a (safety_report.py not run)")
        print(f"\n  → {os.path.join(runDir, 'metrics.json')}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
