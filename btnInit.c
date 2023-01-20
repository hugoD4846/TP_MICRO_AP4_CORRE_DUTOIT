#include <xc.h>
#include "librairies_utiles/C_Header_Files/general.h"
#include "btnInit.h"
#include "OscilateurOneSec.h"

void configurationInterruption(){
    GIEH = 1;
    GIE = 1;
    INTCONbits.INT0IF = 0; // Réinitialiser le drapeau d'interruption INT0
    INTCONbits.INT0IE = 1; // Activer l'interruption INT0
    INTCON2bits.INTEDG0 = 0; // Déclenchement sur front montant
    RBPU = 0;
    TRISBbits.TRISB0 = INPUT;
}


void __interrupt(high_priority) externalInterrupt()
{
    // Code à exécuter lorsque l'interruption externe se produit
    // Par exemple, pour incrémenter un compteur

    if (INTCONbits.INT0IF == 1) {
        toogleTimer();
        INTCONbits.INT0IF = 0;
    }
}


