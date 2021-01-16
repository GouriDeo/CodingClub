#!/bin/bash -x
read -p "Enter the number" number
harmonic=0
for ((i=1;i<=number;i++))
do
	harmonic=$(($harmonic+(1000/$i)))
	printf %.3f "$(($harmonic))e-3"
done


