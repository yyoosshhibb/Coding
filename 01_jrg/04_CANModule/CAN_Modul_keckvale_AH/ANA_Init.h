/*
 * ANA_Init.h
 *
 *  Created on: 4 Dec 2019
 *      Author: Valentin Keck
 */

#ifndef ANA_INIT_H_
#define ANA_INIT_H_

//-----Filter Types-----
#define Average 0
#define LowPass 1
#define No_Filter 2

//-----Sensor Types-----
typedef enum{
	Linear,
	RideHeight,
	NTC,
	Pressure,
	LoadCell_RL,
	LoadCell_RR,
	NTC_Board,
	Voltage,
};

#endif /* ANA_INIT_H_ */
