#include "../inc/common.h"
unsigned int *conv_index = new unsigned int[1];
float *conv_time = new float[100];
int main(int argc,char *argv[]){
    conv_index[0] = 0;
    for(int i=0;i<100;++i){
        conv_time[i] = 0.0f;
    }

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
    TkShape layer1_basic0_tk_shape(64,64,32,64);
    BasicBlock_Downsample layer1_basic0(64,64,layer1_basic0_tk_shape,256,256,56,56,1);
    TkShape layer1_basic1_tk_shape(64,32,32,64);
    BasicBlock layer1_basic1(256,64,layer1_basic1_tk_shape,256,56,56);
    TkShape layer1_basic2_tk_shape(64,32,32,64);
    BasicBlock layer1_basic2(256,64,layer1_basic2_tk_shape,256,56,56);
    /*
     * layer 2
     */
    TkShape layer2_basic0_tk_shape(128,32,32,128);
    BasicBlock_Downsample layer2_basic0(256,128,layer2_basic0_tk_shape,512,512,56,56,2);
    TkShape layer2_basic1_tk_shape(128,64,32,128);
    BasicBlock layer2_basic1(512,128,layer2_basic1_tk_shape,512,28,28);
    TkShape layer2_basic2_tk_shape(128,64,32,128);
    BasicBlock layer2_basic2(512,128,layer2_basic2_tk_shape,512,28,28);
    TkShape layer2_basic3_tk_shape(128,64,32,128);
    BasicBlock layer2_basic3(512,128,layer2_basic3_tk_shape,512,28,28);
    /*
     * layer 3
     */
    TkShape layer3_basic0_tk_shape(256,64,32,256);
    BasicBlock_Downsample layer3_basic0(512,256,layer3_basic0_tk_shape,1024,1024,28,28,2);

    TkShape layer3_basic1_tk_shape(256,64,32,256);
    BasicBlock layer3_basic1(1024,256,layer3_basic1_tk_shape,1024,14,14);

    TkShape layer3_basic2_tk_shape(256,64,32,256);
    BasicBlock layer3_basic2(1024,256,layer3_basic2_tk_shape,1024,14,14);

    TkShape layer3_basic3_tk_shape(256,64,32,256);
    BasicBlock layer3_basic3(1024,256,layer3_basic3_tk_shape,1024,14,14);

    TkShape layer3_basic4_tk_shape(256,64,32,256);
    BasicBlock layer3_basic4(1024,256,layer3_basic4_tk_shape,1024,14,14);

    TkShape layer3_basic5_tk_shape(256,64,32,256);
    BasicBlock layer3_basic5(1024,256,layer3_basic5_tk_shape,1024,14,14);
    /*
     * layer 4
     */
    TkShape layer4_basic0_tk_shape(512,96,64,512);
    BasicBlock_Downsample layer4_basic0(1024,512,layer4_basic0_tk_shape,2048,2048,14,14,2);
    TkShape layer4_basic1_tk_shape(512,96,64,512);
    BasicBlock layer4_basic1(2048,512,layer4_basic1_tk_shape,2048,7,7);
    TkShape layer4_basic2_tk_shape(512,96,64,512);
    BasicBlock layer4_basic2(2048,512,layer4_basic2_tk_shape,2048,7,7);

    Pool avg_pool;
    avg_pool.initialize(1,2048,7,7,0,7,7,CUDNN_POOLING_AVERAGE_COUNT_EXCLUDE_PADDING,1);
    Conv predict;
    predict.initialize(1,2048,1,1,1000,0,1,1,1,"../../../weights/resnet50/weights/predictions.bin", true);

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
    cudaDeviceSynchronize();
    cout<<"network construction finished"<<endl;
    float inference_time = 0.0f;
    for(int i=0;i<100;++i){
        conv_time[i] = 0.0f;
    }
    for(int i=0;i<1024;++i){
        conv_index[0] = 0;
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
        cudaDeviceSynchronize();
        cudaEventRecord(event_stop);
        cudaEventSynchronize(event_stop);
        float temp_time;
        cudaEventElapsedTime(&temp_time, event_start, event_stop);
        inference_time += temp_time;
    }
    for(int i=0;i<100;++i){
        cout<<conv_time[i]/1024<<endl;
    }
    unsigned int outputSize = 1000;
    float *hOutput = (float *)malloc(outputSize*sizeof(float));
    cudaMemcpy(hOutput,out,outputSize*sizeof(float),cudaMemcpyDeviceToHost);
    vector<float> out_bin;
    for(int i=0;i<outputSize;++i){
        out_bin.push_back(hOutput[i]);
    }
    std::ofstream ofp("resnet18-original.bin", std::ios::out | std::ios::binary);
    ofp.write(reinterpret_cast<const char*>(out_bin.data()), out_bin.size() * sizeof(float));
    return 0;
}