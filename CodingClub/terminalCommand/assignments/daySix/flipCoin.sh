#!/bin/bash -x
head=0
tail=0
while [[ $tail -ne 11 || $head -ne 11 ]]
do
	flip=$((RANDOM%2))
	if [[ $flip -eq 0 ]]
        then
                echo "Head: "$head
                ((head++))
        else
                echo "Tail: "$tail
                ((tail++))
        fi
	if [[ $head -eq 11 || $tail -eq 11 ]]
	then
	break
	fi
done
echo $head
echo $tail

