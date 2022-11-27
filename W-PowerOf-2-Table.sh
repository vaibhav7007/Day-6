#!/bin/bash -x

a=1
sum=1
echo "please enter the range:"
read num

while ((a<=$num))
do
	if (($sum<256))
	then
		sum=$(($sum*2))
		echo $sum
		((a++))
	else
		exit
	fi
done
