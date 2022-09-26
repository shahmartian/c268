#!/bin/bash

#Avtivity	: 11
#Description	: Read file
#Author		: Bhavya

filename="/home/ec2-user/scripts/activity11.txt"
arr=()
while read line;
do 
	arr+=($line)
done < $filename
	echo "List: ${arr[@]}" 
echo "Reverse List:" 
echo ${arr[@]} | tr " " "\n" | sort -nur | tr "\n" " " #echo ${arr[@]} | tr " " "\n" | sort -nur

echo " "



exit 0
