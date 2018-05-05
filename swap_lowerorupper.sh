#!/bin/bash


echo "转换字符串大小写"
if [ "$#" = "0" ]; then
        echo -e "use: \n command lower 'string' \n command upper 'string'"
        exit 0
fi

if [  $# -gt 2 ]; then
        echo "para error please input 'command help'"
        echo "more than 2 para"
        exit 0
fi

case $1 in
"help")
        echo -e "use: \n command lower 'string' \n command upper 'string'"
        exit 0
        ;;
"lower")
        echo $2 | tr '[A-Z]' '[a-z]'
        ;;
"upper")
        echo $2 | tr '[a-z]' '[A-Z]'
        ;;
*)
        echo "para error please input 'command help'"
        ;;
esac
