//
// Created by lizhi on 3/24/22.
//

#include <stdio.h>
#include <cuda.h>
#include <malloc.h>
#include <cstdlib>
#include <time.h>
#include <iostream>
#include <sys/types.h>
#include <errno.h>
#include <vector>
#include <fstream>
#include <string>
using namespace std;
extern "C" __global__ void default_function_kernel0(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[4];
    __shared__ float pad_temp_shared[168];
    __shared__ float kernel_shared[6];
    float pad_temp_shared_local[6];
    float kernel_shared_local[6];
    compute_local[(0)] = 0.000000e+00f;
    compute_local[(2)] = 0.000000e+00f;
    compute_local[(1)] = 0.000000e+00f;
    compute_local[(3)] = 0.000000e+00f;
    for (int rc_outer = 0; rc_outer < 64; ++rc_outer) {
        __syncthreads();
        pad_temp_shared[(((((int)threadIdx.y) * 6) + (((int)threadIdx.x) * 3)))] = (((1 <= ((int)threadIdx.y)) && (1 <= ((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 3)))) ? data[((((((rc_outer * 784) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + (((int)threadIdx.x) * 3)) - 29))] : 0.000000e+00f);
        pad_temp_shared[((((((int)threadIdx.y) * 6) + (((int)threadIdx.x) * 3)) + 1))] = ((1 <= ((int)threadIdx.y)) ? data[((((((rc_outer * 784) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + (((int)threadIdx.x) * 3)) - 28))] : 0.000000e+00f);
        pad_temp_shared[((((((int)threadIdx.y) * 6) + (((int)threadIdx.x) * 3)) + 2))] = (((1 <= ((int)threadIdx.y)) && (((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 3)) < 27)) ? data[((((((rc_outer * 784) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + (((int)threadIdx.x) * 3)) - 27))] : 0.000000e+00f);
        if ((((int)threadIdx.x) + ((int)threadIdx.y)) < 6) {
            if (((int)threadIdx.x) < 1) {
                kernel_shared[((((int)threadIdx.x) + ((int)threadIdx.y)))] = kernel[(((((((int)blockIdx.z) * 1152) + (((((int)threadIdx.x) + ((int)threadIdx.y)) / 3) * 576)) + (rc_outer * 9)) + ((((int)threadIdx.x) + ((int)threadIdx.y)) % 3)))];
            }
        }
        __syncthreads();
        pad_temp_shared_local[(0)] = pad_temp_shared[(((((int)threadIdx.y) * 6) + ((int)threadIdx.x)))];
        pad_temp_shared_local[(3)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 2))];
        pad_temp_shared_local[(1)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 1))];
        pad_temp_shared_local[(4)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 3))];
        pad_temp_shared_local[(2)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 2))];
        pad_temp_shared_local[(5)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 4))];
        kernel_shared_local[(0)] = kernel_shared[(0)];
        kernel_shared_local[(3)] = kernel_shared[(3)];
        kernel_shared_local[(1)] = kernel_shared[(1)];
        kernel_shared_local[(4)] = kernel_shared[(4)];
        kernel_shared_local[(2)] = kernel_shared[(2)];
        kernel_shared_local[(5)] = kernel_shared[(5)];
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(3)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(0)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(3)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(4)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(1)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(4)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(5)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(2)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(5)]));
        __syncthreads();
        pad_temp_shared[(((((int)threadIdx.y) * 6) + (((int)threadIdx.x) * 3)))] = ((1 <= ((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 3))) ? data[((((((rc_outer * 784) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + (((int)threadIdx.x) * 3)) - 1))] : 0.000000e+00f);
        pad_temp_shared[((((((int)threadIdx.y) * 6) + (((int)threadIdx.x) * 3)) + 1))] = data[(((((rc_outer * 784) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + (((int)threadIdx.x) * 3)))];
        pad_temp_shared[((((((int)threadIdx.y) * 6) + (((int)threadIdx.x) * 3)) + 2))] = ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 3)) < 27) ? data[((((((rc_outer * 784) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + (((int)threadIdx.x) * 3)) + 1))] : 0.000000e+00f);
        if ((((int)threadIdx.x) + ((int)threadIdx.y)) < 6) {
            if (((int)threadIdx.x) < 1) {
                kernel_shared[((((int)threadIdx.x) + ((int)threadIdx.y)))] = kernel[((((((((int)blockIdx.z) * 1152) + (((((int)threadIdx.x) + ((int)threadIdx.y)) / 3) * 576)) + (rc_outer * 9)) + ((((int)threadIdx.x) + ((int)threadIdx.y)) % 3)) + 3))];
            }
        }
        __syncthreads();
        pad_temp_shared_local[(0)] = pad_temp_shared[(((((int)threadIdx.y) * 6) + ((int)threadIdx.x)))];
        pad_temp_shared_local[(3)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 2))];
        pad_temp_shared_local[(1)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 1))];
        pad_temp_shared_local[(4)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 3))];
        pad_temp_shared_local[(2)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 2))];
        pad_temp_shared_local[(5)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 4))];
        kernel_shared_local[(0)] = kernel_shared[(0)];
        kernel_shared_local[(3)] = kernel_shared[(3)];
        kernel_shared_local[(1)] = kernel_shared[(1)];
        kernel_shared_local[(4)] = kernel_shared[(4)];
        kernel_shared_local[(2)] = kernel_shared[(2)];
        kernel_shared_local[(5)] = kernel_shared[(5)];
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(3)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(0)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(3)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(4)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(1)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(4)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(5)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(2)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(5)]));
        __syncthreads();
        pad_temp_shared[(((((int)threadIdx.y) * 6) + (((int)threadIdx.x) * 3)))] = (((((int)threadIdx.y) < 27) && (1 <= ((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 3)))) ? data[((((((rc_outer * 784) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + (((int)threadIdx.x) * 3)) + 27))] : 0.000000e+00f);
        pad_temp_shared[((((((int)threadIdx.y) * 6) + (((int)threadIdx.x) * 3)) + 1))] = ((((int)threadIdx.y) < 27) ? data[((((((rc_outer * 784) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + (((int)threadIdx.x) * 3)) + 28))] : 0.000000e+00f);
        pad_temp_shared[((((((int)threadIdx.y) * 6) + (((int)threadIdx.x) * 3)) + 2))] = (((((int)threadIdx.y) < 27) && (((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 3)) < 27)) ? data[((((((rc_outer * 784) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + (((int)threadIdx.x) * 3)) + 29))] : 0.000000e+00f);
        if ((((int)threadIdx.x) + ((int)threadIdx.y)) < 6) {
            if (((int)threadIdx.x) < 1) {
                kernel_shared[((((int)threadIdx.x) + ((int)threadIdx.y)))] = kernel[((((((((int)blockIdx.z) * 1152) + (((((int)threadIdx.x) + ((int)threadIdx.y)) / 3) * 576)) + (rc_outer * 9)) + ((((int)threadIdx.x) + ((int)threadIdx.y)) % 3)) + 6))];
            }
        }
        __syncthreads();
        pad_temp_shared_local[(0)] = pad_temp_shared[(((((int)threadIdx.y) * 6) + ((int)threadIdx.x)))];
        pad_temp_shared_local[(3)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 2))];
        pad_temp_shared_local[(1)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 1))];
        pad_temp_shared_local[(4)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 3))];
        pad_temp_shared_local[(2)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 2))];
        pad_temp_shared_local[(5)] = pad_temp_shared[((((((int)threadIdx.y) * 6) + ((int)threadIdx.x)) + 4))];
        kernel_shared_local[(0)] = kernel_shared[(0)];
        kernel_shared_local[(3)] = kernel_shared[(3)];
        kernel_shared_local[(1)] = kernel_shared[(1)];
        kernel_shared_local[(4)] = kernel_shared[(4)];
        kernel_shared_local[(2)] = kernel_shared[(2)];
        kernel_shared_local[(5)] = kernel_shared[(5)];
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(3)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(0)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(3)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(4)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(1)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(4)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(5)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(2)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(5)]));
    }
    compute[(((((((int)blockIdx.z) * 1568) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)))] = compute_local[(0)];
    compute[((((((((int)blockIdx.z) * 1568) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 784))] = compute_local[(2)];
    compute[((((((((int)blockIdx.z) * 1568) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 2))] = compute_local[(1)];
    compute[((((((((int)blockIdx.z) * 1568) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 786))] = compute_local[(3)];
}


//grid=(7,1,16),  block=(2,28,1)
int main(int argc, char *argv[]){
    dim3 grid(7,1,16);
    dim3 block(2,28,1);
    int C = atoi(argv[1]);
    int H = atoi(argv[2]);
    int W = atoi(argv[3]);
    int N = atoi(argv[4]);
    int data_size = C*H*W;

    float *input;
    cudaMalloc(&input,data_size*sizeof(float));
    float *weight;
    cudaMalloc(&weight,N*C*9*sizeof(float));
    float *output;
    cudaMalloc(&output,N*H*W*sizeof(float));

    cudaDeviceSynchronize();
    float inference_time = 0.0f;
    cudaEvent_t event_start;
    cudaEvent_t event_stop;
    cudaEventCreate(&event_start);
    cudaEventCreate(&event_stop);
    for(int i=0;i<1024;++i){
        cudaEventRecord(event_start);
        default_function_kernel0<<<grid,block>>>(input,weight,output);
        cudaEventRecord(event_stop);
        cudaEventSynchronize(event_stop);
        float temp_time;
        cudaEventElapsedTime(&temp_time, event_start, event_stop);
        inference_time += temp_time;
    }
    cout<<C<<","<<N<<","<<H<<","<<W<<","<<inference_time/1024<<endl;
    return 0;
}