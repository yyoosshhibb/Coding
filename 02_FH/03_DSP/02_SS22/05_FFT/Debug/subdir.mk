################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../AudioCallback.c \
../AudioFilter.c \
../Init.c \
../Scramble_data.c \
../fft.c 

SRC_OBJS += \
./AudioCallback.doj \
./AudioFilter.doj \
./Init.doj \
./Scramble_data.doj \
./fft.doj 

C_DEPS += \
./AudioCallback.d \
./AudioFilter.d \
./Init.d \
./Scramble_data.d \
./fft.d 


# Each subdirectory must supply rules for building sources it contributes
AudioCallback.doj: ../AudioCallback.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn -c -file-attr ProjectName="05_FFT" -proc ADSP-BF706 -flags-compiler --no_wrap_diagnostics -si-revision any -g -D_DEBUG -DADI_DEBUG -DNO_UTILITY_ROM -DCORE0 @includes-17b7054da66e132d9fc62031a886a999.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -no-utility-rom -gnu-style-dependencies -MD -Mo "AudioCallback.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

AudioFilter.doj: ../AudioFilter.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn -c -file-attr ProjectName="05_FFT" -proc ADSP-BF706 -flags-compiler --no_wrap_diagnostics -si-revision any -g -D_DEBUG -DADI_DEBUG -DNO_UTILITY_ROM -DCORE0 @includes-17b7054da66e132d9fc62031a886a999.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -no-utility-rom -gnu-style-dependencies -MD -Mo "AudioFilter.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Init.doj: ../Init.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn -c -file-attr ProjectName="05_FFT" -proc ADSP-BF706 -flags-compiler --no_wrap_diagnostics -si-revision any -g -D_DEBUG -DADI_DEBUG -DNO_UTILITY_ROM -DCORE0 @includes-17b7054da66e132d9fc62031a886a999.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -no-utility-rom -gnu-style-dependencies -MD -Mo "Init.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Scramble_data.doj: ../Scramble_data.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn -c -file-attr ProjectName="05_FFT" -proc ADSP-BF706 -flags-compiler --no_wrap_diagnostics -si-revision any -g -D_DEBUG -DADI_DEBUG -DNO_UTILITY_ROM -DCORE0 @includes-17b7054da66e132d9fc62031a886a999.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -no-utility-rom -gnu-style-dependencies -MD -Mo "Scramble_data.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

fft.doj: ../fft.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn -c -file-attr ProjectName="05_FFT" -proc ADSP-BF706 -flags-compiler --no_wrap_diagnostics -si-revision any -g -D_DEBUG -DADI_DEBUG -DNO_UTILITY_ROM -DCORE0 @includes-17b7054da66e132d9fc62031a886a999.txt -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -no-utility-rom -gnu-style-dependencies -MD -Mo "fft.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


