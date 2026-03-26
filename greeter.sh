#!/bin/bash
#collect basic info
read -p "Enter your name: " NAME
read -p "Enter your age: " AGE

#this will validate age is a number
if ! [[ "${AGE}" =~ ^[0-9]+$ ]]; then
echo "Error: Age must be a number."
exit 1
fi

read -s -p "Enter your password: " PASSWWORD

#the final output print will be
echo ""
echo "Welcome, ${NAME}, You are ${AGE} years old."
echo "Your password was received safely"
