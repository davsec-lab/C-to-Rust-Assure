import os
import csv

klee_original_log = "_original_log"
reach_max_case = "[DEBUG][halt_execution] reach max test cases"
dump_by_errors = "[DEBUG][state_dumps] : dumps by error"
terminate_by_errors = "[DEBUG][halt_execution] terminateOnError"
reach_time_out = "HaltTimer invoked"
states_count = "[DEBUG][halt_execution] end, states_count"

def contains_string(file_path, target_string):
    with open(file_path, 'r') as f:
        for line in f:
            if target_string in line:
                return True
    return False

def count_error_times(file_path, target_string):
    count = 0
    with open(file_path, 'r') as f:
        for line in f:
            if target_string in line:
                count+=1
    return count

def fetch_end_states(file_path):
    target_line = ""
    with open(file_path, 'r') as f:
        for line in f:
            if states_count in line:
                target_line = line
    if target_line == "":
        return ""
    return target_line.rsplit(":", 1)[-1].strip()


def count_klee_terminate(directory):
    c_file_directory = os.path.join(directory, "klee_symbol_log/C")
    c_output_directory = os.path.join(directory, "c_klee_terminate_results.csv")
    process_data(c_file_directory, c_output_directory)

    rust_file_directory = os.path.join(directory, "klee_symbol_log/Rust")
    rust_output_directory = os.path.join(directory, "rust_klee_terminate_results.csv")
    process_data(rust_file_directory, rust_output_directory)

def process_data(file_directory, output_directory):
    result = []
    for item in os.listdir(file_directory):
        function_name = item.split(klee_original_log)[0]
        reach_max, error_counts, terminate_error, time_out, end_states_count = str(False), "0", str(False), str(False), ""
        sub_path = os.path.join(file_directory, item)
        if klee_original_log in sub_path:
            if contains_string(sub_path, reach_max_case):
                reach_max = str(True)
            if contains_string(sub_path, terminate_by_errors):
                terminate_error = str(True)
            if contains_string(sub_path, reach_time_out):
                time_out = str(True)

            error_counts = count_error_times(sub_path, dump_by_errors)
            end_states_count = fetch_end_states(sub_path)

            result.append((function_name,
                           str(end_states_count),
                           reach_max,
                           str(error_counts),
                           terminate_error,
                           time_out))

    with open(output_directory, 'w', newline='', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["function_name",
                         "end_states_count",
                         "reach_max_cases",
                         "dump_error_counts",
                         "terminate_error",
                         "time_out"])
        writer.writerows(result)