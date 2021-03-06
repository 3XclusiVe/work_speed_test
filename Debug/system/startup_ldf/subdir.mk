################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../system/startup_ldf/app_cplbtab.c \
../system/startup_ldf/app_handler_table.c \
../system/startup_ldf/app_heaptab.c 

S_SRCS += \
../system/startup_ldf/app_startup.s 

LDF_SRCS += \
../system/startup_ldf/app.ldf 

SRC_OBJS += \
./system/startup_ldf/app_cplbtab.doj \
./system/startup_ldf/app_handler_table.doj \
./system/startup_ldf/app_heaptab.doj \
./system/startup_ldf/app_startup.doj 

C_DEPS += \
./system/startup_ldf/app_cplbtab.d \
./system/startup_ldf/app_handler_table.d \
./system/startup_ldf/app_heaptab.d 

S_DEPS += \
./system/startup_ldf/app_startup.d 


# Each subdirectory must supply rules for building sources it contributes
system/startup_ldf/app_cplbtab.doj: ../system/startup_ldf/app_cplbtab.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="3" -proc ADSP-BF707 -flags-compiler --no_wrap_diagnostics -si-revision 1.0 -O -Ov100 -ipa -g -Oa -DCORE0 -D_DEBUG -I"C:\SMG\CCES_workspace\3\system" -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -DDO_CYCLE_COUNTS -gnu-style-dependencies -MD -Mo "system/startup_ldf/app_cplbtab.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

system/startup_ldf/app_handler_table.doj: ../system/startup_ldf/app_handler_table.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="3" -proc ADSP-BF707 -flags-compiler --no_wrap_diagnostics -si-revision 1.0 -O -Ov100 -ipa -g -Oa -DCORE0 -D_DEBUG -I"C:\SMG\CCES_workspace\3\system" -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -DDO_CYCLE_COUNTS -gnu-style-dependencies -MD -Mo "system/startup_ldf/app_handler_table.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

system/startup_ldf/app_heaptab.doj: ../system/startup_ldf/app_heaptab.c
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin C/C++ Compiler'
	ccblkfn.exe -c -file-attr ProjectName="3" -proc ADSP-BF707 -flags-compiler --no_wrap_diagnostics -si-revision 1.0 -O -Ov100 -ipa -g -Oa -DCORE0 -D_DEBUG -I"C:\SMG\CCES_workspace\3\system" -structs-do-not-overlap -no-const-strings -no-multiline -warn-protos -double-size-32 -decls-strong -cplbs -DDO_CYCLE_COUNTS -gnu-style-dependencies -MD -Mo "system/startup_ldf/app_heaptab.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

system/startup_ldf/app_startup.doj: ../system/startup_ldf/app_startup.s
	@echo 'Building file: $<'
	@echo 'Invoking: CrossCore Blackfin Assembler'
	easmblkfn.exe -file-attr ProjectName="3" -proc ADSP-BF707 -si-revision 1.0 -g -DCORE0 -D_DEBUG -i"C:\SMG\CCES_workspace\3\system" -gnu-style-dependencies -MM -Mo "system/startup_ldf/app_startup.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


