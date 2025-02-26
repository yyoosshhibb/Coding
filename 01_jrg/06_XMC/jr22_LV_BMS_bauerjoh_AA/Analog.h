/*
 * Analog.h
 *
 *  Created on: 12 Apr 2022
 *      Author: Yoshi
 */

#ifndef ANALOG_H_
#define ANALOG_H_

#include "Header.h"

typedef struct
{
	uint16_t 						value;							//ADC Value
	uint16_t 						value_filtered;					//ADC Value filtered
	ADC_MEASUREMENT_CHANNEL_t 		*Channel;						//ADC Channel from DAVE
	uint16_t						out_buffer;
	uint32_t 						buffer[5];						//Buffer for filter
	uint8_t							index;							//Index for buffer
	float							value_unit;						//Value in whatever unit
	uint16_t						IIR_coeff[5];					//Coefficients for IIR Filter: A0, B1, A1, B2, A2	invert signs for backward coefficients
} analog_sensor_t;


	//Sensors
	analog_sensor_t temp_sensor_1;

	analog_sensor_t voltage_cell_1;


	//Introduction of Functions for Analog.c
	void ANA_Init();
	void ANA_Read();
	void Task_ANA_Read();
	void IIR_Filter();
	void circindex();


#endif /* ANALOG_H_ */
