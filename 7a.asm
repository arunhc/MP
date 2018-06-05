	PRESERVE8
	THUMB
	AREA |.text|,CODE,READONLY
	EXPORT func
	EXTERN func1
func
	PUSH {PC}
	MOVS R1,#5
	BL func1
	POP {LR}
stop B stop
	END
++++++++++++++++++++++++++
	PRESERVE8
	THUMB
	AREA |.text|,CODE,READONLY
	EXPORT __main
	EXTERN func1
func1
	MOVS R0,#10
	BX LR
stop B stop
	END
	
++++++++++++++++++++++++++++++
	PRESERVE8
	THUMB
	AREA |.text|,CODE,READONLY
	EXPORT __main
	EXTERN func
__main
	MOVS R0,#1
	BL func
stop B stop
	END
