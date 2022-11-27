#!/bin/bash -x

rslt=1
echo "Enter a range: "
read n

for ((a=1; a<=$n; a++))
do
	rslt=$(($rslt*2))
	echo $rslt
done
