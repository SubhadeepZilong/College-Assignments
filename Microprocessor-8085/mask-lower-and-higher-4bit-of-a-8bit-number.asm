
;Mask lower and higher 4bit of a 8bit number

MVI B
MOV B, A
ANI F0H
STA 2050H
MOV B, A
ANI 0FH
STA 2051H
RST 1