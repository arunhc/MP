#include <stdio.h> 
#include "NUC1xx.h" 
#include "Driver\DrvUART.h" 
#include "Driver\DrvGPIO.h" 
#include "Driver\DrvSYS.h" 
#include "LCD_Driver.h" 
#include "Seven_Segment.h" 
 
void GPIOAB_INT_CallBack(uint32_t GPA_IntStatus, uint32_t GPB_IntStatus) 
{  
print_lcd(3,"GPA interrupt !!"); 
}  
void GPIOCDE_INT_CallBack(uint32_t GPC_IntStatus, uint32_t GPD_IntStatus, uint32_t GPE_IntStatus) 
{  print_lcd(3,"GPC interrupt !!"); 
close_seven_segment(); 
show_seven_segment(0,7);
show_seven_segment(1,7); 
DrvSYS_Delay(500000); 
} 
int32_t main() 
{ char TEXT[16]; 
UNLOCKREG(); 
DrvSYS_Open(48000000); 
LOCKREG(); 
DrvGPIO_Open(E_GPA,15,E_IO_INPUT); 
DrvGPIO_Open(E_GPE,15,E_IO_INPUT); 
DrvGPIO_EnableInt(E_GPA, 15, E_IO_RISING, E_MODE_EDGE);
DrvGPIO_EnableInt(E_GPE, 15, E_IO_RISING, E_MODE_EDGE); 
DrvGPIO_SetDebounceTime(5, 1); 
DrvGPIO_EnableDebounce(E_GPA, 15); 
DrvGPIO_EnableDebounce(E_GPE, 15); 
DrvGPIO_SetIntCallback(GPIOAB_INT_CallBack, GPIOCDE_INT_CallBack); 

Initial_panel(); 
clr_all_panel();   
print_lcd(0,"Smpl_GPIO_Intr"); 
 while(1) { } 
} 
