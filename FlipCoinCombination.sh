#!/bin/bash -x
heads=1
tails=0
for ((i=1; i<=50; i++))
do
combination1=$((RANDOM%2))
combination2=$((RANDOM%2))
combination3=$((RANDOM%2))
if (( $combination1 == $heads && $combination2 == $heads && $combination3 == $heads ))
then
	Hhh=$((Hhh+1))
	 flip[$i]="HHH"
fi
if (( $combination1 == $heads && $combination2 == $heads && $combination3 == $tails ))
then
        Hht=$((Hht+1))
         flip[$i]="HHT"
fi

if (( $combination1 == $heads && $combination2 == $tails && $combination3 == $heads ))
then
        Hth=$((Hth+1))
         flip[$i]="HTH"
fi

if (( $combination1 == $heads && $combination2 == $tails && $combination3 == $tails ))
then
        Htt=$((Htt+1))
         flip[$i]="HTT"
fi

if (( $combination1 == $tails && $combination2 == $heads && $combination3 == $heads ))
then
        Thh=$((Thh+1))
         flip[$i]="THH"
fi

if (( $combination1 == $tails && $combination2 == $heads && $combination3 == $tails ))
then
        Tht=$((Tht+1))
         flip[$i]="THT"
fi

if (( $combination1 == $tails && $combination2 == $tails && $combination3 == $heads ))
then
        Tth=$((Tth+1))
         flip[$i]="TTH"
fi

if (( $combination1 == $tails && $combination2 == $tails && $combination3 == $tails ))
then
        Ttt=$((Ttt+1))
         flip[$i]="TTT"
fi

done
echo ${flip[@]}
mul1=$((Hhh*100))
per1=$((mul1/50))
echo "HHH PERCENTAGE Of OCCURANCE IS" $per1 "%"
mul2=$((Hht*100))
per2=$((mul2/50))
echo "HHT PERCENTAGE Of OCCURANCE IS" $per2 "%"
mul3=$((Hth*100))
per3=$((mul3/50))
echo "HTH PERCENTAGE Of OCCURANCE IS" $per3 "%"
mul4=$((Htt*100))
per4=$((mul4/50))
echo "HTT PERCENTAGE Of OCCURANCE IS" $per4 "%"
mul5=$((Thh*100))
per5=$((mul5/50))
echo "THH PERCENTAGE Of OCCURANCE IS" $per5 "%"
mul6=$((Tht*100))
per6=$((mul6/50))
echo "HHT PERCENTAGE Of OCCURANCE IS" $per6 "%"
mul7=$((Tth*100))
per7=$((mul7/50))
echo "TTH PERCENTAGE Of OCCURANCE IS" $per7 "%"
mul8=$((Ttt*100))
per8=$((mul8/50))
echo "TTT PERCENTAGE Of OCCURANCE IS" $per8 "%"
