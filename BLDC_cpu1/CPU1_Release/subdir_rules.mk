################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
build-576102399: ../cpu1.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/ccs1260/ccs/utils/sysconfig_1.19.0/sysconfig_cli.bat" --script "D:/GIT/BLDC_Motor/BLDC_Motor/BLDC_cpu1/cpu1.syscfg" -o "syscfg" -s "C:/ti/c2000/C2000Ware_5_01_00_00/.metadata/sdk.json" --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/board.c: build-576102399 ../cpu1.syscfg
syscfg/board.h: build-576102399
syscfg/board.cmd.genlibs: build-576102399
syscfg/board.opt: build-576102399
syscfg/pinmux.csv: build-576102399
syscfg/c2000ware_libraries.opt: build-576102399
syscfg/c2000ware_libraries.c: build-576102399
syscfg/c2000ware_libraries.h: build-576102399
syscfg/clocktree.h: build-576102399
syscfg: build-576102399

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1260/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --include_path="D:/GIT/BLDC_Motor/BLDC_Motor/BLDC_cpu1" --include_path="C:/ti/c2000/C2000Ware_5_01_00_00" --include_path="D:/GIT/BLDC_Motor/BLDC_Motor/BLDC_cpu1/device" --include_path="C:/ti/c2000/C2000Ware_5_01_00_00/driverlib/f2837xd/driverlib" --include_path="C:/ti/ccs1260/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --advice:performance=all --define=_FLASH --define=CPU1 --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="D:/GIT/BLDC_Motor/BLDC_Motor/BLDC_cpu1/CPU1_Release/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccs1260/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/bin/cl2000" -v28 -ml -mt --cla_support=cla1 --float_support=fpu32 --tmu_support=tmu0 --vcu_support=vcu2 -O2 --include_path="D:/GIT/BLDC_Motor/BLDC_Motor/BLDC_cpu1" --include_path="C:/ti/c2000/C2000Ware_5_01_00_00" --include_path="D:/GIT/BLDC_Motor/BLDC_Motor/BLDC_cpu1/device" --include_path="C:/ti/c2000/C2000Ware_5_01_00_00/driverlib/f2837xd/driverlib" --include_path="C:/ti/ccs1260/ccs/tools/compiler/ti-cgt-c2000_22.6.1.LTS/include" --advice:performance=all --define=_FLASH --define=CPU1 --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="D:/GIT/BLDC_Motor/BLDC_Motor/BLDC_cpu1/CPU1_Release/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


