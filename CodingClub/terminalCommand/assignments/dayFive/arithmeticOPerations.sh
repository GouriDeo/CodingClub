#!/bin/bash -x
max=0
min=10000
read -p "First number: " a
read -p "Second number: " b
read -p "Third number: " c
option1=$(($a+$b*$c))
option2=$(($a%$b+$c))
option3=$(($c+$a*$b))
option4=$(($a*$b*$c))
for((i=1;i<5;i++))
do
Array[((i))]=$(("option"$i))
done
for i in "${Array[@]}"
do
if [[ $i -ge $max ]]
then
	max=$i
fi
if [[ $i -le $min ]]
then
	min=$i
fi
done
echo "Greatest number is: "$max
echo "Samllest number is: "$min
