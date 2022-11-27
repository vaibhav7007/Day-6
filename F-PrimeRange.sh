#!/bin/bash -x

echo "Enter the first range: "
read first
echo "Enter the last range: "
read last

echo "The prime numbers with in the range" $first "and" $last "is: "

for (( n=$first; n<=$last; n++))
do
	count=0
	for (( a=1; a<=$n; a++))
	do
		if (($n%a==0))
		then
			((count++))
		fi
	done
	if (($count==2))
	then
		echo $n
	fi
done
