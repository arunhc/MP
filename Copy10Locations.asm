    PRESERVE8
    THUMB
    AREA |.text|, CODE, READONLY
    EXPORT __main 
__main
    LDR r0,=0x20000000
    LDR r2,=0x20000204
    MOVS r1,#0
    MOVS r4,#2
    mov sp,r2
loop
    ldr r3,[r0,r1]
    PUSH{r3}
    adds r1,r1,#4
    add sp,sp,#4
    cmp r1,#12
    BNE loop

stop B stop
    END
