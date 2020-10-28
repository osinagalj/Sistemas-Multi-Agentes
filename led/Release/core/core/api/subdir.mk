################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\api\Common.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\api\IPAddress.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\api\PluggableUSB.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\api\Print.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\api\Stream.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\api\String.cpp 

AR_OBJ += \
.\core\core\api\Common.cpp.o \
.\core\core\api\IPAddress.cpp.o \
.\core\core\api\PluggableUSB.cpp.o \
.\core\core\api\Print.cpp.o \
.\core\core\api\Stream.cpp.o \
.\core\core\api\String.cpp.o 

CPP_DEPS += \
.\core\core\api\Common.cpp.d \
.\core\core\api\IPAddress.cpp.d \
.\core\core\api\PluggableUSB.cpp.d \
.\core\core\api\Print.cpp.d \
.\core\core\api\Stream.cpp.d \
.\core\core\api\String.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
core\core\api\Common.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\api\Common.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\api\IPAddress.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\api\IPAddress.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\api\PluggableUSB.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\api\PluggableUSB.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\api\Print.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\api\Print.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\api\Stream.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\api\Stream.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\api\String.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\api\String.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '


