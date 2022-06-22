################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/AWFG_2022b.c \
../src/ert_main.c \
../src/rtGetInf.c \
../src/rtGetNaN.c \
../src/rt_nonfinite.c 

OBJS += \
./src/AWFG_2022b.o \
./src/ert_main.o \
./src/rtGetInf.o \
./src/rtGetNaN.o \
./src/rt_nonfinite.o 

C_DEPS += \
./src/AWFG_2022b.d \
./src/ert_main.d \
./src/rtGetInf.d \
./src/rtGetNaN.d \
./src/rt_nonfinite.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../awfg_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


