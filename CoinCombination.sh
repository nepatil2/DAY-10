#!/bin/bash -x


#for UC-1
coinFlip=$((RANDOM%2))
head=1

if [ $head -eq $coinFlip ]
then
        echo "Its Heads"
else
        echo "Its Tails"
fi


#for UC-2
declare -A coin

read -p "Enter the number" n
i=1
while [ $i -le $n ]
do
        coinFlip1=$((RANDOM%2))
        coin[$i]=$coinFlip1
        if [ $coinFlip1 -eq 1 ]
        then
                echo "Its Heads"
                H[$i]=$coinFlip1
        else
                echo "Its Tails"
                T[$i]=$coinFlip1
        fi
        i=$(( $i+1 ))
done
echo ${#H[@]} "Head" [${!H[@]}]
echo ${#T[@]} "Tail" [${!T[@]}]

percent=$(( (${#H[@]}/$n) * 100))
echo $percent

percent1=$(( (${#T[@]}/$n) * 100))
echo $percent1



#For UC-3
declare -A coin2

read -p "Enter the number" n2
i2=1
while [ $i2 -le $n2 ]
do
        coinFlip2=$((RANDOM%2))
        coin[$i2]=$coinFlip2
        if [ $coinFlip2 -eq 1 ]
        then
                2coinFlip=$((RANDOM%2))
                if [ $2coinFlip -eq 1 ]
                then
                echo "Its Heads"
                H[$i2]=$coinFlip2
                fi
        else
		echo "Its Tails"
                T[$i2]=$coinFlip2
        fi
        i2=$(( $i2+1 ))
done

echo ${#H[@]} "Head" [${!H[@]}]
echo ${#T[@]} "Tail" [${!T[@]}]

percent=$(( (${#H[@]}/$n2) * 100))
echo $percent

percent1=$(( (${#T[@]}/$n2) * 100))
echo $percent1

 #For UC-4
declare -A coin3

read -p "Enter the number" n3
i3=1
while [ $i3 -le $n3 ]
do
        coinFlip3=$((RANDOM%2))
        coin[$i3]=$coinFlip3
        if [ $coinFlip3 -eq 1 ]
        then
                3coinFlip=$((RANDOM%2))
                if [ $3coinFlip -eq 1 ]
                then
                echo "Its Heads"
                H[$i3]=$coinFlip3
                fi
        else
                echo "Its Tails"
                T[$i3]=$coinFlip3
        fi
        i3=$(( $i3+1 ))
done
echo ${#H[@]} "Head" [${!H[@]}]
echo ${#T[@]} "Tail" [${!T[@]}]

percent=$(( (${#H[@]}/$n3) * 100))
echo $percent

percent1=$(( (${#T[@]}/$n3) * 100))
echo $percent1
