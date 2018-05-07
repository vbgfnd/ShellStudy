#!/bin/bash

a=(0 1 2 3 4 5 6 7 8 9 )

for((i=0;i<10;i++))
do
	num=''
	for((b=0;b<10;b++))
	do
		num=$num${a[$RANDOM % 10]}
	done
	touch file_$num.txt
done
