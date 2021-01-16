#!/bin/bash -x
count=0
read -p "Enter no. of times want to repeat the loop" number
while [[ $count -ne $number ]]
do
	random=$((RANDOM%2))
	if [[ $random -eq 1 ]]
	then
		echo "Head"
	else
		echo "Tail"
	fi
	((count++))
done
