#!/bin/bash -x
sum=0
for ((i=1;i<4;i++))
do
	read -p "Enter the three numbers $i " number
	array[((i))]=$number
	sum=$(($sum+${array[i]}))
done
echo ${array[@]}
echo $sum
if [[ $sum -eq 0 ]]
then
	echo sum is equal to zero
else
	echo sum is not equal to zero
fi
