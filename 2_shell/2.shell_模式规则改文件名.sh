#!/bin/bash

# 命令行参数 目录

function rename {
    for i in `ls $1/*.PNG $1/*.png`
    do
        var=${i#*Slide}
        var=${var%.*}
        let var=10#$var-1
        
        pre=${i%Slide*}
        var=$pre$var.png
        
        echo "$i -> $var"
        mv $i $var
    done
}

dir=./1_computer_fundamental

if [ -d $dir ]
then
    for i in `ls $dir`
    do
        if [ -d $dir/$i ]
        then
            rename $dir/$i
        fi
    done
else
    echo "error : not dir!!"
fi

