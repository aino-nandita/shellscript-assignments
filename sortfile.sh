#!/bin/sh

FILE= echo "Enter the fine name: "
read FILE

SortCount() {
if [ -f /home/intern2/Desktop/$FILE ]
then 
	if [ -s /home/intern2/Desktop/$FILE ]
	then 
		echo -e "\nfile sorted by line by line:"
		sort $FILE

		echo -e "\nfile sorted in reverse order:"
		sort -r $FILE
		
		echo -e "\nTotal number of words: "
		wc -c $FILE

		echo -e "words sorting in ascending order: "
		cat $FILE | tr " " "\n" | sort | tr "\n" " "

		echo -e "words sorting in descending order: "
		cat -r $FILE | tr " " "\n" | sort | tr "\n" " "
	else
		echo "file is empty"
		fi
else
	echo "file doesn't exits! Enter a valid file name!"
	fi
}

SortCount $FILE
