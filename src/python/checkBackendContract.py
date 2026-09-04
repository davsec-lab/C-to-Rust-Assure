#!/usr/bin/env python3
"""Check whether the frontend artifacts satisfy the backend contract (assure_design.md §4.2).

    python3 checkBackendContract.py <individual-funcs_dir> [--json]

The backend ``divide_script.sh`` splits files by extension into ``testcase/C``
and ``testcase/Rust``, and ``symbolicExecution.py`` then pairs them by basename.
So the contract is:

  1. every ``<fn>.i`` must have a same-named ``<fn>.rs`` (and vice versa)
  2. **no ``merged_funcs.rs`` may appear** — SymbolizerPass matches the target
     function via the module file name (see assure_design.md §2.3); feeding it a
     merged artifact returns ``Error: target function not found`` outright
  3. basenames must not contain characters that break shell / filename matching

Exit code 0 = pass; 1 = violation. Sits between translationValidator and
performSymbolExecution, so it can error out before wasting a KLEE round
(20 minutes minimum).
"""
import argparse
import json
import os
import re
import sys

BAD_NAME = re.compile(r"[^\w.\-+]")


def check(directory):
    files = os.listdir(directory)
    iStems = {os.path.splitext(f)[0] for f in files if f.endswith(".i")}
    rsFiles = [f for f in files if f.endswith(".rs")]
    rsStems = {os.path.splitext(f)[0] for f in rsFiles}

    merged = [f for f in rsFiles if f.startswith("merged_funcs")]
    report = {
        "directory": directory,
        "n_i": len(iStems),
        "n_rs": len(rsStems),
        "missing_rs": sorted(iStems - rsStems),
        "missing_i": sorted(rsStems - iStems),
        "merged_files": sorted(merged),
        "bad_names": sorted(s for s in (iStems | rsStems) if BAD_NAME.search(s)),
    }
    report["ok"] = not (report["missing_rs"] or report["missing_i"]
                        or report["merged_files"] or report["bad_names"])
    return report


def main():
    ap = argparse.ArgumentParser(description="Backend contract check")
    ap.add_argument("directory")
    ap.add_argument("--json", action="store_true")
    a = ap.parse_args()

    if not os.path.isdir(a.directory):
        print(f"[FATAL] directory does not exist: {a.directory}", file=sys.stderr)
        return 2
    r = check(a.directory)

    if a.json:
        print(json.dumps(r, indent=2, ensure_ascii=False))
    else:
        print(f"=== backend contract check: {os.path.basename(a.directory)} ===")
        print(f"  .i = {r['n_i']}, .rs = {r['n_rs']}")
        if r["merged_files"]:
            print(f"  FAIL merged artifact present: {', '.join(r['merged_files'])}")
            print("     the backend matches the target function by file name; a merged "
                  "'Error: target function not found'.")
        for key, label in (("missing_rs", "missing .rs"), ("missing_i", "missing .i"),
                           ("bad_names", "invalid basename")):
            if r[key]:
                shown = ", ".join(r[key][:8]) + (" ..." if len(r[key]) > 8 else "")
                print(f"  FAIL {label} ({len(r[key])}): {shown}")
        print("  PASS" if r["ok"] else "  -> contract violated")
    return 0 if r["ok"] else 1


if __name__ == "__main__":
    sys.exit(main())
