#!/bin/bash


for i in `ls 01_tzl`
do

    #echo $i

    for j in `ls 01_tzl/$i/*.PNG`
    do
        echo $j
        
        mv $j 01_tzl/$i/1.png
        
        #echo $i
        ./pngquant.exe --force --verbose --ordered --speed=3 --quality=10-100 01_tzl/$i/1.png -o 01_tzl/$i/1.png
        mv 01_tzl/$i/1.png $j

    done

done



