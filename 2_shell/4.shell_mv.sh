#!/bin/bash

for i in `ls 1_computer_fundamental/*.png`
do
    var=${i#*readme_}
    var=${var%_*}
    #echo $var
    echo `ls -d 1_computer_fundamental/$var*`
    
    mv $i `ls -d 1_computer_fundamental/$var*`
done