#!/bin/bash

# run for libraries specified in file
input=$1
while read line; do
# reading each line
    val=$(echo $line|tr '\n' ' ')
    filename=$(basename $val)
    echo "running Rustifer for $val"
#   ./Debug-build/bin/rustifier -libc-func-file /tmp/libc.exported $val -enable-cve -enable-debugging -print-easy-funcs > outputs/$filename.out;
   python3.7 extractExportedFuncs.py --inputpath $val --outputpath outputs/$filename-exports.out;
done < $input
