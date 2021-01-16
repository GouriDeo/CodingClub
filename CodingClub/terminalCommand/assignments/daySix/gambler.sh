#!/bin/bash -x
money=100
won=0
lose=0
random=0
bet=0
while [[ money -ne 200 ]]
do
	random=$((RANDOM%2))
	if [[ $random -eq 0 ]]
	then
		lose=$(($lose+1))
		money=$(($money-1))
	else
		win=$(($win+1))
		money=$(($money+1))
	fi
	if [[ $money -eq 0 ]]
	then
		break
	fi
	bet=$(($bet+1))
done
