#!/bin/bash
#选项后面的冒号表示该选项需要参数
while getopts "a:bc" arg
do
    case $arg in
        a)
        #参数存在$OPTARG中
        echo "a's arg:$OPTARG" ;;
        b) echo "b" ;;
        c) echo "c" ;; 
        ?) echo "unkonw argument" exit 1 ;;
        #当有不认识的选项的时候arg为?     
        esac
done