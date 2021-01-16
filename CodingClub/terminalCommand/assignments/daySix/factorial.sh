#!/bin/bash -x
read -p "Enter the number " number
fact=1
for ((i=$number;i>1;i--))
do
	fact=$(($fact*$i))
done
echo $fact
