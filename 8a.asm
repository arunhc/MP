	PRESERVE8         
        THUMB          
        AREA |.text|,CODE,READONLY 
	EXPORT __main			  

__main  
	LDR R0, =2
	CMP R0,#3
	BHI default_case
	MOVS R2,#4
	MULS R0,R2,R0
	LDR R1,=BranchTable
	LDR R2,[R1,R0]
	BX R2
	ALIGN 4
BranchTable
    	DCD dest0
      	DCD dest1
	DCD dest2
	DCD dest3

default_case
	LDR R0,=0XF
dest0    
	LDR R0,=0XA
	B next
dest1     
	LDR R0,=0XB   
	B next
dest2     
	LDR R0,=0XC
	B next
dest3    
	LDR R0,=0XD
	B next
next
	NOP
END
