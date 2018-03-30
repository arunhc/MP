PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY

	EXPORT func
	EXTERN func2
func
	PUSH {LR}
	MOVS R0, #5
	BL func2
	POP {PC}
	END
++++++++++++++++++++++++++
#FUNCTION 2
	PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY

	EXPORT func2

func2
	MOVS R1, #10
	BX LR
	END
	
++++++++++++++++++++++++++++++
#FUNCTION CALLER
	PRESERVE8
	THUMB
	AREA |.text|, CODE, READONLY

	EXPORT __main
	EXTERN func
__main
	BL func
	MOV R0,#40
	NOP
	END
