
;Swap lower and higher 4bit of a 8bit number

MVI A, 23H
LDA 2001H
RLC
RLC
RLC
RLC
STA 2020H
RST 1