#! /usr/bin/bash
#Write a shell script to find the highest among three numbers
echo -n "Enter Number 1: "
read a
echo -n "Enter Number 2: "
read b
echo -n "Enter Number 3: "
read c

if [ $a -gt $b ] && [ $a -gt $c ]
then
    echo "Highest number is $a"
elif [ $b -gt $a ] && [ $b -gt $c ]
then
    echo "Highest number is $b"
else
    echo "Highest number is $c"
fi
