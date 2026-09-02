#!/bin/bash

# Wrapper script for clang that also generates a preprocessed file

# Extract input files and output file
input_files=()  # 支持多个 .c 文件
output_file="a.out"

# Iterate over arguments to find inputs/outputs
args=()
while [[ $# -gt 0 ]]; do
    case $1 in
        -o)
            output_file="$2"
            args+=("$1" "$2")
            shift
            ;;
        *.c)
            input_files+=("$1")
            args+=("$1")
            ;;
        *)
            args+=("$1")
            ;;
    esac
    shift
done

# Compile normally
clang "${args[@]}"

# Process each input file separately
for file in "${input_files[@]}"; do
    preprocessed_file="${file%.c}.i"
    bitcode_file="${file%.c}.ll"

    echo "Generating preprocessed file: $preprocessed_file"
    clang -E -P "$file" -o "$preprocessed_file"

    echo "Generating LLVM bitcode: $bitcode_file"
    clang -c -emit-llvm -S "$file" -o "$bitcode_file"
done
