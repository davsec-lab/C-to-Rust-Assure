#!/usr/bin/env python3

import os
import csv
import subprocess
from pathlib import Path


def parse_target_value(output, target_value):
    lines = output.splitlines()
    for line in lines:
        if not line.strip() or all(c in "-=|" for c in line.strip()):
            continue

        parts = [p.strip() for p in line.split('|') if p.strip()]

        if target_value in parts:
            icov_index = parts.index(target_value)
            continue

        if icov_index is not None and len(parts) > icov_index:
            try:
                icov_value = float(parts[icov_index])
                return icov_value
            except ValueError:
                pass
    return None


def parse_icov_from_output(output):
    return {
        "ICov(%)": parse_target_value(output, "ICov(%)"),
        "TermExit": parse_target_value(output, "TermExit"),
        "TermEarly": parse_target_value(output, "TermEarly"),
        "TermSolverErr": parse_target_value(output, "TermSolverErr"),
        "TermProgrErr": parse_target_value(output, "TermProgrErr"),
        "TermUserErr": parse_target_value(output, "TermUserErr"),
        "TermExecErr": parse_target_value(output, "TermExecErr"),
        "TermEarlyAlgo": parse_target_value(output, "TermEarlyAlgo"),
        "TermEarlyUser": parse_target_value(output, "TermEarlyUser"),
        "ActiveStates": parse_target_value(output, "ActiveStates"),
        "States": parse_target_value(output, "States"),
    }

def calculate_coverage(directory, csv_output_path):
    klee_out_dirs = []

    for item in os.listdir(directory):
        sub_path = os.path.join(directory, item)
        if os.path.isdir(sub_path) and item.startswith("klee-out-"):
            klee_out_dirs.append(sub_path)

    if not klee_out_dirs:
        print("cannot find klee-out-* directory")
        return

    all_results = []

    for out_dir in klee_out_dirs:
        print(f"processing {out_dir} ...")
        cmd = ["klee-stats", out_dir, "--print-all"]
        result = subprocess.run(cmd, capture_output=True, text=True)

        if result.returncode != 0:
            print(f"klee-stats fail: {result.stderr}")
            continue

        row = parse_icov_from_output(result.stdout)
        row["Directory"] = os.path.basename(out_dir)


        cmd_name_directory = os.path.join(out_dir, "info")
        with open(cmd_name_directory, "r", encoding="utf-8") as f:
            input_path = f.readline().rstrip("\n")
            input_name = Path(input_path).name
            row["input_file"] = input_name

        all_results.append(row)

    if all_results:
        fieldnames = ["Directory", "input_file"] + [key for key in all_results[0] if (key != "Directory" and key != "input_file")]
        with open(csv_output_path, "w", newline="") as csvfile:
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(all_results)
        print(f"Results written to {csv_output_path}")



if __name__ == "__main__":
    calculate_coverage("/Users/gab/repo/server/Rust", "coverage_output.csv")
