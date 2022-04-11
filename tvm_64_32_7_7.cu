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
    __shared__ float pad_temp_shared[784];
    __shared__ float kernel_shared[256];
    float pad_temp_shared_local[4];
    float kernel_shared_local[16];
#pragma unroll
    for (int ff_c_init = 0; ff_c_init < 4; ++ff_c_init) {
        compute_local[(ff_c_init)] = 0.000000e+00f;
    }
    for (int rc_outer = 0; rc_outer < 4; ++rc_outer) {
        for (int ry_outer = 0; ry_outer < 3; ++ry_outer) {
#pragma unroll
            for (int rx_outer = 0; rx_outer < 3; ++rx_outer) {
                __syncthreads();
#pragma unroll
                for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
                    pad_temp_shared[(((((((int)threadIdx.z) * 196) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= (ry_outer + (((((int)threadIdx.y) * 4) + (((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 7)) % 7))) && ((ry_outer + (((((int)threadIdx.y) * 4) + (((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 7)) % 7)) < 8)) && (1 <= (rx_outer + (((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 7)))) && ((rx_outer + (((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 7)) < 8)) ? data[((((((((rc_outer * 784) + (((int)threadIdx.z) * 196)) + (((int)threadIdx.y) * 28)) + (ry_outer * 7)) + ((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner)) + rx_outer) - 8))] : 0.000000e+00f);
                }
#pragma unroll
                for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
                    if (((((int)threadIdx.z) * 4) + ((((((int)threadIdx.y) * 10) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) >> 4)) < 16) {
                        if (((((((int)threadIdx.z) * 64) + (((int)threadIdx.y) * 10)) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 256) {
                            if ((((((int)threadIdx.y) * 10) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 64) {
                                if (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 10) {
                                    kernel_shared[(((((((int)threadIdx.z) * 64) + (((int)threadIdx.y) * 10)) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[((((((((((int)blockIdx.z) * 9216) + (((int)threadIdx.z) * 2304)) + (((((((int)threadIdx.y) * 10) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) >> 4) * 576)) + (rc_outer * 144)) + (((((((int)threadIdx.y) * 10) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) & 15) * 9)) + (ry_outer * 3)) + rx_outer))];
                                }
                            }
                        }
                    }
                }
                __syncthreads();
#pragma unroll
                for (int rc_inner_outer = 0; rc_inner_outer < 4; ++rc_inner_outer) {
#pragma unroll
                    for (int ax1 = 0; ax1 < 4; ++ax1) {
                        pad_temp_shared_local[(ax1)] = pad_temp_shared[(((((rc_inner_outer * 196) + (ax1 * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)))];
                    }
#pragma unroll
                    for (int ax0 = 0; ax0 < 4; ++ax0) {
#pragma unroll
                        for (int ax11 = 0; ax11 < 4; ++ax11) {
                            kernel_shared_local[(((ax0 * 4) + ax11))] = kernel_shared[(((((((int)threadIdx.z) * 64) + (ax0 * 16)) + (rc_inner_outer * 4)) + ax11))];
                        }
                    }
#pragma unroll
                    for (int rc_inner_inner = 0; rc_inner_inner < 4; ++rc_inner_inner) {
#pragma unroll
                        for (int ff_c = 0; ff_c < 4; ++ff_c) {
                            compute_local[(ff_c)] = (compute_local[(ff_c)] + (pad_temp_shared_local[(rc_inner_inner)] * kernel_shared_local[(((ff_c * 4) + rc_inner_inner))]));
                        }
                    }
                }
            }
        }
    }
#pragma unroll
    for (int ff_inner_inner_inner = 0; ff_inner_inner_inner < 4; ++ff_inner_inner_inner) {
        compute[((((((((int)blockIdx.z) * 784) + (((int)threadIdx.z) * 196)) + (ff_inner_inner_inner * 49)) + (((int)threadIdx.y) * 7)) + ((int)threadIdx.x)))] = compute_local[(ff_inner_inner_inner)];
    }
}

//grid=(1,1,2),  block=(7,7,4)
int main(int argc, char *argv[]){
    dim3 grid(1,1,2);
    dim3 block(7,7,4);
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