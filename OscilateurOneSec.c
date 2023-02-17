#include <xc.h>
#include "librairies_utiles/C_Header_Files/general.h"
#include "librairies_utiles/C_Header_Files/leds.h"
#include "OscilateurOneSec.h"

// Fonction pour configurer le Timer0
void configTimer0()
{
    T0CON = 0x01;  // Configure le Timer0 avec une source d'horloge interne
    resetTimer0(); // Appelle la fonction resetTimer0() pour réinitialiser les compteurs du timer
}

// Fonction pour démarrer le Timer0
void startTimer0()
{
    T0CONbits.TMR0ON = 1; // Active le Timer0
}

// Fonction pour arrêter le Timer0
void stopTimer0()
{
    T0CONbits.TMR0ON = 0; // Désactive le Timer0
}

// Fonction pour réinitialiser les compteurs du Timer0
void resetTimer0()
{
    TMR0H = 0x0B;          // Configure la valeur de départ haute du compteur du Timer0
    TMR0L = 0xDC;          // Configure la valeur de départ basse du compteur du Timer0
    INTCONbits.TMR0IF = 0; // Réinitialise le flag d'interruption du Timer0
}

// Fonction pour attendre une seconde
void waitOneSec()
{
    resetTimer0(); // Appelle la fonction resetTimer0() pour réinitialiser les compteurs du timer
    startTimer0(); // Appelle la fonction startTimer0() pour démarrer le timer
    while (INTCONbits.TMR0IF != 1)
        ;                  // Attend que le flag d'interruption du Timer0 soit activé
    INTCONbits.TMR0IF = 0; // Réinitialise le flag d'interruption du Timer0
}

// Fonction pour changer l'état du Timer0
void toogleTimer()
{
    T0CONbits.TMR0ON = !T0CONbits.TMR0ON; // Change l'état du Timer0
}
