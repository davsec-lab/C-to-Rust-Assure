import os
import subprocess
import shutil
import sys
from glob import glob
from concurrent.futures import ThreadPoolExecutor

FILE_SIZE_THRESHOLD = 5 * 1024 * 1024

def transitive_reduce(dot_file: str, reduced_dot_file: str):
    with open(reduced_dot_file, 'w') as out_f:
        subprocess.run(["tred", dot_file], stdout=out_f, check=True)
    print(f"[TRED] {dot_file} -> {reduced_dot_file}")

def convert_to_png(input_dot: str, output_png: str):
    subprocess.run(["dot", "-Tpng", input_dot, "-o", output_png], check=True)
    print(f"[CONVERT] {input_dot} -> {output_png}")

def process_dot_file(dot_file: str):
    if not os.path.isfile(dot_file):
        return

    file_size = os.path.getsize(dot_file)
    base_name = os.path.splitext(os.path.basename(dot_file))[0]
    dir_name = os.path.dirname(dot_file)
    png_file = os.path.join(dir_name, f"{base_name}.png")


    if file_size < FILE_SIZE_THRESHOLD:
        convert_to_png(dot_file, png_file)

def main():
    directory_name = sys.argv[1]
    if directory_name == 'C':
        dot_files = glob("graph_output/C/**/**/*.dot", recursive=True)
    else:
        dot_files = glob("graph_output/Rust/**/**/*.dot", recursive=True)

    if not dot_files:
        print("No .dot files found in graph_output.")
        return
    with ThreadPoolExecutor(max_workers=4) as executor:
        for dot_file in dot_files:
            executor.submit(process_dot_file, dot_file)

if __name__ == "__main__":
    main()
