#include <xc.h>
#include "librairies_utiles/C_Header_Files/general.h"
#include "librairies_utiles/C_Header_Files/leds.h"
#include "TP_Chenillard.h"
#include "OscilateurOneSec.h"

int DELAY = 18500; // Définit une durée de délai de 18500 (inconnu)

// Attendre 1 seconde
void delai_1sec()
{
    for (int i = 0; i < DELAY; i++)
    {
        Nop();
    }
}

// Allumer les leds une par une (chenillard)
void chenillard()
{
    TRISB = 0x00; // Configure les broches B en sortie
    LATB = 0x01;  // Initialise la première led à allumer
    for (int i = 0; i < 4; i++)
    {                     // Boucle pour faire défiler l'allumage des leds
        delai_1sec();     // Attendre 1 seconde
        LATB = LATB << 1; // Allume la led suivante
    }
}

// Faire défiler les leds avec un délai d'1 seconde et arrêter lorsque le bouton est pressé
void chenillardWithTimer0Btn()
{
    configTimer0(); // Initialise le timer 0
    TRISB = 0x01;   // Configure la broche B0 en entrée
    LATB = 0x02;    // Initialise la première led à allumer
    for (int i = 0; i < 3; i++)
    {                     // Boucle pour faire défiler l'allumage des leds
        waitOneSec();     // Attendre 1 seconde
        LATB = LATB << 1; // Allume la led suivante
        if (PORTBbits.RB0 == 0)
        { // Si le bouton est pressé, sortir de la boucle
            break;
        }
    }
}

// Faire défiler les leds avec un délai d'1 seconde
void chenillardWithTimer0()
{
    configTimer0(); // Initialise le timer 0
    TRISB = 0x00;   // Configure les broches B en sortie
    LATB = 0x01;    // Initialise la première led à allumer
    for (int i = 0; i < 4; i++)
    {                     // Boucle pour faire défiler l'allumage des leds
        waitOneSec();     // Attendre 1 seconde
        LATB = LATB << 1; // Allume la led suivante
    }
}

// Configurer la broche B0 en entrée pour le bouton reset
void resetBtn()
{
    TRISB = 0x01; // Configure la broche B0 en entrée
    LATB = 0x01;  // Initialise la led à éteindre
}

// Eteindre toutes les leds
void reset()
{
    TRISB = 0x00; // Configure les broches B en sortie
    LATB = 0x00;  // Eteindre toutes les leds
}
