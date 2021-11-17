#!/bin/bash -x

head=1
tail=0
coinflip=$((RANDOM%2))
if [ $coinflip -eq 1 ]
then
	echo "head"
else
	echo "Tail"
fi

read -p "Enter Number: " n

for i in $n
do
	coinflip=$((RANDOM%2))
	if [ $coinflip -eq 1 ]
	then
		echo "Head"
		percent=$(($head/10 ) * 100)
		echo $percent
	else
		echo "Tail"
		percent1=$(($tail/10) * 100)
		echo $percent1
	fi
done
	
