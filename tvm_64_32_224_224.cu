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
    float compute_local[512];
    __shared__ float pad_temp_shared[4352];
    __shared__ float kernel_shared[1536];
    float pad_temp_shared_local[512];
    float kernel_shared_local[256];
    for (int ff_c_init = 0; ff_c_init < 16; ++ff_c_init) {
        for (int yy_c_init = 0; yy_c_init < 2; ++yy_c_init) {
            for (int xx_c_init = 0; xx_c_init < 2; ++xx_c_init) {
                compute_local[((((ff_c_init * 4) + (yy_c_init * 2)) + xx_c_init))] = 0.000000e+00f;
                compute_local[(((((ff_c_init * 4) + (yy_c_init * 2)) + xx_c_init) + 64))] = 0.000000e+00f;
                compute_local[(((((ff_c_init * 4) + (yy_c_init * 2)) + xx_c_init) + 128))] = 0.000000e+00f;
                compute_local[(((((ff_c_init * 4) + (yy_c_init * 2)) + xx_c_init) + 192))] = 0.000000e+00f;
                compute_local[(((((ff_c_init * 4) + (yy_c_init * 2)) + xx_c_init) + 256))] = 0.000000e+00f;
                compute_local[(((((ff_c_init * 4) + (yy_c_init * 2)) + xx_c_init) + 320))] = 0.000000e+00f;
                compute_local[(((((ff_c_init * 4) + (yy_c_init * 2)) + xx_c_init) + 384))] = 0.000000e+00f;
                compute_local[(((((ff_c_init * 4) + (yy_c_init * 2)) + xx_c_init) + 448))] = 0.000000e+00f;
            }
        }
    }
    for (int rc_outer = 0; rc_outer < 4; ++rc_outer) {
        for (int ry_outer = 0; ry_outer < 3; ++ry_outer) {
            __syncthreads();
            for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 272; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
                pad_temp_shared[(((((((int)threadIdx.z) * 2176) + (((int)threadIdx.y) * 544)) + (((int)threadIdx.x) * 272)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= (((((int)blockIdx.y) * 8) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner / 34)) + ry_outer)) && ((((((int)blockIdx.y) * 8) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner / 34)) + ry_outer) < 225)) && (1 <= ((((int)blockIdx.x) * 32) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner % 34)))) && (((((int)blockIdx.x) * 32) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner % 34)) < 225)) ? data[(((((((((((rc_outer * 802816) + (((int)threadIdx.z) * 401408)) + (((int)threadIdx.y) * 100352)) + (((int)threadIdx.x) * 50176)) + (((int)blockIdx.y) * 1792)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner / 34) * 224)) + (ry_outer * 224)) + (((int)blockIdx.x) * 32)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner % 34)) - 225))] : 0.000000e+00f);
            }
            for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 96; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
                kernel_shared[(((((((int)threadIdx.z) * 768) + (((int)threadIdx.y) * 192)) + (((int)threadIdx.x) * 96)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[(((((((((((int)threadIdx.z) * 9216) + (((int)threadIdx.y) * 2304)) + (((int)threadIdx.x) * 1152)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 48) * 576)) + (rc_outer * 144)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 % 48) / 3) * 9)) + (ry_outer * 3)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 % 3)))];
            }
            __syncthreads();
            for (int rx_inner_outer = 0; rx_inner_outer < 3; ++rx_inner_outer) {
                for (int ax1 = 0; ax1 < 16; ++ax1) {
                    for (int ax2 = 0; ax2 < 2; ++ax2) {
                        for (int ax3 = 0; ax3 < 2; ++ax3) {
                            pad_temp_shared_local[((((ax1 * 4) + (ax2 * 2)) + ax3))] = pad_temp_shared[(((((((ax1 * 272) + (((int)threadIdx.y) * 68)) + (ax2 * 34)) + (((int)threadIdx.x) * 2)) + ax3) + rx_inner_outer))];
                            pad_temp_shared_local[(((((ax1 * 4) + (ax2 * 2)) + ax3) + 64))] = pad_temp_shared[((((((((ax1 * 272) + (((int)threadIdx.y) * 68)) + (ax2 * 34)) + (((int)threadIdx.x) * 2)) + ax3) + rx_inner_outer) + 4))];
                            pad_temp_shared_local[(((((ax1 * 4) + (ax2 * 2)) + ax3) + 128))] = pad_temp_shared[((((((((ax1 * 272) + (((int)threadIdx.y) * 68)) + (ax2 * 34)) + (((int)threadIdx.x) * 2)) + ax3) + rx_inner_outer) + 8))];
                            pad_temp_shared_local[(((((ax1 * 4) + (ax2 * 2)) + ax3) + 192))] = pad_temp_shared[((((((((ax1 * 272) + (((int)threadIdx.y) * 68)) + (ax2 * 34)) + (((int)threadIdx.x) * 2)) + ax3) + rx_inner_outer) + 12))];
                            pad_temp_shared_local[(((((ax1 * 4) + (ax2 * 2)) + ax3) + 256))] = pad_temp_shared[((((((((ax1 * 272) + (((int)threadIdx.y) * 68)) + (ax2 * 34)) + (((int)threadIdx.x) * 2)) + ax3) + rx_inner_outer) + 16))];
                            pad_temp_shared_local[(((((ax1 * 4) + (ax2 * 2)) + ax3) + 320))] = pad_temp_shared[((((((((ax1 * 272) + (((int)threadIdx.y) * 68)) + (ax2 * 34)) + (((int)threadIdx.x) * 2)) + ax3) + rx_inner_outer) + 20))];
                            pad_temp_shared_local[(((((ax1 * 4) + (ax2 * 2)) + ax3) + 384))] = pad_temp_shared[((((((((ax1 * 272) + (((int)threadIdx.y) * 68)) + (ax2 * 34)) + (((int)threadIdx.x) * 2)) + ax3) + rx_inner_outer) + 24))];
                            pad_temp_shared_local[(((((ax1 * 4) + (ax2 * 2)) + ax3) + 448))] = pad_temp_shared[((((((((ax1 * 272) + (((int)threadIdx.y) * 68)) + (ax2 * 34)) + (((int)threadIdx.x) * 2)) + ax3) + rx_inner_outer) + 28))];
                        }
                    }
                }
                for (int ax0 = 0; ax0 < 16; ++ax0) {
                    for (int ax11 = 0; ax11 < 16; ++ax11) {
                        kernel_shared_local[(((ax0 * 16) + ax11))] = kernel_shared[(((((((int)threadIdx.z) * 768) + (ax0 * 48)) + (ax11 * 3)) + rx_inner_outer))];
                    }
                }
                for (int rc_inner_inner = 0; rc_inner_inner < 16; ++rc_inner_inner) {
                    for (int ff_c = 0; ff_c < 16; ++ff_c) {
                        for (int yy_c = 0; yy_c < 2; ++yy_c) {
                            for (int xx_c = 0; xx_c < 2; ++xx_c) {
                                compute_local[((((ff_c * 4) + (yy_c * 2)) + xx_c))] = (compute_local[((((ff_c * 4) + (yy_c * 2)) + xx_c))] + (pad_temp_shared_local[((((rc_inner_inner * 4) + (yy_c * 2)) + xx_c))] * kernel_shared_local[(((ff_c * 16) + rc_inner_inner))]));
                                compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 64))] = (compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 64))] + (pad_temp_shared_local[(((((rc_inner_inner * 4) + (yy_c * 2)) + xx_c) + 64))] * kernel_shared_local[(((ff_c * 16) + rc_inner_inner))]));
                                compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 128))] = (compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 128))] + (pad_temp_shared_local[(((((rc_inner_inner * 4) + (yy_c * 2)) + xx_c) + 128))] * kernel_shared_local[(((ff_c * 16) + rc_inner_inner))]));
                                compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 192))] = (compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 192))] + (pad_temp_shared_local[(((((rc_inner_inner * 4) + (yy_c * 2)) + xx_c) + 192))] * kernel_shared_local[(((ff_c * 16) + rc_inner_inner))]));
                                compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 256))] = (compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 256))] + (pad_temp_shared_local[(((((rc_inner_inner * 4) + (yy_c * 2)) + xx_c) + 256))] * kernel_shared_local[(((ff_c * 16) + rc_inner_inner))]));
                                compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 320))] = (compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 320))] + (pad_temp_shared_local[(((((rc_inner_inner * 4) + (yy_c * 2)) + xx_c) + 320))] * kernel_shared_local[(((ff_c * 16) + rc_inner_inner))]));
                                compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 384))] = (compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 384))] + (pad_temp_shared_local[(((((rc_inner_inner * 4) + (yy_c * 2)) + xx_c) + 384))] * kernel_shared_local[(((ff_c * 16) + rc_inner_inner))]));
                                compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 448))] = (compute_local[(((((ff_c * 4) + (yy_c * 2)) + xx_c) + 448))] + (pad_temp_shared_local[(((((rc_inner_inner * 4) + (yy_c * 2)) + xx_c) + 448))] * kernel_shared_local[(((ff_c * 16) + rc_inner_inner))]));
                            }
                        }
                    }
                }
            }
        }
    }
    for (int ff_inner_inner_inner = 0; ff_inner_inner_inner < 16; ++ff_inner_inner_inner) {
        for (int yy_inner_inner_inner = 0; yy_inner_inner_inner < 2; ++yy_inner_inner_inner) {
            for (int xx_inner_inner_inner = 0; xx_inner_inner_inner < 2; ++xx_inner_inner_inner) {
                compute[(((((((((((int)threadIdx.z) * 802816) + (ff_inner_inner_inner * 50176)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) * 2)) + xx_inner_inner_inner))] = compute_local[((((ff_inner_inner_inner * 4) + (yy_inner_inner_inner * 2)) + xx_inner_inner_inner))];
                compute[((((((((((((int)threadIdx.z) * 802816) + (ff_inner_inner_inner * 50176)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) * 2)) + xx_inner_inner_inner) + 4))] = compute_local[(((((ff_inner_inner_inner * 4) + (yy_inner_inner_inner * 2)) + xx_inner_inner_inner) + 64))];
                compute[((((((((((((int)threadIdx.z) * 802816) + (ff_inner_inner_inner * 50176)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) * 2)) + xx_inner_inner_inner) + 8))] = compute_local[(((((ff_inner_inner_inner * 4) + (yy_inner_inner_inner * 2)) + xx_inner_inner_inner) + 128))];
                compute[((((((((((((int)threadIdx.z) * 802816) + (ff_inner_inner_inner * 50176)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) * 2)) + xx_inner_inner_inner) + 12))] = compute_local[(((((ff_inner_inner_inner * 4) + (yy_inner_inner_inner * 2)) + xx_inner_inner_inner) + 192))];
                compute[((((((((((((int)threadIdx.z) * 802816) + (ff_inner_inner_inner * 50176)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) * 2)) + xx_inner_inner_inner) + 16))] = compute_local[(((((ff_inner_inner_inner * 4) + (yy_inner_inner_inner * 2)) + xx_inner_inner_inner) + 256))];
                compute[((((((((((((int)threadIdx.z) * 802816) + (ff_inner_inner_inner * 50176)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) * 2)) + xx_inner_inner_inner) + 20))] = compute_local[(((((ff_inner_inner_inner * 4) + (yy_inner_inner_inner * 2)) + xx_inner_inner_inner) + 320))];
                compute[((((((((((((int)threadIdx.z) * 802816) + (ff_inner_inner_inner * 50176)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) * 2)) + xx_inner_inner_inner) + 24))] = compute_local[(((((ff_inner_inner_inner * 4) + (yy_inner_inner_inner * 2)) + xx_inner_inner_inner) + 384))];
                compute[((((((((((((int)threadIdx.z) * 802816) + (ff_inner_inner_inner * 50176)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) * 2)) + xx_inner_inner_inner) + 28))] = compute_local[(((((ff_inner_inner_inner * 4) + (yy_inner_inner_inner * 2)) + xx_inner_inner_inner) + 448))];
            }
        }
    }
}

//grid=(7,28,1),  block=(2,4,2)
int main(int argc, char *argv[]){
    dim3 grid(7,28,1);
    dim3 block(2,4,2);
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