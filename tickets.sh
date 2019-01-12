#!/bin/bash
filename="$filename tickets_list.txt"
pbpaste > tickets_list.txt
filelines=`cat $filename`
for line in $filelines ; do
# 	if [[ $line =~ ^[A-Za-z]{2,5}-[0-9]{,4}+$ ]];	then
		open "https://corevist.atlassian.net/browse/$line"
# 	fi
done
exit
