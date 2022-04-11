//
// Created by lizhi on 4/2/22.
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
__global__ void transform(float *x, float *y, int C,int H,int W){
    for(unsigned int id = threadIdx.x + blockIdx.x*blockDim.x;id<C*H*W;id+=blockDim.x*gridDim.x){
        if(id >= C*H*W){
            return ;
        }
        unsigned int c = id / (H*W);
        unsigned int hw =id % (H*W);
        float v = x[c*H*W+hw];
        y[hw*C+c] = v;
    }
}
int main(int argc, char *argv[]) {
    int C = atoi(argv[1]);
    int H = atoi(argv[2]);
    int W = atoi(argv[3]);
    float *x;
    cudaMalloc(&x, C * H * W * sizeof(float));
    float *y;
    cudaMalloc(&y, C * H * W * sizeof(float));
    float inference_time = 0.0f;
    cudaEvent_t event_start;
    cudaEvent_t event_stop;
    cudaEventCreate(&event_start);
    cudaEventCreate(&event_stop);
    cudaEventRecord(event_start);
    transform<<<68, 1024>>>(x, y, C, H, W);
    cudaEventRecord(event_stop);
    cudaEventSynchronize(event_stop);
    cudaEventElapsedTime(&inference_time, event_start, event_stop);
    cout << inference_time << endl;
    return 0;
}


