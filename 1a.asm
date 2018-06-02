	PRESERVE8       
        THUMB   
        AREA |.text|, CODE, READONLY
			
	EXPORT __main			 
__main                 
	LDR R3,=0x20000100
	LDR R0,=0x20000050
	LDMIA R3!,{R1,R2}
	MOV SP,R0
	PUSH {R1,R2}
	POP {R4,R5}
stop    B   stop			   
               END    
