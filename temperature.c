#include <xc.h> // Bibliothèque pour le microcontrôleur
#include <htc.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "OscilateurOneSec.h"                           // Ajoute le fichier OscilateurOneSec.h au programme
#include "./librairies_utiles/C_Header_Files/general.h" // Ajoute le fichier general.h au programme
#include "./librairies_utiles/C_Header_Files/lcd.h"     // Ajoute le fichier lcd.h au programme
#include "./librairies_utiles/C_Header_Files/i2c.h"     // Ajoute le fichier i2c.h au programme

#define TEMP_SENSOR_ADDRESS 0b10011010 // Définit la constante TEMP_SENSOR_ADDRESS à 0b10011010 (adresse du capteur de température)

int temperature; // Déclare une variable pour stocker la température

void displayTemperature()
{                   // Définit une fonction pour afficher la température
    configTimer0(); // Appelle la fonction configTimer0()
    TRISA = 0xFF;   // Configure les broches du port A en entrée
    TRISB = 0x00;   // Configure les broches du port B en sortie
    TRISC = 0x00;   // Configure les broches du port C en sortie

    LCDInit();  // Initialise l'afficheur LCD
    LCDClear(); // Efface le contenu de l'afficheur LCD
    i2c_init(); // Initialise la communication I2C

    while (1)
    {                                       // Boucle infinie
        i2c_start();                        // Envoie un signal de départ pour débuter la communication I2C
        i2c_write(TEMP_SENSOR_ADDRESS | 0); // Écrit l'adresse du capteur de température avec le bit de commande de lecture à 0
        i2c_write(0x00);                    // Envoie l'adresse de la température à lire (0x00)
        i2c_stop();                         // Envoie un signal de fin de communication

        i2c_start();                        // Envoie un signal de départ pour débuter la communication I2C
        i2c_write(TEMP_SENSOR_ADDRESS | 1); // Écrit l'adresse du capteur de température avec le bit de commande de lecture à 1

        temperature = abs(i2c_read()); // Lit la valeur de la température retournée par le capteur et la stocke dans la variable temperature
        i2c_NAK();                     // Envoie un signal de non-acquittement pour indiquer la fin de la lecture
        i2c_stop();                    // Envoie un signal de fin de communication

        LCDWriteInt(0, 0, temperature); // Affiche la température sur l'afficheur LCD
        LCDWriteStr("Degres");          // Affiche le texte "Degres" sur l'afficheur LCD
        waitOneSec();                   // Attend une seconde (fonction définie dans le fichier OscilateurOneSec.h)
    }
}
