#!/bin/bash

# multiply by weightings
for i in state*dat
do
	A=$(head -2 ${i%.*}.xyz | tail -1)
	awk '{$2=$2*a;print}' a=$A $i > $i.weighted
done

# add weighted files and create final.dat
c=0
for i in *.weighted
do

	if [ $c==0 ]
	then
		cat $i > 1.tmp
	elif [ $c>1 ]
	then
		cat $i > 2.tmp
		paste 1.tmp 2.tmp | awk '{print $1 $2+$4}' > 3.tmp
		mv 3.tmp 1.tmp
	fi
	
	c=$(expr $c+1)
done

mv 1.tmp final.dat
echo "Done: 'final.dat' generated."
echo "Sum of y-values:"
awk 'BEGIN {s=0} {s+=$2} END {print s}' final.dat 

