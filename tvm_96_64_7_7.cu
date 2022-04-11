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
    __shared__ float pad_temp_shared[108];
    __shared__ float kernel_shared[144];
    float pad_temp_shared_local[12];
    float kernel_shared_local[24];
    compute_local[(0)] = 0.000000e+00f;
    compute_local[(1)] = 0.000000e+00f;
    for (int rc_outer = 0; rc_outer < 24; ++rc_outer) {
        __syncthreads();
        pad_temp_shared[(((((int)threadIdx.z) * 54) + (((int)threadIdx.x) * 8)))] = (((((1 <= ((((((int)threadIdx.x) * 8) % 27) / 9) + ((int)blockIdx.y))) && (((((((int)threadIdx.x) * 8) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= ((((int)threadIdx.x) * 8) % 9))) && (((((int)threadIdx.x) * 8) % 9) < 8)) ? data[((((((((rc_outer * 196) + (((int)threadIdx.z) * 98)) + (((((int)threadIdx.x) * 8) / 27) * 49)) + ((((((int)threadIdx.x) * 8) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + ((((int)threadIdx.x) * 8) % 9)) - 8))] : 0.000000e+00f);
        pad_temp_shared[((((((int)threadIdx.z) * 54) + (((int)threadIdx.x) * 8)) + 1))] = (((((1 <= (((((((int)threadIdx.x) * 8) + 1) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 8) + 1) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 8) + 1) % 9))) && ((((((int)threadIdx.x) * 8) + 1) % 9) < 8)) ? data[((((((((rc_outer * 196) + (((int)threadIdx.z) * 98)) + ((((((int)threadIdx.x) * 8) + 1) / 27) * 49)) + (((((((int)threadIdx.x) * 8) + 1) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 8) + 1) % 9)) - 8))] : 0.000000e+00f);
        pad_temp_shared[((((((int)threadIdx.z) * 54) + (((int)threadIdx.x) * 8)) + 2))] = (((((1 <= (((((((int)threadIdx.x) * 8) + 2) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 8) + 2) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 8) + 2) % 9))) && ((((((int)threadIdx.x) * 8) + 2) % 9) < 8)) ? data[((((((((rc_outer * 196) + (((int)threadIdx.z) * 98)) + ((((((int)threadIdx.x) * 8) + 2) / 27) * 49)) + (((((((int)threadIdx.x) * 8) + 2) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 8) + 2) % 9)) - 8))] : 0.000000e+00f);
        pad_temp_shared[((((((int)threadIdx.z) * 54) + (((int)threadIdx.x) * 8)) + 3))] = (((((1 <= (((((((int)threadIdx.x) * 8) + 3) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 8) + 3) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 8) + 3) % 9))) && ((((((int)threadIdx.x) * 8) + 3) % 9) < 8)) ? data[((((((((rc_outer * 196) + (((int)threadIdx.z) * 98)) + ((((((int)threadIdx.x) * 8) + 3) / 27) * 49)) + (((((((int)threadIdx.x) * 8) + 3) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 8) + 3) % 9)) - 8))] : 0.000000e+00f);
        pad_temp_shared[((((((int)threadIdx.z) * 54) + (((int)threadIdx.x) * 8)) + 4))] = (((((1 <= (((((((int)threadIdx.x) * 8) + 4) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 8) + 4) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 8) + 4) % 9))) && ((((((int)threadIdx.x) * 8) + 4) % 9) < 8)) ? data[((((((((rc_outer * 196) + (((int)threadIdx.z) * 98)) + ((((((int)threadIdx.x) * 8) + 4) / 27) * 49)) + (((((((int)threadIdx.x) * 8) + 4) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 8) + 4) % 9)) - 8))] : 0.000000e+00f);
        pad_temp_shared[((((((int)threadIdx.z) * 54) + (((int)threadIdx.x) * 8)) + 5))] = (((((1 <= (((((((int)threadIdx.x) * 8) + 5) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 8) + 5) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 8) + 5) % 9))) && ((((((int)threadIdx.x) * 8) + 5) % 9) < 8)) ? data[((((((((rc_outer * 196) + (((int)threadIdx.z) * 98)) + ((((((int)threadIdx.x) * 8) + 5) / 27) * 49)) + (((((((int)threadIdx.x) * 8) + 5) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 8) + 5) % 9)) - 8))] : 0.000000e+00f);
        if (((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 8) + 6) / 27)) < 4) {
            if (((((int)threadIdx.z) * 6) + (((((int)threadIdx.x) * 8) + 6) / 9)) < 12) {
                if (((((int)threadIdx.z) * 54) + (((int)threadIdx.x) * 8)) < 102) {
                    if (((int)threadIdx.x) < 6) {
                        pad_temp_shared[((((((int)threadIdx.z) * 54) + (((int)threadIdx.x) * 8)) + 6))] = (((((1 <= (((((((int)threadIdx.x) * 8) + 6) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 8) + 6) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 8) + 6) % 9))) && ((((((int)threadIdx.x) * 8) + 6) % 9) < 8)) ? data[((((((((rc_outer * 196) + (((int)threadIdx.z) * 98)) + ((((((int)threadIdx.x) * 8) + 6) / 27) * 49)) + (((((((int)threadIdx.x) * 8) + 6) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 8) + 6) % 9)) - 8))] : 0.000000e+00f);
                    }
                }
            }
        }
        if (((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 8) + 7) / 27)) < 4) {
            if (((((int)threadIdx.z) * 6) + (((((int)threadIdx.x) * 8) + 7) / 9)) < 12) {
                if (((((int)threadIdx.z) * 54) + (((int)threadIdx.x) * 8)) < 101) {
                    if (((int)threadIdx.x) < 6) {
                        pad_temp_shared[((((((int)threadIdx.z) * 54) + (((int)threadIdx.x) * 8)) + 7))] = (((((1 <= (((((((int)threadIdx.x) * 8) + 7) % 27) / 9) + ((int)blockIdx.y))) && ((((((((int)threadIdx.x) * 8) + 7) % 27) / 9) + ((int)blockIdx.y)) < 8)) && (1 <= (((((int)threadIdx.x) * 8) + 7) % 9))) && ((((((int)threadIdx.x) * 8) + 7) % 9) < 8)) ? data[((((((((rc_outer * 196) + (((int)threadIdx.z) * 98)) + ((((((int)threadIdx.x) * 8) + 7) / 27) * 49)) + (((((((int)threadIdx.x) * 8) + 7) % 27) / 9) * 7)) + (((int)blockIdx.y) * 7)) + (((((int)threadIdx.x) * 8) + 7) % 9)) - 8))] : 0.000000e+00f);
                    }
                }
            }
        }
        kernel_shared[(((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)))] = kernel[((((((((int)blockIdx.z) * 3456) + (((int)threadIdx.z) * 1728)) + (((((int)threadIdx.x) * 11) / 36) * 864)) + (rc_outer * 36)) + ((((int)threadIdx.x) * 11) % 36)))];
        kernel_shared[((((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) + 1))] = kernel[((((((((int)blockIdx.z) * 3456) + (((int)threadIdx.z) * 1728)) + ((((((int)threadIdx.x) * 11) + 1) / 36) * 864)) + (rc_outer * 36)) + (((((int)threadIdx.x) * 11) + 1) % 36)))];
        kernel_shared[((((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) + 2))] = kernel[((((((((int)blockIdx.z) * 3456) + (((int)threadIdx.z) * 1728)) + ((((((int)threadIdx.x) * 11) + 2) / 36) * 864)) + (rc_outer * 36)) + (((((int)threadIdx.x) * 11) + 2) % 36)))];
        kernel_shared[((((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) + 3))] = kernel[((((((((int)blockIdx.z) * 3456) + (((int)threadIdx.z) * 1728)) + ((((((int)threadIdx.x) * 11) + 3) / 36) * 864)) + (rc_outer * 36)) + (((((int)threadIdx.x) * 11) + 3) % 36)))];
        kernel_shared[((((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) + 4))] = kernel[((((((((int)blockIdx.z) * 3456) + (((int)threadIdx.z) * 1728)) + ((((((int)threadIdx.x) * 11) + 4) / 36) * 864)) + (rc_outer * 36)) + (((((int)threadIdx.x) * 11) + 4) % 36)))];
        kernel_shared[((((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) + 5))] = kernel[((((((((int)blockIdx.z) * 3456) + (((int)threadIdx.z) * 1728)) + ((((((int)threadIdx.x) * 11) + 5) / 36) * 864)) + (rc_outer * 36)) + (((((int)threadIdx.x) * 11) + 5) % 36)))];
        if (((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 11) + 6) / 36)) < 4) {
            if (((((int)threadIdx.z) * 8) + (((((int)threadIdx.x) * 11) + 6) / 9)) < 16) {
                if (((((int)threadIdx.z) * 24) + ((((int)threadIdx.x) * 11) / 3)) < 46) {
                    if (((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) < 138) {
                        if (((int)threadIdx.x) < 6) {
                            kernel_shared[((((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) + 6))] = kernel[((((((((int)blockIdx.z) * 3456) + (((int)threadIdx.z) * 1728)) + ((((((int)threadIdx.x) * 11) + 6) / 36) * 864)) + (rc_outer * 36)) + (((((int)threadIdx.x) * 11) + 6) % 36)))];
                        }
                    }
                }
            }
        }
        if (((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 11) + 7) / 36)) < 4) {
            if (((((int)threadIdx.z) * 8) + (((((int)threadIdx.x) * 11) + 7) / 9)) < 16) {
                if (((((int)threadIdx.z) * 24) + (((((int)threadIdx.x) * 11) + 7) / 3)) < 48) {
                    if (((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) < 137) {
                        if (((int)threadIdx.x) < 6) {
                            kernel_shared[((((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) + 7))] = kernel[((((((((int)blockIdx.z) * 3456) + (((int)threadIdx.z) * 1728)) + ((((((int)threadIdx.x) * 11) + 7) / 36) * 864)) + (rc_outer * 36)) + (((((int)threadIdx.x) * 11) + 7) % 36)))];
                        }
                    }
                }
            }
        }
        if (((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 11) + 8) / 36)) < 4) {
            if (((((int)threadIdx.z) * 8) + (((((int)threadIdx.x) * 11) + 8) / 9)) < 16) {
                if (((((int)threadIdx.z) * 24) + (((((int)threadIdx.x) * 11) + 8) / 3)) < 48) {
                    if (((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) < 136) {
                        if (((int)threadIdx.x) < 6) {
                            kernel_shared[((((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) + 8))] = kernel[((((((((int)blockIdx.z) * 3456) + (((int)threadIdx.z) * 1728)) + ((((((int)threadIdx.x) * 11) + 8) / 36) * 864)) + (rc_outer * 36)) + (((((int)threadIdx.x) * 11) + 8) % 36)))];
                        }
                    }
                }
            }
        }
        if (((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 11) + 9) / 36)) < 4) {
            if (((((int)threadIdx.z) * 8) + ((((int)threadIdx.x) * 11) / 9)) < 15) {
                if (((((int)threadIdx.z) * 24) + ((((int)threadIdx.x) * 11) / 3)) < 45) {
                    if (((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) < 135) {
                        if (((int)threadIdx.x) < 6) {
                            kernel_shared[((((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) + 9))] = kernel[((((((((int)blockIdx.z) * 3456) + (((int)threadIdx.z) * 1728)) + ((((((int)threadIdx.x) * 11) + 9) / 36) * 864)) + (rc_outer * 36)) + (((((int)threadIdx.x) * 11) + 9) % 36)))];
                        }
                    }
                }
            }
        }
        if (((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 11) + 10) / 36)) < 4) {
            if (((((int)threadIdx.z) * 8) + (((((int)threadIdx.x) * 11) + 10) / 9)) < 16) {
                if (((((int)threadIdx.z) * 24) + (((((int)threadIdx.x) * 11) + 10) / 3)) < 48) {
                    if (((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) < 134) {
                        if (((int)threadIdx.x) < 6) {
                            kernel_shared[((((((int)threadIdx.z) * 72) + (((int)threadIdx.x) * 11)) + 10))] = kernel[((((((((int)blockIdx.z) * 3456) + (((int)threadIdx.z) * 1728)) + ((((((int)threadIdx.x) * 11) + 10) / 36) * 864)) + (rc_outer * 36)) + (((((int)threadIdx.x) * 11) + 10) % 36)))];
                        }
                    }
                }
            }
        }
        __syncthreads();
        pad_temp_shared_local[(0)] = pad_temp_shared[(((int)threadIdx.x))];
        pad_temp_shared_local[(1)] = pad_temp_shared[((((int)threadIdx.x) + 1))];
        pad_temp_shared_local[(2)] = pad_temp_shared[((((int)threadIdx.x) + 2))];
        pad_temp_shared_local[(3)] = pad_temp_shared[((((int)threadIdx.x) + 27))];
        pad_temp_shared_local[(4)] = pad_temp_shared[((((int)threadIdx.x) + 28))];
        pad_temp_shared_local[(5)] = pad_temp_shared[((((int)threadIdx.x) + 29))];
        pad_temp_shared_local[(6)] = pad_temp_shared[((((int)threadIdx.x) + 54))];
        pad_temp_shared_local[(7)] = pad_temp_shared[((((int)threadIdx.x) + 55))];
        pad_temp_shared_local[(8)] = pad_temp_shared[((((int)threadIdx.x) + 56))];
        pad_temp_shared_local[(9)] = pad_temp_shared[((((int)threadIdx.x) + 81))];
        pad_temp_shared_local[(10)] = pad_temp_shared[((((int)threadIdx.x) + 82))];
        pad_temp_shared_local[(11)] = pad_temp_shared[((((int)threadIdx.x) + 83))];
        kernel_shared_local[(0)] = kernel_shared[((((int)threadIdx.z) * 72))];
        kernel_shared_local[(1)] = kernel_shared[(((((int)threadIdx.z) * 72) + 1))];
        kernel_shared_local[(2)] = kernel_shared[(((((int)threadIdx.z) * 72) + 2))];
        kernel_shared_local[(3)] = kernel_shared[(((((int)threadIdx.z) * 72) + 9))];
        kernel_shared_local[(4)] = kernel_shared[(((((int)threadIdx.z) * 72) + 10))];
        kernel_shared_local[(5)] = kernel_shared[(((((int)threadIdx.z) * 72) + 11))];
        kernel_shared_local[(6)] = kernel_shared[(((((int)threadIdx.z) * 72) + 18))];
        kernel_shared_local[(7)] = kernel_shared[(((((int)threadIdx.z) * 72) + 19))];
        kernel_shared_local[(8)] = kernel_shared[(((((int)threadIdx.z) * 72) + 20))];
        kernel_shared_local[(9)] = kernel_shared[(((((int)threadIdx.z) * 72) + 27))];
        kernel_shared_local[(10)] = kernel_shared[(((((int)threadIdx.z) * 72) + 28))];
        kernel_shared_local[(11)] = kernel_shared[(((((int)threadIdx.z) * 72) + 29))];
        kernel_shared_local[(12)] = kernel_shared[(((((int)threadIdx.z) * 72) + 36))];
        kernel_shared_local[(13)] = kernel_shared[(((((int)threadIdx.z) * 72) + 37))];
        kernel_shared_local[(14)] = kernel_shared[(((((int)threadIdx.z) * 72) + 38))];
        kernel_shared_local[(15)] = kernel_shared[(((((int)threadIdx.z) * 72) + 45))];
        kernel_shared_local[(16)] = kernel_shared[(((((int)threadIdx.z) * 72) + 46))];
        kernel_shared_local[(17)] = kernel_shared[(((((int)threadIdx.z) * 72) + 47))];
        kernel_shared_local[(18)] = kernel_shared[(((((int)threadIdx.z) * 72) + 54))];
        kernel_shared_local[(19)] = kernel_shared[(((((int)threadIdx.z) * 72) + 55))];
        kernel_shared_local[(20)] = kernel_shared[(((((int)threadIdx.z) * 72) + 56))];
        kernel_shared_local[(21)] = kernel_shared[(((((int)threadIdx.z) * 72) + 63))];
        kernel_shared_local[(22)] = kernel_shared[(((((int)threadIdx.z) * 72) + 64))];
        kernel_shared_local[(23)] = kernel_shared[(((((int)threadIdx.z) * 72) + 65))];
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(12)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(13)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(14)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(3)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(15)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(4)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(16)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(5)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(17)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(6)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(18)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(7)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(19)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(8)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(20)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(9)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(21)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(10)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(22)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(11)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(23)]));
        pad_temp_shared_local[(0)] = pad_temp_shared[((((int)threadIdx.x) + 9))];
        pad_temp_shared_local[(1)] = pad_temp_shared[((((int)threadIdx.x) + 10))];
        pad_temp_shared_local[(2)] = pad_temp_shared[((((int)threadIdx.x) + 11))];
        pad_temp_shared_local[(3)] = pad_temp_shared[((((int)threadIdx.x) + 36))];
        pad_temp_shared_local[(4)] = pad_temp_shared[((((int)threadIdx.x) + 37))];
        pad_temp_shared_local[(5)] = pad_temp_shared[((((int)threadIdx.x) + 38))];
        pad_temp_shared_local[(6)] = pad_temp_shared[((((int)threadIdx.x) + 63))];
        pad_temp_shared_local[(7)] = pad_temp_shared[((((int)threadIdx.x) + 64))];
        pad_temp_shared_local[(8)] = pad_temp_shared[((((int)threadIdx.x) + 65))];
        pad_temp_shared_local[(9)] = pad_temp_shared[((((int)threadIdx.x) + 90))];
        pad_temp_shared_local[(10)] = pad_temp_shared[((((int)threadIdx.x) + 91))];
        pad_temp_shared_local[(11)] = pad_temp_shared[((((int)threadIdx.x) + 92))];
        kernel_shared_local[(0)] = kernel_shared[(((((int)threadIdx.z) * 72) + 3))];
        kernel_shared_local[(1)] = kernel_shared[(((((int)threadIdx.z) * 72) + 4))];
        kernel_shared_local[(2)] = kernel_shared[(((((int)threadIdx.z) * 72) + 5))];
        kernel_shared_local[(3)] = kernel_shared[(((((int)threadIdx.z) * 72) + 12))];
        kernel_shared_local[(4)] = kernel_shared[(((((int)threadIdx.z) * 72) + 13))];
        kernel_shared_local[(5)] = kernel_shared[(((((int)threadIdx.z) * 72) + 14))];
        kernel_shared_local[(6)] = kernel_shared[(((((int)threadIdx.z) * 72) + 21))];
        kernel_shared_local[(7)] = kernel_shared[(((((int)threadIdx.z) * 72) + 22))];
        kernel_shared_local[(8)] = kernel_shared[(((((int)threadIdx.z) * 72) + 23))];
        kernel_shared_local[(9)] = kernel_shared[(((((int)threadIdx.z) * 72) + 30))];
        kernel_shared_local[(10)] = kernel_shared[(((((int)threadIdx.z) * 72) + 31))];
        kernel_shared_local[(11)] = kernel_shared[(((((int)threadIdx.z) * 72) + 32))];
        kernel_shared_local[(12)] = kernel_shared[(((((int)threadIdx.z) * 72) + 39))];
        kernel_shared_local[(13)] = kernel_shared[(((((int)threadIdx.z) * 72) + 40))];
        kernel_shared_local[(14)] = kernel_shared[(((((int)threadIdx.z) * 72) + 41))];
        kernel_shared_local[(15)] = kernel_shared[(((((int)threadIdx.z) * 72) + 48))];
        kernel_shared_local[(16)] = kernel_shared[(((((int)threadIdx.z) * 72) + 49))];
        kernel_shared_local[(17)] = kernel_shared[(((((int)threadIdx.z) * 72) + 50))];
        kernel_shared_local[(18)] = kernel_shared[(((((int)threadIdx.z) * 72) + 57))];
        kernel_shared_local[(19)] = kernel_shared[(((((int)threadIdx.z) * 72) + 58))];
        kernel_shared_local[(20)] = kernel_shared[(((((int)threadIdx.z) * 72) + 59))];
        kernel_shared_local[(21)] = kernel_shared[(((((int)threadIdx.z) * 72) + 66))];
        kernel_shared_local[(22)] = kernel_shared[(((((int)threadIdx.z) * 72) + 67))];
        kernel_shared_local[(23)] = kernel_shared[(((((int)threadIdx.z) * 72) + 68))];
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(12)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(13)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(14)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(3)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(15)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(4)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(16)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(5)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(17)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(6)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(18)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(7)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(19)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(8)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(20)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(9)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(21)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(10)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(22)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(11)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(23)]));
        pad_temp_shared_local[(0)] = pad_temp_shared[((((int)threadIdx.x) + 18))];
        pad_temp_shared_local[(1)] = pad_temp_shared[((((int)threadIdx.x) + 19))];
        pad_temp_shared_local[(2)] = pad_temp_shared[((((int)threadIdx.x) + 20))];
        pad_temp_shared_local[(3)] = pad_temp_shared[((((int)threadIdx.x) + 45))];
        pad_temp_shared_local[(4)] = pad_temp_shared[((((int)threadIdx.x) + 46))];
        pad_temp_shared_local[(5)] = pad_temp_shared[((((int)threadIdx.x) + 47))];
        pad_temp_shared_local[(6)] = pad_temp_shared[((((int)threadIdx.x) + 72))];
        pad_temp_shared_local[(7)] = pad_temp_shared[((((int)threadIdx.x) + 73))];
        pad_temp_shared_local[(8)] = pad_temp_shared[((((int)threadIdx.x) + 74))];
        pad_temp_shared_local[(9)] = pad_temp_shared[((((int)threadIdx.x) + 99))];
        pad_temp_shared_local[(10)] = pad_temp_shared[((((int)threadIdx.x) + 100))];
        pad_temp_shared_local[(11)] = pad_temp_shared[((((int)threadIdx.x) + 101))];
        kernel_shared_local[(0)] = kernel_shared[(((((int)threadIdx.z) * 72) + 6))];
        kernel_shared_local[(1)] = kernel_shared[(((((int)threadIdx.z) * 72) + 7))];
        kernel_shared_local[(2)] = kernel_shared[(((((int)threadIdx.z) * 72) + 8))];
        kernel_shared_local[(3)] = kernel_shared[(((((int)threadIdx.z) * 72) + 15))];
        kernel_shared_local[(4)] = kernel_shared[(((((int)threadIdx.z) * 72) + 16))];
        kernel_shared_local[(5)] = kernel_shared[(((((int)threadIdx.z) * 72) + 17))];
        kernel_shared_local[(6)] = kernel_shared[(((((int)threadIdx.z) * 72) + 24))];
        kernel_shared_local[(7)] = kernel_shared[(((((int)threadIdx.z) * 72) + 25))];
        kernel_shared_local[(8)] = kernel_shared[(((((int)threadIdx.z) * 72) + 26))];
        kernel_shared_local[(9)] = kernel_shared[(((((int)threadIdx.z) * 72) + 33))];
        kernel_shared_local[(10)] = kernel_shared[(((((int)threadIdx.z) * 72) + 34))];
        kernel_shared_local[(11)] = kernel_shared[(((((int)threadIdx.z) * 72) + 35))];
        kernel_shared_local[(12)] = kernel_shared[(((((int)threadIdx.z) * 72) + 42))];
        kernel_shared_local[(13)] = kernel_shared[(((((int)threadIdx.z) * 72) + 43))];
        kernel_shared_local[(14)] = kernel_shared[(((((int)threadIdx.z) * 72) + 44))];
        kernel_shared_local[(15)] = kernel_shared[(((((int)threadIdx.z) * 72) + 51))];
        kernel_shared_local[(16)] = kernel_shared[(((((int)threadIdx.z) * 72) + 52))];
        kernel_shared_local[(17)] = kernel_shared[(((((int)threadIdx.z) * 72) + 53))];
        kernel_shared_local[(18)] = kernel_shared[(((((int)threadIdx.z) * 72) + 60))];
        kernel_shared_local[(19)] = kernel_shared[(((((int)threadIdx.z) * 72) + 61))];
        kernel_shared_local[(20)] = kernel_shared[(((((int)threadIdx.z) * 72) + 62))];
        kernel_shared_local[(21)] = kernel_shared[(((((int)threadIdx.z) * 72) + 69))];
        kernel_shared_local[(22)] = kernel_shared[(((((int)threadIdx.z) * 72) + 70))];
        kernel_shared_local[(23)] = kernel_shared[(((((int)threadIdx.z) * 72) + 71))];
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(12)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(13)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(14)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(3)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(15)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(4)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(16)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(5)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(17)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(6)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(18)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(7)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(19)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(8)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(20)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(9)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(21)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(10)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(22)]));
        compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(11)]));
        compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(23)]));
    }
    compute[(((((((int)blockIdx.z) * 196) + (((int)threadIdx.z) * 98)) + (((int)blockIdx.y) * 7)) + ((int)threadIdx.x)))] = compute_local[(0)];
    compute[((((((((int)blockIdx.z) * 196) + (((int)threadIdx.z) * 98)) + (((int)blockIdx.y) * 7)) + ((int)threadIdx.x)) + 49))] = compute_local[(1)];
}

//grid=(1,7,16),  block=(7,1,2)
int main(int argc, char *argv[]){
    dim3 grid(1,7,16);
    dim3 block(7,1,2);
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