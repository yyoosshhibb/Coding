################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.2/Blackfin/lib/src/drivers/source/sport/adi_sport.c 

SRC_OBJS += \
./system/drivers/sport/adi_sport.doj 

C_DEPS += \
./system/drivers/sport/adi_sport.d 


# Each subdirectory must supply rules for building sources it contributes
system/drivers/sport/adi_sport.doj: C:/Analog\ Devices/CrossCore\ Embedded\ Studio\ 2.9.2/Blackfin/lib/src/drivers/source/sport/adi_sport.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn -c -file-attr ProjectName="05_FFT" -proc ADSP-BF706 -flags-compiler --no_wrap_diagnostics -si-revision any -g -D_DEBUG -DADI_DEBUG -DNO_UTILITY_ROM -DCORE0 @includes-17b7054da66e132d9fc62031a886a999.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -no-utility-rom -gnu-style-dependencies -MD -Mo "system/drivers/sport/adi_sport.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


