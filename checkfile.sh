#!/bin/sh
'
if [ -f /home/intern2/Desktop/forloop.sh ]
then 
	echo "file is not empty"
else
	echo "file is empty"
fi'

#above code is same as

[ -f /home/intern2/Desktop/forloop.sh ] && echo "file is not empty" || echo "file is empty"
