#!/bin/bash

# Declare an array of string with type
#declare -a AppNames=("nginx" "postgres" "memcached" "wget" "tar" "smtpd" "lighttpd" "httpd" "redis" "curl")
#declare -a AppNames=("postgres")
## Iterate the string array using for loop
#for val in ${AppNames[@]}; do
#   ./Debug-build/bin/rustifier -libc-func-file /tmp/libc.exported ~/rust/bitcodes/$val.bc -enable-cve -cve-map-file ~/cve-analyzer-v2/cves.out/$val.cve2func.csv -enable-debugging -print-easy-funcs > outputs/$val.out;
#done

# run for libraries specified in file
input=$1
while read line; do
# reading each line
    val=$(echo $line|tr '\n' ' ')
    filename=$(basename $val | sed 's/\.so\..*\.preopt\.bc/\.so/g')
    echo $filename
    echo "running Rustifer for $val"
    set -x
#   ./Debug-build/bin/rustifier -libc-func-file /tmp/libc.exported $val -enable-cve -enable-debugging -print-easy-funcs > outputs/$filename.out;
   ./Debug-build/bin/rustifier $val -enable-debugging -rustify-enable-pta -enable-api-based -export-func-list /home/hamed/rust/rustify/src/python/outputs/$filename-exports.out > logs/$filename.log;
    cat logs/$filename.log | grep '^Total Func' | sed "s/^Total/$filename: Total/g" >> logs/funcs.out
    set +x
done < $input
