#!/bin/bash -x

count=0
count1=0


while (($count<11 && $count1<11))
do
	checkRandom=$((RANDOM%2))
	case $checkRandom in
				0)
					echo "Head"
					((count++))
				;;
				1)
					echo "Tail"
					((count1++))
				;;
	esac
done
echo "Total number of Heads is: $count"
echo "Total number of Tails is: $count1"
