#!/bin/sh

echo "Enter your filename: "
read FILE


Write()
{
	echo "Enter your content to write in a file:"
	read CONTENT
	echo "$CONTENT" >> "$1"
}

Write $FILE
