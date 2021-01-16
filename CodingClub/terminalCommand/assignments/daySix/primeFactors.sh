#!/bin/bash -x
read -p "Enter the number : " number
prime=$number
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
		echo $i  "prime fact"
		prime=$(($prime/$i))
        	done
	fi
done
