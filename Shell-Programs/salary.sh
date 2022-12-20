#! /usr/bin/bash
:'A company gives salary on following calculations:
a) if Basic sal is less than Rs. 15,000, then DA will be 80% of Basic
b) if Basic sal is less than Rs 30,000, then DA will be 82% of Basic
c) if Basic sal is less than Rs. 20,000, than HRA will be Rs. 5000, otherwise HRA will be Rs.8000
Gross Pay(GP) = Basic + DA + HRA;      Deduction(DED) = 10% of Gross Pay:   Net Pay(NP) = GP - DED
Now Write a shell script to calculate NP given by the user at command prompt;'

echo "Enter Basic Salary"
read sal
if [ $sal -lt 15000 ]
then
    da=`echo "scale=3;$sal*80/100" | bc`
elif [ $sal -lt 30000 ]
then
    da=`echo "scale=3;$sal*82/100" | bc`
fi
if [ $sal -lt 15000 ]
then
    hra=5000
else
    hra=8000
fi

gp=`echo "scale=3;$sal + $hra + $da" | bc`
ded=`echo "scale=3;$sal*10/100" | bc`
np=`echo "scale=3;$gp - $ded" | bc`

echo "NP is $np"