#!/bin/bash -x
read -p  "Enter the number: " number
function prime() {
	count=0
	for ((i=2;i<$number;i++))
	do
	        if [[ $number%$i -eq 0 ]]
	        then
	                count=1
	                break
	        fi
	done
	echo $count
	if [[ count -eq 0 ]]
	then
	        echo "The number is prime"
	else
	        echo "The number is not prime"
	fi
}
function palindrome() {
	reverse=0
        num=$number
        while [ $num -gt 0 ]
        do
                add=$num%10
                reverse=$((($reverse*10)+add))
                num=$(($num/10))
        done
        if [[ $number -eq $reverse ]]
        then
                echo "Number is palindrome"
        else
                echo "The number is not palindrome"
        fi
}
check="$( palindrome $number )"
check="$( prime $number )"
