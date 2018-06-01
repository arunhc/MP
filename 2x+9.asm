PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY

	EXPORT __main
		
func1
   MOVS r0,#2
   MOVS R1, #2
   MULS r0,r1,r0
   MOVS R2,#9
   ADDS R0,R0,R2
   BX LR

__main
	BL func1
STOP B STOP
	END