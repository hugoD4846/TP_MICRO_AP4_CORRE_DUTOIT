#include "xc.h"
#include "TP_uart.h"
#include "librairies_utiles/C_Header_Files/uart.h"
#include "librairies_utiles/C_Header_Files/lcd.h"
#include "btnInit.h"
#include "OscilateurOneSec.h"

#define _XTAL_FREQ 1000000 // Fréquence d'horloge du PIC

// Configuration de l'UART
void TP_uart()
{
    LCDInit();          // Initialisation du module d'affichage LCD
    LCDClear();         // Effacement du LCD
    configTimer0();     // Configuration du timer 0
    ei();               // Activation des interruptions
    UARTInit(9600);     // Initialisation de l'UART à 9600 bauds
    waitOneSec();       // Attente de 1 seconde
    UARTWriteByte('A'); // Envoi d'un caractère
}

void __interrupt(low_priority) uartInterrupt()
{
    if (RCIF == SET) // Vérification si une donnée est prête à être lue
    {
        RCIF = CLEAR;                 // Effacement du flag d'interruption de réception
        LCDClear();                   // Effacement du LCD
        UINT8_T str = UARTReadByte(); // Lecture d'un caractère
        LCDWriteHexa(0, 0, str);      // Affichage du caractère reçu en hexadécimal sur le LCD
    }
}
