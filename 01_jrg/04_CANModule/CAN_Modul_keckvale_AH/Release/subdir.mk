################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ANA_Init.c \
../ANA_Read.c \
../Average_Filter.c \
../CAN_1.c \
../CAN_2.c \
../Low_Pass_Filter.c \
../Powercycle_Calibration.c \
../UnitConversion.c \
../main.c 

OBJS += \
./ANA_Init.o \
./ANA_Read.o \
./Average_Filter.o \
./CAN_1.o \
./CAN_2.o \
./Low_Pass_Filter.o \
./Powercycle_Calibration.o \
./UnitConversion.o \
./main.o 

C_DEPS += \
./ANA_Init.d \
./ANA_Read.d \
./Average_Filter.d \
./CAN_1.d \
./CAN_2.d \
./Low_Pass_Filter.d \
./Powercycle_Calibration.d \
./UnitConversion.d \
./main.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4500_F100x1024 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC4500_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -Os -ffunction-sections -fdata-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

