#!/bin/bash -x
read -p "Enter the number: " a
read -p "Enter the number: " b
read -p "Enter the number: " c
declare -A option
option[1]=$(($a+$c*$c))
option[2]=$(($a*$c+$c))
option[3]=$(($c+$a/$c))
option[4]=$(($a%$b+$c))
for ((i=1;i<=4;i++))
do
        array[((i))]=${option[$i]}
done
echo ${array[@]}
function decendingOrder() {
for ((i=0;i<4;i++))
do
        flag=0
        for ((j=0;j<4-$i;j++))
        do
                if [[ ${array[j]} -lt ${array[j+1]} ]]
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

echo "Sorted array in decending order: "${array[@]}
}
decendingOrder;
