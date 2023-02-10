#include <xc.h>
#include <htc.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "OscilateurOneSec.h"
#include "./librairies_utiles/C_Header_Files/general.h"
#include "./librairies_utiles/C_Header_Files/lcd.h"
#include "./librairies_utiles/C_Header_Files/i2c.h"


#define TEMP_SENSOR_ADDRESS 0b10011010
int temperature;
void displayTemperature() {
    configTimer0();
    TRISA = 0xFF;
    TRISB = 0x00;
    TRISC = 0x00;
    
    LCDInit();
    LCDClear();
    i2c_init();

    while (1) {
        i2c_start();
        i2c_write(TEMP_SENSOR_ADDRESS | 0);
        i2c_write(0x00);
        i2c_stop();

        i2c_start();
        i2c_write(TEMP_SENSOR_ADDRESS | 1);
        

        temperature = abs(i2c_read());
        i2c_NAK();
        i2c_stop();
       
        LCDWriteInt(0,0,temperature);
        LCDWriteStr("Degres");
        waitOneSec();
    }
}