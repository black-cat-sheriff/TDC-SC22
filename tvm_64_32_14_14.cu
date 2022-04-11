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
    float compute_local[7];
    __shared__ float pad_temp_shared[1152];
    __shared__ float kernel_shared[1152];
    float pad_temp_shared_local[672];
    float kernel_shared_local[96];
    compute_local[(0)] = 0.000000e+00f;
    compute_local[(1)] = 0.000000e+00f;
    compute_local[(2)] = 0.000000e+00f;
    compute_local[(3)] = 0.000000e+00f;
    compute_local[(4)] = 0.000000e+00f;
    compute_local[(5)] = 0.000000e+00f;
    compute_local[(6)] = 0.000000e+00f;
    for (int rc_outer = 0; rc_outer < 2; ++rc_outer) {
        __syncthreads();
#pragma unroll
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 144; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
            pad_temp_shared[((((((int)threadIdx.z) * 288) + (((int)threadIdx.x) * 144)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= ((((int)blockIdx.y) * 7) + ((ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner % 36) >> 2))) && (((((int)blockIdx.y) * 7) + ((ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner % 36) >> 2)) < 15)) && (1 <= ((((int)blockIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner & 3)))) && (((((int)blockIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner & 3)) < 15)) ? data[((((((((((rc_outer * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.x) * 784)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner / 36) * 196)) + (((int)blockIdx.y) * 98)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner % 36) >> 2) * 14)) + (((int)blockIdx.x) * 2)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner & 3)) - 15))] : 0.000000e+00f);
        }
#pragma unroll
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 144; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
            kernel_shared[((((((int)threadIdx.z) * 288) + (((int)threadIdx.x) * 144)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (rc_outer * 288)) + (((int)threadIdx.x) * 144)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))];
        }
        __syncthreads();
        for (int rx_inner_outer = 0; rx_inner_outer < 3; ++rx_inner_outer) {
#pragma unroll
            for (int ax1 = 0; ax1 < 32; ++ax1) {
#pragma unroll
                for (int ax2 = 0; ax2 < 3; ++ax2) {
                    pad_temp_shared_local[(((ax1 * 3) + ax2))] = pad_temp_shared[(((((ax1 * 36) + (ax2 * 4)) + ((int)threadIdx.x)) + rx_inner_outer))];
                    pad_temp_shared_local[((((ax1 * 3) + ax2) + 96))] = pad_temp_shared[((((((ax1 * 36) + (ax2 * 4)) + ((int)threadIdx.x)) + rx_inner_outer) + 4))];
                    pad_temp_shared_local[((((ax1 * 3) + ax2) + 192))] = pad_temp_shared[((((((ax1 * 36) + (ax2 * 4)) + ((int)threadIdx.x)) + rx_inner_outer) + 8))];
                    pad_temp_shared_local[((((ax1 * 3) + ax2) + 288))] = pad_temp_shared[((((((ax1 * 36) + (ax2 * 4)) + ((int)threadIdx.x)) + rx_inner_outer) + 12))];
                    pad_temp_shared_local[((((ax1 * 3) + ax2) + 384))] = pad_temp_shared[((((((ax1 * 36) + (ax2 * 4)) + ((int)threadIdx.x)) + rx_inner_outer) + 16))];
                    pad_temp_shared_local[((((ax1 * 3) + ax2) + 480))] = pad_temp_shared[((((((ax1 * 36) + (ax2 * 4)) + ((int)threadIdx.x)) + rx_inner_outer) + 20))];
                    pad_temp_shared_local[((((ax1 * 3) + ax2) + 576))] = pad_temp_shared[((((((ax1 * 36) + (ax2 * 4)) + ((int)threadIdx.x)) + rx_inner_outer) + 24))];
                }
            }
#pragma unroll
            for (int ax11 = 0; ax11 < 32; ++ax11) {
#pragma unroll
                for (int ax21 = 0; ax21 < 3; ++ax21) {
                    kernel_shared_local[(((ax11 * 3) + ax21))] = kernel_shared[(((((((int)threadIdx.z) * 288) + (ax11 * 9)) + (ax21 * 3)) + rx_inner_outer))];
                }
            }
#pragma unroll
            for (int rc_inner_inner = 0; rc_inner_inner < 32; ++rc_inner_inner) {
#pragma unroll
                for (int ry_inner_inner = 0; ry_inner_inner < 3; ++ry_inner_inner) {
                    compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                    compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 96))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                    compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 192))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                    compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 288))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                    compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 384))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                    compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 480))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                    compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 576))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                }
            }
        }
    }
    compute[((((((((int)blockIdx.z) * 784) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 98)) + (((int)blockIdx.x) * 2)) + ((int)threadIdx.x)))] = compute_local[(0)];
    compute[(((((((((int)blockIdx.z) * 784) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 98)) + (((int)blockIdx.x) * 2)) + ((int)threadIdx.x)) + 14))] = compute_local[(1)];
    compute[(((((((((int)blockIdx.z) * 784) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 98)) + (((int)blockIdx.x) * 2)) + ((int)threadIdx.x)) + 28))] = compute_local[(2)];
    compute[(((((((((int)blockIdx.z) * 784) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 98)) + (((int)blockIdx.x) * 2)) + ((int)threadIdx.x)) + 42))] = compute_local[(3)];
    compute[(((((((((int)blockIdx.z) * 784) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 98)) + (((int)blockIdx.x) * 2)) + ((int)threadIdx.x)) + 56))] = compute_local[(4)];
    compute[(((((((((int)blockIdx.z) * 784) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 98)) + (((int)blockIdx.x) * 2)) + ((int)threadIdx.x)) + 70))] = compute_local[(5)];
    compute[(((((((((int)blockIdx.z) * 784) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 98)) + (((int)blockIdx.x) * 2)) + ((int)threadIdx.x)) + 84))] = compute_local[(6)];
}


//grid=(7,2,8),  block=(2,1,4)
int main(int argc, char *argv[]){
    dim3 grid(7,2,8);
    dim3 block(2,1,4);
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