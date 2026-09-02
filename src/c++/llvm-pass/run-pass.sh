#!/bin/bash

# run for bitcode specified by input
input=$1
simpleoutput=$2
complexoutput=$3
exportfuncpath=$4
logpath=$5

# create log path
mkdir -p $logpath;

filename=$(basename $input | sed 's/\.so\..*\.preopt\.bc/\.so/g')
echo $filename
echo "running Rustifer for $filename"
set -x
/home/hamed/rust/rustify/src/c++/llvm-pass/Debug-build/bin/rustifier $input \
        -enable-debugging -rustify-enable-pta -enable-api-based \
        -simple-apis $simpleoutput \
        -complex-apis $complexoutput \
        -export-func-list $exportfuncpath > $logpath/$filename.log;
cat $logpath/$filename.log | grep '^Total Func' | sed "s/^Total/$filename: Total/g" >> $logpath/funcs.out
set +x
