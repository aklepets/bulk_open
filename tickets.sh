#!/bin/bash
filename=echo 'pwd'
filename="$filename tickets_list.txt"
xclip -o > tickets_list.txt
filelines=`cat $filename`
echo Start
for line in $filelines ; do
	if [[ $line =~ ^[0-9]+$ ]]
	then
		pathh=`cat path` 
		xdg-open  "$pathh$line"
	fi
done
exit