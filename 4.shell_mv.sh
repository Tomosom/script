#!/bin/bash

for i in `ls 3_Makefile/*.PNG`
do
    var=${i#*readme_}
    var=${var%_*}
    #echo $var
    echo `ls -d 3_Makefile/$var*`
    
    mv $i `ls -d 3_Makefile/$var*`
done