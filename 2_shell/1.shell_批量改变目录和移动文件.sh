#!/bin/bash

# 无法判断最后一个文件

dir=`ls` #定义遍历的目录
for i in $dir
do
    
    if [ -d $i/代码 ]
    then
        mv $i/代码 $i/code
    fi
    
    if [ -d $i/课件 ]
    then
        rm $i/课件/Slide01.PNG
        mv $i/课件/* $i
        rm $i/课件 -r
    fi
done 