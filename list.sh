#!/bin/bash

source getrange

for (( i = FROM; i < TO; i++ )); do
	gov=`cat /sys/devices/system/cpu/cpu$i/cpufreq/scaling_governor`
	echo -e $i":\t"$gov
done
