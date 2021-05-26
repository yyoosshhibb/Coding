/*
 * Powercycle_Calibration.c
 *
 *  Created on: 5 Dec 2019
 *      Author: Valentin Keck
 */
#include "Header.h"
#include "ANA_Init.h"

void Powercycle_Calibration(Analog_Sensor_t *const Sensor)
{
	if(Sensor->Type == Linear)
		Sensor->Offset = 0;				//no powercycle calibration

	else if(Sensor->Type == Pressure)
		Sensor->Offset = 0;

	else if(Sensor->Type == RideHeight)
		Sensor->Offset = ADC_MEASUREMENT_GetResult(Sensor->Channel);

	else
		Sensor->Offset = 0;

}

