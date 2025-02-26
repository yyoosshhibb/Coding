/*
 * Timers.h
 *
 *  Created on: Feb 10, 2023
 *      Author: Yoshi
 */

#ifndef SRC_TIMERS_H_
#define SRC_TIMERS_H_

#include "Hardware_Def.h"

#define FLAG_TIMER_TICK 0x10

#define PER_200hz	5
#define PER_100hz	10
#define PER_50hz	20
#define PER_40hz	25
#define PER_30hz	33
#define PER_20hz	50
#define PER_10hz	100
#define PER_5hz		200
#define PER_2hz		500
#define PER_1hz		1000


void TIM15_IRQHandler(void);
void Task_Timer(void);





#endif /* SRC_TIMERS_H_ */
