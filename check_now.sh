#!/bin/bash

source getrange

for (( i = FROM; i < TO; i++ )); do
	gov=`cat /sys/devices/system/cpu/cpu$i/cpufreq/scaling_cur_freq`
	echo -e $i":\t"$gov
done
