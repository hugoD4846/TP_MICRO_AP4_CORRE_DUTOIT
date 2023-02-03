#include "xc.h"
#include "TP_voltmetre.h"
#include "librairies_utiles/C_Header_Files/lcd.h"

void hello_world(void)
{
    LCDInit();
    LCDClear();
    LCDGoto(0, 0);
    LCDWriteStr("Hello World!");
    while (1)
        ;
}

void voltmetre(void)
{
    
    TRISA = 0x01;  // set channel 2 as an input
    ANSELA = 0x01;
    // Configure AN2 as an analog channel
    ANSELAbits.ANSA0 = 1;
    TRISAbits.TRISA0 = 1;

    //hello_world();
    
    ADCON1bits.PVCFG0 = 0; // Vref+ = AVdd
    ADCON1bits.NVCFG1 = 0; // Vref- = AVss

    ADCON2bits.ADFM = 0; // Left justified
    ADCON2bits.ACQT = 0x07; // Acquisition time = 20 TAD
    ADCON2bits.ADCS = 0x06; // Fosc/64
    
    //PBADEN = 1;

    ADCON0bits.CHS = 0;
    ADCON0bits.ADON = 1; // Turn on ADC*
    
    LCDInit();
    LCDClear();
    LCDWriteStr("Tension = ");
    while (1)
    {
        ADCON0bits.GO = 1;
        while(ADCON0bits.GO);
        int tmp = (ADRES/65536.0)*100;
        LCDWriteInt(10,0,(int)tmp);
    }
}