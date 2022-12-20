#! /usr/bin/bash
#Write a shell program to check either a number is armstrong number or not in a given range. (using until loop).

echo -n "Enter starting number: "
read x
echo -n "Enter ending number: "
read y
echo "The Armstrong numbers in this range are : "
i=$x
until [ $i -gt $y ]
do
    c=$i
    d=$i
    b=0
    a=0
    until [ $c -lt 1 ]
    do
        a=$((c%10))
        b=$((b + a*a*a))
        c=$((c/10))
    done
    if((b==d)); 
    then
        echo "$i"
    fi
    i=$((i+1))
done