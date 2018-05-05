#!/bin/bash

filename=''
perm=''
read -p 'input filename: ' -t 3 filename

test -z "$filename" && echo "must input filename" && exit 0
if [ -d "$filename" ]; then
	echo "Filename is directory"
	test -r $filename && perm="readable"
	test -w $filename && perm="$perm writeable"
	test -x $filename && perm="$perm excuteable"
	echo "perm=$perm"
elif [ -f "$filename" ]; then
	echo "Filename is file"
	test -r $filename && perm="readable"
        test -w $filename && perm="$perm writeable"
        test -x $filename && perm="$perm excuteable"
	echo "perm=$perm"
else
	echo "File not exist"
fi
