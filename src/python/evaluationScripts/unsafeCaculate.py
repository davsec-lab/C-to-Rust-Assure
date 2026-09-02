import os
import csv
import subprocess
import sys
import re
from sympy import false

sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))
from fetchTargetFunction import *

def count_unsafe_lines_in_body(body):
    total_unsafe_lines = 0

    index = 0
    while True:
        unsafe_pos = body.find("unsafe {", index)
        if unsafe_pos == -1:
            break
        brace_start = body.find('{', unsafe_pos)
        if brace_start == -1:
            break 

        brace_count = 0
        block_end = brace_start
        for i in range(brace_start, len(body)):
            if body[i] == '{':
                brace_count += 1
            elif body[i] == '}':
                brace_count -= 1

            if brace_count == 0:
                block_end = i
                break

        unsafe_block = body[brace_start:block_end + 1]
        block_lines = unsafe_block.count('\n') + 1

        total_unsafe_lines += block_lines
        index = block_end + 1

    return total_unsafe_lines

def compile_rust_file(file_path):
    # The edition must match llvmBitcodeEmitter / the frontend cargo check;
    # otherwise this would judge functions the backend can actually compile as
    # compile fail, silently lowering the denominator of the unsafe metric.
    compile_cmd = ["rustc", "-A", "dead_code", "--emit=llvm-bc", "--crate-type=lib",
                   "--edition=" + os.environ.get("ASSURE_RUST_EDITION", "2021"), file_path]
    try:
        subprocess.run(compile_cmd, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        return True
    except subprocess.CalledProcessError:
        return False
    finally:
        file_base_name = os.path.basename(file_path)
        bc_file_name = os.path.splitext(file_base_name)[0] + ".bc"
        if os.path.exists(bc_file_name):
            os.remove(bc_file_name)

def calculate_percentage(numerator, denominator):
    if denominator == 0:
        return "wrong"
    percentage = (numerator / denominator) * 100
    return f"{percentage:.2f}%"

def has_unsafe_keyword(src_bytes: bytes, func_name: str) -> bool:
    text = src_bytes.decode("utf-8", errors="ignore")
    pattern = rf'\b(?:pub\s+)?(?:unsafe\s+)?(?:extern\s+\"[^\"]+\"\s+)?fn\s+{re.escape(func_name)}\b'
    m = re.search(pattern, text)
    if m:
        return "unsafe" in m.group(0)
    return False

def analyze_rs_files(root_dir, csv_file_path, disable_write = false):

    if disable_write:
        overall_unsafe_sum = 0
        overall_lines_sum = 0
        for root, dirs, files in os.walk(root_dir):
            for file in files:
                if file.endswith('.rs'):
                    file_path = os.path.join(root, file)
                    file_name = os.path.splitext(file)[0]

                    src = open(file_path, 'rb').read()
                    func_name = find_target_rust_function(src, file_name)

                    if not compile_rust_file(file_path):
                        print(f"{func_name} compile fail")
                        continue

                    function_body = find_function_body(src, func_name)
                    if not function_body:
                        continue

                    total_lines = len(function_body.split("\n"))
                    if has_unsafe_keyword(src, func_name):
                        unsafe_lines = total_lines
                    else:
                        unsafe_lines = count_unsafe_lines_in_body(function_body)

                    # BUGFIX: the two accumulators were originally swapped
                    # (unsafe_sum accumulated total_lines, lines_sum accumulated
                    # unsafe_lines), making the returned safe_lines
                    # = unsafe - total negative. On the libcsv golden this showed
                    # as lines_sum=10 / unsafe_sum=307 / safe=-297.
                    overall_lines_sum += total_lines
                    overall_unsafe_sum += unsafe_lines
            return overall_lines_sum, overall_unsafe_sum, overall_lines_sum - overall_unsafe_sum

    else:
        with open(csv_file_path, 'w', encoding='utf-8', newline='') as csvfile:
            writer = csv.writer(csvfile)
            writer.writerow(["function_name", "has_unsafe_block", "unsafe_lines", "total_lines", "percentage"])

            overall_unsafe_sum = 0
            overall_lines_sum = 0

            for root, dirs, files in os.walk(root_dir):
                for file in files:
                    if file.endswith('.rs'):
                        file_path = os.path.join(root, file)
                        file_name = os.path.splitext(file)[0]

                        src = open(file_path, 'rb').read()
                        func_name = find_target_rust_function(src, file_name)

                        if not compile_rust_file(file_path):
                            print(f"{func_name} compile fail")
                            continue

                        function_body = find_function_body(src, func_name)
                        if not function_body:
                            writer.writerow([func_name, "notfound", "notfound", "notfound"])
                            continue

                        total_lines = len(function_body.split("\n"))
                        if has_unsafe_keyword(src, func_name):
                            unsafe_lines = total_lines
                        else:
                            unsafe_lines = count_unsafe_lines_in_body(function_body)

                        writer.writerow([
                            func_name,
                            unsafe_lines,
                            total_lines,
                            calculate_percentage(unsafe_lines, total_lines)
                        ])
                        overall_unsafe_sum += unsafe_lines
                        overall_lines_sum += total_lines
                overall_percentage = calculate_percentage(overall_unsafe_sum, overall_lines_sum)

                writer.writerow([
                    "Overall",
                    overall_unsafe_sum,
                    overall_lines_sum,
                    overall_percentage
                ])

if __name__ == "__main__":
    rust_test_case_directory = "./test"
    analyze_rs_files(rust_test_case_directory, "./result.csv", False)