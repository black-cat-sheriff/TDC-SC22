#include "../inc/common.h"
int main(int argc,char *argv[]){
    
    float *input = new float[3*224*224];
    float *dInput;
    cudaMalloc(&dInput,224*224*3*sizeof(float));
    Conv conv1_conv;
    conv1_conv.initialize(1,3,224,224,64,3,7,7,2," ", false);
    BatchNorm conv1_bn;
    conv1_bn.initialize(1,64,112,112," ");
    Activation conv1_relu;
    conv1_relu.initialize(1,64,112,112);
    Pool conv1_max_pool;
    conv1_max_pool.initialize(1,64,112,112,1,3,3,CUDNN_POOLING_MAX,2);

    /*
     * layer 1
     */
    BasicBlock_Downsample layer1_basic0(64,64,64,256,256,56,56,1);
    BasicBlock layer1_basic1(256,64,64,256,56,56);
    BasicBlock layer1_basic2(256,64,64,256,56,56);
    /*
     * layer 2
     */
    BasicBlock_Downsample layer2_basic0(256,128,128,512,512,56,56,2);
    BasicBlock layer2_basic1(512,128,128,512,28,28);
    BasicBlock layer2_basic2(512,128,128,512,28,28);
    BasicBlock layer2_basic3(512,128,128,512,28,28);
    /*
     * layer 3
     */
    BasicBlock_Downsample layer3_basic0(512,256,256,1024,1024,28,28,2);
    BasicBlock layer3_basic1(1024,256,256,1024,14,14);
    BasicBlock layer3_basic2(1024,256,256,1024,14,14);
    BasicBlock layer3_basic3(1024,256,256,1024,14,14);
    BasicBlock layer3_basic4(1024,256,256,1024,14,14);
    BasicBlock layer3_basic5(1024,256,256,1024,14,14);
    /*
     * layer 4
     */
    BasicBlock_Downsample layer4_basic0(1024,512,512,2048,2048,14,14,2);
    BasicBlock layer4_basic1(2048,512,512,2048,7,7);
    BasicBlock layer4_basic2(2048,512,512,2048,7,7);

    Pool avg_pool;
    avg_pool.initialize(1,2048,7,7,0,7,7,CUDNN_POOLING_AVERAGE_COUNT_EXCLUDE_PADDING,1);
    Conv predict;
    predict.initialize(1,2048,1,1,1000,0,1,1,1," ", true);

    cudaEvent_t event_start;
    cudaEvent_t event_stop;
    cudaEventCreate(&event_start);
    cudaEventCreate(&event_stop);
    //cudaMemcpy(dInput, input, 224 * 224 * 3 * sizeof(float), cudaMemcpyHostToDevice);
    float *out;
    out = conv1_conv.forward(dInput);
    out = conv1_bn.forward(out);
    out = conv1_relu.forward(out);
    out = conv1_max_pool.forward(out);
    out = layer1_basic0.forward(out);
    out = layer1_basic1.forward(out);
    out = layer1_basic2.forward(out);
    out = layer2_basic0.forward(out);
    out = layer2_basic1.forward(out);
    out = layer2_basic2.forward(out);
    out = layer2_basic3.forward(out);

    out = layer3_basic0.forward(out);
    out = layer3_basic1.forward(out);
    out = layer3_basic2.forward(out);
    out = layer3_basic3.forward(out);
    out = layer3_basic4.forward(out);
    out = layer3_basic5.forward(out);

    out = layer4_basic0.forward(out);
    out = layer4_basic1.forward(out);
    out = layer4_basic2.forward(out);

    out = predict.forward(out);
    chkerr(cudaDeviceSynchronize());
    cudaDeviceSynchronize();
    cout<<"network construction finished"<<endl;
    float inference_time = 0.0f;
    for(int i=0;i<1024;++i){
        time_t t;
        srand((unsigned) time(&t));
        for(int j =0;j<3*224*224;++j){
            input[j] = rand() % 10;
        }
        cudaMemcpy(dInput,input,3*224*224*sizeof(float),cudaMemcpyHostToDevice);
        cudaEventRecord(event_start);
        out = conv1_conv.forward(dInput);
        out = conv1_bn.forward(out);
        out = conv1_relu.forward(out);
        out = conv1_max_pool.forward(out);
        out = layer1_basic0.forward(out);
        out = layer1_basic1.forward(out);
        out = layer1_basic2.forward(out);
        out = layer2_basic0.forward(out);
        out = layer2_basic1.forward(out);
        out = layer2_basic2.forward(out);
        out = layer2_basic3.forward(out);

        out = layer3_basic0.forward(out);
        out = layer3_basic1.forward(out);
        out = layer3_basic2.forward(out);
        out = layer3_basic3.forward(out);
        out = layer3_basic4.forward(out);
        out = layer3_basic5.forward(out);

        out = layer4_basic0.forward(out);
        out = layer4_basic1.forward(out);
        out = layer4_basic2.forward(out);

        out = predict.forward(out);
        chkerr(cudaDeviceSynchronize());

        cudaDeviceSynchronize();
        cudaEventRecord(event_stop);
        cudaEventSynchronize(event_stop);
        float temp_time;
        cudaEventElapsedTime(&temp_time, event_start, event_stop);
        inference_time += temp_time;
    }
    cout<<"resnet50-original,"<<inference_time/1024<<endl;
    return 0;
}
