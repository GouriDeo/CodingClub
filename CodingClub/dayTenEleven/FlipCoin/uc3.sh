#!/bin/bash -x
head=0
tail=0
while [[ $head -ne 21 && $tail -ne 21 ]]
do
        random=$((RANDOM%2))
        if [[ random -eq 1 ]]
        then
                ((head++))
        else
                ((tail++))
        fi
done
