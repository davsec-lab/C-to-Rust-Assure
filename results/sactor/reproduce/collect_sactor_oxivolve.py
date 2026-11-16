#!/usr/bin/env python3
"""Copy the SACToR + Claude Sonnet 5.5 results for the Oxivolve time_versions programs
(sactor-bench-oxivolve/<name>/result_sonnet55) into C-to-Rust-Assure/results/sactor/<bench>/
and print a per-benchmark summary (also written to results/sactor/summary.json).

Layout per benchmark (bench names follow results/rustassure: libbmp_parse -> libbmp):
  <bench>/input/<bench>.c         the C file given to SACToR (<bench>_time.c with _GNU_SOURCE first)
  <bench>/input/test_cmd.json     empty test list: compile-only verification
  <bench>/run/                    SACToR's result directory (result_sonnet55) as is
  <bench>/run/sactor_console.log  SACToR's console output (all attempts of this run)
Usage: collect_sactor_oxivolve.py [dest]   (default: /home/gabe/C-to-Rust-Assure/results/sactor)"""
import glob, json, os, shutil, sys

SRC = "/home/gabe/sactor_forklift/sactor-bench-oxivolve"
DEST = sys.argv[1] if len(sys.argv) > 1 else "/home/gabe/C-to-Rust-Assure/results/sactor"
NAMES = {  # SACToR dir name -> results/ bench name
    "libcsv": "libcsv", "pagerank": "pagerank", "cjson_parse": "cjson_parse",
    "libbmp_parse": "libbmp", "libbmp_write": "libbmp_write", "rfft": "rfft",
    "kmeans": "kmeans", "quicksort": "quicksort", "matrix_mult": "matrix_mult", "sssp": "sssp",
}
PRICE_IN, PRICE_OUT = 2.0, 10.0  # claude-sonnet-5-5, USD per million tokens


def load(path, default=None):
    try:
        with open(path) as f:
            return json.load(f)
    except (OSError, ValueError):
        return default


def with_backups(path):
    """A resumed SACToR run moves the previous run's stats file to <file>.bak[.N] and starts a new one."""
    return [p for p in [path] + sorted(glob.glob(path + ".bak*")) if os.path.exists(p)]


def stage_summary(run, stage):
    # failure_info: an item's status comes from the latest run that has it; its errors (failed attempts)
    # are added up over all runs. llm_stat: totals are added up over all runs.
    info = {}
    for path in reversed(with_backups(f"{run}/{stage}_failure_info.json")):  # oldest backup first
        for k, v in load(path, {}).items():
            if not isinstance(v, dict):
                continue
            prev = info.get(k, {"errors": []})
            info[k] = {**v, "errors": prev["errors"] + v.get("errors", [])}
    llm = {}
    for path in with_backups(f"{run}/llm_stat_{stage}.json"):
        for key in ("total_queries", "total_costed_input_tokens", "total_costed_output_tokens"):
            llm[key] = llm.get(key, 0) + load(path, {}).get(key, 0)
    items = info
    ok = [k for k, v in items.items() if v.get("status") == "success"]
    failed = [k for k, v in items.items() if v.get("status") != "success"]
    retried = {k: len(v.get("errors", [])) + (k in ok) for k, v in items.items() if v.get("errors")}
    tin = llm.get("total_costed_input_tokens", 0)
    tout = llm.get("total_costed_output_tokens", 0)
    clippy = load(f"{run}/translated_code_{stage}/clippy_stat.json")
    combined = f"{run}/translated_code_{stage}/combined.rs"
    return {
        "items": len(items), "success": len(ok), "failed": failed,
        "attempts_when_retried": retried,  # item -> attempts used (errors + the success, if any)
        "llm_queries": llm.get("total_queries", 0), "input_tokens": tin, "output_tokens": tout,
        "cost_usd": round(tin * PRICE_IN / 1e6 + tout * PRICE_OUT / 1e6, 3),
        "combined_rs_lines": sum(1 for _ in open(combined)) if os.path.exists(combined) else None,
        "clippy": clippy,
    }


summary = {}
os.makedirs(DEST, exist_ok=True)
for name, bench in NAMES.items():
    W, run_src = f"{SRC}/{name}", f"{SRC}/{name}/result_sonnet55"
    if not os.path.isdir(run_src):
        print(f"{bench}: no result_sonnet55, skipped")
        continue
    D = f"{DEST}/{bench}"
    shutil.rmtree(D, ignore_errors=True)
    os.makedirs(f"{D}/input")
    shutil.copy(f"{W}/{name}.c", f"{D}/input/{bench}.c")
    shutil.copy(f"{W}/test_cmd.json", f"{D}/input/test_cmd.json")
    shutil.copytree(run_src, f"{D}/run")
    if os.path.exists(f"{W}/run_sonnet55.log"):
        shutil.copy(f"{W}/run_sonnet55.log", f"{D}/run/sactor_console.log")
    summary[bench] = {s: stage_summary(f"{D}/run", s) for s in ("unidiomatic", "idiomatic")}

with open(f"{DEST}/summary.json", "w") as f:
    json.dump(summary, f, indent=2)
    f.write("\n")

print("| Benchmark | Unidiomatic ok | Idiomatic ok | Retried (attempts) | LLM calls | Cost (USD) | combined.rs lines | Clippy warnings | Unsafe tokens |")
print("|---|---|---|---|---|---|---|---|---|")
tot_calls = tot_cost = 0
for bench, s in summary.items():
    u, i = s["unidiomatic"], s["idiomatic"]
    retried = "; ".join(f"{tag}: " + ", ".join(f"`{k}` {v}" for k, v in st["attempts_when_retried"].items())
                        for tag, st in (("unidiomatic", u), ("idiomatic", i)) if st["attempts_when_retried"]) or "-"
    calls = u["llm_queries"] + i["llm_queries"]
    cost = u["cost_usd"] + i["cost_usd"]
    tot_calls += calls
    tot_cost += cost
    c = i["clippy"] or {}
    unsafe = f'{c["unsafe_tokens"]} / {c["total_tokens"]}' if c else "-"
    print(f'| {bench} | {u["success"]}/{u["items"]} | {i["success"]}/{i["items"]} | {retried} | {calls} | '
          f'{cost:.3f} | {i["combined_rs_lines"] or "-"} | {c.get("total_warnings", "-")} | {unsafe} |')
print(f"| **Total** | | | | {tot_calls} | **{tot_cost:.2f}** | | | |")
