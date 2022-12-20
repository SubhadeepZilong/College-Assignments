#! /usr/bin/bash
#Write a shell script to add two numbers.
echo -n "Enter Number 1: "
read a
echo -n "Enter Number 2: "
read b

sum = $(( a + b ))
echo "Sum is $sum"
