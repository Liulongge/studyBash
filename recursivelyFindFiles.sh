#! /bin/bash

for file in ./*
do
    if test -f $file
    then
        echo $file 是文件
    fi
    if test -d $file
    then
        echo $file 是目录
    fi
done

function read_dir() {
	for file in `ls $1`
	do
        if [ -d $1"/"$file ]; # 判断是否是目录，是目录则递归
        then
            read_dir $1"/"$file
        elif [ -f $1"/"$file ]; # 判断是否是文件，判断类型，拷贝文件
        then
            if [ "${file##*.}"x = "a"x ];then # 判断文件类型是否为“.a”，通过后缀判断 
                echo $1"/"$file
                # cp $1"/"$file ../lib/$file # 拷贝文件到...目录下
            fi
        else
            echo $1"/"$file
        fi
    done
}

path='../'
read_dir $path
     
