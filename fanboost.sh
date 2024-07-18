#!/usr/bin/bash

PWM1_ENABLE_STATUS=$(cat /sys/devices/platform/hp-wmi/hwmon/hwmon*/pwm1_enable)

if [[ $PWM1_ENABLE_STATUS -eq "2" ]] then
	echo "0" | sudo tee /sys/devices/platform/hp-wmi/hwmon/hwmon*/pwm1_enable
else
	echo "2" | sudo tee /sys/devices/platform/hp-wmi/hwmon/hwmon*/pwm1_enable
fi;
