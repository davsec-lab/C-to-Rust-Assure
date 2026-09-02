import os
import re
import subprocess

def scan_and_run(directory, keyword):
    found_list = []
    for filename in os.listdir(directory):
        if filename.endswith(".dot"):
            match = re.search(r"__(\d+)\.dot$", filename)
            if not match:
                continue
            index = match.group(1)
            if index in found_list:
                continue
            found_list.append(index)
            cmd = [
                "python3",
                "../scripts/search_expression.py",
                "test.txt",
                keyword,
                index
            ]
            try:
                subprocess.run(cmd, check=True)
            except subprocess.CalledProcessError as e:
                print(f"[ERROR] Command failed: {e}")

if __name__ == "__main__":
    import sys
    if len(sys.argv) != 3:
        print("Usage: python3 scan_and_run.py <directory> <keyword>")
        exit(1)

    directory = sys.argv[1]
    keyword = sys.argv[2]

    scan_and_run(directory, keyword)
