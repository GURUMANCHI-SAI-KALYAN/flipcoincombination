#!/bin/bash -x
for ((i=0; i<=50; i++))
do
combination=$((RANDOM%2))
if (( $combination == 1))
then
	heads=$((heads+1))
	 flip[$i]=Heads
else
	tails=$((tails+1))
	flip[$i]=Tails
fi
done
echo ${flip[@]}
mul=$((heads*100))
percentage=$(($mul/50))
echo "PERCENTAGE OF HEADS COMBINATION IS" $percentage "%"
