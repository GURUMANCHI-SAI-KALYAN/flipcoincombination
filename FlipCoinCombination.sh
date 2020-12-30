#!/bin/bash -x
combination=$((RANDOM%2))
if (( $combination == 1))
then
	echo "Heads"
else
	echo "Tails"
fi
