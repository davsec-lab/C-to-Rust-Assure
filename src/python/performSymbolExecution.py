import shutil
import subprocess
import os
from enum import Enum
import inspect
from datetime import datetime
import argparse
from processOutput import *

class Model(Enum):
    claude = 1
    gpt_4o = 2
    gpt_3_5 = 3
    gpt_4o_mini = 4


symbol_execution_directory = "../Symbolizer"

divide_script_path = "../scripts/divide_script.sh"
convert_klee_claude = "../scripts/convert_klee_claude.sh"
convert_klee = "../scripts/convert_klee.sh"
convert_klee_gpt3 = "../scripts/convert_klee_gpt3.sh"
convert_klee_4omini = "../scripts/convert_klee_4omini.sh"


def start_process(source_path, model : Model, create_map_by_llm = True):
    subprocess.run(["bash", divide_script_path], cwd=source_path, text=True)
    subprocess.run(["python3", "../../python/symbolicExecution.py", str(model.value), str(create_map_by_llm).lower()], cwd=source_path, text=True)
    # if model == Model.claude:
    #     subprocess.run(["bash", convert_klee_claude], cwd=source_path, text=True)
    # elif model == Model.gpt_4o:
    #     subprocess.run(["bash", convert_klee], cwd=source_path, text=True)
    # elif model == Model.gpt_3_5:
    #     subprocess.run(["bash", convert_klee_gpt3], cwd=source_path, text=True)
    # elif model == Model.gpt_4o_mini:
    #     subprocess.run(["bash", convert_klee_4omini], cwd=source_path, text=True)


def prepare_directory(source, target_directory):
    main_directory = os.path.join(symbol_execution_directory, target_directory)
    os.makedirs(main_directory, exist_ok=True)

    subdirectory_path = os.path.join(main_directory, "testcase")
    os.makedirs(subdirectory_path, exist_ok=True)
    shutil.copytree(source, os.path.join(subdirectory_path, "before_divide_testcases"))

    return main_directory

def perform_general_execution(input_directory, create_map_by_llm = True):
    print("Executing general task")
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(input_directory, directory_name)
    start_process(subdirectory_path, Model.gpt_4o, create_map_by_llm)
    return subdirectory_path

def libcsv_gpt_4o():
    print("Executing libcsv task with GPT-4o...")
    # original version
    source_dir = "inputs-complex/libcsv/archive/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete"
    # link version
    # source_dir = "inputs-complex/libcsv/archive/individual-funcs_gpt-4o_2025-07-02_14-41-02__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o)
    return subdirectory_path

def libopenaptx_RustAssure():
    # original version
    source_dir = "inputs-complex/libopenaptx/gpt4o"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o)
    return subdirectory_path

def libopenaptx_FLUORINE():
    # original version
    source_dir = "inputs-complex/libopenaptx/flourine"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o)
    return subdirectory_path

def libcsv_gpt_3_5_turbo():
    print("Executing libcsv task with GPT-3.5-turbo...")
    source_dir = "inputs-complex/libcsv/archive/individual-funcs_gpt-3.5-turbo_2025-05-07_11-46-54__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_3_5)
    return subdirectory_path


def libcsv_gpt_4o_mini():
    print("Executing libcsv task with GPT-4o-mini...")
    source_dir = "inputs-complex/libcsv/archive/individual-funcs_gpt-4o-mini_2025-05-07_12-01-21__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o_mini)
    return subdirectory_path


def libcsv_claude_3_5_sonnet():
    print("Executing libcsv task with Claude 3.5 Sonnet...")
    source_dir = "inputs-complex/libcsv/archive/individual-funcs_claude-3-5-sonnet-20240620_2025-05-07_20-04-34__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.claude)
    return subdirectory_path


def libbmp_gpt_4o():
    print("Executing libbmp task with GPT-4o...")
    source_dir = "inputs-complex/libbmp/src/archive/individual-funcs_gpt-4o_2025-04-09_00-45-00__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o)
    return subdirectory_path


def libbmp_gpt_3_5_turbo():
    print("Executing libbmp task with GPT-3.5-turbo...")
    source_dir = "inputs-complex/libbmp/src/archive/individual-funcs_gpt-3.5-turbo_2025-05-07_11-56-06__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_3_5)
    return subdirectory_path


def libbmp_gpt_4o_mini():
    print("Executing libbmp task with GPT-4o-mini...")
    source_dir = "inputs-complex/libbmp/src/archive/individual-funcs_gpt-4o-mini_2025-05-07_12-01-09__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o_mini)
    return subdirectory_path


def libbmp_claude_3_5_sonnet():
    print("Executing libbmp task with Claude 3.5 Sonnet...")
    source_dir = "inputs-complex/libbmp/src/archive/individual-funcs_claude-3-5-sonnet-20240620_2025-05-07_23-13-55__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.claude)
    return subdirectory_path


def optipng_gpt_4o():
    print("Executing optipng task with GPT-4o...")
    source_dir = "inputs-complex/optipng/archive/individual-funcs_gpt-4o_2025-04-09_01-30-38__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o)
    return subdirectory_path


def optipng_gpt_3_5_turbo():
    print("Executing optipng task with GPT-3.5-turbo...")
    source_dir = "inputs-complex/optipng/archive/individual-funcs_gpt-3.5-turbo_2025-05-07_11-49-48__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_3_5)
    return subdirectory_path


def optipng_gpt_4o_mini():
    print("Executing optipng task with GPT-4o-mini...")
    source_dir = "inputs-complex/optipng/archive/individual-funcs_gpt-4o-mini_2025-05-07_12-01-00__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o_mini)
    return subdirectory_path


def optipng_claude_3_5_sonnet():
    print("Executing optipng task with Claude 3.5 Sonnet...")
    source_dir = "inputs-complex/optipng/archive/individual-funcs_claude-3-5-sonnet-20240620_2025-05-07_21-48-14__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.claude)
    return subdirectory_path


def url_parser_gpt_4o():
    print("Executing url_parser task with GPT-4o...")
    source_dir = "inputs-complex/url_parser.h/archive/individual-funcs_gpt-4o_2025-04-09_00-41-44__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o)
    return subdirectory_path


def url_parser_gpt_3_5_turbo():
    print("Executing url_parser task with GPT-3.5-turbo...")
    source_dir = "inputs-complex/url_parser.h/archive/individual-funcs_gpt-3.5-turbo_2025-05-07_11-55-19__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_3_5)
    return subdirectory_path


def url_parser_gpt_4o_mini():
    print("Executing url_parser task with GPT-4o-mini...")
    source_dir = "inputs-complex/url_parser.h/archive/individual-funcs_gpt-4o-mini_2025-05-07_12-01-04__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o_mini)
    return subdirectory_path


def url_parser_claude_3_5_sonnet():
    print("Executing url_parser task with Claude 3.5 Sonnet...")
    source_dir = "inputs-complex/url_parser.h/archive/individual-funcs_claude-3-5-sonnet-20240620_2025-05-07_22-45-21__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.claude)
    return subdirectory_path


def u8c_gpt_4o():
    print("Executing u8c task with GPT-4o...")
    source_dir = "inputs-complex/u8c/test/archive/individual-funcs_gpt-4o_2025-04-09_00-47-30__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o)
    return subdirectory_path


def u8c_gpt_3_5_turbo():
    print("Executing u8c task with GPT-3.5-turbo...")
    source_dir = "inputs-complex/u8c/test/archive/individual-funcs_gpt-3.5-turbo_2025-05-07_11-56-36__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_3_5)
    return subdirectory_path


def u8c_gpt_4o_mini():
    print("Executing u8c task with GPT-4o-mini...")
    source_dir = "inputs-complex/u8c/test/archive/individual-funcs_gpt-4o-mini_2025-05-07_12-01-13__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.gpt_4o_mini)
    return subdirectory_path


def u8c_claude_3_5_sonnet():
    print("Executing u8c task with Claude 3.5 Sonnet...")
    source_dir = "inputs-complex/u8c/test/archive/individual-funcs_claude-3-5-sonnet-20240620_2025-05-07_23-07-03__complete"
    function_name = inspect.currentframe().f_code.co_name
    timestamp = datetime.now().strftime("%Y%m%d_%Y-%m-%d_%H-%M-%S")
    directory_name = f"{function_name}_{timestamp}"
    subdirectory_path = prepare_directory(source_dir, directory_name)
    start_process(subdirectory_path, Model.claude)
    return subdirectory_path


def select_option(options, prompt):
    """ Display options and let the user select one """
    print(prompt)
    for i, option in enumerate(options, 1):
        print(f"{i}. {option}")

    while True:
        try:
            choice = int(input("Enter option number: "))
            if 1 <= choice <= len(options):
                return options[choice - 1]
            else:
                print("Invalid input, please enter a valid number.")
        except ValueError:
            print("Invalid input, please enter a number.")


def execute_task(codebase, model):
    """ Generate function name and execute corresponding function """
    function_name = f"{codebase}_{model.replace('-', '_')}"

    if function_name in globals():
        directory = globals()[function_name]()  # Call the function dynamically
        process_output(directory, model, function_name)
    else:
        print(f"Function {function_name} not found.")


if __name__ == "__main__":
    # libbmp_gpt_4o()
    parser = argparse.ArgumentParser(
        description="custom your input directory")
    parser.add_argument("--src", type=str, default="",
                        help="The source directory that contains the original files")
    # ⚠ This used to be `type=bool, default=False`. argparse's type=bool is the
    #   classic trap: bool("false") == True — any non-empty string is truthy, so
    #   the switch could never be turned off.
    #   As of 2026-08-25 the argument map is **generated** by default (the preset
    #   tables have been deleted); only an explicit off switch remains, for
    #   debugging.
    parser.add_argument("--no-argument-order-map", dest="createArgumentOrderMap",
                        action="store_false", default=True,
                        help="disable LLM argument-map generation (for debugging; "
                             "when disabled an empty map is written and pairing "
                             "falls back to pure string matching)")

    args = parser.parse_args()
    args.src = os.path.expanduser(args.src)
    create_map_by_llm = args.createArgumentOrderMap

    if args.src:
        directory = perform_general_execution(args.src, create_map_by_llm)
        process_output(directory, "custom", "custom")
    else:
        codebases = ["libcsv", "libbmp", "optipng", "url_parser", "u8c", "libopenaptx"]
        models = ["gpt-4o", "gpt-3_5-turbo", "gpt-4o-mini", "claude-3-5-sonnet"]
        methods = ["RustAssure", "FLUORINE"]
        selected_codebase = select_option(codebases, "Select a Codebase:")
        if selected_codebase == "libopenaptx":
            selected_method = select_option(methods, "Select a Method:")
            execute_task(selected_codebase, selected_method)
        else:
            selected_model = select_option(models, "Select a GPT Model:")
            execute_task(selected_codebase, selected_model)
