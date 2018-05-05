#!/bin/bash

echo "自动转换大小写字母"
echo "usage:"
echo "command help"
echo "command 'string'"

if [ "$#" -eq 0 ]||[ "$#" -gt 1 ];then
        echo -e "para error,please input: comand string"
        exit 0
fi

str=$1
str1=""

for((i=0;i<${#str};i++))
do
        if [[ ${str:i:1} =~ [a-z] ]];then
                tmp=`echo ${str:i:1} | tr [a-z] [A-Z]`
                str1=${str1}${tmp}
        elif [[ ${str:i:1} =~ [A-Z] ]];then
                tmp=`echo ${str:i:1} | tr [A-Z] [a-z]`
                str1=${str1}${tmp}      
        fi
done
echo $str1
exit 0
