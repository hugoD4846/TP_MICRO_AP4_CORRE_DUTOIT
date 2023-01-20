/* 
 * File:   OscilateurOneSec.h
 * Author: hdutoit
 *
 * Created on 20 janvier 2023, 10:07
 */

#ifndef OSCILATEURONESEC_H
#define	OSCILATEURONESEC_H

#ifdef	__cplusplus
extern "C" {
#endif

void configTimer0();
void startTimer0();
void stopTimer0();
void resetTimer0();
void waitOneSec();


#ifdef	__cplusplus
}
#endif

#endif	/* OSCILATEURONESEC_H */

