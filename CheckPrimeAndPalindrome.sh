#!/bin/bash -x

sum=0
count=0

function palindrom()
{
while ((num>0))
do
        a=$(($num%10))
        sum=$((($sum*10)+$a))
        num=$(($num/10))
done
}

function prime()
{
for (( a=1; a<=$temp; a++))
do
        if (($temp%a==0))
        then
                ((count++))
        fi
done
}

echo "Please enter a number to check: "
read num

temp=$num

prime $temp

if (($count==2))
then
	palindrom $num
	if (($temp==$sum))
	then
		echo "The Given number is Palindrom and Prime number"
	else
		echo "The number is prime but not palindrome"
	fi
else
	echo "The give number is not palindrom and not prime number"
fi

