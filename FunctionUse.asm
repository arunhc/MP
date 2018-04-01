;function caller
	PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY

	EXPORT __main
	EXTERN UDP
__main
	MOV r0,#3
	BL UDP
	MOV r4,r3
STOP B STOP
	END
+++++++++++++++++++++++++++++++
UDP 
	PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY

	EXPORT UDP

UDP
	MOVS r3,r0
	MOVS r1,#2
	MULS r3,r1,r3
	ADDS r3,r3,#9
	BX LR
	END
