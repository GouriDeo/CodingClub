#!/bin/bash -x
minNum=1000
maxNum=0
for ((i=0;i<5;i++))
do
random=$(( 100 + RANDOM%999 ))
if [[ $random -ge $maxNum ]]
then
	maxNum=$random
fi
if [[ $random -le $minNum ]]
then
	minNum=$random
fi
done
echo "Maximum number is" $maxNum
echo "Minimum number is" $minNum
