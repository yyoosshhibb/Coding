/*
 * Filter.c
 *
 *  Created on: 30 Nov 2019
 *      Author: Valentin Keck
 */
#include <Average_Filter.h>
#include "Header.h"

void Average_Filter(Analog_Sensor_t *const Sensor)
{

	Sensor->Buffer_Average_Filter[i_Buffer_average] = Sensor->Value;

	for(int8_t j=0; j<5; j++) {
		Sensor->FilteredValue += Sensor->Buffer_Average_Filter[j];
	}

	Sensor->FilteredValue = Sensor->FilteredValue / 5;
}

