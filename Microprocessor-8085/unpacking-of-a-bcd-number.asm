
;Unpacking of a BCD number

LDA 2070H
ANI F0H
RLC
RLC
RLC
RLC
STA 2071H
LDA 2070H
ANI 0FH
STA 2072H
RST 1