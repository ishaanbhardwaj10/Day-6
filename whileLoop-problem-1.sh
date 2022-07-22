#!/bin/bash -x

read -p "Enter a number: " n

power=1
x=0

while [[ $power -le $n && $x -lt 256 ]]		#using lt instead of le (in second case)
do						#to avoid an extra iteration
	x=$((2**$power))
	echo $x

	((power++))
done
