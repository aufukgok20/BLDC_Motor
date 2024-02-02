################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
build-830062449: ../BLDC_sysconfig/BLDC_cpu1.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/ccs1210/ccs/utils/sysconfig_1.14.0/sysconfig_cli.bat" --script "D:/GIT/BLDC_Motor/BLDC_Motor/BLDC_cpu1/BLDC_sysconfig/BLDC_cpu1.syscfg" -o "syscfg" --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/error.h: build-830062449 ../BLDC_sysconfig/BLDC_cpu1.syscfg
syscfg/: build-830062449

BLDC_sysconfig/%.obj: ../BLDC_sysconfig/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --include_path="D:/GIT/BLDC_Motor/BLDC_Motor/BLDC_cpu1" --include_path="C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/include" --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="BLDC_sysconfig/$(basename $(<F)).d_raw" --include_path="D:/GIT/BLDC_Motor/BLDC_Motor/BLDC_cpu1/CPU1_Release/syscfg" --obj_directory="BLDC_sysconfig" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


