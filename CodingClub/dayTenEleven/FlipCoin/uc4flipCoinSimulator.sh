#!/bin/bash -x
head=0
tail=0
limit=21
while [[ $head -ne $limit && $tail -ne $limit ]]
do
	random=$((RANDOM%2))
	if [[ random -eq 1 ]]
	then
		((head++))
		echo $head
	else
		((tail++))
		echo $tail
	fi
	if [[ ( $head -ge 20 ) && ( $tail -ge 20 ) && ( $head -eq $tail ) ]]
	then
		limit=$limit+1
	fi

done
	if [[ $head -gt $tail ]]
	then
		echo "head wins by "$(($head-$tail))
	else
		echo "tail wins by "$(($tail-$head))
	fi
