#!/bin/bash

source getrange

for (( i = FROM; i < TO; i++ )); do
	echo powersave | sudo tee /sys/devices/system/cpu/cpu$i/cpufreq/scaling_governor
done
