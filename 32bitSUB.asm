        PRESERVE8          
        THUMB      
        AREA    |.text|, CODE, READONLY
		    EXPORT __main			
__main 	
	      MOVS R0, #4
        MOVS R1, #3
        SUBS R2,R0,R1
STOP B STOP
	      END
