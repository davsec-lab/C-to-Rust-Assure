import os
import pandas as pd
from sympy.codegen import Print

from evaluationScripts.unsafeCaculate import analyze_rs_files
from evaluationScripts.coverage import calculate_coverage
from evaluationScripts.countKleeTerminate import count_klee_terminate

c_directory = "testcase/C"
rust_directory = "testcase/Rust"
rust_ir_directory = "klee_ir_files/Rust"
c_ir_directory = "klee_ir_files/C"
execution_time = "execution_time.txt"

best_edit_distance_directory = "edit_distance/best_edit_distances.csv"

def count_total_functions(c_directory, rust_directory):
    i_files = set()
    i_bc_files = set()
    r_files = set()
    r_bc_files = set()

    for root, _, files in os.walk(c_directory):
        for file in files:
            if file.endswith('.i'):
                i_files.add(os.path.splitext(file)[0])
            elif file.endswith('.i.bc'):
                i_bc_files.add(os.path.splitext(file)[0])

    for root, _, files in os.walk(rust_directory):
        for file in files:
            if file.endswith('.rs'):
                r_files.add(os.path.splitext(file)[0])
            elif file.endswith('.rs.bc'):
                r_bc_files.add(os.path.splitext(os.path.splitext(file)[0])[0])

    i_count = len(i_files)
    c_bc_count = len(i_bc_files)

    missing_i_bc_files = i_files - i_bc_files

    for file in missing_i_bc_files:
        print(file)

    r_count = len(r_files)
    r_bc_count = len(r_bc_files)

    missing_r_bc_files = r_files - r_bc_files
    for file in missing_i_bc_files:
        print(file)

    return i_count, c_bc_count, r_count, r_bc_count, missing_r_bc_files


def count_edit_distance(csv_directory, rust_compiled_fail_files):
    df = pd.read_csv(csv_directory)
    valid_function_count = df[~df.iloc[:, 0].isin(rust_compiled_fail_files)].shape[0]
    zero_edit_distance_count = (df.iloc[:, 2] == "0.0").sum()
    return valid_function_count, zero_edit_distance_count


def process_output(input_directory, model, code_base):
    # total Data & compile Data
    c_test_case_directory = os.path.join(input_directory, c_directory)
    rust_test_case_directory = os.path.join(input_directory, rust_directory)
    i_count, c_bc_count, r_count, r_bc_count, missing_r_bc_files =  count_total_functions(c_test_case_directory, rust_test_case_directory)

    # edit distance Data
    edit_distance_directory = os.path.join(input_directory, best_edit_distance_directory)
    total_arguments, zero_edit_distance_arguments = count_edit_distance(edit_distance_directory, missing_r_bc_files)


    # unsafe function Data
    overall_lines_sum, overall_unsafe_sum, overall_safe_lines = analyze_rs_files(rust_test_case_directory, "", True)

    # coverage Data
    rust_coverage = calculate_coverage(os.path.join(input_directory, rust_ir_directory))
    c_coverage = calculate_coverage(os.path.join(input_directory, c_ir_directory))

    # terminate count
    count_klee_terminate(input_directory)

    execution_time_directory = os.path.join(input_directory, execution_time)
    with open(execution_time_directory, "r") as f:
        elapsed_time = f.read().strip()

    data = {"code_base": code_base,
            "model": model,
            "total_functions": i_count,
            "total_rust_functions_compiled": r_bc_count,
            "total_arguments": total_arguments,
            "edit_distance_equal_0": zero_edit_distance_arguments,
            "overall_lines_sum": overall_lines_sum,
            "overall_unsafe_sum": overall_unsafe_sum,
            "overall_safe_lines": overall_safe_lines,
            "rust_coverage": rust_coverage,
            "c_coverage": c_coverage,
            "execution_time": elapsed_time}
    df = pd.DataFrame([data])
    result_directory = os.path.join(input_directory, "result.csv")
    df.to_csv(result_directory, index=False)


if __name__ == '__main__':
    process_output("../Symbolizer/libcsv_gpt_4o_20250320_2025-03-20_19-24-28", "gpt-4o", "libcsv")



