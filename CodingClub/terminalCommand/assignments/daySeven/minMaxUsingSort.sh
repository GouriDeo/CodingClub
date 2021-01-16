#!/bin/bash -x
for ((i=0;i<10;i++))
do
        random=$((100+RANDOM%999))
        array[((i))]=$random
done
echo ${array[@]}
for ((i=0;i<10;i++))
do
	flag=0
	for ((j=0;j<9-$i;j++))
	do	
		if [[ ${array[j]} -gt ${array[j+1]} ]]
		then	
			temp=${array[j]}
			array[j]=${array[j+1]}
			array[j+1]=$temp
			flag=1
		fi
	done
	if [[ $flag -eq 0 ]]
	then
		break;
	fi
done
echo "${array[@]}"
