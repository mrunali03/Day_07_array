#!/bin/bash -x

for ((i=0; i<10; i++))
do
	random=$((RANDOM%900 + 100));
        randomNumber[$i]="$random";

done
echo ${randomNumber[@]}
secondlargest=$(printf '%s\n' "${randomNumber[@]}" | sort -n | tail -2 | head -1)
secondsmallest=$(printf '%s\n' "${randomNumber[@]}" | sort -n | head -2 | tail -1)
echo $secondlargest
echo $secondsmallest
