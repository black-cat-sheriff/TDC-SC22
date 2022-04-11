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
    __shared__ float pad_temp_shared[504];
    __shared__ float kernel_shared[2304];
    float pad_temp_shared_local[14];
    float kernel_shared_local[2];
    compute_local[(0)] = 0.000000e+00f;
    compute_local[(1)] = 0.000000e+00f;
    compute_local[(2)] = 0.000000e+00f;
    compute_local[(3)] = 0.000000e+00f;
    compute_local[(4)] = 0.000000e+00f;
    compute_local[(5)] = 0.000000e+00f;
    compute_local[(6)] = 0.000000e+00f;
    for (int rc_outer = 0; rc_outer < 8; ++rc_outer) {
        for (int ry_outer = 0; ry_outer < 3; ++ry_outer) {
            __syncthreads();
            pad_temp_shared[((((int)threadIdx.z) * 16))] = (((((1 <= ((((((int)threadIdx.z) * 16) % 21) / 3) + ry_outer)) && (((((((int)threadIdx.z) * 16) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + ((((int)threadIdx.z) * 16) % 3)))) && ((((int)blockIdx.x) + ((((int)threadIdx.z) * 16) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + (((((int)threadIdx.z) * 16) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + ((((int)threadIdx.z) * 16) % 3)) - 8))] : 0.000000e+00f);
            pad_temp_shared[(((((int)threadIdx.z) * 16) + 1))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 1) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 1) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 1) % 3)))) && ((((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 1) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + ((((((int)threadIdx.z) * 16) + 1) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + (((((int)threadIdx.z) * 16) + 1) % 3)) - 8))] : 0.000000e+00f);
            pad_temp_shared[(((((int)threadIdx.z) * 16) + 2))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 2) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 2) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 2) % 3)))) && ((((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 2) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + ((((((int)threadIdx.z) * 16) + 2) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + (((((int)threadIdx.z) * 16) + 2) % 3)) - 8))] : 0.000000e+00f);
            pad_temp_shared[(((((int)threadIdx.z) * 16) + 3))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 3) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 3) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + ((((int)threadIdx.z) * 16) % 3)))) && ((((int)blockIdx.x) + ((((int)threadIdx.z) * 16) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + (((((int)threadIdx.z) * 16) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + ((((int)threadIdx.z) * 16) % 3)) - 1))] : 0.000000e+00f);
            pad_temp_shared[(((((int)threadIdx.z) * 16) + 4))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 4) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 4) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 1) % 3)))) && ((((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 1) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + ((((((int)threadIdx.z) * 16) + 4) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + (((((int)threadIdx.z) * 16) + 1) % 3)) - 8))] : 0.000000e+00f);
            pad_temp_shared[(((((int)threadIdx.z) * 16) + 5))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 5) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 5) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 2) % 3)))) && ((((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 2) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + ((((((int)threadIdx.z) * 16) + 5) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + (((((int)threadIdx.z) * 16) + 2) % 3)) - 8))] : 0.000000e+00f);
            pad_temp_shared[(((((int)threadIdx.z) * 16) + 6))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 6) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 6) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + ((((int)threadIdx.z) * 16) % 3)))) && ((((int)blockIdx.x) + ((((int)threadIdx.z) * 16) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + (((((int)threadIdx.z) * 16) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + ((((int)threadIdx.z) * 16) % 3)) + 6))] : 0.000000e+00f);
            pad_temp_shared[(((((int)threadIdx.z) * 16) + 7))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 7) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 7) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 1) % 3)))) && ((((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 1) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + ((((((int)threadIdx.z) * 16) + 7) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + (((((int)threadIdx.z) * 16) + 1) % 3)) - 8))] : 0.000000e+00f);
            if (((int)threadIdx.z) < 31) {
                pad_temp_shared[(((((int)threadIdx.z) * 16) + 8))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 8) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 8) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 2) % 3)))) && ((((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 2) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + ((((((int)threadIdx.z) * 16) + 8) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + (((((int)threadIdx.z) * 16) + 2) % 3)) - 8))] : 0.000000e+00f);
            }
            if (((int)threadIdx.z) < 31) {
                pad_temp_shared[(((((int)threadIdx.z) * 16) + 9))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 9) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 9) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + ((((int)threadIdx.z) * 16) % 3)))) && ((((int)blockIdx.x) + ((((int)threadIdx.z) * 16) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + (((((int)threadIdx.z) * 16) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + ((((int)threadIdx.z) * 16) % 3)) + 13))] : 0.000000e+00f);
            }
            if (((int)threadIdx.z) < 31) {
                pad_temp_shared[(((((int)threadIdx.z) * 16) + 10))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 10) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 10) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 1) % 3)))) && ((((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 1) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + ((((((int)threadIdx.z) * 16) + 10) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + (((((int)threadIdx.z) * 16) + 1) % 3)) - 8))] : 0.000000e+00f);
            }
            if (((int)threadIdx.z) < 31) {
                pad_temp_shared[(((((int)threadIdx.z) * 16) + 11))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 11) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 11) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 2) % 3)))) && ((((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 2) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + ((((((int)threadIdx.z) * 16) + 11) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + (((((int)threadIdx.z) * 16) + 2) % 3)) - 8))] : 0.000000e+00f);
            }
            if (((int)threadIdx.z) < 31) {
                pad_temp_shared[(((((int)threadIdx.z) * 16) + 12))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 12) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 12) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + ((((int)threadIdx.z) * 16) % 3)))) && ((((int)blockIdx.x) + ((((int)threadIdx.z) * 16) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + (((((int)threadIdx.z) * 16) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + ((((int)threadIdx.z) * 16) % 3)) + 20))] : 0.000000e+00f);
            }
            if (((int)threadIdx.z) < 31) {
                pad_temp_shared[(((((int)threadIdx.z) * 16) + 13))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 13) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 13) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 1) % 3)))) && ((((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 1) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + ((((((int)threadIdx.z) * 16) + 13) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + (((((int)threadIdx.z) * 16) + 1) % 3)) - 8))] : 0.000000e+00f);
            }
            if (((int)threadIdx.z) < 31) {
                pad_temp_shared[(((((int)threadIdx.z) * 16) + 14))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 14) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 14) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 2) % 3)))) && ((((int)blockIdx.x) + (((((int)threadIdx.z) * 16) + 2) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + ((((((int)threadIdx.z) * 16) + 14) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + (((((int)threadIdx.z) * 16) + 2) % 3)) - 8))] : 0.000000e+00f);
            }
            if (((int)threadIdx.z) < 31) {
                pad_temp_shared[(((((int)threadIdx.z) * 16) + 15))] = (((((1 <= (((((((int)threadIdx.z) * 16) + 15) % 21) / 3) + ry_outer)) && ((((((((int)threadIdx.z) * 16) + 15) % 21) / 3) + ry_outer) < 8)) && (1 <= (((int)blockIdx.x) + ((((int)threadIdx.z) * 16) % 3)))) && ((((int)blockIdx.x) + ((((int)threadIdx.z) * 16) % 3)) < 8)) ? data[(((((((rc_outer * 1176) + (((((int)threadIdx.z) * 16) / 3) * 7)) + (ry_outer * 7)) + ((int)blockIdx.x)) + ((((int)threadIdx.z) * 16) % 3)) + 27))] : 0.000000e+00f);
            }
            kernel_shared[((((int)threadIdx.z) * 72))] = kernel[(((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 1))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 1))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 2))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 2))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 3))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 9))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 4))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 10))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 5))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 11))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 6))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 18))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 7))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 19))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 8))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 20))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 9))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 27))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 10))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 28))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 11))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 29))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 12))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 36))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 13))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 37))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 14))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 38))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 15))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 45))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 16))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 46))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 17))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 47))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 18))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 54))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 19))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 55))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 20))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 56))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 21))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 63))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 22))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 64))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 23))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 65))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 24))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 72))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 25))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 73))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 26))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 74))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 27))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 81))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 28))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 82))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 29))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 83))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 30))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 90))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 31))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 91))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 32))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 92))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 33))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 99))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 34))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 100))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 35))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 101))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 36))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 108))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 37))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 109))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 38))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 110))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 39))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 117))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 40))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 118))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 41))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 119))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 42))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 126))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 43))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 127))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 44))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 128))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 45))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 135))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 46))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 136))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 47))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 137))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 48))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 144))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 49))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 145))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 50))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 146))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 51))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 153))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 52))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 154))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 53))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 155))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 54))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 162))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 55))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 163))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 56))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 164))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 57))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 171))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 58))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 172))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 59))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 173))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 60))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 180))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 61))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 181))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 62))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 182))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 63))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 189))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 64))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 190))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 65))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 191))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 66))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 198))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 67))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 199))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 68))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 200))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 69))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 207))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 70))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 208))];
            kernel_shared[(((((int)threadIdx.z) * 72) + 71))] = kernel[((((((((int)blockIdx.z) * 55296) + (((int)threadIdx.z) * 1728)) + (rc_outer * 216)) + (ry_outer * 3)) + 209))];
            __syncthreads();
            for (int rc_inner_outer = 0; rc_inner_outer < 12; ++rc_inner_outer) {
                pad_temp_shared_local[(0)] = pad_temp_shared[((rc_inner_outer * 42))];
                pad_temp_shared_local[(1)] = pad_temp_shared[(((rc_inner_outer * 42) + 3))];
                pad_temp_shared_local[(2)] = pad_temp_shared[(((rc_inner_outer * 42) + 6))];
                pad_temp_shared_local[(3)] = pad_temp_shared[(((rc_inner_outer * 42) + 9))];
                pad_temp_shared_local[(4)] = pad_temp_shared[(((rc_inner_outer * 42) + 12))];
                pad_temp_shared_local[(5)] = pad_temp_shared[(((rc_inner_outer * 42) + 15))];
                pad_temp_shared_local[(6)] = pad_temp_shared[(((rc_inner_outer * 42) + 18))];
                pad_temp_shared_local[(7)] = pad_temp_shared[(((rc_inner_outer * 42) + 21))];
                pad_temp_shared_local[(8)] = pad_temp_shared[(((rc_inner_outer * 42) + 24))];
                pad_temp_shared_local[(9)] = pad_temp_shared[(((rc_inner_outer * 42) + 27))];
                pad_temp_shared_local[(10)] = pad_temp_shared[(((rc_inner_outer * 42) + 30))];
                pad_temp_shared_local[(11)] = pad_temp_shared[(((rc_inner_outer * 42) + 33))];
                pad_temp_shared_local[(12)] = pad_temp_shared[(((rc_inner_outer * 42) + 36))];
                pad_temp_shared_local[(13)] = pad_temp_shared[(((rc_inner_outer * 42) + 39))];
                kernel_shared_local[(0)] = kernel_shared[(((((int)threadIdx.z) * 72) + (rc_inner_outer * 6)))];
                kernel_shared_local[(1)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 6)) + 3))];
                compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
                compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(0)]));
                compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(0)]));
                compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(0)]));
                compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(0)]));
                compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(0)]));
                compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(0)]));
                compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(1)]));
                compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(1)]));
                compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(1)]));
                compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(1)]));
                compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(1)]));
                compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(1)]));
                compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(1)]));
                pad_temp_shared_local[(0)] = pad_temp_shared[(((rc_inner_outer * 42) + 1))];
                pad_temp_shared_local[(1)] = pad_temp_shared[(((rc_inner_outer * 42) + 4))];
                pad_temp_shared_local[(2)] = pad_temp_shared[(((rc_inner_outer * 42) + 7))];
                pad_temp_shared_local[(3)] = pad_temp_shared[(((rc_inner_outer * 42) + 10))];
                pad_temp_shared_local[(4)] = pad_temp_shared[(((rc_inner_outer * 42) + 13))];
                pad_temp_shared_local[(5)] = pad_temp_shared[(((rc_inner_outer * 42) + 16))];
                pad_temp_shared_local[(6)] = pad_temp_shared[(((rc_inner_outer * 42) + 19))];
                pad_temp_shared_local[(7)] = pad_temp_shared[(((rc_inner_outer * 42) + 22))];
                pad_temp_shared_local[(8)] = pad_temp_shared[(((rc_inner_outer * 42) + 25))];
                pad_temp_shared_local[(9)] = pad_temp_shared[(((rc_inner_outer * 42) + 28))];
                pad_temp_shared_local[(10)] = pad_temp_shared[(((rc_inner_outer * 42) + 31))];
                pad_temp_shared_local[(11)] = pad_temp_shared[(((rc_inner_outer * 42) + 34))];
                pad_temp_shared_local[(12)] = pad_temp_shared[(((rc_inner_outer * 42) + 37))];
                pad_temp_shared_local[(13)] = pad_temp_shared[(((rc_inner_outer * 42) + 40))];
                kernel_shared_local[(0)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 6)) + 1))];
                kernel_shared_local[(1)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 6)) + 4))];
                compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
                compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(0)]));
                compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(0)]));
                compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(0)]));
                compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(0)]));
                compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(0)]));
                compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(0)]));
                compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(1)]));
                compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(1)]));
                compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(1)]));
                compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(1)]));
                compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(1)]));
                compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(1)]));
                compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(1)]));
                pad_temp_shared_local[(0)] = pad_temp_shared[(((rc_inner_outer * 42) + 2))];
                pad_temp_shared_local[(1)] = pad_temp_shared[(((rc_inner_outer * 42) + 5))];
                pad_temp_shared_local[(2)] = pad_temp_shared[(((rc_inner_outer * 42) + 8))];
                pad_temp_shared_local[(3)] = pad_temp_shared[(((rc_inner_outer * 42) + 11))];
                pad_temp_shared_local[(4)] = pad_temp_shared[(((rc_inner_outer * 42) + 14))];
                pad_temp_shared_local[(5)] = pad_temp_shared[(((rc_inner_outer * 42) + 17))];
                pad_temp_shared_local[(6)] = pad_temp_shared[(((rc_inner_outer * 42) + 20))];
                pad_temp_shared_local[(7)] = pad_temp_shared[(((rc_inner_outer * 42) + 23))];
                pad_temp_shared_local[(8)] = pad_temp_shared[(((rc_inner_outer * 42) + 26))];
                pad_temp_shared_local[(9)] = pad_temp_shared[(((rc_inner_outer * 42) + 29))];
                pad_temp_shared_local[(10)] = pad_temp_shared[(((rc_inner_outer * 42) + 32))];
                pad_temp_shared_local[(11)] = pad_temp_shared[(((rc_inner_outer * 42) + 35))];
                pad_temp_shared_local[(12)] = pad_temp_shared[(((rc_inner_outer * 42) + 38))];
                pad_temp_shared_local[(13)] = pad_temp_shared[(((rc_inner_outer * 42) + 41))];
                kernel_shared_local[(0)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 6)) + 2))];
                kernel_shared_local[(1)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 6)) + 5))];
                compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
                compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(0)]));
                compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(0)]));
                compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(0)]));
                compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(0)]));
                compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(0)]));
                compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(0)]));
                compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(1)]));
                compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(1)]));
                compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(1)]));
                compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(1)]));
                compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(1)]));
                compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(1)]));
                compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(1)]));
            }
        }
    }
    compute[((((((int)blockIdx.z) * 1568) + (((int)threadIdx.z) * 49)) + ((int)blockIdx.x)))] = compute_local[(0)];
    compute[(((((((int)blockIdx.z) * 1568) + (((int)threadIdx.z) * 49)) + ((int)blockIdx.x)) + 7))] = compute_local[(1)];
    compute[(((((((int)blockIdx.z) * 1568) + (((int)threadIdx.z) * 49)) + ((int)blockIdx.x)) + 14))] = compute_local[(2)];
    compute[(((((((int)blockIdx.z) * 1568) + (((int)threadIdx.z) * 49)) + ((int)blockIdx.x)) + 21))] = compute_local[(3)];
    compute[(((((((int)blockIdx.z) * 1568) + (((int)threadIdx.z) * 49)) + ((int)blockIdx.x)) + 28))] = compute_local[(4)];
    compute[(((((((int)blockIdx.z) * 1568) + (((int)threadIdx.z) * 49)) + ((int)blockIdx.x)) + 35))] = compute_local[(5)];
    compute[(((((((int)blockIdx.z) * 1568) + (((int)threadIdx.z) * 49)) + ((int)blockIdx.x)) + 42))] = compute_local[(6)];
}

//grid=(7,1,5),  block=(1,1,32)
int main(int argc, char *argv[]){
    dim3 grid(7,1,5);
    dim3 block(1,1,32);
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