#!/bin/sh

FILE= echo "Enter the name of the file"
read FILE

starting_char() {
	echo "Enter your character to match: "
	read char
	grep -E '^'$char $1
}

ending_char() {
	echo "Enter your character to match: "
	read char
	grep -E --color=always $char'\b' $1
}

pattern() {
	echo "Enter your pattern to match: "
	read pattern
	grep --color=always "$pattern" $1
}


echo -e "Select your option: \n1)starting from an alpha \n2)ending with an alpha \n3)match a pattern "
read option
case "$option" in
	"1") echo "words starting from an alphabet"
	starting_char $FILE

	;;

	"2") echo "words ending with an alphabet"
	ending_char $FILE
	
	;;

	"3") echo "match a pattern"
	pattern $FILE
	exit 1
esac
