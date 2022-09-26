#!/bin/bash

#Description: Best Day ever
#Author: Bhavya
#Purpose: Learning Bash scripting

day=$1
compliment=$2

user=$(whoami)
today=$(date)
Currentworkingdirectory=$(pwd)


read -p "Enter your name:" chuck
	echo " Good Morning $chuck"
	sleep 1
	echo "You're looking good $day $chuck"
	sleep 1
	echo "You have the best $compliment I've ever seen $chuck"
sleep 1
echo "You are currently logged on as $user and your are in the directory $Currentworkingdirectory and todays is $today"

exit 0

