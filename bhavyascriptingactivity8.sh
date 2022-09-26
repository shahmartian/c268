#!/bin/bash

# Author	: Bhavya
# Activity	: 8
# Description	: Integers

#defining variables
mul=1 
sum=0

declare -a arr
while [ ${#arr[@]} -lt 10 ]; #entering 10 integers
do
	echo "Array Length: ${#arr[@]}" #print length of array
	if [ ${#arr[@]} -eq 5 ]; #if array length more than 5
	then
		read -p "Do you wish to continue? Y/N: " ANS
		if [ $ANS == "Y" ]
		then
			read -p "Enter your next Integer: " INTEGER
			arr+=($INTEGER)
			mul=$(( mul * INTEGER ))
			sum=$(( sum + INTEGER ))
		else
			break 
		fi
	else
		read -p "Enter your next integer: " NEXTINTEGER
		arr+=($NEXTINTEGER)
		mul=$(( mul * NEXTINTEGER ))
		sum=$(( sum + NEXTINTEGER ))
	fi
done
echo "Input: ${arr[@]}"
echo "Multiplication: $mul"
echo "Sum: $sum"
echo "Avg: $(( sum / ${#arr[@]} ))"
MIN=${arr[0]} 
MAX=$MIN

for i in ${arr[@]}; do
	if [ $i -gt $MAX ]
	then
		#echo "Pre-max $MAX"
		MAX=$i
		#echo "Post-Max $MAX"
	fi
	if [ $i -lt $MIN ]
	then
		#echo "Pre-min $MIN"
		MIN=$i
		#echo "Post-in $MIN"
	fi
done
echo "Minimum value: $MIN"
echo "Maximum Value: $MAX"

exit 0











exit 0
