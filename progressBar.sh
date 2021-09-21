#!/bin/bash
i=0
icon=''
arr=('|' '/' '-' '\\')
index=0
while [ $i -le 100 ]
do
    index=`echo $i%4`
    printf "[%-100s][%3d%%][%c]\r" "$icon" "$i" "${arr[$index]}"
    icon='>'$icon
    ((i++))
    sleep 0.1
done
echo