/* 
 * File:   temperature.h
 * Author: hdutoit
 *
 * Created on 10 février 2023, 09:35
 */

#ifndef TEMPERATURE_H
#define	TEMPERATURE_H

#ifdef	__cplusplus
extern "C" {
#endif

void i2c_send_command(unsigned char slave_address, unsigned char command);


#ifdef	__cplusplus
}
#endif

#endif	/* TEMPERATURE_H */

