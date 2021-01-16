#!/bin/bash -x
smallest=1000
secondSmallest=0
highest=0
secondHighest=0
for ((i=0;i<10;i++))
do
	random=$((100+RANDOM%999))
	array[((i))]=$random
done
for i in "${array[@]}"
do
	if [[ $i -gt $highest ]]
	then
		secondHighest=$highest
		highest=$i
	elif [[ $i -gt $secondHighest ]]
	then
		secondHighest=$i
	fi
	if [[ $i -lt $smallest ]]
	then
		secondSmallest=$smallest
		smallest=$i
	elif [[ $i -lt $secondSmallest ]]
	then
		secondSmallest=$i
	fi
done
echo $secondHighest

echo $secondSmallest
