#include <xc.h>
#include "temperature.h"

void i2c_send_command(unsigned char slave_address, unsigned char command) {
  // Step 1: Start condition
  SSP1CON2bits.SEN = 1;
  while (SSP1CON2bits.SEN);

  // Step 2: Send slave address
  SSP1BUF = slave_address;
  while (SSP1STATbits.BF || SSP1STATbits.R_W);

  // Step 3: Send command
  SSP1BUF = command;
  while (SSP1STATbits.BF || SSP1STATbits.R_W);

  // Step 4: Repeated start condition
  SSP1CON2bits.RSEN = 1;
  while (SSP1CON2bits.RSEN);

  // Step 5: Send slave address
  SSP1BUF = slave_address;
  while (SSP1STATbits.BF || SSP1STATbits.R_W);

  // Step 6: Listen for slave response
  SSP1CON2bits.RCEN = 1;
  while (!SSP1STATbits.BF);

  // Step 7: Send acknowledge/non-acknowledge
  if (more_data_to_receive) {
    SSP1CON2bits.ACKDT = 0;
  } else {
    SSP1CON2bits.ACKDT = 1;
  }
  SSP1CON2bits.ACKEN = 1;
  while (SSP1CON2bits.ACKEN);

  // Step 8: Repeat steps 4 to 7 if necessary

  // Step 9: Stop condition
  SSP1CON2bits.PEN = 1;
  while (SSP1CON2bits.PEN);
}