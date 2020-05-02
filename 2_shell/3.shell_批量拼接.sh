#!/bin/bash



#目录下指定后缀的文件个数
function file_count {

    count=0;
    for c in `ls $1/*.png`
    do
        let count=$count+1
    done
    
    return $count
}


for i in `ls 1_computer_fundamental`
do

    file_count 1_computer_fundamental/$i
    ret=$?
    echo "$i : $ret"

    #配置Config.ini文件
    echo -e "[SYSTEM]\nnum = $ret\nrow = $ret\ncol = 1" > ../PNG拼图软件/Config.ini
    
    #清空文件
    rm ../PNG拼图软件/in/* -f
    #rm ../PNG拼图软件/out/* -f
    
    #移动文件
    mv 1_computer_fundamental/$i/*.png ../PNG拼图软件/in
    
    #执行程序,该工具需在当前目录下执行
    cd ../PNG拼图软件
    ./一键拼图.exe
    cd -
    
    #移回文件
    #mv ../PNG拼图软件/out/1.png 1_computer_fundamental/$i/readme_$i.png
    mv ../PNG拼图软件/out/1.png ../PNG拼图软件/out/readme_$i.png
done



