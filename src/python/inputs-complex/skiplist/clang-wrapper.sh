#!/bin/bash

# Wrapper script for clang that also generates a preprocessed file

# Extract the input file from the arguments
input_file=""
output_file="a.out"
preprocessed_file=""

# Iterate over the arguments to find the input and output files
args=()
preprocess_args=()

while [[ $# -gt 0 ]]; do
    case $1 in
        -o)
            output_file="$2"
            args+=("$1" "$2")
            shift # past argument
            ;;
        *.c)
            input_file="$1"
            args+=("$1")
            ;;
        *)
            args+=("$1")
            ;;
    esac
    shift # past argument or value
done

# Generate a default name for the preprocessed file if not set
if [ -z "$preprocessed_file" ]; then
    preprocessed_file="${input_file%.c}.i"
fi

# Generate the name for the bitcode file
bitcode_file="${input_file%.c}.ll"

# Remove any -o option from preprocess_args
for arg in "${args[@]}"; do
    if [[ "$arg" != "-o" && "$arg" != "$output_file" ]]; then
        preprocess_args+=("$arg")
    fi
done

# Call clang with the original arguments
clang "${args[@]}"

# Also generate the preprocessed file without the -o option
clang -E -P "${preprocess_args[@]}" -o "$preprocessed_file"

# Also generate the bitcode file without the -o option
clang -c -emit-llvm -S "${preprocess_args[@]}" -o "$bitcode_file"


# echo "Preprocessed file saved as $preprocessed_file"

