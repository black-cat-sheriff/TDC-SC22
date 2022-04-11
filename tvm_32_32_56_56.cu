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
    float compute_local[2];
    __shared__ float pad_temp_shared[384];
    __shared__ float kernel_shared[4608];
    float pad_temp_shared_local[8];
    float kernel_shared_local[4];
    compute_local[(0)] = 0.000000e+00f;
    compute_local[(1)] = 0.000000e+00f;
    for (int rc_outer = 0; rc_outer < 2; ++rc_outer) {
        __syncthreads();
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
            pad_temp_shared[(((((((int)threadIdx.z) * 12) + (((int)threadIdx.y) * 6)) + (((int)threadIdx.x) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= ((((int)blockIdx.y) * 2) + (((((int)threadIdx.z) * 2) + ((int)threadIdx.y)) & 3))) && (((((int)blockIdx.y) * 2) + (((((int)threadIdx.z) * 2) + ((int)threadIdx.y)) & 3)) < 57)) && (1 <= (((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))) && ((((((int)blockIdx.x) * 4) + (((int)threadIdx.x) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 57)) ? data[(((((((((rc_outer * 50176) + ((((((int)threadIdx.z) * 2) + ((int)threadIdx.y)) >> 2) * 3136)) + (((int)blockIdx.y) * 112)) + ((((((int)threadIdx.z) * 2) + ((int)threadIdx.y)) & 3) * 56)) + (((int)blockIdx.x) * 4)) + (((int)threadIdx.x) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) - 57))] : 0.000000e+00f);
        }
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 36; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
            kernel_shared[(((((((int)threadIdx.z) * 144) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 36)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[((((((((int)threadIdx.z) * 288) + (rc_outer * 144)) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 36)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))];
        }
        __syncthreads();
        for (int rc_inner_outer = 0; rc_inner_outer < 4; ++rc_inner_outer) {
            for (int ry_inner_outer = 0; ry_inner_outer < 3; ++ry_inner_outer) {
                for (int rx_inner_outer = 0; rx_inner_outer < 3; ++rx_inner_outer) {
                    for (int ax1 = 0; ax1 < 4; ++ax1) {
                        pad_temp_shared_local[(ax1)] = pad_temp_shared[(((((((rc_inner_outer * 96) + (ax1 * 24)) + (((int)threadIdx.y) * 6)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + rx_inner_outer))];
                        pad_temp_shared_local[((ax1 + 4))] = pad_temp_shared[((((((((rc_inner_outer * 96) + (ax1 * 24)) + (((int)threadIdx.y) * 6)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + rx_inner_outer) + 2))];
                    }
                    for (int ax11 = 0; ax11 < 4; ++ax11) {
                        kernel_shared_local[(ax11)] = kernel_shared[((((((((int)threadIdx.z) * 144) + (rc_inner_outer * 36)) + (ax11 * 9)) + (ry_inner_outer * 3)) + rx_inner_outer))];
                    }
                    for (int rc_inner_inner = 0; rc_inner_inner < 4; ++rc_inner_inner) {
                        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(rc_inner_inner)] * kernel_shared_local[(rc_inner_inner)]));
                        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[((rc_inner_inner + 4))] * kernel_shared_local[(rc_inner_inner)]));
                    }
                }
            }
        }
    }
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 112)) + (((int)threadIdx.y) * 56)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)))] = compute_local[(0)];
    compute[(((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 112)) + (((int)threadIdx.y) * 56)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 2))] = compute_local[(1)];
}

int main(int argc, char *argv[]){
    dim3 grid(14,28,1);
    dim3 block(2,2,32);

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