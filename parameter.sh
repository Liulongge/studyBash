#!/bin/bash
# author:菜鸟教程
# url:www.runoob.com

echo "Shell 传递参数实例！";
echo "传递到脚本的参数个数：$#"
echo "运行脚本的当前进程id：$$"
echo "执行的文件名：$0";
echo "第一个参数为：$1";
echo "第二个参数为：$2";
echo "第三个参数为：$3";

echo "-- \$* 演示 ---"
for i in "$*"; do
    echo $i
done

echo "-- \$@ 演示 ---"
for i in "$@"; do
    echo $i
done

echo "----------------"
plantform="mac";


for i in "$*"; do
    echo $i
    if [ "$i" == "x86" ]; then
        echo "x86";
    else
        echo "arm"
    fi
done


# 大小写转换
NAME=$(echo $1 | tr '[A-Z]' '[a-z]')
echo "${NAME}"

# 获取当前根路径（绝对路径）
root_path="$(cd "$(dirname $0)" ; pwd)"
echo ${root_path}