#!/bin/bash -x
read -p "Enter the first number of range: " firstNum
read -p "Enter the last number of range: " lastNum
for (( i=$firstNum;i<$lastNum;i++ ))
do
	count=0
	for (( j=2;j<$i;j++ ))
	do
		if [[ $i%$j -eq 0 ]]
		then
			count=1;
			break;
		fi
	done
	if [[ count -eq 0 ]]
	then
		echo $i "is prime number"
	fi
done
