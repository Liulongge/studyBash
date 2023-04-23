#!/bin/bash
 
function showArr(){
 
    arr=$1
 
    for i in ${arr[*]}; do
        echo $i
    done
 
}
 
regions=("GZ" "SH" "BJ")
 
showArr "${regions[*]}"
 