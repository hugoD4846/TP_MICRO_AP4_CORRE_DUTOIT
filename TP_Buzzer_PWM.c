#include <xc.h>
#include <stdint.h>
#include "TP_Buzzer_PWM.h"
#include "librairies_utiles/C_Header_Files/general.h"
#include "OscilateurOneSec.h"
#define _XTAL_FREQ 1000000

void buzzer() {
    // Initialisation des registres
    int freq1 = 55;
    int freq2 = 1760;
    
    configTimer0();

    T2CON = 0x00; // Configure le timer 2 sans prescaler ni postscaler
    CCP1CON = 0x0C; // Configure le mode PWM et les deux bits<1 :0> du rapport cyclique
    TRISCbits.TRISC2 = 0; // Configure RC2 en sortie pour le buzzer
    T2CONbits.TMR2ON = ON;
    // Générer le signal PWM
    CCP1CONbits.CCP1M = 0x0C; // Active le signal PWM sur la broche RC2
    while(1){
            PR2 = (_XTAL_FREQ / (freq1 * 4)) -1; // Configure la valeur maximale pour le timer 2
    CCPR1L = (PR2+1)/2; // Mettre à jour le rapport cyclique de la PWM
        waitOneSec();
            PR2 = (_XTAL_FREQ / (freq2 * 4)) -1; // Configure la valeur maximale pour le timer 2
    CCPR1L = (PR2+1)/2; // Mettre à jour le rapport cyclique de la PWM
        waitOneSec();
    }
}

