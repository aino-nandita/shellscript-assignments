#!/bin/sh
# 1st assignment
#Parse a String and print it on console

STR= echo "Enter the String: " #Taking the input from the user 
read STR 

PrintString() #and parsing 
{   
	
	echo "OUTPUT: $1" #displaying the value of the String on console.
}

PrintString $STR
