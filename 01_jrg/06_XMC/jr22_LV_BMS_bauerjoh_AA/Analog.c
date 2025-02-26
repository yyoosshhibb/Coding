/*
 * Analog.c
 *
 *  Created on: 12 Apr 2022
 *      Author: Yoshi
 */

#include "Analog.h"
#include "Header.h"

EventGroupHandle_t EventGroupAnaRead;

void ANA_Init()
{
	EventGroupAnaRead = xEventGroupCreate();
	temp_sensor_1.Channel = &ADC_MEASUREMENT_Channel_A;
	temp_sensor_1.index = 0;
	temp_sensor_1.buffer = 0;

	voltage_cell_1.Channel = &ADC_MEASUREMENT_Channel_B;
}

void ANA_Read(analog_sensor_t *const Sensor)
{
	Sensor->value = ADC_MEASUREMENT_GetResult(Sensor->Channel);
	Sensor->buffer[index] = ADC_MEASUREMENT_GetResult(Sensor->Channel);

	circindex(Sensor->index, 1, 5);
}

void Task_ANA_Read()
{
	while(1)
	{
		xEventGroupWaitBits(EventGroupAnaRead, 0x01);		//Wait for the flag to have timing
		xEventGroupSetBits(EventGroupAnaRead, 0x00);		//Clear the flag to not be permanently in loop

		ANA_Read(&temp_sensor_1);

		ANA_Read(&voltage_cell_1);



	}
}

void IIR_Filter(analog_sensor_t *const Sensor)
{
	Sensor->out_buffer = 0;
	int i;
	for(i=0; i<5; i++)
	{
		Sensor->out_buffer += ((Sensor->buffer[Sensor->index]*Sensor->IIR_coeff[i])>12);
		circindex(Sensor->index, -1, 5);
	}

	circindex(Sensor->index, 1, 5);
	Sensor->buffer[Sensor->index] = Sensor->out_buffer;
	circindex(Sensor->index, 1, 5);
}

void circindex(uint16_t index, uint16_t step, uint16_t length)
{
	int test = index + step;
	if(test >= length)
	{
		index = test - length;
	}
	else if(test < length)
	{
		index = test;
	}
	else if(test < 0)
	{
		index = test + length;
	}
}

void Adc_Measurement_Handler()
{
	xEventGroupSetBits(EventGroupAnaRead, 0x01);
}



