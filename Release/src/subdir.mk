################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/osa.cpp \
../src/osa_buf.cpp \
../src/osa_eth_client.cpp \
../src/osa_eth_server.cpp \
../src/osa_event.cpp \
../src/osa_file.cpp \
../src/osa_i2c.cpp \
../src/osa_image_queue.cpp \
../src/osa_mbx.cpp \
../src/osa_msgq.cpp \
../src/osa_mutex.cpp \
../src/osa_pipe.cpp \
../src/osa_prf.cpp \
../src/osa_que.cpp \
../src/osa_rng.cpp \
../src/osa_sem.cpp \
../src/osa_thr.cpp \
../src/osa_tsk.cpp 

OBJS += \
./src/osa.o \
./src/osa_buf.o \
./src/osa_eth_client.o \
./src/osa_eth_server.o \
./src/osa_event.o \
./src/osa_file.o \
./src/osa_i2c.o \
./src/osa_image_queue.o \
./src/osa_mbx.o \
./src/osa_msgq.o \
./src/osa_mutex.o \
./src/osa_pipe.o \
./src/osa_prf.o \
./src/osa_que.o \
./src/osa_rng.o \
./src/osa_sem.o \
./src/osa_thr.o \
./src/osa_tsk.o 

CPP_DEPS += \
./src/osa.d \
./src/osa_buf.d \
./src/osa_eth_client.d \
./src/osa_eth_server.d \
./src/osa_event.d \
./src/osa_file.d \
./src/osa_i2c.d \
./src/osa_image_queue.d \
./src/osa_mbx.d \
./src/osa_msgq.d \
./src/osa_mutex.d \
./src/osa_pipe.d \
./src/osa_prf.d \
./src/osa_que.d \
./src/osa_rng.d \
./src/osa_sem.d \
./src/osa_thr.d \
./src/osa_tsk.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-8.0/bin/nvcc -I../inc -I../src -I/usr/include/GL -O2 -Xcompiler -fPIC -ccbin aarch64-linux-gnu-g++ -gencode arch=compute_50,code=sm_50 -m64 -odir "src" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-8.0/bin/nvcc -I../inc -I../src -I/usr/include/GL -O2 -Xcompiler -fPIC --compile -m64 -ccbin aarch64-linux-gnu-g++  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


