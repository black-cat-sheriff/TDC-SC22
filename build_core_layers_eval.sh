#!/bin/sh
cudabinpath='/usr/local/cuda/bin'
cudalibpath='/usr/local/cuda/lib64'
export LD_LIBRARY_PATH=$cudalibpath:$LD_LIBRARY_PATH
export PATH=$cudabinpath:$PATH
rm -rf core_convs_eval/2080Ti/build
rm -rf core_convs_eval/A100/build
cd core_convs_eval/2080Ti/
mkdir build
cd build
cmake ..
make -j
make clean
make -j
cd ../../A100
mkdir build
cd build
cmake ..
make -j
make clean
make -j