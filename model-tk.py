import argparse
import json
import sys

import math
import codecs
from collections import OrderedDict
def query_occupancy(lines,C,N,H,W,th,tw,tc):
    for line in lines:
        parts = line.split(',')
        if C == int(parts[0]) and N == int(parts[1]) and H == int(parts[2]) \
                and W == int(parts[3]) and th == int(parts[4]) and tw == int(parts[5]) and tc == int(parts[6]):
            return float(parts[-1])
    return -1

def compute_latency(C,N,H,W,th,tw,tc,r,s,occupancy_lines,sms,ths_sm):
    flops = 2*(th+r-1)*(tw+s-1)*tc*r*s
    bnum = math.ceil(H/th) * math.ceil(W/tw) * math.ceil(C/tc)
    api_occup = query_occupancy(occupancy_lines,C,N,H,W,th,tw,tc)
    if api_occup == -1:
        print(C,N,H,W,th,tw,tc)
    bnums_one_wave = math.floor((sms*ths_sm*api_occup)/N)
    waves = math.ceil(bnum/bnums_one_wave)
    return flops * waves

def filter_data_move(C,N,H,W):
    ths = [2,3,4,5,6,7]
    tws = [2,3,4,5,6,7]
    tcs = [1,2,4,8]
    candidates = []
    for th in ths:
        if th >= H:
            continue
        for tw in tws:
            if tw >= W:
                continue
            for tc in tcs:
                data_vol = data_latency(C,N,H,W,th,tw,tc)
                candidates.append((C,N,H,W,th,tw,tc,data_vol))
    candidates.sort(key=lambda x: x[-1])
    low_data_candidates = []
    for i in range(len(candidates)//2):
        low_data_candidates.append(candidates[i])
    return low_data_candidates

def data_latency(C,N,H,W,th,tw,tc):
    bnum = math.ceil(H/th) * math.ceil(W/tw) * math.ceil(C/tc)
    in_vol = math.ceil(H/th) * math.ceil(W/tw) * (th + 3 - 1) * (tw + 3 - 1) * 4 * C
    ker_vol = 4 * 3 * 3 * tc * N * bnum
    out_vol = 4 * th * tw * N * bnum
    return (3*in_vol + ker_vol + 4*out_vol)

def compute_model(C,N,H,W,occupancy_table,sms,ths_sm):
    reader = codecs.open(occupancy_table,'r','utf-8')
    occupancy_lines = reader.readlines()
    latency_list = []
    candidates = filter_data_move(C, N, H, W)
    for candidate in candidates:
        C,N,H,W,th,tw,tc,data_vol = candidate
        latency = compute_latency(C,N,H,W,th,tw,tc,3,3,occupancy_lines,sms,ths_sm)
        latency_list.append((th,tw,tc,latency))
    latency_list.sort(key=lambda x: x[-1])
    return latency_list[0]
def filter_comp(C,N,H,W,occupancy_table,sms,ths_sm):
    reader = codecs.open(occupancy_table,'r','utf-8')
    occupancy_lines = reader.readlines()
    ths = [2,3,4,5,6,7]
    tws = [2,3,4,5,6,7]
    tcs = [1,2,4,8]
    candidates = []
    for th in ths:
        for tw in tws:
            for tc in tcs:
                if th >= H or tw >= W:
                    continue
                if H >=56 and tc < 4:
                    continue
                latency = compute_latency(C,N,H,W,th,tw,tc,3,3,occupancy_lines,sms,ths_sm)
                candidates.append((C,N,H,W,th,tw,tc,latency))
    candidates.sort(key=lambda x: x[-1])
    low_comp_candidates = []
    for i in range(int(len(candidates)*0.1)):
        low_comp_candidates.append(candidates[i])
    final_candidates = []
    for candidate in low_comp_candidates:
        C,N,H,W,th,tw,tc,comp_latency = candidate
        data_vol = data_latency(C,N,H,W,th,tw,tc)
        final_candidates.append((th,tw,tc,data_vol))
    final_candidates.sort(key=lambda x: x[-1])
    return final_candidates[0]

def check_result(out,C,N,H,W,th,tw,tc):
    reader = codecs.open(out,'r','utf-8')
    lines = reader.readlines()
    for line in lines:
        parts = line.split(',')
        if C == int(parts[0]) and N == int(parts[1]) and H == int(parts[2]) \
                and W == int(parts[3]) and th == int(parts[4]) and tw == int(parts[5]) and tc == int(parts[6]):
            return parts[7]
    return -1

def find_min(out,C,N,H,W):
    reader = codecs.open(out,'r','utf-8')
    lines = reader.readlines()
    candidates = []
    for line in lines:
        if '{},{},{},{}'.format(C,N,H,W) in line:
            candidates.append(line)
    best = 10000000
    for line in candidates:
        parts = line.split(',')
        t = float(parts[-2])
        if t < best:
            best = t
    return best
if __name__ == '__main__':
    occupancy_table = './2080Ti-occupancy'
    shapes = [(64,32,224,224),(64,32,112,112),(32,32,56,56),(64,32,56,56),(64,64,56,56),(32,32,28,28),
              (64,32,28,28),(96,64,28,28),(160,96,28,28),
              (192,96,28,28),(32,32,14,14),(64,32,14,14),
              (128,96,14,14),(192,96,14,14),(32,32,7,7),(64,32,7,7),(96,64,7,7),(192,160,7,7)]
    results = []
    for shape in shapes:
        C = shape[0]
        N = shape[1]
        H = shape[2]
        W = shape[3]
        #print(filter_comp(C,N,H,W,occupancy_table,108,2048))
        out = filter_comp(C,N,H,W,occupancy_table,68,1024)
        th = out[0]
        tw = out[1]
        tc = out[2]
        best = find_min(occupancy_table,C,N,H,W)
        modeled = check_result(occupancy_table,C,N,H,W,th,tw,tc)
        #print('({},{},{},{}),{},{}'.format(C,N,H,W,best,modeled))
        print('{},{}'.format(best,modeled))
        #print('({},{},{},{})'.format(C,N,H,W))
        results.append(float(modeled)/best)
    print(sum(results)/len(results))
