#!/bin/bash -x
read -p "Enter Number:" number;
k=0;
for (( i=2;i*i<=$number;i++ ))
do
   if [ $(($number%$i)) -eq 0 ]
   then
      factor=$i
      count=0;
      for(( j=1;j<=$factor;j++ ))
      do
         n=$(($factor%$j));
         if [ $n -eq 0 ];
         then
            count=$(($count+1));
         fi
      done
      if [ $count -eq 2 ];
      then
         primeFactors[$k]="$factor";
			k=$(($k+1));
      fi
   fi
done
echo ${primeFactors[@]};
