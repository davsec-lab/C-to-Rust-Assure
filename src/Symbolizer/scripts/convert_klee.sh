#!/usr/bin/env bash

start_time=$(date +%s) 

# Exit immediately if a command exits with a non-zero status
set -e

if [ -e compare_graph_output_log.log ]; then
    rm compare_graph_output_log.log
fi

[ -f input.json ] && rm input.json

# todo @gab fix me!!
create_json() {
    jq -n '{
    "csv_set_quote" : {
        "0" : "CsvParser"
    },
    "csv_get_opts" : {
        "0" : "CsvParser"
    },
    "csv_fini" : {
        "0" : "CsvParser",
        "103" : "Integer_8"
    },
    "csv_set_space_func" : {
        "1" : "function",
        "2" : "function"
    },
    "csv_increase_buffer" : {
        "103" : "Integer_8"
    },
    "csv_init" : {
        "103" : "Integer_8"
    },
    "csv_free" : {
        "103" : "Integer_8"
    },
    "url_free" : {
        "0" : "UrlData"
    },
    "url_get_host": {
        "0": "alloc::string::String"
    },
    "url_get_path": {
        "0": "alloc::string::String"
    },
    "url_get_port": {
        "0": "alloc::string::String"
    },
    "url_get_protocol": {
        "0": "alloc::string::String"
    },
    "url_get_scheme": {
        "0": "alloc::string::String"
    },
    "opng_rangeset2bitset": {
        "1": "core::ffi::c_str::CStr"
    },
    "scan_option": {
        "0": "core::ffi::c_str::CStr"
    },
    "osys_path_chdir": {
        "2": "core::ffi::c_str::CStr",
        "1": "core::ffi::c_str::CStr"
    },
    "bmp_img_read": {
        "0": "BmpImg"
    },
    "bmp_img_write": {
        "0": "BmpImg"
    }

}' > input.json
}

MAX_JOBS=4

limit_jobs() {
  while [ "$(jobs -p | wc -l)" -ge "$MAX_JOBS" ]; do
    wait -n
  done
}


prepare_directory() {
    if [ -d "$1" ]; then
        rm -rf "$1"/*
    else
        mkdir -p "$1"
    fi
    mkdir -p "$1/C" "$1/Rust" 
    if [ -f "process_log.log" ]; then
        rm process_log.log
    fi
}

# Prepare directories
prepare_directory klee_bc
prepare_directory klee_ir_files
prepare_directory klee_symbol_log
prepare_directory klee_symbol_error_log
prepare_directory graph_output

export C_INCLUDE_PATH=../klee/include

manage_dot_files() {
  local dir="$1"
  local max_files=20

  if [ -z "$dir" ] || [ ! -d "$dir" ]; then
    echo "Error: Invalid or non-existent directory specified: $dir"
    return 1
  fi

  while IFS= read -r subdir; do
    limit_jobs
    {
      dot_files=($(find "$subdir" -maxdepth 1 -type f -name "*.dot"))
      if [ "${#dot_files[@]}" -gt "$max_files" ]; then
        sorted_files=($(printf "%s\n" "${dot_files[@]}" | sort))
        delete_count=$(( ${#sorted_files[@]} - max_files ))
        files_to_delete=("${sorted_files[@]:0:$delete_count}")

        for file in "${files_to_delete[@]}"; do
          echo "Deleting: $file"
          rm "$file"
        done
      fi
    } &
  done < <(find "$dir" -type d)

  wait
}

python3 ../../python/llvmBitcodeEmitter.py testcase/c

for c_file in testcase/c/*.bc; do
    limit_jobs
    (
        echo "start process $c_file"

        # Extract the base filename without extension
        base_name=$(basename "$c_file" .i.bc)
            
        if opt -load-pass-plugin ../build/Pass/SymbolizerPass.so -O0 "$c_file" -S -o "klee_ir_files/C/${base_name}_klee.ll" && \
        klee --libc=klee --max-time=600 --max-tests=50 "klee_ir_files/C/${base_name}_klee.ll" 2>&1 | tee "klee_symbol_log/C/${base_name}_original_log.txt" | awk '/SYM VALUE:/,/^[[:space:]]*$/' > "klee_symbol_log/C/${base_name}_klee_log.txt" && \
        cd graph_output/C && \
        python3 ../../../../python/kquery-parser/KqueryConverter.py "../../../klee_symbol_log/C/${base_name}_klee_log.txt" "${base_name}" "c"; then
            cd ../..
            echo "C/$c_file has been processed successfully"
        else
            cd ../..
            echo "Error processing C/$c_file" >&2
        fi
    ) &
done

wait

python3 ../scripts/deduplicate.py 'c'

python3 ../scripts/convertGraph.py 'c'

create_json

python3 ../../python/llvmBitcodeEmitter.py testcase/rust

for r_file in testcase/rust/*.bc; do
    limit_jobs
    (
        # Extract the base filename without extension
        base_name=$(basename "$r_file" .rs.bc)

        # Run optimization pass on the bitcode
        if opt -load-pass-plugin ../build/Pass/SymbolizerPass.so -O0 "$r_file" -S -o "klee_ir_files/Rust/${base_name}_klee.ll" && \
        opt -S -internalize -internalize-public-api-list=main -globaldce "klee_ir_files/Rust/${base_name}_klee.ll" -o "klee_ir_files/Rust/${base_name}_klee.ll" && \
        klee --libc=klee --max-time=800 --max-tests=500 "klee_ir_files/Rust/${base_name}_klee.ll" 2>&1 | tee "klee_symbol_log/Rust/${base_name}_original_log.txt" | awk '/SYM VALUE:/,/^[[:space:]]*$/' > "klee_symbol_log/Rust/${base_name}_klee_log.txt" && \
        cd graph_output/Rust && \
        python3 ../../../../python/kquery-parser/KqueryConverter.py "../../../klee_symbol_log/Rust/${base_name}_klee_log.txt" "${base_name}" "Rust"; then
            cd ../..
            echo "Rust/$r_file has been processed successfully"
        else
            cd ../..
            echo "Error processing Rust/$r_file" >&2 
        fi
    ) &
done

wait

python3 ../scripts/deduplicate.py 'rust'

python3 ../scripts/convertGraph.py 'rust'

python3 ../../python/distance.py

end_time=$(date +%s)   

elapsed_time=$((end_time - start_time)) 
elapsed_minutes=$((elapsed_time / 60))

echo "Script execution time: $elapsed_time seconds"

echo "${elapsed_minutes}m" > execution_time.txt

echo "Script execution time: ${elapsed_minutes}m"
