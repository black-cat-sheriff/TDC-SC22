#include "../inc/common.h"
int main(int argc,char *argv[]){

    float *dInput;
    float *input = new float[3*224*224];
    Conv conv1;
    conv1.initialize(1,3,224,224,64,3,7,7,2," ", false);
    BatchNorm bn1;
    bn1.initialize(1,64,112,112," ");
    Activation relu1;
    relu1.initialize(1,64,112,112);
    Pool pool1;
    pool1.initialize(1,64,112,112,1,3,3,CUDNN_POOLING_MAX,2);

    TenDenseLayer block1_layer1(64,128,32,56,56," "," "," "," ");
    TenDenseLayer block1_layer2(96,128,32,56,56," "," "," "," ");
    TenDenseLayer block1_layer3(128,128,32,56,56," "," "," "," ");
    TenDenseLayer block1_layer4(160,128,32,56,56," "," "," "," ");
    TenDenseLayer block1_layer5(192,128,32,56,56," "," "," "," ");
    TenDenseLayer block1_layer6(224,128,32,56,56," "," "," "," ");
    TenDenseTransition transition1(256,128,56,56," "," ");

    TenDenseLayer block2_layer1(128,128,32,28,28," "," "," "," ");
    TenDenseLayer block2_layer2(160,128,32,28,28," "," "," "," ");
    TenDenseLayer block2_layer3(192,128,32,28,28," "," "," "," ");
    TenDenseLayer block2_layer4(224,128,32,28,28," "," "," "," ");
    TenDenseLayer block2_layer5(256,128,32,28,28," "," "," "," ");
    TenDenseLayer block2_layer6(288,128,32,28,28," "," "," "," ");
    TenDenseLayer block2_layer7(320,128,32,28,28," "," "," "," ");
    TenDenseLayer block2_layer8(352,128,32,28,28," "," "," "," ");
    TenDenseLayer block2_layer9(384,128,32,28,28," "," "," "," ");
    TenDenseLayer block2_layer10(416,128,32,28,28," "," "," "," ");
    TenDenseLayer block2_layer11(448,128,32,28,28," "," "," "," ");
    TenDenseLayer block2_layer12(480,128,32,28,28," "," "," "," ");
    TenDenseTransition transition2(512,256,28,28," "," ");

    TenDenseLayer block3_layer1(256,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer2(288,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer3(320,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer4(352,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer5(384,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer6(416,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer7(448,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer8(480,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer9(512,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer10(544,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer11(576,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer12(608,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer13(640,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer14(672,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer15(704,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer16(736,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer17(768,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer18(800,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer19(832,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer20(864,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer21(896,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer22(928,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer23(960,128,32,14,14," "," "," "," ");
    TenDenseLayer block3_layer24(992,128,32,14,14," "," "," "," ");
    TenDenseTransition transition3(1024,512,14,14," "," ");

    TenDenseLayer block4_layer1(512,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer2(544,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer3(576,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer4(608,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer5(640,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer6(672,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer7(704,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer8(736,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer9(768,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer10(800,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer11(832,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer12(864,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer13(896,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer14(928,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer15(960,128,32,7,7," "," "," "," ");
    TenDenseLayer block4_layer16(992,128,32,7,7," "," "," "," ");

    BatchNorm bn2;
    bn2.initialize(1,1024,7,7," ");
    Activation relu2;
    relu2.initialize(1,1024,7,7);
    Pool pool2;
    pool2.initialize(1,1024,7,7,0,7,7,CUDNN_POOLING_AVERAGE_COUNT_INCLUDE_PADDING,1);

    cudaEvent_t event_start;
    cudaEvent_t event_stop;
    cudaEventCreate(&event_start);
    cudaEventCreate(&event_stop);
    cudaMalloc(&dInput,224*224*3*sizeof(float));
    float *y;
    y = conv1.forward(dInput);
    y = bn1.forward(y);
    y = relu1.forward(y);
    y = pool1.forward(y);
    y = block1_layer1.forward(y);
    y = block1_layer2.forward(y);
    y = block1_layer3.forward(y);
    y = block1_layer4.forward(y);
    y = block1_layer5.forward(y);
    y = block1_layer6.forward(y);
    y = transition1.forward(y);

    y = block2_layer1.forward(y);
    y = block2_layer2.forward(y);
    y = block2_layer3.forward(y);
    y = block2_layer4.forward(y);
    y = block2_layer5.forward(y);
    y = block2_layer6.forward(y);
    y = block2_layer7.forward(y);
    y = block2_layer8.forward(y);
    y = block2_layer9.forward(y);
    y = block2_layer10.forward(y);
    y = block2_layer11.forward(y);
    y = block2_layer12.forward(y);
    y = transition2.forward(y);

    y = block3_layer1.forward(y);
    y = block3_layer2.forward(y);
    y = block3_layer3.forward(y);
    y = block3_layer4.forward(y);
    y = block3_layer5.forward(y);
    y = block3_layer6.forward(y);
    y = block3_layer7.forward(y);
    y = block3_layer8.forward(y);
    y = block3_layer9.forward(y);
    y = block3_layer10.forward(y);
    y = block3_layer11.forward(y);
    y = block3_layer12.forward(y);
    y = block3_layer13.forward(y);
    y = block3_layer14.forward(y);
    y = block3_layer15.forward(y);
    y = block3_layer16.forward(y);
    y = block3_layer17.forward(y);
    y = block3_layer18.forward(y);
    y = block3_layer19.forward(y);
    y = block3_layer20.forward(y);
    y = block3_layer21.forward(y);
    y = block3_layer22.forward(y);
    y = block3_layer23.forward(y);
    y = block3_layer24.forward(y);
    y = transition3.forward(y);

    y = block4_layer1.forward(y);
    y = block4_layer2.forward(y);
    y = block4_layer3.forward(y);
    y = block4_layer4.forward(y);
    y = block4_layer5.forward(y);
    y = block4_layer6.forward(y);
    y = block4_layer7.forward(y);
    y = block4_layer8.forward(y);
    y = block4_layer9.forward(y);
    y = block4_layer10.forward(y);
    y = block4_layer11.forward(y);
    y = block4_layer12.forward(y);
    y = block4_layer13.forward(y);
    y = block4_layer14.forward(y);
    y = block4_layer15.forward(y);
    y = block4_layer16.forward(y);
    y = bn2.forward(y);
    y = relu2.forward(y);
    y = pool2.forward(y);
    chkerr(cudaDeviceSynchronize());
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
        y = conv1.forward(dInput);
        y = bn1.forward(y);
        y = relu1.forward(y);
        y = pool1.forward(y);
        y = block1_layer1.forward(y);
        y = block1_layer2.forward(y);
        y = block1_layer3.forward(y);
        y = block1_layer4.forward(y);
        y = block1_layer5.forward(y);
        y = block1_layer6.forward(y);
        y = transition1.forward(y);

        y = block2_layer1.forward(y);
        y = block2_layer2.forward(y);
        y = block2_layer3.forward(y);
        y = block2_layer4.forward(y);
        y = block2_layer5.forward(y);
        y = block2_layer6.forward(y);
        y = block2_layer7.forward(y);
        y = block2_layer8.forward(y);
        y = block2_layer9.forward(y);
        y = block2_layer10.forward(y);
        y = block2_layer11.forward(y);
        y = block2_layer12.forward(y);
        y = transition2.forward(y);

        y = block3_layer1.forward(y);
        y = block3_layer2.forward(y);
        y = block3_layer3.forward(y);
        y = block3_layer4.forward(y);
        y = block3_layer5.forward(y);
        y = block3_layer6.forward(y);
        y = block3_layer7.forward(y);
        y = block3_layer8.forward(y);
        y = block3_layer9.forward(y);
        y = block3_layer10.forward(y);
        y = block3_layer11.forward(y);
        y = block3_layer12.forward(y);
        y = block3_layer13.forward(y);
        y = block3_layer14.forward(y);
        y = block3_layer15.forward(y);
        y = block3_layer16.forward(y);
        y = block3_layer17.forward(y);
        y = block3_layer18.forward(y);
        y = block3_layer19.forward(y);
        y = block3_layer20.forward(y);
        y = block3_layer21.forward(y);
        y = block3_layer22.forward(y);
        y = block3_layer23.forward(y);
        y = block3_layer24.forward(y);
        y = transition3.forward(y);

        y = block4_layer1.forward(y);
        y = block4_layer2.forward(y);
        y = block4_layer3.forward(y);
        y = block4_layer4.forward(y);
        y = block4_layer5.forward(y);
        y = block4_layer6.forward(y);
        y = block4_layer7.forward(y);
        y = block4_layer8.forward(y);
        y = block4_layer9.forward(y);
        y = block4_layer10.forward(y);
        y = block4_layer11.forward(y);
        y = block4_layer12.forward(y);
        y = block4_layer13.forward(y);
        y = block4_layer14.forward(y);
        y = block4_layer15.forward(y);
        y = block4_layer16.forward(y);
        y = bn2.forward(y);
        y = relu2.forward(y);
        y = pool2.forward(y);
        chkerr(cudaDeviceSynchronize());
        cudaEventRecord(event_stop);
        cudaEventSynchronize(event_stop);
        float temp_time;
        cudaEventElapsedTime(&temp_time, event_start, event_stop);
        inference_time += temp_time;
    }
    cout<<"densenet121-original,"<<inference_time/1024<<endl;
    return 0;
}
