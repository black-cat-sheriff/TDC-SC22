set(CMAKE_CUDA_COMPILER "/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/nvcc")
set(CMAKE_CUDA_HOST_COMPILER "")
set(CMAKE_CUDA_HOST_LINK_LAUNCHER "/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/bin/g++")
set(CMAKE_CUDA_COMPILER_ID "NVIDIA")
set(CMAKE_CUDA_COMPILER_VERSION "11.0.221")
set(CMAKE_CUDA_STANDARD_COMPUTED_DEFAULT "14")
set(CMAKE_CUDA_COMPILE_FEATURES "cuda_std_03;cuda_std_11;cuda_std_14")
set(CMAKE_CUDA03_COMPILE_FEATURES "cuda_std_03")
set(CMAKE_CUDA11_COMPILE_FEATURES "cuda_std_11")
set(CMAKE_CUDA14_COMPILE_FEATURES "cuda_std_14")
set(CMAKE_CUDA17_COMPILE_FEATURES "")
set(CMAKE_CUDA20_COMPILE_FEATURES "")

set(CMAKE_CUDA_PLATFORM_ID "Linux")
set(CMAKE_CUDA_SIMULATE_ID "")
set(CMAKE_CUDA_COMPILER_FRONTEND_VARIANT "")
set(CMAKE_CUDA_SIMULATE_VERSION "")


set(CMAKE_CUDA_COMPILER_ENV_VAR "CUDACXX")
set(CMAKE_CUDA_HOST_COMPILER_ENV_VAR "CUDAHOSTCXX")

set(CMAKE_CUDA_COMPILER_LOADED 1)
set(CMAKE_CUDA_COMPILER_ID_RUN 1)
set(CMAKE_CUDA_SOURCE_FILE_EXTENSIONS cu)
set(CMAKE_CUDA_LINKER_PREFERENCE 15)
set(CMAKE_CUDA_LINKER_PREFERENCE_PROPAGATES 1)

set(CMAKE_CUDA_SIZEOF_DATA_PTR "8")
set(CMAKE_CUDA_COMPILER_ABI "ELF")
set(CMAKE_CUDA_LIBRARY_ARCHITECTURE "")

if(CMAKE_CUDA_SIZEOF_DATA_PTR)
  set(CMAKE_SIZEOF_VOID_P "${CMAKE_CUDA_SIZEOF_DATA_PTR}")
endif()

if(CMAKE_CUDA_COMPILER_ABI)
  set(CMAKE_INTERNAL_PLATFORM_ABI "${CMAKE_CUDA_COMPILER_ABI}")
endif()

if(CMAKE_CUDA_LIBRARY_ARCHITECTURE)
  set(CMAKE_LIBRARY_ARCHITECTURE "")
endif()

set(CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES "/opt/apps/cuda/11.0.3/gcc/6.1.0/targets/x86_64-linux/include")

set(CMAKE_CUDA_HOST_IMPLICIT_LINK_LIBRARIES "rt;pthread;dl")
set(CMAKE_CUDA_HOST_IMPLICIT_LINK_DIRECTORIES "/opt/apps/cuda/11.0.3/gcc/6.1.0/targets/x86_64-linux/lib/stubs;/opt/apps/cuda/11.0.3/gcc/6.1.0/targets/x86_64-linux/lib")
set(CMAKE_CUDA_HOST_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")

set(CMAKE_CUDA_IMPLICIT_INCLUDE_DIRECTORIES "/opt/apps/anaconda3/5.1.0/include;/opt/apps/gcc/7.3.0/include;/opt/apps/intel/20.2/compilers_and_libraries_2020.2.254/linux/ipp/include;/opt/apps/intel/20.2/compilers_and_libraries_2020.2.254/linux/mkl/include;/opt/apps/intel/20.2/compilers_and_libraries_2020.2.254/linux/pstl/include;/opt/apps/intel/20.2/compilers_and_libraries_2020.2.254/linux/pstl/stdlib;/opt/apps/intel/20.2/compilers_and_libraries_2020.2.254/linux/tbb/include;/opt/apps/intel/20.2/compilers_and_libraries_2020.2.254/linux/daal/include;/opt/apps/cuda/11.0.3/gcc/6.1.0/samples/common/inc;/opt/apps/intel/20.2/clck/2019.9/include;/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0;/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/x86_64-pc-linux-gnu;/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include/c++/9.4.0/backward;/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/lib/gcc/x86_64-pc-linux-gnu/9.4.0/include;/usr/local/include;/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/include;/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/lib/gcc/x86_64-pc-linux-gnu/9.4.0/include-fixed;/usr/include")
set(CMAKE_CUDA_IMPLICIT_LINK_LIBRARIES "rt;pthread;dl;stdc++;m;gcc_s;gcc;c;gcc_s;gcc")
set(CMAKE_CUDA_IMPLICIT_LINK_DIRECTORIES "/opt/apps/cuda/11.0.3/gcc/6.1.0/targets/x86_64-linux/lib/stubs;/opt/apps/cuda/11.0.3/gcc/6.1.0/targets/x86_64-linux/lib;/opt/apps/gcc/7.3.0/lib64;/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/lib/gcc/x86_64-pc-linux-gnu/9.4.0;/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/lib64;/lib64;/usr/lib64;/opt/apps/cuda/11.0.3/gcc/6.1.0/lib64;/opt/apps/anaconda3/5.1.0/lib;/opt/apps/gcc/7.3.0/lib;/opt/apps/intel/20.2/clck/2019.9/lib/intel64;/opt/apps/intel/20.2/compilers_and_libraries_2020.2.254/linux/mpi/intel64/libfabric/lib;/opt/apps/intel/20.2/compilers_and_libraries_2020.2.254/linux/ipp/lib/intel64;/opt/apps/intel/20.2/compilers_and_libraries_2020.2.254/linux/compiler/lib/intel64_lin;/opt/apps/intel/20.2/compilers_and_libraries_2020.2.254/linux/mkl/lib/intel64_lin;/opt/apps/intel/20.2/compilers_and_libraries_2020.2.254/linux/tbb/lib/intel64/gcc4.8;/opt/apps/intel/20.2/compilers_and_libraries_2020.2.254/linux/daal/lib/intel64_lin;/opt/apps/intel/20.2/compilers_and_libraries_2020.2.254/linux/tbb/lib/intel64_lin/gcc4.8;/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/lib")
set(CMAKE_CUDA_IMPLICIT_LINK_FRAMEWORK_DIRECTORIES "")

set(CMAKE_LINKER "/usr/bin/ld")
set(CMAKE_MT "")
