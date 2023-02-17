#include <xc.h>
#include <stdint.h>
#include "TP_Buzzer_PWM.h"
#include "librairies_utiles/C_Header_Files/general.h"
#include "OscilateurOneSec.h"
#define _XTAL_FREQ 1000000

void buzzer()
{
    int freq1 = 55;   // Fréquence LA 1
    int freq2 = 1760; // Fréquence LA 2

    configTimer0(); // Configuration du Timer 0

    T2CON = 0x00;             // Configuration du Timer 2
    CCP1CON = 0x0C;           // Configuration de CCP1
    TRISCbits.TRISC2 = 0;     // Configuration de la broche C2 en sortie
    T2CONbits.TMR2ON = ON;    // Démarrage du Timer 2
    CCP1CONbits.CCP1M = 0x0C; // Configuration de CCP1 en mode PWM

    while (1) // Boucle infinie
    {
        PR2 = (_XTAL_FREQ / (freq1 * 4)) - 1; // Calcul de la valeur de PR2 pour la fréquence 1
        CCPR1L = (PR2 + 1) / 2;               // Calcul de la valeur de CCPR1L pour la fréquence 1
        waitOneSec();                         // Attente de 1 seconde
        PR2 = (_XTAL_FREQ / (freq2 * 4)) - 1; // Calcul de la valeur de PR2 pour la fréquence 2
        CCPR1L = (PR2 + 1) / 2;               // Calcul de la valeur de CCPR1L pour la fréquence 2
        waitOneSec();                         // Attente de 1 seconde
    }
}
