import subprocess
import os
shapes = ['32_32_7_7','96_64_7_7','64_32_7_7','32_32_28_28','32_32_56_56',
          '64_32_112_112','64_32_224_224','192_96_28_28','64_32_28_28','32_32_14_14',
          '64_64_56_56','192_160_7_7','192_96_14_14','64_32_14_14','160_96_28_28',
          '128_96_14_14','96_64_28_28','64_32_56_56']
base_dir = './core_convs_eval/2080Ti/build'
for shape in shapes:
    test_case = os.path.join(base_dir,shape)
    subprocess.run([test_case])