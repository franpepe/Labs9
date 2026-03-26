#!/bin/bash

#check if filename argument was provided
if [ -z "$1" ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi

file=$1

echo "Checking file: $file"

#file tests

if [ -f "$file" ]; then
	echo "It is a regular file."

elif [ -d "$file" ]; then
	echo "It is a directory."

else
	echo "File does not exist."
fi

#Readable test

if [ -r "$file" ]; then
	echo "File is readable."

	#Bonus: Nested permission checks
	if [ -w "$file" ]; then
		echo "File is writable."
	else
		echo "File is not writable."
	fi
	if [ -x "$file" ]; then
		echo "File is executable."
	fi

else
	echo "File is not readable."
fi

#Case statement for level
read -p "Enter a number (1-3): " num

case $num in
	1)
		echo "Low"
		;;
	2)
		echo "Medium"
		;;
	3)
		echo "High"
		;;
	*)
		echo "Invalid choice"
		;;
esac

#Age check
read -p "Enter your age: " age

if [ "$age" -lt 18 ]; then
	echo "Minor"
else
	echo "Adult"
fi
