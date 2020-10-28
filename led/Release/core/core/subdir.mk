################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\Interrupts.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\Serial.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\Tone.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\WMath.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\abi.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\main.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\pinToIndex.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\wiring.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\wiring_analog.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\wiring_digital.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\wiring_pulse.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\wiring_shift.cpp 

C_SRCS += \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\itoa.c 

C_DEPS += \
.\core\core\itoa.c.d 

AR_OBJ += \
.\core\core\Interrupts.cpp.o \
.\core\core\Serial.cpp.o \
.\core\core\Tone.cpp.o \
.\core\core\WMath.cpp.o \
.\core\core\abi.cpp.o \
.\core\core\itoa.c.o \
.\core\core\main.cpp.o \
.\core\core\pinToIndex.cpp.o \
.\core\core\wiring.cpp.o \
.\core\core\wiring_analog.cpp.o \
.\core\core\wiring_digital.cpp.o \
.\core\core\wiring_pulse.cpp.o \
.\core\core\wiring_shift.cpp.o 

CPP_DEPS += \
.\core\core\Interrupts.cpp.d \
.\core\core\Serial.cpp.d \
.\core\core\Tone.cpp.d \
.\core\core\WMath.cpp.d \
.\core\core\abi.cpp.d \
.\core\core\main.cpp.d \
.\core\core\pinToIndex.cpp.d \
.\core\core\wiring.cpp.d \
.\core\core\wiring_analog.cpp.d \
.\core\core\wiring_digital.cpp.d \
.\core\core\wiring_pulse.cpp.d \
.\core\core\wiring_shift.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
core\core\Interrupts.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\Interrupts.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\Serial.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\Serial.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\Tone.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\Tone.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\WMath.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\WMath.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\abi.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\abi.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\itoa.c.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\itoa.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-gcc" -c -Wall -Wextra -Os -g -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0   "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated"  "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\main.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\main.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\pinToIndex.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\pinToIndex.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\wiring.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\wiring.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\wiring_analog.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\wiring_analog.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\wiring_digital.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\wiring_digital.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\wiring_pulse.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\wiring_pulse.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\wiring_shift.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\wiring_shift.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '


