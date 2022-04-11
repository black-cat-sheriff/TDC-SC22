//
// Created by lizhi on 3/21/22.
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
//grid=(1,7,1),  block=(8,8,4)
extern "C" __global__ void conv_64_32_56_56(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[56];
    __shared__ float pad_temp_shared[2240];
    __shared__ float kernel_shared[384];
    float pad_temp_shared_local[84];
    float kernel_shared_local[96];
    compute_local[(0)] = 0.000000e+00f;
    compute_local[(7)] = 0.000000e+00f;
    compute_local[(14)] = 0.000000e+00f;
    compute_local[(21)] = 0.000000e+00f;
    compute_local[(28)] = 0.000000e+00f;
    compute_local[(35)] = 0.000000e+00f;
    compute_local[(42)] = 0.000000e+00f;
    compute_local[(49)] = 0.000000e+00f;
    compute_local[(1)] = 0.000000e+00f;
    compute_local[(8)] = 0.000000e+00f;
    compute_local[(15)] = 0.000000e+00f;
    compute_local[(22)] = 0.000000e+00f;
    compute_local[(29)] = 0.000000e+00f;
    compute_local[(36)] = 0.000000e+00f;
    compute_local[(43)] = 0.000000e+00f;
    compute_local[(50)] = 0.000000e+00f;
    compute_local[(2)] = 0.000000e+00f;
    compute_local[(9)] = 0.000000e+00f;
    compute_local[(16)] = 0.000000e+00f;
    compute_local[(23)] = 0.000000e+00f;
    compute_local[(30)] = 0.000000e+00f;
    compute_local[(37)] = 0.000000e+00f;
    compute_local[(44)] = 0.000000e+00f;
    compute_local[(51)] = 0.000000e+00f;
    compute_local[(3)] = 0.000000e+00f;
    compute_local[(10)] = 0.000000e+00f;
    compute_local[(17)] = 0.000000e+00f;
    compute_local[(24)] = 0.000000e+00f;
    compute_local[(31)] = 0.000000e+00f;
    compute_local[(38)] = 0.000000e+00f;
    compute_local[(45)] = 0.000000e+00f;
    compute_local[(52)] = 0.000000e+00f;
    compute_local[(4)] = 0.000000e+00f;
    compute_local[(11)] = 0.000000e+00f;
    compute_local[(18)] = 0.000000e+00f;
    compute_local[(25)] = 0.000000e+00f;
    compute_local[(32)] = 0.000000e+00f;
    compute_local[(39)] = 0.000000e+00f;
    compute_local[(46)] = 0.000000e+00f;
    compute_local[(53)] = 0.000000e+00f;
    compute_local[(5)] = 0.000000e+00f;
    compute_local[(12)] = 0.000000e+00f;
    compute_local[(19)] = 0.000000e+00f;
    compute_local[(26)] = 0.000000e+00f;
    compute_local[(33)] = 0.000000e+00f;
    compute_local[(40)] = 0.000000e+00f;
    compute_local[(47)] = 0.000000e+00f;
    compute_local[(54)] = 0.000000e+00f;
    compute_local[(6)] = 0.000000e+00f;
    compute_local[(13)] = 0.000000e+00f;
    compute_local[(20)] = 0.000000e+00f;
    compute_local[(27)] = 0.000000e+00f;
    compute_local[(34)] = 0.000000e+00f;
    compute_local[(41)] = 0.000000e+00f;
    compute_local[(48)] = 0.000000e+00f;
    compute_local[(55)] = 0.000000e+00f;
    for (int rc_outer = 0; rc_outer < 16; ++rc_outer) {
        for (int rx_outer = 0; rx_outer < 3; ++rx_outer) {
            __syncthreads();
            pad_temp_shared[((((((int)threadIdx.z) * 560) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)))] = (((((1 <= ((((int)blockIdx.y) * 8) + (((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) / 56))) && (((((int)blockIdx.y) * 8) + (((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) / 56)) < 57)) && (1 <= (rx_outer + (((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) % 56)))) && ((rx_outer + (((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) % 56)) < 57)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + rx_outer) - 57))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 560) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + 1))] = (((((1 <= ((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 1) / 56))) && (((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 1) / 56)) < 57)) && (1 <= (rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 1) % 56)))) && ((rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 1) % 56)) < 57)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + rx_outer) - 56))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 560) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + 2))] = (((((1 <= ((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 2) / 56))) && (((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 2) / 56)) < 57)) && (1 <= (rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 2) % 56)))) && ((rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 2) % 56)) < 57)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + rx_outer) - 55))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 560) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + 3))] = (((((1 <= ((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 3) / 56))) && (((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 3) / 56)) < 57)) && (1 <= (rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 3) % 56)))) && ((rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 3) % 56)) < 57)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + rx_outer) - 54))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 560) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + 4))] = (((((1 <= ((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 4) / 56))) && (((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 4) / 56)) < 57)) && (1 <= (rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 4) % 56)))) && ((rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 4) % 56)) < 57)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + rx_outer) - 53))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 560) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + 5))] = (((((1 <= ((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 5) / 56))) && (((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 5) / 56)) < 57)) && (1 <= (rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 5) % 56)))) && ((rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 5) % 56)) < 57)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + rx_outer) - 52))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 560) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + 6))] = (((((1 <= ((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 6) / 56))) && (((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 6) / 56)) < 57)) && (1 <= (rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 6) % 56)))) && ((rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 6) % 56)) < 57)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + rx_outer) - 51))] : 0.000000e+00f);
            if ((((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 7) / 560) + ((int)threadIdx.z)) < 4) {
                if (((((int)threadIdx.z) * 10) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 7) / 56)) < 40) {
                    if ((((((int)threadIdx.z) * 560) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) < 2233) {
                        if (((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) < 553) {
                            if (((int)threadIdx.x) < 7) {
                                pad_temp_shared[(((((((int)threadIdx.z) * 560) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + 7))] = (((((1 <= ((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 7) / 56))) && (((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 7) / 56)) < 57)) && (1 <= (rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 7) % 56)))) && ((rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 7) % 56)) < 57)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + rx_outer) - 50))] : 0.000000e+00f);
                            }
                        }
                    }
                }
            }
            if ((((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 8) / 560) + ((int)threadIdx.z)) < 4) {
                if (((((int)threadIdx.z) * 10) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 8) / 56)) < 40) {
                    if ((((((int)threadIdx.z) * 560) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) < 2232) {
                        if (((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) < 552) {
                            if (((int)threadIdx.x) < 7) {
                                pad_temp_shared[(((((((int)threadIdx.z) * 560) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + 8))] = (((((1 <= ((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 8) / 56))) && (((((int)blockIdx.y) * 8) + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 8) / 56)) < 57)) && (1 <= (rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 8) % 56)))) && ((rx_outer + ((((((int)threadIdx.y) * 70) + (((int)threadIdx.x) * 9)) + 8) % 56)) < 57)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 70)) + (((int)threadIdx.x) * 9)) + rx_outer) - 49))] : 0.000000e+00f);
                            }
                        }
                    }
                }
            }
            if ((((((int)threadIdx.z) * 8) + (((int)threadIdx.x) / 6)) + ((int)threadIdx.y)) < 32) {
                if ((((((int)threadIdx.z) * 32) + (((int)threadIdx.y) * 4)) + ((((int)threadIdx.x) * 2) / 3)) < 128) {
                    if ((((((int)threadIdx.z) * 96) + (((int)threadIdx.y) * 12)) + (((int)threadIdx.x) * 2)) < 384) {
                        if (((((int)threadIdx.y) * 12) + (((int)threadIdx.x) * 2)) < 96) {
                            if (((int)threadIdx.x) < 6) {
                                kernel_shared[((((((int)threadIdx.z) * 96) + (((int)threadIdx.y) * 12)) + (((int)threadIdx.x) * 2)))] = kernel[((((((((int)threadIdx.z) * 4608) + (((int)threadIdx.y) * 576)) + (rc_outer * 36)) + (((int)threadIdx.x) * 6)) + rx_outer))];
                            }
                        }
                    }
                }
            }
            if ((((((int)threadIdx.z) * 8) + (((((int)threadIdx.x) * 2) + 1) / 12)) + ((int)threadIdx.y)) < 32) {
                if ((((((int)threadIdx.z) * 32) + (((int)threadIdx.y) * 4)) + (((((int)threadIdx.x) * 2) + 1) / 3)) < 128) {
                    if ((((((int)threadIdx.z) * 96) + (((int)threadIdx.y) * 12)) + (((int)threadIdx.x) * 2)) < 383) {
                        if (((((int)threadIdx.y) * 12) + (((int)threadIdx.x) * 2)) < 95) {
                            if (((int)threadIdx.x) < 6) {
                                kernel_shared[(((((((int)threadIdx.z) * 96) + (((int)threadIdx.y) * 12)) + (((int)threadIdx.x) * 2)) + 1))] = kernel[(((((((((int)threadIdx.z) * 4608) + (((int)threadIdx.y) * 576)) + (rc_outer * 36)) + (((int)threadIdx.x) * 6)) + rx_outer) + 3))];
                            }
                        }
                    }
                }
            }
            __syncthreads();
            pad_temp_shared_local[(0)] = pad_temp_shared[(((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)))];
            pad_temp_shared_local[(1)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1))];
            pad_temp_shared_local[(2)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 2))];
            pad_temp_shared_local[(3)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 3))];
            pad_temp_shared_local[(4)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 4))];
            pad_temp_shared_local[(5)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 5))];
            pad_temp_shared_local[(6)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 6))];
            pad_temp_shared_local[(7)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 56))];
            pad_temp_shared_local[(8)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 57))];
            pad_temp_shared_local[(9)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 58))];
            pad_temp_shared_local[(10)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 59))];
            pad_temp_shared_local[(11)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 60))];
            pad_temp_shared_local[(12)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 61))];
            pad_temp_shared_local[(13)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 62))];
            pad_temp_shared_local[(14)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 112))];
            pad_temp_shared_local[(15)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 113))];
            pad_temp_shared_local[(16)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 114))];
            pad_temp_shared_local[(17)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 115))];
            pad_temp_shared_local[(18)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 116))];
            pad_temp_shared_local[(19)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 117))];
            pad_temp_shared_local[(20)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 118))];
            pad_temp_shared_local[(21)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 560))];
            pad_temp_shared_local[(22)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 561))];
            pad_temp_shared_local[(23)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 562))];
            pad_temp_shared_local[(24)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 563))];
            pad_temp_shared_local[(25)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 564))];
            pad_temp_shared_local[(26)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 565))];
            pad_temp_shared_local[(27)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 566))];
            pad_temp_shared_local[(28)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 616))];
            pad_temp_shared_local[(29)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 617))];
            pad_temp_shared_local[(30)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 618))];
            pad_temp_shared_local[(31)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 619))];
            pad_temp_shared_local[(32)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 620))];
            pad_temp_shared_local[(33)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 621))];
            pad_temp_shared_local[(34)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 622))];
            pad_temp_shared_local[(35)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 672))];
            pad_temp_shared_local[(36)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 673))];
            pad_temp_shared_local[(37)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 674))];
            pad_temp_shared_local[(38)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 675))];
            pad_temp_shared_local[(39)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 676))];
            pad_temp_shared_local[(40)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 677))];
            pad_temp_shared_local[(41)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 678))];
            pad_temp_shared_local[(42)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1120))];
            pad_temp_shared_local[(43)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1121))];
            pad_temp_shared_local[(44)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1122))];
            pad_temp_shared_local[(45)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1123))];
            pad_temp_shared_local[(46)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1124))];
            pad_temp_shared_local[(47)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1125))];
            pad_temp_shared_local[(48)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1126))];
            pad_temp_shared_local[(49)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1176))];
            pad_temp_shared_local[(50)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1177))];
            pad_temp_shared_local[(51)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1178))];
            pad_temp_shared_local[(52)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1179))];
            pad_temp_shared_local[(53)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1180))];
            pad_temp_shared_local[(54)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1181))];
            pad_temp_shared_local[(55)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1182))];
            pad_temp_shared_local[(56)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1232))];
            pad_temp_shared_local[(57)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1233))];
            pad_temp_shared_local[(58)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1234))];
            pad_temp_shared_local[(59)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1235))];
            pad_temp_shared_local[(60)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1236))];
            pad_temp_shared_local[(61)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1237))];
            pad_temp_shared_local[(62)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1238))];
            pad_temp_shared_local[(63)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1680))];
            pad_temp_shared_local[(64)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1681))];
            pad_temp_shared_local[(65)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1682))];
            pad_temp_shared_local[(66)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1683))];
            pad_temp_shared_local[(67)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1684))];
            pad_temp_shared_local[(68)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1685))];
            pad_temp_shared_local[(69)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1686))];
            pad_temp_shared_local[(70)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1736))];
            pad_temp_shared_local[(71)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1737))];
            pad_temp_shared_local[(72)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1738))];
            pad_temp_shared_local[(73)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1739))];
            pad_temp_shared_local[(74)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1740))];
            pad_temp_shared_local[(75)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1741))];
            pad_temp_shared_local[(76)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1742))];
            pad_temp_shared_local[(77)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1792))];
            pad_temp_shared_local[(78)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1793))];
            pad_temp_shared_local[(79)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1794))];
            pad_temp_shared_local[(80)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1795))];
            pad_temp_shared_local[(81)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1796))];
            pad_temp_shared_local[(82)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1797))];
            pad_temp_shared_local[(83)] = pad_temp_shared[((((((int)threadIdx.y) * 56) + (((int)threadIdx.x) * 7)) + 1798))];
            kernel_shared_local[(0)] = kernel_shared[((((int)threadIdx.z) * 12))];
            kernel_shared_local[(12)] = kernel_shared[(((((int)threadIdx.z) * 12) + 48))];
            kernel_shared_local[(24)] = kernel_shared[(((((int)threadIdx.z) * 12) + 96))];
            kernel_shared_local[(36)] = kernel_shared[(((((int)threadIdx.z) * 12) + 144))];
            kernel_shared_local[(48)] = kernel_shared[(((((int)threadIdx.z) * 12) + 192))];
            kernel_shared_local[(60)] = kernel_shared[(((((int)threadIdx.z) * 12) + 240))];
            kernel_shared_local[(72)] = kernel_shared[(((((int)threadIdx.z) * 12) + 288))];
            kernel_shared_local[(84)] = kernel_shared[(((((int)threadIdx.z) * 12) + 336))];
            kernel_shared_local[(1)] = kernel_shared[(((((int)threadIdx.z) * 12) + 1))];
            kernel_shared_local[(13)] = kernel_shared[(((((int)threadIdx.z) * 12) + 49))];
            kernel_shared_local[(25)] = kernel_shared[(((((int)threadIdx.z) * 12) + 97))];
            kernel_shared_local[(37)] = kernel_shared[(((((int)threadIdx.z) * 12) + 145))];
            kernel_shared_local[(49)] = kernel_shared[(((((int)threadIdx.z) * 12) + 193))];
            kernel_shared_local[(61)] = kernel_shared[(((((int)threadIdx.z) * 12) + 241))];
            kernel_shared_local[(73)] = kernel_shared[(((((int)threadIdx.z) * 12) + 289))];
            kernel_shared_local[(85)] = kernel_shared[(((((int)threadIdx.z) * 12) + 337))];
            kernel_shared_local[(2)] = kernel_shared[(((((int)threadIdx.z) * 12) + 2))];
            kernel_shared_local[(14)] = kernel_shared[(((((int)threadIdx.z) * 12) + 50))];
            kernel_shared_local[(26)] = kernel_shared[(((((int)threadIdx.z) * 12) + 98))];
            kernel_shared_local[(38)] = kernel_shared[(((((int)threadIdx.z) * 12) + 146))];
            kernel_shared_local[(50)] = kernel_shared[(((((int)threadIdx.z) * 12) + 194))];
            kernel_shared_local[(62)] = kernel_shared[(((((int)threadIdx.z) * 12) + 242))];
            kernel_shared_local[(74)] = kernel_shared[(((((int)threadIdx.z) * 12) + 290))];
            kernel_shared_local[(86)] = kernel_shared[(((((int)threadIdx.z) * 12) + 338))];
            kernel_shared_local[(3)] = kernel_shared[(((((int)threadIdx.z) * 12) + 3))];
            kernel_shared_local[(15)] = kernel_shared[(((((int)threadIdx.z) * 12) + 51))];
            kernel_shared_local[(27)] = kernel_shared[(((((int)threadIdx.z) * 12) + 99))];
            kernel_shared_local[(39)] = kernel_shared[(((((int)threadIdx.z) * 12) + 147))];
            kernel_shared_local[(51)] = kernel_shared[(((((int)threadIdx.z) * 12) + 195))];
            kernel_shared_local[(63)] = kernel_shared[(((((int)threadIdx.z) * 12) + 243))];
            kernel_shared_local[(75)] = kernel_shared[(((((int)threadIdx.z) * 12) + 291))];
            kernel_shared_local[(87)] = kernel_shared[(((((int)threadIdx.z) * 12) + 339))];
            kernel_shared_local[(4)] = kernel_shared[(((((int)threadIdx.z) * 12) + 4))];
            kernel_shared_local[(16)] = kernel_shared[(((((int)threadIdx.z) * 12) + 52))];
            kernel_shared_local[(28)] = kernel_shared[(((((int)threadIdx.z) * 12) + 100))];
            kernel_shared_local[(40)] = kernel_shared[(((((int)threadIdx.z) * 12) + 148))];
            kernel_shared_local[(52)] = kernel_shared[(((((int)threadIdx.z) * 12) + 196))];
            kernel_shared_local[(64)] = kernel_shared[(((((int)threadIdx.z) * 12) + 244))];
            kernel_shared_local[(76)] = kernel_shared[(((((int)threadIdx.z) * 12) + 292))];
            kernel_shared_local[(88)] = kernel_shared[(((((int)threadIdx.z) * 12) + 340))];
            kernel_shared_local[(5)] = kernel_shared[(((((int)threadIdx.z) * 12) + 5))];
            kernel_shared_local[(17)] = kernel_shared[(((((int)threadIdx.z) * 12) + 53))];
            kernel_shared_local[(29)] = kernel_shared[(((((int)threadIdx.z) * 12) + 101))];
            kernel_shared_local[(41)] = kernel_shared[(((((int)threadIdx.z) * 12) + 149))];
            kernel_shared_local[(53)] = kernel_shared[(((((int)threadIdx.z) * 12) + 197))];
            kernel_shared_local[(65)] = kernel_shared[(((((int)threadIdx.z) * 12) + 245))];
            kernel_shared_local[(77)] = kernel_shared[(((((int)threadIdx.z) * 12) + 293))];
            kernel_shared_local[(89)] = kernel_shared[(((((int)threadIdx.z) * 12) + 341))];
            kernel_shared_local[(6)] = kernel_shared[(((((int)threadIdx.z) * 12) + 6))];
            kernel_shared_local[(18)] = kernel_shared[(((((int)threadIdx.z) * 12) + 54))];
            kernel_shared_local[(30)] = kernel_shared[(((((int)threadIdx.z) * 12) + 102))];
            kernel_shared_local[(42)] = kernel_shared[(((((int)threadIdx.z) * 12) + 150))];
            kernel_shared_local[(54)] = kernel_shared[(((((int)threadIdx.z) * 12) + 198))];
            kernel_shared_local[(66)] = kernel_shared[(((((int)threadIdx.z) * 12) + 246))];
            kernel_shared_local[(78)] = kernel_shared[(((((int)threadIdx.z) * 12) + 294))];
            kernel_shared_local[(90)] = kernel_shared[(((((int)threadIdx.z) * 12) + 342))];
            kernel_shared_local[(7)] = kernel_shared[(((((int)threadIdx.z) * 12) + 7))];
            kernel_shared_local[(19)] = kernel_shared[(((((int)threadIdx.z) * 12) + 55))];
            kernel_shared_local[(31)] = kernel_shared[(((((int)threadIdx.z) * 12) + 103))];
            kernel_shared_local[(43)] = kernel_shared[(((((int)threadIdx.z) * 12) + 151))];
            kernel_shared_local[(55)] = kernel_shared[(((((int)threadIdx.z) * 12) + 199))];
            kernel_shared_local[(67)] = kernel_shared[(((((int)threadIdx.z) * 12) + 247))];
            kernel_shared_local[(79)] = kernel_shared[(((((int)threadIdx.z) * 12) + 295))];
            kernel_shared_local[(91)] = kernel_shared[(((((int)threadIdx.z) * 12) + 343))];
            kernel_shared_local[(8)] = kernel_shared[(((((int)threadIdx.z) * 12) + 8))];
            kernel_shared_local[(20)] = kernel_shared[(((((int)threadIdx.z) * 12) + 56))];
            kernel_shared_local[(32)] = kernel_shared[(((((int)threadIdx.z) * 12) + 104))];
            kernel_shared_local[(44)] = kernel_shared[(((((int)threadIdx.z) * 12) + 152))];
            kernel_shared_local[(56)] = kernel_shared[(((((int)threadIdx.z) * 12) + 200))];
            kernel_shared_local[(68)] = kernel_shared[(((((int)threadIdx.z) * 12) + 248))];
            kernel_shared_local[(80)] = kernel_shared[(((((int)threadIdx.z) * 12) + 296))];
            kernel_shared_local[(92)] = kernel_shared[(((((int)threadIdx.z) * 12) + 344))];
            kernel_shared_local[(9)] = kernel_shared[(((((int)threadIdx.z) * 12) + 9))];
            kernel_shared_local[(21)] = kernel_shared[(((((int)threadIdx.z) * 12) + 57))];
            kernel_shared_local[(33)] = kernel_shared[(((((int)threadIdx.z) * 12) + 105))];
            kernel_shared_local[(45)] = kernel_shared[(((((int)threadIdx.z) * 12) + 153))];
            kernel_shared_local[(57)] = kernel_shared[(((((int)threadIdx.z) * 12) + 201))];
            kernel_shared_local[(69)] = kernel_shared[(((((int)threadIdx.z) * 12) + 249))];
            kernel_shared_local[(81)] = kernel_shared[(((((int)threadIdx.z) * 12) + 297))];
            kernel_shared_local[(93)] = kernel_shared[(((((int)threadIdx.z) * 12) + 345))];
            kernel_shared_local[(10)] = kernel_shared[(((((int)threadIdx.z) * 12) + 10))];
            kernel_shared_local[(22)] = kernel_shared[(((((int)threadIdx.z) * 12) + 58))];
            kernel_shared_local[(34)] = kernel_shared[(((((int)threadIdx.z) * 12) + 106))];
            kernel_shared_local[(46)] = kernel_shared[(((((int)threadIdx.z) * 12) + 154))];
            kernel_shared_local[(58)] = kernel_shared[(((((int)threadIdx.z) * 12) + 202))];
            kernel_shared_local[(70)] = kernel_shared[(((((int)threadIdx.z) * 12) + 250))];
            kernel_shared_local[(82)] = kernel_shared[(((((int)threadIdx.z) * 12) + 298))];
            kernel_shared_local[(94)] = kernel_shared[(((((int)threadIdx.z) * 12) + 346))];
            kernel_shared_local[(11)] = kernel_shared[(((((int)threadIdx.z) * 12) + 11))];
            kernel_shared_local[(23)] = kernel_shared[(((((int)threadIdx.z) * 12) + 59))];
            kernel_shared_local[(35)] = kernel_shared[(((((int)threadIdx.z) * 12) + 107))];
            kernel_shared_local[(47)] = kernel_shared[(((((int)threadIdx.z) * 12) + 155))];
            kernel_shared_local[(59)] = kernel_shared[(((((int)threadIdx.z) * 12) + 203))];
            kernel_shared_local[(71)] = kernel_shared[(((((int)threadIdx.z) * 12) + 251))];
            kernel_shared_local[(83)] = kernel_shared[(((((int)threadIdx.z) * 12) + 299))];
            kernel_shared_local[(95)] = kernel_shared[(((((int)threadIdx.z) * 12) + 347))];
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(12)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(24)]));
            compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(36)]));
            compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(48)]));
            compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(60)]));
            compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(72)]));
            compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(84)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(0)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(12)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(24)]));
            compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(36)]));
            compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(48)]));
            compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(60)]));
            compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(72)]));
            compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(84)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(0)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(12)]));
            compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(24)]));
            compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(36)]));
            compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(48)]));
            compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(60)]));
            compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(72)]));
            compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(84)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(0)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(12)]));
            compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(24)]));
            compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(36)]));
            compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(48)]));
            compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(60)]));
            compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(72)]));
            compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(84)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(0)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(12)]));
            compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(24)]));
            compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(36)]));
            compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(48)]));
            compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(60)]));
            compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(72)]));
            compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(84)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(0)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(12)]));
            compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(24)]));
            compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(36)]));
            compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(48)]));
            compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(60)]));
            compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(72)]));
            compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(84)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(0)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(12)]));
            compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(24)]));
            compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(36)]));
            compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(48)]));
            compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(60)]));
            compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(72)]));
            compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(84)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(1)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(13)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(25)]));
            compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(37)]));
            compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(49)]));
            compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(61)]));
            compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(73)]));
            compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(85)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(1)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(13)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(25)]));
            compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(37)]));
            compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(49)]));
            compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(61)]));
            compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(73)]));
            compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(85)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(1)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(13)]));
            compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(25)]));
            compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(37)]));
            compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(49)]));
            compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(61)]));
            compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(73)]));
            compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(85)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(1)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(13)]));
            compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(25)]));
            compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(37)]));
            compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(49)]));
            compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(61)]));
            compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(73)]));
            compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(85)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(1)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(13)]));
            compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(25)]));
            compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(37)]));
            compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(49)]));
            compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(61)]));
            compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(73)]));
            compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(85)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(1)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(13)]));
            compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(25)]));
            compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(37)]));
            compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(49)]));
            compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(61)]));
            compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(73)]));
            compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(85)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(1)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(13)]));
            compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(25)]));
            compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(37)]));
            compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(49)]));
            compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(61)]));
            compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(73)]));
            compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(85)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(2)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(14)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(26)]));
            compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(38)]));
            compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(50)]));
            compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(62)]));
            compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(74)]));
            compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(86)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(2)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(14)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(26)]));
            compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(38)]));
            compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(50)]));
            compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(62)]));
            compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(74)]));
            compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(86)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(2)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(14)]));
            compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(26)]));
            compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(38)]));
            compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(50)]));
            compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(62)]));
            compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(74)]));
            compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(86)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(2)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(14)]));
            compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(26)]));
            compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(38)]));
            compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(50)]));
            compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(62)]));
            compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(74)]));
            compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(86)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(2)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(14)]));
            compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(26)]));
            compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(38)]));
            compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(50)]));
            compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(62)]));
            compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(74)]));
            compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(86)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(2)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(14)]));
            compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(26)]));
            compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(38)]));
            compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(50)]));
            compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(62)]));
            compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(74)]));
            compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(86)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(2)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(14)]));
            compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(26)]));
            compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(38)]));
            compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(50)]));
            compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(62)]));
            compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(74)]));
            compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(86)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(3)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(15)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(27)]));
            compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(39)]));
            compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(51)]));
            compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(63)]));
            compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(75)]));
            compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(87)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(3)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(15)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(27)]));
            compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(39)]));
            compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(51)]));
            compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(63)]));
            compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(75)]));
            compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(87)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(3)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(15)]));
            compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(27)]));
            compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(39)]));
            compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(51)]));
            compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(63)]));
            compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(75)]));
            compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(87)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(24)] * kernel_shared_local[(3)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(24)] * kernel_shared_local[(15)]));
            compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(24)] * kernel_shared_local[(27)]));
            compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(24)] * kernel_shared_local[(39)]));
            compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(24)] * kernel_shared_local[(51)]));
            compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(24)] * kernel_shared_local[(63)]));
            compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(24)] * kernel_shared_local[(75)]));
            compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(24)] * kernel_shared_local[(87)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(25)] * kernel_shared_local[(3)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(25)] * kernel_shared_local[(15)]));
            compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(25)] * kernel_shared_local[(27)]));
            compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(25)] * kernel_shared_local[(39)]));
            compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(25)] * kernel_shared_local[(51)]));
            compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(25)] * kernel_shared_local[(63)]));
            compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(25)] * kernel_shared_local[(75)]));
            compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(25)] * kernel_shared_local[(87)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(26)] * kernel_shared_local[(3)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(26)] * kernel_shared_local[(15)]));
            compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(26)] * kernel_shared_local[(27)]));
            compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(26)] * kernel_shared_local[(39)]));
            compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(26)] * kernel_shared_local[(51)]));
            compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(26)] * kernel_shared_local[(63)]));
            compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(26)] * kernel_shared_local[(75)]));
            compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(26)] * kernel_shared_local[(87)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(27)] * kernel_shared_local[(3)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(27)] * kernel_shared_local[(15)]));
            compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(27)] * kernel_shared_local[(27)]));
            compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(27)] * kernel_shared_local[(39)]));
            compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(27)] * kernel_shared_local[(51)]));
            compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(27)] * kernel_shared_local[(63)]));
            compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(27)] * kernel_shared_local[(75)]));
            compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(27)] * kernel_shared_local[(87)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(28)] * kernel_shared_local[(4)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(28)] * kernel_shared_local[(16)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(28)] * kernel_shared_local[(28)]));
            compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(28)] * kernel_shared_local[(40)]));
            compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(28)] * kernel_shared_local[(52)]));
            compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(28)] * kernel_shared_local[(64)]));
            compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(28)] * kernel_shared_local[(76)]));
            compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(28)] * kernel_shared_local[(88)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(29)] * kernel_shared_local[(4)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(29)] * kernel_shared_local[(16)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(29)] * kernel_shared_local[(28)]));
            compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(29)] * kernel_shared_local[(40)]));
            compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(29)] * kernel_shared_local[(52)]));
            compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(29)] * kernel_shared_local[(64)]));
            compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(29)] * kernel_shared_local[(76)]));
            compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(29)] * kernel_shared_local[(88)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(30)] * kernel_shared_local[(4)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(30)] * kernel_shared_local[(16)]));
            compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(30)] * kernel_shared_local[(28)]));
            compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(30)] * kernel_shared_local[(40)]));
            compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(30)] * kernel_shared_local[(52)]));
            compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(30)] * kernel_shared_local[(64)]));
            compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(30)] * kernel_shared_local[(76)]));
            compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(30)] * kernel_shared_local[(88)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(31)] * kernel_shared_local[(4)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(31)] * kernel_shared_local[(16)]));
            compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(31)] * kernel_shared_local[(28)]));
            compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(31)] * kernel_shared_local[(40)]));
            compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(31)] * kernel_shared_local[(52)]));
            compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(31)] * kernel_shared_local[(64)]));
            compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(31)] * kernel_shared_local[(76)]));
            compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(31)] * kernel_shared_local[(88)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(32)] * kernel_shared_local[(4)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(32)] * kernel_shared_local[(16)]));
            compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(32)] * kernel_shared_local[(28)]));
            compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(32)] * kernel_shared_local[(40)]));
            compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(32)] * kernel_shared_local[(52)]));
            compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(32)] * kernel_shared_local[(64)]));
            compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(32)] * kernel_shared_local[(76)]));
            compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(32)] * kernel_shared_local[(88)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(33)] * kernel_shared_local[(4)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(33)] * kernel_shared_local[(16)]));
            compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(33)] * kernel_shared_local[(28)]));
            compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(33)] * kernel_shared_local[(40)]));
            compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(33)] * kernel_shared_local[(52)]));
            compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(33)] * kernel_shared_local[(64)]));
            compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(33)] * kernel_shared_local[(76)]));
            compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(33)] * kernel_shared_local[(88)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(34)] * kernel_shared_local[(4)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(34)] * kernel_shared_local[(16)]));
            compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(34)] * kernel_shared_local[(28)]));
            compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(34)] * kernel_shared_local[(40)]));
            compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(34)] * kernel_shared_local[(52)]));
            compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(34)] * kernel_shared_local[(64)]));
            compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(34)] * kernel_shared_local[(76)]));
            compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(34)] * kernel_shared_local[(88)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(35)] * kernel_shared_local[(5)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(35)] * kernel_shared_local[(17)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(35)] * kernel_shared_local[(29)]));
            compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(35)] * kernel_shared_local[(41)]));
            compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(35)] * kernel_shared_local[(53)]));
            compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(35)] * kernel_shared_local[(65)]));
            compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(35)] * kernel_shared_local[(77)]));
            compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(35)] * kernel_shared_local[(89)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(36)] * kernel_shared_local[(5)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(36)] * kernel_shared_local[(17)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(36)] * kernel_shared_local[(29)]));
            compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(36)] * kernel_shared_local[(41)]));
            compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(36)] * kernel_shared_local[(53)]));
            compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(36)] * kernel_shared_local[(65)]));
            compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(36)] * kernel_shared_local[(77)]));
            compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(36)] * kernel_shared_local[(89)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(37)] * kernel_shared_local[(5)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(37)] * kernel_shared_local[(17)]));
            compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(37)] * kernel_shared_local[(29)]));
            compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(37)] * kernel_shared_local[(41)]));
            compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(37)] * kernel_shared_local[(53)]));
            compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(37)] * kernel_shared_local[(65)]));
            compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(37)] * kernel_shared_local[(77)]));
            compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(37)] * kernel_shared_local[(89)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(38)] * kernel_shared_local[(5)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(38)] * kernel_shared_local[(17)]));
            compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(38)] * kernel_shared_local[(29)]));
            compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(38)] * kernel_shared_local[(41)]));
            compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(38)] * kernel_shared_local[(53)]));
            compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(38)] * kernel_shared_local[(65)]));
            compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(38)] * kernel_shared_local[(77)]));
            compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(38)] * kernel_shared_local[(89)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(39)] * kernel_shared_local[(5)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(39)] * kernel_shared_local[(17)]));
            compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(39)] * kernel_shared_local[(29)]));
            compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(39)] * kernel_shared_local[(41)]));
            compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(39)] * kernel_shared_local[(53)]));
            compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(39)] * kernel_shared_local[(65)]));
            compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(39)] * kernel_shared_local[(77)]));
            compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(39)] * kernel_shared_local[(89)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(40)] * kernel_shared_local[(5)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(40)] * kernel_shared_local[(17)]));
            compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(40)] * kernel_shared_local[(29)]));
            compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(40)] * kernel_shared_local[(41)]));
            compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(40)] * kernel_shared_local[(53)]));
            compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(40)] * kernel_shared_local[(65)]));
            compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(40)] * kernel_shared_local[(77)]));
            compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(40)] * kernel_shared_local[(89)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(41)] * kernel_shared_local[(5)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(41)] * kernel_shared_local[(17)]));
            compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(41)] * kernel_shared_local[(29)]));
            compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(41)] * kernel_shared_local[(41)]));
            compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(41)] * kernel_shared_local[(53)]));
            compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(41)] * kernel_shared_local[(65)]));
            compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(41)] * kernel_shared_local[(77)]));
            compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(41)] * kernel_shared_local[(89)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(42)] * kernel_shared_local[(6)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(42)] * kernel_shared_local[(18)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(42)] * kernel_shared_local[(30)]));
            compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(42)] * kernel_shared_local[(42)]));
            compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(42)] * kernel_shared_local[(54)]));
            compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(42)] * kernel_shared_local[(66)]));
            compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(42)] * kernel_shared_local[(78)]));
            compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(42)] * kernel_shared_local[(90)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(43)] * kernel_shared_local[(6)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(43)] * kernel_shared_local[(18)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(43)] * kernel_shared_local[(30)]));
            compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(43)] * kernel_shared_local[(42)]));
            compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(43)] * kernel_shared_local[(54)]));
            compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(43)] * kernel_shared_local[(66)]));
            compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(43)] * kernel_shared_local[(78)]));
            compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(43)] * kernel_shared_local[(90)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(44)] * kernel_shared_local[(6)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(44)] * kernel_shared_local[(18)]));
            compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(44)] * kernel_shared_local[(30)]));
            compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(44)] * kernel_shared_local[(42)]));
            compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(44)] * kernel_shared_local[(54)]));
            compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(44)] * kernel_shared_local[(66)]));
            compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(44)] * kernel_shared_local[(78)]));
            compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(44)] * kernel_shared_local[(90)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(45)] * kernel_shared_local[(6)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(45)] * kernel_shared_local[(18)]));
            compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(45)] * kernel_shared_local[(30)]));
            compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(45)] * kernel_shared_local[(42)]));
            compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(45)] * kernel_shared_local[(54)]));
            compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(45)] * kernel_shared_local[(66)]));
            compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(45)] * kernel_shared_local[(78)]));
            compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(45)] * kernel_shared_local[(90)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(46)] * kernel_shared_local[(6)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(46)] * kernel_shared_local[(18)]));
            compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(46)] * kernel_shared_local[(30)]));
            compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(46)] * kernel_shared_local[(42)]));
            compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(46)] * kernel_shared_local[(54)]));
            compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(46)] * kernel_shared_local[(66)]));
            compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(46)] * kernel_shared_local[(78)]));
            compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(46)] * kernel_shared_local[(90)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(47)] * kernel_shared_local[(6)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(47)] * kernel_shared_local[(18)]));
            compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(47)] * kernel_shared_local[(30)]));
            compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(47)] * kernel_shared_local[(42)]));
            compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(47)] * kernel_shared_local[(54)]));
            compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(47)] * kernel_shared_local[(66)]));
            compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(47)] * kernel_shared_local[(78)]));
            compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(47)] * kernel_shared_local[(90)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(48)] * kernel_shared_local[(6)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(48)] * kernel_shared_local[(18)]));
            compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(48)] * kernel_shared_local[(30)]));
            compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(48)] * kernel_shared_local[(42)]));
            compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(48)] * kernel_shared_local[(54)]));
            compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(48)] * kernel_shared_local[(66)]));
            compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(48)] * kernel_shared_local[(78)]));
            compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(48)] * kernel_shared_local[(90)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(49)] * kernel_shared_local[(7)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(49)] * kernel_shared_local[(19)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(49)] * kernel_shared_local[(31)]));
            compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(49)] * kernel_shared_local[(43)]));
            compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(49)] * kernel_shared_local[(55)]));
            compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(49)] * kernel_shared_local[(67)]));
            compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(49)] * kernel_shared_local[(79)]));
            compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(49)] * kernel_shared_local[(91)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(50)] * kernel_shared_local[(7)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(50)] * kernel_shared_local[(19)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(50)] * kernel_shared_local[(31)]));
            compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(50)] * kernel_shared_local[(43)]));
            compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(50)] * kernel_shared_local[(55)]));
            compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(50)] * kernel_shared_local[(67)]));
            compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(50)] * kernel_shared_local[(79)]));
            compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(50)] * kernel_shared_local[(91)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(51)] * kernel_shared_local[(7)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(51)] * kernel_shared_local[(19)]));
            compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(51)] * kernel_shared_local[(31)]));
            compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(51)] * kernel_shared_local[(43)]));
            compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(51)] * kernel_shared_local[(55)]));
            compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(51)] * kernel_shared_local[(67)]));
            compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(51)] * kernel_shared_local[(79)]));
            compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(51)] * kernel_shared_local[(91)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(52)] * kernel_shared_local[(7)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(52)] * kernel_shared_local[(19)]));
            compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(52)] * kernel_shared_local[(31)]));
            compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(52)] * kernel_shared_local[(43)]));
            compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(52)] * kernel_shared_local[(55)]));
            compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(52)] * kernel_shared_local[(67)]));
            compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(52)] * kernel_shared_local[(79)]));
            compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(52)] * kernel_shared_local[(91)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(53)] * kernel_shared_local[(7)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(53)] * kernel_shared_local[(19)]));
            compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(53)] * kernel_shared_local[(31)]));
            compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(53)] * kernel_shared_local[(43)]));
            compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(53)] * kernel_shared_local[(55)]));
            compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(53)] * kernel_shared_local[(67)]));
            compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(53)] * kernel_shared_local[(79)]));
            compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(53)] * kernel_shared_local[(91)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(54)] * kernel_shared_local[(7)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(54)] * kernel_shared_local[(19)]));
            compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(54)] * kernel_shared_local[(31)]));
            compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(54)] * kernel_shared_local[(43)]));
            compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(54)] * kernel_shared_local[(55)]));
            compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(54)] * kernel_shared_local[(67)]));
            compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(54)] * kernel_shared_local[(79)]));
            compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(54)] * kernel_shared_local[(91)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(55)] * kernel_shared_local[(7)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(55)] * kernel_shared_local[(19)]));
            compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(55)] * kernel_shared_local[(31)]));
            compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(55)] * kernel_shared_local[(43)]));
            compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(55)] * kernel_shared_local[(55)]));
            compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(55)] * kernel_shared_local[(67)]));
            compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(55)] * kernel_shared_local[(79)]));
            compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(55)] * kernel_shared_local[(91)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(56)] * kernel_shared_local[(8)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(56)] * kernel_shared_local[(20)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(56)] * kernel_shared_local[(32)]));
            compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(56)] * kernel_shared_local[(44)]));
            compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(56)] * kernel_shared_local[(56)]));
            compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(56)] * kernel_shared_local[(68)]));
            compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(56)] * kernel_shared_local[(80)]));
            compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(56)] * kernel_shared_local[(92)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(57)] * kernel_shared_local[(8)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(57)] * kernel_shared_local[(20)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(57)] * kernel_shared_local[(32)]));
            compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(57)] * kernel_shared_local[(44)]));
            compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(57)] * kernel_shared_local[(56)]));
            compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(57)] * kernel_shared_local[(68)]));
            compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(57)] * kernel_shared_local[(80)]));
            compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(57)] * kernel_shared_local[(92)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(58)] * kernel_shared_local[(8)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(58)] * kernel_shared_local[(20)]));
            compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(58)] * kernel_shared_local[(32)]));
            compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(58)] * kernel_shared_local[(44)]));
            compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(58)] * kernel_shared_local[(56)]));
            compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(58)] * kernel_shared_local[(68)]));
            compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(58)] * kernel_shared_local[(80)]));
            compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(58)] * kernel_shared_local[(92)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(59)] * kernel_shared_local[(8)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(59)] * kernel_shared_local[(20)]));
            compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(59)] * kernel_shared_local[(32)]));
            compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(59)] * kernel_shared_local[(44)]));
            compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(59)] * kernel_shared_local[(56)]));
            compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(59)] * kernel_shared_local[(68)]));
            compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(59)] * kernel_shared_local[(80)]));
            compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(59)] * kernel_shared_local[(92)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(60)] * kernel_shared_local[(8)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(60)] * kernel_shared_local[(20)]));
            compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(60)] * kernel_shared_local[(32)]));
            compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(60)] * kernel_shared_local[(44)]));
            compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(60)] * kernel_shared_local[(56)]));
            compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(60)] * kernel_shared_local[(68)]));
            compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(60)] * kernel_shared_local[(80)]));
            compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(60)] * kernel_shared_local[(92)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(61)] * kernel_shared_local[(8)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(61)] * kernel_shared_local[(20)]));
            compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(61)] * kernel_shared_local[(32)]));
            compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(61)] * kernel_shared_local[(44)]));
            compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(61)] * kernel_shared_local[(56)]));
            compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(61)] * kernel_shared_local[(68)]));
            compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(61)] * kernel_shared_local[(80)]));
            compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(61)] * kernel_shared_local[(92)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(62)] * kernel_shared_local[(8)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(62)] * kernel_shared_local[(20)]));
            compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(62)] * kernel_shared_local[(32)]));
            compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(62)] * kernel_shared_local[(44)]));
            compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(62)] * kernel_shared_local[(56)]));
            compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(62)] * kernel_shared_local[(68)]));
            compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(62)] * kernel_shared_local[(80)]));
            compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(62)] * kernel_shared_local[(92)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(63)] * kernel_shared_local[(9)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(63)] * kernel_shared_local[(21)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(63)] * kernel_shared_local[(33)]));
            compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(63)] * kernel_shared_local[(45)]));
            compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(63)] * kernel_shared_local[(57)]));
            compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(63)] * kernel_shared_local[(69)]));
            compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(63)] * kernel_shared_local[(81)]));
            compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(63)] * kernel_shared_local[(93)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(64)] * kernel_shared_local[(9)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(64)] * kernel_shared_local[(21)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(64)] * kernel_shared_local[(33)]));
            compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(64)] * kernel_shared_local[(45)]));
            compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(64)] * kernel_shared_local[(57)]));
            compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(64)] * kernel_shared_local[(69)]));
            compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(64)] * kernel_shared_local[(81)]));
            compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(64)] * kernel_shared_local[(93)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(65)] * kernel_shared_local[(9)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(65)] * kernel_shared_local[(21)]));
            compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(65)] * kernel_shared_local[(33)]));
            compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(65)] * kernel_shared_local[(45)]));
            compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(65)] * kernel_shared_local[(57)]));
            compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(65)] * kernel_shared_local[(69)]));
            compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(65)] * kernel_shared_local[(81)]));
            compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(65)] * kernel_shared_local[(93)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(66)] * kernel_shared_local[(9)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(66)] * kernel_shared_local[(21)]));
            compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(66)] * kernel_shared_local[(33)]));
            compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(66)] * kernel_shared_local[(45)]));
            compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(66)] * kernel_shared_local[(57)]));
            compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(66)] * kernel_shared_local[(69)]));
            compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(66)] * kernel_shared_local[(81)]));
            compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(66)] * kernel_shared_local[(93)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(67)] * kernel_shared_local[(9)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(67)] * kernel_shared_local[(21)]));
            compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(67)] * kernel_shared_local[(33)]));
            compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(67)] * kernel_shared_local[(45)]));
            compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(67)] * kernel_shared_local[(57)]));
            compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(67)] * kernel_shared_local[(69)]));
            compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(67)] * kernel_shared_local[(81)]));
            compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(67)] * kernel_shared_local[(93)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(68)] * kernel_shared_local[(9)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(68)] * kernel_shared_local[(21)]));
            compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(68)] * kernel_shared_local[(33)]));
            compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(68)] * kernel_shared_local[(45)]));
            compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(68)] * kernel_shared_local[(57)]));
            compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(68)] * kernel_shared_local[(69)]));
            compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(68)] * kernel_shared_local[(81)]));
            compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(68)] * kernel_shared_local[(93)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(69)] * kernel_shared_local[(9)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(69)] * kernel_shared_local[(21)]));
            compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(69)] * kernel_shared_local[(33)]));
            compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(69)] * kernel_shared_local[(45)]));
            compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(69)] * kernel_shared_local[(57)]));
            compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(69)] * kernel_shared_local[(69)]));
            compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(69)] * kernel_shared_local[(81)]));
            compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(69)] * kernel_shared_local[(93)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(70)] * kernel_shared_local[(10)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(70)] * kernel_shared_local[(22)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(70)] * kernel_shared_local[(34)]));
            compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(70)] * kernel_shared_local[(46)]));
            compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(70)] * kernel_shared_local[(58)]));
            compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(70)] * kernel_shared_local[(70)]));
            compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(70)] * kernel_shared_local[(82)]));
            compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(70)] * kernel_shared_local[(94)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(71)] * kernel_shared_local[(10)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(71)] * kernel_shared_local[(22)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(71)] * kernel_shared_local[(34)]));
            compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(71)] * kernel_shared_local[(46)]));
            compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(71)] * kernel_shared_local[(58)]));
            compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(71)] * kernel_shared_local[(70)]));
            compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(71)] * kernel_shared_local[(82)]));
            compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(71)] * kernel_shared_local[(94)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(72)] * kernel_shared_local[(10)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(72)] * kernel_shared_local[(22)]));
            compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(72)] * kernel_shared_local[(34)]));
            compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(72)] * kernel_shared_local[(46)]));
            compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(72)] * kernel_shared_local[(58)]));
            compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(72)] * kernel_shared_local[(70)]));
            compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(72)] * kernel_shared_local[(82)]));
            compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(72)] * kernel_shared_local[(94)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(73)] * kernel_shared_local[(10)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(73)] * kernel_shared_local[(22)]));
            compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(73)] * kernel_shared_local[(34)]));
            compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(73)] * kernel_shared_local[(46)]));
            compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(73)] * kernel_shared_local[(58)]));
            compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(73)] * kernel_shared_local[(70)]));
            compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(73)] * kernel_shared_local[(82)]));
            compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(73)] * kernel_shared_local[(94)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(74)] * kernel_shared_local[(10)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(74)] * kernel_shared_local[(22)]));
            compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(74)] * kernel_shared_local[(34)]));
            compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(74)] * kernel_shared_local[(46)]));
            compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(74)] * kernel_shared_local[(58)]));
            compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(74)] * kernel_shared_local[(70)]));
            compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(74)] * kernel_shared_local[(82)]));
            compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(74)] * kernel_shared_local[(94)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(75)] * kernel_shared_local[(10)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(75)] * kernel_shared_local[(22)]));
            compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(75)] * kernel_shared_local[(34)]));
            compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(75)] * kernel_shared_local[(46)]));
            compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(75)] * kernel_shared_local[(58)]));
            compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(75)] * kernel_shared_local[(70)]));
            compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(75)] * kernel_shared_local[(82)]));
            compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(75)] * kernel_shared_local[(94)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(76)] * kernel_shared_local[(10)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(76)] * kernel_shared_local[(22)]));
            compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(76)] * kernel_shared_local[(34)]));
            compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(76)] * kernel_shared_local[(46)]));
            compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(76)] * kernel_shared_local[(58)]));
            compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(76)] * kernel_shared_local[(70)]));
            compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(76)] * kernel_shared_local[(82)]));
            compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(76)] * kernel_shared_local[(94)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(77)] * kernel_shared_local[(11)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(77)] * kernel_shared_local[(23)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(77)] * kernel_shared_local[(35)]));
            compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(77)] * kernel_shared_local[(47)]));
            compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(77)] * kernel_shared_local[(59)]));
            compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(77)] * kernel_shared_local[(71)]));
            compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(77)] * kernel_shared_local[(83)]));
            compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(77)] * kernel_shared_local[(95)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(78)] * kernel_shared_local[(11)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(78)] * kernel_shared_local[(23)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(78)] * kernel_shared_local[(35)]));
            compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(78)] * kernel_shared_local[(47)]));
            compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(78)] * kernel_shared_local[(59)]));
            compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(78)] * kernel_shared_local[(71)]));
            compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(78)] * kernel_shared_local[(83)]));
            compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(78)] * kernel_shared_local[(95)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(79)] * kernel_shared_local[(11)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(79)] * kernel_shared_local[(23)]));
            compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(79)] * kernel_shared_local[(35)]));
            compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(79)] * kernel_shared_local[(47)]));
            compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(79)] * kernel_shared_local[(59)]));
            compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(79)] * kernel_shared_local[(71)]));
            compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(79)] * kernel_shared_local[(83)]));
            compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(79)] * kernel_shared_local[(95)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(80)] * kernel_shared_local[(11)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(80)] * kernel_shared_local[(23)]));
            compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(80)] * kernel_shared_local[(35)]));
            compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(80)] * kernel_shared_local[(47)]));
            compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(80)] * kernel_shared_local[(59)]));
            compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(80)] * kernel_shared_local[(71)]));
            compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(80)] * kernel_shared_local[(83)]));
            compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(80)] * kernel_shared_local[(95)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(81)] * kernel_shared_local[(11)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(81)] * kernel_shared_local[(23)]));
            compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(81)] * kernel_shared_local[(35)]));
            compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(81)] * kernel_shared_local[(47)]));
            compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(81)] * kernel_shared_local[(59)]));
            compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(81)] * kernel_shared_local[(71)]));
            compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(81)] * kernel_shared_local[(83)]));
            compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(81)] * kernel_shared_local[(95)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(82)] * kernel_shared_local[(11)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(82)] * kernel_shared_local[(23)]));
            compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(82)] * kernel_shared_local[(35)]));
            compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(82)] * kernel_shared_local[(47)]));
            compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(82)] * kernel_shared_local[(59)]));
            compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(82)] * kernel_shared_local[(71)]));
            compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(82)] * kernel_shared_local[(83)]));
            compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(82)] * kernel_shared_local[(95)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(83)] * kernel_shared_local[(11)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(83)] * kernel_shared_local[(23)]));
            compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(83)] * kernel_shared_local[(35)]));
            compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(83)] * kernel_shared_local[(47)]));
            compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(83)] * kernel_shared_local[(59)]));
            compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(83)] * kernel_shared_local[(71)]));
            compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(83)] * kernel_shared_local[(83)]));
            compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(83)] * kernel_shared_local[(95)]));
        }
    }
    compute[(((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)))] = compute_local[(0)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 12544))] = compute_local[(7)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 25088))] = compute_local[(14)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 37632))] = compute_local[(21)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 50176))] = compute_local[(28)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 62720))] = compute_local[(35)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 75264))] = compute_local[(42)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 87808))] = compute_local[(49)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 1))] = compute_local[(1)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 12545))] = compute_local[(8)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 25089))] = compute_local[(15)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 37633))] = compute_local[(22)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 50177))] = compute_local[(29)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 62721))] = compute_local[(36)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 75265))] = compute_local[(43)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 87809))] = compute_local[(50)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 2))] = compute_local[(2)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 12546))] = compute_local[(9)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 25090))] = compute_local[(16)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 37634))] = compute_local[(23)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 50178))] = compute_local[(30)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 62722))] = compute_local[(37)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 75266))] = compute_local[(44)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 87810))] = compute_local[(51)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 3))] = compute_local[(3)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 12547))] = compute_local[(10)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 25091))] = compute_local[(17)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 37635))] = compute_local[(24)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 50179))] = compute_local[(31)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 62723))] = compute_local[(38)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 75267))] = compute_local[(45)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 87811))] = compute_local[(52)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 4))] = compute_local[(4)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 12548))] = compute_local[(11)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 25092))] = compute_local[(18)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 37636))] = compute_local[(25)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 50180))] = compute_local[(32)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 62724))] = compute_local[(39)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 75268))] = compute_local[(46)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 87812))] = compute_local[(53)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 5))] = compute_local[(5)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 12549))] = compute_local[(12)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 25093))] = compute_local[(19)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 37637))] = compute_local[(26)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 50181))] = compute_local[(33)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 62725))] = compute_local[(40)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 75269))] = compute_local[(47)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 87813))] = compute_local[(54)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 6))] = compute_local[(6)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 12550))] = compute_local[(13)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 25094))] = compute_local[(20)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 37638))] = compute_local[(27)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 50182))] = compute_local[(34)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 62726))] = compute_local[(41)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 75270))] = compute_local[(48)];
    compute[((((((((int)threadIdx.z) * 3136) + (((int)blockIdx.y) * 448)) + (((int)threadIdx.y) * 56)) + (((int)threadIdx.x) * 7)) + 87814))] = compute_local[(55)];
}
//grid=(4,8,1),  block=(1,7,16)
extern "C" __global__ void conv_32_32_56_56(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[28];
    __shared__ float pad_temp_shared[4032];
    __shared__ float kernel_shared[3072];
    float pad_temp_shared_local[84];
    float kernel_shared_local[12];
#pragma unroll
    for (int ff_c_init = 0; ff_c_init < 2; ++ff_c_init) {
#pragma unroll
        for (int xx_c_init = 0; xx_c_init < 7; ++xx_c_init) {
            compute_local[(((ff_c_init * 7) + xx_c_init))] = 0.000000e+00f;
            compute_local[((((ff_c_init * 7) + xx_c_init) + 14))] = 0.000000e+00f;
        }
    }
    for (int rx_outer = 0; rx_outer < 3; ++rx_outer) {
        __syncthreads();
#pragma unroll
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 36; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
            pad_temp_shared[((((((int)threadIdx.z) * 252) + (((int)threadIdx.y) * 36)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= ((((int)blockIdx.y) * 7) + ((((((int)threadIdx.y) * 36) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 126) / 14))) && (((((int)blockIdx.y) * 7) + ((((((int)threadIdx.y) * 36) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 126) / 14)) < 57)) && (1 <= (((((int)blockIdx.x) * 14) + rx_outer) + (((((int)threadIdx.y) * 36) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 14)))) && ((((((int)blockIdx.x) * 14) + rx_outer) + (((((int)threadIdx.y) * 36) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 14)) < 57)) ? data[(((((((((((int)threadIdx.z) * 6272) + ((((((int)threadIdx.y) * 36) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 126) * 3136)) + (((int)blockIdx.y) * 392)) + (((((((int)threadIdx.y) * 36) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 126) / 14) * 56)) + (((int)blockIdx.x) * 14)) + rx_outer) + (((((int)threadIdx.y) * 36) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 14)) - 57))] : 0.000000e+00f);
        }
#pragma unroll
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 28; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
            if (((((int)threadIdx.z) * 2) + (((((int)threadIdx.y) * 28) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) / 96)) < 32) {
                if (((((int)threadIdx.z) * 64) + (((((int)threadIdx.y) * 28) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) / 3)) < 1024) {
                    if ((((((int)threadIdx.z) * 192) + (((int)threadIdx.y) * 28)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 3072) {
                        if (((((int)threadIdx.y) * 28) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 192) {
                            kernel_shared[((((((int)threadIdx.z) * 192) + (((int)threadIdx.y) * 28)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 84)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 * 3)) + rx_outer))];
                        }
                    }
                }
            }
        }
        __syncthreads();
        for (int rc_inner_outer = 0; rc_inner_outer < 16; ++rc_inner_outer) {
#pragma unroll
            for (int ax1 = 0; ax1 < 2; ++ax1) {
#pragma unroll
                for (int ax2 = 0; ax2 < 3; ++ax2) {
#pragma unroll
                    for (int ax3 = 0; ax3 < 7; ++ax3) {
                        pad_temp_shared_local[((((ax1 * 21) + (ax2 * 7)) + ax3))] = pad_temp_shared[((((((rc_inner_outer * 252) + (ax1 * 126)) + (ax2 * 14)) + (((int)threadIdx.y) * 14)) + ax3))];
                        pad_temp_shared_local[(((((ax1 * 21) + (ax2 * 7)) + ax3) + 42))] = pad_temp_shared[(((((((rc_inner_outer * 252) + (ax1 * 126)) + (ax2 * 14)) + (((int)threadIdx.y) * 14)) + ax3) + 7))];
                    }
                }
            }
#pragma unroll
            for (int ax0 = 0; ax0 < 2; ++ax0) {
#pragma unroll
                for (int ax11 = 0; ax11 < 2; ++ax11) {
#pragma unroll
                    for (int ax21 = 0; ax21 < 3; ++ax21) {
                        kernel_shared_local[((((ax0 * 6) + (ax11 * 3)) + ax21))] = kernel_shared[((((((((int)threadIdx.z) * 192) + (ax0 * 96)) + (rc_inner_outer * 6)) + (ax11 * 3)) + ax21))];
                    }
                }
            }
#pragma unroll
            for (int rc_inner_inner = 0; rc_inner_inner < 2; ++rc_inner_inner) {
#pragma unroll
                for (int ry_inner_inner = 0; ry_inner_inner < 3; ++ry_inner_inner) {
#pragma unroll
                    for (int ff_c = 0; ff_c < 2; ++ff_c) {
#pragma unroll
                        for (int xx_c = 0; xx_c < 7; ++xx_c) {
                            compute_local[(((ff_c * 7) + xx_c))] = (compute_local[(((ff_c * 7) + xx_c))] + (pad_temp_shared_local[((((rc_inner_inner * 21) + (ry_inner_inner * 7)) + xx_c))] * kernel_shared_local[((((ff_c * 6) + (rc_inner_inner * 3)) + ry_inner_inner))]));
                            compute_local[((((ff_c * 7) + xx_c) + 14))] = (compute_local[((((ff_c * 7) + xx_c) + 14))] + (pad_temp_shared_local[(((((rc_inner_inner * 21) + (ry_inner_inner * 7)) + xx_c) + 42))] * kernel_shared_local[((((ff_c * 6) + (rc_inner_inner * 3)) + ry_inner_inner))]));
                        }
                    }
                }
            }
        }
    }
#pragma unroll
    for (int ff_inner_inner_inner = 0; ff_inner_inner_inner < 2; ++ff_inner_inner_inner) {
#pragma unroll
        for (int xx_inner_inner_inner = 0; xx_inner_inner_inner < 7; ++xx_inner_inner_inner) {
            compute[(((((((((int)threadIdx.z) * 6272) + (ff_inner_inner_inner * 3136)) + (((int)blockIdx.y) * 392)) + (((int)threadIdx.y) * 56)) + (((int)blockIdx.x) * 14)) + xx_inner_inner_inner))] = compute_local[(((ff_inner_inner_inner * 7) + xx_inner_inner_inner))];
            compute[((((((((((int)threadIdx.z) * 6272) + (ff_inner_inner_inner * 3136)) + (((int)blockIdx.y) * 392)) + (((int)threadIdx.y) * 56)) + (((int)blockIdx.x) * 14)) + xx_inner_inner_inner) + 7))] = compute_local[((((ff_inner_inner_inner * 7) + xx_inner_inner_inner) + 14))];
        }
    }
}
//grid=(1,7,3),  block=(7,4,8)
extern "C" __global__ void conv_96_64_28_28(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[16];
    __shared__ float pad_temp_shared[1344];
    __shared__ float kernel_shared[768];
    float pad_temp_shared_local[24];
    float kernel_shared_local[24];
    #pragma unroll
    for (int ff_c_init = 0; ff_c_init < 2; ++ff_c_init) {
        #pragma unroll
        for (int xx_c_init = 0; xx_c_init < 2; ++xx_c_init) {
            compute_local[(((ff_c_init * 2) + xx_c_init))] = 0.000000e+00f;
            compute_local[((((ff_c_init * 2) + xx_c_init) + 8))] = 0.000000e+00f;
            compute_local[((((ff_c_init * 2) + xx_c_init) + 4))] = 0.000000e+00f;
            compute_local[((((ff_c_init * 2) + xx_c_init) + 12))] = 0.000000e+00f;
        }
    }
    for (int rc_outer = 0; rc_outer < 8; ++rc_outer) {
        for (int rx_outer = 0; rx_outer < 3; ++rx_outer) {
            __syncthreads();
            #pragma unroll
            for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 6; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
                pad_temp_shared[(((((((int)threadIdx.z) * 168) + (((int)threadIdx.y) * 42)) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= ((((int)blockIdx.y) * 4) + ((((((int)threadIdx.y) * 42) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 28))) && (((((int)blockIdx.y) * 4) + ((((((int)threadIdx.y) * 42) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 28)) < 29)) && (1 <= (rx_outer + ((((((int)threadIdx.y) * 42) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 28)))) && ((rx_outer + ((((((int)threadIdx.y) * 42) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 28)) < 29)) ? data[(((((((((rc_outer * 6272) + (((int)threadIdx.z) * 784)) + (((int)blockIdx.y) * 112)) + (((int)threadIdx.y) * 42)) + (((int)threadIdx.x) * 6)) + rx_outer) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) - 29))] : 0.000000e+00f);
            }
            #pragma unroll
            for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
                if ((((((int)threadIdx.z) * 4) + (((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) / 24)) + ((int)threadIdx.y)) < 32) {
                    if ((((((int)threadIdx.z) * 32) + (((int)threadIdx.y) * 8)) + (((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) / 3)) < 256) {
                        if (((((((int)threadIdx.z) * 96) + (((int)threadIdx.y) * 24)) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 768) {
                            if ((((((int)threadIdx.y) * 24) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 96) {
                                if (((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 24) {
                                    kernel_shared[(((((((int)threadIdx.z) * 96) + (((int)threadIdx.y) * 24)) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[((((((((((int)blockIdx.z) * 18432) + (((int)threadIdx.z) * 2304)) + (((int)threadIdx.y) * 576)) + (rc_outer * 72)) + (((int)threadIdx.x) * 12)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 * 3)) + rx_outer))];
                                }
                            }
                        }
                    }
                }
            }
            __syncthreads();
            #pragma unroll
            for (int rc_inner_outer = 0; rc_inner_outer < 4; ++rc_inner_outer) {
                #pragma unroll
                for (int ax1 = 0; ax1 < 2; ++ax1) {
                    #pragma unroll
                    for (int ax2 = 0; ax2 < 3; ++ax2) {
                        #pragma unroll
                        for (int ax3 = 0; ax3 < 2; ++ax3) {
                            pad_temp_shared_local[((((ax1 * 6) + (ax2 * 2)) + ax3))] = pad_temp_shared[(((((((rc_inner_outer * 336) + (ax1 * 168)) + (ax2 * 28)) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 2)) + ax3))];
                            pad_temp_shared_local[(((((ax1 * 6) + (ax2 * 2)) + ax3) + 12))] = pad_temp_shared[((((((((rc_inner_outer * 336) + (ax1 * 168)) + (ax2 * 28)) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 2)) + ax3) + 14))];
                        }
                    }
                }
                #pragma unroll
                for (int ax0 = 0; ax0 < 2; ++ax0) {
                    #pragma unroll
                    for (int ax11 = 0; ax11 < 2; ++ax11) {
                        #pragma unroll
                        for (int ax21 = 0; ax21 < 3; ++ax21) {
                            kernel_shared_local[((((ax0 * 6) + (ax11 * 3)) + ax21))] = kernel_shared[((((((((int)threadIdx.z) * 48) + (ax0 * 24)) + (rc_inner_outer * 6)) + (ax11 * 3)) + ax21))];
                            kernel_shared_local[(((((ax0 * 6) + (ax11 * 3)) + ax21) + 12))] = kernel_shared[(((((((((int)threadIdx.z) * 48) + (ax0 * 24)) + (rc_inner_outer * 6)) + (ax11 * 3)) + ax21) + 384))];
                        }
                    }
                }
                #pragma unroll
                for (int rc_inner_inner = 0; rc_inner_inner < 2; ++rc_inner_inner) {
                    #pragma unroll
                    for (int ry_inner_inner = 0; ry_inner_inner < 3; ++ry_inner_inner) {
                        #pragma unroll
                        for (int ff_c = 0; ff_c < 2; ++ff_c) {
                            #pragma unroll
                            for (int xx_c = 0; xx_c < 2; ++xx_c) {
                                compute_local[(((ff_c * 2) + xx_c))] = (compute_local[(((ff_c * 2) + xx_c))] + (pad_temp_shared_local[((((rc_inner_inner * 6) + (ry_inner_inner * 2)) + xx_c))] * kernel_shared_local[((((ff_c * 6) + (rc_inner_inner * 3)) + ry_inner_inner))]));
                                compute_local[((((ff_c * 2) + xx_c) + 8))] = (compute_local[((((ff_c * 2) + xx_c) + 8))] + (pad_temp_shared_local[((((rc_inner_inner * 6) + (ry_inner_inner * 2)) + xx_c))] * kernel_shared_local[(((((ff_c * 6) + (rc_inner_inner * 3)) + ry_inner_inner) + 12))]));
                                compute_local[((((ff_c * 2) + xx_c) + 4))] = (compute_local[((((ff_c * 2) + xx_c) + 4))] + (pad_temp_shared_local[(((((rc_inner_inner * 6) + (ry_inner_inner * 2)) + xx_c) + 12))] * kernel_shared_local[((((ff_c * 6) + (rc_inner_inner * 3)) + ry_inner_inner))]));
                                compute_local[((((ff_c * 2) + xx_c) + 12))] = (compute_local[((((ff_c * 2) + xx_c) + 12))] + (pad_temp_shared_local[(((((rc_inner_inner * 6) + (ry_inner_inner * 2)) + xx_c) + 12))] * kernel_shared_local[(((((ff_c * 6) + (rc_inner_inner * 3)) + ry_inner_inner) + 12))]));
                            }
                        }
                    }
                }
            }
        }
    }
    #pragma unroll
    for (int ff_inner_inner_inner = 0; ff_inner_inner_inner < 2; ++ff_inner_inner_inner) {
        #pragma unroll
        for (int xx_inner_inner_inner = 0; xx_inner_inner_inner < 2; ++xx_inner_inner_inner) {
            compute[((((((((((int)blockIdx.z) * 25088) + (((int)threadIdx.z) * 1568)) + (ff_inner_inner_inner * 784)) + (((int)blockIdx.y) * 112)) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 2)) + xx_inner_inner_inner))] = compute_local[(((ff_inner_inner_inner * 2) + xx_inner_inner_inner))];
            compute[(((((((((((int)blockIdx.z) * 25088) + (((int)threadIdx.z) * 1568)) + (ff_inner_inner_inner * 784)) + (((int)blockIdx.y) * 112)) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 2)) + xx_inner_inner_inner) + 12544))] = compute_local[((((ff_inner_inner_inner * 2) + xx_inner_inner_inner) + 8))];
            compute[(((((((((((int)blockIdx.z) * 25088) + (((int)threadIdx.z) * 1568)) + (ff_inner_inner_inner * 784)) + (((int)blockIdx.y) * 112)) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 2)) + xx_inner_inner_inner) + 14))] = compute_local[((((ff_inner_inner_inner * 2) + xx_inner_inner_inner) + 4))];
            compute[(((((((((((int)blockIdx.z) * 25088) + (((int)threadIdx.z) * 1568)) + (ff_inner_inner_inner * 784)) + (((int)blockIdx.y) * 112)) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 2)) + xx_inner_inner_inner) + 12558))] = compute_local[((((ff_inner_inner_inner * 2) + xx_inner_inner_inner) + 12))];
        }
    }
}
//grid=(1,7,16),  block=(14,2,4)
extern "C" __global__ void conv_128_96_14_14(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[2];
    __shared__ float pad_temp_shared[512];
    __shared__ float kernel_shared[576];
    float pad_temp_shared_local[2];
    float kernel_shared_local[4];
    for (int ff_c_init = 0; ff_c_init < 2; ++ff_c_init) {
        compute_local[(ff_c_init)] = 0.000000e+00f;
    }
    for (int rc_outer = 0; rc_outer < 12; ++rc_outer) {
        __syncthreads();
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 5; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
            if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) >> 6)) + ((int)threadIdx.y)) < 8) {
                if ((((((int)threadIdx.z) * 8) + (((int)threadIdx.y) * 4)) + (((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) >> 4)) < 32) {
                    if (((((((int)threadIdx.z) * 128) + (((int)threadIdx.y) * 64)) + (((int)threadIdx.x) * 5)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 512) {
                        if ((((((int)threadIdx.y) * 64) + (((int)threadIdx.x) * 5)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 128) {
                            if (((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 64) {
                                pad_temp_shared[(((((((int)threadIdx.z) * 128) + (((int)threadIdx.y) * 64)) + (((int)threadIdx.x) * 5)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= ((((int)blockIdx.y) * 2) + (((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) >> 4))) && (((((int)blockIdx.y) * 2) + (((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) >> 4)) < 15)) && (1 <= (((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) & 15))) && ((((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) & 15) < 15)) ? data[((((((((rc_outer * 1568) + (((int)threadIdx.z) * 392)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.y) * 28)) + ((((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) >> 4) * 14)) + (((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) & 15)) - 15))] : 0.000000e+00f);
                            }
                        }
                    }
                }
            }
        }
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 6; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
            if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) / 24)) + ((int)threadIdx.y)) < 8) {
                if ((((((int)threadIdx.z) * 16) + (((int)threadIdx.y) * 8)) + (((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) / 3)) < 64) {
                    if (((((((int)threadIdx.z) * 48) + (((int)threadIdx.y) * 24)) + (((int)threadIdx.x) * 2)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) < 192) {
                        if (((((((int)threadIdx.z) * 144) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 576) {
                            if ((((((int)threadIdx.y) * 72) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 144) {
                                if (((((int)threadIdx.x) * 6) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 72) {
                                    if (((((((int)blockIdx.z) * 8) + (((int)threadIdx.z) * 2)) + (((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) / 24)) + ((int)threadIdx.y)) < 128) {
                                        kernel_shared[(((((((int)threadIdx.z) * 144) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[((((((((((int)blockIdx.z) * 6912) + (((int)threadIdx.z) * 1728)) + ((((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) / 24) * 864)) + (((int)threadIdx.y) * 864)) + (rc_outer * 72)) + ((((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) % 24) * 3)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 % 3)))];
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        __syncthreads();
        for (int rc_inner_outer = 0; rc_inner_outer < 4; ++rc_inner_outer) {
            for (int ry_inner_outer = 0; ry_inner_outer < 3; ++ry_inner_outer) {
                for (int rx_inner_outer = 0; rx_inner_outer < 3; ++rx_inner_outer) {
                    for (int ax1 = 0; ax1 < 2; ++ax1) {
                        pad_temp_shared_local[(ax1)] = pad_temp_shared[(((((((rc_inner_outer * 128) + (ax1 * 64)) + (((int)threadIdx.y) * 16)) + (ry_inner_outer * 16)) + ((int)threadIdx.x)) + rx_inner_outer))];
                    }
                    for (int ax0 = 0; ax0 < 2; ++ax0) {
                        for (int ax11 = 0; ax11 < 2; ++ax11) {
                            kernel_shared_local[(((ax0 * 2) + ax11))] = kernel_shared[(((((((((int)threadIdx.z) * 144) + (ax0 * 72)) + (rc_inner_outer * 18)) + (ax11 * 9)) + (ry_inner_outer * 3)) + rx_inner_outer))];
                        }
                    }
                    for (int rc_inner_inner = 0; rc_inner_inner < 2; ++rc_inner_inner) {
                        for (int ff_c = 0; ff_c < 2; ++ff_c) {
                            compute_local[(ff_c)] = (compute_local[(ff_c)] + (pad_temp_shared_local[(rc_inner_inner)] * kernel_shared_local[(((ff_c * 2) + rc_inner_inner))]));
                        }
                    }
                }
            }
        }
    }
    for (int ff_inner_inner_inner = 0; ff_inner_inner_inner < 2; ++ff_inner_inner_inner) {
        compute[(((((((((int)blockIdx.z) * 1568) + (((int)threadIdx.z) * 392)) + (ff_inner_inner_inner * 196)) + (((int)blockIdx.y) * 28)) + (((int)threadIdx.y) * 14)) + ((int)threadIdx.x)))] = compute_local[(ff_inner_inner_inner)];
    }
}
//grid=(1,7,16),  block=(1,1,6)
extern "C" __global__ void conv_192_160_7_7(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[14];
    __shared__ float pad_temp_shared[1080];
    __shared__ float kernel_shared[4320];
    float pad_temp_shared_local[42];
    float kernel_shared_local[12];
    compute_local[(0)] = 0.000000e+00f;
    compute_local[(7)] = 0.000000e+00f;
    compute_local[(1)] = 0.000000e+00f;
    compute_local[(8)] = 0.000000e+00f;
    compute_local[(2)] = 0.000000e+00f;
    compute_local[(9)] = 0.000000e+00f;
    compute_local[(3)] = 0.000000e+00f;
    compute_local[(10)] = 0.000000e+00f;
    compute_local[(4)] = 0.000000e+00f;
    compute_local[(11)] = 0.000000e+00f;
    compute_local[(5)] = 0.000000e+00f;
    compute_local[(12)] = 0.000000e+00f;
    compute_local[(6)] = 0.000000e+00f;
    compute_local[(13)] = 0.000000e+00f;
    for (int rc_outer = 0; rc_outer < 4; ++rc_outer) {
        __syncthreads();
#pragma unroll
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 180; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
            pad_temp_shared[(((((int)threadIdx.z) * 180) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= (((int)blockIdx.y) + (((((int)threadIdx.z) * 20) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner / 9)) % 3))) && ((((int)blockIdx.y) + (((((int)threadIdx.z) * 20) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner / 9)) % 3)) < 8)) && (1 <= (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner % 9))) && ((ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner % 9) < 8)) ? data[(((((((rc_outer * 1960) + ((((((int)threadIdx.z) * 20) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner / 9)) / 3) * 49)) + (((int)blockIdx.y) * 7)) + ((((((int)threadIdx.z) * 20) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner / 9)) % 3) * 7)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner % 9)) - 8))] : 0.000000e+00f);
        }
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 720; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
            kernel_shared[(((((int)threadIdx.z) * 720) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[((((((((int)blockIdx.z) * 17280) + (((int)threadIdx.z) * 2880)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 360) * 1440)) + (rc_outer * 360)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 % 360)))];
        }
        __syncthreads();
        for (int rc_inner_outer = 0; rc_inner_outer < 20; ++rc_inner_outer) {
#pragma unroll
            for (int rx_inner_outer = 0; rx_inner_outer < 3; ++rx_inner_outer) {
#pragma unroll
                for (int ax1 = 0; ax1 < 2; ++ax1) {
#pragma unroll
                    for (int ax2 = 0; ax2 < 3; ++ax2) {
                        pad_temp_shared_local[(((ax1 * 3) + ax2))] = pad_temp_shared[(((((rc_inner_outer * 54) + (ax1 * 27)) + (ax2 * 9)) + rx_inner_outer))];
                        pad_temp_shared_local[((((ax1 * 3) + ax2) + 6))] = pad_temp_shared[((((((rc_inner_outer * 54) + (ax1 * 27)) + (ax2 * 9)) + rx_inner_outer) + 1))];
                        pad_temp_shared_local[((((ax1 * 3) + ax2) + 12))] = pad_temp_shared[((((((rc_inner_outer * 54) + (ax1 * 27)) + (ax2 * 9)) + rx_inner_outer) + 2))];
                        pad_temp_shared_local[((((ax1 * 3) + ax2) + 18))] = pad_temp_shared[((((((rc_inner_outer * 54) + (ax1 * 27)) + (ax2 * 9)) + rx_inner_outer) + 3))];
                        pad_temp_shared_local[((((ax1 * 3) + ax2) + 24))] = pad_temp_shared[((((((rc_inner_outer * 54) + (ax1 * 27)) + (ax2 * 9)) + rx_inner_outer) + 4))];
                        pad_temp_shared_local[((((ax1 * 3) + ax2) + 30))] = pad_temp_shared[((((((rc_inner_outer * 54) + (ax1 * 27)) + (ax2 * 9)) + rx_inner_outer) + 5))];
                        pad_temp_shared_local[((((ax1 * 3) + ax2) + 36))] = pad_temp_shared[((((((rc_inner_outer * 54) + (ax1 * 27)) + (ax2 * 9)) + rx_inner_outer) + 6))];
                    }
                }
#pragma unroll
                for (int ax11 = 0; ax11 < 2; ++ax11) {
#pragma unroll
                    for (int ax21 = 0; ax21 < 3; ++ax21) {
                        kernel_shared_local[(((ax11 * 3) + ax21))] = kernel_shared[((((((((int)threadIdx.z) * 360) + (rc_inner_outer * 18)) + (ax11 * 9)) + (ax21 * 3)) + rx_inner_outer))];
                        kernel_shared_local[((((ax11 * 3) + ax21) + 6))] = kernel_shared[(((((((((int)threadIdx.z) * 360) + (rc_inner_outer * 18)) + (ax11 * 9)) + (ax21 * 3)) + rx_inner_outer) + 2160))];
                    }
                }
#pragma unroll
                for (int rc_inner_inner = 0; rc_inner_inner < 2; ++rc_inner_inner) {
#pragma unroll
                    for (int ry_inner_inner = 0; ry_inner_inner < 3; ++ry_inner_inner) {
                        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))] * kernel_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 6))]));
                        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 6))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 6))] * kernel_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 6))]));
                        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 12))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 12))] * kernel_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 6))]));
                        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 18))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 18))] * kernel_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 6))]));
                        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 24))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 24))] * kernel_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 6))]));
                        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 30))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 30))] * kernel_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 6))]));
                        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 36))] * kernel_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))]));
                        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 36))] * kernel_shared_local[((((rc_inner_inner * 3) + ry_inner_inner) + 6))]));
                    }
                }
            }
        }
    }
    compute[((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)))] = compute_local[(0)];
    compute[(((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 294))] = compute_local[(7)];
    compute[(((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 1))] = compute_local[(1)];
    compute[(((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 295))] = compute_local[(8)];
    compute[(((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 2))] = compute_local[(2)];
    compute[(((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 296))] = compute_local[(9)];
    compute[(((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 3))] = compute_local[(3)];
    compute[(((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 297))] = compute_local[(10)];
    compute[(((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 4))] = compute_local[(4)];
    compute[(((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 298))] = compute_local[(11)];
    compute[(((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 5))] = compute_local[(5)];
    compute[(((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 299))] = compute_local[(12)];
    compute[(((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 6))] = compute_local[(6)];
    compute[(((((((int)blockIdx.z) * 588) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 300))] = compute_local[(13)];
}
//grid=(14,2,4),  block=(1,28,4)
extern "C" __global__ void conv_64_32_224_224(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[256];
    __shared__ float pad_temp_shared[2016];
    __shared__ float kernel_shared[48];
    float pad_temp_shared_local[128];
    float kernel_shared_local[12];
    #pragma unroll
    for (int yy_c_init = 0; yy_c_init < 4; ++yy_c_init) {
        #pragma unroll
        for (int xx_c_init = 0; xx_c_init < 2; ++xx_c_init) {
            compute_local[(((yy_c_init * 2) + xx_c_init))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 64))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 128))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 192))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 8))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 72))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 136))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 200))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 16))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 80))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 144))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 208))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 24))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 88))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 152))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 216))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 32))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 96))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 160))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 224))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 40))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 104))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 168))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 232))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 48))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 112))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 176))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 240))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 56))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 120))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 184))] = 0.000000e+00f;
            compute_local[((((yy_c_init * 2) + xx_c_init) + 248))] = 0.000000e+00f;
        }
    }
    for (int rc_outer = 0; rc_outer < 32; ++rc_outer) {
        for (int ry_outer = 0; ry_outer < 3; ++ry_outer) {
            __syncthreads();
            #pragma unroll
            for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 18; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
                pad_temp_shared[((((((int)threadIdx.z) * 504) + (((int)threadIdx.y) * 18)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= ((((((int)blockIdx.y) * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.y)) + ry_outer)) && (((((((int)blockIdx.y) * 112) + (((int)threadIdx.z) * 28)) + ((int)threadIdx.y)) + ry_outer) < 225)) && (1 <= ((((int)blockIdx.x) * 16) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))) && (((((int)blockIdx.x) * 16) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 225)) ? data[(((((((((rc_outer * 50176) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.z) * 6272)) + (ry_outer * 224)) + (((int)threadIdx.y) * 224)) + (((int)blockIdx.x) * 16)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) - 225))] : 0.000000e+00f);
            }
            if (((((int)threadIdx.z) * 4) + (((int)threadIdx.y) / 3)) < 16) {
                if (((((int)threadIdx.z) * 12) + ((int)threadIdx.y)) < 48) {
                    if (((int)threadIdx.y) < 12) {
                        kernel_shared[(((((int)threadIdx.z) * 12) + ((int)threadIdx.y)))] = kernel[(((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 1152)) + ((((int)threadIdx.y) / 3) * 288)) + (rc_outer * 9)) + (ry_outer * 3)) + (((int)threadIdx.y) % 3)))];
                    }
                }
            }
            __syncthreads();
            #pragma unroll
            for (int ax2 = 0; ax2 < 4; ++ax2) {
                #pragma unroll
                for (int ax3 = 0; ax3 < 4; ++ax3) {
                    pad_temp_shared_local[(((ax2 * 4) + ax3))] = pad_temp_shared[((((((int)threadIdx.y) * 72) + (ax2 * 18)) + ax3))];
                    pad_temp_shared_local[((((ax2 * 4) + ax3) + 16))] = pad_temp_shared[(((((((int)threadIdx.y) * 72) + (ax2 * 18)) + ax3) + 2))];
                    pad_temp_shared_local[((((ax2 * 4) + ax3) + 32))] = pad_temp_shared[(((((((int)threadIdx.y) * 72) + (ax2 * 18)) + ax3) + 4))];
                    pad_temp_shared_local[((((ax2 * 4) + ax3) + 48))] = pad_temp_shared[(((((((int)threadIdx.y) * 72) + (ax2 * 18)) + ax3) + 6))];
                    pad_temp_shared_local[((((ax2 * 4) + ax3) + 64))] = pad_temp_shared[(((((((int)threadIdx.y) * 72) + (ax2 * 18)) + ax3) + 8))];
                    pad_temp_shared_local[((((ax2 * 4) + ax3) + 80))] = pad_temp_shared[(((((((int)threadIdx.y) * 72) + (ax2 * 18)) + ax3) + 10))];
                    pad_temp_shared_local[((((ax2 * 4) + ax3) + 96))] = pad_temp_shared[(((((((int)threadIdx.y) * 72) + (ax2 * 18)) + ax3) + 12))];
                    pad_temp_shared_local[((((ax2 * 4) + ax3) + 112))] = pad_temp_shared[(((((((int)threadIdx.y) * 72) + (ax2 * 18)) + ax3) + 14))];
                }
            }
            #pragma unroll
            for (int ax31 = 0; ax31 < 3; ++ax31) {
                kernel_shared_local[(ax31)] = kernel_shared[(((((int)threadIdx.z) * 3) + ax31))];
                kernel_shared_local[((ax31 + 3))] = kernel_shared[((((((int)threadIdx.z) * 3) + ax31) + 12))];
                kernel_shared_local[((ax31 + 6))] = kernel_shared[((((((int)threadIdx.z) * 3) + ax31) + 24))];
                kernel_shared_local[((ax31 + 9))] = kernel_shared[((((((int)threadIdx.z) * 3) + ax31) + 36))];
            }
            #pragma unroll
            for (int rx_inner_inner = 0; rx_inner_inner < 3; ++rx_inner_inner) {
                #pragma unroll
                for (int yy_c = 0; yy_c < 4; ++yy_c) {
                    #pragma unroll
                    for (int xx_c = 0; xx_c < 2; ++xx_c) {
                        compute_local[(((yy_c * 2) + xx_c))] = (compute_local[(((yy_c * 2) + xx_c))] + (pad_temp_shared_local[((((yy_c * 4) + xx_c) + rx_inner_inner))] * kernel_shared_local[(rx_inner_inner)]));
                        compute_local[((((yy_c * 2) + xx_c) + 64))] = (compute_local[((((yy_c * 2) + xx_c) + 64))] + (pad_temp_shared_local[((((yy_c * 4) + xx_c) + rx_inner_inner))] * kernel_shared_local[((rx_inner_inner + 3))]));
                        compute_local[((((yy_c * 2) + xx_c) + 128))] = (compute_local[((((yy_c * 2) + xx_c) + 128))] + (pad_temp_shared_local[((((yy_c * 4) + xx_c) + rx_inner_inner))] * kernel_shared_local[((rx_inner_inner + 6))]));
                        compute_local[((((yy_c * 2) + xx_c) + 192))] = (compute_local[((((yy_c * 2) + xx_c) + 192))] + (pad_temp_shared_local[((((yy_c * 4) + xx_c) + rx_inner_inner))] * kernel_shared_local[((rx_inner_inner + 9))]));
                        compute_local[((((yy_c * 2) + xx_c) + 8))] = (compute_local[((((yy_c * 2) + xx_c) + 8))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 16))] * kernel_shared_local[(rx_inner_inner)]));
                        compute_local[((((yy_c * 2) + xx_c) + 72))] = (compute_local[((((yy_c * 2) + xx_c) + 72))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 16))] * kernel_shared_local[((rx_inner_inner + 3))]));
                        compute_local[((((yy_c * 2) + xx_c) + 136))] = (compute_local[((((yy_c * 2) + xx_c) + 136))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 16))] * kernel_shared_local[((rx_inner_inner + 6))]));
                        compute_local[((((yy_c * 2) + xx_c) + 200))] = (compute_local[((((yy_c * 2) + xx_c) + 200))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 16))] * kernel_shared_local[((rx_inner_inner + 9))]));
                        compute_local[((((yy_c * 2) + xx_c) + 16))] = (compute_local[((((yy_c * 2) + xx_c) + 16))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 32))] * kernel_shared_local[(rx_inner_inner)]));
                        compute_local[((((yy_c * 2) + xx_c) + 80))] = (compute_local[((((yy_c * 2) + xx_c) + 80))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 32))] * kernel_shared_local[((rx_inner_inner + 3))]));
                        compute_local[((((yy_c * 2) + xx_c) + 144))] = (compute_local[((((yy_c * 2) + xx_c) + 144))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 32))] * kernel_shared_local[((rx_inner_inner + 6))]));
                        compute_local[((((yy_c * 2) + xx_c) + 208))] = (compute_local[((((yy_c * 2) + xx_c) + 208))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 32))] * kernel_shared_local[((rx_inner_inner + 9))]));
                        compute_local[((((yy_c * 2) + xx_c) + 24))] = (compute_local[((((yy_c * 2) + xx_c) + 24))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 48))] * kernel_shared_local[(rx_inner_inner)]));
                        compute_local[((((yy_c * 2) + xx_c) + 88))] = (compute_local[((((yy_c * 2) + xx_c) + 88))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 48))] * kernel_shared_local[((rx_inner_inner + 3))]));
                        compute_local[((((yy_c * 2) + xx_c) + 152))] = (compute_local[((((yy_c * 2) + xx_c) + 152))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 48))] * kernel_shared_local[((rx_inner_inner + 6))]));
                        compute_local[((((yy_c * 2) + xx_c) + 216))] = (compute_local[((((yy_c * 2) + xx_c) + 216))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 48))] * kernel_shared_local[((rx_inner_inner + 9))]));
                        compute_local[((((yy_c * 2) + xx_c) + 32))] = (compute_local[((((yy_c * 2) + xx_c) + 32))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 64))] * kernel_shared_local[(rx_inner_inner)]));
                        compute_local[((((yy_c * 2) + xx_c) + 96))] = (compute_local[((((yy_c * 2) + xx_c) + 96))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 64))] * kernel_shared_local[((rx_inner_inner + 3))]));
                        compute_local[((((yy_c * 2) + xx_c) + 160))] = (compute_local[((((yy_c * 2) + xx_c) + 160))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 64))] * kernel_shared_local[((rx_inner_inner + 6))]));
                        compute_local[((((yy_c * 2) + xx_c) + 224))] = (compute_local[((((yy_c * 2) + xx_c) + 224))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 64))] * kernel_shared_local[((rx_inner_inner + 9))]));
                        compute_local[((((yy_c * 2) + xx_c) + 40))] = (compute_local[((((yy_c * 2) + xx_c) + 40))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 80))] * kernel_shared_local[(rx_inner_inner)]));
                        compute_local[((((yy_c * 2) + xx_c) + 104))] = (compute_local[((((yy_c * 2) + xx_c) + 104))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 80))] * kernel_shared_local[((rx_inner_inner + 3))]));
                        compute_local[((((yy_c * 2) + xx_c) + 168))] = (compute_local[((((yy_c * 2) + xx_c) + 168))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 80))] * kernel_shared_local[((rx_inner_inner + 6))]));
                        compute_local[((((yy_c * 2) + xx_c) + 232))] = (compute_local[((((yy_c * 2) + xx_c) + 232))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 80))] * kernel_shared_local[((rx_inner_inner + 9))]));
                        compute_local[((((yy_c * 2) + xx_c) + 48))] = (compute_local[((((yy_c * 2) + xx_c) + 48))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 96))] * kernel_shared_local[(rx_inner_inner)]));
                        compute_local[((((yy_c * 2) + xx_c) + 112))] = (compute_local[((((yy_c * 2) + xx_c) + 112))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 96))] * kernel_shared_local[((rx_inner_inner + 3))]));
                        compute_local[((((yy_c * 2) + xx_c) + 176))] = (compute_local[((((yy_c * 2) + xx_c) + 176))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 96))] * kernel_shared_local[((rx_inner_inner + 6))]));
                        compute_local[((((yy_c * 2) + xx_c) + 240))] = (compute_local[((((yy_c * 2) + xx_c) + 240))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 96))] * kernel_shared_local[((rx_inner_inner + 9))]));
                        compute_local[((((yy_c * 2) + xx_c) + 56))] = (compute_local[((((yy_c * 2) + xx_c) + 56))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 112))] * kernel_shared_local[(rx_inner_inner)]));
                        compute_local[((((yy_c * 2) + xx_c) + 120))] = (compute_local[((((yy_c * 2) + xx_c) + 120))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 112))] * kernel_shared_local[((rx_inner_inner + 3))]));
                        compute_local[((((yy_c * 2) + xx_c) + 184))] = (compute_local[((((yy_c * 2) + xx_c) + 184))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 112))] * kernel_shared_local[((rx_inner_inner + 6))]));
                        compute_local[((((yy_c * 2) + xx_c) + 248))] = (compute_local[((((yy_c * 2) + xx_c) + 248))] + (pad_temp_shared_local[(((((yy_c * 4) + xx_c) + rx_inner_inner) + 112))] * kernel_shared_local[((rx_inner_inner + 9))]));
                    }
                }
            }
        }
    }
    #pragma unroll
    for (int yy_inner_inner_inner = 0; yy_inner_inner_inner < 4; ++yy_inner_inner_inner) {
        #pragma unroll
        for (int xx_inner_inner_inner = 0; xx_inner_inner_inner < 2; ++xx_inner_inner_inner) {
            compute[((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner))] = compute_local[(((yy_inner_inner_inner * 2) + xx_inner_inner_inner))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 200704))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 64))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 401408))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 128))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 602112))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 192))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 2))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 8))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 200706))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 72))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 401410))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 136))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 602114))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 200))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 4))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 16))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 200708))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 80))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 401412))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 144))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 602116))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 208))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 6))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 24))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 200710))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 88))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 401414))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 152))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 602118))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 216))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 8))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 32))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 200712))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 96))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 401416))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 160))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 602120))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 224))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 10))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 40))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 200714))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 104))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 401418))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 168))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 602122))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 232))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 12))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 48))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 200716))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 112))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 401420))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 176))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 602124))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 240))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 14))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 56))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 200718))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 120))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 401422))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 184))];
            compute[(((((((((((int)blockIdx.z) * 802816) + (((int)threadIdx.z) * 50176)) + (((int)blockIdx.y) * 25088)) + (((int)threadIdx.y) * 896)) + (yy_inner_inner_inner * 224)) + (((int)blockIdx.x) * 16)) + xx_inner_inner_inner) + 602126))] = compute_local[((((yy_inner_inner_inner * 2) + xx_inner_inner_inner) + 248))];
        }
    }
}
//grid=(1,112,16),  block=(4,1,4)
extern "C" __global__ void conv_64_32_112_112(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[28];
    __shared__ float pad_temp_shared[912];
    __shared__ float kernel_shared[96];
    float pad_temp_shared_local[120];
    float kernel_shared_local[12];
#pragma unroll
    for (int xx_c_init = 0; xx_c_init < 28; ++xx_c_init) {
        compute_local[(xx_c_init)] = 0.000000e+00f;
    }
    for (int rc_outer = 0; rc_outer < 4; ++rc_outer) {
        for (int ry_outer = 0; ry_outer < 3; ++ry_outer) {
            __syncthreads();
#pragma unroll
            for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 57; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
                pad_temp_shared[((((((int)threadIdx.z) * 228) + (((int)threadIdx.x) * 57)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 113)) && (1 <= (((((int)threadIdx.x) * 57) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 114))) && ((((((int)threadIdx.x) * 57) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 114) < 113)) ? data[((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + ((((((int)threadIdx.x) * 57) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 114) * 12544)) + (((int)blockIdx.y) * 112)) + (ry_outer * 112)) + (((((int)threadIdx.x) * 57) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 114)) - 113))] : 0.000000e+00f);
            }
#pragma unroll
            for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 6; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
                kernel_shared[((((((int)threadIdx.z) * 24) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[((((((((((int)blockIdx.z) * 1152) + (((int)threadIdx.z) * 288)) + (rc_outer * 72)) + (((int)threadIdx.x) * 18)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3) * 9)) + (ry_outer * 3)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 % 3)))];
            }
            __syncthreads();
#pragma unroll
            for (int rc_inner_outer = 0; rc_inner_outer < 2; ++rc_inner_outer) {
#pragma unroll
                for (int ax1 = 0; ax1 < 4; ++ax1) {
#pragma unroll
                    for (int ax3 = 0; ax3 < 30; ++ax3) {
                        pad_temp_shared_local[(((ax1 * 30) + ax3))] = pad_temp_shared[(((((rc_inner_outer * 456) + (ax1 * 114)) + (((int)threadIdx.x) * 28)) + ax3))];
                    }
                }
#pragma unroll
                for (int ax11 = 0; ax11 < 4; ++ax11) {
#pragma unroll
                    for (int ax31 = 0; ax31 < 3; ++ax31) {
                        kernel_shared_local[(((ax11 * 3) + ax31))] = kernel_shared[(((((((int)threadIdx.z) * 24) + (rc_inner_outer * 12)) + (ax11 * 3)) + ax31))];
                    }
                }
#pragma unroll
                for (int rc_inner_inner = 0; rc_inner_inner < 4; ++rc_inner_inner) {
#pragma unroll
                    for (int rx_inner_inner = 0; rx_inner_inner < 3; ++rx_inner_inner) {
#pragma unroll
                        for (int xx_c = 0; xx_c < 28; ++xx_c) {
                            compute_local[(xx_c)] = (compute_local[(xx_c)] + (pad_temp_shared_local[((((rc_inner_inner * 30) + xx_c) + rx_inner_inner))] * kernel_shared_local[(((rc_inner_inner * 3) + rx_inner_inner))]));
                        }
                    }
                }
            }
        }
    }
#pragma unroll
    for (int xx_inner_inner_inner = 0; xx_inner_inner_inner < 28; ++xx_inner_inner_inner) {
        compute[((((((((int)blockIdx.z) * 50176) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 112)) + (((int)threadIdx.x) * 28)) + xx_inner_inner_inner))] = compute_local[(xx_inner_inner_inner)];
    }
}
//grid=(7,7,1),  block=(8,8,2)
extern "C" __global__ void conv_64_64_112_112(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[128];
    __shared__ float pad_temp_shared[2304];
    __shared__ float kernel_shared[1536];
    float pad_temp_shared_local[24];
    float kernel_shared_local[192];
    compute_local[(0)] = 0.000000e+00f;
    compute_local[(16)] = 0.000000e+00f;
    compute_local[(32)] = 0.000000e+00f;
    compute_local[(48)] = 0.000000e+00f;
    compute_local[(64)] = 0.000000e+00f;
    compute_local[(80)] = 0.000000e+00f;
    compute_local[(96)] = 0.000000e+00f;
    compute_local[(112)] = 0.000000e+00f;
    compute_local[(8)] = 0.000000e+00f;
    compute_local[(24)] = 0.000000e+00f;
    compute_local[(40)] = 0.000000e+00f;
    compute_local[(56)] = 0.000000e+00f;
    compute_local[(72)] = 0.000000e+00f;
    compute_local[(88)] = 0.000000e+00f;
    compute_local[(104)] = 0.000000e+00f;
    compute_local[(120)] = 0.000000e+00f;
    compute_local[(1)] = 0.000000e+00f;
    compute_local[(17)] = 0.000000e+00f;
    compute_local[(33)] = 0.000000e+00f;
    compute_local[(49)] = 0.000000e+00f;
    compute_local[(65)] = 0.000000e+00f;
    compute_local[(81)] = 0.000000e+00f;
    compute_local[(97)] = 0.000000e+00f;
    compute_local[(113)] = 0.000000e+00f;
    compute_local[(9)] = 0.000000e+00f;
    compute_local[(25)] = 0.000000e+00f;
    compute_local[(41)] = 0.000000e+00f;
    compute_local[(57)] = 0.000000e+00f;
    compute_local[(73)] = 0.000000e+00f;
    compute_local[(89)] = 0.000000e+00f;
    compute_local[(105)] = 0.000000e+00f;
    compute_local[(121)] = 0.000000e+00f;
    compute_local[(2)] = 0.000000e+00f;
    compute_local[(18)] = 0.000000e+00f;
    compute_local[(34)] = 0.000000e+00f;
    compute_local[(50)] = 0.000000e+00f;
    compute_local[(66)] = 0.000000e+00f;
    compute_local[(82)] = 0.000000e+00f;
    compute_local[(98)] = 0.000000e+00f;
    compute_local[(114)] = 0.000000e+00f;
    compute_local[(10)] = 0.000000e+00f;
    compute_local[(26)] = 0.000000e+00f;
    compute_local[(42)] = 0.000000e+00f;
    compute_local[(58)] = 0.000000e+00f;
    compute_local[(74)] = 0.000000e+00f;
    compute_local[(90)] = 0.000000e+00f;
    compute_local[(106)] = 0.000000e+00f;
    compute_local[(122)] = 0.000000e+00f;
    compute_local[(3)] = 0.000000e+00f;
    compute_local[(19)] = 0.000000e+00f;
    compute_local[(35)] = 0.000000e+00f;
    compute_local[(51)] = 0.000000e+00f;
    compute_local[(67)] = 0.000000e+00f;
    compute_local[(83)] = 0.000000e+00f;
    compute_local[(99)] = 0.000000e+00f;
    compute_local[(115)] = 0.000000e+00f;
    compute_local[(11)] = 0.000000e+00f;
    compute_local[(27)] = 0.000000e+00f;
    compute_local[(43)] = 0.000000e+00f;
    compute_local[(59)] = 0.000000e+00f;
    compute_local[(75)] = 0.000000e+00f;
    compute_local[(91)] = 0.000000e+00f;
    compute_local[(107)] = 0.000000e+00f;
    compute_local[(123)] = 0.000000e+00f;
    compute_local[(4)] = 0.000000e+00f;
    compute_local[(20)] = 0.000000e+00f;
    compute_local[(36)] = 0.000000e+00f;
    compute_local[(52)] = 0.000000e+00f;
    compute_local[(68)] = 0.000000e+00f;
    compute_local[(84)] = 0.000000e+00f;
    compute_local[(100)] = 0.000000e+00f;
    compute_local[(116)] = 0.000000e+00f;
    compute_local[(12)] = 0.000000e+00f;
    compute_local[(28)] = 0.000000e+00f;
    compute_local[(44)] = 0.000000e+00f;
    compute_local[(60)] = 0.000000e+00f;
    compute_local[(76)] = 0.000000e+00f;
    compute_local[(92)] = 0.000000e+00f;
    compute_local[(108)] = 0.000000e+00f;
    compute_local[(124)] = 0.000000e+00f;
    compute_local[(5)] = 0.000000e+00f;
    compute_local[(21)] = 0.000000e+00f;
    compute_local[(37)] = 0.000000e+00f;
    compute_local[(53)] = 0.000000e+00f;
    compute_local[(69)] = 0.000000e+00f;
    compute_local[(85)] = 0.000000e+00f;
    compute_local[(101)] = 0.000000e+00f;
    compute_local[(117)] = 0.000000e+00f;
    compute_local[(13)] = 0.000000e+00f;
    compute_local[(29)] = 0.000000e+00f;
    compute_local[(45)] = 0.000000e+00f;
    compute_local[(61)] = 0.000000e+00f;
    compute_local[(77)] = 0.000000e+00f;
    compute_local[(93)] = 0.000000e+00f;
    compute_local[(109)] = 0.000000e+00f;
    compute_local[(125)] = 0.000000e+00f;
    compute_local[(6)] = 0.000000e+00f;
    compute_local[(22)] = 0.000000e+00f;
    compute_local[(38)] = 0.000000e+00f;
    compute_local[(54)] = 0.000000e+00f;
    compute_local[(70)] = 0.000000e+00f;
    compute_local[(86)] = 0.000000e+00f;
    compute_local[(102)] = 0.000000e+00f;
    compute_local[(118)] = 0.000000e+00f;
    compute_local[(14)] = 0.000000e+00f;
    compute_local[(30)] = 0.000000e+00f;
    compute_local[(46)] = 0.000000e+00f;
    compute_local[(62)] = 0.000000e+00f;
    compute_local[(78)] = 0.000000e+00f;
    compute_local[(94)] = 0.000000e+00f;
    compute_local[(110)] = 0.000000e+00f;
    compute_local[(126)] = 0.000000e+00f;
    compute_local[(7)] = 0.000000e+00f;
    compute_local[(23)] = 0.000000e+00f;
    compute_local[(39)] = 0.000000e+00f;
    compute_local[(55)] = 0.000000e+00f;
    compute_local[(71)] = 0.000000e+00f;
    compute_local[(87)] = 0.000000e+00f;
    compute_local[(103)] = 0.000000e+00f;
    compute_local[(119)] = 0.000000e+00f;
    compute_local[(15)] = 0.000000e+00f;
    compute_local[(31)] = 0.000000e+00f;
    compute_local[(47)] = 0.000000e+00f;
    compute_local[(63)] = 0.000000e+00f;
    compute_local[(79)] = 0.000000e+00f;
    compute_local[(95)] = 0.000000e+00f;
    compute_local[(111)] = 0.000000e+00f;
    compute_local[(127)] = 0.000000e+00f;
    for (int rc_outer = 0; rc_outer < 8; ++rc_outer) {
        for (int rx_outer = 0; rx_outer < 3; ++rx_outer) {
            __syncthreads();
            pad_temp_shared[((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + ((((int)threadIdx.x) * 18) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + ((((int)threadIdx.x) * 18) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + ((((int)threadIdx.x) * 18) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + ((((int)threadIdx.x) * 18) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + ((((int)threadIdx.x) * 18) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + ((((int)threadIdx.x) * 18) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + ((((int)threadIdx.x) * 18) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 1))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 1) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 1) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 1) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 1) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 1) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 1) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 1) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 2))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 2) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 2) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 2) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 2) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 2) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 2) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 2) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 3))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 3) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 3) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 3) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 3) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 3) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 3) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 3) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 4))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 4) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 4) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 4) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 4) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 4) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 4) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 4) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 5))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 5) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 5) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 5) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 5) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 5) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 5) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 5) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 6))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 6) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 6) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 6) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 6) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 6) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 6) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 6) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 7))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 7) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 7) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 7) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 7) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 7) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 7) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 7) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 8))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 8) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 8) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 8) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 8) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 8) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 8) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 8) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 9))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 9) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 9) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 9) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 9) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 9) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 9) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 9) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 10))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 10) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 10) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 10) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 10) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 10) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 10) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 10) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 11))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 11) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 11) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 11) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 11) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 11) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 11) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 11) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 12))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 12) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 12) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 12) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 12) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 12) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 12) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 12) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 13))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 13) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 13) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 13) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 13) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 13) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 13) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 13) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 14))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 14) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 14) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 14) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 14) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 14) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 14) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 14) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 15))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 15) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 15) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 15) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 15) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 15) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 15) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 15) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 16))] = (((((1 <= ((((int)blockIdx.y) * 16) + ((((((int)threadIdx.y) * 9) + ((((int)threadIdx.x) * 18) >> 4)) + 1) % 18))) && (((((int)blockIdx.y) * 16) + ((((((int)threadIdx.y) * 9) + ((((int)threadIdx.x) * 18) >> 4)) + 1) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + ((((int)threadIdx.x) * 18) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + ((((int)threadIdx.x) * 18) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + (((((((int)threadIdx.y) * 9) + ((((int)threadIdx.x) * 18) >> 4)) + 1) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + (((((((int)threadIdx.y) * 9) + ((((int)threadIdx.x) * 18) >> 4)) + 1) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + ((((int)threadIdx.x) * 18) & 15)) - 113))] : 0.000000e+00f);
            pad_temp_shared[(((((((int)threadIdx.z) * 1152) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 18)) + 17))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 17) >> 4)) % 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 17) >> 4)) % 18)) < 113)) && (1 <= (((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 1) & 15)))) && ((((((int)blockIdx.x) * 16) + rx_outer) + (((((int)threadIdx.x) * 18) + 1) & 15)) < 113)) ? data[((((((((((rc_outer * 100352) + (((int)threadIdx.z) * 50176)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 17) >> 4)) / 18) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.y) * 9) + (((((int)threadIdx.x) * 18) + 17) >> 4)) % 18) * 112)) + (((int)blockIdx.x) * 16)) + rx_outer) + (((((int)threadIdx.x) * 18) + 1) & 15)) - 113))] : 0.000000e+00f);
            kernel_shared[((((((int)threadIdx.z) * 768) + (((int)threadIdx.y) * 96)) + (((int)threadIdx.x) * 12)))] = kernel[(((((((((int)threadIdx.z) * 18432) + (((int)threadIdx.y) * 2304)) + ((((int)threadIdx.x) >> 1) * 576)) + (rc_outer * 72)) + ((((int)threadIdx.x) & 1) * 36)) + rx_outer))];
            kernel_shared[(((((((int)threadIdx.z) * 768) + (((int)threadIdx.y) * 96)) + (((int)threadIdx.x) * 12)) + 1))] = kernel[((((((((((int)threadIdx.z) * 18432) + (((int)threadIdx.y) * 2304)) + ((((int)threadIdx.x) >> 1) * 576)) + (rc_outer * 72)) + ((((int)threadIdx.x) & 1) * 36)) + rx_outer) + 3))];
            kernel_shared[(((((((int)threadIdx.z) * 768) + (((int)threadIdx.y) * 96)) + (((int)threadIdx.x) * 12)) + 2))] = kernel[((((((((((int)threadIdx.z) * 18432) + (((int)threadIdx.y) * 2304)) + ((((int)threadIdx.x) >> 1) * 576)) + (rc_outer * 72)) + ((((int)threadIdx.x) & 1) * 36)) + rx_outer) + 6))];
            kernel_shared[(((((((int)threadIdx.z) * 768) + (((int)threadIdx.y) * 96)) + (((int)threadIdx.x) * 12)) + 3))] = kernel[(((((((((int)threadIdx.z) * 18432) + (((int)threadIdx.y) * 2304)) + ((((((int)threadIdx.x) * 4) + 1) >> 3) * 576)) + (rc_outer * 72)) + ((((((int)threadIdx.x) * 4) + 1) & 7) * 9)) + rx_outer))];
            kernel_shared[(((((((int)threadIdx.z) * 768) + (((int)threadIdx.y) * 96)) + (((int)threadIdx.x) * 12)) + 4))] = kernel[((((((((((int)threadIdx.z) * 18432) + (((int)threadIdx.y) * 2304)) + ((((((int)threadIdx.x) * 4) + 1) >> 3) * 576)) + (rc_outer * 72)) + ((((((int)threadIdx.x) * 4) + 1) & 7) * 9)) + rx_outer) + 3))];
            kernel_shared[(((((((int)threadIdx.z) * 768) + (((int)threadIdx.y) * 96)) + (((int)threadIdx.x) * 12)) + 5))] = kernel[((((((((((int)threadIdx.z) * 18432) + (((int)threadIdx.y) * 2304)) + ((((((int)threadIdx.x) * 4) + 1) >> 3) * 576)) + (rc_outer * 72)) + ((((((int)threadIdx.x) * 4) + 1) & 7) * 9)) + rx_outer) + 6))];
            kernel_shared[(((((((int)threadIdx.z) * 768) + (((int)threadIdx.y) * 96)) + (((int)threadIdx.x) * 12)) + 6))] = kernel[(((((((((int)threadIdx.z) * 18432) + (((int)threadIdx.y) * 2304)) + ((((((int)threadIdx.x) * 4) + 2) >> 3) * 576)) + (rc_outer * 72)) + ((((((int)threadIdx.x) * 4) + 2) & 7) * 9)) + rx_outer))];
            kernel_shared[(((((((int)threadIdx.z) * 768) + (((int)threadIdx.y) * 96)) + (((int)threadIdx.x) * 12)) + 7))] = kernel[((((((((((int)threadIdx.z) * 18432) + (((int)threadIdx.y) * 2304)) + ((((((int)threadIdx.x) * 4) + 2) >> 3) * 576)) + (rc_outer * 72)) + ((((((int)threadIdx.x) * 4) + 2) & 7) * 9)) + rx_outer) + 3))];
            kernel_shared[(((((((int)threadIdx.z) * 768) + (((int)threadIdx.y) * 96)) + (((int)threadIdx.x) * 12)) + 8))] = kernel[((((((((((int)threadIdx.z) * 18432) + (((int)threadIdx.y) * 2304)) + ((((((int)threadIdx.x) * 4) + 2) >> 3) * 576)) + (rc_outer * 72)) + ((((((int)threadIdx.x) * 4) + 2) & 7) * 9)) + rx_outer) + 6))];
            kernel_shared[(((((((int)threadIdx.z) * 768) + (((int)threadIdx.y) * 96)) + (((int)threadIdx.x) * 12)) + 9))] = kernel[(((((((((int)threadIdx.z) * 18432) + (((int)threadIdx.y) * 2304)) + ((((((int)threadIdx.x) * 4) + 3) >> 3) * 576)) + (rc_outer * 72)) + ((((((int)threadIdx.x) * 4) + 3) & 7) * 9)) + rx_outer))];
            kernel_shared[(((((((int)threadIdx.z) * 768) + (((int)threadIdx.y) * 96)) + (((int)threadIdx.x) * 12)) + 10))] = kernel[((((((((((int)threadIdx.z) * 18432) + (((int)threadIdx.y) * 2304)) + ((((((int)threadIdx.x) * 4) + 3) >> 3) * 576)) + (rc_outer * 72)) + ((((((int)threadIdx.x) * 4) + 3) & 7) * 9)) + rx_outer) + 3))];
            kernel_shared[(((((((int)threadIdx.z) * 768) + (((int)threadIdx.y) * 96)) + (((int)threadIdx.x) * 12)) + 11))] = kernel[((((((((((int)threadIdx.z) * 18432) + (((int)threadIdx.y) * 2304)) + ((((((int)threadIdx.x) * 4) + 3) >> 3) * 576)) + (rc_outer * 72)) + ((((((int)threadIdx.x) * 4) + 3) & 7) * 9)) + rx_outer) + 6))];
            __syncthreads();
            for (int rc_inner_outer = 0; rc_inner_outer < 4; ++rc_inner_outer) {
                pad_temp_shared_local[(0)] = pad_temp_shared[((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)))];
                pad_temp_shared_local[(12)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 128))];
                pad_temp_shared_local[(1)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 1))];
                pad_temp_shared_local[(13)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 129))];
                pad_temp_shared_local[(2)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 16))];
                pad_temp_shared_local[(14)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 144))];
                pad_temp_shared_local[(3)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 17))];
                pad_temp_shared_local[(15)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 145))];
                pad_temp_shared_local[(4)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 32))];
                pad_temp_shared_local[(16)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 160))];
                pad_temp_shared_local[(5)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 33))];
                pad_temp_shared_local[(17)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 161))];
                pad_temp_shared_local[(6)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 288))];
                pad_temp_shared_local[(18)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 416))];
                pad_temp_shared_local[(7)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 289))];
                pad_temp_shared_local[(19)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 417))];
                pad_temp_shared_local[(8)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 304))];
                pad_temp_shared_local[(20)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 432))];
                pad_temp_shared_local[(9)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 305))];
                pad_temp_shared_local[(21)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 433))];
                pad_temp_shared_local[(10)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 320))];
                pad_temp_shared_local[(22)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 448))];
                pad_temp_shared_local[(11)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 321))];
                pad_temp_shared_local[(23)] = pad_temp_shared[(((((rc_inner_outer * 576) + (((int)threadIdx.y) * 16)) + (((int)threadIdx.x) * 2)) + 449))];
                kernel_shared_local[(0)] = kernel_shared[(((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)))];
                kernel_shared_local[(24)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 192))];
                kernel_shared_local[(48)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 384))];
                kernel_shared_local[(72)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 576))];
                kernel_shared_local[(96)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 768))];
                kernel_shared_local[(120)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 960))];
                kernel_shared_local[(144)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1152))];
                kernel_shared_local[(168)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1344))];
                kernel_shared_local[(1)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1))];
                kernel_shared_local[(25)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 193))];
                kernel_shared_local[(49)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 385))];
                kernel_shared_local[(73)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 577))];
                kernel_shared_local[(97)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 769))];
                kernel_shared_local[(121)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 961))];
                kernel_shared_local[(145)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1153))];
                kernel_shared_local[(169)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1345))];
                kernel_shared_local[(2)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 2))];
                kernel_shared_local[(26)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 194))];
                kernel_shared_local[(50)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 386))];
                kernel_shared_local[(74)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 578))];
                kernel_shared_local[(98)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 770))];
                kernel_shared_local[(122)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 962))];
                kernel_shared_local[(146)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1154))];
                kernel_shared_local[(170)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1346))];
                kernel_shared_local[(3)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 3))];
                kernel_shared_local[(27)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 195))];
                kernel_shared_local[(51)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 387))];
                kernel_shared_local[(75)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 579))];
                kernel_shared_local[(99)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 771))];
                kernel_shared_local[(123)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 963))];
                kernel_shared_local[(147)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1155))];
                kernel_shared_local[(171)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1347))];
                kernel_shared_local[(4)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 4))];
                kernel_shared_local[(28)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 196))];
                kernel_shared_local[(52)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 388))];
                kernel_shared_local[(76)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 580))];
                kernel_shared_local[(100)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 772))];
                kernel_shared_local[(124)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 964))];
                kernel_shared_local[(148)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1156))];
                kernel_shared_local[(172)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1348))];
                kernel_shared_local[(5)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 5))];
                kernel_shared_local[(29)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 197))];
                kernel_shared_local[(53)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 389))];
                kernel_shared_local[(77)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 581))];
                kernel_shared_local[(101)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 773))];
                kernel_shared_local[(125)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 965))];
                kernel_shared_local[(149)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1157))];
                kernel_shared_local[(173)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1349))];
                kernel_shared_local[(6)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 24))];
                kernel_shared_local[(30)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 216))];
                kernel_shared_local[(54)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 408))];
                kernel_shared_local[(78)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 600))];
                kernel_shared_local[(102)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 792))];
                kernel_shared_local[(126)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 984))];
                kernel_shared_local[(150)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1176))];
                kernel_shared_local[(174)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1368))];
                kernel_shared_local[(7)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 25))];
                kernel_shared_local[(31)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 217))];
                kernel_shared_local[(55)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 409))];
                kernel_shared_local[(79)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 601))];
                kernel_shared_local[(103)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 793))];
                kernel_shared_local[(127)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 985))];
                kernel_shared_local[(151)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1177))];
                kernel_shared_local[(175)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1369))];
                kernel_shared_local[(8)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 26))];
                kernel_shared_local[(32)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 218))];
                kernel_shared_local[(56)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 410))];
                kernel_shared_local[(80)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 602))];
                kernel_shared_local[(104)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 794))];
                kernel_shared_local[(128)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 986))];
                kernel_shared_local[(152)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1178))];
                kernel_shared_local[(176)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1370))];
                kernel_shared_local[(9)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 27))];
                kernel_shared_local[(33)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 219))];
                kernel_shared_local[(57)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 411))];
                kernel_shared_local[(81)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 603))];
                kernel_shared_local[(105)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 795))];
                kernel_shared_local[(129)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 987))];
                kernel_shared_local[(153)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1179))];
                kernel_shared_local[(177)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1371))];
                kernel_shared_local[(10)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 28))];
                kernel_shared_local[(34)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 220))];
                kernel_shared_local[(58)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 412))];
                kernel_shared_local[(82)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 604))];
                kernel_shared_local[(106)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 796))];
                kernel_shared_local[(130)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 988))];
                kernel_shared_local[(154)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1180))];
                kernel_shared_local[(178)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1372))];
                kernel_shared_local[(11)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 29))];
                kernel_shared_local[(35)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 221))];
                kernel_shared_local[(59)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 413))];
                kernel_shared_local[(83)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 605))];
                kernel_shared_local[(107)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 797))];
                kernel_shared_local[(131)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 989))];
                kernel_shared_local[(155)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1181))];
                kernel_shared_local[(179)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1373))];
                kernel_shared_local[(12)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 48))];
                kernel_shared_local[(36)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 240))];
                kernel_shared_local[(60)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 432))];
                kernel_shared_local[(84)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 624))];
                kernel_shared_local[(108)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 816))];
                kernel_shared_local[(132)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1008))];
                kernel_shared_local[(156)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1200))];
                kernel_shared_local[(180)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1392))];
                kernel_shared_local[(13)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 49))];
                kernel_shared_local[(37)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 241))];
                kernel_shared_local[(61)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 433))];
                kernel_shared_local[(85)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 625))];
                kernel_shared_local[(109)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 817))];
                kernel_shared_local[(133)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1009))];
                kernel_shared_local[(157)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1201))];
                kernel_shared_local[(181)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1393))];
                kernel_shared_local[(14)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 50))];
                kernel_shared_local[(38)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 242))];
                kernel_shared_local[(62)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 434))];
                kernel_shared_local[(86)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 626))];
                kernel_shared_local[(110)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 818))];
                kernel_shared_local[(134)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1010))];
                kernel_shared_local[(158)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1202))];
                kernel_shared_local[(182)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1394))];
                kernel_shared_local[(15)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 51))];
                kernel_shared_local[(39)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 243))];
                kernel_shared_local[(63)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 435))];
                kernel_shared_local[(87)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 627))];
                kernel_shared_local[(111)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 819))];
                kernel_shared_local[(135)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1011))];
                kernel_shared_local[(159)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1203))];
                kernel_shared_local[(183)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1395))];
                kernel_shared_local[(16)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 52))];
                kernel_shared_local[(40)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 244))];
                kernel_shared_local[(64)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 436))];
                kernel_shared_local[(88)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 628))];
                kernel_shared_local[(112)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 820))];
                kernel_shared_local[(136)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1012))];
                kernel_shared_local[(160)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1204))];
                kernel_shared_local[(184)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1396))];
                kernel_shared_local[(17)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 53))];
                kernel_shared_local[(41)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 245))];
                kernel_shared_local[(65)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 437))];
                kernel_shared_local[(89)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 629))];
                kernel_shared_local[(113)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 821))];
                kernel_shared_local[(137)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1013))];
                kernel_shared_local[(161)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1205))];
                kernel_shared_local[(185)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1397))];
                kernel_shared_local[(18)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 72))];
                kernel_shared_local[(42)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 264))];
                kernel_shared_local[(66)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 456))];
                kernel_shared_local[(90)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 648))];
                kernel_shared_local[(114)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 840))];
                kernel_shared_local[(138)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1032))];
                kernel_shared_local[(162)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1224))];
                kernel_shared_local[(186)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1416))];
                kernel_shared_local[(19)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 73))];
                kernel_shared_local[(43)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 265))];
                kernel_shared_local[(67)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 457))];
                kernel_shared_local[(91)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 649))];
                kernel_shared_local[(115)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 841))];
                kernel_shared_local[(139)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1033))];
                kernel_shared_local[(163)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1225))];
                kernel_shared_local[(187)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1417))];
                kernel_shared_local[(20)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 74))];
                kernel_shared_local[(44)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 266))];
                kernel_shared_local[(68)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 458))];
                kernel_shared_local[(92)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 650))];
                kernel_shared_local[(116)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 842))];
                kernel_shared_local[(140)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1034))];
                kernel_shared_local[(164)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1226))];
                kernel_shared_local[(188)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1418))];
                kernel_shared_local[(21)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 75))];
                kernel_shared_local[(45)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 267))];
                kernel_shared_local[(69)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 459))];
                kernel_shared_local[(93)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 651))];
                kernel_shared_local[(117)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 843))];
                kernel_shared_local[(141)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1035))];
                kernel_shared_local[(165)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1227))];
                kernel_shared_local[(189)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1419))];
                kernel_shared_local[(22)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 76))];
                kernel_shared_local[(46)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 268))];
                kernel_shared_local[(70)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 460))];
                kernel_shared_local[(94)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 652))];
                kernel_shared_local[(118)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 844))];
                kernel_shared_local[(142)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1036))];
                kernel_shared_local[(166)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1228))];
                kernel_shared_local[(190)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1420))];
                kernel_shared_local[(23)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 77))];
                kernel_shared_local[(47)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 269))];
                kernel_shared_local[(71)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 461))];
                kernel_shared_local[(95)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 653))];
                kernel_shared_local[(119)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 845))];
                kernel_shared_local[(143)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1037))];
                kernel_shared_local[(167)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1229))];
                kernel_shared_local[(191)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1421))];
                compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
                compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(24)]));
                compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(48)]));
                compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(72)]));
                compute_local[(64)] = (compute_local[(64)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(96)]));
                compute_local[(80)] = (compute_local[(80)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(120)]));
                compute_local[(96)] = (compute_local[(96)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(144)]));
                compute_local[(112)] = (compute_local[(112)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(168)]));
                compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(0)]));
                compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(24)]));
                compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(48)]));
                compute_local[(56)] = (compute_local[(56)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(72)]));
                compute_local[(72)] = (compute_local[(72)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(96)]));
                compute_local[(88)] = (compute_local[(88)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(120)]));
                compute_local[(104)] = (compute_local[(104)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(144)]));
                compute_local[(120)] = (compute_local[(120)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(168)]));
                compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(0)]));
                compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(24)]));
                compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(48)]));
                compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(72)]));
                compute_local[(65)] = (compute_local[(65)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(96)]));
                compute_local[(81)] = (compute_local[(81)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(120)]));
                compute_local[(97)] = (compute_local[(97)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(144)]));
                compute_local[(113)] = (compute_local[(113)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(168)]));
                compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(0)]));
                compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(24)]));
                compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(48)]));
                compute_local[(57)] = (compute_local[(57)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(72)]));
                compute_local[(73)] = (compute_local[(73)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(96)]));
                compute_local[(89)] = (compute_local[(89)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(120)]));
                compute_local[(105)] = (compute_local[(105)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(144)]));
                compute_local[(121)] = (compute_local[(121)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(168)]));
                compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(6)]));
                compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(30)]));
                compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(54)]));
                compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(78)]));
                compute_local[(66)] = (compute_local[(66)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(102)]));
                compute_local[(82)] = (compute_local[(82)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(126)]));
                compute_local[(98)] = (compute_local[(98)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(150)]));
                compute_local[(114)] = (compute_local[(114)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(174)]));
                compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(6)]));
                compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(30)]));
                compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(54)]));
                compute_local[(58)] = (compute_local[(58)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(78)]));
                compute_local[(74)] = (compute_local[(74)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(102)]));
                compute_local[(90)] = (compute_local[(90)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(126)]));
                compute_local[(106)] = (compute_local[(106)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(150)]));
                compute_local[(122)] = (compute_local[(122)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(174)]));
                compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(6)]));
                compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(30)]));
                compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(54)]));
                compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(78)]));
                compute_local[(67)] = (compute_local[(67)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(102)]));
                compute_local[(83)] = (compute_local[(83)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(126)]));
                compute_local[(99)] = (compute_local[(99)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(150)]));
                compute_local[(115)] = (compute_local[(115)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(174)]));
                compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(6)]));
                compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(30)]));
                compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(54)]));
                compute_local[(59)] = (compute_local[(59)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(78)]));
                compute_local[(75)] = (compute_local[(75)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(102)]));
                compute_local[(91)] = (compute_local[(91)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(126)]));
                compute_local[(107)] = (compute_local[(107)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(150)]));
                compute_local[(123)] = (compute_local[(123)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(174)]));
                compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(12)]));
                compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(36)]));
                compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(60)]));
                compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(84)]));
                compute_local[(68)] = (compute_local[(68)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(108)]));
                compute_local[(84)] = (compute_local[(84)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(132)]));
                compute_local[(100)] = (compute_local[(100)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(156)]));
                compute_local[(116)] = (compute_local[(116)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(180)]));
                compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(12)]));
                compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(36)]));
                compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(60)]));
                compute_local[(60)] = (compute_local[(60)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(84)]));
                compute_local[(76)] = (compute_local[(76)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(108)]));
                compute_local[(92)] = (compute_local[(92)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(132)]));
                compute_local[(108)] = (compute_local[(108)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(156)]));
                compute_local[(124)] = (compute_local[(124)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(180)]));
                compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(12)]));
                compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(36)]));
                compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(60)]));
                compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(84)]));
                compute_local[(69)] = (compute_local[(69)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(108)]));
                compute_local[(85)] = (compute_local[(85)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(132)]));
                compute_local[(101)] = (compute_local[(101)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(156)]));
                compute_local[(117)] = (compute_local[(117)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(180)]));
                compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(12)]));
                compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(36)]));
                compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(60)]));
                compute_local[(61)] = (compute_local[(61)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(84)]));
                compute_local[(77)] = (compute_local[(77)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(108)]));
                compute_local[(93)] = (compute_local[(93)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(132)]));
                compute_local[(109)] = (compute_local[(109)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(156)]));
                compute_local[(125)] = (compute_local[(125)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(180)]));
                compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(18)]));
                compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(42)]));
                compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(66)]));
                compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(90)]));
                compute_local[(70)] = (compute_local[(70)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(114)]));
                compute_local[(86)] = (compute_local[(86)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(138)]));
                compute_local[(102)] = (compute_local[(102)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(162)]));
                compute_local[(118)] = (compute_local[(118)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(186)]));
                compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(18)]));
                compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(42)]));
                compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(66)]));
                compute_local[(62)] = (compute_local[(62)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(90)]));
                compute_local[(78)] = (compute_local[(78)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(114)]));
                compute_local[(94)] = (compute_local[(94)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(138)]));
                compute_local[(110)] = (compute_local[(110)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(162)]));
                compute_local[(126)] = (compute_local[(126)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(186)]));
                compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(18)]));
                compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(42)]));
                compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(66)]));
                compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(90)]));
                compute_local[(71)] = (compute_local[(71)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(114)]));
                compute_local[(87)] = (compute_local[(87)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(138)]));
                compute_local[(103)] = (compute_local[(103)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(162)]));
                compute_local[(119)] = (compute_local[(119)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(186)]));
                compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(18)]));
                compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(42)]));
                compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(66)]));
                compute_local[(63)] = (compute_local[(63)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(90)]));
                compute_local[(79)] = (compute_local[(79)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(114)]));
                compute_local[(95)] = (compute_local[(95)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(138)]));
                compute_local[(111)] = (compute_local[(111)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(162)]));
                compute_local[(127)] = (compute_local[(127)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(186)]));
                compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(1)]));
                compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(25)]));
                compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(49)]));
                compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(73)]));
                compute_local[(64)] = (compute_local[(64)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(97)]));
                compute_local[(80)] = (compute_local[(80)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(121)]));
                compute_local[(96)] = (compute_local[(96)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(145)]));
                compute_local[(112)] = (compute_local[(112)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(169)]));
                compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(1)]));
                compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(25)]));
                compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(49)]));
                compute_local[(56)] = (compute_local[(56)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(73)]));
                compute_local[(72)] = (compute_local[(72)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(97)]));
                compute_local[(88)] = (compute_local[(88)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(121)]));
                compute_local[(104)] = (compute_local[(104)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(145)]));
                compute_local[(120)] = (compute_local[(120)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(169)]));
                compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(1)]));
                compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(25)]));
                compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(49)]));
                compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(73)]));
                compute_local[(65)] = (compute_local[(65)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(97)]));
                compute_local[(81)] = (compute_local[(81)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(121)]));
                compute_local[(97)] = (compute_local[(97)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(145)]));
                compute_local[(113)] = (compute_local[(113)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(169)]));
                compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(1)]));
                compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(25)]));
                compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(49)]));
                compute_local[(57)] = (compute_local[(57)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(73)]));
                compute_local[(73)] = (compute_local[(73)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(97)]));
                compute_local[(89)] = (compute_local[(89)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(121)]));
                compute_local[(105)] = (compute_local[(105)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(145)]));
                compute_local[(121)] = (compute_local[(121)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(169)]));
                compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(7)]));
                compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(31)]));
                compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(55)]));
                compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(79)]));
                compute_local[(66)] = (compute_local[(66)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(103)]));
                compute_local[(82)] = (compute_local[(82)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(127)]));
                compute_local[(98)] = (compute_local[(98)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(151)]));
                compute_local[(114)] = (compute_local[(114)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(175)]));
                compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(7)]));
                compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(31)]));
                compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(55)]));
                compute_local[(58)] = (compute_local[(58)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(79)]));
                compute_local[(74)] = (compute_local[(74)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(103)]));
                compute_local[(90)] = (compute_local[(90)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(127)]));
                compute_local[(106)] = (compute_local[(106)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(151)]));
                compute_local[(122)] = (compute_local[(122)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(175)]));
                compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(7)]));
                compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(31)]));
                compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(55)]));
                compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(79)]));
                compute_local[(67)] = (compute_local[(67)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(103)]));
                compute_local[(83)] = (compute_local[(83)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(127)]));
                compute_local[(99)] = (compute_local[(99)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(151)]));
                compute_local[(115)] = (compute_local[(115)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(175)]));
                compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(7)]));
                compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(31)]));
                compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(55)]));
                compute_local[(59)] = (compute_local[(59)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(79)]));
                compute_local[(75)] = (compute_local[(75)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(103)]));
                compute_local[(91)] = (compute_local[(91)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(127)]));
                compute_local[(107)] = (compute_local[(107)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(151)]));
                compute_local[(123)] = (compute_local[(123)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(175)]));
                compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(13)]));
                compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(37)]));
                compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(61)]));
                compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(85)]));
                compute_local[(68)] = (compute_local[(68)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(109)]));
                compute_local[(84)] = (compute_local[(84)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(133)]));
                compute_local[(100)] = (compute_local[(100)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(157)]));
                compute_local[(116)] = (compute_local[(116)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(181)]));
                compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(13)]));
                compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(37)]));
                compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(61)]));
                compute_local[(60)] = (compute_local[(60)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(85)]));
                compute_local[(76)] = (compute_local[(76)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(109)]));
                compute_local[(92)] = (compute_local[(92)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(133)]));
                compute_local[(108)] = (compute_local[(108)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(157)]));
                compute_local[(124)] = (compute_local[(124)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(181)]));
                compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(13)]));
                compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(37)]));
                compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(61)]));
                compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(85)]));
                compute_local[(69)] = (compute_local[(69)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(109)]));
                compute_local[(85)] = (compute_local[(85)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(133)]));
                compute_local[(101)] = (compute_local[(101)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(157)]));
                compute_local[(117)] = (compute_local[(117)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(181)]));
                compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(13)]));
                compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(37)]));
                compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(61)]));
                compute_local[(61)] = (compute_local[(61)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(85)]));
                compute_local[(77)] = (compute_local[(77)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(109)]));
                compute_local[(93)] = (compute_local[(93)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(133)]));
                compute_local[(109)] = (compute_local[(109)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(157)]));
                compute_local[(125)] = (compute_local[(125)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(181)]));
                compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(19)]));
                compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(43)]));
                compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(67)]));
                compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(91)]));
                compute_local[(70)] = (compute_local[(70)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(115)]));
                compute_local[(86)] = (compute_local[(86)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(139)]));
                compute_local[(102)] = (compute_local[(102)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(163)]));
                compute_local[(118)] = (compute_local[(118)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(187)]));
                compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(19)]));
                compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(43)]));
                compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(67)]));
                compute_local[(62)] = (compute_local[(62)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(91)]));
                compute_local[(78)] = (compute_local[(78)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(115)]));
                compute_local[(94)] = (compute_local[(94)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(139)]));
                compute_local[(110)] = (compute_local[(110)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(163)]));
                compute_local[(126)] = (compute_local[(126)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(187)]));
                compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(19)]));
                compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(43)]));
                compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(67)]));
                compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(91)]));
                compute_local[(71)] = (compute_local[(71)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(115)]));
                compute_local[(87)] = (compute_local[(87)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(139)]));
                compute_local[(103)] = (compute_local[(103)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(163)]));
                compute_local[(119)] = (compute_local[(119)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(187)]));
                compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(19)]));
                compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(43)]));
                compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(67)]));
                compute_local[(63)] = (compute_local[(63)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(91)]));
                compute_local[(79)] = (compute_local[(79)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(115)]));
                compute_local[(95)] = (compute_local[(95)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(139)]));
                compute_local[(111)] = (compute_local[(111)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(163)]));
                compute_local[(127)] = (compute_local[(127)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(187)]));
                compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(2)]));
                compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(26)]));
                compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(50)]));
                compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(74)]));
                compute_local[(64)] = (compute_local[(64)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(98)]));
                compute_local[(80)] = (compute_local[(80)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(122)]));
                compute_local[(96)] = (compute_local[(96)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(146)]));
                compute_local[(112)] = (compute_local[(112)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(170)]));
                compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(2)]));
                compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(26)]));
                compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(50)]));
                compute_local[(56)] = (compute_local[(56)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(74)]));
                compute_local[(72)] = (compute_local[(72)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(98)]));
                compute_local[(88)] = (compute_local[(88)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(122)]));
                compute_local[(104)] = (compute_local[(104)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(146)]));
                compute_local[(120)] = (compute_local[(120)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(170)]));
                compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(2)]));
                compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(26)]));
                compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(50)]));
                compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(74)]));
                compute_local[(65)] = (compute_local[(65)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(98)]));
                compute_local[(81)] = (compute_local[(81)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(122)]));
                compute_local[(97)] = (compute_local[(97)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(146)]));
                compute_local[(113)] = (compute_local[(113)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(170)]));
                compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(2)]));
                compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(26)]));
                compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(50)]));
                compute_local[(57)] = (compute_local[(57)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(74)]));
                compute_local[(73)] = (compute_local[(73)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(98)]));
                compute_local[(89)] = (compute_local[(89)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(122)]));
                compute_local[(105)] = (compute_local[(105)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(146)]));
                compute_local[(121)] = (compute_local[(121)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(170)]));
                compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(8)]));
                compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(32)]));
                compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(56)]));
                compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(80)]));
                compute_local[(66)] = (compute_local[(66)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(104)]));
                compute_local[(82)] = (compute_local[(82)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(128)]));
                compute_local[(98)] = (compute_local[(98)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(152)]));
                compute_local[(114)] = (compute_local[(114)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(176)]));
                compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(8)]));
                compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(32)]));
                compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(56)]));
                compute_local[(58)] = (compute_local[(58)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(80)]));
                compute_local[(74)] = (compute_local[(74)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(104)]));
                compute_local[(90)] = (compute_local[(90)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(128)]));
                compute_local[(106)] = (compute_local[(106)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(152)]));
                compute_local[(122)] = (compute_local[(122)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(176)]));
                compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(8)]));
                compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(32)]));
                compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(56)]));
                compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(80)]));
                compute_local[(67)] = (compute_local[(67)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(104)]));
                compute_local[(83)] = (compute_local[(83)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(128)]));
                compute_local[(99)] = (compute_local[(99)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(152)]));
                compute_local[(115)] = (compute_local[(115)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(176)]));
                compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(8)]));
                compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(32)]));
                compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(56)]));
                compute_local[(59)] = (compute_local[(59)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(80)]));
                compute_local[(75)] = (compute_local[(75)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(104)]));
                compute_local[(91)] = (compute_local[(91)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(128)]));
                compute_local[(107)] = (compute_local[(107)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(152)]));
                compute_local[(123)] = (compute_local[(123)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(176)]));
                compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(14)]));
                compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(38)]));
                compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(62)]));
                compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(86)]));
                compute_local[(68)] = (compute_local[(68)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(110)]));
                compute_local[(84)] = (compute_local[(84)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(134)]));
                compute_local[(100)] = (compute_local[(100)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(158)]));
                compute_local[(116)] = (compute_local[(116)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(182)]));
                compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(14)]));
                compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(38)]));
                compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(62)]));
                compute_local[(60)] = (compute_local[(60)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(86)]));
                compute_local[(76)] = (compute_local[(76)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(110)]));
                compute_local[(92)] = (compute_local[(92)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(134)]));
                compute_local[(108)] = (compute_local[(108)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(158)]));
                compute_local[(124)] = (compute_local[(124)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(182)]));
                compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(14)]));
                compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(38)]));
                compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(62)]));
                compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(86)]));
                compute_local[(69)] = (compute_local[(69)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(110)]));
                compute_local[(85)] = (compute_local[(85)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(134)]));
                compute_local[(101)] = (compute_local[(101)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(158)]));
                compute_local[(117)] = (compute_local[(117)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(182)]));
                compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(14)]));
                compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(38)]));
                compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(62)]));
                compute_local[(61)] = (compute_local[(61)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(86)]));
                compute_local[(77)] = (compute_local[(77)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(110)]));
                compute_local[(93)] = (compute_local[(93)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(134)]));
                compute_local[(109)] = (compute_local[(109)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(158)]));
                compute_local[(125)] = (compute_local[(125)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(182)]));
                compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(20)]));
                compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(44)]));
                compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(68)]));
                compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(92)]));
                compute_local[(70)] = (compute_local[(70)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(116)]));
                compute_local[(86)] = (compute_local[(86)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(140)]));
                compute_local[(102)] = (compute_local[(102)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(164)]));
                compute_local[(118)] = (compute_local[(118)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(188)]));
                compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(20)]));
                compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(44)]));
                compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(68)]));
                compute_local[(62)] = (compute_local[(62)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(92)]));
                compute_local[(78)] = (compute_local[(78)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(116)]));
                compute_local[(94)] = (compute_local[(94)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(140)]));
                compute_local[(110)] = (compute_local[(110)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(164)]));
                compute_local[(126)] = (compute_local[(126)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(188)]));
                compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(20)]));
                compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(44)]));
                compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(68)]));
                compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(92)]));
                compute_local[(71)] = (compute_local[(71)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(116)]));
                compute_local[(87)] = (compute_local[(87)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(140)]));
                compute_local[(103)] = (compute_local[(103)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(164)]));
                compute_local[(119)] = (compute_local[(119)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(188)]));
                compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(20)]));
                compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(44)]));
                compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(68)]));
                compute_local[(63)] = (compute_local[(63)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(92)]));
                compute_local[(79)] = (compute_local[(79)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(116)]));
                compute_local[(95)] = (compute_local[(95)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(140)]));
                compute_local[(111)] = (compute_local[(111)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(164)]));
                compute_local[(127)] = (compute_local[(127)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(188)]));
                compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(3)]));
                compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(27)]));
                compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(51)]));
                compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(75)]));
                compute_local[(64)] = (compute_local[(64)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(99)]));
                compute_local[(80)] = (compute_local[(80)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(123)]));
                compute_local[(96)] = (compute_local[(96)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(147)]));
                compute_local[(112)] = (compute_local[(112)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(171)]));
                compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(3)]));
                compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(27)]));
                compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(51)]));
                compute_local[(56)] = (compute_local[(56)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(75)]));
                compute_local[(72)] = (compute_local[(72)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(99)]));
                compute_local[(88)] = (compute_local[(88)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(123)]));
                compute_local[(104)] = (compute_local[(104)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(147)]));
                compute_local[(120)] = (compute_local[(120)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(171)]));
                compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(3)]));
                compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(27)]));
                compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(51)]));
                compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(75)]));
                compute_local[(65)] = (compute_local[(65)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(99)]));
                compute_local[(81)] = (compute_local[(81)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(123)]));
                compute_local[(97)] = (compute_local[(97)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(147)]));
                compute_local[(113)] = (compute_local[(113)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(171)]));
                compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(3)]));
                compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(27)]));
                compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(51)]));
                compute_local[(57)] = (compute_local[(57)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(75)]));
                compute_local[(73)] = (compute_local[(73)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(99)]));
                compute_local[(89)] = (compute_local[(89)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(123)]));
                compute_local[(105)] = (compute_local[(105)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(147)]));
                compute_local[(121)] = (compute_local[(121)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(171)]));
                compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(9)]));
                compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(33)]));
                compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(57)]));
                compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(81)]));
                compute_local[(66)] = (compute_local[(66)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(105)]));
                compute_local[(82)] = (compute_local[(82)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(129)]));
                compute_local[(98)] = (compute_local[(98)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(153)]));
                compute_local[(114)] = (compute_local[(114)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(177)]));
                compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(9)]));
                compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(33)]));
                compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(57)]));
                compute_local[(58)] = (compute_local[(58)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(81)]));
                compute_local[(74)] = (compute_local[(74)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(105)]));
                compute_local[(90)] = (compute_local[(90)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(129)]));
                compute_local[(106)] = (compute_local[(106)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(153)]));
                compute_local[(122)] = (compute_local[(122)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(177)]));
                compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(9)]));
                compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(33)]));
                compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(57)]));
                compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(81)]));
                compute_local[(67)] = (compute_local[(67)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(105)]));
                compute_local[(83)] = (compute_local[(83)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(129)]));
                compute_local[(99)] = (compute_local[(99)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(153)]));
                compute_local[(115)] = (compute_local[(115)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(177)]));
                compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(9)]));
                compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(33)]));
                compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(57)]));
                compute_local[(59)] = (compute_local[(59)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(81)]));
                compute_local[(75)] = (compute_local[(75)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(105)]));
                compute_local[(91)] = (compute_local[(91)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(129)]));
                compute_local[(107)] = (compute_local[(107)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(153)]));
                compute_local[(123)] = (compute_local[(123)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(177)]));
                compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(15)]));
                compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(39)]));
                compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(63)]));
                compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(87)]));
                compute_local[(68)] = (compute_local[(68)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(111)]));
                compute_local[(84)] = (compute_local[(84)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(135)]));
                compute_local[(100)] = (compute_local[(100)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(159)]));
                compute_local[(116)] = (compute_local[(116)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(183)]));
                compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(15)]));
                compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(39)]));
                compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(63)]));
                compute_local[(60)] = (compute_local[(60)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(87)]));
                compute_local[(76)] = (compute_local[(76)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(111)]));
                compute_local[(92)] = (compute_local[(92)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(135)]));
                compute_local[(108)] = (compute_local[(108)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(159)]));
                compute_local[(124)] = (compute_local[(124)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(183)]));
                compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(15)]));
                compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(39)]));
                compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(63)]));
                compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(87)]));
                compute_local[(69)] = (compute_local[(69)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(111)]));
                compute_local[(85)] = (compute_local[(85)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(135)]));
                compute_local[(101)] = (compute_local[(101)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(159)]));
                compute_local[(117)] = (compute_local[(117)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(183)]));
                compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(15)]));
                compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(39)]));
                compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(63)]));
                compute_local[(61)] = (compute_local[(61)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(87)]));
                compute_local[(77)] = (compute_local[(77)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(111)]));
                compute_local[(93)] = (compute_local[(93)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(135)]));
                compute_local[(109)] = (compute_local[(109)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(159)]));
                compute_local[(125)] = (compute_local[(125)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(183)]));
                compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(21)]));
                compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(45)]));
                compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(69)]));
                compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(93)]));
                compute_local[(70)] = (compute_local[(70)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(117)]));
                compute_local[(86)] = (compute_local[(86)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(141)]));
                compute_local[(102)] = (compute_local[(102)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(165)]));
                compute_local[(118)] = (compute_local[(118)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(189)]));
                compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(21)]));
                compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(45)]));
                compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(69)]));
                compute_local[(62)] = (compute_local[(62)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(93)]));
                compute_local[(78)] = (compute_local[(78)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(117)]));
                compute_local[(94)] = (compute_local[(94)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(141)]));
                compute_local[(110)] = (compute_local[(110)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(165)]));
                compute_local[(126)] = (compute_local[(126)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(189)]));
                compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(21)]));
                compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(45)]));
                compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(69)]));
                compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(93)]));
                compute_local[(71)] = (compute_local[(71)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(117)]));
                compute_local[(87)] = (compute_local[(87)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(141)]));
                compute_local[(103)] = (compute_local[(103)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(165)]));
                compute_local[(119)] = (compute_local[(119)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(189)]));
                compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(21)]));
                compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(45)]));
                compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(69)]));
                compute_local[(63)] = (compute_local[(63)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(93)]));
                compute_local[(79)] = (compute_local[(79)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(117)]));
                compute_local[(95)] = (compute_local[(95)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(141)]));
                compute_local[(111)] = (compute_local[(111)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(165)]));
                compute_local[(127)] = (compute_local[(127)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(189)]));
                compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(4)]));
                compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(28)]));
                compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(52)]));
                compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(76)]));
                compute_local[(64)] = (compute_local[(64)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(100)]));
                compute_local[(80)] = (compute_local[(80)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(124)]));
                compute_local[(96)] = (compute_local[(96)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(148)]));
                compute_local[(112)] = (compute_local[(112)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(172)]));
                compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(4)]));
                compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(28)]));
                compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(52)]));
                compute_local[(56)] = (compute_local[(56)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(76)]));
                compute_local[(72)] = (compute_local[(72)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(100)]));
                compute_local[(88)] = (compute_local[(88)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(124)]));
                compute_local[(104)] = (compute_local[(104)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(148)]));
                compute_local[(120)] = (compute_local[(120)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(172)]));
                compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(4)]));
                compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(28)]));
                compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(52)]));
                compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(76)]));
                compute_local[(65)] = (compute_local[(65)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(100)]));
                compute_local[(81)] = (compute_local[(81)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(124)]));
                compute_local[(97)] = (compute_local[(97)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(148)]));
                compute_local[(113)] = (compute_local[(113)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(172)]));
                compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(4)]));
                compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(28)]));
                compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(52)]));
                compute_local[(57)] = (compute_local[(57)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(76)]));
                compute_local[(73)] = (compute_local[(73)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(100)]));
                compute_local[(89)] = (compute_local[(89)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(124)]));
                compute_local[(105)] = (compute_local[(105)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(148)]));
                compute_local[(121)] = (compute_local[(121)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(172)]));
                compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(10)]));
                compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(34)]));
                compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(58)]));
                compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(82)]));
                compute_local[(66)] = (compute_local[(66)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(106)]));
                compute_local[(82)] = (compute_local[(82)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(130)]));
                compute_local[(98)] = (compute_local[(98)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(154)]));
                compute_local[(114)] = (compute_local[(114)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(178)]));
                compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(10)]));
                compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(34)]));
                compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(58)]));
                compute_local[(58)] = (compute_local[(58)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(82)]));
                compute_local[(74)] = (compute_local[(74)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(106)]));
                compute_local[(90)] = (compute_local[(90)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(130)]));
                compute_local[(106)] = (compute_local[(106)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(154)]));
                compute_local[(122)] = (compute_local[(122)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(178)]));
                compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(10)]));
                compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(34)]));
                compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(58)]));
                compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(82)]));
                compute_local[(67)] = (compute_local[(67)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(106)]));
                compute_local[(83)] = (compute_local[(83)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(130)]));
                compute_local[(99)] = (compute_local[(99)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(154)]));
                compute_local[(115)] = (compute_local[(115)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(178)]));
                compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(10)]));
                compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(34)]));
                compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(58)]));
                compute_local[(59)] = (compute_local[(59)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(82)]));
                compute_local[(75)] = (compute_local[(75)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(106)]));
                compute_local[(91)] = (compute_local[(91)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(130)]));
                compute_local[(107)] = (compute_local[(107)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(154)]));
                compute_local[(123)] = (compute_local[(123)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(178)]));
                compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(16)]));
                compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(40)]));
                compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(64)]));
                compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(88)]));
                compute_local[(68)] = (compute_local[(68)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(112)]));
                compute_local[(84)] = (compute_local[(84)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(136)]));
                compute_local[(100)] = (compute_local[(100)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(160)]));
                compute_local[(116)] = (compute_local[(116)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(184)]));
                compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(16)]));
                compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(40)]));
                compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(64)]));
                compute_local[(60)] = (compute_local[(60)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(88)]));
                compute_local[(76)] = (compute_local[(76)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(112)]));
                compute_local[(92)] = (compute_local[(92)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(136)]));
                compute_local[(108)] = (compute_local[(108)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(160)]));
                compute_local[(124)] = (compute_local[(124)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(184)]));
                compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(16)]));
                compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(40)]));
                compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(64)]));
                compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(88)]));
                compute_local[(69)] = (compute_local[(69)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(112)]));
                compute_local[(85)] = (compute_local[(85)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(136)]));
                compute_local[(101)] = (compute_local[(101)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(160)]));
                compute_local[(117)] = (compute_local[(117)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(184)]));
                compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(16)]));
                compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(40)]));
                compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(64)]));
                compute_local[(61)] = (compute_local[(61)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(88)]));
                compute_local[(77)] = (compute_local[(77)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(112)]));
                compute_local[(93)] = (compute_local[(93)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(136)]));
                compute_local[(109)] = (compute_local[(109)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(160)]));
                compute_local[(125)] = (compute_local[(125)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(184)]));
                compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(22)]));
                compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(46)]));
                compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(70)]));
                compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(94)]));
                compute_local[(70)] = (compute_local[(70)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(118)]));
                compute_local[(86)] = (compute_local[(86)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(142)]));
                compute_local[(102)] = (compute_local[(102)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(166)]));
                compute_local[(118)] = (compute_local[(118)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(190)]));
                compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(22)]));
                compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(46)]));
                compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(70)]));
                compute_local[(62)] = (compute_local[(62)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(94)]));
                compute_local[(78)] = (compute_local[(78)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(118)]));
                compute_local[(94)] = (compute_local[(94)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(142)]));
                compute_local[(110)] = (compute_local[(110)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(166)]));
                compute_local[(126)] = (compute_local[(126)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(190)]));
                compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(22)]));
                compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(46)]));
                compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(70)]));
                compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(94)]));
                compute_local[(71)] = (compute_local[(71)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(118)]));
                compute_local[(87)] = (compute_local[(87)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(142)]));
                compute_local[(103)] = (compute_local[(103)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(166)]));
                compute_local[(119)] = (compute_local[(119)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(190)]));
                compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(22)]));
                compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(46)]));
                compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(70)]));
                compute_local[(63)] = (compute_local[(63)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(94)]));
                compute_local[(79)] = (compute_local[(79)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(118)]));
                compute_local[(95)] = (compute_local[(95)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(142)]));
                compute_local[(111)] = (compute_local[(111)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(166)]));
                compute_local[(127)] = (compute_local[(127)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(190)]));
                compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(5)]));
                compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(29)]));
                compute_local[(32)] = (compute_local[(32)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(53)]));
                compute_local[(48)] = (compute_local[(48)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(77)]));
                compute_local[(64)] = (compute_local[(64)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(101)]));
                compute_local[(80)] = (compute_local[(80)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(125)]));
                compute_local[(96)] = (compute_local[(96)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(149)]));
                compute_local[(112)] = (compute_local[(112)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(173)]));
                compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(5)]));
                compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(29)]));
                compute_local[(40)] = (compute_local[(40)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(53)]));
                compute_local[(56)] = (compute_local[(56)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(77)]));
                compute_local[(72)] = (compute_local[(72)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(101)]));
                compute_local[(88)] = (compute_local[(88)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(125)]));
                compute_local[(104)] = (compute_local[(104)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(149)]));
                compute_local[(120)] = (compute_local[(120)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(173)]));
                compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(5)]));
                compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(29)]));
                compute_local[(33)] = (compute_local[(33)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(53)]));
                compute_local[(49)] = (compute_local[(49)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(77)]));
                compute_local[(65)] = (compute_local[(65)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(101)]));
                compute_local[(81)] = (compute_local[(81)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(125)]));
                compute_local[(97)] = (compute_local[(97)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(149)]));
                compute_local[(113)] = (compute_local[(113)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(173)]));
                compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(5)]));
                compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(29)]));
                compute_local[(41)] = (compute_local[(41)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(53)]));
                compute_local[(57)] = (compute_local[(57)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(77)]));
                compute_local[(73)] = (compute_local[(73)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(101)]));
                compute_local[(89)] = (compute_local[(89)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(125)]));
                compute_local[(105)] = (compute_local[(105)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(149)]));
                compute_local[(121)] = (compute_local[(121)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(173)]));
                compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(11)]));
                compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(35)]));
                compute_local[(34)] = (compute_local[(34)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(59)]));
                compute_local[(50)] = (compute_local[(50)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(83)]));
                compute_local[(66)] = (compute_local[(66)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(107)]));
                compute_local[(82)] = (compute_local[(82)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(131)]));
                compute_local[(98)] = (compute_local[(98)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(155)]));
                compute_local[(114)] = (compute_local[(114)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(179)]));
                compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(11)]));
                compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(35)]));
                compute_local[(42)] = (compute_local[(42)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(59)]));
                compute_local[(58)] = (compute_local[(58)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(83)]));
                compute_local[(74)] = (compute_local[(74)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(107)]));
                compute_local[(90)] = (compute_local[(90)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(131)]));
                compute_local[(106)] = (compute_local[(106)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(155)]));
                compute_local[(122)] = (compute_local[(122)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(179)]));
                compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(11)]));
                compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(35)]));
                compute_local[(35)] = (compute_local[(35)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(59)]));
                compute_local[(51)] = (compute_local[(51)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(83)]));
                compute_local[(67)] = (compute_local[(67)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(107)]));
                compute_local[(83)] = (compute_local[(83)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(131)]));
                compute_local[(99)] = (compute_local[(99)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(155)]));
                compute_local[(115)] = (compute_local[(115)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(179)]));
                compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(11)]));
                compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(35)]));
                compute_local[(43)] = (compute_local[(43)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(59)]));
                compute_local[(59)] = (compute_local[(59)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(83)]));
                compute_local[(75)] = (compute_local[(75)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(107)]));
                compute_local[(91)] = (compute_local[(91)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(131)]));
                compute_local[(107)] = (compute_local[(107)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(155)]));
                compute_local[(123)] = (compute_local[(123)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(179)]));
                compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(17)]));
                compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(41)]));
                compute_local[(36)] = (compute_local[(36)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(65)]));
                compute_local[(52)] = (compute_local[(52)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(89)]));
                compute_local[(68)] = (compute_local[(68)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(113)]));
                compute_local[(84)] = (compute_local[(84)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(137)]));
                compute_local[(100)] = (compute_local[(100)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(161)]));
                compute_local[(116)] = (compute_local[(116)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(185)]));
                compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(17)]));
                compute_local[(28)] = (compute_local[(28)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(41)]));
                compute_local[(44)] = (compute_local[(44)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(65)]));
                compute_local[(60)] = (compute_local[(60)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(89)]));
                compute_local[(76)] = (compute_local[(76)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(113)]));
                compute_local[(92)] = (compute_local[(92)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(137)]));
                compute_local[(108)] = (compute_local[(108)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(161)]));
                compute_local[(124)] = (compute_local[(124)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(185)]));
                compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(17)]));
                compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(41)]));
                compute_local[(37)] = (compute_local[(37)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(65)]));
                compute_local[(53)] = (compute_local[(53)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(89)]));
                compute_local[(69)] = (compute_local[(69)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(113)]));
                compute_local[(85)] = (compute_local[(85)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(137)]));
                compute_local[(101)] = (compute_local[(101)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(161)]));
                compute_local[(117)] = (compute_local[(117)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(185)]));
                compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(17)]));
                compute_local[(29)] = (compute_local[(29)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(41)]));
                compute_local[(45)] = (compute_local[(45)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(65)]));
                compute_local[(61)] = (compute_local[(61)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(89)]));
                compute_local[(77)] = (compute_local[(77)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(113)]));
                compute_local[(93)] = (compute_local[(93)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(137)]));
                compute_local[(109)] = (compute_local[(109)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(161)]));
                compute_local[(125)] = (compute_local[(125)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(185)]));
                compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(23)]));
                compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(47)]));
                compute_local[(38)] = (compute_local[(38)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(71)]));
                compute_local[(54)] = (compute_local[(54)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(95)]));
                compute_local[(70)] = (compute_local[(70)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(119)]));
                compute_local[(86)] = (compute_local[(86)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(143)]));
                compute_local[(102)] = (compute_local[(102)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(167)]));
                compute_local[(118)] = (compute_local[(118)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(191)]));
                compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(23)]));
                compute_local[(30)] = (compute_local[(30)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(47)]));
                compute_local[(46)] = (compute_local[(46)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(71)]));
                compute_local[(62)] = (compute_local[(62)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(95)]));
                compute_local[(78)] = (compute_local[(78)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(119)]));
                compute_local[(94)] = (compute_local[(94)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(143)]));
                compute_local[(110)] = (compute_local[(110)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(167)]));
                compute_local[(126)] = (compute_local[(126)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(191)]));
                compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(23)]));
                compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(47)]));
                compute_local[(39)] = (compute_local[(39)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(71)]));
                compute_local[(55)] = (compute_local[(55)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(95)]));
                compute_local[(71)] = (compute_local[(71)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(119)]));
                compute_local[(87)] = (compute_local[(87)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(143)]));
                compute_local[(103)] = (compute_local[(103)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(167)]));
                compute_local[(119)] = (compute_local[(119)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(191)]));
                compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(23)]));
                compute_local[(31)] = (compute_local[(31)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(47)]));
                compute_local[(47)] = (compute_local[(47)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(71)]));
                compute_local[(63)] = (compute_local[(63)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(95)]));
                compute_local[(79)] = (compute_local[(79)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(119)]));
                compute_local[(95)] = (compute_local[(95)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(143)]));
                compute_local[(111)] = (compute_local[(111)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(167)]));
                compute_local[(127)] = (compute_local[(127)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(191)]));
            }
        }
    }
    compute[((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)))] = compute_local[(0)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 100352))] = compute_local[(16)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 200704))] = compute_local[(32)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 301056))] = compute_local[(48)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 401408))] = compute_local[(64)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 501760))] = compute_local[(80)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 602112))] = compute_local[(96)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 702464))] = compute_local[(112)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 896))] = compute_local[(8)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 101248))] = compute_local[(24)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 201600))] = compute_local[(40)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 301952))] = compute_local[(56)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 402304))] = compute_local[(72)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 502656))] = compute_local[(88)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 603008))] = compute_local[(104)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 703360))] = compute_local[(120)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 1))] = compute_local[(1)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 100353))] = compute_local[(17)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 200705))] = compute_local[(33)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 301057))] = compute_local[(49)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 401409))] = compute_local[(65)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 501761))] = compute_local[(81)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 602113))] = compute_local[(97)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 702465))] = compute_local[(113)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 897))] = compute_local[(9)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 101249))] = compute_local[(25)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 201601))] = compute_local[(41)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 301953))] = compute_local[(57)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 402305))] = compute_local[(73)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 502657))] = compute_local[(89)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 603009))] = compute_local[(105)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 703361))] = compute_local[(121)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 12544))] = compute_local[(2)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 112896))] = compute_local[(18)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 213248))] = compute_local[(34)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 313600))] = compute_local[(50)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 413952))] = compute_local[(66)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 514304))] = compute_local[(82)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 614656))] = compute_local[(98)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 715008))] = compute_local[(114)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 13440))] = compute_local[(10)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 113792))] = compute_local[(26)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 214144))] = compute_local[(42)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 314496))] = compute_local[(58)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 414848))] = compute_local[(74)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 515200))] = compute_local[(90)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 615552))] = compute_local[(106)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 715904))] = compute_local[(122)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 12545))] = compute_local[(3)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 112897))] = compute_local[(19)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 213249))] = compute_local[(35)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 313601))] = compute_local[(51)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 413953))] = compute_local[(67)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 514305))] = compute_local[(83)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 614657))] = compute_local[(99)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 715009))] = compute_local[(115)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 13441))] = compute_local[(11)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 113793))] = compute_local[(27)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 214145))] = compute_local[(43)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 314497))] = compute_local[(59)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 414849))] = compute_local[(75)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 515201))] = compute_local[(91)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 615553))] = compute_local[(107)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 715905))] = compute_local[(123)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 25088))] = compute_local[(4)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 125440))] = compute_local[(20)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 225792))] = compute_local[(36)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 326144))] = compute_local[(52)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 426496))] = compute_local[(68)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 526848))] = compute_local[(84)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 627200))] = compute_local[(100)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 727552))] = compute_local[(116)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 25984))] = compute_local[(12)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 126336))] = compute_local[(28)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 226688))] = compute_local[(44)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 327040))] = compute_local[(60)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 427392))] = compute_local[(76)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 527744))] = compute_local[(92)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 628096))] = compute_local[(108)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 728448))] = compute_local[(124)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 25089))] = compute_local[(5)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 125441))] = compute_local[(21)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 225793))] = compute_local[(37)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 326145))] = compute_local[(53)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 426497))] = compute_local[(69)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 526849))] = compute_local[(85)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 627201))] = compute_local[(101)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 727553))] = compute_local[(117)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 25985))] = compute_local[(13)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 126337))] = compute_local[(29)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 226689))] = compute_local[(45)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 327041))] = compute_local[(61)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 427393))] = compute_local[(77)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 527745))] = compute_local[(93)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 628097))] = compute_local[(109)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 728449))] = compute_local[(125)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 37632))] = compute_local[(6)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 137984))] = compute_local[(22)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 238336))] = compute_local[(38)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 338688))] = compute_local[(54)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 439040))] = compute_local[(70)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 539392))] = compute_local[(86)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 639744))] = compute_local[(102)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 740096))] = compute_local[(118)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 38528))] = compute_local[(14)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 138880))] = compute_local[(30)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 239232))] = compute_local[(46)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 339584))] = compute_local[(62)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 439936))] = compute_local[(78)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 540288))] = compute_local[(94)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 640640))] = compute_local[(110)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 740992))] = compute_local[(126)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 37633))] = compute_local[(7)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 137985))] = compute_local[(23)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 238337))] = compute_local[(39)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 338689))] = compute_local[(55)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 439041))] = compute_local[(71)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 539393))] = compute_local[(87)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 639745))] = compute_local[(103)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 740097))] = compute_local[(119)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 38529))] = compute_local[(15)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 138881))] = compute_local[(31)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 239233))] = compute_local[(47)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 339585))] = compute_local[(63)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 439937))] = compute_local[(79)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 540289))] = compute_local[(95)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 640641))] = compute_local[(111)];
    compute[(((((((((int)threadIdx.z) * 50176) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 112)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 740993))] = compute_local[(127)];
}
//grid=(14,2,2),  block=(1,2,64)
extern "C" __global__ void conv_128_64_56_56(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[56];
    __shared__ float pad_temp_shared[180];
    __shared__ float kernel_shared[576];
    float pad_temp_shared_local[84];
    float kernel_shared_local[3];
#pragma unroll
    for (int yy_c_init = 0; yy_c_init < 14; ++yy_c_init) {
#pragma unroll
        for (int xx_c_init = 0; xx_c_init < 4; ++xx_c_init) {
            compute_local[(((yy_c_init * 4) + xx_c_init))] = 0.000000e+00f;
        }
    }
    for (int rc_outer = 0; rc_outer < 64; ++rc_outer) {
        __syncthreads();
#pragma unroll
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
            if ((((((int)threadIdx.z) * 3) + (((int)threadIdx.y) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 180) {
                if (((((int)threadIdx.y) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 3) {
                    pad_temp_shared[((((((int)threadIdx.z) * 3) + (((int)threadIdx.y) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= ((((int)blockIdx.y) * 28) + ((((((int)threadIdx.z) * 3) + (((int)threadIdx.y) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 6))) && (((((int)blockIdx.y) * 28) + ((((((int)threadIdx.z) * 3) + (((int)threadIdx.y) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 6)) < 57)) && (1 <= ((((int)blockIdx.x) * 4) + ((((((int)threadIdx.z) * 3) + (((int)threadIdx.y) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 6)))) && (((((int)blockIdx.x) * 4) + ((((((int)threadIdx.z) * 3) + (((int)threadIdx.y) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 6)) < 57)) ? data[(((((((rc_outer * 3136) + (((int)blockIdx.y) * 1568)) + (((((((int)threadIdx.z) * 3) + (((int)threadIdx.y) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 6) * 56)) + (((int)blockIdx.x) * 4)) + ((((((int)threadIdx.z) * 3) + (((int)threadIdx.y) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 6)) - 57))] : 0.000000e+00f);
                }
            }
        }
#pragma unroll
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 5; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
            if (((((((int)threadIdx.y) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) / 9) + ((int)threadIdx.z)) < 64) {
                if (((((int)threadIdx.z) * 3) + (((((int)threadIdx.y) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) / 3)) < 192) {
                    if ((((((int)threadIdx.z) * 9) + (((int)threadIdx.y) * 5)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 576) {
                        if (((((int)threadIdx.y) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 9) {
                            kernel_shared[((((((int)threadIdx.z) * 9) + (((int)threadIdx.y) * 5)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[((((((((int)blockIdx.z) * 36864) + (((int)threadIdx.z) * 576)) + (rc_outer * 9)) + (((int)threadIdx.y) * 5)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))];
                        }
                    }
                }
            }
        }
        __syncthreads();
#pragma unroll
        for (int ry_inner_outer = 0; ry_inner_outer < 3; ++ry_inner_outer) {
#pragma unroll
            for (int ax2 = 0; ax2 < 14; ++ax2) {
#pragma unroll
                for (int ax3 = 0; ax3 < 6; ++ax3) {
                    pad_temp_shared_local[(((ax2 * 6) + ax3))] = pad_temp_shared[(((((((int)threadIdx.y) * 84) + (ax2 * 6)) + (ry_inner_outer * 6)) + ax3))];
                }
            }
#pragma unroll
            for (int ax31 = 0; ax31 < 3; ++ax31) {
                kernel_shared_local[(ax31)] = kernel_shared[((((((int)threadIdx.z) * 9) + (ry_inner_outer * 3)) + ax31))];
            }
#pragma unroll
            for (int rx_inner_inner = 0; rx_inner_inner < 3; ++rx_inner_inner) {
#pragma unroll
                for (int yy_c = 0; yy_c < 14; ++yy_c) {
#pragma unroll
                    for (int xx_c = 0; xx_c < 4; ++xx_c) {
                        compute_local[(((yy_c * 4) + xx_c))] = (compute_local[(((yy_c * 4) + xx_c))] + (pad_temp_shared_local[((((yy_c * 6) + xx_c) + rx_inner_inner))] * kernel_shared_local[(rx_inner_inner)]));
                    }
                }
            }
        }
    }
#pragma unroll
    for (int yy_inner_inner_inner = 0; yy_inner_inner_inner < 14; ++yy_inner_inner_inner) {
#pragma unroll
        for (int xx_inner_inner_inner = 0; xx_inner_inner_inner < 4; ++xx_inner_inner_inner) {
            compute[((((((((((int)blockIdx.z) * 200704) + (((int)threadIdx.z) * 3136)) + (((int)blockIdx.y) * 1568)) + (((int)threadIdx.y) * 784)) + (yy_inner_inner_inner * 56)) + (((int)blockIdx.x) * 4)) + xx_inner_inner_inner))] = compute_local[(((yy_inner_inner_inner * 4) + xx_inner_inner_inner))];
        }
    }
}
//grid=(14,4,16),  block=(4,14,2)
extern "C" __global__ void conv_128_128_56_56(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[4];
    __shared__ float pad_temp_shared[768];
    __shared__ float kernel_shared[576];
    float pad_temp_shared_local[12];
    float kernel_shared_local[48];
    for (int ff_c_init = 0; ff_c_init < 4; ++ff_c_init) {
        compute_local[(ff_c_init)] = 0.000000e+00f;
    }
    for (int rc_outer = 0; rc_outer < 16; ++rc_outer) {
        __syncthreads();
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 7; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
            if (((((int)threadIdx.z) * 4) + ((((((int)threadIdx.y) * 28) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 96)) < 8) {
                if (((((int)threadIdx.z) * 64) + ((((((int)threadIdx.y) * 28) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 6)) < 128) {
                    if (((((((int)threadIdx.z) * 384) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 768) {
                        if ((((((int)threadIdx.y) * 28) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 384) {
                            pad_temp_shared[(((((((int)threadIdx.z) * 384) + (((int)threadIdx.y) * 28)) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= ((((int)blockIdx.y) * 14) + (((((((int)threadIdx.y) * 28) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 96) / 6))) && (((((int)blockIdx.y) * 14) + (((((((int)threadIdx.y) * 28) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 96) / 6)) < 57)) && (1 <= ((((int)blockIdx.x) * 4) + ((((((int)threadIdx.y) * 28) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 6)))) && (((((int)blockIdx.x) * 4) + ((((((int)threadIdx.y) * 28) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 6)) < 57)) ? data[(((((((((rc_outer * 25088) + (((int)threadIdx.z) * 12544)) + (((((((int)threadIdx.y) * 28) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 96) * 3136)) + (((int)blockIdx.y) * 784)) + ((((((((int)threadIdx.y) * 28) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 96) / 6) * 56)) + (((int)blockIdx.x) * 4)) + ((((((int)threadIdx.y) * 28) + (((int)threadIdx.x) * 7)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 6)) - 57))] : 0.000000e+00f);
                        }
                    }
                }
            }
        }
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 6; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
            if (((((int)threadIdx.z) * 4) + ((((((int)threadIdx.y) * 7) + (((int)threadIdx.x) * 2)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) / 24)) < 8) {
                if (((((int)threadIdx.z) * 32) + ((((((int)threadIdx.y) * 7) + (((int)threadIdx.x) * 2)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) / 3)) < 64) {
                    if (((((((int)threadIdx.z) * 96) + (((int)threadIdx.y) * 7)) + (((int)threadIdx.x) * 2)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) < 192) {
                        if (((((((int)threadIdx.z) * 288) + (((int)threadIdx.y) * 21)) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 576) {
                            if ((((((int)threadIdx.y) * 21) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 288) {
                                if (((((int)threadIdx.x) * 6) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 21) {
                                    if ((((((int)blockIdx.z) * 8) + (((int)threadIdx.z) * 4)) + ((((((int)threadIdx.y) * 7) + (((int)threadIdx.x) * 2)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) / 24)) < 128) {
                                        kernel_shared[(((((((int)threadIdx.z) * 288) + (((int)threadIdx.y) * 21)) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[(((((((((int)blockIdx.z) * 9216) + (((int)threadIdx.z) * 4608)) + (((((((int)threadIdx.y) * 7) + (((int)threadIdx.x) * 2)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) / 24) * 1152)) + (rc_outer * 72)) + (((((((int)threadIdx.y) * 7) + (((int)threadIdx.x) * 2)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) % 24) * 3)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 % 3)))];
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        __syncthreads();
        for (int rc_inner_outer = 0; rc_inner_outer < 2; ++rc_inner_outer) {
            for (int rx_inner_outer = 0; rx_inner_outer < 3; ++rx_inner_outer) {
                for (int ax1 = 0; ax1 < 4; ++ax1) {
                    for (int ax2 = 0; ax2 < 3; ++ax2) {
                        pad_temp_shared_local[(((ax1 * 3) + ax2))] = pad_temp_shared[(((((((rc_inner_outer * 384) + (ax1 * 96)) + (ax2 * 6)) + (((int)threadIdx.y) * 6)) + ((int)threadIdx.x)) + rx_inner_outer))];
                    }
                }
                for (int ax0 = 0; ax0 < 4; ++ax0) {
                    for (int ax11 = 0; ax11 < 4; ++ax11) {
                        for (int ax21 = 0; ax21 < 3; ++ax21) {
                            kernel_shared_local[((((ax0 * 12) + (ax11 * 3)) + ax21))] = kernel_shared[(((((((((int)threadIdx.z) * 288) + (ax0 * 72)) + (rc_inner_outer * 36)) + (ax11 * 9)) + (ax21 * 3)) + rx_inner_outer))];
                        }
                    }
                }
                for (int rc_inner_inner = 0; rc_inner_inner < 4; ++rc_inner_inner) {
                    for (int ry_inner_inner = 0; ry_inner_inner < 3; ++ry_inner_inner) {
                        for (int ff_c = 0; ff_c < 4; ++ff_c) {
                            compute_local[(ff_c)] = (compute_local[(ff_c)] + (pad_temp_shared_local[(((rc_inner_inner * 3) + ry_inner_inner))] * kernel_shared_local[((((ff_c * 12) + (rc_inner_inner * 3)) + ry_inner_inner))]));
                        }
                    }
                }
            }
        }
    }
    for (int ff_inner_inner_inner = 0; ff_inner_inner_inner < 4; ++ff_inner_inner_inner) {
        compute[((((((((((int)blockIdx.z) * 25088) + (((int)threadIdx.z) * 12544)) + (ff_inner_inner_inner * 3136)) + (((int)blockIdx.y) * 784)) + (((int)threadIdx.y) * 56)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)))] = compute_local[(ff_inner_inner_inner)];
    }
}
//grid=(1,28,1),  block=(1,1,64)
extern "C" __global__ void conv_128_128_28_28(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[56];
    __shared__ float pad_temp_shared[112];
    __shared__ float kernel_shared[512];
    float pad_temp_shared_local[28];
    float kernel_shared_local[2];
#pragma unroll
    for (int xx_c_init = 0; xx_c_init < 2; ++xx_c_init) {
        compute_local[(xx_c_init)] = 0.000000e+00f;
        compute_local[((xx_c_init + 28))] = 0.000000e+00f;
        compute_local[((xx_c_init + 2))] = 0.000000e+00f;
        compute_local[((xx_c_init + 30))] = 0.000000e+00f;
        compute_local[((xx_c_init + 4))] = 0.000000e+00f;
        compute_local[((xx_c_init + 32))] = 0.000000e+00f;
        compute_local[((xx_c_init + 6))] = 0.000000e+00f;
        compute_local[((xx_c_init + 34))] = 0.000000e+00f;
        compute_local[((xx_c_init + 8))] = 0.000000e+00f;
        compute_local[((xx_c_init + 36))] = 0.000000e+00f;
        compute_local[((xx_c_init + 10))] = 0.000000e+00f;
        compute_local[((xx_c_init + 38))] = 0.000000e+00f;
        compute_local[((xx_c_init + 12))] = 0.000000e+00f;
        compute_local[((xx_c_init + 40))] = 0.000000e+00f;
        compute_local[((xx_c_init + 14))] = 0.000000e+00f;
        compute_local[((xx_c_init + 42))] = 0.000000e+00f;
        compute_local[((xx_c_init + 16))] = 0.000000e+00f;
        compute_local[((xx_c_init + 44))] = 0.000000e+00f;
        compute_local[((xx_c_init + 18))] = 0.000000e+00f;
        compute_local[((xx_c_init + 46))] = 0.000000e+00f;
        compute_local[((xx_c_init + 20))] = 0.000000e+00f;
        compute_local[((xx_c_init + 48))] = 0.000000e+00f;
        compute_local[((xx_c_init + 22))] = 0.000000e+00f;
        compute_local[((xx_c_init + 50))] = 0.000000e+00f;
        compute_local[((xx_c_init + 24))] = 0.000000e+00f;
        compute_local[((xx_c_init + 52))] = 0.000000e+00f;
        compute_local[((xx_c_init + 26))] = 0.000000e+00f;
        compute_local[((xx_c_init + 54))] = 0.000000e+00f;
    }
    for (int rc_outer = 0; rc_outer < 32; ++rc_outer) {
        for (int ry_outer = 0; ry_outer < 3; ++ry_outer) {
#pragma unroll
            for (int rx_outer = 0; rx_outer < 3; ++rx_outer) {
                __syncthreads();
#pragma unroll
                for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
                    if (((((int)threadIdx.z) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 112) {
                        pad_temp_shared[(((((int)threadIdx.z) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 29)) && (1 <= (rx_outer + (((((int)threadIdx.z) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 28)))) && ((rx_outer + (((((int)threadIdx.z) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 28)) < 29)) ? data[((((((((rc_outer * 3136) + ((((((int)threadIdx.z) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 28) * 784)) + (((int)blockIdx.y) * 28)) + (ry_outer * 28)) + rx_outer) + (((((int)threadIdx.z) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 28)) - 29))] : 0.000000e+00f);
                    }
                }
#pragma unroll
                for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 8; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
                    kernel_shared[(((((int)threadIdx.z) * 8) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[(((((((((int)threadIdx.z) * 2304) + ((ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 >> 2) * 1152)) + (rc_outer * 36)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 & 3) * 9)) + (ry_outer * 3)) + rx_outer))];
                }
                __syncthreads();
#pragma unroll
                for (int rc_inner_outer = 0; rc_inner_outer < 4; ++rc_inner_outer) {
#pragma unroll
                    for (int ax3 = 0; ax3 < 2; ++ax3) {
                        pad_temp_shared_local[(ax3)] = pad_temp_shared[(((rc_inner_outer * 28) + ax3))];
                        pad_temp_shared_local[((ax3 + 2))] = pad_temp_shared[((((rc_inner_outer * 28) + ax3) + 2))];
                        pad_temp_shared_local[((ax3 + 4))] = pad_temp_shared[((((rc_inner_outer * 28) + ax3) + 4))];
                        pad_temp_shared_local[((ax3 + 6))] = pad_temp_shared[((((rc_inner_outer * 28) + ax3) + 6))];
                        pad_temp_shared_local[((ax3 + 8))] = pad_temp_shared[((((rc_inner_outer * 28) + ax3) + 8))];
                        pad_temp_shared_local[((ax3 + 10))] = pad_temp_shared[((((rc_inner_outer * 28) + ax3) + 10))];
                        pad_temp_shared_local[((ax3 + 12))] = pad_temp_shared[((((rc_inner_outer * 28) + ax3) + 12))];
                        pad_temp_shared_local[((ax3 + 14))] = pad_temp_shared[((((rc_inner_outer * 28) + ax3) + 14))];
                        pad_temp_shared_local[((ax3 + 16))] = pad_temp_shared[((((rc_inner_outer * 28) + ax3) + 16))];
                        pad_temp_shared_local[((ax3 + 18))] = pad_temp_shared[((((rc_inner_outer * 28) + ax3) + 18))];
                        pad_temp_shared_local[((ax3 + 20))] = pad_temp_shared[((((rc_inner_outer * 28) + ax3) + 20))];
                        pad_temp_shared_local[((ax3 + 22))] = pad_temp_shared[((((rc_inner_outer * 28) + ax3) + 22))];
                        pad_temp_shared_local[((ax3 + 24))] = pad_temp_shared[((((rc_inner_outer * 28) + ax3) + 24))];
                        pad_temp_shared_local[((ax3 + 26))] = pad_temp_shared[((((rc_inner_outer * 28) + ax3) + 26))];
                    }
                    kernel_shared_local[(0)] = kernel_shared[(((((int)threadIdx.z) * 4) + rc_inner_outer))];
                    kernel_shared_local[(1)] = kernel_shared[((((((int)threadIdx.z) * 4) + rc_inner_outer) + 256))];
#pragma unroll
                    for (int xx_c = 0; xx_c < 2; ++xx_c) {
                        compute_local[(xx_c)] = (compute_local[(xx_c)] + (pad_temp_shared_local[(xx_c)] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 28))] = (compute_local[((xx_c + 28))] + (pad_temp_shared_local[(xx_c)] * kernel_shared_local[(1)]));
                        compute_local[((xx_c + 2))] = (compute_local[((xx_c + 2))] + (pad_temp_shared_local[((xx_c + 2))] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 30))] = (compute_local[((xx_c + 30))] + (pad_temp_shared_local[((xx_c + 2))] * kernel_shared_local[(1)]));
                        compute_local[((xx_c + 4))] = (compute_local[((xx_c + 4))] + (pad_temp_shared_local[((xx_c + 4))] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 32))] = (compute_local[((xx_c + 32))] + (pad_temp_shared_local[((xx_c + 4))] * kernel_shared_local[(1)]));
                        compute_local[((xx_c + 6))] = (compute_local[((xx_c + 6))] + (pad_temp_shared_local[((xx_c + 6))] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 34))] = (compute_local[((xx_c + 34))] + (pad_temp_shared_local[((xx_c + 6))] * kernel_shared_local[(1)]));
                        compute_local[((xx_c + 8))] = (compute_local[((xx_c + 8))] + (pad_temp_shared_local[((xx_c + 8))] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 36))] = (compute_local[((xx_c + 36))] + (pad_temp_shared_local[((xx_c + 8))] * kernel_shared_local[(1)]));
                        compute_local[((xx_c + 10))] = (compute_local[((xx_c + 10))] + (pad_temp_shared_local[((xx_c + 10))] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 38))] = (compute_local[((xx_c + 38))] + (pad_temp_shared_local[((xx_c + 10))] * kernel_shared_local[(1)]));
                        compute_local[((xx_c + 12))] = (compute_local[((xx_c + 12))] + (pad_temp_shared_local[((xx_c + 12))] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 40))] = (compute_local[((xx_c + 40))] + (pad_temp_shared_local[((xx_c + 12))] * kernel_shared_local[(1)]));
                        compute_local[((xx_c + 14))] = (compute_local[((xx_c + 14))] + (pad_temp_shared_local[((xx_c + 14))] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 42))] = (compute_local[((xx_c + 42))] + (pad_temp_shared_local[((xx_c + 14))] * kernel_shared_local[(1)]));
                        compute_local[((xx_c + 16))] = (compute_local[((xx_c + 16))] + (pad_temp_shared_local[((xx_c + 16))] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 44))] = (compute_local[((xx_c + 44))] + (pad_temp_shared_local[((xx_c + 16))] * kernel_shared_local[(1)]));
                        compute_local[((xx_c + 18))] = (compute_local[((xx_c + 18))] + (pad_temp_shared_local[((xx_c + 18))] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 46))] = (compute_local[((xx_c + 46))] + (pad_temp_shared_local[((xx_c + 18))] * kernel_shared_local[(1)]));
                        compute_local[((xx_c + 20))] = (compute_local[((xx_c + 20))] + (pad_temp_shared_local[((xx_c + 20))] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 48))] = (compute_local[((xx_c + 48))] + (pad_temp_shared_local[((xx_c + 20))] * kernel_shared_local[(1)]));
                        compute_local[((xx_c + 22))] = (compute_local[((xx_c + 22))] + (pad_temp_shared_local[((xx_c + 22))] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 50))] = (compute_local[((xx_c + 50))] + (pad_temp_shared_local[((xx_c + 22))] * kernel_shared_local[(1)]));
                        compute_local[((xx_c + 24))] = (compute_local[((xx_c + 24))] + (pad_temp_shared_local[((xx_c + 24))] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 52))] = (compute_local[((xx_c + 52))] + (pad_temp_shared_local[((xx_c + 24))] * kernel_shared_local[(1)]));
                        compute_local[((xx_c + 26))] = (compute_local[((xx_c + 26))] + (pad_temp_shared_local[((xx_c + 26))] * kernel_shared_local[(0)]));
                        compute_local[((xx_c + 54))] = (compute_local[((xx_c + 54))] + (pad_temp_shared_local[((xx_c + 26))] * kernel_shared_local[(1)]));
                    }
                }
            }
        }
    }
#pragma unroll
    for (int xx_inner_inner_inner = 0; xx_inner_inner_inner < 2; ++xx_inner_inner_inner) {
        compute[((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner))] = compute_local[(xx_inner_inner_inner)];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50176))] = compute_local[((xx_inner_inner_inner + 28))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 2))] = compute_local[((xx_inner_inner_inner + 2))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50178))] = compute_local[((xx_inner_inner_inner + 30))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 4))] = compute_local[((xx_inner_inner_inner + 4))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50180))] = compute_local[((xx_inner_inner_inner + 32))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 6))] = compute_local[((xx_inner_inner_inner + 6))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50182))] = compute_local[((xx_inner_inner_inner + 34))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 8))] = compute_local[((xx_inner_inner_inner + 8))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50184))] = compute_local[((xx_inner_inner_inner + 36))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 10))] = compute_local[((xx_inner_inner_inner + 10))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50186))] = compute_local[((xx_inner_inner_inner + 38))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 12))] = compute_local[((xx_inner_inner_inner + 12))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50188))] = compute_local[((xx_inner_inner_inner + 40))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 14))] = compute_local[((xx_inner_inner_inner + 14))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50190))] = compute_local[((xx_inner_inner_inner + 42))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 16))] = compute_local[((xx_inner_inner_inner + 16))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50192))] = compute_local[((xx_inner_inner_inner + 44))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 18))] = compute_local[((xx_inner_inner_inner + 18))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50194))] = compute_local[((xx_inner_inner_inner + 46))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 20))] = compute_local[((xx_inner_inner_inner + 20))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50196))] = compute_local[((xx_inner_inner_inner + 48))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 22))] = compute_local[((xx_inner_inner_inner + 22))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50198))] = compute_local[((xx_inner_inner_inner + 50))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 24))] = compute_local[((xx_inner_inner_inner + 24))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50200))] = compute_local[((xx_inner_inner_inner + 52))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 26))] = compute_local[((xx_inner_inner_inner + 26))];
        compute[(((((((int)threadIdx.z) * 784) + (((int)blockIdx.y) * 28)) + xx_inner_inner_inner) + 50202))] = compute_local[((xx_inner_inner_inner + 54))];
    }
}
// grid=(28,1,14),  block=(1,14,7)
extern "C" __global__ void conv_196_160_28_28(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[4];
    __shared__ float pad_temp_shared[1440];
    __shared__ float kernel_shared[2016];
    float pad_temp_shared_local[24];
    float kernel_shared_local[36];
    for (int ff_c_init = 0; ff_c_init < 2; ++ff_c_init) {
        for (int yy_c_init = 0; yy_c_init < 2; ++yy_c_init) {
            compute_local[(((ff_c_init * 2) + yy_c_init))] = 0.000000e+00f;
        }
    }
    for (int rc_outer = 0; rc_outer < 10; ++rc_outer) {
        __syncthreads();
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner < 15; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) {
            if (((((int)threadIdx.y) * 5) + (((((int)threadIdx.z) * 206) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 3)) < 480) {
                if ((((((int)threadIdx.z) * 206) + (((int)threadIdx.y) * 15)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 1440) {
                    if (((((int)threadIdx.y) * 15) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) < 206) {
                        pad_temp_shared[((((((int)threadIdx.z) * 206) + (((int)threadIdx.y) * 15)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner))] = (((((1 <= (((((int)threadIdx.y) * 5) + (((((int)threadIdx.z) * 206) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 3)) % 30)) && ((((((int)threadIdx.y) * 5) + (((((int)threadIdx.z) * 206) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 3)) % 30) < 29)) && (1 <= (((int)blockIdx.x) + (((((int)threadIdx.z) * 206) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 3)))) && ((((int)blockIdx.x) + (((((int)threadIdx.z) * 206) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 3)) < 29)) ? data[(((((((rc_outer * 12544) + ((((((int)threadIdx.y) * 5) + (((((int)threadIdx.z) * 206) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 3)) / 30) * 784)) + ((((((int)threadIdx.y) * 5) + (((((int)threadIdx.z) * 206) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) / 3)) % 30) * 28)) + ((int)blockIdx.x)) + (((((int)threadIdx.z) * 206) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner) % 3)) - 29))] : 0.000000e+00f);
                    }
                }
            }
        }
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 < 21; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) {
            if (((((int)threadIdx.z) * 2) + (((((int)threadIdx.y) * 7) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) / 48)) < 14) {
                if (((((int)threadIdx.z) * 32) + (((((int)threadIdx.y) * 7) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) / 3)) < 224) {
                    if ((((((int)threadIdx.z) * 96) + (((int)threadIdx.y) * 7)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) < 672) {
                        if ((((((int)threadIdx.z) * 288) + (((int)threadIdx.y) * 21)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 2016) {
                            if (((((int)threadIdx.y) * 21) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1) < 288) {
                                if ((((((int)blockIdx.z) * 14) + (((int)threadIdx.z) * 2)) + (((((int)threadIdx.y) * 7) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) / 48)) < 196) {
                                    kernel_shared[((((((int)threadIdx.z) * 288) + (((int)threadIdx.y) * 21)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1))] = kernel[(((((((((int)blockIdx.z) * 20160) + (((int)threadIdx.z) * 2880)) + ((((((int)threadIdx.y) * 7) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) / 48) * 1440)) + (rc_outer * 144)) + ((((((int)threadIdx.y) * 7) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 / 3)) % 48) * 3)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_inner_inner1 % 3)))];
                                }
                            }
                        }
                    }
                }
            }
        }
        __syncthreads();
        for (int rc_inner_outer = 0; rc_inner_outer < 8; ++rc_inner_outer) {
            for (int ax1 = 0; ax1 < 2; ++ax1) {
                for (int ax2 = 0; ax2 < 4; ++ax2) {
                    for (int ax3 = 0; ax3 < 3; ++ax3) {
                        pad_temp_shared_local[((((ax1 * 12) + (ax2 * 3)) + ax3))] = pad_temp_shared[((((((rc_inner_outer * 180) + (ax1 * 90)) + (((int)threadIdx.y) * 6)) + (ax2 * 3)) + ax3))];
                    }
                }
            }
            for (int ax0 = 0; ax0 < 2; ++ax0) {
                for (int ax11 = 0; ax11 < 2; ++ax11) {
                    for (int ax21 = 0; ax21 < 3; ++ax21) {
                        for (int ax31 = 0; ax31 < 3; ++ax31) {
                            kernel_shared_local[(((((ax0 * 18) + (ax11 * 9)) + (ax21 * 3)) + ax31))] = kernel_shared[(((((((((int)threadIdx.z) * 288) + (ax0 * 144)) + (rc_inner_outer * 18)) + (ax11 * 9)) + (ax21 * 3)) + ax31))];
                        }
                    }
                }
            }
            for (int rc_inner_inner = 0; rc_inner_inner < 2; ++rc_inner_inner) {
                for (int ry_inner_inner = 0; ry_inner_inner < 3; ++ry_inner_inner) {
                    for (int rx_inner_inner = 0; rx_inner_inner < 3; ++rx_inner_inner) {
                        for (int ff_c = 0; ff_c < 2; ++ff_c) {
                            for (int yy_c = 0; yy_c < 2; ++yy_c) {
                                compute_local[(((ff_c * 2) + yy_c))] = (compute_local[(((ff_c * 2) + yy_c))] + (pad_temp_shared_local[(((((rc_inner_inner * 12) + (yy_c * 3)) + (ry_inner_inner * 3)) + rx_inner_inner))] * kernel_shared_local[(((((ff_c * 18) + (rc_inner_inner * 9)) + (ry_inner_inner * 3)) + rx_inner_inner))]));
                            }
                        }
                    }
                }
            }
        }
    }
    for (int ff_inner_inner_inner = 0; ff_inner_inner_inner < 2; ++ff_inner_inner_inner) {
        for (int yy_inner_inner_inner = 0; yy_inner_inner_inner < 2; ++yy_inner_inner_inner) {
            compute[(((((((((int)blockIdx.z) * 10976) + (((int)threadIdx.z) * 1568)) + (ff_inner_inner_inner * 784)) + (((int)threadIdx.y) * 56)) + (yy_inner_inner_inner * 28)) + ((int)blockIdx.x)))] = compute_local[(((ff_inner_inner_inner * 2) + yy_inner_inner_inner))];
        }
    }
}
//grid=(2,7,4),  block=(1,1,49)

extern "C" __global__ void conv_196_160_14_14(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
    float compute_local[14];
    __shared__ float pad_temp_shared[288];
    __shared__ float kernel_shared[3528];
    float pad_temp_shared_local[126];
    float kernel_shared_local[9];
    compute_local[(0)] = 0.000000e+00f;
    compute_local[(7)] = 0.000000e+00f;
    compute_local[(1)] = 0.000000e+00f;
    compute_local[(8)] = 0.000000e+00f;
    compute_local[(2)] = 0.000000e+00f;
    compute_local[(9)] = 0.000000e+00f;
    compute_local[(3)] = 0.000000e+00f;
    compute_local[(10)] = 0.000000e+00f;
    compute_local[(4)] = 0.000000e+00f;
    compute_local[(11)] = 0.000000e+00f;
    compute_local[(5)] = 0.000000e+00f;
    compute_local[(12)] = 0.000000e+00f;
    compute_local[(6)] = 0.000000e+00f;
    compute_local[(13)] = 0.000000e+00f;
    for (int rc_outer = 0; rc_outer < 20; ++rc_outer) {
        __syncthreads();
        if (((int)threadIdx.z) < 48) {
            pad_temp_shared[((((int)threadIdx.z) * 6))] = (((((1 <= ((((int)blockIdx.y) * 2) + (((((int)threadIdx.z) % 6) * 6) / 9))) && (((((int)blockIdx.y) * 2) + (((((int)threadIdx.z) % 6) * 6) / 9)) < 15)) && (1 <= ((((int)blockIdx.x) * 7) + ((((int)threadIdx.z) * 6) % 9)))) && (((((int)blockIdx.x) * 7) + ((((int)threadIdx.z) * 6) % 9)) < 15)) ? data[((((((((rc_outer * 1568) + ((((int)threadIdx.z) / 6) * 196)) + (((int)blockIdx.y) * 28)) + ((((((int)threadIdx.z) % 6) * 6) / 9) * 14)) + (((int)blockIdx.x) * 7)) + ((((int)threadIdx.z) * 6) % 9)) - 15))] : 0.000000e+00f);
        }
        if (((int)threadIdx.z) < 48) {
            pad_temp_shared[(((((int)threadIdx.z) * 6) + 1))] = (((((1 <= ((((int)blockIdx.y) * 2) + ((((((int)threadIdx.z) * 6) + 1) % 36) / 9))) && (((((int)blockIdx.y) * 2) + ((((((int)threadIdx.z) * 6) + 1) % 36) / 9)) < 15)) && (1 <= ((((int)blockIdx.x) * 7) + (((((int)threadIdx.z) * 6) + 1) % 9)))) && (((((int)blockIdx.x) * 7) + (((((int)threadIdx.z) * 6) + 1) % 9)) < 15)) ? data[((((((((rc_outer * 1568) + ((((((int)threadIdx.z) * 6) + 1) / 36) * 196)) + (((int)blockIdx.y) * 28)) + (((((((int)threadIdx.z) * 6) + 1) % 36) / 9) * 14)) + (((int)blockIdx.x) * 7)) + (((((int)threadIdx.z) * 6) + 1) % 9)) - 15))] : 0.000000e+00f);
        }
        if (((int)threadIdx.z) < 48) {
            pad_temp_shared[(((((int)threadIdx.z) * 6) + 2))] = (((((1 <= ((((int)blockIdx.y) * 2) + ((((((int)threadIdx.z) * 6) + 2) % 36) / 9))) && (((((int)blockIdx.y) * 2) + ((((((int)threadIdx.z) * 6) + 2) % 36) / 9)) < 15)) && (1 <= ((((int)blockIdx.x) * 7) + (((((int)threadIdx.z) * 6) + 2) % 9)))) && (((((int)blockIdx.x) * 7) + (((((int)threadIdx.z) * 6) + 2) % 9)) < 15)) ? data[((((((((rc_outer * 1568) + ((((((int)threadIdx.z) * 6) + 2) / 36) * 196)) + (((int)blockIdx.y) * 28)) + (((((((int)threadIdx.z) * 6) + 2) % 36) / 9) * 14)) + (((int)blockIdx.x) * 7)) + (((((int)threadIdx.z) * 6) + 2) % 9)) - 15))] : 0.000000e+00f);
        }
        if (((int)threadIdx.z) < 48) {
            pad_temp_shared[(((((int)threadIdx.z) * 6) + 3))] = (((((1 <= ((((int)blockIdx.y) * 2) + ((((((int)threadIdx.z) * 6) + 3) % 36) / 9))) && (((((int)blockIdx.y) * 2) + ((((((int)threadIdx.z) * 6) + 3) % 36) / 9)) < 15)) && (1 <= ((((int)blockIdx.x) * 7) + (((((int)threadIdx.z) * 6) + 3) % 9)))) && (((((int)blockIdx.x) * 7) + (((((int)threadIdx.z) * 6) + 3) % 9)) < 15)) ? data[((((((((rc_outer * 1568) + ((((((int)threadIdx.z) * 6) + 3) / 36) * 196)) + (((int)blockIdx.y) * 28)) + (((((((int)threadIdx.z) * 6) + 3) % 36) / 9) * 14)) + (((int)blockIdx.x) * 7)) + (((((int)threadIdx.z) * 6) + 3) % 9)) - 15))] : 0.000000e+00f);
        }
        if (((int)threadIdx.z) < 48) {
            pad_temp_shared[(((((int)threadIdx.z) * 6) + 4))] = (((((1 <= ((((int)blockIdx.y) * 2) + ((((((int)threadIdx.z) * 6) + 4) % 36) / 9))) && (((((int)blockIdx.y) * 2) + ((((((int)threadIdx.z) * 6) + 4) % 36) / 9)) < 15)) && (1 <= ((((int)blockIdx.x) * 7) + (((((int)threadIdx.z) * 6) + 4) % 9)))) && (((((int)blockIdx.x) * 7) + (((((int)threadIdx.z) * 6) + 4) % 9)) < 15)) ? data[((((((((rc_outer * 1568) + ((((((int)threadIdx.z) * 6) + 4) / 36) * 196)) + (((int)blockIdx.y) * 28)) + (((((((int)threadIdx.z) * 6) + 4) % 36) / 9) * 14)) + (((int)blockIdx.x) * 7)) + (((((int)threadIdx.z) * 6) + 4) % 9)) - 15))] : 0.000000e+00f);
        }
        if (((int)threadIdx.z) < 48) {
            pad_temp_shared[(((((int)threadIdx.z) * 6) + 5))] = (((((1 <= ((((int)blockIdx.y) * 2) + ((((((int)threadIdx.z) * 6) + 5) % 36) / 9))) && (((((int)blockIdx.y) * 2) + ((((((int)threadIdx.z) * 6) + 5) % 36) / 9)) < 15)) && (1 <= ((((int)blockIdx.x) * 7) + (((((int)threadIdx.z) * 6) + 5) % 9)))) && (((((int)blockIdx.x) * 7) + (((((int)threadIdx.z) * 6) + 5) % 9)) < 15)) ? data[((((((((rc_outer * 1568) + ((((((int)threadIdx.z) * 6) + 5) / 36) * 196)) + (((int)blockIdx.y) * 28)) + (((((((int)threadIdx.z) * 6) + 5) % 36) / 9) * 14)) + (((int)blockIdx.x) * 7)) + (((((int)threadIdx.z) * 6) + 5) % 9)) - 15))] : 0.000000e+00f);
        }
        kernel_shared[((((int)threadIdx.z) * 72))] = kernel[((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 1))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 1))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 2))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 2))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 3))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 3))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 4))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 4))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 5))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 5))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 6))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 6))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 7))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 7))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 8))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 8))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 9))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 9))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 10))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 10))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 11))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 11))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 12))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 12))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 13))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 13))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 14))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 14))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 15))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 15))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 16))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 16))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 17))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 17))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 18))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 18))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 19))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 19))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 20))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 20))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 21))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 21))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 22))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 22))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 23))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 23))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 24))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 24))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 25))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 25))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 26))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 26))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 27))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 27))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 28))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 28))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 29))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 29))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 30))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 30))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 31))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 31))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 32))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 32))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 33))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 33))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 34))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 34))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 35))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 35))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 36))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 36))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 37))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 37))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 38))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 38))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 39))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 39))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 40))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 40))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 41))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 41))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 42))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 42))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 43))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 43))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 44))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 44))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 45))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 45))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 46))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 46))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 47))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 47))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 48))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 48))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 49))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 49))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 50))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 50))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 51))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 51))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 52))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 52))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 53))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 53))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 54))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 54))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 55))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 55))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 56))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 56))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 57))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 57))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 58))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 58))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 59))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 59))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 60))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 60))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 61))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 61))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 62))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 62))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 63))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 63))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 64))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 64))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 65))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 65))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 66))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 66))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 67))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 67))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 68))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 68))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 69))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 69))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 70))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 70))];
        kernel_shared[(((((int)threadIdx.z) * 72) + 71))] = kernel[(((((((int)blockIdx.z) * 70560) + (((int)threadIdx.z) * 1440)) + (rc_outer * 72)) + 71))];
        __syncthreads();
        for (int rc_inner_outer = 0; rc_inner_outer < 8; ++rc_inner_outer) {
            pad_temp_shared_local[(0)] = pad_temp_shared[((rc_inner_outer * 36))];
            pad_temp_shared_local[(63)] = pad_temp_shared[(((rc_inner_outer * 36) + 9))];
            pad_temp_shared_local[(9)] = pad_temp_shared[(((rc_inner_outer * 36) + 1))];
            pad_temp_shared_local[(72)] = pad_temp_shared[(((rc_inner_outer * 36) + 10))];
            pad_temp_shared_local[(18)] = pad_temp_shared[(((rc_inner_outer * 36) + 2))];
            pad_temp_shared_local[(81)] = pad_temp_shared[(((rc_inner_outer * 36) + 11))];
            pad_temp_shared_local[(27)] = pad_temp_shared[(((rc_inner_outer * 36) + 3))];
            pad_temp_shared_local[(90)] = pad_temp_shared[(((rc_inner_outer * 36) + 12))];
            pad_temp_shared_local[(36)] = pad_temp_shared[(((rc_inner_outer * 36) + 4))];
            pad_temp_shared_local[(99)] = pad_temp_shared[(((rc_inner_outer * 36) + 13))];
            pad_temp_shared_local[(45)] = pad_temp_shared[(((rc_inner_outer * 36) + 5))];
            pad_temp_shared_local[(108)] = pad_temp_shared[(((rc_inner_outer * 36) + 14))];
            pad_temp_shared_local[(54)] = pad_temp_shared[(((rc_inner_outer * 36) + 6))];
            pad_temp_shared_local[(117)] = pad_temp_shared[(((rc_inner_outer * 36) + 15))];
            pad_temp_shared_local[(1)] = pad_temp_shared[(((rc_inner_outer * 36) + 1))];
            pad_temp_shared_local[(64)] = pad_temp_shared[(((rc_inner_outer * 36) + 10))];
            pad_temp_shared_local[(10)] = pad_temp_shared[(((rc_inner_outer * 36) + 2))];
            pad_temp_shared_local[(73)] = pad_temp_shared[(((rc_inner_outer * 36) + 11))];
            pad_temp_shared_local[(19)] = pad_temp_shared[(((rc_inner_outer * 36) + 3))];
            pad_temp_shared_local[(82)] = pad_temp_shared[(((rc_inner_outer * 36) + 12))];
            pad_temp_shared_local[(28)] = pad_temp_shared[(((rc_inner_outer * 36) + 4))];
            pad_temp_shared_local[(91)] = pad_temp_shared[(((rc_inner_outer * 36) + 13))];
            pad_temp_shared_local[(37)] = pad_temp_shared[(((rc_inner_outer * 36) + 5))];
            pad_temp_shared_local[(100)] = pad_temp_shared[(((rc_inner_outer * 36) + 14))];
            pad_temp_shared_local[(46)] = pad_temp_shared[(((rc_inner_outer * 36) + 6))];
            pad_temp_shared_local[(109)] = pad_temp_shared[(((rc_inner_outer * 36) + 15))];
            pad_temp_shared_local[(55)] = pad_temp_shared[(((rc_inner_outer * 36) + 7))];
            pad_temp_shared_local[(118)] = pad_temp_shared[(((rc_inner_outer * 36) + 16))];
            pad_temp_shared_local[(2)] = pad_temp_shared[(((rc_inner_outer * 36) + 2))];
            pad_temp_shared_local[(65)] = pad_temp_shared[(((rc_inner_outer * 36) + 11))];
            pad_temp_shared_local[(11)] = pad_temp_shared[(((rc_inner_outer * 36) + 3))];
            pad_temp_shared_local[(74)] = pad_temp_shared[(((rc_inner_outer * 36) + 12))];
            pad_temp_shared_local[(20)] = pad_temp_shared[(((rc_inner_outer * 36) + 4))];
            pad_temp_shared_local[(83)] = pad_temp_shared[(((rc_inner_outer * 36) + 13))];
            pad_temp_shared_local[(29)] = pad_temp_shared[(((rc_inner_outer * 36) + 5))];
            pad_temp_shared_local[(92)] = pad_temp_shared[(((rc_inner_outer * 36) + 14))];
            pad_temp_shared_local[(38)] = pad_temp_shared[(((rc_inner_outer * 36) + 6))];
            pad_temp_shared_local[(101)] = pad_temp_shared[(((rc_inner_outer * 36) + 15))];
            pad_temp_shared_local[(47)] = pad_temp_shared[(((rc_inner_outer * 36) + 7))];
            pad_temp_shared_local[(110)] = pad_temp_shared[(((rc_inner_outer * 36) + 16))];
            pad_temp_shared_local[(56)] = pad_temp_shared[(((rc_inner_outer * 36) + 8))];
            pad_temp_shared_local[(119)] = pad_temp_shared[(((rc_inner_outer * 36) + 17))];
            pad_temp_shared_local[(3)] = pad_temp_shared[(((rc_inner_outer * 36) + 9))];
            pad_temp_shared_local[(66)] = pad_temp_shared[(((rc_inner_outer * 36) + 18))];
            pad_temp_shared_local[(12)] = pad_temp_shared[(((rc_inner_outer * 36) + 10))];
            pad_temp_shared_local[(75)] = pad_temp_shared[(((rc_inner_outer * 36) + 19))];
            pad_temp_shared_local[(21)] = pad_temp_shared[(((rc_inner_outer * 36) + 11))];
            pad_temp_shared_local[(84)] = pad_temp_shared[(((rc_inner_outer * 36) + 20))];
            pad_temp_shared_local[(30)] = pad_temp_shared[(((rc_inner_outer * 36) + 12))];
            pad_temp_shared_local[(93)] = pad_temp_shared[(((rc_inner_outer * 36) + 21))];
            pad_temp_shared_local[(39)] = pad_temp_shared[(((rc_inner_outer * 36) + 13))];
            pad_temp_shared_local[(102)] = pad_temp_shared[(((rc_inner_outer * 36) + 22))];
            pad_temp_shared_local[(48)] = pad_temp_shared[(((rc_inner_outer * 36) + 14))];
            pad_temp_shared_local[(111)] = pad_temp_shared[(((rc_inner_outer * 36) + 23))];
            pad_temp_shared_local[(57)] = pad_temp_shared[(((rc_inner_outer * 36) + 15))];
            pad_temp_shared_local[(120)] = pad_temp_shared[(((rc_inner_outer * 36) + 24))];
            pad_temp_shared_local[(4)] = pad_temp_shared[(((rc_inner_outer * 36) + 10))];
            pad_temp_shared_local[(67)] = pad_temp_shared[(((rc_inner_outer * 36) + 19))];
            pad_temp_shared_local[(13)] = pad_temp_shared[(((rc_inner_outer * 36) + 11))];
            pad_temp_shared_local[(76)] = pad_temp_shared[(((rc_inner_outer * 36) + 20))];
            pad_temp_shared_local[(22)] = pad_temp_shared[(((rc_inner_outer * 36) + 12))];
            pad_temp_shared_local[(85)] = pad_temp_shared[(((rc_inner_outer * 36) + 21))];
            pad_temp_shared_local[(31)] = pad_temp_shared[(((rc_inner_outer * 36) + 13))];
            pad_temp_shared_local[(94)] = pad_temp_shared[(((rc_inner_outer * 36) + 22))];
            pad_temp_shared_local[(40)] = pad_temp_shared[(((rc_inner_outer * 36) + 14))];
            pad_temp_shared_local[(103)] = pad_temp_shared[(((rc_inner_outer * 36) + 23))];
            pad_temp_shared_local[(49)] = pad_temp_shared[(((rc_inner_outer * 36) + 15))];
            pad_temp_shared_local[(112)] = pad_temp_shared[(((rc_inner_outer * 36) + 24))];
            pad_temp_shared_local[(58)] = pad_temp_shared[(((rc_inner_outer * 36) + 16))];
            pad_temp_shared_local[(121)] = pad_temp_shared[(((rc_inner_outer * 36) + 25))];
            pad_temp_shared_local[(5)] = pad_temp_shared[(((rc_inner_outer * 36) + 11))];
            pad_temp_shared_local[(68)] = pad_temp_shared[(((rc_inner_outer * 36) + 20))];
            pad_temp_shared_local[(14)] = pad_temp_shared[(((rc_inner_outer * 36) + 12))];
            pad_temp_shared_local[(77)] = pad_temp_shared[(((rc_inner_outer * 36) + 21))];
            pad_temp_shared_local[(23)] = pad_temp_shared[(((rc_inner_outer * 36) + 13))];
            pad_temp_shared_local[(86)] = pad_temp_shared[(((rc_inner_outer * 36) + 22))];
            pad_temp_shared_local[(32)] = pad_temp_shared[(((rc_inner_outer * 36) + 14))];
            pad_temp_shared_local[(95)] = pad_temp_shared[(((rc_inner_outer * 36) + 23))];
            pad_temp_shared_local[(41)] = pad_temp_shared[(((rc_inner_outer * 36) + 15))];
            pad_temp_shared_local[(104)] = pad_temp_shared[(((rc_inner_outer * 36) + 24))];
            pad_temp_shared_local[(50)] = pad_temp_shared[(((rc_inner_outer * 36) + 16))];
            pad_temp_shared_local[(113)] = pad_temp_shared[(((rc_inner_outer * 36) + 25))];
            pad_temp_shared_local[(59)] = pad_temp_shared[(((rc_inner_outer * 36) + 17))];
            pad_temp_shared_local[(122)] = pad_temp_shared[(((rc_inner_outer * 36) + 26))];
            pad_temp_shared_local[(6)] = pad_temp_shared[(((rc_inner_outer * 36) + 18))];
            pad_temp_shared_local[(69)] = pad_temp_shared[(((rc_inner_outer * 36) + 27))];
            pad_temp_shared_local[(15)] = pad_temp_shared[(((rc_inner_outer * 36) + 19))];
            pad_temp_shared_local[(78)] = pad_temp_shared[(((rc_inner_outer * 36) + 28))];
            pad_temp_shared_local[(24)] = pad_temp_shared[(((rc_inner_outer * 36) + 20))];
            pad_temp_shared_local[(87)] = pad_temp_shared[(((rc_inner_outer * 36) + 29))];
            pad_temp_shared_local[(33)] = pad_temp_shared[(((rc_inner_outer * 36) + 21))];
            pad_temp_shared_local[(96)] = pad_temp_shared[(((rc_inner_outer * 36) + 30))];
            pad_temp_shared_local[(42)] = pad_temp_shared[(((rc_inner_outer * 36) + 22))];
            pad_temp_shared_local[(105)] = pad_temp_shared[(((rc_inner_outer * 36) + 31))];
            pad_temp_shared_local[(51)] = pad_temp_shared[(((rc_inner_outer * 36) + 23))];
            pad_temp_shared_local[(114)] = pad_temp_shared[(((rc_inner_outer * 36) + 32))];
            pad_temp_shared_local[(60)] = pad_temp_shared[(((rc_inner_outer * 36) + 24))];
            pad_temp_shared_local[(123)] = pad_temp_shared[(((rc_inner_outer * 36) + 33))];
            pad_temp_shared_local[(7)] = pad_temp_shared[(((rc_inner_outer * 36) + 19))];
            pad_temp_shared_local[(70)] = pad_temp_shared[(((rc_inner_outer * 36) + 28))];
            pad_temp_shared_local[(16)] = pad_temp_shared[(((rc_inner_outer * 36) + 20))];
            pad_temp_shared_local[(79)] = pad_temp_shared[(((rc_inner_outer * 36) + 29))];
            pad_temp_shared_local[(25)] = pad_temp_shared[(((rc_inner_outer * 36) + 21))];
            pad_temp_shared_local[(88)] = pad_temp_shared[(((rc_inner_outer * 36) + 30))];
            pad_temp_shared_local[(34)] = pad_temp_shared[(((rc_inner_outer * 36) + 22))];
            pad_temp_shared_local[(97)] = pad_temp_shared[(((rc_inner_outer * 36) + 31))];
            pad_temp_shared_local[(43)] = pad_temp_shared[(((rc_inner_outer * 36) + 23))];
            pad_temp_shared_local[(106)] = pad_temp_shared[(((rc_inner_outer * 36) + 32))];
            pad_temp_shared_local[(52)] = pad_temp_shared[(((rc_inner_outer * 36) + 24))];
            pad_temp_shared_local[(115)] = pad_temp_shared[(((rc_inner_outer * 36) + 33))];
            pad_temp_shared_local[(61)] = pad_temp_shared[(((rc_inner_outer * 36) + 25))];
            pad_temp_shared_local[(124)] = pad_temp_shared[(((rc_inner_outer * 36) + 34))];
            pad_temp_shared_local[(8)] = pad_temp_shared[(((rc_inner_outer * 36) + 20))];
            pad_temp_shared_local[(71)] = pad_temp_shared[(((rc_inner_outer * 36) + 29))];
            pad_temp_shared_local[(17)] = pad_temp_shared[(((rc_inner_outer * 36) + 21))];
            pad_temp_shared_local[(80)] = pad_temp_shared[(((rc_inner_outer * 36) + 30))];
            pad_temp_shared_local[(26)] = pad_temp_shared[(((rc_inner_outer * 36) + 22))];
            pad_temp_shared_local[(89)] = pad_temp_shared[(((rc_inner_outer * 36) + 31))];
            pad_temp_shared_local[(35)] = pad_temp_shared[(((rc_inner_outer * 36) + 23))];
            pad_temp_shared_local[(98)] = pad_temp_shared[(((rc_inner_outer * 36) + 32))];
            pad_temp_shared_local[(44)] = pad_temp_shared[(((rc_inner_outer * 36) + 24))];
            pad_temp_shared_local[(107)] = pad_temp_shared[(((rc_inner_outer * 36) + 33))];
            pad_temp_shared_local[(53)] = pad_temp_shared[(((rc_inner_outer * 36) + 25))];
            pad_temp_shared_local[(116)] = pad_temp_shared[(((rc_inner_outer * 36) + 34))];
            pad_temp_shared_local[(62)] = pad_temp_shared[(((rc_inner_outer * 36) + 26))];
            pad_temp_shared_local[(125)] = pad_temp_shared[(((rc_inner_outer * 36) + 35))];
            kernel_shared_local[(0)] = kernel_shared[(((((int)threadIdx.z) * 72) + (rc_inner_outer * 9)))];
            kernel_shared_local[(1)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 9)) + 1))];
            kernel_shared_local[(2)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 9)) + 2))];
            kernel_shared_local[(3)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 9)) + 3))];
            kernel_shared_local[(4)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 9)) + 4))];
            kernel_shared_local[(5)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 9)) + 5))];
            kernel_shared_local[(6)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 9)) + 6))];
            kernel_shared_local[(7)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 9)) + 7))];
            kernel_shared_local[(8)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 9)) + 8))];
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(63)] * kernel_shared_local[(0)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(0)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(72)] * kernel_shared_local[(0)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(0)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(81)] * kernel_shared_local[(0)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(27)] * kernel_shared_local[(0)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(90)] * kernel_shared_local[(0)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(36)] * kernel_shared_local[(0)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(99)] * kernel_shared_local[(0)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(45)] * kernel_shared_local[(0)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(108)] * kernel_shared_local[(0)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(54)] * kernel_shared_local[(0)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(117)] * kernel_shared_local[(0)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(64)] * kernel_shared_local[(1)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(1)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(73)] * kernel_shared_local[(1)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(1)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(82)] * kernel_shared_local[(1)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(28)] * kernel_shared_local[(1)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(91)] * kernel_shared_local[(1)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(37)] * kernel_shared_local[(1)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(100)] * kernel_shared_local[(1)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(46)] * kernel_shared_local[(1)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(109)] * kernel_shared_local[(1)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(55)] * kernel_shared_local[(1)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(118)] * kernel_shared_local[(1)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(65)] * kernel_shared_local[(2)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(2)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(74)] * kernel_shared_local[(2)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(2)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(83)] * kernel_shared_local[(2)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(29)] * kernel_shared_local[(2)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(92)] * kernel_shared_local[(2)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(38)] * kernel_shared_local[(2)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(101)] * kernel_shared_local[(2)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(47)] * kernel_shared_local[(2)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(110)] * kernel_shared_local[(2)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(56)] * kernel_shared_local[(2)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(119)] * kernel_shared_local[(2)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(3)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(66)] * kernel_shared_local[(3)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(3)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(75)] * kernel_shared_local[(3)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(3)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(84)] * kernel_shared_local[(3)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(30)] * kernel_shared_local[(3)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(93)] * kernel_shared_local[(3)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(39)] * kernel_shared_local[(3)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(102)] * kernel_shared_local[(3)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(48)] * kernel_shared_local[(3)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(111)] * kernel_shared_local[(3)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(57)] * kernel_shared_local[(3)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(120)] * kernel_shared_local[(3)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(4)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(67)] * kernel_shared_local[(4)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(4)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(76)] * kernel_shared_local[(4)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(4)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(85)] * kernel_shared_local[(4)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(31)] * kernel_shared_local[(4)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(94)] * kernel_shared_local[(4)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(40)] * kernel_shared_local[(4)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(103)] * kernel_shared_local[(4)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(49)] * kernel_shared_local[(4)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(112)] * kernel_shared_local[(4)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(58)] * kernel_shared_local[(4)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(121)] * kernel_shared_local[(4)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(5)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(68)] * kernel_shared_local[(5)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(5)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(77)] * kernel_shared_local[(5)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(5)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(86)] * kernel_shared_local[(5)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(32)] * kernel_shared_local[(5)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(95)] * kernel_shared_local[(5)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(41)] * kernel_shared_local[(5)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(104)] * kernel_shared_local[(5)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(50)] * kernel_shared_local[(5)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(113)] * kernel_shared_local[(5)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(59)] * kernel_shared_local[(5)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(122)] * kernel_shared_local[(5)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(6)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(69)] * kernel_shared_local[(6)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(6)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(78)] * kernel_shared_local[(6)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(24)] * kernel_shared_local[(6)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(87)] * kernel_shared_local[(6)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(33)] * kernel_shared_local[(6)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(96)] * kernel_shared_local[(6)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(42)] * kernel_shared_local[(6)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(105)] * kernel_shared_local[(6)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(51)] * kernel_shared_local[(6)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(114)] * kernel_shared_local[(6)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(60)] * kernel_shared_local[(6)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(123)] * kernel_shared_local[(6)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(7)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(70)] * kernel_shared_local[(7)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(7)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(79)] * kernel_shared_local[(7)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(25)] * kernel_shared_local[(7)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(88)] * kernel_shared_local[(7)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(34)] * kernel_shared_local[(7)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(97)] * kernel_shared_local[(7)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(43)] * kernel_shared_local[(7)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(106)] * kernel_shared_local[(7)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(52)] * kernel_shared_local[(7)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(115)] * kernel_shared_local[(7)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(61)] * kernel_shared_local[(7)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(124)] * kernel_shared_local[(7)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(8)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(71)] * kernel_shared_local[(8)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(8)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(80)] * kernel_shared_local[(8)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(26)] * kernel_shared_local[(8)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(89)] * kernel_shared_local[(8)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(35)] * kernel_shared_local[(8)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(98)] * kernel_shared_local[(8)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(44)] * kernel_shared_local[(8)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(107)] * kernel_shared_local[(8)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(53)] * kernel_shared_local[(8)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(116)] * kernel_shared_local[(8)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(62)] * kernel_shared_local[(8)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(125)] * kernel_shared_local[(8)]));
        }
    }
    compute[(((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)))] = compute_local[(0)];
    compute[((((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)) + 14))] = compute_local[(7)];
    compute[((((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)) + 1))] = compute_local[(1)];
    compute[((((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)) + 15))] = compute_local[(8)];
    compute[((((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)) + 2))] = compute_local[(2)];
    compute[((((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)) + 16))] = compute_local[(9)];
    compute[((((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)) + 3))] = compute_local[(3)];
    compute[((((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)) + 17))] = compute_local[(10)];
    compute[((((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)) + 4))] = compute_local[(4)];
    compute[((((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)) + 18))] = compute_local[(11)];
    compute[((((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)) + 5))] = compute_local[(5)];
    compute[((((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)) + 19))] = compute_local[(12)];
    compute[((((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)) + 6))] = compute_local[(6)];
    compute[((((((((int)blockIdx.z) * 9604) + (((int)threadIdx.z) * 196)) + (((int)blockIdx.y) * 28)) + (((int)blockIdx.x) * 7)) + 20))] = compute_local[(13)];
}
//grid=(1,7,128),  block=(7,1,2)
extern "C" __global__ void conv_256_256_7_7(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
float compute_local[1];
            __shared__ float pad_temp_shared[1728];
            __shared__ float kernel_shared[1152];
            float pad_temp_shared_local[18];
            float kernel_shared_local[18];
            compute_local[(0)] = 0.000000e+00f;
            for (int rc_outer = 0; rc_outer < 4; ++rc_outer) {
            __syncthreads();
            pad_temp_shared[(((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)))] = (((((1 <= ((((((int)threadIdx.x) * 124) % 27) / 9) + ((int)blockIdx.y))) && (((((((int)threadIdx.x) * 124) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + (((((int)threadIdx.x) * 124) / 27) * 49)) + ((((((int)threadIdx.x) * 124) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 1))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 1) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 1) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 1) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 1) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 2))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 2) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 2) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 2) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 2) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 3))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 3) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 3) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 3) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 3) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 4))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 4) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 4) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 4) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 4) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 5))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 5) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 5) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 5) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 5) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 6))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 6) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 6) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 6) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 6) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 7))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 7) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 7) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 7) % 9))) && ((((((int)threadIdx.x) * 124) + 7) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 7) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 7) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 7) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 8))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 8) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 8) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 8) % 9))) && ((((((int)threadIdx.x) * 124) + 8) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 8) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 8) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 8) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 9))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 9) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 9) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 9) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 9) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 10))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 10) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 10) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 10) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 10) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 11))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 11) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 11) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 11) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 11) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 12))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 12) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 12) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 12) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 12) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 13))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 13) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 13) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 13) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 13) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 14))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 14) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 14) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 14) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 14) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 15))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 15) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 15) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 15) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 15) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 16))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 16) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 16) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 7) % 9))) && ((((((int)threadIdx.x) * 124) + 7) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 16) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 16) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 7) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 17))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 17) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 17) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 8) % 9))) && ((((((int)threadIdx.x) * 124) + 8) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 17) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 17) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 8) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 18))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 18) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 18) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 18) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 18) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 19))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 19) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 19) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 19) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 19) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 20))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 20) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 20) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 20) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 20) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 21))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 21) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 21) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 21) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 21) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 22))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 22) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 22) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 22) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 22) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 23))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 23) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 23) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 23) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 23) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 24))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 24) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 24) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 24) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 24) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 25))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 25) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 25) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 7) % 9))) && ((((((int)threadIdx.x) * 124) + 7) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 25) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 25) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 7) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 26))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 26) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 26) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 8) % 9))) && ((((((int)threadIdx.x) * 124) + 8) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 26) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 26) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 8) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 27))] = (((((1 <= ((((((int)threadIdx.x) * 124) % 27) / 9) + ((int)blockIdx.y))) && (((((((int)threadIdx.x) * 124) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + (((((int)threadIdx.x) * 124) / 27) * 49)) + ((((((int)threadIdx.x) * 124) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) + 41))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 28))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 1) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 1) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 28) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 1) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 29))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 2) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 2) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 29) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 2) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 30))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 3) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 3) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 30) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 3) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 31))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 4) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 4) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 31) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 4) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 32))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 5) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 5) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 32) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 5) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 33))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 6) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 6) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 33) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 6) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 34))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 7) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 7) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 7) % 9))) && ((((((int)threadIdx.x) * 124) + 7) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 34) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 7) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 7) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 35))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 8) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 8) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 8) % 9))) && ((((((int)threadIdx.x) * 124) + 8) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 35) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 8) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 8) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 36))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 9) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 9) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 36) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 9) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 37))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 10) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 10) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 37) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 10) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 38))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 11) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 11) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 38) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 11) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 39))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 12) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 12) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 39) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 12) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 40))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 13) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 13) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 40) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 13) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 41))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 14) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 14) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 41) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 14) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 42))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 15) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 15) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 42) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 15) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 43))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 16) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 16) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 7) % 9))) && ((((((int)threadIdx.x) * 124) + 7) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 43) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 16) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 7) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 44))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 17) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 17) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 8) % 9))) && ((((((int)threadIdx.x) * 124) + 8) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 44) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 17) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 8) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 45))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 18) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 18) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 45) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 18) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 46))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 19) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 19) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 46) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 19) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 47))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 20) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 20) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 47) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 20) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 48))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 21) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 21) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 48) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 21) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 49))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 22) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 22) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 49) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 22) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 50))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 23) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 23) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 50) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 23) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 51))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 24) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 24) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 51) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 24) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 52))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 25) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 25) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 7) % 9))) && ((((((int)threadIdx.x) * 124) + 7) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 52) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 25) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 7) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 53))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 26) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 26) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 8) % 9))) && ((((((int)threadIdx.x) * 124) + 8) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 53) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 26) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 8) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 54))] = (((((1 <= ((((((int)threadIdx.x) * 124) % 27) / 9) + ((int)blockIdx.y))) && (((((((int)threadIdx.x) * 124) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + (((((int)threadIdx.x) * 124) / 27) * 49)) + ((((((int)threadIdx.x) * 124) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) + 90))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 55))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 1) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 1) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 55) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 1) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 56))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 2) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 2) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 56) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 2) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 57))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 3) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 3) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 57) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 3) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 58))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 4) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 4) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 58) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 4) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 59))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 5) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 5) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 59) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 5) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 60))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 6) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 6) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 60) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 6) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 61))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 7) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 7) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 7) % 9))) && ((((((int)threadIdx.x) * 124) + 7) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 61) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 7) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 7) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 62))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 8) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 8) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 8) % 9))) && ((((((int)threadIdx.x) * 124) + 8) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 62) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 8) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 8) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 63))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 9) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 9) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 63) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 9) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 64))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 10) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 10) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 64) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 10) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 65))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 11) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 11) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 65) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 11) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 66))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 12) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 12) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 66) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 12) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 67))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 13) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 13) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 67) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 13) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 68))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 14) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 14) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 68) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 14) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 69))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 15) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 15) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 69) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 15) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 70))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 16) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 16) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 7) % 9))) && ((((((int)threadIdx.x) * 124) + 7) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 70) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 16) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 7) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 71))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 17) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 17) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 8) % 9))) && ((((((int)threadIdx.x) * 124) + 8) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 71) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 17) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 8) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 72))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 18) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 18) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 72) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 18) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 73))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 19) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 19) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 73) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 19) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 74))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 20) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 20) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 74) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 20) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 75))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 21) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 21) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 75) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 21) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 76))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 22) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 22) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 76) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 22) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 77))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 23) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 23) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 77) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 23) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 78))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 24) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 24) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 78) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 24) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 79))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 25) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 25) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 7) % 9))) && ((((((int)threadIdx.x) * 124) + 7) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 79) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 25) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 7) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 80))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 26) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 26) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 8) % 9))) && ((((((int)threadIdx.x) * 124) + 8) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 80) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 26) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 8) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 81))] = (((((1 <= ((((((int)threadIdx.x) * 124) % 27) / 9) + ((int)blockIdx.y))) && (((((((int)threadIdx.x) * 124) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + (((((int)threadIdx.x) * 124) / 27) * 49)) + ((((((int)threadIdx.x) * 124) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) + 139))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 82))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 1) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 1) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 82) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 1) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 83))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 2) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 2) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 83) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 2) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 84))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 3) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 3) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 84) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 3) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 85))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 4) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 4) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 85) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 4) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 86))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 5) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 5) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 86) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 5) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 87))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 6) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 6) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 87) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 6) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 88))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 7) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 7) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 7) % 9))) && ((((((int)threadIdx.x) * 124) + 7) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 88) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 7) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 7) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 89))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 8) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 8) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 8) % 9))) && ((((((int)threadIdx.x) * 124) + 8) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 89) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 8) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 8) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 90))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 9) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 9) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 90) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 9) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 91))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 10) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 10) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 91) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 10) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 92))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 11) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 11) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 92) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 11) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 93))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 12) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 12) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 93) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 12) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 94))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 13) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 13) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 94) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 13) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 95))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 14) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 14) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 95) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 14) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 96))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 15) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 15) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 96) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 15) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 97))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 16) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 16) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 7) % 9))) && ((((((int)threadIdx.x) * 124) + 7) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 97) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 16) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 7) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 98))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 17) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 17) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 8) % 9))) && ((((((int)threadIdx.x) * 124) + 8) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 98) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 17) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 8) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 99))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 18) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 18) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 99) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 18) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 100))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 19) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 19) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 100) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 19) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 101))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 20) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 20) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 101) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 20) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 102))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 21) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 21) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 102) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 21) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 103))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 22) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 22) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 103) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 22) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 104))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 23) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 23) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 104) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 23) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 105))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 24) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 24) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 105) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 24) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 106))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 25) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 25) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 7) % 9))) && ((((((int)threadIdx.x) * 124) + 7) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 106) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 25) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 7) % 9)) - 8))] : 0.000000e+00f);
            pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 107))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 26) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 26) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 8) % 9))) && ((((((int)threadIdx.x) * 124) + 8) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 107) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 26) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 8) % 9)) - 8))] : 0.000000e+00f);
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 108))] = (((((1 <= ((((((int)threadIdx.x) * 124) % 27) / 9) + ((int)blockIdx.y))) && (((((((int)threadIdx.x) * 124) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + (((((int)threadIdx.x) * 124) / 27) * 49)) + ((((((int)threadIdx.x) * 124) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) + 188))] : 0.000000e+00f);
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 109))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 1) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 1) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 109) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 1) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 110))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 2) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 2) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 110) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 2) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 111))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 3) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 3) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 111) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 3) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 112))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 4) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 4) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 112) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 4) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 113))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 5) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 5) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 113) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 5) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 114))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 6) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 6) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 114) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 6) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 115))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 7) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 7) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 7) % 9))) && ((((((int)threadIdx.x) * 124) + 7) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 115) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 7) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 7) % 9)) - 8))] : 0.000000e+00f);
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 116))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 8) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 8) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 8) % 9))) && ((((((int)threadIdx.x) * 124) + 8) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 116) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 8) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 8) % 9)) - 8))] : 0.000000e+00f);
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 117))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 9) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 9) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 124) % 9))) && (((((int)threadIdx.x) * 124) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 117) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 9) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 124) % 9)) - 8))] : 0.000000e+00f);
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 118))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 10) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 10) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 1) % 9))) && ((((((int)threadIdx.x) * 124) + 1) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 118) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 10) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 1) % 9)) - 8))] : 0.000000e+00f);
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 119))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 11) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 11) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 2) % 9))) && ((((((int)threadIdx.x) * 124) + 2) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 119) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 11) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 2) % 9)) - 8))] : 0.000000e+00f);
if (((((int)threadIdx.z) * 32) + (((((int)threadIdx.x) * 124) + 120) / 27)) < 64) {
if (((((int)threadIdx.z) * 96) + (((((int)threadIdx.x) * 124) + 120) / 9)) < 192) {
if (((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) < 1608) {
if (((int)threadIdx.x) < 6) {
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 120))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 12) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 12) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 3) % 9))) && ((((((int)threadIdx.x) * 124) + 3) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 120) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 12) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 3) % 9)) - 8))] : 0.000000e+00f);
}
}
}
}
if (((((int)threadIdx.z) * 32) + (((((int)threadIdx.x) * 124) + 121) / 27)) < 64) {
if (((((int)threadIdx.z) * 96) + (((((int)threadIdx.x) * 124) + 121) / 9)) < 192) {
if (((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) < 1607) {
if (((int)threadIdx.x) < 6) {
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 121))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 13) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 13) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 4) % 9))) && ((((((int)threadIdx.x) * 124) + 4) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 121) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 13) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 4) % 9)) - 8))] : 0.000000e+00f);
}
}
}
}
if (((((int)threadIdx.z) * 32) + (((((int)threadIdx.x) * 124) + 122) / 27)) < 64) {
if (((((int)threadIdx.z) * 96) + (((((int)threadIdx.x) * 124) + 122) / 9)) < 192) {
if (((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) < 1606) {
if (((int)threadIdx.x) < 6) {
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 122))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 14) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 14) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 5) % 9))) && ((((((int)threadIdx.x) * 124) + 5) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 122) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 14) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 5) % 9)) - 8))] : 0.000000e+00f);
}
}
}
}
if (((((int)threadIdx.z) * 32) + (((((int)threadIdx.x) * 124) + 123) / 27)) < 64) {
if (((((int)threadIdx.z) * 96) + (((((int)threadIdx.x) * 124) + 123) / 9)) < 192) {
if (((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) < 1605) {
if (((int)threadIdx.x) < 6) {
pad_temp_shared[((((((int)threadIdx.z) * 864) + (((int)threadIdx.x) * 124)) + 123))] = (((((1 <= (((((((int)threadIdx.x) * 124) + 15) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 124) + 15) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 124) + 6) % 9))) && ((((((int)threadIdx.x) * 124) + 6) % 9) < 8)) ? data[((((((((rc_outer * 3136) + (((int)threadIdx.z) * 1568)) + ((((((int)threadIdx.x) * 124) + 123) / 27) * 49)) + (((((((int)threadIdx.x) * 124) + 15) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 124) + 6) % 9)) - 8))] : 0.000000e+00f);
}
}
}
}
kernel_shared[(((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)))] = kernel[(((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 1))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 1))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 2))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 2))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 3))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 3))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 4))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 4))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 5))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 5))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 6))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 6))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 7))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 7))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 8))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 8))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 9))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 9))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 10))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 10))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 11))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 11))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 12))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 12))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 13))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 13))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 14))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 14))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 15))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 15))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 16))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 16))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 17))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 17))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 18))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 18))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 19))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 19))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 20))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 20))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 21))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 21))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 22))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 22))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 23))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 23))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 24))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 24))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 25))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 25))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 26))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 26))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 27))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 27))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 28))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 28))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 29))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 29))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 30))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 30))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 31))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 31))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 32))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 32))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 33))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 33))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 34))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 34))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 35))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 35))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 36))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 36))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 37))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 37))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 38))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 38))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 39))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 39))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 40))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 40))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 41))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 41))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 42))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 42))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 43))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 43))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 44))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 44))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 45))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 45))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 46))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 46))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 47))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 47))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 48))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 48))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 49))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 49))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 50))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 50))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 51))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 51))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 52))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 52))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 53))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 53))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 54))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 54))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 55))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 55))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 56))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 56))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 57))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 57))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 58))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 58))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 59))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 59))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 60))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 60))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 61))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 61))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 62))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 62))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 63))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 63))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 64))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 64))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 65))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 65))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 66))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 66))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 67))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 67))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 68))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 68))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 69))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 69))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 70))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 70))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 71))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 71))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 72))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 72))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 73))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 73))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 74))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 74))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 75))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 75))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 76))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 76))];
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 77))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 77))];
if (((((((int)threadIdx.x) * 83) + 78) / 576) + ((int)threadIdx.z)) < 2) {
if (((((int)threadIdx.z) * 64) + (((((int)threadIdx.x) * 83) + 78) / 9)) < 128) {
if (((((int)threadIdx.z) * 192) + ((((int)threadIdx.x) * 83) / 3)) < 358) {
if (((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) < 1074) {
if (((int)threadIdx.x) < 6) {
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 78))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 78))];
}
}
}
}
}
if (((((((int)threadIdx.x) * 83) + 79) / 576) + ((int)threadIdx.z)) < 2) {
if (((((int)threadIdx.z) * 64) + (((((int)threadIdx.x) * 83) + 79) / 9)) < 128) {
if (((((int)threadIdx.z) * 192) + (((((int)threadIdx.x) * 83) + 79) / 3)) < 384) {
if (((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) < 1073) {
if (((int)threadIdx.x) < 6) {
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 79))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 79))];
}
}
}
}
}
if (((((((int)threadIdx.x) * 83) + 80) / 576) + ((int)threadIdx.z)) < 2) {
if (((((int)threadIdx.z) * 64) + (((((int)threadIdx.x) * 83) + 80) / 9)) < 128) {
if (((((int)threadIdx.z) * 192) + (((((int)threadIdx.x) * 83) + 80) / 3)) < 384) {
if (((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) < 1072) {
if (((int)threadIdx.x) < 6) {
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 80))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 80))];
}
}
}
}
}
if (((((((int)threadIdx.x) * 83) + 81) / 576) + ((int)threadIdx.z)) < 2) {
if (((((int)threadIdx.z) * 64) + ((((int)threadIdx.x) * 83) / 9)) < 119) {
if (((((int)threadIdx.z) * 192) + ((((int)threadIdx.x) * 83) / 3)) < 357) {
if (((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) < 1071) {
if (((int)threadIdx.x) < 6) {
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 81))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 81))];
}
}
}
}
}
if (((((((int)threadIdx.x) * 83) + 82) / 576) + ((int)threadIdx.z)) < 2) {
if (((((int)threadIdx.z) * 64) + (((((int)threadIdx.x) * 83) + 82) / 9)) < 128) {
if (((((int)threadIdx.z) * 192) + (((((int)threadIdx.x) * 83) + 82) / 3)) < 384) {
if (((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) < 1070) {
if (((int)threadIdx.x) < 6) {
kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.x) * 83)) + 82))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 2304)) + (rc_outer * 576)) + (((int)threadIdx.x) * 83)) + 82))];
}
}
}
}
}
__syncthreads();
for (int rc_inner_outer = 0; rc_inner_outer < 32; ++rc_inner_outer) {
pad_temp_shared_local[(0)] = pad_temp_shared[(((rc_inner_outer * 54) + ((int)threadIdx.x)))];
pad_temp_shared_local[(1)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 1))];
pad_temp_shared_local[(2)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 2))];
pad_temp_shared_local[(3)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 9))];
pad_temp_shared_local[(4)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 10))];
pad_temp_shared_local[(5)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 11))];
pad_temp_shared_local[(6)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 18))];
pad_temp_shared_local[(7)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 19))];
pad_temp_shared_local[(8)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 20))];
pad_temp_shared_local[(9)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 27))];
pad_temp_shared_local[(10)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 28))];
pad_temp_shared_local[(11)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 29))];
pad_temp_shared_local[(12)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 36))];
pad_temp_shared_local[(13)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 37))];
pad_temp_shared_local[(14)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 38))];
pad_temp_shared_local[(15)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 45))];
pad_temp_shared_local[(16)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 46))];
pad_temp_shared_local[(17)] = pad_temp_shared[((((rc_inner_outer * 54) + ((int)threadIdx.x)) + 47))];
kernel_shared_local[(0)] = kernel_shared[(((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)))];
kernel_shared_local[(1)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 1))];
kernel_shared_local[(2)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 2))];
kernel_shared_local[(3)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 3))];
kernel_shared_local[(4)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 4))];
kernel_shared_local[(5)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 5))];
kernel_shared_local[(6)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 6))];
kernel_shared_local[(7)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 7))];
kernel_shared_local[(8)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 8))];
kernel_shared_local[(9)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 9))];
kernel_shared_local[(10)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 10))];
kernel_shared_local[(11)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 11))];
kernel_shared_local[(12)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 12))];
kernel_shared_local[(13)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 13))];
kernel_shared_local[(14)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 14))];
kernel_shared_local[(15)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 15))];
kernel_shared_local[(16)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 16))];
kernel_shared_local[(17)] = kernel_shared[((((((int)threadIdx.z) * 576) + (rc_inner_outer * 18)) + 17))];
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(3)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(4)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(5)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(6)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(7)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(8)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(9)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(10)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(11)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(12)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(13)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(14)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(15)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(16)]));
compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(17)]));
}
}
compute[(((((((int)blockIdx.z) * 98) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + ((int)threadIdx.x)))] = compute_local[(0)];
}
//grid=(7,1,4),  block=(4,4,2)
extern "C" __global__ void conv_32_32_28_28(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[28];
  __shared__ float pad_temp_shared[2880];
  __shared__ float kernel_shared[1152];
  float pad_temp_shared_local[84];
  float kernel_shared_local[48];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(14)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(15)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(16)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(17)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(18)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(19)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(20)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  compute_local[(21)] = 0.000000e+00f;
  compute_local[(8)] = 0.000000e+00f;
  compute_local[(22)] = 0.000000e+00f;
  compute_local[(9)] = 0.000000e+00f;
  compute_local[(23)] = 0.000000e+00f;
  compute_local[(10)] = 0.000000e+00f;
  compute_local[(24)] = 0.000000e+00f;
  compute_local[(11)] = 0.000000e+00f;
  compute_local[(25)] = 0.000000e+00f;
  compute_local[(12)] = 0.000000e+00f;
  compute_local[(26)] = 0.000000e+00f;
  compute_local[(13)] = 0.000000e+00f;
  compute_local[(27)] = 0.000000e+00f;
  for (int rc_outer = 0; rc_outer < 2; ++rc_outer) {
    __syncthreads();
    pad_temp_shared[((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)))] = (((1 <= (((int)threadIdx.x) & 1)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((int)threadIdx.x) >> 1) * 784)) + ((((int)threadIdx.x) & 1) * 420)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 1))] = ((1 <= (((int)threadIdx.x) & 1)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((int)threadIdx.x) >> 1) * 784)) + ((((int)threadIdx.x) & 1) * 420)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 2))] = ((1 <= (((int)threadIdx.x) & 1)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((int)threadIdx.x) >> 1) * 784)) + ((((int)threadIdx.x) & 1) * 420)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 3))] = ((1 <= (((int)threadIdx.x) & 1)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((int)threadIdx.x) >> 1) * 784)) + ((((int)threadIdx.x) & 1) * 420)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 4))] = ((1 <= (((int)threadIdx.x) & 1)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((int)threadIdx.x) >> 1) * 784)) + ((((int)threadIdx.x) & 1) * 420)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 5))] = (((1 <= (((int)threadIdx.x) & 1)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((int)threadIdx.x) >> 1) * 784)) + ((((int)threadIdx.x) & 1) * 420)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 6))] = ((((1 <= (((((int)threadIdx.x) * 15) + 1) % 30)) && ((((((int)threadIdx.x) * 15) + 1) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 1) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 1) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 7))] = (((1 <= (((((int)threadIdx.x) * 15) + 1) % 30)) && ((((((int)threadIdx.x) * 15) + 1) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 1) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 1) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 8))] = (((1 <= (((((int)threadIdx.x) * 15) + 1) % 30)) && ((((((int)threadIdx.x) * 15) + 1) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 1) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 1) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 9))] = (((1 <= (((((int)threadIdx.x) * 15) + 1) % 30)) && ((((((int)threadIdx.x) * 15) + 1) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 1) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 1) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 10))] = (((1 <= (((((int)threadIdx.x) * 15) + 1) % 30)) && ((((((int)threadIdx.x) * 15) + 1) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 1) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 1) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 11))] = ((((1 <= (((((int)threadIdx.x) * 15) + 1) % 30)) && ((((((int)threadIdx.x) * 15) + 1) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 1) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 1) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 12))] = ((((1 <= (((((int)threadIdx.x) * 15) + 2) % 30)) && ((((((int)threadIdx.x) * 15) + 2) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 2) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 2) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 13))] = (((1 <= (((((int)threadIdx.x) * 15) + 2) % 30)) && ((((((int)threadIdx.x) * 15) + 2) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 2) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 2) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 14))] = (((1 <= (((((int)threadIdx.x) * 15) + 2) % 30)) && ((((((int)threadIdx.x) * 15) + 2) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 2) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 2) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 15))] = (((1 <= (((((int)threadIdx.x) * 15) + 2) % 30)) && ((((((int)threadIdx.x) * 15) + 2) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 2) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 2) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 16))] = (((1 <= (((((int)threadIdx.x) * 15) + 2) % 30)) && ((((((int)threadIdx.x) * 15) + 2) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 2) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 2) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 17))] = ((((1 <= (((((int)threadIdx.x) * 15) + 2) % 30)) && ((((((int)threadIdx.x) * 15) + 2) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 2) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 2) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 18))] = ((((1 <= (((((int)threadIdx.x) * 15) + 3) % 30)) && ((((((int)threadIdx.x) * 15) + 3) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 3) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 3) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 19))] = (((1 <= (((((int)threadIdx.x) * 15) + 3) % 30)) && ((((((int)threadIdx.x) * 15) + 3) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 3) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 3) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 20))] = (((1 <= (((((int)threadIdx.x) * 15) + 3) % 30)) && ((((((int)threadIdx.x) * 15) + 3) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 3) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 3) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 21))] = (((1 <= (((((int)threadIdx.x) * 15) + 3) % 30)) && ((((((int)threadIdx.x) * 15) + 3) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 3) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 3) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 22))] = (((1 <= (((((int)threadIdx.x) * 15) + 3) % 30)) && ((((((int)threadIdx.x) * 15) + 3) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 3) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 3) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 23))] = ((((1 <= (((((int)threadIdx.x) * 15) + 3) % 30)) && ((((((int)threadIdx.x) * 15) + 3) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 3) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 3) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 24))] = ((((1 <= (((((int)threadIdx.x) * 15) + 4) % 30)) && ((((((int)threadIdx.x) * 15) + 4) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 4) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 4) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 25))] = (((1 <= (((((int)threadIdx.x) * 15) + 4) % 30)) && ((((((int)threadIdx.x) * 15) + 4) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 4) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 4) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 26))] = (((1 <= (((((int)threadIdx.x) * 15) + 4) % 30)) && ((((((int)threadIdx.x) * 15) + 4) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 4) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 4) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 27))] = (((1 <= (((((int)threadIdx.x) * 15) + 4) % 30)) && ((((((int)threadIdx.x) * 15) + 4) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 4) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 4) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 28))] = (((1 <= (((((int)threadIdx.x) * 15) + 4) % 30)) && ((((((int)threadIdx.x) * 15) + 4) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 4) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 4) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 29))] = ((((1 <= (((((int)threadIdx.x) * 15) + 4) % 30)) && ((((((int)threadIdx.x) * 15) + 4) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 4) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 4) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 30))] = ((((1 <= (((((int)threadIdx.x) * 15) + 5) % 30)) && ((((((int)threadIdx.x) * 15) + 5) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 5) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 5) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 31))] = (((1 <= (((((int)threadIdx.x) * 15) + 5) % 30)) && ((((((int)threadIdx.x) * 15) + 5) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 5) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 5) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 32))] = (((1 <= (((((int)threadIdx.x) * 15) + 5) % 30)) && ((((((int)threadIdx.x) * 15) + 5) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 5) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 5) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 33))] = (((1 <= (((((int)threadIdx.x) * 15) + 5) % 30)) && ((((((int)threadIdx.x) * 15) + 5) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 5) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 5) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 34))] = (((1 <= (((((int)threadIdx.x) * 15) + 5) % 30)) && ((((((int)threadIdx.x) * 15) + 5) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 5) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 5) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 35))] = ((((1 <= (((((int)threadIdx.x) * 15) + 5) % 30)) && ((((((int)threadIdx.x) * 15) + 5) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 5) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 5) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 36))] = ((((1 <= (((((int)threadIdx.x) * 15) + 6) % 30)) && ((((((int)threadIdx.x) * 15) + 6) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 6) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 6) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 37))] = (((1 <= (((((int)threadIdx.x) * 15) + 6) % 30)) && ((((((int)threadIdx.x) * 15) + 6) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 6) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 6) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 38))] = (((1 <= (((((int)threadIdx.x) * 15) + 6) % 30)) && ((((((int)threadIdx.x) * 15) + 6) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 6) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 6) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 39))] = (((1 <= (((((int)threadIdx.x) * 15) + 6) % 30)) && ((((((int)threadIdx.x) * 15) + 6) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 6) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 6) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 40))] = (((1 <= (((((int)threadIdx.x) * 15) + 6) % 30)) && ((((((int)threadIdx.x) * 15) + 6) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 6) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 6) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 41))] = ((((1 <= (((((int)threadIdx.x) * 15) + 6) % 30)) && ((((((int)threadIdx.x) * 15) + 6) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 6) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 6) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 42))] = ((((1 <= (((((int)threadIdx.x) * 15) + 7) % 30)) && ((((((int)threadIdx.x) * 15) + 7) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 7) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 7) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 43))] = (((1 <= (((((int)threadIdx.x) * 15) + 7) % 30)) && ((((((int)threadIdx.x) * 15) + 7) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 7) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 7) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 44))] = (((1 <= (((((int)threadIdx.x) * 15) + 7) % 30)) && ((((((int)threadIdx.x) * 15) + 7) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 7) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 7) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 45))] = (((1 <= (((((int)threadIdx.x) * 15) + 7) % 30)) && ((((((int)threadIdx.x) * 15) + 7) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 7) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 7) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 46))] = (((1 <= (((((int)threadIdx.x) * 15) + 7) % 30)) && ((((((int)threadIdx.x) * 15) + 7) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 7) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 7) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 47))] = ((((1 <= (((((int)threadIdx.x) * 15) + 7) % 30)) && ((((((int)threadIdx.x) * 15) + 7) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 7) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 7) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 48))] = ((((1 <= (((((int)threadIdx.x) * 15) + 8) % 30)) && ((((((int)threadIdx.x) * 15) + 8) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 8) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 8) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 49))] = (((1 <= (((((int)threadIdx.x) * 15) + 8) % 30)) && ((((((int)threadIdx.x) * 15) + 8) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 8) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 8) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 50))] = (((1 <= (((((int)threadIdx.x) * 15) + 8) % 30)) && ((((((int)threadIdx.x) * 15) + 8) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 8) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 8) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 51))] = (((1 <= (((((int)threadIdx.x) * 15) + 8) % 30)) && ((((((int)threadIdx.x) * 15) + 8) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 8) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 8) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 52))] = (((1 <= (((((int)threadIdx.x) * 15) + 8) % 30)) && ((((((int)threadIdx.x) * 15) + 8) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 8) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 8) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 53))] = ((((1 <= (((((int)threadIdx.x) * 15) + 8) % 30)) && ((((((int)threadIdx.x) * 15) + 8) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 8) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 8) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 54))] = ((((1 <= (((((int)threadIdx.x) * 15) + 9) % 30)) && ((((((int)threadIdx.x) * 15) + 9) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 9) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 9) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 55))] = (((1 <= (((((int)threadIdx.x) * 15) + 9) % 30)) && ((((((int)threadIdx.x) * 15) + 9) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 9) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 9) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 56))] = (((1 <= (((((int)threadIdx.x) * 15) + 9) % 30)) && ((((((int)threadIdx.x) * 15) + 9) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 9) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 9) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 57))] = (((1 <= (((((int)threadIdx.x) * 15) + 9) % 30)) && ((((((int)threadIdx.x) * 15) + 9) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 9) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 9) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 58))] = (((1 <= (((((int)threadIdx.x) * 15) + 9) % 30)) && ((((((int)threadIdx.x) * 15) + 9) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 9) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 9) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 59))] = ((((1 <= (((((int)threadIdx.x) * 15) + 9) % 30)) && ((((((int)threadIdx.x) * 15) + 9) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 9) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 9) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 60))] = ((((1 <= (((((int)threadIdx.x) * 15) + 10) % 30)) && ((((((int)threadIdx.x) * 15) + 10) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 10) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 10) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 61))] = (((1 <= (((((int)threadIdx.x) * 15) + 10) % 30)) && ((((((int)threadIdx.x) * 15) + 10) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 10) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 10) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 62))] = (((1 <= (((((int)threadIdx.x) * 15) + 10) % 30)) && ((((((int)threadIdx.x) * 15) + 10) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 10) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 10) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 63))] = (((1 <= (((((int)threadIdx.x) * 15) + 10) % 30)) && ((((((int)threadIdx.x) * 15) + 10) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 10) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 10) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 64))] = (((1 <= (((((int)threadIdx.x) * 15) + 10) % 30)) && ((((((int)threadIdx.x) * 15) + 10) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 10) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 10) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 65))] = ((((1 <= (((((int)threadIdx.x) * 15) + 10) % 30)) && ((((((int)threadIdx.x) * 15) + 10) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 10) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 10) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 66))] = ((((1 <= (((((int)threadIdx.x) * 15) + 11) % 30)) && ((((((int)threadIdx.x) * 15) + 11) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 11) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 11) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 67))] = (((1 <= (((((int)threadIdx.x) * 15) + 11) % 30)) && ((((((int)threadIdx.x) * 15) + 11) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 11) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 11) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 68))] = (((1 <= (((((int)threadIdx.x) * 15) + 11) % 30)) && ((((((int)threadIdx.x) * 15) + 11) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 11) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 11) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 69))] = (((1 <= (((((int)threadIdx.x) * 15) + 11) % 30)) && ((((((int)threadIdx.x) * 15) + 11) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 11) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 11) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 70))] = (((1 <= (((((int)threadIdx.x) * 15) + 11) % 30)) && ((((((int)threadIdx.x) * 15) + 11) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 11) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 11) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 71))] = ((((1 <= (((((int)threadIdx.x) * 15) + 11) % 30)) && ((((((int)threadIdx.x) * 15) + 11) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 11) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 11) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 72))] = ((((1 <= (((((int)threadIdx.x) * 15) + 12) % 30)) && ((((((int)threadIdx.x) * 15) + 12) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 12) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 12) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 73))] = (((1 <= (((((int)threadIdx.x) * 15) + 12) % 30)) && ((((((int)threadIdx.x) * 15) + 12) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 12) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 12) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 74))] = (((1 <= (((((int)threadIdx.x) * 15) + 12) % 30)) && ((((((int)threadIdx.x) * 15) + 12) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 12) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 12) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 75))] = (((1 <= (((((int)threadIdx.x) * 15) + 12) % 30)) && ((((((int)threadIdx.x) * 15) + 12) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 12) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 12) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 76))] = (((1 <= (((((int)threadIdx.x) * 15) + 12) % 30)) && ((((((int)threadIdx.x) * 15) + 12) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 12) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 12) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 77))] = ((((1 <= (((((int)threadIdx.x) * 15) + 12) % 30)) && ((((((int)threadIdx.x) * 15) + 12) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 12) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 12) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 78))] = ((((1 <= (((((int)threadIdx.x) * 15) + 13) % 30)) && ((((((int)threadIdx.x) * 15) + 13) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 13) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 13) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 79))] = (((1 <= (((((int)threadIdx.x) * 15) + 13) % 30)) && ((((((int)threadIdx.x) * 15) + 13) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 13) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 13) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 80))] = (((1 <= (((((int)threadIdx.x) * 15) + 13) % 30)) && ((((((int)threadIdx.x) * 15) + 13) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 13) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 13) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 81))] = (((1 <= (((((int)threadIdx.x) * 15) + 13) % 30)) && ((((((int)threadIdx.x) * 15) + 13) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 13) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 13) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 82))] = (((1 <= (((((int)threadIdx.x) * 15) + 13) % 30)) && ((((((int)threadIdx.x) * 15) + 13) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 13) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 13) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 83))] = ((((1 <= (((((int)threadIdx.x) * 15) + 13) % 30)) && ((((((int)threadIdx.x) * 15) + 13) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 13) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 13) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 84))] = ((((1 <= (((((int)threadIdx.x) * 15) + 14) % 30)) && ((((((int)threadIdx.x) * 15) + 14) % 30) < 29)) && (1 <= ((int)blockIdx.x))) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 14) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 14) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 29))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 85))] = (((1 <= (((((int)threadIdx.x) * 15) + 14) % 30)) && ((((((int)threadIdx.x) * 15) + 14) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 14) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 14) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 28))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 86))] = (((1 <= (((((int)threadIdx.x) * 15) + 14) % 30)) && ((((((int)threadIdx.x) * 15) + 14) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 14) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 14) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 27))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 87))] = (((1 <= (((((int)threadIdx.x) * 15) + 14) % 30)) && ((((((int)threadIdx.x) * 15) + 14) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 14) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 14) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 26))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 88))] = (((1 <= (((((int)threadIdx.x) * 15) + 14) % 30)) && ((((((int)threadIdx.x) * 15) + 14) % 30) < 29)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 14) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 14) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 25))] : 0.000000e+00f);
    pad_temp_shared[(((((((int)threadIdx.z) * 1440) + (((int)threadIdx.y) * 360)) + (((int)threadIdx.x) * 90)) + 89))] = ((((1 <= (((((int)threadIdx.x) * 15) + 14) % 30)) && ((((((int)threadIdx.x) * 15) + 14) % 30) < 29)) && (((int)blockIdx.x) < 6)) ? data[((((((((rc_outer * 12544) + (((int)threadIdx.z) * 6272)) + (((int)threadIdx.y) * 1568)) + ((((((int)threadIdx.x) * 15) + 14) / 30) * 784)) + ((((((int)threadIdx.x) * 15) + 14) % 30) * 28)) + (((int)blockIdx.x) * 4)) - 24))] : 0.000000e+00f);
    kernel_shared[((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)))] = kernel[((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 1))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 1))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 2))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 2))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 3))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 3))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 4))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 4))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 5))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 5))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 6))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 6))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 7))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 7))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 8))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 8))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 9))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 9))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 10))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 10))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 11))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 11))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 12))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 12))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 13))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 13))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 14))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 14))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 15))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 15))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 16))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 16))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 17))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 17))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 18))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 18))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 19))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 19))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 20))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 20))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 21))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 21))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 22))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 22))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 23))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 23))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 24))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 24))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 25))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 25))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 26))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 26))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 27))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 27))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 28))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 28))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 29))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 29))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 30))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 30))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 31))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 31))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 32))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 32))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 33))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 33))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 34))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 34))];
    kernel_shared[(((((((int)threadIdx.z) * 576) + (((int)threadIdx.y) * 144)) + (((int)threadIdx.x) * 36)) + 35))] = kernel[(((((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 288)) + (rc_outer * 144)) + (((int)threadIdx.x) * 36)) + 35))];
    __syncthreads();
    for (int rc_inner_outer = 0; rc_inner_outer < 4; ++rc_inner_outer) {
      for (int ry_inner_outer = 0; ry_inner_outer < 3; ++ry_inner_outer) {
        pad_temp_shared_local[(0)] = pad_temp_shared[(((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)))];
        pad_temp_shared_local[(1)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 1))];
        pad_temp_shared_local[(2)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 2))];
        pad_temp_shared_local[(3)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 6))];
        pad_temp_shared_local[(4)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 7))];
        pad_temp_shared_local[(5)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 8))];
        pad_temp_shared_local[(6)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 12))];
        pad_temp_shared_local[(7)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 13))];
        pad_temp_shared_local[(8)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 14))];
        pad_temp_shared_local[(9)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 18))];
        pad_temp_shared_local[(10)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 19))];
        pad_temp_shared_local[(11)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 20))];
        pad_temp_shared_local[(12)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 24))];
        pad_temp_shared_local[(13)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 25))];
        pad_temp_shared_local[(14)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 26))];
        pad_temp_shared_local[(15)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 30))];
        pad_temp_shared_local[(16)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 31))];
        pad_temp_shared_local[(17)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 32))];
        pad_temp_shared_local[(18)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 36))];
        pad_temp_shared_local[(19)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 37))];
        pad_temp_shared_local[(20)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 38))];
        pad_temp_shared_local[(21)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 180))];
        pad_temp_shared_local[(22)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 181))];
        pad_temp_shared_local[(23)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 182))];
        pad_temp_shared_local[(24)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 186))];
        pad_temp_shared_local[(25)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 187))];
        pad_temp_shared_local[(26)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 188))];
        pad_temp_shared_local[(27)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 192))];
        pad_temp_shared_local[(28)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 193))];
        pad_temp_shared_local[(29)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 194))];
        pad_temp_shared_local[(30)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 198))];
        pad_temp_shared_local[(31)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 199))];
        pad_temp_shared_local[(32)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 200))];
        pad_temp_shared_local[(33)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 204))];
        pad_temp_shared_local[(34)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 205))];
        pad_temp_shared_local[(35)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 206))];
        pad_temp_shared_local[(36)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 210))];
        pad_temp_shared_local[(37)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 211))];
        pad_temp_shared_local[(38)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 212))];
        pad_temp_shared_local[(39)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 216))];
        pad_temp_shared_local[(40)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 217))];
        pad_temp_shared_local[(41)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 218))];
        pad_temp_shared_local[(42)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 360))];
        pad_temp_shared_local[(43)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 361))];
        pad_temp_shared_local[(44)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 362))];
        pad_temp_shared_local[(45)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 366))];
        pad_temp_shared_local[(46)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 367))];
        pad_temp_shared_local[(47)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 368))];
        pad_temp_shared_local[(48)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 372))];
        pad_temp_shared_local[(49)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 373))];
        pad_temp_shared_local[(50)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 374))];
        pad_temp_shared_local[(51)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 378))];
        pad_temp_shared_local[(52)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 379))];
        pad_temp_shared_local[(53)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 380))];
        pad_temp_shared_local[(54)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 384))];
        pad_temp_shared_local[(55)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 385))];
        pad_temp_shared_local[(56)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 386))];
        pad_temp_shared_local[(57)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 390))];
        pad_temp_shared_local[(58)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 391))];
        pad_temp_shared_local[(59)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 392))];
        pad_temp_shared_local[(60)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 396))];
        pad_temp_shared_local[(61)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 397))];
        pad_temp_shared_local[(62)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 398))];
        pad_temp_shared_local[(63)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 540))];
        pad_temp_shared_local[(64)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 541))];
        pad_temp_shared_local[(65)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 542))];
        pad_temp_shared_local[(66)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 546))];
        pad_temp_shared_local[(67)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 547))];
        pad_temp_shared_local[(68)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 548))];
        pad_temp_shared_local[(69)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 552))];
        pad_temp_shared_local[(70)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 553))];
        pad_temp_shared_local[(71)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 554))];
        pad_temp_shared_local[(72)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 558))];
        pad_temp_shared_local[(73)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 559))];
        pad_temp_shared_local[(74)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 560))];
        pad_temp_shared_local[(75)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 564))];
        pad_temp_shared_local[(76)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 565))];
        pad_temp_shared_local[(77)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 566))];
        pad_temp_shared_local[(78)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 570))];
        pad_temp_shared_local[(79)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 571))];
        pad_temp_shared_local[(80)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 572))];
        pad_temp_shared_local[(81)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 576))];
        pad_temp_shared_local[(82)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 577))];
        pad_temp_shared_local[(83)] = pad_temp_shared[((((((rc_inner_outer * 720) + (((int)threadIdx.y) * 42)) + (ry_inner_outer * 6)) + ((int)threadIdx.x)) + 578))];
        kernel_shared_local[(0)] = kernel_shared[((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)))];
        kernel_shared_local[(24)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 576))];
        kernel_shared_local[(1)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 1))];
        kernel_shared_local[(25)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 577))];
        kernel_shared_local[(2)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 2))];
        kernel_shared_local[(26)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 578))];
        kernel_shared_local[(3)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 9))];
        kernel_shared_local[(27)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 585))];
        kernel_shared_local[(4)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 10))];
        kernel_shared_local[(28)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 586))];
        kernel_shared_local[(5)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 11))];
        kernel_shared_local[(29)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 587))];
        kernel_shared_local[(6)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 18))];
        kernel_shared_local[(30)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 594))];
        kernel_shared_local[(7)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 19))];
        kernel_shared_local[(31)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 595))];
        kernel_shared_local[(8)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 20))];
        kernel_shared_local[(32)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 596))];
        kernel_shared_local[(9)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 27))];
        kernel_shared_local[(33)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 603))];
        kernel_shared_local[(10)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 28))];
        kernel_shared_local[(34)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 604))];
        kernel_shared_local[(11)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 29))];
        kernel_shared_local[(35)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 605))];
        kernel_shared_local[(12)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 144))];
        kernel_shared_local[(36)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 720))];
        kernel_shared_local[(13)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 145))];
        kernel_shared_local[(37)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 721))];
        kernel_shared_local[(14)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 146))];
        kernel_shared_local[(38)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 722))];
        kernel_shared_local[(15)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 153))];
        kernel_shared_local[(39)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 729))];
        kernel_shared_local[(16)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 154))];
        kernel_shared_local[(40)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 730))];
        kernel_shared_local[(17)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 155))];
        kernel_shared_local[(41)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 731))];
        kernel_shared_local[(18)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 162))];
        kernel_shared_local[(42)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 738))];
        kernel_shared_local[(19)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 163))];
        kernel_shared_local[(43)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 739))];
        kernel_shared_local[(20)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 164))];
        kernel_shared_local[(44)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 740))];
        kernel_shared_local[(21)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 171))];
        kernel_shared_local[(45)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 747))];
        kernel_shared_local[(22)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 172))];
        kernel_shared_local[(46)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 748))];
        kernel_shared_local[(23)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 173))];
        kernel_shared_local[(47)] = kernel_shared[(((((((int)threadIdx.z) * 288) + (rc_inner_outer * 36)) + (ry_inner_outer * 3)) + 749))];
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(24)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(0)]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(24)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(0)]));
        compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(24)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(0)]));
        compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(24)]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(0)]));
        compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(24)]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(0)]));
        compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(24)]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(0)]));
        compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(24)]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(12)]));
        compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(36)]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(12)]));
        compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(36)]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(12)]));
        compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(36)]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(12)]));
        compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(36)]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(12)]));
        compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(36)]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(12)]));
        compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(36)]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(12)]));
        compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(36)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(25)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(1)]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(25)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(1)]));
        compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(25)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(1)]));
        compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(25)]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(1)]));
        compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(25)]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(1)]));
        compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(25)]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(1)]));
        compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(25)]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(13)]));
        compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(37)]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(13)]));
        compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(37)]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(13)]));
        compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(37)]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(13)]));
        compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(37)]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(13)]));
        compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(37)]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(13)]));
        compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(37)]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(13)]));
        compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(37)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(26)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(2)]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(26)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(2)]));
        compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(26)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(2)]));
        compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(26)]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(2)]));
        compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(26)]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(2)]));
        compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(26)]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(2)]));
        compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(26)]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(14)]));
        compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(38)]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(14)]));
        compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(38)]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(14)]));
        compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(38)]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(14)]));
        compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(38)]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(14)]));
        compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(38)]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(14)]));
        compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(38)]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(14)]));
        compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(38)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(3)]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(27)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(24)] * kernel_shared_local[(3)]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(24)] * kernel_shared_local[(27)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(27)] * kernel_shared_local[(3)]));
        compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(27)] * kernel_shared_local[(27)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(30)] * kernel_shared_local[(3)]));
        compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(30)] * kernel_shared_local[(27)]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(33)] * kernel_shared_local[(3)]));
        compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(33)] * kernel_shared_local[(27)]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(36)] * kernel_shared_local[(3)]));
        compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(36)] * kernel_shared_local[(27)]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(39)] * kernel_shared_local[(3)]));
        compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(39)] * kernel_shared_local[(27)]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(15)]));
        compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(39)]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(24)] * kernel_shared_local[(15)]));
        compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(24)] * kernel_shared_local[(39)]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(27)] * kernel_shared_local[(15)]));
        compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(27)] * kernel_shared_local[(39)]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(30)] * kernel_shared_local[(15)]));
        compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(30)] * kernel_shared_local[(39)]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(33)] * kernel_shared_local[(15)]));
        compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(33)] * kernel_shared_local[(39)]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(36)] * kernel_shared_local[(15)]));
        compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(36)] * kernel_shared_local[(39)]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(39)] * kernel_shared_local[(15)]));
        compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(39)] * kernel_shared_local[(39)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(4)]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(28)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(25)] * kernel_shared_local[(4)]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(25)] * kernel_shared_local[(28)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(28)] * kernel_shared_local[(4)]));
        compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(28)] * kernel_shared_local[(28)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(31)] * kernel_shared_local[(4)]));
        compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(31)] * kernel_shared_local[(28)]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(34)] * kernel_shared_local[(4)]));
        compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(34)] * kernel_shared_local[(28)]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(37)] * kernel_shared_local[(4)]));
        compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(37)] * kernel_shared_local[(28)]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(40)] * kernel_shared_local[(4)]));
        compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(40)] * kernel_shared_local[(28)]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(16)]));
        compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(40)]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(25)] * kernel_shared_local[(16)]));
        compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(25)] * kernel_shared_local[(40)]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(28)] * kernel_shared_local[(16)]));
        compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(28)] * kernel_shared_local[(40)]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(31)] * kernel_shared_local[(16)]));
        compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(31)] * kernel_shared_local[(40)]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(34)] * kernel_shared_local[(16)]));
        compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(34)] * kernel_shared_local[(40)]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(37)] * kernel_shared_local[(16)]));
        compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(37)] * kernel_shared_local[(40)]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(40)] * kernel_shared_local[(16)]));
        compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(40)] * kernel_shared_local[(40)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(5)]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(29)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(26)] * kernel_shared_local[(5)]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(26)] * kernel_shared_local[(29)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(29)] * kernel_shared_local[(5)]));
        compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(29)] * kernel_shared_local[(29)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(32)] * kernel_shared_local[(5)]));
        compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(32)] * kernel_shared_local[(29)]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(35)] * kernel_shared_local[(5)]));
        compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(35)] * kernel_shared_local[(29)]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(38)] * kernel_shared_local[(5)]));
        compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(38)] * kernel_shared_local[(29)]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(41)] * kernel_shared_local[(5)]));
        compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(41)] * kernel_shared_local[(29)]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(17)]));
        compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(41)]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(26)] * kernel_shared_local[(17)]));
        compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(26)] * kernel_shared_local[(41)]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(29)] * kernel_shared_local[(17)]));
        compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(29)] * kernel_shared_local[(41)]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(32)] * kernel_shared_local[(17)]));
        compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(32)] * kernel_shared_local[(41)]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(35)] * kernel_shared_local[(17)]));
        compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(35)] * kernel_shared_local[(41)]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(38)] * kernel_shared_local[(17)]));
        compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(38)] * kernel_shared_local[(41)]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(41)] * kernel_shared_local[(17)]));
        compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(41)] * kernel_shared_local[(41)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(42)] * kernel_shared_local[(6)]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(42)] * kernel_shared_local[(30)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(45)] * kernel_shared_local[(6)]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(45)] * kernel_shared_local[(30)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(48)] * kernel_shared_local[(6)]));
        compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(48)] * kernel_shared_local[(30)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(51)] * kernel_shared_local[(6)]));
        compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(51)] * kernel_shared_local[(30)]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(54)] * kernel_shared_local[(6)]));
        compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(54)] * kernel_shared_local[(30)]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(57)] * kernel_shared_local[(6)]));
        compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(57)] * kernel_shared_local[(30)]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(60)] * kernel_shared_local[(6)]));
        compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(60)] * kernel_shared_local[(30)]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(42)] * kernel_shared_local[(18)]));
        compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(42)] * kernel_shared_local[(42)]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(45)] * kernel_shared_local[(18)]));
        compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(45)] * kernel_shared_local[(42)]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(48)] * kernel_shared_local[(18)]));
        compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(48)] * kernel_shared_local[(42)]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(51)] * kernel_shared_local[(18)]));
        compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(51)] * kernel_shared_local[(42)]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(54)] * kernel_shared_local[(18)]));
        compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(54)] * kernel_shared_local[(42)]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(57)] * kernel_shared_local[(18)]));
        compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(57)] * kernel_shared_local[(42)]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(60)] * kernel_shared_local[(18)]));
        compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(60)] * kernel_shared_local[(42)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(43)] * kernel_shared_local[(7)]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(43)] * kernel_shared_local[(31)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(46)] * kernel_shared_local[(7)]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(46)] * kernel_shared_local[(31)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(49)] * kernel_shared_local[(7)]));
        compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(49)] * kernel_shared_local[(31)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(52)] * kernel_shared_local[(7)]));
        compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(52)] * kernel_shared_local[(31)]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(55)] * kernel_shared_local[(7)]));
        compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(55)] * kernel_shared_local[(31)]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(58)] * kernel_shared_local[(7)]));
        compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(58)] * kernel_shared_local[(31)]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(61)] * kernel_shared_local[(7)]));
        compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(61)] * kernel_shared_local[(31)]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(43)] * kernel_shared_local[(19)]));
        compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(43)] * kernel_shared_local[(43)]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(46)] * kernel_shared_local[(19)]));
        compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(46)] * kernel_shared_local[(43)]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(49)] * kernel_shared_local[(19)]));
        compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(49)] * kernel_shared_local[(43)]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(52)] * kernel_shared_local[(19)]));
        compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(52)] * kernel_shared_local[(43)]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(55)] * kernel_shared_local[(19)]));
        compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(55)] * kernel_shared_local[(43)]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(58)] * kernel_shared_local[(19)]));
        compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(58)] * kernel_shared_local[(43)]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(61)] * kernel_shared_local[(19)]));
        compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(61)] * kernel_shared_local[(43)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(44)] * kernel_shared_local[(8)]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(44)] * kernel_shared_local[(32)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(47)] * kernel_shared_local[(8)]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(47)] * kernel_shared_local[(32)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(50)] * kernel_shared_local[(8)]));
        compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(50)] * kernel_shared_local[(32)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(53)] * kernel_shared_local[(8)]));
        compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(53)] * kernel_shared_local[(32)]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(56)] * kernel_shared_local[(8)]));
        compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(56)] * kernel_shared_local[(32)]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(59)] * kernel_shared_local[(8)]));
        compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(59)] * kernel_shared_local[(32)]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(62)] * kernel_shared_local[(8)]));
        compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(62)] * kernel_shared_local[(32)]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(44)] * kernel_shared_local[(20)]));
        compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(44)] * kernel_shared_local[(44)]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(47)] * kernel_shared_local[(20)]));
        compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(47)] * kernel_shared_local[(44)]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(50)] * kernel_shared_local[(20)]));
        compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(50)] * kernel_shared_local[(44)]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(53)] * kernel_shared_local[(20)]));
        compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(53)] * kernel_shared_local[(44)]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(56)] * kernel_shared_local[(20)]));
        compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(56)] * kernel_shared_local[(44)]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(59)] * kernel_shared_local[(20)]));
        compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(59)] * kernel_shared_local[(44)]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(62)] * kernel_shared_local[(20)]));
        compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(62)] * kernel_shared_local[(44)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(63)] * kernel_shared_local[(9)]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(63)] * kernel_shared_local[(33)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(66)] * kernel_shared_local[(9)]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(66)] * kernel_shared_local[(33)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(69)] * kernel_shared_local[(9)]));
        compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(69)] * kernel_shared_local[(33)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(72)] * kernel_shared_local[(9)]));
        compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(72)] * kernel_shared_local[(33)]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(75)] * kernel_shared_local[(9)]));
        compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(75)] * kernel_shared_local[(33)]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(78)] * kernel_shared_local[(9)]));
        compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(78)] * kernel_shared_local[(33)]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(81)] * kernel_shared_local[(9)]));
        compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(81)] * kernel_shared_local[(33)]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(63)] * kernel_shared_local[(21)]));
        compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(63)] * kernel_shared_local[(45)]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(66)] * kernel_shared_local[(21)]));
        compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(66)] * kernel_shared_local[(45)]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(69)] * kernel_shared_local[(21)]));
        compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(69)] * kernel_shared_local[(45)]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(72)] * kernel_shared_local[(21)]));
        compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(72)] * kernel_shared_local[(45)]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(75)] * kernel_shared_local[(21)]));
        compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(75)] * kernel_shared_local[(45)]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(78)] * kernel_shared_local[(21)]));
        compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(78)] * kernel_shared_local[(45)]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(81)] * kernel_shared_local[(21)]));
        compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(81)] * kernel_shared_local[(45)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(64)] * kernel_shared_local[(10)]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(64)] * kernel_shared_local[(34)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(67)] * kernel_shared_local[(10)]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(67)] * kernel_shared_local[(34)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(70)] * kernel_shared_local[(10)]));
        compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(70)] * kernel_shared_local[(34)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(73)] * kernel_shared_local[(10)]));
        compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(73)] * kernel_shared_local[(34)]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(76)] * kernel_shared_local[(10)]));
        compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(76)] * kernel_shared_local[(34)]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(79)] * kernel_shared_local[(10)]));
        compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(79)] * kernel_shared_local[(34)]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(82)] * kernel_shared_local[(10)]));
        compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(82)] * kernel_shared_local[(34)]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(64)] * kernel_shared_local[(22)]));
        compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(64)] * kernel_shared_local[(46)]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(67)] * kernel_shared_local[(22)]));
        compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(67)] * kernel_shared_local[(46)]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(70)] * kernel_shared_local[(22)]));
        compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(70)] * kernel_shared_local[(46)]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(73)] * kernel_shared_local[(22)]));
        compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(73)] * kernel_shared_local[(46)]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(76)] * kernel_shared_local[(22)]));
        compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(76)] * kernel_shared_local[(46)]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(79)] * kernel_shared_local[(22)]));
        compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(79)] * kernel_shared_local[(46)]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(82)] * kernel_shared_local[(22)]));
        compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(82)] * kernel_shared_local[(46)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(65)] * kernel_shared_local[(11)]));
        compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(65)] * kernel_shared_local[(35)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(68)] * kernel_shared_local[(11)]));
        compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(68)] * kernel_shared_local[(35)]));
        compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(71)] * kernel_shared_local[(11)]));
        compute_local[(16)] = (compute_local[(16)] + (pad_temp_shared_local[(71)] * kernel_shared_local[(35)]));
        compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(74)] * kernel_shared_local[(11)]));
        compute_local[(17)] = (compute_local[(17)] + (pad_temp_shared_local[(74)] * kernel_shared_local[(35)]));
        compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(77)] * kernel_shared_local[(11)]));
        compute_local[(18)] = (compute_local[(18)] + (pad_temp_shared_local[(77)] * kernel_shared_local[(35)]));
        compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(80)] * kernel_shared_local[(11)]));
        compute_local[(19)] = (compute_local[(19)] + (pad_temp_shared_local[(80)] * kernel_shared_local[(35)]));
        compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(83)] * kernel_shared_local[(11)]));
        compute_local[(20)] = (compute_local[(20)] + (pad_temp_shared_local[(83)] * kernel_shared_local[(35)]));
        compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(65)] * kernel_shared_local[(23)]));
        compute_local[(21)] = (compute_local[(21)] + (pad_temp_shared_local[(65)] * kernel_shared_local[(47)]));
        compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(68)] * kernel_shared_local[(23)]));
        compute_local[(22)] = (compute_local[(22)] + (pad_temp_shared_local[(68)] * kernel_shared_local[(47)]));
        compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(71)] * kernel_shared_local[(23)]));
        compute_local[(23)] = (compute_local[(23)] + (pad_temp_shared_local[(71)] * kernel_shared_local[(47)]));
        compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(74)] * kernel_shared_local[(23)]));
        compute_local[(24)] = (compute_local[(24)] + (pad_temp_shared_local[(74)] * kernel_shared_local[(47)]));
        compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(77)] * kernel_shared_local[(23)]));
        compute_local[(25)] = (compute_local[(25)] + (pad_temp_shared_local[(77)] * kernel_shared_local[(47)]));
        compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(80)] * kernel_shared_local[(23)]));
        compute_local[(26)] = (compute_local[(26)] + (pad_temp_shared_local[(80)] * kernel_shared_local[(47)]));
        compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(83)] * kernel_shared_local[(23)]));
        compute_local[(27)] = (compute_local[(27)] + (pad_temp_shared_local[(83)] * kernel_shared_local[(47)]));
      }
    }
  }
  compute[((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)))] = compute_local[(0)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 3136))] = compute_local[(14)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 28))] = compute_local[(1)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 3164))] = compute_local[(15)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 56))] = compute_local[(2)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 3192))] = compute_local[(16)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 84))] = compute_local[(3)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 3220))] = compute_local[(17)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 112))] = compute_local[(4)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 3248))] = compute_local[(18)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 140))] = compute_local[(5)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 3276))] = compute_local[(19)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 168))] = compute_local[(6)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 3304))] = compute_local[(20)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 784))] = compute_local[(7)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 3920))] = compute_local[(21)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 812))] = compute_local[(8)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 3948))] = compute_local[(22)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 840))] = compute_local[(9)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 3976))] = compute_local[(23)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 868))] = compute_local[(10)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 4004))] = compute_local[(24)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 896))] = compute_local[(11)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 4032))] = compute_local[(25)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 924))] = compute_local[(12)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 4060))] = compute_local[(26)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 952))] = compute_local[(13)];
  compute[(((((((((int)blockIdx.z) * 6272) + (((int)threadIdx.z) * 1568)) + (((int)threadIdx.y) * 196)) + (((int)blockIdx.x) * 4)) + ((int)threadIdx.x)) + 4088))] = compute_local[(27)];
}
//grid=(1,14,1),  block=(7,1,32)
extern "C" __global__ void conv_32_32_14_14(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[2];
  __shared__ float pad_temp_shared[84];
  __shared__ float kernel_shared[192];
  float pad_temp_shared_local[6];
  float kernel_shared_local[3];
  #pragma unroll
  for (int xx_c_init = 0; xx_c_init < 2; ++xx_c_init) {
    compute_local[(xx_c_init)] = 0.000000e+00f;
  }
  for (int rc_outer = 0; rc_outer < 16; ++rc_outer) {
    #pragma unroll
    for (int rx_outer = 0; rx_outer < 3; ++rx_outer) {
      __syncthreads();
      if (((((int)threadIdx.z) * 3) + ((int)threadIdx.x)) < 84) {
        if (((int)threadIdx.x) < 3) {
          pad_temp_shared[(((((int)threadIdx.z) * 3) + ((int)threadIdx.x)))] = (((((1 <= (((((((int)threadIdx.z) * 3) + ((int)threadIdx.x)) % 42) / 14) + ((int)blockIdx.y))) && ((((((((int)threadIdx.z) * 3) + ((int)threadIdx.x)) % 42) / 14) + ((int)blockIdx.y)) < 15)) && (1 <= (rx_outer + (((((int)threadIdx.z) * 3) + ((int)threadIdx.x)) % 14)))) && ((rx_outer + (((((int)threadIdx.z) * 3) + ((int)threadIdx.x)) % 14)) < 15)) ? data[(((((((rc_outer * 392) + ((((((int)threadIdx.z) * 3) + ((int)threadIdx.x)) / 42) * 196)) + (((int)blockIdx.y) * 14)) + rx_outer) + (((((int)threadIdx.z) * 3) + ((int)threadIdx.x)) % 42)) - 15))] : 0.000000e+00f);
        }
      }
      if (((((int)threadIdx.x) / 6) + ((int)threadIdx.z)) < 32) {
        if (((((int)threadIdx.z) * 2) + (((int)threadIdx.x) / 3)) < 64) {
          if (((((int)threadIdx.z) * 6) + ((int)threadIdx.x)) < 192) {
            if (((int)threadIdx.x) < 6) {
              kernel_shared[(((((int)threadIdx.z) * 6) + ((int)threadIdx.x)))] = kernel[(((((((int)threadIdx.z) * 288) + (rc_outer * 18)) + (((int)threadIdx.x) * 3)) + rx_outer))];
            }
          }
        }
      }
      __syncthreads();
      #pragma unroll
      for (int rc_inner_outer = 0; rc_inner_outer < 2; ++rc_inner_outer) {
        #pragma unroll
        for (int ax2 = 0; ax2 < 3; ++ax2) {
          #pragma unroll
          for (int ax3 = 0; ax3 < 2; ++ax3) {
            pad_temp_shared_local[(((ax2 * 2) + ax3))] = pad_temp_shared[(((((rc_inner_outer * 42) + (ax2 * 14)) + (((int)threadIdx.x) * 2)) + ax3))];
          }
        }
        #pragma unroll
        for (int ax21 = 0; ax21 < 3; ++ax21) {
          kernel_shared_local[(ax21)] = kernel_shared[((((((int)threadIdx.z) * 6) + (rc_inner_outer * 3)) + ax21))];
        }
        #pragma unroll
        for (int ry_inner_inner = 0; ry_inner_inner < 3; ++ry_inner_inner) {
          #pragma unroll
          for (int xx_c = 0; xx_c < 2; ++xx_c) {
            compute_local[(xx_c)] = (compute_local[(xx_c)] + (pad_temp_shared_local[(((ry_inner_inner * 2) + xx_c))] * kernel_shared_local[(ry_inner_inner)]));
          }
        }
      }
    }
  }
  #pragma unroll
  for (int xx_inner_inner_inner = 0; xx_inner_inner_inner < 2; ++xx_inner_inner_inner) {
    compute[(((((((int)threadIdx.z) * 196) + (((int)blockIdx.y) * 14)) + (((int)threadIdx.x) * 2)) + xx_inner_inner_inner))] = compute_local[(xx_inner_inner_inner)];
  }
}
//grid=(1,7,4),  block=(1,1,4)
extern "C" __global__ void conv_32_32_7_7(float* __restrict__ data, float* __restrict__ kernel, float* __restrict__ compute) {
  float compute_local[14];
  __shared__ float pad_temp_shared[288];
  __shared__ float kernel_shared[768];
  float pad_temp_shared_local[14];
  float kernel_shared_local[4];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(8)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(9)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(10)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(11)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(12)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(13)] = 0.000000e+00f;
  for (int ry_outer = 0; ry_outer < 3; ++ry_outer) {
    __syncthreads();
    pad_temp_shared[((((int)threadIdx.z) * 72))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 1))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) - 7))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 2))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) - 6))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 3))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) - 5))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 4))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) - 4))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 5))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) - 3))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 6))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) - 2))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 7))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) - 1))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 8))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 9))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 10))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 42))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 11))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 43))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 12))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 44))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 13))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 45))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 14))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 46))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 15))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 47))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 16))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 48))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 17))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 18))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 19))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 91))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 20))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 92))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 21))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 93))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 22))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 94))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 23))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 95))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 24))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 96))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 25))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 97))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 26))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 27))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 28))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 140))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 29))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 141))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 30))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 142))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 31))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 143))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 32))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 144))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 33))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 145))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 34))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 146))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 35))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 36))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 37))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 189))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 38))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 190))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 39))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 191))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 40))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 192))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 41))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 193))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 42))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 194))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 43))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 195))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 44))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 45))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 46))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 238))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 47))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 239))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 48))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 240))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 49))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 241))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 50))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 242))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 51))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 243))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 52))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 244))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 53))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 54))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 55))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 287))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 56))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 288))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 57))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 289))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 58))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 290))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 59))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 291))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 60))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 292))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 61))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 293))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 62))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 63))] = 0.000000e+00f;
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 64))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 336))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 65))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 337))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 66))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 338))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 67))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 339))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 68))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 340))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 69))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 341))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 70))] = (((1 <= (((int)blockIdx.y) + ry_outer)) && ((((int)blockIdx.y) + ry_outer) < 8)) ? data[(((((((int)threadIdx.z) * 392) + (((int)blockIdx.y) * 7)) + (ry_outer * 7)) + 342))] : 0.000000e+00f);
    pad_temp_shared[(((((int)threadIdx.z) * 72) + 71))] = 0.000000e+00f;
    kernel_shared[((((int)threadIdx.z) * 192))] = kernel[((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 1))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 1))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 2))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 2))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 3))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 9))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 4))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 10))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 5))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 11))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 6))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 18))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 7))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 19))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 8))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 20))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 9))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 27))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 10))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 28))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 11))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 29))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 12))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 36))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 13))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 37))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 14))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 38))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 15))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 45))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 16))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 46))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 17))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 47))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 18))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 54))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 19))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 55))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 20))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 56))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 21))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 63))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 22))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 64))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 23))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 65))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 24))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 72))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 25))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 73))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 26))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 74))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 27))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 81))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 28))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 82))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 29))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 83))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 30))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 90))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 31))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 91))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 32))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 92))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 33))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 99))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 34))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 100))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 35))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 101))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 36))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 108))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 37))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 109))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 38))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 110))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 39))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 117))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 40))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 118))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 41))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 119))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 42))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 126))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 43))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 127))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 44))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 128))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 45))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 135))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 46))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 136))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 47))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 137))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 48))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 144))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 49))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 145))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 50))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 146))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 51))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 153))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 52))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 154))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 53))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 155))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 54))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 162))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 55))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 163))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 56))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 164))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 57))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 171))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 58))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 172))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 59))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 173))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 60))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 180))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 61))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 181))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 62))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 182))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 63))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 189))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 64))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 190))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 65))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 191))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 66))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 198))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 67))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 199))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 68))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 200))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 69))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 207))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 70))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 208))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 71))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 209))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 72))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 216))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 73))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 217))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 74))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 218))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 75))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 225))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 76))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 226))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 77))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 227))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 78))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 234))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 79))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 235))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 80))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 236))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 81))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 243))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 82))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 244))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 83))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 245))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 84))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 252))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 85))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 253))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 86))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 254))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 87))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 261))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 88))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 262))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 89))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 263))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 90))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 270))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 91))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 271))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 92))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 272))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 93))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 279))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 94))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 280))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 95))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 281))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 96))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 288))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 97))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 289))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 98))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 290))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 99))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 297))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 100))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 298))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 101))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 299))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 102))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 306))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 103))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 307))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 104))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 308))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 105))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 315))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 106))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 316))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 107))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 317))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 108))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 324))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 109))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 325))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 110))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 326))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 111))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 333))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 112))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 334))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 113))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 335))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 114))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 342))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 115))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 343))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 116))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 344))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 117))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 351))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 118))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 352))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 119))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 353))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 120))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 360))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 121))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 361))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 122))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 362))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 123))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 369))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 124))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 370))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 125))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 371))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 126))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 378))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 127))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 379))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 128))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 380))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 129))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 387))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 130))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 388))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 131))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 389))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 132))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 396))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 133))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 397))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 134))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 398))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 135))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 405))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 136))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 406))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 137))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 407))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 138))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 414))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 139))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 415))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 140))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 416))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 141))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 423))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 142))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 424))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 143))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 425))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 144))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 432))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 145))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 433))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 146))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 434))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 147))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 441))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 148))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 442))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 149))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 443))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 150))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 450))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 151))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 451))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 152))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 452))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 153))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 459))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 154))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 460))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 155))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 461))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 156))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 468))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 157))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 469))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 158))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 470))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 159))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 477))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 160))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 478))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 161))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 479))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 162))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 486))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 163))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 487))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 164))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 488))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 165))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 495))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 166))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 496))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 167))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 497))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 168))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 504))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 169))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 505))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 170))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 506))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 171))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 513))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 172))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 514))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 173))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 515))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 174))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 522))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 175))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 523))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 176))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 524))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 177))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 531))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 178))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 532))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 179))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 533))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 180))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 540))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 181))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 541))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 182))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 542))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 183))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 549))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 184))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 550))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 185))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 551))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 186))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 558))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 187))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 559))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 188))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 560))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 189))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 567))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 190))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 568))];
    kernel_shared[(((((int)threadIdx.z) * 192) + 191))] = kernel[(((((((int)blockIdx.z) * 2304) + (((int)threadIdx.z) * 576)) + (ry_outer * 3)) + 569))];
    __syncthreads();
    for (int rc_inner_outer = 0; rc_inner_outer < 16; ++rc_inner_outer) {
      pad_temp_shared_local[(0)] = pad_temp_shared[((rc_inner_outer * 18))];
      pad_temp_shared_local[(2)] = pad_temp_shared[(((rc_inner_outer * 18) + 1))];
      pad_temp_shared_local[(4)] = pad_temp_shared[(((rc_inner_outer * 18) + 2))];
      pad_temp_shared_local[(6)] = pad_temp_shared[(((rc_inner_outer * 18) + 3))];
      pad_temp_shared_local[(8)] = pad_temp_shared[(((rc_inner_outer * 18) + 4))];
      pad_temp_shared_local[(10)] = pad_temp_shared[(((rc_inner_outer * 18) + 5))];
      pad_temp_shared_local[(12)] = pad_temp_shared[(((rc_inner_outer * 18) + 6))];
      pad_temp_shared_local[(1)] = pad_temp_shared[(((rc_inner_outer * 18) + 9))];
      pad_temp_shared_local[(3)] = pad_temp_shared[(((rc_inner_outer * 18) + 10))];
      pad_temp_shared_local[(5)] = pad_temp_shared[(((rc_inner_outer * 18) + 11))];
      pad_temp_shared_local[(7)] = pad_temp_shared[(((rc_inner_outer * 18) + 12))];
      pad_temp_shared_local[(9)] = pad_temp_shared[(((rc_inner_outer * 18) + 13))];
      pad_temp_shared_local[(11)] = pad_temp_shared[(((rc_inner_outer * 18) + 14))];
      pad_temp_shared_local[(13)] = pad_temp_shared[(((rc_inner_outer * 18) + 15))];
      kernel_shared_local[(0)] = kernel_shared[(((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)))];
      kernel_shared_local[(2)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 384))];
      kernel_shared_local[(1)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 3))];
      kernel_shared_local[(3)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 387))];
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(2)]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(0)]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(0)]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(2)]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(0)]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(2)]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(0)]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(2)]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(0)]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(2)]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(0)]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(2)]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(3)]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(1)]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(3)]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(1)]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(3)]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(1)]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(3)]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(1)]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(3)]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(1)]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(3)]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(1)]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(3)]));
      pad_temp_shared_local[(0)] = pad_temp_shared[(((rc_inner_outer * 18) + 1))];
      pad_temp_shared_local[(2)] = pad_temp_shared[(((rc_inner_outer * 18) + 2))];
      pad_temp_shared_local[(4)] = pad_temp_shared[(((rc_inner_outer * 18) + 3))];
      pad_temp_shared_local[(6)] = pad_temp_shared[(((rc_inner_outer * 18) + 4))];
      pad_temp_shared_local[(8)] = pad_temp_shared[(((rc_inner_outer * 18) + 5))];
      pad_temp_shared_local[(10)] = pad_temp_shared[(((rc_inner_outer * 18) + 6))];
      pad_temp_shared_local[(12)] = pad_temp_shared[(((rc_inner_outer * 18) + 7))];
      pad_temp_shared_local[(1)] = pad_temp_shared[(((rc_inner_outer * 18) + 10))];
      pad_temp_shared_local[(3)] = pad_temp_shared[(((rc_inner_outer * 18) + 11))];
      pad_temp_shared_local[(5)] = pad_temp_shared[(((rc_inner_outer * 18) + 12))];
      pad_temp_shared_local[(7)] = pad_temp_shared[(((rc_inner_outer * 18) + 13))];
      pad_temp_shared_local[(9)] = pad_temp_shared[(((rc_inner_outer * 18) + 14))];
      pad_temp_shared_local[(11)] = pad_temp_shared[(((rc_inner_outer * 18) + 15))];
      pad_temp_shared_local[(13)] = pad_temp_shared[(((rc_inner_outer * 18) + 16))];
      kernel_shared_local[(0)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 1))];
      kernel_shared_local[(2)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 385))];
      kernel_shared_local[(1)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 4))];
      kernel_shared_local[(3)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 388))];
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(2)]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(0)]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(0)]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(2)]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(0)]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(2)]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(0)]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(2)]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(0)]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(2)]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(0)]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(2)]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(3)]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(1)]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(3)]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(1)]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(3)]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(1)]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(3)]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(1)]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(3)]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(1)]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(3)]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(1)]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(3)]));
      pad_temp_shared_local[(0)] = pad_temp_shared[(((rc_inner_outer * 18) + 2))];
      pad_temp_shared_local[(2)] = pad_temp_shared[(((rc_inner_outer * 18) + 3))];
      pad_temp_shared_local[(4)] = pad_temp_shared[(((rc_inner_outer * 18) + 4))];
      pad_temp_shared_local[(6)] = pad_temp_shared[(((rc_inner_outer * 18) + 5))];
      pad_temp_shared_local[(8)] = pad_temp_shared[(((rc_inner_outer * 18) + 6))];
      pad_temp_shared_local[(10)] = pad_temp_shared[(((rc_inner_outer * 18) + 7))];
      pad_temp_shared_local[(12)] = pad_temp_shared[(((rc_inner_outer * 18) + 8))];
      pad_temp_shared_local[(1)] = pad_temp_shared[(((rc_inner_outer * 18) + 11))];
      pad_temp_shared_local[(3)] = pad_temp_shared[(((rc_inner_outer * 18) + 12))];
      pad_temp_shared_local[(5)] = pad_temp_shared[(((rc_inner_outer * 18) + 13))];
      pad_temp_shared_local[(7)] = pad_temp_shared[(((rc_inner_outer * 18) + 14))];
      pad_temp_shared_local[(9)] = pad_temp_shared[(((rc_inner_outer * 18) + 15))];
      pad_temp_shared_local[(11)] = pad_temp_shared[(((rc_inner_outer * 18) + 16))];
      pad_temp_shared_local[(13)] = pad_temp_shared[(((rc_inner_outer * 18) + 17))];
      kernel_shared_local[(0)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 2))];
      kernel_shared_local[(2)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 386))];
      kernel_shared_local[(1)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 5))];
      kernel_shared_local[(3)] = kernel_shared[((((((int)threadIdx.z) * 96) + (rc_inner_outer * 6)) + 389))];
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(2)]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(0)]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(0)]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(2)]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(0)]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(2)]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(0)]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(2)]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(0)]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(2)]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(0)]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(2)]));
      compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
      compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(3)]));
      compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(1)]));
      compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(3)]));
      compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(1)]));
      compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(3)]));
      compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(1)]));
      compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(3)]));
      compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(1)]));
      compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(3)]));
      compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(1)]));
      compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(3)]));
      compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(1)]));
      compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(3)]));
    }
  }
  compute[((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)))] = compute_local[(0)];
  compute[(((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 196))] = compute_local[(7)];
  compute[(((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 1))] = compute_local[(1)];
  compute[(((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 197))] = compute_local[(8)];
  compute[(((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 2))] = compute_local[(2)];
  compute[(((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 198))] = compute_local[(9)];
  compute[(((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 3))] = compute_local[(3)];
  compute[(((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 199))] = compute_local[(10)];
  compute[(((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 4))] = compute_local[(4)];
  compute[(((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 200))] = compute_local[(11)];
  compute[(((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 5))] = compute_local[(5)];
  compute[(((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 201))] = compute_local[(12)];
  compute[(((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 6))] = compute_local[(6)];
  compute[(((((((int)blockIdx.z) * 392) + (((int)threadIdx.z) * 49)) + (((int)blockIdx.y) * 7)) + 202))] = compute_local[(13)];
}


int main(int argc, char *argv[]){
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
    //call code
    if(H==56&&W==56&&C==64&&N==32){
        dim3 grid(1,7,1);
        dim3 block(8,8,4);
        conv_64_32_56_56<<<grid,block>>>(input,weight,output);
    }else if(C==32&&N==32&&H==56&&W==56){
        //grid=(4,8,1),  block=(1,7,16)
        dim3 grid(4,8,1);
        dim3 block(1,7,16);
        conv_32_32_56_56<<<grid,block>>>(input,weight,output);
    }else if(C==96&&N==64&&H==28&&W==28){
        //grid=(1,7,3),  block=(7,4,8)
        dim3 grid(1,7,3);
        dim3 block(7,4,8);
        conv_96_64_28_28<<<grid,block>>>(input,weight,output);
    }else if(C==128&&N==96&&H==14&&W==14){
    	//grid=(1,7,16),  block=(14,2,4)
        dim3 grid(1,7,16);
        dim3 block(14,2,4);
        conv_128_96_14_14<<<grid,block>>>(input,weight,output);
    }else if(C==192&&N==160&&H==7&&W==7){
    	//grid=(1,7,16),  block=(1,1,6)
        dim3 grid(1,7,16);
        dim3 block(1,1,6);
        conv_192_160_7_7<<<grid,block>>>(input,weight,output);
    }else if(C==64&&N==32&&H==224&&W==224){
    	//grid=(14,2,4),  block=(1,28,4)
        dim3 grid(14,2,4);
        dim3 block(1,28,4);
        conv_64_32_224_224<<<grid,block>>>(input,weight,output);
    }else if(C==64&&N==32&&H==112&&W==112){
        //grid=(1,112,16),  block=(4,1,4)
        dim3 grid(1,112,16);
        dim3 block(4,1,4);
        conv_64_32_112_112<<<grid,block>>>(input,weight,output);
    }else if(C==64&&N==64&&H==112&&W==112){
    	//grid=(7,7,1),  block=(8,8,2)
        dim3 grid(7,7,1);
        dim3 block(8,8,2);
        conv_64_64_112_112<<<grid,block>>>(input,weight,output);
    }else if(C==128&&N==64&&H==56&&W==56){
    	//grid=(14,2,2),  block=(1,2,64)
        dim3 grid(14,2,2);
        dim3 block(1,2,64);
        conv_128_64_56_56<<<grid,block>>>(input,weight,output);
    }else if(C==128&&N==128&&H==56&&W==56){
        //grid=(14,4,16),  block=(4,14,2)
        dim3 grid(14,4,16);
        dim3 block(4,14,2);
        conv_128_128_56_56<<<grid,block>>>(input,weight,output);
    }else if(C==128&&N==128&&H==28&&W==28){
        //grid=(1,28,1),  block=(1,1,64)
        dim3 grid(1,28,1);
        dim3 block(1,1,64);
        conv_128_128_28_28<<<grid,block>>>(input,weight,output);
    }else if(C==256&&N==256&&H==7&&W==7){
        //grid=(1,7,128),  block=(7,1,2)
        dim3 grid(1,7,128);
        dim3 block(7,1,2);
        conv_256_256_7_7<<<grid,block>>>(input,weight,output);
    }else if(C==32&&N==32&&H==28&&W==28){
        //grid=(7,1,4),  block=(4,4,2)
        dim3 grid(7,1,4);
        dim3 block(4,4,2);
        conv_32_32_28_28<<<grid,block>>>(input,weight,output);
    }else if(C==32&&N==32&&H==14&&W==14){
        //grid=(1,14,1),  block=(7,1,32)
        dim3 grid(1,14,1);
        dim3 block(7,1,32);
        conv_32_32_14_14<<<grid,block>>>(input,weight,output);
    }else if(C==32&&N==32&&H==7&&W==7){
        //grid=(1,7,4),  block=(1,1,4)
        dim3 grid(1,7,4);
        dim3 block(1,1,4);
        conv_32_32_7_7<<<grid,block>>>(input,weight,output);
    }else{
        cout<<"not supported shape"<<endl;
    }
    cudaDeviceSynchronize();
    float inference_time = 0.0f;
    cudaEvent_t event_start;
    cudaEvent_t event_stop;
    cudaEventCreate(&event_start);
    cudaEventCreate(&event_stop);
    for(int i=0;i<1024;++i){
        cudaEventRecord(event_start);
        if(H==56&&W==56&&C==64&&N==32){
            dim3 grid(1,7,1);
            dim3 block(8,8,4);
            conv_64_32_56_56<<<grid,block>>>(input,weight,output);
        }else if(C==32&&N==32&&H==56&&W==56){
            //grid=(4,8,1),  block=(1,7,16)
            dim3 grid(4,8,1);
            dim3 block(1,7,16);
            conv_32_32_56_56<<<grid,block>>>(input,weight,output);
        }else if(C==96&&N==64&&H==28&&W==28){
            //grid=(1,7,3),  block=(7,4,8)
            dim3 grid(1,7,3);
            dim3 block(7,4,8);
            conv_96_64_28_28<<<grid,block>>>(input,weight,output);
        }else if(C==128&&N==96&&H==14&&W==14){
            //grid=(1,7,16),  block=(14,2,4)
            dim3 grid(1,7,16);
            dim3 block(14,2,4);
            conv_128_96_14_14<<<grid,block>>>(input,weight,output);
        }else if(C==192&&N==160&&H==7&&W==7){
            //grid=(1,7,16),  block=(1,1,6)
            dim3 grid(1,7,16);
            dim3 block(1,1,6);
            conv_192_160_7_7<<<grid,block>>>(input,weight,output);
        }else if(C==64&&N==32&&H==224&&W==224){
            //grid=(14,2,4),  block=(1,28,4)
            dim3 grid(14,2,4);
            dim3 block(1,28,4);
            conv_64_32_224_224<<<grid,block>>>(input,weight,output);
        }else if(C==64&&N==32&&H==112&&W==112){
            //grid=(1,112,16),  block=(4,1,4)
            dim3 grid(1,112,16);
            dim3 block(4,1,4);
            conv_64_32_112_112<<<grid,block>>>(input,weight,output);
        }else if(C==64&&N==64&&H==112&&W==112){
            //grid=(7,7,1),  block=(8,8,2)
            dim3 grid(7,7,1);
            dim3 block(8,8,2);
            conv_64_64_112_112<<<grid,block>>>(input,weight,output);
        }else if(C==128&&N==64&&H==56&&W==56){
            //grid=(14,2,2),  block=(1,2,64)
            dim3 grid(14,2,2);
            dim3 block(1,2,64);
            conv_128_64_56_56<<<grid,block>>>(input,weight,output);
        }else if(C==128&&N==128&&H==56&&W==56){
            //grid=(14,4,16),  block=(4,14,2)
            dim3 grid(14,4,16);
            dim3 block(4,14,2);
            conv_128_128_56_56<<<grid,block>>>(input,weight,output);
        }else if(C==128&&N==128&&H==28&&W==28){
            //grid=(1,28,1),  block=(1,1,64)
            dim3 grid(1,28,1);
            dim3 block(1,1,64);
            conv_128_128_28_28<<<grid,block>>>(input,weight,output);
        }else if(C==256&&N==256&&H==7&&W==7){
            //grid=(1,7,128),  block=(7,1,2)
            dim3 grid(1,7,128);
            dim3 block(7,1,2);
            conv_256_256_7_7<<<grid,block>>>(input,weight,output);
        }else if(C==32&&N==32&&H==28&&W==28){
            //grid=(7,1,4),  block=(4,4,2)
            dim3 grid(7,1,4);
            dim3 block(4,4,2);
            conv_32_32_28_28<<<grid,block>>>(input,weight,output);
        }else if(C==32&&N==32&&H==14&&W==14){
            //grid=(1,14,1),  block=(7,1,32)
            dim3 grid(1,14,1);
            dim3 block(7,1,32);
            conv_32_32_14_14<<<grid,block>>>(input,weight,output);
        }else if(C==32&&N==32&&H==7&&W==7){
            //grid=(1,7,4),  block=(1,1,4)
            dim3 grid(1,7,4);
            dim3 block(1,1,4);
            conv_32_32_7_7<<<grid,block>>>(input,weight,output);
        }else{
            cout<<"not supported shape"<<endl;
        }
        cudaEventRecord(event_stop);
        cudaEventSynchronize(event_stop);
        float temp_time;
        cudaEventElapsedTime(&temp_time, event_start, event_stop);
        inference_time += temp_time;
    }
    cout<<C<<","<<N<<","<<H<<","<<W<<","<<inference_time/1024<<endl;
    return 0;
}
