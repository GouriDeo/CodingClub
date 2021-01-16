#!/bin/bash -x
declare -A die
for ((i=1;i<7;i++))
do
	die[$i]=0
done
while [[ ${die[@]} -le 10 ]]
do
	random=$((1+RANDOM%6))
	die[$random]=$((${die[$random]}+1))
done
echo ${!die[@]}
echo ${die[@]}
