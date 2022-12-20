
;Addition of two 8 bit numbers with carry

MVI A, 19H
MVI B, 31H
MVI C, 00H
ADD B
JNC 200BH
INR C
STA 2050H
MOV A,C
STA 2051H
RST 1