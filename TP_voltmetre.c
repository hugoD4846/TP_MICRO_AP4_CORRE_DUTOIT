#include "xc.h"
#include "TP_voltmetre.h"
#include "librairies_utiles/C_Header_Files/lcd.h"

void hello_world(void)
{
    LCDInit();                   // Initialisation de l'écran LCD
    LCDClear();                  // Effacement de l'écran LCD
    LCDGoto(0, 0);               // Déplacement du curseur en position (0,0)
    LCDWriteStr("Hello World!"); // Ecriture de "Hello World!" sur l'écran LCD
    while (1)
        ; // Boucle infinie pour maintenir l'affichage à l'écran
}

void voltmetre(void)
{
    TRISA = 0x01;  // Configuration du port A, bit 0 comme entrée analogique
    ANSELA = 0x01; // Activation de l'entrée analogique AN0

    // Configuration de l'entrée analogique AN0
    ANSELAbits.ANSA0 = 1;
    TRISAbits.TRISA0 = 1;

    // hello_world();  // Appel de la fonction d'affichage "Hello World!"

    ADCON1bits.PVCFG0 = 0; // Vref+ = AVdd
    ADCON1bits.NVCFG1 = 0; // Vref- = AVss

    ADCON2bits.ADFM = 0;    // Résultat justifié à gauche
    ADCON2bits.ACQT = 0x07; // Temps d'acquisition = 20 TAD
    ADCON2bits.ADCS = 0x06; // Fosc/64

    // PBADEN = 1;

    ADCON0bits.CHS = 0;  // Sélection de l'entrée analogique AN0
    ADCON0bits.ADON = 1; // Activation du module ADC*

    LCDInit();                 // Initialisation de l'écran LCD
    LCDClear();                // Effacement de l'écran LCD
    LCDWriteStr("Tension = "); // Affichage du texte "Tension = " sur l'écran LCD
    while (1)
    {
        ADCON0bits.GO = 1; // Lancement de la conversion analogique-numérique
        while (ADCON0bits.GO)
            ;                              // Attente de la fin de la conversion
        int tmp = (ADRES / 65536.0) * 100; // Calcul de la tension en pourcentage
        LCDWriteInt(10, 0, (int)tmp);      // Affichage de la valeur de la tension sur l'écran LCD
    }
}
