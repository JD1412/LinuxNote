#!/bin/sh
filename=$1
if [ -z "$filename" ];then
	echo "You should give this program an parameter just like:"
	echo "# ./pwnserver filename"
else
	echo "Congratulation! You have established a pwnserver!"
	echo "*********************************"
	echo "*  Please use 'nc' to connect!  *"
	echo "*********************************"
	socat tcp-l:9999,reuseaddr,fork exec:./$filename
fi


