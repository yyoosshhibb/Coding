################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../RTE/Device/XMC4500-F100x1024/startup_XMC4500.s 

C_SRCS += \
../RTE/Device/XMC4500-F100x1024/system_XMC4500.c 

OBJS += \
./RTE/Device/XMC4500-F100x1024/startup_XMC4500.o \
./RTE/Device/XMC4500-F100x1024/system_XMC4500.o 

S_DEPS += \
./RTE/Device/XMC4500-F100x1024/startup_XMC4500.d 

C_DEPS += \
./RTE/Device/XMC4500-F100x1024/system_XMC4500.d 


# Each subdirectory must supply rules for building sources it contributes
RTE/Device/XMC4500-F100x1024/%.o: ../RTE/Device/XMC4500-F100x1024/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC Assembler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -x assembler-with-cpp -DXMC4500_F100x1024 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -Wall -Wa,-adhlns="$@.lst" -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.
RTE/Device/XMC4500-F100x1024/%.o: ../RTE/Device/XMC4500-F100x1024/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"$(TOOLCHAIN_ROOT)/bin/arm-none-eabi-gcc" -MMD -MT "$@" -DXMC4500_F100x1024 -I"$(PROJECT_LOC)/Libraries/XMCLib/inc" -I"$(PROJECT_LOC)/Libraries/CMSIS/Include" -I"$(PROJECT_LOC)/Libraries/CMSIS/Infineon/XMC4500_series/Include" -I"$(PROJECT_LOC)" -I"$(PROJECT_LOC)/Dave/Generated" -I"$(PROJECT_LOC)/Libraries" -O0 -ffunction-sections -fdata-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -pipe -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g -gdwarf-2 -o "$@" "$<" 
	@echo 'Finished building: $<'
	@echo.

