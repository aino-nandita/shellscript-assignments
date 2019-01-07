#!/bin/sh

FILE= echo "Enter the fine name: "
read FILE

WordCount() {
if [ -f /home/intern2/Desktop/$FILE ]
then 
	if [ -s /home/intern2/Desktop/$FILE ]
	then 
		echo "file exists and is non-empty!"
	else
		echo "file exists but it's empty!"
else
	echo "file doesn't exits! Enter a valid file name!"
	fi
}

WordCount $FILE
