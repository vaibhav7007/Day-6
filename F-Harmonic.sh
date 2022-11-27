#!/bin/bash -x

harmonic=0
echo "Enter a range: "
read n

for ((a=1; a<=$n; a++))
do
        rslt=$(echo | awk '{ print '1/$a'}')
	harmonic=$(echo | awk '{ print '$harmonic+$rslt'}')
done

echo "The sum is: " $harmonic



