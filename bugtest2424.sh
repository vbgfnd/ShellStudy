#!/bin/bash

suffix=1
for var1 in 0 1 2 4 3 5 6 7
do
    for var2 in 0 1 2 4 3 5 6 7
    do
        for var3 in 0 1 2 4 3 5 6 7
        do
            file=test${suffix}
            touch "$file"
            chmod $var1$var2$var3 $file 
            suffix=$(($suffix + 1))
        done
    done
done

ls -l > list.txt