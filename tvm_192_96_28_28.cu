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
    float compute_local[32];
    __shared__ float pad_temp_shared[2016];
    __shared__ float kernel_shared[1152];
    float pad_temp_shared_local[12];
    float kernel_shared_local[96];
    for (int ff_c_init = 0; ff_c_init < 8; ++ff_c_init) {
        compute_local[(ff_c_init)] = 0.000000e+00f;
        compute_local[((ff_c_init + 16))] = 0.000000e+00f;
        compute_local[((ff_c_init + 8))] = 0.000000e+00f;
        compute_local[((ff_c_init + 24))] = 0.000000e+00f;
    }
    for (int rc_outer = 0; rc_outer < 16; ++rc_outer) {
        for (int rx_outer = 0; rx_outer < 3; ++rx_outer) {
            __syncthreads();
            for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 18; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
                pad_temp_shared[(((((((int)threadIdx.z) * 1008) + (((int)threadIdx.y) * 504)) + (((int)threadIdx.x) * 18)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= ((((int)blockIdx.y) * 4) + ((((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 168) / 28))) && (((((int)blockIdx.y) * 4) + ((((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 168) / 28)) < 29)) && (1 <= (rx_outer + (((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 28)))) && ((rx_outer + (((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 28)) < 29)) ? data[(((((((((rc_outer * 9408) + (((int)threadIdx.z) * 4704)) + (((int)threadIdx.y) * 2352)) + ((((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 168) * 784)) + (((int)blockIdx.y) * 112)) + rx_outer) + (((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 168)) - 29))] : 0.000000e+00f);
            }
            for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 11; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
                if ((((((int)threadIdx.z) * 16) + (((int)threadIdx.y) * 8)) + (((((int)threadIdx.x) * 11) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) / 36)) < 32) {
                    if ((((((int)threadIdx.z) * 192) + (((int)threadIdx.y) * 96)) + (((((int)threadIdx.x) * 11) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) / 3)) < 384) {
                        if (((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 288)) + (((int)threadIdx.x) * 11)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 1152) {
                            if ((((((int)threadIdx.y) * 288) + (((int)threadIdx.x) * 11)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 576) {
                                if (((((int)threadIdx.x) * 11) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 288) {
                                    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 288)) + (((int)threadIdx.x) * 11)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[((((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 27648)) + (((int)threadIdx.y) * 13824)) + ((((((int)threadIdx.x) * 11) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) / 36) * 1728)) + (rc_outer * 108)) + ((((((int)threadIdx.x) * 11) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) % 36) * 3)) + rx_outer))];
                                }
                            }
                        }
                    }
                }
            }
            __syncthreads();
            for (int rc_inner_outer = 0; rc_inner_outer < 2; ++rc_inner_outer) {
                for (int ry_inner_outer = 0; ry_inner_outer < 3; ++ry_inner_outer) {
                    for (int ax1 = 0; ax1 < 6; ++ax1) {
                        pad_temp_shared_local[(ax1)] = pad_temp_shared[((((((rc_inner_outer * 1008) + (ax1 * 168)) + (((int)threadIdx.y) * 28)) + (ry_inner_outer * 28)) + ((int)threadIdx.x)))];
                        pad_temp_shared_local[((ax1 + 6))] = pad_temp_shared[(((((((rc_inner_outer * 1008) + (ax1 * 168)) + (((int)threadIdx.y) * 28)) + (ry_inner_outer * 28)) + ((int)threadIdx.x)) + 56))];
                    }
                    for (int ax0 = 0; ax0 < 8; ++ax0) {
                        for (int ax11 = 0; ax11 < 6; ++ax11) {
                            kernel_shared_local[(((ax0 * 6) + ax11))] = kernel_shared[((((((((int)threadIdx.z) * 288) + (ax0 * 36)) + (rc_inner_outer * 18)) + (ax11 * 3)) + ry_inner_outer))];
                            kernel_shared_local[((((ax0 * 6) + ax11) + 48))] = kernel_shared[(((((((((int)threadIdx.z) * 288) + (ax0 * 36)) + (rc_inner_outer * 18)) + (ax11 * 3)) + ry_inner_outer) + 576))];
                        }
                    }
                    for (int rc_inner_inner = 0; rc_inner_inner < 6; ++rc_inner_inner) {
                        for (int ff_c = 0; ff_c < 8; ++ff_c) {
                            compute_local[(ff_c)] = (compute_local[(ff_c)] + (pad_temp_shared_local[(rc_inner_inner)] * kernel_shared_local[(((ff_c * 6) + rc_inner_inner))]));
                            compute_local[((ff_c + 16))] = (compute_local[((ff_c + 16))] + (pad_temp_shared_local[(rc_inner_inner)] * kernel_shared_local[((((ff_c * 6) + rc_inner_inner) + 48))]));
                            compute_local[((ff_c + 8))] = (compute_local[((ff_c + 8))] + (pad_temp_shared_local[((rc_inner_inner + 6))] * kernel_shared_local[(((ff_c * 6) + rc_inner_inner))]));
                            compute_local[((ff_c + 24))] = (compute_local[((ff_c + 24))] + (pad_temp_shared_local[((rc_inner_inner + 6))] * kernel_shared_local[((((ff_c * 6) + rc_inner_inner) + 48))]));
                        }
                    }
                }
            }
        }
    }
    for (int ff_inner_inner_inner = 0; ff_inner_inner_inner < 8; ++ff_inner_inner_inner) {
        compute[(((((((((int)blockIdx.z) * 25088) + (((int)threadIdx.z) * 6272)) + (ff_inner_inner_inner * 784)) + (((int)blockIdx.y) * 112)) + (((int)threadIdx.y) * 28)) + ((int)threadIdx.x)))] = compute_local[(ff_inner_inner_inner)];
        compute[((((((((((int)blockIdx.z) * 25088) + (((int)threadIdx.z) * 6272)) + (ff_inner_inner_inner * 784)) + (((int)blockIdx.y) * 112)) + (((int)threadIdx.y) * 28)) + ((int)threadIdx.x)) + 12544))] = compute_local[((ff_inner_inner_inner + 16))];
        compute[((((((((((int)blockIdx.z) * 25088) + (((int)threadIdx.z) * 6272)) + (ff_inner_inner_inner * 784)) + (((int)blockIdx.y) * 112)) + (((int)threadIdx.y) * 28)) + ((int)threadIdx.x)) + 56))] = compute_local[((ff_inner_inner_inner + 8))];
        compute[((((((((((int)blockIdx.z) * 25088) + (((int)threadIdx.z) * 6272)) + (ff_inner_inner_inner * 784)) + (((int)blockIdx.y) * 112)) + (((int)threadIdx.y) * 28)) + ((int)threadIdx.x)) + 12600))] = compute_local[((ff_inner_inner_inner + 24))];
    }
}

//grid=(1,7,3),  block=(28,2,2)
int main(int argc, char *argv[]){
    dim3 grid(1,7,3);
    dim3 block(28,2,2);
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