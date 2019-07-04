#!/bin/bash

date=`date +%Y%m%k%M`


for((ii=0;ii<10;ii++))
do
	a=''
	for((i=0;i<10;i++))
	do
		a=$a$(($RANDOM % 5))
	done
	touch file_$a.txt
	echo $i
	echo $a
done
echo test