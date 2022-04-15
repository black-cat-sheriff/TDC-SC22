# TDC-SC22
# TDC build instructions
## How to build end2end evaluation code for densenet(121, 201), resnet(18, 50) and vgg16
    bash build_end2end_eval.sh
## How to build layers evaluation for core tucker convolution layers(example for 2080Ti)
    cd core_convs_eval
    cd 2080Ti
    mkdir build
    cd build
    cmake ..
    make -j
## How to run layers evaluation for core tucker convolution layers
    bash run_core_layers_eval_2080Ti.sh
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
* CUDA: 11.0
* cuDNN: 9.0.2

## Machine 2: 
* GPU: Nvidia Volta V100(84 SMs, 32GB)
* OS:   Ubuntu 18.04.4 LTS
* CUDA: 10.2
* cuDNN: 7.6.5

## Dataset:
* Imagenet - ILSVRC2012

# External Links
* TVM https://tvm.apache.org/
