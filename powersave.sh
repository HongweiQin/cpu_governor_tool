#!/bin/bash

FROM=`cat ./from`
TO=`cat ./to`

for (( i = FROM; i < TO; i++ )); do
	echo powersave | sudo tee /sys/devices/system/cpu/cpu$i/cpufreq/scaling_governor
done
