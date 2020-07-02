#!/bin/bash -x
counter=0
for ((i=11;i<100;i++))
do
	temp=$i
	tens=$(($temp%10))
	temp=$(($temp/10))
	unit=$temp

	if(($tens == $unit))
	then
		ArrayNumber[$count]=$i
			((count++))
	fi
done
echo ${ArrayNumber[@]}
