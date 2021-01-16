#!/bin/bash -x
diceOne=$((RANDOM%6+1))
diceTwo=$((RANDOM%6+1))
sum=$(($diceOne + $diceTwo))
echo $sum
