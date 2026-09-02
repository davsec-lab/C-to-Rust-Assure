#!/usr/bin/env python3

import os
import sys
import subprocess

def parse_icov_from_output(output):
    lines = output.splitlines()
    icov_index = None
    icov_value = None
    
    for line in lines:
        if not line.strip() or all(c in "-=|" for c in line.strip()):
            continue
        
        parts = [p.strip() for p in line.split('|') if p.strip()]

        if "ICov(%)" in parts:
            icov_index = parts.index("ICov(%)")
            continue
        
        if icov_index is not None and len(parts) > icov_index:
            try:
                icov_value = float(parts[icov_index])
                return icov_value
            except ValueError:
                pass
    return None


def calculate_coverage(directory):
    klee_out_dirs = []
    
    for item in os.listdir(directory):
        sub_path = os.path.join(directory, item)
        if os.path.isdir(sub_path) and item.startswith("klee-out-"):
            klee_out_dirs.append(sub_path)
    
    if not klee_out_dirs:
        print("cannot find klee-out-* directory")
        return
    
    icov_values = []
    
    for out_dir in klee_out_dirs:
        print(f"processing {out_dir} ...")
        cmd = ["klee-stats", out_dir]
        result = subprocess.run(cmd, capture_output=True, text=True)
        
        if result.returncode != 0:
            print(f"klee-stats fail: {result.stderr}")
            continue
        
        icov = parse_icov_from_output(result.stdout)
        if icov is not None:
            print(f"{out_dir} : {icov}")
            icov_values.append(icov)
        else:
            print(f"cannot parse {out_dir} ICov(%)")
    
    if icov_values:
        avg_icov = sum(icov_values) / len(icov_values)
        print(f"successfully parse {len(icov_values)} ICov(%) value, average: {avg_icov:.2f}")
    else:
        print("cannot parse any ICov(%) value。")

    return avg_icov

if __name__ == "__main__":
    calculate_coverage(sys.argv[1])
