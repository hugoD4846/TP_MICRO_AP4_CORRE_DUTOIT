/*
 * File:   main.c
 * Author: hdutoit
 *
 * Created on 13 janvier 2023, 10:17
 */


#include <xc.h>
#include "../C_Header_Files/general.h"
#include "../C_Header_Files/leds.h"


void main(void) {
    Nop();
    LED0_DIR = OUTP;
    LED0_STATE = ON;
    LED1_DIR = OUTP;
    LED1_STATE = ON;
    LED2_DIR = OUTP;
    LED2_STATE = ON;
    LED3_DIR = OUTP;
    LED3_STATE = ON;
    return;
}
