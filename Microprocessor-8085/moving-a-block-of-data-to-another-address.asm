
;Moving a block of data to another address

MVI D, 05H
LXI H, 2000H
LXI B, 2050H
MOV A, M
STAX B
INX H
INX B
DCR D
JNZ 2008H
RST 1