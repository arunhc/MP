	PRESERVE8          
        THUMB      
        AREA    |.text|, CODE, READONLY
	EXPORT __main			
__main 
	MOVS r0,#5 ;x value
	MOVS r4,r0
	MOVS r1,#3
	MOVS r2,#2
	MULS r0,r0,r0
	MULS r0,r2,r0
	ADDS r0,r4,r0
	ADDS r0,r0,r1
STOP B STOP
	END
