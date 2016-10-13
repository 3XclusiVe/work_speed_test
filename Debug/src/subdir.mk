################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/3.cpp 

SRC_OBJS += \
./src/3.doj 

CPP_DEPS += \
./src/3.d 


# Each subdirectory must supply rules for building sources it contributes
src/3.doj: ../src/3.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="3" -proc ADSP-BF707 -flags-compiler --no_wrap_diagnostics -si-revision 1.0 -O -Ov100 -ipa -g -Oa -DCORE0 -D_DEBUG -I"C:\SMG\CCES_workspace\3\system" -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -DDO_CYCLE_COUNTS -gnu-style-dependencies -MD -Mo "src/3.d" -c++ -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


