PRESERVE8          
                THUMB      
                AREA    |.text|, CODE, READONLY
		EXPORT __main			
__main 	
	LDR r0,=0xFFFFFFFF ; X_Low(X = 0x3333FFFFFFFFFFFF)
	LDR r1,=0x3333FFFF ; X_High
	LDR r2,=0x00000001 ; Y_Low(Y = 0x3333000000000001)
	LDR r3,=0x33330000 ; Y_High
	ADDS r0,r0,r2 ; lower 32-bit
	ADCS r1,r1,r3 ; upper 32-bit
STOP B STOP
	          END
