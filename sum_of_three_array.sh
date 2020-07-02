#!/bin/bash -x 
 
count=0; 
 
Arr[ ((count++)) ]=0 
 
Arr[ ((count++)) ]=-1 
 
Arr[ ((count++)) ]=2 
 
Arr[ ((count++)) ]=-3 
 
Arr[ ((count++)) ]=1 
 
echo Array elements are: ${Arr[@]} 
 
echo "Following are three elements whos sum is zero:" 
 
n=${#Arr[@]} 
 
found=1 
 
for (( i=0; i<$n-2; i++ )) 
 
do 
for (( j=$i+1; j<$n-1; j++ )) 
 
do 
for (( k=$j+1; k<$n; k++ )) 
 
do 
sum=$(( ${Arr[i]} + ${Arr[j]} + ${Arr[k]} )) 
 
if [ $sum -eq 0 ] 
 
then 
 
echo ${Arr[i]} " " ${Arr[j]} " " ${Arr[k]} = $sum 
 
echo "  " 
 
found=1 
 
fi 
 
done 
done 
done 
 
if [ $found -eq 0 ] 
 
then 
echo "Not exists" 
fi

