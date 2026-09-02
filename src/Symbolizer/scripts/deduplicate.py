#!/usr/bin/env python3
"""
Use fdupes to deduplicate .dot files under a given directory structure,
keeping only the first occurrence of each duplicate.
Runs in single-threaded mode and logs progress and full fdupes output to deduplicate_process.txt.
"""
import os
import sys
import subprocess


def manage_dot_files_by_hash(dir_path: str) -> str:
    """
    Runs fdupes on `dir_path`, deleting duplicates and keeping only the first file in each group.
    Logs when starting and writes all fdupes stdout/stderr into LOG_FILE.
    """
    header = f"[INFO] Starting fdupes on: {dir_path}\n"
    print(header.strip())
    cmd = [
        "fdupes",      # find duplicates (default MD5 signature)
        "-d",          # delete duplicates
        "-N",          # no prompt, keep first file of each group
        dir_path        # target directory
    ]
    proc = subprocess.run(cmd, text=True)

    if proc.returncode == 0:
        return f"Dedup complete: {dir_path}"
    else:
        return f"[ERROR] fdupes on {dir_path}: return code {proc.returncode}"


def main():
    if len(sys.argv) != 2 or sys.argv[1] not in ('C', 'Rust'):
        print("Usage: dedupe.py [C|R]")
        sys.exit(1)

    base_dir = "graph_output/C" if sys.argv[1] == 'C' else "graph_output/Rust"
    if not os.path.isdir(base_dir):
        print(f"[ERROR] Directory does not exist: {base_dir}")
        sys.exit(1)

    # collect all subdirectories to process
    all_dirs = [root for root, _, _ in os.walk(base_dir)]
    total = len(all_dirs)
    print(f"[INFO] Found {total} directories to process (single-threaded).")

    # single-threaded execution
    for idx, d in enumerate(all_dirs, start=1):
        try:
            result = manage_dot_files_by_hash(d)
            print(f"[{idx}/{total}] {result}")
        except Exception as e:
            print(f"[{idx}/{total}] [ERROR] {d} exception: {e}")


if __name__ == "__main__":
    main()
