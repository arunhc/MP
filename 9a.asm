	PRESERVE8
	THUMB
	AREA |.text|,CODE,READONLY
	EXPORT __main
__main
	MOVS R0,#5
	MOVS R1,#5
	MOVS R2,#2
	MUL R1,R1,R0
	MUL R1,R2,R1
	ADDS R1,R1,R0
	ADDS R1,R1,#3
stop B stop
	END
