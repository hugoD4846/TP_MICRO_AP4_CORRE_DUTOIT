#include <xc.h>
#include "librairies_utiles/C_Header_Files/general.h"
#include "btnInit.h"
#include "OscilateurOneSec.h"

// Fonction pour configurer les interruptions externes
void configurationInterruption()
{
    GIEH = 1;                 // Active les interruptions hautes
    GIE = 1;                  // Active toutes les interruptions
    INTCONbits.INT0IF = 0;    // Réinitialise le flag d'interruption pour l'INT0
    INTCONbits.INT0IE = 1;    // Active l'interruption pour l'INT0
    INTCON2bits.INTEDG0 = 0;  // Configure la transition sur laquelle l'interruption sera déclenchée
    RBPU = 0;                 // Active les résistances de tirage sur les broches d'entrée
    TRISBbits.TRISB0 = INPUT; // Configure la broche RB0 comme entrée
}

// Fonction d'interruption externe
void __interrupt(low_priority) externalInterrupt()
{
    if (INTCONbits.INT0IF == 1) // Vérifie si l'interruption pour l'INT0 est en attente
    {
        toogleTimer();         // Appelle la fonction toogleTimer() pour changer l'état d'un timer
        INTCONbits.INT0IF = 0; // Réinitialise le flag d'interruption pour l'INT0
    }
}
