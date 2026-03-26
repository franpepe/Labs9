#!/bin/bash

#array declaration
Fruits=("Banana" "Orange" "Mango" "Coconut" "Pear")

#Declare associative arrays
declare -A CAPITALS

#assigned values
CAPITALS[ANAMBRA]="Awka"
CAPITALS[LAGOS]="Ibadan"
CAPITALS[DELTA]="Asaba"
CAPITALS[BAUCHI]="Bauchi"

#this will print array length
echo ""
echo "Number of fruits: ${#Fruits[@]}"

#this will print all fruits
echo "All fruits: ${Fruits[@]}"
echo ""

for i in "${!Fruits[@]}"
do
	echo "Fruit $i: ${Fruits[$i]}"
done
#print associative array

echo "Capitals:"
for state in "${!CAPITALS[@]}"
do
	echo "$state -> ${CAPITALS[$state]}"
done

#bonus input
read -p "Enter another fruit: " newfruit
Fruits+=("$newfruit")

echo "Updated fruits:"
for fruit in "${Fruits[@]}"
do
	echo "$fruit"

done
