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
    float compute_local[14];
    __shared__ float pad_temp_shared[448];
    __shared__ float kernel_shared[768];
    float pad_temp_shared_local[56];
    float kernel_shared_local[16];
    for (int yy_c_init = 0; yy_c_init < 7; ++yy_c_init) {
        compute_local[(yy_c_init)] = 0.000000e+00f;
        compute_local[((yy_c_init + 7))] = 0.000000e+00f;
    }
    for (int rc_outer = 0; rc_outer < 12; ++rc_outer) {
        for (int ry_outer = 0; ry_outer < 3; ++ry_outer) {
            __syncthreads();
            for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 7; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
                pad_temp_shared[(((((((int)threadIdx.z) * 28) + (((int)threadIdx.y) * 14)) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= (((((int)blockIdx.y) * 14) + ry_outer) + (((((int)threadIdx.z) * 7) + ((((((int)threadIdx.y) * 14) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) >> 2)) % 14))) && ((((((int)blockIdx.y) * 14) + ry_outer) + (((((int)threadIdx.z) * 7) + ((((((int)threadIdx.y) * 14) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) >> 2)) % 14)) < 29)) && (1 <= ((((int)blockIdx.x) * 2) + ((((((int)threadIdx.y) * 14) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) & 3)))) && (((((int)blockIdx.x) * 2) + ((((((int)threadIdx.y) * 14) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) & 3)) < 29)) ? data[(((((((((rc_outer * 6272) + ((((((int)threadIdx.z) * 7) + ((((((int)threadIdx.y) * 14) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) >> 2)) / 14) * 784)) + (((int)blockIdx.y) * 392)) + (ry_outer * 28)) + ((((((int)threadIdx.z) * 7) + ((((((int)threadIdx.y) * 14) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) >> 2)) % 14) * 28)) + (((int)blockIdx.x) * 2)) + ((((((int)threadIdx.y) * 14) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) & 3)) - 29))] : 0.000000e+00f);
            }
            for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 12; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
                kernel_shared[(((((((int)threadIdx.z) * 48) + (((int)threadIdx.y) * 24)) + (((int)threadIdx.x) * 12)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[(((((((((((int)blockIdx.z) * 27648) + (((int)threadIdx.z) * 1728)) + (((int)threadIdx.y) * 864)) + (rc_outer * 72)) + (((int)threadIdx.x) * 36)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3) * 9)) + (ry_outer * 3)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 % 3)))];
            }
            __syncthreads();
            for (int rx_inner_outer = 0; rx_inner_outer < 3; ++rx_inner_outer) {
                for (int ax1 = 0; ax1 < 8; ++ax1) {
                    for (int ax2 = 0; ax2 < 7; ++ax2) {
                        pad_temp_shared_local[(((ax1 * 7) + ax2))] = pad_temp_shared[((((((ax1 * 56) + (((int)threadIdx.y) * 28)) + (ax2 * 4)) + ((int)threadIdx.x)) + rx_inner_outer))];
                    }
                }
                for (int ax11 = 0; ax11 < 8; ++ax11) {
                    kernel_shared_local[(ax11)] = kernel_shared[((((((int)threadIdx.z) * 24) + (ax11 * 3)) + rx_inner_outer))];
                    kernel_shared_local[((ax11 + 8))] = kernel_shared[(((((((int)threadIdx.z) * 24) + (ax11 * 3)) + rx_inner_outer) + 384))];
                }
                for (int rc_inner_inner = 0; rc_inner_inner < 8; ++rc_inner_inner) {
                    for (int yy_c = 0; yy_c < 7; ++yy_c) {
                        compute_local[(yy_c)] = (compute_local[(yy_c)] + (pad_temp_shared_local[(((rc_inner_inner * 7) + yy_c))] * kernel_shared_local[(rc_inner_inner)]));
                        compute_local[((yy_c + 7))] = (compute_local[((yy_c + 7))] + (pad_temp_shared_local[(((rc_inner_inner * 7) + yy_c))] * kernel_shared_local[((rc_inner_inner + 8))]));
                    }
                }
            }
        }
    }
    for (int yy_inner_inner_inner = 0; yy_inner_inner_inner < 7; ++yy_inner_inner_inner) {
        compute[((((((((((int)blockIdx.z) * 25088) + (((int)threadIdx.z) * 784)) + (((int)blockIdx.y) * 392)) + (((int)threadIdx.y) * 196)) + (yy_inner_inner_inner * 28)) + (((int)blockIdx.x) * 2)) + ((int)threadIdx.x)))] = compute_local[(yy_inner_inner_inner)];
        compute[(((((((((((int)blockIdx.z) * 25088) + (((int)threadIdx.z) * 784)) + (((int)blockIdx.y) * 392)) + (((int)threadIdx.y) * 196)) + (yy_inner_inner_inner * 28)) + (((int)blockIdx.x) * 2)) + ((int)threadIdx.x)) + 12544))] = compute_local[((yy_inner_inner_inner + 7))];
    }
}


//grid=(14,2,2),  block=(2,2,16)
int main(int argc, char *argv[]){
    dim3 grid(14,2,2);
    dim3 block(2,2,16);
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