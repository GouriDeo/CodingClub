#!/bin/bash -x
read -p "Enter the number: " number
table=1
count=0
while [ $table -ne 256 ]
do
	table=$(($table*2))
	((count++))
	echo $table
	if [[ $count -eq number ]]
	then
		break
	fi
done
