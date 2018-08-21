#!/bin/bash
filename=echo 'pwd'
filename="$filename tickets_list.txt"
xclip -o > tickets_list.txt
filelines=`cat $filename`
echo Start
for line in $filelines ; do
	if [[ $line =~ ^[A-Z]{2,5}-[0-9]{,4}+$ ]];	then
		xdg-open "https://corevist.atlassian.net/browse/$line"
	fi
done
exit