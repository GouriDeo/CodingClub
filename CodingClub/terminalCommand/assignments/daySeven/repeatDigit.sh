#!/bin/bash -x
index=0
for ((i=0;i<=100;i++))
do
	num=$i
	reverse=0
	while [[ $num -gt 0 ]]
	do
		add=$num%10
		reverse=$((($reverse*10)+$add))
		num=$(($num/10))
	done
	if [[ $i -eq $reverse && ${#i} -eq 2 ]]
	then
		array[((index))]=$i
		((index++))
	fi
done
echo ${array[@]}
