#!/bin/bash -x
heads=1
tails=0
for ((i=1; i<=50; i++))
do
combination1=$((RANDOM%2))
combination2=$((RANDOM%2))
if (( $combination1 == $heads && $combination2 == $heads ))
then
	Hh=$((Hh+1))
	 flip[$i]="HH"
fi
if (( $combination1 == $tails && $combination2 == $tails ))
then
	Tt=$((Tt+1))
	flip[$i]="TT"
fi
if (( $combination1 == $heads && $combination2 == $tails ))
then
	Ht=$((Ht+1))
        flip[$i]="HT"
fi
if (( $combination1 == $tails && $combination2 == $heads ))
then
        Th=$((Th+1))
        flip[$i]="TH"
fi

done
echo ${flip[@]}
mul1=$((Hh*100))
perhh=$((mul1/50))
echo "HH PERCENTAGE Of OCCURANCE IS" $perhh "%"

mul2=$((Tt*100))
pertt=$((mul2/50))
echo "TT PERCENTAGE Of OCCURANCE IS" $pertt "%"

mul3=$((Ht*100))
perht=$((mul3/50))
echo "HH PERCENTAGE Of OCCURANCE IS" $perht "%"
mul4=$((Th*100))
perth=$((mul4/50))
echo "HH PERCENTAGE Of OCCURANCE IS" $perth "%"
