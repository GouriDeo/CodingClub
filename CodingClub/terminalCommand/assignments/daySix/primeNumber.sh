#!/bin/bash -x
read -p  "Enter the number: " number
count=0
for ((i=2;i<number;i++))
do	
	if [[ $number%$i -eq 0 ]]
	then
		count=1
		break
	fi
done
if [[ count -eq 0 ]]
then
	echo Prime number
else
	echo NOt prime number
fi
