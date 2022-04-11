import argparse
import json
import math
import codecs
from collections import OrderedDict

def compute_latency(H,W,C,N,tc,th,tw,r,s,threads,peak_performance,config):
    flops = 2*(th+r-1)*(tw+s-1)*tc*threads*r*s
    bnum = math.ceil(H/th) * math.ceil(W/tw) * math.ceil(C/tc)
    print('{},{},{},{}'.format(N,tc,th,tw))
    api_occup = config["occup_tbl"]["{}".format(1)]["{}".format(N)]["{}".format(tc)]["{}".format(th)]["{}".format(tw)]
    waves = bnum/(api_occup*config["hardware"]["MAX_THREADS_PER_TB"] * config["hardware"]["N_SM"]/N)
    return (flops/peak_performance)*waves

def data_latency(H,W,C,N,tc,th,tw,bandwidth):
    bnum = math.ceil(H/th) * math.ceil(W/tw) * math.ceil(C/tc)
    in_vol = math.ceil(H/th) * math.ceil(W/tw) * (th + 3 - 1) * (tw + 3 - 1) * 4 * C
    ker_vol = 4 * 3 * 3 * tc * N * bnum
    out_vol = 4 * th * tw * N
    return (2*in_vol + ker_vol + out_vol)/bandwidth
def check_label(lines,C,N,H,W):
    for line in lines:
        parts = line.split(',')
        if C == int(parts[0]) and N == int(parts[1]) and H == int(parts[2]) and W == int(parts[3]):
            return int(parts[4]), int(parts[5]), int(parts[6])
        else:
            return -1, -1, -1
def train(peak_performance,bandwidth,threads,config,label_file):
    Cs = [32,64,96,128,160,192,224,256]
    Ns = [32,64,96,128,160,192,224,256]
    Hs = [7,14,28]
    lines = codecs.open(label_file,'r','utf-8')
    counter = []
    for i in range(10000):
        counter.append(0)
    for a in range(1,101):
        for b in range(1,101):
            for H in Hs:
                for C in Cs:
                    for N in Ns:
                        label_th,label_tw,label_tc = check_label(lines,C,N,H,H)
                        print(label_th,label_tw,label_tc)
                        label_latency = a*data_latency(H,H,C,N,label_tc,label_th,label_tw,bandwidth)
                        label_latency += b*compute_latency(H,H,C,N,label_tc,label_th,label_tw,3,3,threads,peak_performance,config)
                        all_latency = []
                        for tc in [1,2,4,8]:
                            for th in [1,2,3,4,5,6,7]:
                                for tw in [1,2,3,4,5,6,7]:
                                    temp_latency = a*data_latency(H,H,C,N,tc,th,tw,bandwidth)
                                    temp_latency += b*compute_latency(H,H,C,N,tc,th,tw,3,3,threads,peak_performance,config)
                                    all_latency.append(temp_latency)
                        all_latency.sort()
                        if label_latency == all_latency[0]:
                            index = (a-1)*100+b-1
                            counter[index] +=1
    max_count = max(counter)
    index = counter.index(max_count)
    a = (index/100) + 1
    b = (index%100) + 1
    return a,b,max_count


if __name__ == '__main__':
    threads = 68 * 1024
    peak_performance = 13.45 * 1000000000000
    bandwidth = 616*1000000000
    config = json.load(open('./2080ti_config.json'))
    a,b,max_count = train(peak_performance,bandwidth,threads,config,"./2080ti_label.csv")
    print(a,b,max_count)