################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\USB\PluggableUSBDevice.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\USB\USBCDC.cpp \
C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\USB\USBSerial.cpp 

AR_OBJ += \
.\core\core\USB\PluggableUSBDevice.cpp.o \
.\core\core\USB\USBCDC.cpp.o \
.\core\core\USB\USBSerial.cpp.o 

CPP_DEPS += \
.\core\core\USB\PluggableUSBDevice.cpp.d \
.\core\core\USB\USBCDC.cpp.d \
.\core\core\USB\USBSerial.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
core\core\USB\PluggableUSBDevice.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\USB\PluggableUSBDevice.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\USB\USBCDC.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\USB\USBCDC.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\USB\USBSerial.cpp.o: C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino\USB\USBSerial.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino\tools\arm-none-eabi-gcc\7-2017q4/bin/arm-none-eabi-g++" -c -Wall -Wextra -g -Os -nostdlib "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/defines.txt" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/cxxflags.txt" -DARDUINO_ARCH_NRF52840 -MMD -mcpu=cortex-m4 -mfloat-abi=softfp -mfpu=fpv4-sp-d16 -DARDUINO=10812 -DARDUINO_ARDUINO_NANO33BLE -DARDUINO_ARCH_MBED -DARDUINO_LIBRARY_DISCOVERY_PHASE=0    "-IC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino/api/deprecated" "-iprefixC:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" "@C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE/includes.txt"  -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\cores\arduino" -I"C:\Users\Lautaro\eclipse\cpp-2020-09\eclipse\arduinoPlugin\packages\arduino-beta\hardware\mbed\1.2.2\variants\ARDUINO_NANO33BLE" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '


