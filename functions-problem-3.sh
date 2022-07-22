#!/bin/bash -x

function primeCheck()
{
	condition=1				#1 is for prime, 0 is for not prime
	halfNum=$(($num/2))
	for ((i=2; i<=$halfNum; i++))
	do
		k=$(($num%$i))
		if [ $k -eq 0 ]
		then
			condition=0
		fi
	done

	if [ $condition -eq 0 ]
	then
		echo "Not prime"
		p="Not prime"
	else
		echo "Prime"
		p="Prime"
	fi
	#echo $condition
}

function genPalindrome()
{
	pNum=0
	while [ $num -gt 0 ]
	do
		a=$(($num%10))
		num=$(($num/10))
		pNum=$(( ($pNum*10) + $a ))
	done
	echo $pNum
}

read -p "enter a number: " n
g=$n
num=$n

primeCheck $num
d=$p
genPalindrome $num
e=$pNum
num=$pNum
primeCheck $num
f=$p

echo "Entered number is $g which is $d , and its palindrome is $e which is $f ."
