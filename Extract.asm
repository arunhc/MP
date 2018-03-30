	PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY
	
	EXPORT __main
__main
	LDR R0, =0xFFFFFFFF
	MOV R1, R0
	LSLS R0, R0, #5;
//(32-24-3)where 24-starting position and 3 -width of data to be extracted
	LSRS R0, R0, #29
//32-3, where 3 is the width of data to be extracted
STOP B STOP
	END
