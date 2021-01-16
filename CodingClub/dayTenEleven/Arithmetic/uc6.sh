#!/bin/bash -x
read -p "Enter the number: " a
read -p "Enter the number: " b
read -p "Enter the number: " c
declare -A option
option[1]=$(($a+$c*$c))
option[2]=$(($a*$c+$c))
option[3]=$(($c+$a/$c))
option[4]=$(($a%$b+$c))
