#!/bin/bash

function hump_to_linux()
{
	echo $1
	sed -i "s/check/CHECK/g" $1
}

function find_files()
{
	for file in `ls $1`
	do
		if [ -d $1"/"$file ]
		then
			find_files $1"/"$file
		elif [ "$file" == "hump_type_to_linux_type.sh" ]
		then
			continue
		else
			hump_to_linux $1"/"$file
		fi
	done
}

find_files $1
