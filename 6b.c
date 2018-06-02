#include <stdio.h> 
#include "NUC1xx.h" 
#include "Driver\DrvGPIO.h" 
#include "Driver\DrvUART.h" 
#include "Driver\DrvSYS.h" 
 
void Init_LED() 
{ DrvGPIO_Open(E_GPC, 12, E_IO_OUTPUT); 
DrvGPIO_Open(E_GPC, 13, E_IO_OUTPUT); 
DrvGPIO_Open(E_GPC, 14, E_IO_OUTPUT); 
DrvGPIO_Open(E_GPC, 15, E_IO_OUTPUT); 
DrvGPIO_SetBit(E_GPC, 12); 
DrvGPIO_SetBit(E_GPC, 13); 
DrvGPIO_SetBit(E_GPC, 14); 
DrvGPIO_SetBit(E_GPC, 15); 
}  
int main (void) 
{ UNLOCKREG();   
DrvSYS_Open(48000000); 
LOCKREG();  
Init_LED(); 
while (1) 
{ DrvGPIO_ClrBit(E_GPC,12); 
DrvSYS_Delay(1000000);    
DrvGPIO_SetBit(E_GPC,12);      
DrvGPIO_ClrBit(E_GPC,13); 
DrvSYS_Delay(1000000); 
DrvGPIO_SetBit(E_GPC,13);      
DrvGPIO_ClrBit(E_GPC,14); 
DrvSYS_Delay(1000000); 
DrvGPIO_SetBit(E_GPC,14);      
DrvGPIO_ClrBit(E_GPC,15); 
DrvSYS_Delay(1000000);  
DrvGPIO_SetBit(E_GPA,15); 
DrvSYS_Delay(1000000); } } 
