################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
BLDC_sysconfig/%.obj: ../BLDC_sysconfig/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -Ooff --opt_for_speed=0 --fp_mode=relaxed --include_path="D:/GIT/BLDC_Motor/BLDC_Motor/BLDC_cpu1" --include_path="C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c2000_22.6.0.LTS/include" --include_path="D:/GIT/BLDC_Motor/BLDC_Motor/BLDC_cpu1/BLDC_sysconfig}" --advice:performance=all -g --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="BLDC_sysconfig/$(basename $(<F)).d_raw" --include_path="D:/GIT/BLDC_Motor/BLDC_Motor/BLDC_cpu1/CPU1_Debug/syscfg" --obj_directory="BLDC_sysconfig" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


