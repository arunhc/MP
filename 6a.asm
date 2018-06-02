            PRESERVE8;  
            THUMB  
            AREA |.text|, CODE, READONLY 
 
            EXPORT __main 
           
__main  
            LDR R0, =0x20000100  
            LDR R1, =0x20000500  
            MOVS R4,#0  
            MOVS R2, #10            
loop  
            LDRB R3, [R0]  
            ADDS R4,R4,R3  
            ADDS R0, R0, #1  
            SUBS R2, R2, #1 
            BNE loop  
            STR R4,[R1]  
            NOP  
            END
