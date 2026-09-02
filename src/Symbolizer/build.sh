#!/bin/bash

rm -rf build
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_CXX_STANDARD=17 -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ ../ ;
make ;
