#!/bin/sh

FILE= echo "Enter the name of the file"
read FILE

starting_char() {
	if [ -f /home/intern2/Desktop/$1 ]
	then
		echo "Enter your character to match: "
		read char
		grep -E '^'$char $1
	else 
		echo "Enter a valid file name"
	fi
}

ending_char() {
	if [ -f /home/intern2/Desktop/$1 ]
	then
		echo "Enter your character to match: "
		read char
		grep -E --color=always $char'\b' $1
	else 
		echo "Enter a valid file name"
	fi
}

pattern() {
	if [ -f /home/intern2/Desktop/$1 ]
	then
		echo "Enter your pattern to match: "
		read pattern
		grep --color=always "$pattern" $1
	else 
		echo "Enter a valid file name"
	fi
}

reg_exp() {
	if [ -f /home/intern2/Desktop/$1 ]
	then
		echo "Enter your pattern to match after 2 characters from starting"
		read pattern
		grep --color=always "^[a-z][a-z]$pattern" $1

	else 
		echo "Enter a valid file name"
	fi
}

firstnchar() {
	if [ -f /home/intern2/Desktop/$1 ]
	then
		echo "initial n characters you want: "
		read num
		grep -o --color=always '^.\{'$num'\}' $1

	else 
		echo "Enter a valid file name"
	fi
}

lastnchar() {
	if [ -f /home/intern2/Desktop/$1 ]
	then
		echo "last n characters you want: "
		read num
		grep -o --color=always '.\{'$num'\}$' $1

	else 
		echo "Enter a valid file name"
	fi
}

while :
do 

echo -e "Select your option: \n1)starting from an alpha \n2)ending with an alpha \n3)match a pattern \n4)match words skipping two characters from the start \n5)first n characters \n6)last n characters "
 
read option
case "$option" in
	1) starting_char $FILE

	;;

	2) ending_char $FILE
	
	;;

	3) pattern $FILE

	;;

	4) reg_exp $FILE
	
	;;

	5) firstnchar $FILE
	
	;;

	6) lastnchar $FILE
	exit 1
	
	;;


	*) echo "Option is invalid! Please enter a valid option "
		echo "please enter an option to continue"
		read enterKey ;;
esac
done

