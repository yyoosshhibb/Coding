################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.4/Blackfin/lib/src/drivers/source/sport/adi_sport.c 

SRC_OBJS += \
./system/drivers/sport/adi_sport.doj 

C_DEPS += \
./system/drivers/sport/adi_sport.d 


# Each subdirectory must supply rules for building sources it contributes
system/drivers/sport/adi_sport.doj: C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.4/Blackfin/lib/src/drivers/source/sport/adi_sport.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn -c -file-attr ProjectName="FIR_Filter" -proc ADSP-BF706 -flags-compiler --no_wrap_diagnostics -si-revision any -O -Ov100 -g -D_DEBUG -DADI_DEBUG -DNO_UTILITY_ROM -DCORE0 @includes-6562ee86b3f58a2845113f3b1a1f35ef.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -no-utility-rom -gnu-style-dependencies -MD -Mo "system/drivers/sport/adi_sport.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


