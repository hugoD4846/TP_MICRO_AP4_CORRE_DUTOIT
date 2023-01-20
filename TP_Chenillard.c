#include <xc.h>
#include "librairies_utiles/C_Header_Files/general.h"
#include "librairies_utiles/C_Header_Files/leds.h"
#include "TP_Chenillard.h"
#include "OscilateurOneSec.h"

int DELAY = 18500;


void delai_1sec(){
    for(int i=0;i<DELAY;i++){
        Nop();
    }
}
void chenillard(){
    TRISB = 0x00;
    LATB = 0x01;
    for(int i=0;i<4;i++){
        delai_1sec();
        LATB = LATB << 1;
    }
}

void chenillardWithTimer0(){
    configTimer0();
    TRISB = 0x00;
    LATB = 0x01;
    for(int i=0;i<4;i++){
        waitOneSec();
        LATB = LATB << 1;
    }
}

void reset(){
    TRISB = 0x00;
    LATB = 0x00;
}