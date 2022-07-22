#!/bin/bash -x

read -p "enter a number: " n

prime=(2 3)


for ((i=4; i<=$n; i++))
do
	echo $i
	halfNum=$(($i/2))
	condition=1				#1 is for prime; 0 is for not prime
	for ((j=2; j<=$halfNum; j++))
	do
		k=$(($i%$j))
		if [ $k -eq 0 ]
		then
			condition=0
		fi
	done

	if [ $condition -eq 1 ]
	then
		prime+=($i)
		echo ${prime[@]}
	fi

done
echo ${prime[@]}
