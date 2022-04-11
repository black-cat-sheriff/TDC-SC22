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
    float compute_local[16];
    __shared__ float pad_temp_shared[2592];
    __shared__ float kernel_shared[576];
    float pad_temp_shared_local[24];
    float kernel_shared_local[12];
    compute_local[(0)] = 0.000000e+00f;
    compute_local[(8)] = 0.000000e+00f;
    compute_local[(4)] = 0.000000e+00f;
    compute_local[(12)] = 0.000000e+00f;
    compute_local[(1)] = 0.000000e+00f;
    compute_local[(9)] = 0.000000e+00f;
    compute_local[(5)] = 0.000000e+00f;
    compute_local[(13)] = 0.000000e+00f;
    compute_local[(2)] = 0.000000e+00f;
    compute_local[(10)] = 0.000000e+00f;
    compute_local[(6)] = 0.000000e+00f;
    compute_local[(14)] = 0.000000e+00f;
    compute_local[(3)] = 0.000000e+00f;
    compute_local[(11)] = 0.000000e+00f;
    compute_local[(7)] = 0.000000e+00f;
    compute_local[(15)] = 0.000000e+00f;
    for (int rc_outer = 0; rc_outer < 8; ++rc_outer) {
        __syncthreads();
        pad_temp_shared[((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)))] = (((((1 <= ((((int)blockIdx.y) * 16) + ((((int)threadIdx.x) * 21) / 18))) && (((((int)blockIdx.y) * 16) + ((((int)threadIdx.x) * 21) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) * 21) % 18)))) && (((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) * 21) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + (((((int)threadIdx.x) * 21) / 18) * 112)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) * 21) % 18)) - 113))] : 0.000000e+00f);
        pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 1))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 1) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 1) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 1) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 1) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 1) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 1) % 18)) - 113))] : 0.000000e+00f);
        pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 2))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 2) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 2) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 2) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 2) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 2) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 2) % 18)) - 113))] : 0.000000e+00f);
        pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 3))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 3) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 3) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 3) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 3) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 3) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 3) % 18)) - 113))] : 0.000000e+00f);
        pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 4))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 4) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 4) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 4) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 4) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 4) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 4) % 18)) - 113))] : 0.000000e+00f);
        pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 5))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 5) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 5) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 5) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 5) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 5) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 5) % 18)) - 113))] : 0.000000e+00f);
        pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 6))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 6) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 6) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 6) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 6) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 6) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 6) % 18)) - 113))] : 0.000000e+00f);
        pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 7))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 7) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 7) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 7) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 7) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 7) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 7) % 18)) - 113))] : 0.000000e+00f);
        pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 8))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 8) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 8) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 8) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 8) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 8) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 8) % 18)) - 113))] : 0.000000e+00f);
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 21) + 9) / 324)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 36) + (((int)threadIdx.y) * 18)) + (((((int)threadIdx.x) * 21) + 9) / 18)) < 144) {
                if ((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) < 2583) {
                    if (((((int)threadIdx.y) * 324) + (((int)threadIdx.x) * 21)) < 639) {
                        if (((int)threadIdx.x) < 15) {
                            pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 9))] = ((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 9) / 18))) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 9) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 9) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 9) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 9) % 18)) - 113))] : 0.000000e+00f);
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 21) + 10) / 324)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 36) + (((int)threadIdx.y) * 18)) + (((((int)threadIdx.x) * 21) + 10) / 18)) < 144) {
                if ((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) < 2582) {
                    if (((((int)threadIdx.y) * 324) + (((int)threadIdx.x) * 21)) < 638) {
                        if (((int)threadIdx.x) < 15) {
                            pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 10))] = ((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 10) / 18))) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 10) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 10) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 10) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 10) % 18)) - 113))] : 0.000000e+00f);
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 21) + 11) / 324)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 36) + (((int)threadIdx.y) * 18)) + (((((int)threadIdx.x) * 21) + 11) / 18)) < 144) {
                if ((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) < 2581) {
                    if (((((int)threadIdx.y) * 324) + (((int)threadIdx.x) * 21)) < 637) {
                        if (((int)threadIdx.x) < 15) {
                            pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 11))] = ((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 11) / 18))) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 11) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 11) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 11) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 11) % 18)) - 113))] : 0.000000e+00f);
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 21) + 12) / 324)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 36) + (((int)threadIdx.y) * 18)) + (((((int)threadIdx.x) * 21) + 12) / 18)) < 144) {
                if ((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) < 2580) {
                    if (((((int)threadIdx.y) * 324) + (((int)threadIdx.x) * 21)) < 636) {
                        if (((int)threadIdx.x) < 15) {
                            pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 12))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 12) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 12) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 12) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 12) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 12) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 12) % 18)) - 113))] : 0.000000e+00f);
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 21) + 13) / 324)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 36) + (((int)threadIdx.y) * 18)) + (((((int)threadIdx.x) * 21) + 13) / 18)) < 144) {
                if ((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) < 2579) {
                    if (((((int)threadIdx.y) * 324) + (((int)threadIdx.x) * 21)) < 635) {
                        if (((int)threadIdx.x) < 15) {
                            pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 13))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 13) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 13) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 13) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 13) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 13) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 13) % 18)) - 113))] : 0.000000e+00f);
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 21) + 14) / 324)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 36) + (((int)threadIdx.y) * 18)) + (((((int)threadIdx.x) * 21) + 14) / 18)) < 144) {
                if ((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) < 2578) {
                    if (((((int)threadIdx.y) * 324) + (((int)threadIdx.x) * 21)) < 634) {
                        if (((int)threadIdx.x) < 15) {
                            pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 14))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 14) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 14) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 14) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 14) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 14) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 14) % 18)) - 113))] : 0.000000e+00f);
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 21) + 15) / 324)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 36) + (((int)threadIdx.y) * 18)) + (((((int)threadIdx.x) * 21) + 15) / 18)) < 144) {
                if ((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) < 2577) {
                    if (((((int)threadIdx.y) * 324) + (((int)threadIdx.x) * 21)) < 633) {
                        if (((int)threadIdx.x) < 15) {
                            pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 15))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 15) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 15) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 15) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 15) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 15) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 15) % 18)) - 113))] : 0.000000e+00f);
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 21) + 16) / 324)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 36) + (((int)threadIdx.y) * 18)) + (((((int)threadIdx.x) * 21) + 16) / 18)) < 144) {
                if ((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) < 2576) {
                    if (((((int)threadIdx.y) * 324) + (((int)threadIdx.x) * 21)) < 632) {
                        if (((int)threadIdx.x) < 15) {
                            pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 16))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 16) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 16) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 16) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 16) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 16) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 16) % 18)) - 113))] : 0.000000e+00f);
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 21) + 17) / 324)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 36) + (((int)threadIdx.y) * 18)) + (((((int)threadIdx.x) * 21) + 17) / 18)) < 144) {
                if ((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) < 2575) {
                    if (((((int)threadIdx.y) * 324) + (((int)threadIdx.x) * 21)) < 631) {
                        if (((int)threadIdx.x) < 15) {
                            pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 17))] = (((((1 <= ((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 17) / 18))) && (((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 17) / 18)) < 113)) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 17) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 17) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 17) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 17) % 18)) - 113))] : 0.000000e+00f);
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 21) + 18) / 324)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 36) + (((int)threadIdx.y) * 18)) + ((((int)threadIdx.x) * 21) / 18)) < 143) {
                if ((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) < 2574) {
                    if (((((int)threadIdx.y) * 324) + (((int)threadIdx.x) * 21)) < 630) {
                        if (((int)threadIdx.x) < 15) {
                            pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 18))] = ((((((((int)blockIdx.y) * 16) + ((((int)threadIdx.x) * 21) / 18)) < 112) && (1 <= ((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) * 21) % 18)))) && (((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) * 21) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + (((((int)threadIdx.x) * 21) / 18) * 112)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) * 21) % 18)) - 1))] : 0.000000e+00f);
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 21) + 19) / 324)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 36) + (((int)threadIdx.y) * 18)) + (((((int)threadIdx.x) * 21) + 19) / 18)) < 144) {
                if ((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) < 2573) {
                    if (((((int)threadIdx.y) * 324) + (((int)threadIdx.x) * 21)) < 629) {
                        if (((int)threadIdx.x) < 15) {
                            pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 19))] = ((((((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 19) / 18)) < 113) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 1) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 1) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 19) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 1) % 18)) - 113))] : 0.000000e+00f);
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 21) + 20) / 324)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 36) + (((int)threadIdx.y) * 18)) + (((((int)threadIdx.x) * 21) + 20) / 18)) < 144) {
                if ((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) < 2572) {
                    if (((((int)threadIdx.y) * 324) + (((int)threadIdx.x) * 21)) < 628) {
                        if (((int)threadIdx.x) < 15) {
                            pad_temp_shared[(((((((int)threadIdx.z) * 648) + (((int)threadIdx.y) * 324)) + (((int)threadIdx.x) * 21)) + 20))] = ((((((((int)blockIdx.y) * 16) + (((((int)threadIdx.x) * 21) + 20) / 18)) < 113) && (1 <= ((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 2) % 18)))) && (((((int)blockIdx.x) * 16) + (((((int)threadIdx.x) * 21) + 2) % 18)) < 113)) ? data[(((((((((rc_outer * 100352) + (((int)threadIdx.z) * 25088)) + (((int)threadIdx.y) * 12544)) + (((int)blockIdx.y) * 1792)) + ((((((int)threadIdx.x) * 21) + 20) / 18) * 112)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 21) + 2) % 18)) - 113))] : 0.000000e+00f);
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + ((((int)threadIdx.x) * 5) / 72)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 16) + (((int)threadIdx.y) * 8)) + ((((int)threadIdx.x) * 5) / 9)) < 64) {
                if ((((((int)threadIdx.z) * 48) + (((int)threadIdx.y) * 24)) + ((((int)threadIdx.x) * 5) / 3)) < 192) {
                    if ((((((int)threadIdx.z) * 144) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 5)) < 576) {
                        if (((((int)threadIdx.y) * 72) + (((int)threadIdx.x) * 5)) < 144) {
                            if (((int)threadIdx.x) < 15) {
                                kernel_shared[((((((int)threadIdx.z) * 144) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 5)))] = kernel[((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 576)) + (rc_outer * 72)) + (((int)threadIdx.x) * 5)))];
                            }
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 5) + 1) / 72)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 16) + (((int)threadIdx.y) * 8)) + (((((int)threadIdx.x) * 5) + 1) / 9)) < 64) {
                if ((((((int)threadIdx.z) * 48) + (((int)threadIdx.y) * 24)) + (((((int)threadIdx.x) * 5) + 1) / 3)) < 192) {
                    if ((((((int)threadIdx.z) * 144) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 5)) < 575) {
                        if (((((int)threadIdx.y) * 72) + (((int)threadIdx.x) * 5)) < 143) {
                            if (((int)threadIdx.x) < 15) {
                                kernel_shared[(((((((int)threadIdx.z) * 144) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 5)) + 1))] = kernel[(((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 576)) + (rc_outer * 72)) + (((int)threadIdx.x) * 5)) + 1))];
                            }
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 5) + 2) / 72)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 16) + (((int)threadIdx.y) * 8)) + (((((int)threadIdx.x) * 5) + 2) / 9)) < 64) {
                if ((((((int)threadIdx.z) * 48) + (((int)threadIdx.y) * 24)) + (((((int)threadIdx.x) * 5) + 2) / 3)) < 192) {
                    if ((((((int)threadIdx.z) * 144) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 5)) < 574) {
                        if (((((int)threadIdx.y) * 72) + (((int)threadIdx.x) * 5)) < 142) {
                            if (((int)threadIdx.x) < 14) {
                                kernel_shared[(((((((int)threadIdx.z) * 144) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 5)) + 2))] = kernel[(((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 576)) + (rc_outer * 72)) + (((int)threadIdx.x) * 5)) + 2))];
                            }
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 5) + 3) / 72)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 16) + (((int)threadIdx.y) * 8)) + (((((int)threadIdx.x) * 5) + 3) / 9)) < 64) {
                if ((((((int)threadIdx.z) * 48) + (((int)threadIdx.y) * 24)) + ((((int)threadIdx.x) * 5) / 3)) < 191) {
                    if ((((((int)threadIdx.z) * 144) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 5)) < 573) {
                        if (((((int)threadIdx.y) * 72) + (((int)threadIdx.x) * 5)) < 141) {
                            if (((int)threadIdx.x) < 14) {
                                kernel_shared[(((((((int)threadIdx.z) * 144) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 5)) + 3))] = kernel[(((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 576)) + (rc_outer * 72)) + (((int)threadIdx.x) * 5)) + 3))];
                            }
                        }
                    }
                }
            }
        }
        if ((((((int)threadIdx.z) * 2) + (((((int)threadIdx.x) * 5) + 4) / 72)) + ((int)threadIdx.y)) < 8) {
            if ((((((int)threadIdx.z) * 16) + (((int)threadIdx.y) * 8)) + (((((int)threadIdx.x) * 5) + 4) / 9)) < 64) {
                if ((((((int)threadIdx.z) * 48) + (((int)threadIdx.y) * 24)) + (((((int)threadIdx.x) * 5) + 4) / 3)) < 192) {
                    if ((((((int)threadIdx.z) * 144) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 5)) < 572) {
                        if (((((int)threadIdx.y) * 72) + (((int)threadIdx.x) * 5)) < 140) {
                            if (((int)threadIdx.x) < 14) {
                                kernel_shared[(((((((int)threadIdx.z) * 144) + (((int)threadIdx.y) * 72)) + (((int)threadIdx.x) * 5)) + 4))] = kernel[(((((((((int)blockIdx.z) * 4608) + (((int)threadIdx.z) * 1152)) + (((int)threadIdx.y) * 576)) + (rc_outer * 72)) + (((int)threadIdx.x) * 5)) + 4))];
                            }
                        }
                    }
                }
            }
        }
        __syncthreads();
        for (int rc_inner_outer = 0; rc_inner_outer < 4; ++rc_inner_outer) {
            pad_temp_shared_local[(0)] = pad_temp_shared[((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)))];
            pad_temp_shared_local[(12)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 144))];
            pad_temp_shared_local[(1)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 18))];
            pad_temp_shared_local[(13)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 162))];
            pad_temp_shared_local[(2)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 36))];
            pad_temp_shared_local[(14)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 180))];
            pad_temp_shared_local[(3)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 54))];
            pad_temp_shared_local[(15)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 198))];
            pad_temp_shared_local[(4)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 72))];
            pad_temp_shared_local[(16)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 216))];
            pad_temp_shared_local[(5)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 90))];
            pad_temp_shared_local[(17)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 234))];
            pad_temp_shared_local[(6)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 324))];
            pad_temp_shared_local[(18)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 468))];
            pad_temp_shared_local[(7)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 342))];
            pad_temp_shared_local[(19)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 486))];
            pad_temp_shared_local[(8)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 360))];
            pad_temp_shared_local[(20)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 504))];
            pad_temp_shared_local[(9)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 378))];
            pad_temp_shared_local[(21)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 522))];
            pad_temp_shared_local[(10)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 396))];
            pad_temp_shared_local[(22)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 540))];
            pad_temp_shared_local[(11)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 414))];
            pad_temp_shared_local[(23)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 558))];
            kernel_shared_local[(0)] = kernel_shared[(((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)))];
            kernel_shared_local[(6)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 288))];
            kernel_shared_local[(1)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 3))];
            kernel_shared_local[(7)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 291))];
            kernel_shared_local[(2)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 6))];
            kernel_shared_local[(8)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 294))];
            kernel_shared_local[(3)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 9))];
            kernel_shared_local[(9)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 297))];
            kernel_shared_local[(4)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 12))];
            kernel_shared_local[(10)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 300))];
            kernel_shared_local[(5)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 15))];
            kernel_shared_local[(11)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 303))];
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(6)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(0)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(6)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(0)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(6)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(0)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(6)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(0)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(6)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(0)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(6)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(0)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(6)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(0)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(6)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(7)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(1)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(7)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(1)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(7)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(1)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(7)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(1)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(7)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(1)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(7)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(1)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(7)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(1)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(7)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(8)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(2)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(8)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(2)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(8)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(2)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(8)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(2)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(8)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(2)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(8)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(2)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(8)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(2)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(8)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(3)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(9)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(3)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(9)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(3)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(9)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(3)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(9)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(3)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(9)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(3)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(9)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(3)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(9)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(3)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(9)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(4)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(10)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(4)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(10)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(4)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(10)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(4)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(10)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(4)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(10)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(4)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(10)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(4)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(10)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(4)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(10)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(5)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(11)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(5)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(11)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(5)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(11)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(5)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(11)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(5)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(11)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(5)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(11)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(5)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(11)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(5)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(11)]));
            pad_temp_shared_local[(0)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 1))];
            pad_temp_shared_local[(12)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 145))];
            pad_temp_shared_local[(1)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 19))];
            pad_temp_shared_local[(13)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 163))];
            pad_temp_shared_local[(2)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 37))];
            pad_temp_shared_local[(14)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 181))];
            pad_temp_shared_local[(3)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 55))];
            pad_temp_shared_local[(15)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 199))];
            pad_temp_shared_local[(4)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 73))];
            pad_temp_shared_local[(16)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 217))];
            pad_temp_shared_local[(5)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 91))];
            pad_temp_shared_local[(17)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 235))];
            pad_temp_shared_local[(6)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 325))];
            pad_temp_shared_local[(18)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 469))];
            pad_temp_shared_local[(7)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 343))];
            pad_temp_shared_local[(19)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 487))];
            pad_temp_shared_local[(8)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 361))];
            pad_temp_shared_local[(20)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 505))];
            pad_temp_shared_local[(9)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 379))];
            pad_temp_shared_local[(21)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 523))];
            pad_temp_shared_local[(10)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 397))];
            pad_temp_shared_local[(22)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 541))];
            pad_temp_shared_local[(11)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 415))];
            pad_temp_shared_local[(23)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 559))];
            kernel_shared_local[(0)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 1))];
            kernel_shared_local[(6)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 289))];
            kernel_shared_local[(1)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 4))];
            kernel_shared_local[(7)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 292))];
            kernel_shared_local[(2)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 7))];
            kernel_shared_local[(8)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 295))];
            kernel_shared_local[(3)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 10))];
            kernel_shared_local[(9)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 298))];
            kernel_shared_local[(4)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 13))];
            kernel_shared_local[(10)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 301))];
            kernel_shared_local[(5)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 16))];
            kernel_shared_local[(11)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 304))];
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(6)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(0)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(6)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(0)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(6)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(0)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(6)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(0)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(6)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(0)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(6)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(0)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(6)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(0)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(6)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(7)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(1)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(7)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(1)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(7)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(1)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(7)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(1)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(7)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(1)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(7)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(1)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(7)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(1)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(7)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(8)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(2)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(8)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(2)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(8)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(2)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(8)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(2)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(8)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(2)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(8)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(2)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(8)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(2)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(8)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(3)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(9)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(3)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(9)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(3)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(9)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(3)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(9)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(3)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(9)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(3)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(9)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(3)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(9)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(3)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(9)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(4)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(10)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(4)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(10)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(4)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(10)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(4)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(10)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(4)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(10)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(4)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(10)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(4)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(10)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(4)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(10)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(5)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(11)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(5)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(11)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(5)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(11)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(5)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(11)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(5)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(11)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(5)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(11)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(5)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(11)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(5)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(11)]));
            pad_temp_shared_local[(0)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 2))];
            pad_temp_shared_local[(12)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 146))];
            pad_temp_shared_local[(1)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 20))];
            pad_temp_shared_local[(13)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 164))];
            pad_temp_shared_local[(2)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 38))];
            pad_temp_shared_local[(14)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 182))];
            pad_temp_shared_local[(3)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 56))];
            pad_temp_shared_local[(15)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 200))];
            pad_temp_shared_local[(4)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 74))];
            pad_temp_shared_local[(16)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 218))];
            pad_temp_shared_local[(5)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 92))];
            pad_temp_shared_local[(17)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 236))];
            pad_temp_shared_local[(6)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 326))];
            pad_temp_shared_local[(18)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 470))];
            pad_temp_shared_local[(7)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 344))];
            pad_temp_shared_local[(19)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 488))];
            pad_temp_shared_local[(8)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 362))];
            pad_temp_shared_local[(20)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 506))];
            pad_temp_shared_local[(9)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 380))];
            pad_temp_shared_local[(21)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 524))];
            pad_temp_shared_local[(10)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 398))];
            pad_temp_shared_local[(22)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 542))];
            pad_temp_shared_local[(11)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 416))];
            pad_temp_shared_local[(23)] = pad_temp_shared[(((((rc_inner_outer * 648) + (((int)threadIdx.y) * 72)) + ((int)threadIdx.x)) + 560))];
            kernel_shared_local[(0)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 2))];
            kernel_shared_local[(6)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 290))];
            kernel_shared_local[(1)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 5))];
            kernel_shared_local[(7)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 293))];
            kernel_shared_local[(2)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 8))];
            kernel_shared_local[(8)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 296))];
            kernel_shared_local[(3)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 11))];
            kernel_shared_local[(9)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 299))];
            kernel_shared_local[(4)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 14))];
            kernel_shared_local[(10)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 302))];
            kernel_shared_local[(5)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 17))];
            kernel_shared_local[(11)] = kernel_shared[((((((int)threadIdx.z) * 72) + (rc_inner_outer * 18)) + 305))];
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(0)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(0)] * kernel_shared_local[(6)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(0)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(12)] * kernel_shared_local[(6)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(0)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(6)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(0)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(6)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(0)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(6)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(0)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(6)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(0)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(6)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(0)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(6)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(1)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(1)] * kernel_shared_local[(7)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(1)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(13)] * kernel_shared_local[(7)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(1)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(7)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(1)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(7)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(1)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(7)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(1)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(7)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(1)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(7)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(1)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(7)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(2)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(2)] * kernel_shared_local[(8)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(2)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(14)] * kernel_shared_local[(8)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(2)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(3)] * kernel_shared_local[(8)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(2)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(15)] * kernel_shared_local[(8)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(2)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(4)] * kernel_shared_local[(8)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(2)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(16)] * kernel_shared_local[(8)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(2)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(5)] * kernel_shared_local[(8)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(2)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(17)] * kernel_shared_local[(8)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(3)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(6)] * kernel_shared_local[(9)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(3)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(18)] * kernel_shared_local[(9)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(3)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(9)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(3)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(9)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(3)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(9)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(3)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(9)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(3)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(9)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(3)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(9)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(4)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(7)] * kernel_shared_local[(10)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(4)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(19)] * kernel_shared_local[(10)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(4)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(10)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(4)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(10)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(4)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(10)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(4)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(10)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(4)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(10)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(4)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(10)]));
            compute_local[(0)] = (compute_local[(0)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(5)]));
            compute_local[(8)] = (compute_local[(8)] + (pad_temp_shared_local[(8)] * kernel_shared_local[(11)]));
            compute_local[(4)] = (compute_local[(4)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(5)]));
            compute_local[(12)] = (compute_local[(12)] + (pad_temp_shared_local[(20)] * kernel_shared_local[(11)]));
            compute_local[(1)] = (compute_local[(1)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(5)]));
            compute_local[(9)] = (compute_local[(9)] + (pad_temp_shared_local[(9)] * kernel_shared_local[(11)]));
            compute_local[(5)] = (compute_local[(5)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(5)]));
            compute_local[(13)] = (compute_local[(13)] + (pad_temp_shared_local[(21)] * kernel_shared_local[(11)]));
            compute_local[(2)] = (compute_local[(2)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(5)]));
            compute_local[(10)] = (compute_local[(10)] + (pad_temp_shared_local[(10)] * kernel_shared_local[(11)]));
            compute_local[(6)] = (compute_local[(6)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(5)]));
            compute_local[(14)] = (compute_local[(14)] + (pad_temp_shared_local[(22)] * kernel_shared_local[(11)]));
            compute_local[(3)] = (compute_local[(3)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(5)]));
            compute_local[(11)] = (compute_local[(11)] + (pad_temp_shared_local[(11)] * kernel_shared_local[(11)]));
            compute_local[(7)] = (compute_local[(7)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(5)]));
            compute_local[(15)] = (compute_local[(15)] + (pad_temp_shared_local[(23)] * kernel_shared_local[(11)]));
        }
    }
    compute[(((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)))] = compute_local[(0)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 50176))] = compute_local[(8)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 896))] = compute_local[(4)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 51072))] = compute_local[(12)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 112))] = compute_local[(1)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 50288))] = compute_local[(9)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 1008))] = compute_local[(5)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 51184))] = compute_local[(13)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 224))] = compute_local[(2)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 50400))] = compute_local[(10)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 1120))] = compute_local[(6)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 51296))] = compute_local[(14)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 336))] = compute_local[(3)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 50512))] = compute_local[(11)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 1232))] = compute_local[(7)];
    compute[((((((((((int)blockIdx.z) * 100352) + (((int)threadIdx.z) * 12544)) + (((int)blockIdx.y) * 1792)) + (((int)threadIdx.y) * 448)) + (((int)blockIdx.x) * 16)) + ((int)threadIdx.x)) + 51408))] = compute_local[(15)];
}

//grid=(7,7,4),  block=(16,2,4)
int main(int argc, char *argv[]){
    dim3 grid(7,7,4);
    dim3 block(16,2,4);
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