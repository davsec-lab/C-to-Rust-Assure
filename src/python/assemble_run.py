#!/usr/bin/env python3
"""Export one eval round's raw artifacts and assemble the scoreboard (DESIGN.md P0).

    python3 assemble_run.py --backend <perform_general_execution_*> \
                            --frontend <individual-funcs_*> \
                            [--validator-log <log>] \
                            -o runs/<id>

Output:

    runs/<id>/
      execution.log        metric summary + per-stage results
      summary.csv          one row per function

Distillation was removed 2026-08-27 (STATUS.md §5.18): no per-function funcs/
pack, no diff.md / translate.md, no classify_failures attribution. The proposer
reads runs/<id>/raw/ directly, which run_eval exports verbatim. What is left
here is the **scoreboard** — summary.csv feeds score.py feeds metrics.json feeds
the frontier — plus the metric summary in execution.log.

sliceValidatorLog / summarizeTranslation stay: summary.csv's retries column
depends on them. That is scoreboard, not evidence.
"""
import argparse
import csv
import glob
import json
import os
import re
import sys
from collections import defaultdict

def readEditDistances(backendDir):
    """→ {func: [(arg, distance_str), ...]}"""
    path = os.path.join(backendDir, "edit_distance", "best_edit_distances.csv")
    out = defaultdict(list)
    if not os.path.isfile(path):
        return out
    with open(path, newline="") as f:
        for row in csv.DictReader(f):
            vals = list(row.values())
            if len(vals) >= 3:
                out[vals[0]].append((vals[1], vals[2]))
    return out


def sliceValidatorLog(logPath):
    """Slice the frontend validator log into per-function segments.

    Handles both translator modes (all markers are logged *after* a function's
    translate/compile work, so a segment = lines up to and including its marker):

      * cf-struct-replay single : ``Translating function: <name>``
      * struct-fn-replay single  : ``[function stored <name>]...``
      * struct-fn-replay SCC     : ``[SCC] Translating mutual-recursion group of
        N functions: ['a', 'b', 'c']`` — the group is compiled as one unit, so its
        shared compile block is attributed to EVERY member (fan-out), then each
        trailing ``[function stored <member>]`` line is added to that member.
    """
    if not logPath or not os.path.isfile(logPath):
        return {}
    # All markers are logged *after* a function's translate/compile work, so a
    # segment = accumulated lines up to and including the marker. A single close
    # marker attributes the block to one function; an SCC close marker fans the
    # block out to every group member (the group is compiled as one unit).
    scc = re.compile(r"(?:Successfully added|Failed to add) SCC group \[(.+?)\] to the merged file")
    single = re.compile(r"Translating function: (\S+)"                       # cf-struct-replay
                        r"|(?:Successfully added|Failed to add) (\S+) to the merged file")  # struct-fn-replay
    segments, buf = {}, []

    def add(fn, lines):
        segments.setdefault(fn, []).extend(lines)

    with open(logPath, errors="ignore") as f:
        for line in f:
            buf.append(line)
            ms = scc.search(line)
            if ms:                                     # SCC group: fan the block out
                for fn in (x.strip() for x in ms.group(1).split(",") if x.strip()):
                    add(fn, buf)
                buf = []
                continue
            m = single.search(line)
            if m:                                      # single function
                add((m.group(1) or m.group(2)).strip(), buf)
                buf = []
    return segments


def summarizeTranslation(lines):
    """Extract structured facts from a log segment, **dropping the full prompt and response text** (tradeoff 2)."""
    text = "".join(lines)
    attempts = re.findall(r"After (\d+) retranslation attempts", text)
    errors = re.findall(r"error\[(E\d+)\]", text)
    errCount = defaultdict(int)
    for e in errors:
        errCount[e] += 1
    return {
        "log_lines": len(lines),
        "retry_attempts": int(attempts[-1]) if attempts else 0,
        "recompile_rounds": len(re.findall(r"Trying to recompile", text)),
        "rustc_error_codes": dict(sorted(errCount.items(), key=lambda kv: -kv[1])),
        "struct_check_missing": len(re.findall(r"does not include target struct", text)),
    }


def main():
    ap = argparse.ArgumentParser(description="Assemble the runs/<id>/ evidence pack")
    ap.add_argument("--backend", required=True, help="perform_general_execution_* directory")
    ap.add_argument("--frontend", required=True, help="individual-funcs_* directory")
    ap.add_argument("--validator-log", default=None)
    ap.add_argument("-o", "--out", required=True)
    args = ap.parse_args()

    backend, frontend, out = (os.path.abspath(p) for p in
                              (args.backend, args.frontend, args.out))
    edits = readEditDistances(backend)
    # ⚠ sliceValidatorLog / summarizeTranslation are scoreboard, not evidence:
    #    summary.csv's retries column depends on them.
    segments = sliceValidatorLog(args.validator_log)

    funcs = sorted(os.path.splitext(f)[0] for f in os.listdir(frontend)
                   if f.endswith(".i"))

    # Guard: a validator log was given but none of its function segments match this
    # run's functions -> almost certainly the wrong log (stale path / different
    # codebase). Without this the mismatch is silent and every translate.md is empty.
    if args.validator_log and segments and not (set(funcs) & set(segments)):
        print(f"⚠ [assemble] validator-log has {len(segments)} function segment(s) but NONE "
              f"match this run's {len(funcs)} functions — likely the wrong log "
              f"(stale path / different codebase). translate.md will be empty.\n"
              f"    log: {args.validator_log}")

    rows = []

    for fn in funcs:
        argsList = edits.get(fn, [])
        rows.append({
            "function": fn,
            "compiled": os.path.isfile(os.path.join(backend, "testcase", "Rust", fn + ".rs.bc")),
            "n_args": len(argsList),
            "n_equal": sum(1 for _, dv in argsList if dv == "0.0"),
            "n_klee_empty": sum(1 for _, dv in argsList if "Empty" in dv),
            "retries": (summarizeTranslation(segments[fn])["retry_attempts"]
                        if fn in segments else ""),
        })

    with open(os.path.join(out, "summary.csv"), "w", newline="") as f:
        w = csv.DictWriter(f, fieldnames=list(rows[0]) if rows else ["function"])
        w.writeheader()
        w.writerows(rows)

    resultCsv = os.path.join(backend, "result.csv")
    metrics = ""
    if os.path.isfile(resultCsv):
        with open(resultCsv) as f:
            lines = f.read().strip().splitlines()
        # Echo drops overall_lines_sum / overall_unsafe_sum / overall_safe_lines
        # (2026-08-26: safety metrics aligned to perfassure_result — CROWN +
        # std_type_rate on merged_funcs.rs, see safety_report.py. The RustAssure
        # line-ratio is retired from the metric surface.)
        # The backend result.csv itself is untouched — the golden seven-field check and
        # raw/ auditing depend on it.
        if len(lines) >= 2:
            head, row = lines[0].split(","), lines[1].split(",")
            drop = {"overall_lines_sum", "overall_unsafe_sum", "overall_safe_lines"}
            keep = [i for i, h in enumerate(head) if h not in drop]
            metrics = ",".join(head[i] for i in keep) + "\n" + ",".join(row[i] for i in keep)
        else:
            metrics = "\n".join(lines)

    totalArgs = sum(r["n_args"] for r in rows)
    totalEq = sum(r["n_equal"] for r in rows)

    evidence = ("\n## Evidence\n"
                "raw/ only — exported verbatim by run_eval, never distilled.\n"
                "  raw/frontend/     per-function .i / .rs / merged_funcs.rs\n"
                "  raw/validator.log full translation log (prompts, responses, rustc retries)\n"
                "  raw/backend/      KLEE logs, graph_output/**/*.dot, edit_distance/,\n"
                "                    result.csv, testcase/, rustc_errors/\n"
                "Cause of a `Rust Empty!` row is NOT pre-classified: grep raw/backend/.\n")

    with open(os.path.join(out, "execution.log"), "w") as f:
        f.write(f"""# run: {os.path.basename(out)}

## Metrics (result.csv)
{metrics}

## Derived
functions            : {len(rows)}
compiled             : {sum(1 for r in rows if r['compiled'])}
arguments            : {totalArgs}
edit_distance == 0   : {totalEq}{f'  ({totalEq/totalArgs*100:.1f}%)' if totalArgs else ''}
klee_no_output_args  : {sum(r['n_klee_empty'] for r in rows)}   <- diagnostic, not in the main metric
{evidence}""")

    with open(os.path.join(out, "raw.txt"), "w") as f:
        f.write(f"backend  : {backend}\nfrontend : {frontend}\n"
                f"validator_log: {args.validator_log or '-'}\n\n"
                "Raw artifacts not copied (~450 MB/round). For manual investigation, access the paths above directly.\n")

    print(f"=== assembly done -> {out} ===")
    print(f"  functions {len(rows)}, arguments {totalArgs}, edit_distance==0: {totalEq}")
    print("  evidence is raw/ only; no distilled pack, no failure attribution")
    return 0


if __name__ == "__main__":
    sys.exit(main())
