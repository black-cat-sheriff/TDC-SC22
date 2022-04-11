import subprocess
import codecs
import math
import os,sys
CUDA_PREFIX="/usr/local/cuda/"
def transform_switch(H,W,TH,TW,THS,TWS):
    template = '\t\tcase {}:\n'
    line = '__device__ void transform_switch( unsigned int switch_condition,float *out_buffer,float v,unsigned int c){\n' \
           '\tswitch (switch_condition) {\n'
    for hw in range(H*W):
        h = hw//W + 1
        w = hw%W + 1
        th_start = min(h//TH,THS-1)
        tw_start = min(w//TW,TWS-1)

        case_line = template.format(hw)
        tile_h_id = th_start
        while tile_h_id >=0:
            if tile_h_id*TH+TH+2 <= h:
                break
            tile_w_id = tw_start
            while tile_w_id >=0:
                if tile_w_id*TW+TW+2<=w:
                    break
                tile_id = tile_h_id * TWS + tile_w_id
                abs_h = h - tile_h_id*TH
                abs_w = w - tile_w_id*TW
                p1 = THS*TWS*(TH+2)*(TW+2)
                p2 = tile_id*(TH+2)*(TW+2)+abs_h*(TW+2)+abs_w
                out_line = '\t\t\tout_buffer[c*{}+{}] = v;\n'.format(p1,p2)
                case_line += out_line
                tile_w_id = tile_w_id - 1
            tile_h_id = tile_h_id - 1
        case_line += '\t\tbreak;\n'
        line += case_line
    line += '\n\t}'
    line += '\n}'
    return line
def build_switch(H,W):
    R = 3
    S = 3
    Ho = H - (R-1)
    Wo = W - (S-1)
    template = '\t\tcase {}:\n\t\t\tfor ( int r = {}; r < {}; r++) {{\n\t\t\t\tfor ( int s = {}; s < {}; s++) {{' \
               '\n\t\t\t\t\tfloat result = v * temp_kernel[r*S+s];\n\t\t\t\t\ttemp_result[({}-r)*{}+({}-s)] += result;\n\t\t\t\t}}\n\t\t\t}}\n\t\tbreak;\n'
    line = '__device__ void switch_function( unsigned int switch_condition,float *temp_kernel,float v,float *temp_result){\n' \
           '\tswitch (switch_condition) {\n'
    for h in range(H):
        for w in range(W):
            r_end = R
            s_end = S
            id = h*W+w
            r_start_condition = (h - Ho + 1)
            r_end_condition = (h+1)
            s_start_condition = (w - Wo + 1)
            s_end_condition = (w+1)
            r_end = min(r_end,r_end_condition)
            r_start = max(0,r_start_condition)
            s_end = min(s_end,s_end_condition)
            s_start = max(0,s_start_condition)
            case_line = template.format(id,r_start,r_end,s_start,s_end,h,(Wo),w)
            line +=case_line
    line += '\n\t}'
    line += '\n}'
    return line
def simple_tqdm(stars):
    line = ''
    for i in stars:
        line +=i
    print(line)
if __name__ == '__main__':
    ths = [2,3,4,5,6,7]
    tws = [2,3,4,5,6,7]
    tcs = [1,2,4,8]
    exc_file = './conv'
    shapes = [(64,32,56,56),(32,32,56,56),(96,64,28,28),
              (128,96,14,14),(192,160,7,7),(64,32,28,28),(64,32,14,14),
              (96,64,7,7),(64,32,7,7),(64,32,224,224),(64,32,112,112),
              (160,96,28,28),(192,96,28,28),(192,96,14,14)]
    reader = codecs.open('template-nchw','r','utf-8')
    temp_lines = reader.readlines()
    reader.close()
    for shape in shapes:
        C = shape[0]
        N = shape[1]
        H = shape[2]
        W = shape[3]
        for th in ths:
            if th >= H:
                continue
            for tw in tws:
                if tw>= W:
                    continue
                for tc in tcs:
                    if tc>=C:
                        continue
                    lines = temp_lines
                    out_line = ''
                    for line in lines:
                        out_line += line
                    reader.close()
                    switch_func_lines = build_switch(th+2,tw+2)
                    transform_lines = transform_switch(H,H,th,tw,(H-1)//th+1,(H-1)//tw+1)
                    out_line = out_line.replace('#define TH place holder','#define TH {}'.format(th))
                    out_line = out_line.replace('#define TW place holder','#define TW {}'.format(tw))
                    out_line = out_line.replace('#define TC place holder','#define TC {}'.format(tc))
                    out_line = out_line.replace('#define Height place holder','#define Height {}'.format(H))
                    out_line = out_line.replace('#define Width place holder','#define Width {}'.format(W))
                    out_line = out_line.replace('#define N1 place holder','#define N1 {}'.format(C))
                    out_line = out_line.replace('#define N2 place holder','#define N2 {}'.format(N))
                    out_line = out_line.replace('switch_function_place_holder',switch_func_lines)
                    #out_line = out_line.replace('transform_switch_place_holder',transform_lines)
                    writter = codecs.open('temp-conv.cu','w+','utf-8')
                    writter.write(out_line)
                    subprocess.run(["make","clean"])
                    subprocess.run(["make","-j"])
                    subprocess.run([exc_file])
