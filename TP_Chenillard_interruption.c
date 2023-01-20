#include <xc.h>
#include "librairies_utiles/C_Header_Files/general.h"
#include "librairies_utiles/C_Header_Files/leds.h"
#include "TP_Chenillard_interruption.h"
#include "TP_Chenillard.h"
#include "btnInit.h"


void load_chenillard(){
    configurationInterruption();
    chenillardWithTimer0Btn();
}