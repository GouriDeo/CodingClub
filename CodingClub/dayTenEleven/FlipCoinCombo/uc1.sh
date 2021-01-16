#!/bin/bash -x
read -p "Enter number of times want to flip coin:" number
function sort() {
for ((i=1;i<=l;i++))
do
        flag=0
        for ((j=0;j<l-$i;j++))
        do
                if [[ ${array[j]} -gt ${array[j+1]} ]]
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
}
function singlet() {
	head=0
	tail=0
	for ((i=0;i<$number;i++))
	do
		random=$((RANDOM%2))
		if [[ $random -eq 1 ]]
		then 
			((head++))
		else
			((tail++))
		fi
	done
	headpercent=`echo $head $number | awk '{ a=$1; b=$2; res1=(a*100/b); print res1}'`
	headpercent=`echo $tail $number | awk '{ a=$1; b=$2; res2=(a*100/b); print res2}'`
	if [[ $head -gt $tail ]]
	then
		echo "$head is winner"
	else
		echo "$tail is winner"
	fi
}
function dublet() {
	HH=0
	TT=0
	HT=0
	TH=0
	for ((i=0;i<$number;i++))
	do
		random=$((RANDOM%4))
		if [[ $random -eq 1 ]]
		then
			((HH++))
		elif [[ $random -eq 2 ]]
		then
			((TT++))
		elif [[ $random -eq 3 ]]
		then
			((HT++))
		else
			((TH++))
		fi
	done
	HHpercent=`echo $HH $number | awk '{ a=$1; b=$2; res1=(a*100/b); print res1}'`
	TTpercent=`echo $TT $number | awk '{ a=$1; b=$2; res1=(a*100/b); print res1}'`
	HTpercent=`echo $HT $number | awk '{ a=$1; b=$2; res1=(a*100/b); print res1}'`
	THpercent=`echo $TH $number | awk '{ a=$1; b=$2; res1=(a*100/b); print res1}'`
l=4
array[1]=$HHpercent
array[2]=$TTpercent
array[3]=$HTpercent
array[4]=$TTpercent
sort;
}
function triplet() {
	HHH=0
	HTT=0
	HHT=0
	THH=0
	TTH=0
	TTT=0	
	for ((i=0;i<$number;i++))
	do
		random=$((RANDOM%6))
		if [[ $random -eq 1 ]]
		then
			((HHH++))
		elif [[ $random -eq 2 ]]
		then
			((HHT++))
		elif [[ $random -eq 3 ]]
                then
                        ((HHT++))
                elif [[ $random -eq 4 ]]
                then
                        ((THH++))
                elif [[ $random -eq 5 ]]
                then
                        ((TTH++))
                else
                        ((HTT++))
		fi
	done
	HHHpercent=`echo $HHH $number | awk '{ a=$1; b=$2; res1=(a*100/b); print res1}'`
        HTTpercent=`echo $HTT $number | awk '{ a=$1; b=$2; res1=(a*100/b); print res1}'`
        HHTpercent=`echo $HHT $number | awk '{ a=$1; b=$2; res1=(a*100/b); print res1}'`
        THHpercent=`echo $THH $number | awk '{ a=$1; b=$2; res1=(a*100/b); print res1}'`
        TTHpercent=`echo $TTH $number | awk '{ a=$1; b=$2; res1=(a*100/b); print res1}'`
        TTTpercent=`echo $TTT $number | awk '{ a=$1; b=$2; res1=(a*100/b); print res1}'`
}
singlet;
dublet;
triplet;
