
;Multiplication of two 8 bit numbers

MVI A, 00H
MVI B, 05H
MVI C, 03H
ADD B
DCR C
JNZ 2006H
STA 2050H
RST 1