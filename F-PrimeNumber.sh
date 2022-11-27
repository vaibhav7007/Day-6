#!/bin/bash -x

count=0
echo "enter a number to check prime or not:"
read num

for (( a=1; a<=$num; a++))
do
	if (($num%a==0))
	then
		((count++))
	fi
done

if (($count==2))
then
	echo "This number is a prime number"
else
	echo "This number is not a prime number"
fi
