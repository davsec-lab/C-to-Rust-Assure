#!/bin/bash

mkdir -p ./testcase/C ./testcase/Rust

directory="${1:-./testcase/before_divide_testcases}"

find "$directory" -type f | while IFS= read -r file; do
    case "$file" in
        *.i) mv "$file" ./testcase/C/ ;;
        *.rs) mv "$file" ./testcase/Rust/ ;;
    esac
done
