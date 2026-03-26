#!/bin/bash

#script name
echo "Script name: $0"
echo "All arguments: $@"
echo "Number of arguments: $#"
echo ""

#check if exactly 2 arguments are provided
if [ "$#" -ne 2 ]; then
	echo "Usage: ./args.sh <name> <city>"
	exit 1
fi
echo "Hello $1 from $2!"
