	PRESERVE8         
        THUMB     
        AREA |.text|, CODE, READONLY
	
	EXPORT __main			  
__main
	LDR R0,=0x20000000
	LDR R1,=0x20000200
	MOVS R2,#10
loop    
	LDRB R3,[R0]
	STRB R3,[R1]
	ADDS R0,R0,#1
	ADDS R1,R1,#1
	SUBS R2,R2,#1
	BNE loop
	NOP
        END
