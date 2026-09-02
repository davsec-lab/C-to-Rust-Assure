import subprocess
import sys


def start_symbolized(directory, file_name, fileType):
    target_command = []
    if fileType == "c":
        compile = ["clang", "-c", "-O0", "-emit-llvm", "-S", "-o", file_name, directory]
        link_core = ["llvm-link", file_name, "../scripts/libc_merged.ll", "-S", "-o", file_name]
        symbolized = ["opt", "-load-pass-plugin", "../build/Pass/SymbolizerPass.so", "-O0", file_name, "-S", "-o", file_name]
        remove_unuse_function = ["opt", "-S", "-internalize", "-internalize-public-api-list=main", "-globaldce", file_name, "-o", file_name]
        target_command = [compile, link_core, symbolized, remove_unuse_function]
    else:
        compile = ["rustc", "-A", "dead_code", "--emit=llvm-ir", "--crate-type=lib", "-o", file_name, directory]
        demangle = ["opt", "-load-pass-plugin", "../build/DemanglePass/DemanglePass.so", "-O0", file_name, "-S", "-o", file_name]
        link_core = ["llvm-link", file_name, "../scripts/core_demangle.ll", "-S", "-o", file_name]
        symbolized = ["opt", "-load", "../build/Pass/SymbolizerPass.so", "-load-pass-plugin", "../build/Pass/SymbolizerPass.so", "-O0", "-isRust=true", file_name, "-S", "-o", file_name]
        remove_unuse_function = ["opt", "-S", "-internalize", "-internalize-public-api-list=main", "-globaldce", file_name, "-o", file_name]
        target_command = [compile, demangle, link_core, symbolized, remove_unuse_function]

    for cmd in target_command:
        try:
            result = subprocess.run(cmd, check=True, capture_output=True, text=True)
            print(f"success: {' '.join(cmd)}")
        except subprocess.CalledProcessError as e:
            print(f"fail: {' '.join(cmd)}\nerror message:\n{e.stderr}")
            break

if __name__ == "__main__":
    start_symbolized(sys.argv[1], sys.argv[2], sys.argv[3])