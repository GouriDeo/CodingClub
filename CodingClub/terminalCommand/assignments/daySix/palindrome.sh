#!/bin/bash -x
read -p "Enter the first number: " firstNumber
read -p "Enter the second number: " secondNumber
function palindrome() {
	local number=$1
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
		echo Number $number is palindrome
	else
		echo Number $number is not palindrome
	fi
}
check="$( palindrome $firstNumber )"
check="$( palindrome $secondNumber)"
