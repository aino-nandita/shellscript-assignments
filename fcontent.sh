#!/bin/sh
# 2nd Assignment
#Print the content of the file

PrintContent()
{
	#echo "Enter your filename: "
	#read VAR  #taking this file only as the value of the variable from the user so as to print the content of this file on the console.
	cat $0  #prints the contents of the file.
}

PrintContent
