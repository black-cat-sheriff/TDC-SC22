#!/bin/sh
cudabinpath='/usr/local/cuda/bin'
cudalibpath='/usr/local/cuda/lib64'
export LD_LIBRARY_PATH=$cudalibpath:$LD_LIBRARY_PATH
export PATH=$cudabinpath:$PATH
rm -rf end2end/2080Ti/densenet121-original/build
rm -rf end2end/2080Ti/densenet121-tk/build
rm -rf end2end/2080Ti/densenet201-original/build
rm -rf end2end/2080Ti/densenet201-tk/build
rm -rf end2end/2080Ti/resnet18-original/build
rm -rf end2end/2080Ti/resnet18-tk/build
rm -rf end2end/2080Ti/vgg16-original/build
rm -rf end2end/2080Ti/vgg16-tk/build

rm -rf end2end/A100/densenet121-original/build
rm -rf end2end/A100/densenet121-tk/build
rm -rf end2end/A100/densenet201-original/build
rm -rf end2end/A100/densenet201-tk/build
rm -rf end2end/A100/resnet18-original/build
rm -rf end2end/A100/resnet18-tk/build
rm -rf end2end/A100/vgg16-original/build
rm -rf end2end/A100/vgg16-tk/build
cd end2end/2080Ti/densenet121-original
mkdir build
cd build
cmake ..
make -j
cd ../../densenet121-tk
mkdir build
cd build
cmake ..
make -j
cd ../../densenet201-original
mkdir build
cd build
cmake ..
make -j
cd ../../densenet201-tk
mkdir build
cd build
cmake ..
make -j
cd ../../resnet18-original
mkdir build
cd build
cmake ..
make -j
cd ../../resnet18-tk
mkdir build
cd build
cmake ..
make -j
cd ../../vgg16-original
mkdir build
cd build
cmake ..
make -j
cd ../../vgg16-tk
mkdir build
cd build
cmake ..
make -j

cd ../../../A100/densenet121-original
mkdir build
cd build
cmake ..
make -j
cd ../../densenet121-tk
mkdir build
cd build
cmake ..
make -j
cd ../../densenet201-original
mkdir build
cd build
cmake ..
make -j
cd ../../densenet201-tk
mkdir build
cd build
cmake ..
make -j
cd ../../resnet18-original
mkdir build
cd build
cmake ..
make -j
cd ../../resnet18-tk
mkdir build
cd build
cmake ..
make -j
cd ../../vgg16-original
mkdir build
cd build
cmake ..
make -j
cd ../../vgg16-tk
mkdir build
cd build
cmake ..
make -j