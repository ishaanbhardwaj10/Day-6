#!/bin/bash -x

read -p "enter a number: " num

result="Prime"
halfNum=$((num/2))

for ((i=2; i<=$halfNum; i++))
do
	if [ $(($num%$i)) -eq 0 ]
	then
		result="Not prime"
	fi
done

echo $result
