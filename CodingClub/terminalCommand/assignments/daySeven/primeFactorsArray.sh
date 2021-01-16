#!/bin/bash -x
read -p "Enter the first number : " number
prime=$number
index=0
for (( i=2;i<$number/2;i++ ))
do
        count=0
        for (( j=2;j<$i;j++ ))
        do
                if [[ $i%$j -eq 0 ]]
                then
                        count=1;
                        break;
                fi
        done
        if [[ count -eq 0 ]]
        then
                while [[ $prime%$i -eq 0 ]]
                do
		array[((index))]=$i
                prime=$(($prime/$i))
   		((index++))
                done
        fi
done
echo ${array[@]}
