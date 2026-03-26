#!/bin/bash

#Variable declarations
NAME="Nwuba Chinonso Francis"
AGE=28
CONSTANT=42

#this will print messages
echo "My name is ${NAME}"
echo "I am ${AGE} old"
echo "The constant value is ${CONSTANT}"

#arithmetic operation
SUM=$((AGE + 10))
echo "In 10 years i will be ${SUM} years old."

#bonus parameter expansion
echo "User: ${NAME:-Default}"
