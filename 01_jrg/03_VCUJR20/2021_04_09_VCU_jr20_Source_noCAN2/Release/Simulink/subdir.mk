################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Simulink/Subsystem_Brakelight.c \
../Simulink/Subsystem_InputData.c \
../Simulink/Subsystem_OutputData.c \
../Simulink/Subsystem_PumpAndFans.c \
../Simulink/Subsystem_Transmission.c \
../Simulink/VCU.c \
../Simulink/VCU_data.c \
../Simulink/rtGetInf.c \
../Simulink/rtGetNaN.c \
../Simulink/rt_nonfinite.c 

OBJS += \
./Simulink/Subsystem_Brakelight.o \
./Simulink/Subsystem_InputData.o \
./Simulink/Subsystem_OutputData.o \
./Simulink/Subsystem_PumpAndFans.o \
./Simulink/Subsystem_Transmission.o \
./Simulink/VCU.o \
./Simulink/VCU_data.o \
./Simulink/rtGetInf.o \
./Simulink/rtGetNaN.o \
./Simulink/rt_nonfinite.o 

C_DEPS += \
./Simulink/Subsystem_Brakelight.d \
./Simulink/Subsystem_InputData.d \
./Simulink/Subsystem_OutputData.d \
./Simulink/Subsystem_PumpAndFans.d \
./Simulink/Subsystem_Transmission.d \
./Simulink/VCU.d \
./Simulink/VCU_data.d \
./Simulink/rtGetInf.d \
./Simulink/rtGetNaN.d \
./Simulink/rt_nonfinite.d 


# Each subdirectory must supply rules for building sources it contributes
Simulink/%.o: ../Simulink/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4500_F100x1024 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC4500_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

