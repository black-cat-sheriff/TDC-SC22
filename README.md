# TDC-SC22
# TDC build instructions
## How to build end2end evaluation code for densenet(121, 201), resnet(18, 50) and vgg16
    bash build_end2end_eval.sh
## How to run end2end evaluation
### cudnn non-compress c++ implementation(example for densenet121 on 2080Ti)
    cd end2end/2080Ti/densenet121-original/build
    ./test
### cudnn tucker-compress c++ implementation(example for densenet121 on 2080Ti)
    cd end2end/2080Ti/densenet121-tk/build
    ./test
### output example
Output:model name, inference time(ms)

![eval1](https://github.com/black-cat-sheriff/TDC-SC22/blob/master/images/model-performance.png)
    
## How to build layers evaluation for core tucker convolution layers(example for 2080Ti)
    cd core_convs_eval
    cd 2080Ti
    mkdir build
    cd build
    cmake ..
    make -j
## How to run layers evaluation for core tucker convolution layers
    bash run_core_layers_eval_2080Ti.sh
Output line: Input channels, Output channles, Height, Width, latency(cuDNN), latency(TDC)
Latency time unit is ms.
![eval1](https://github.com/black-cat-sheriff/TDC-SC22/blob/master/images/layers_eval.png)
# How to run TDC experiments
## Test Tucker-format model accuracy
    cd inference
    bash scratch.sh
    python main.py --model [MODEL_NAME] --data-path [IMAGENET_PATH]
`MODEL_NAME` is one of `tkc_resnet18/tkc_resnet50/tkc_vgg16/tkc_densenet121/tkc_densenet201`, and `IMAGENET_PATH` is local folder path of ImageNet dataset.
![eval1](https://github.com/black-cat-sheriff/TDC-SC22/blob/master/images/model-eval.png)

# Benchmarking platform and Dataset 

## Machine 1: 
* GPU: Nvidia GTX 2080 Ti (68 SMs, 11 GB)
* OS:  Ubuntu 20.04 LTS
* CUDA: 10.1
* cuDNN: 8.0.4

## Machine 2: 
* GPU: Nvidia Ampere A100(108 SMs, 40GB)
* OS:   Ubuntu 20.04 LTS
* CUDA: 11.0.3
* cuDNN: 8.2.1

## Dataset:
* Imagenet - ILSVRC2012

# External Links
* TVM https://tvm.apache.org/
