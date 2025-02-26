################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../AudioCallback.c \
../AudioFilter.c \
../Init.c 

SRC_OBJS += \
./AudioCallback.doj \
./AudioFilter.doj \
./Init.doj 

C_DEPS += \
./AudioCallback.d \
./AudioFilter.d \
./Init.d 


# Each subdirectory must supply rules for building sources it contributes
AudioCallback.doj: ../AudioCallback.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn -c -file-attr ProjectName="GetStarted" -proc ADSP-BF706 -flags-compiler --no_wrap_diagnostics -si-revision any -g -D_DEBUG -DADI_DEBUG -DNO_UTILITY_ROM -DCORE0 @includes-19e839bd21f07e74f550fca8ed08c4ad.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -no-utility-rom -gnu-style-dependencies -MD -Mo "AudioCallback.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

AudioFilter.doj: ../AudioFilter.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn -c -file-attr ProjectName="GetStarted" -proc ADSP-BF706 -flags-compiler --no_wrap_diagnostics -si-revision any -g -D_DEBUG -DADI_DEBUG -DNO_UTILITY_ROM -DCORE0 @includes-19e839bd21f07e74f550fca8ed08c4ad.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -no-utility-rom -gnu-style-dependencies -MD -Mo "AudioFilter.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Init.doj: ../Init.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn -c -file-attr ProjectName="GetStarted" -proc ADSP-BF706 -flags-compiler --no_wrap_diagnostics -si-revision any -g -D_DEBUG -DADI_DEBUG -DNO_UTILITY_ROM -DCORE0 @includes-19e839bd21f07e74f550fca8ed08c4ad.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -no-utility-rom -gnu-style-dependencies -MD -Mo "Init.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


