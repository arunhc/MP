		PRESERVE8          
                THUMB      
                AREA    |.text|, CODE, READONLY
		EXPORT __main			
__main 	
	LDR r0,=0x20000200
	LDR r1,=0x20000100
	MOVS r2,#10
loop
	LDRB r3,[r0]
	LDRB r4,[r1]
	STRB r4,[r0]
	STRB r3,[r1]
	ADDS r0,r0,#1
	ADDS r1,r1,#1
	SUBS r2,r2,#1
	BNE loop
	NOP
	END
