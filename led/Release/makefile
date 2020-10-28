################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ..\makefile.init

RM := -del 

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include core\variant\subdir.mk
-include core\core\mbed\platform\cxxsupport\subdir.mk
-include core\core\api\subdir.mk
-include core\core\USB\subdir.mk
-include core\core\subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ..\makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
C:\Users\Lautaro\eclipse-workspace\led\Release\arduino.ar \

ELF += \
led.elf \

HEX += \
led.hex \


# All Target
all: led

# Tool invocations
led: $(HEX)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-size" -A "C:\Users\Lautaro\eclipse-workspace\led\Release/led.elf"
	@echo 'Finished building target: $@'
	@echo ' '

C:\Users\Lautaro\eclipse-workspace\led\Release\arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-ar" rcs     C:\Users\Lautaro\eclipse-workspace\led\Release/arduino.ar $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

led.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++"  "-LC:\Users\Lautaro\eclipse-workspace\led\Release" -Wl,--gc-sections -Wall -Wextra -Wl,--as-needed  "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/ldflags.txt" "-TC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/linker_script.ld" "-Wl,-Map,C:\Users\Lautaro\eclipse-workspace\led\Release/led.map" --specs=nosys.specs  -o "C:\Users\Lautaro\eclipse-workspace\led\Release/led.elf"   $(LINK_OBJ)  -Wl,--whole-archive  C:\Users\Lautaro\eclipse-workspace\led\Release/arduino.ar  "C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/libs/libmbed.a" "C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/libs/libcc_310_core.a" "C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/libs/libcc_310_ext.a" "C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/libs/libcc_310_trng.a" -Wl,--no-whole-archive -Wl,--start-group -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys  -Wl,--end-group
	@echo 'Finished building: $@'
	@echo ' '

led.hex: $(ELF)
	@echo 'Do all objcopy commands'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-objcopy" -O binary  "C:\Users\Lautaro\eclipse-workspace\led\Release/led.elf" "C:\Users\Lautaro\eclipse-workspace\led\Release/led.bin"
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-objcopy" -O ihex -R .eeprom  "C:\Users\Lautaro\eclipse-workspace\led\Release/led.elf" "C:\Users\Lautaro\eclipse-workspace\led\Release/led.hex"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(PDE_DEPS)$(C_DEPS)$(AR)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(HEX)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS)
	-@echo ' '

.PHONY: all clean dependents

-include ..\makefile.targets
