# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /weka/apps/cmake/3.17.0/intel/20.0/bin/cmake

# The command to remove a file.
RM = /weka/apps/cmake/3.17.0/intel/20.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build

# Include any dependencies generated for this target.
include CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test.dir/flags.make

CMakeFiles/test.dir/src/common.cpp.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/common.cpp.o: ../src/common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test.dir/src/common.cpp.o"
	/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/src/common.cpp.o -c /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/src/common.cpp

CMakeFiles/test.dir/src/common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/src/common.cpp.i"
	/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/src/common.cpp > CMakeFiles/test.dir/src/common.cpp.i

CMakeFiles/test.dir/src/common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/src/common.cpp.s"
	/home/jiannan.tian/spack/opt/spack/linux-centos7-haswell/gcc-4.8.5/gcc-9.4.0-hv6iwguto3c3j3p33vr5ykzpxeblvksz/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/src/common.cpp -o CMakeFiles/test.dir/src/common.cpp.s

CMakeFiles/test.dir/src/Add.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/Add.cu.o: ../src/Add.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CUDA object CMakeFiles/test.dir/src/Add.cu.o"
	/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/src/Add.cu -o CMakeFiles/test.dir/src/Add.cu.o

CMakeFiles/test.dir/src/Add.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/Add.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/Add.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/Add.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/BatchNorm.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/BatchNorm.cu.o: ../src/BatchNorm.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CUDA object CMakeFiles/test.dir/src/BatchNorm.cu.o"
	/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/src/BatchNorm.cu -o CMakeFiles/test.dir/src/BatchNorm.cu.o

CMakeFiles/test.dir/src/BatchNorm.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/BatchNorm.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/BatchNorm.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/BatchNorm.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/Conv.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/Conv.cu.o: ../src/Conv.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CUDA object CMakeFiles/test.dir/src/Conv.cu.o"
	/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/src/Conv.cu -o CMakeFiles/test.dir/src/Conv.cu.o

CMakeFiles/test.dir/src/Conv.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/Conv.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/Conv.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/Conv.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/Activation.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/Activation.cu.o: ../src/Activation.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CUDA object CMakeFiles/test.dir/src/Activation.cu.o"
	/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/src/Activation.cu -o CMakeFiles/test.dir/src/Activation.cu.o

CMakeFiles/test.dir/src/Activation.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/Activation.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/Activation.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/Activation.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/Pool.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/Pool.cu.o: ../src/Pool.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CUDA object CMakeFiles/test.dir/src/Pool.cu.o"
	/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/src/Pool.cu -o CMakeFiles/test.dir/src/Pool.cu.o

CMakeFiles/test.dir/src/Pool.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/Pool.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/Pool.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/Pool.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/BasicBlock.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/BasicBlock.cu.o: ../src/BasicBlock.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CUDA object CMakeFiles/test.dir/src/BasicBlock.cu.o"
	/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/src/BasicBlock.cu -o CMakeFiles/test.dir/src/BasicBlock.cu.o

CMakeFiles/test.dir/src/BasicBlock.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/BasicBlock.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/BasicBlock.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/BasicBlock.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

CMakeFiles/test.dir/src/main.cu.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/src/main.cu.o: ../src/main.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CUDA object CMakeFiles/test.dir/src/main.cu.o"
	/opt/apps/cuda/11.0.3/gcc/6.1.0/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -x cu -c /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/src/main.cu -o CMakeFiles/test.dir/src/main.cu.o

CMakeFiles/test.dir/src/main.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/test.dir/src/main.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/test.dir/src/main.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/test.dir/src/main.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/src/common.cpp.o" \
"CMakeFiles/test.dir/src/Add.cu.o" \
"CMakeFiles/test.dir/src/BatchNorm.cu.o" \
"CMakeFiles/test.dir/src/Conv.cu.o" \
"CMakeFiles/test.dir/src/Activation.cu.o" \
"CMakeFiles/test.dir/src/Pool.cu.o" \
"CMakeFiles/test.dir/src/BasicBlock.cu.o" \
"CMakeFiles/test.dir/src/main.cu.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test: CMakeFiles/test.dir/src/common.cpp.o
test: CMakeFiles/test.dir/src/Add.cu.o
test: CMakeFiles/test.dir/src/BatchNorm.cu.o
test: CMakeFiles/test.dir/src/Conv.cu.o
test: CMakeFiles/test.dir/src/Activation.cu.o
test: CMakeFiles/test.dir/src/Pool.cu.o
test: CMakeFiles/test.dir/src/BasicBlock.cu.o
test: CMakeFiles/test.dir/src/main.cu.o
test: CMakeFiles/test.dir/build.make
test: CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test.dir/build: test

.PHONY : CMakeFiles/test.dir/build

CMakeFiles/test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test.dir/clean

CMakeFiles/test.dir/depend:
	cd /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build /home/jiannan.tian/lizhi-temp/end2end/turker-conv/resnet50-original/build/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test.dir/depend

