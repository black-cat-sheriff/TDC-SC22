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
    float compute_local[12];
    __shared__ float pad_temp_shared[72];
    __shared__ float kernel_shared[72];
    float pad_temp_shared_local[12];
    float kernel_shared_local[9];
    for (int xx_c_init = 0; xx_c_init < 4; ++xx_c_init) {
        compute_local[(xx_c_init)] = 0.000000e+00f;
        compute_local[((xx_c_init + 4))] = 0.000000e+00f;
        compute_local[((xx_c_init + 8))] = 0.000000e+00f;
    }
    for (int rc_outer = 0; rc_outer < 80; ++rc_outer) {
        for (int rx_outer = 0; rx_outer < 3; ++rx_outer) {
            __syncthreads();
            for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
                if ((((((int)threadIdx.z) * 18) + (((int)threadIdx.y) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 72) {
                    if (((((int)threadIdx.y) * 3) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 18) {
                        pad_temp_shared[((((((int)threadIdx.z) * 18) + (((int)threadIdx.y) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= ((((int)blockIdx.y) * 7) + (((((((int)threadIdx.z) * 18) + (((int)threadIdx.y) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 36) >> 2))) && (((((int)blockIdx.y) * 7) + (((((((int)threadIdx.z) * 18) + (((int)threadIdx.y) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 36) >> 2)) < 29)) && (1 <= (((((int)blockIdx.x) * 4) + rx_outer) + ((((((int)threadIdx.z) * 18) + (((int)threadIdx.y) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) & 3)))) && ((((((int)blockIdx.x) * 4) + rx_outer) + ((((((int)threadIdx.z) * 18) + (((int)threadIdx.y) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) & 3)) < 29)) ? data[(((((((((rc_outer * 1568) + (((((((int)threadIdx.z) * 18) + (((int)threadIdx.y) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 36) * 784)) + (((int)blockIdx.y) * 196)) + ((((((((int)threadIdx.z) * 18) + (((int)threadIdx.y) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 36) >> 2) * 28)) + (((int)blockIdx.x) * 4)) + rx_outer) + ((((((int)threadIdx.z) * 18) + (((int)threadIdx.y) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) & 3)) - 29))] : 0.000000e+00f);
                    }
                }
            }
            for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
                if (((((int)threadIdx.z) * 3) + (((int)threadIdx.y) >> 1)) < 12) {
                    if (((((int)threadIdx.z) * 6) + ((int)threadIdx.y)) < 24) {
                        if ((((((int)threadIdx.z) * 18) + (((int)threadIdx.y) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 72) {
                            if (((((int)threadIdx.y) * 3) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 18) {
                                if ((((((int)blockIdx.z) * 12) + (((int)threadIdx.z) * 3)) + (((int)threadIdx.y) >> 1)) < 96) {
                                    kernel_shared[((((((int)threadIdx.z) * 18) + (((int)threadIdx.y) * 3)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[((((((((((int)blockIdx.z) * 17280) + (((int)threadIdx.z) * 4320)) + ((((int)threadIdx.y) >> 1) * 1440)) + (rc_outer * 18)) + ((((int)threadIdx.y) & 1) * 9)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 * 3)) + rx_outer))];
                                }
                            }
                        }
                    }
                }
            }
            __syncthreads();
            for (int rc_inner_outer = 0; rc_inner_outer < 2; ++rc_inner_outer) {
                for (int ax2 = 0; ax2 < 3; ++ax2) {
                    for (int ax3 = 0; ax3 < 4; ++ax3) {
                        pad_temp_shared_local[(((ax2 * 4) + ax3))] = pad_temp_shared[(((((rc_inner_outer * 36) + (ax2 * 4)) + (((int)threadIdx.y) * 4)) + ax3))];
                    }
                }
                for (int ax21 = 0; ax21 < 3; ++ax21) {
                    kernel_shared_local[(ax21)] = kernel_shared[((((((int)threadIdx.z) * 6) + (rc_inner_outer * 3)) + ax21))];
                    kernel_shared_local[((ax21 + 3))] = kernel_shared[(((((((int)threadIdx.z) * 6) + (rc_inner_outer * 3)) + ax21) + 24))];
                    kernel_shared_local[((ax21 + 6))] = kernel_shared[(((((((int)threadIdx.z) * 6) + (rc_inner_outer * 3)) + ax21) + 48))];
                }
                for (int ry_inner_inner = 0; ry_inner_inner < 3; ++ry_inner_inner) {
                    for (int xx_c = 0; xx_c < 4; ++xx_c) {
                        compute_local[(xx_c)] = (compute_local[(xx_c)] + (pad_temp_shared_local[(((ry_inner_inner * 4) + xx_c))] * kernel_shared_local[(ry_inner_inner)]));
                        compute_local[((xx_c + 4))] = (compute_local[((xx_c + 4))] + (pad_temp_shared_local[(((ry_inner_inner * 4) + xx_c))] * kernel_shared_local[((ry_inner_inner + 3))]));
                        compute_local[((xx_c + 8))] = (compute_local[((xx_c + 8))] + (pad_temp_shared_local[(((ry_inner_inner * 4) + xx_c))] * kernel_shared_local[((ry_inner_inner + 6))]));
                    }
                }
            }
        }
    }
    for (int xx_inner_inner_inner = 0; xx_inner_inner_inner < 4; ++xx_inner_inner_inner) {
        compute[(((((((((int)blockIdx.z) * 9408) + (((int)threadIdx.z) * 784)) + (((int)blockIdx.y) * 196)) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + xx_inner_inner_inner))] = compute_local[(xx_inner_inner_inner)];
        compute[((((((((((int)blockIdx.z) * 9408) + (((int)threadIdx.z) * 784)) + (((int)blockIdx.y) * 196)) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + xx_inner_inner_inner) + 3136))] = compute_local[((xx_inner_inner_inner + 4))];
        compute[((((((((((int)blockIdx.z) * 9408) + (((int)threadIdx.z) * 784)) + (((int)blockIdx.y) * 196)) + (((int)threadIdx.y) * 28)) + (((int)blockIdx.x) * 4)) + xx_inner_inner_inner) + 6272))] = compute_local[((xx_inner_inner_inner + 8))];
    }
}
//grid=(7,4,8),  block=(1,7,4)
int main(int argc, char *argv[]){
    dim3 grid(7,4,8);
    dim3 block(1,7,4);
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