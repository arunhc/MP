	PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY
	
	EXPORT __main
__main
	LDR R0, =0xABCDEF01
	MOV R1, R0
	LSLS R0, R0, #6;
	LSRS R0, R0, #30
	NOP
	END
