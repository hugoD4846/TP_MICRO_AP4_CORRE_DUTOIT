#include <xc.h>
#include "librairies_utiles/C_Header_Files/general.h"
#include "librairies_utiles/C_Header_Files/leds.h"
#include "OscilateurOneSec.h"

void configTimer0()
{
    T0CON=0x01;
    resetTimer0();
}

void startTimer0()
{
    T0CONbits.TMR0ON=1;
}


void stopTimer0()
{
    T0CONbits.TMR0ON=1;
}

void resetTimer0()
{
    TMR0H=0x0B;
    TMR0L=0xDC;
    INTCONbits.TMR0IF=0;
}


void waitOneSec()
{
    resetTimer0();
    startTimer0();
    while(INTCONbits.TMR0IF!=1);
    INTCONbits.TMR0IF=0;
}

void toogleTimer(){
    T0CONbits.TMR0ON=!T0CONbits.TMR0ON;
}