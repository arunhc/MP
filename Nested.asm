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
