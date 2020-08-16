#!/bin/bash

FROM=`cat ./from`
TO=`cat ./to`

for (( i = FROM; i < TO; i++ )); do
	gov=`cat /sys/devices/system/cpu/cpu$i/cpufreq/scaling_cur_freq`
	echo -e $i":\t"$gov
done
