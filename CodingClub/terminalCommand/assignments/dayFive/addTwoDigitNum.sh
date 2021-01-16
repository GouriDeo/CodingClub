#!/bin/bash -x
sum=0;
avg=0;
for((i=0;i<5;i++))
do
        num=$(( 10 + RANDOM%99 ))
        sum=$((sum+num))
done
avg=$((sum/5))
echo $avg
