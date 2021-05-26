/*
 * UnitConversion.c
 *
 *  Created on: 2 Dec 2019
 *      Author: Valentin Keck
 */
#include "Header.h"
#include "ANA_Init.h"

#define NTC_LUT_NB_POINT 6

void UnitConversion(Analog_Sensor_t *const Sensor)
{
	if(Sensor->Type == Linear)
		Sensor->UnitValue = ((Sensor->FilteredValue - Sensor->Offset) * 8.0018 + 32768); //  !!!!!!!!!!!!

	else if(Sensor->Type == RideHeight)
		Sensor->UnitValue = (Sensor->k * ((float)(Sensor->FilteredValue-Sensor->Offset) * Sensor->InputVoltage*1000.0 / 4095.0)+128.0); // mm !!!!!!!!!

	else if(Sensor->Type == Pressure)
		Sensor->UnitValue = (Sensor->k * (Sensor->FilteredValue * Sensor->InputVoltage / 4095) - (2.5/4.5) )/0.04; // Bar/0.04 !!!!!!!

	else if((Sensor->Type == NTC)||(Sensor->Type == NTC_Board))
	{
		int i;
		uint16_t Temp_Val;
		float x0,y0,x1,y1,a,b;
		uint32_t LUT_NTC_V[6]={0};
		float LUT_NTC[6]={0};

		switch(Sensor->Type){
		case NTC:
	    LUT_NTC_V[0] = 481;
		LUT_NTC_V[1] = 997;
		LUT_NTC_V[2] = 1517;
		LUT_NTC_V[3] = 2243;
		LUT_NTC_V[4] = 3333;
		LUT_NTC_V[5] = 4248;

	    LUT_NTC[0] = 125;
		LUT_NTC[1] = 90;
		LUT_NTC[2] = 70;
		LUT_NTC[3] = 50;
		LUT_NTC[4] = 25;
		LUT_NTC[5] = 0;
		break;

		case NTC_Board:
		LUT_NTC_V[0] = 140;
		LUT_NTC_V[1] = 283;
		LUT_NTC_V[2] = 602;
		LUT_NTC_V[3] = 1288;
		LUT_NTC_V[4] = 2500;
		LUT_NTC_V[5] = 3850;

	    LUT_NTC[0] = 125;
		LUT_NTC[1] = 100;
		LUT_NTC[2] = 75;
		LUT_NTC[3] = 50;
		LUT_NTC[4] = 25;
		LUT_NTC[5] = 0;
		break;

		default :
		break;
		}

		i=0;
		Temp_Val = ((Sensor->FilteredValue)*5000/4095);
			while(i<NTC_LUT_NB_POINT && LUT_NTC_V[i]<=Temp_Val) i++;
		if(i==0){
			x0 = LUT_NTC_V[0];
			y0 = LUT_NTC[0];
			x1 = LUT_NTC_V[1];
			y1 = LUT_NTC[1];
		}
		else if(i==NTC_LUT_NB_POINT){
			x0 = LUT_NTC_V[NTC_LUT_NB_POINT-2];
			y0 = LUT_NTC[NTC_LUT_NB_POINT-2];
			x1 = LUT_NTC_V[NTC_LUT_NB_POINT-1];
			y1 = LUT_NTC[NTC_LUT_NB_POINT-1];
		}
		else{
			x0 = LUT_NTC_V[i-1];
			y0 = LUT_NTC[i-1];
			x1 = LUT_NTC_V[i];
			y1 = LUT_NTC[i];
		}

		a = (y1-y0)/(x1-x0);
		b = y0 - a*x0;
		Sensor->UnitValue = a*(Temp_Val) + b;
	}

	else if(Sensor->Type == LoadCell_RL)
		Sensor->UnitValue = ((Sensor->FilteredValue) * 1.1846 - 168 ) * 10.0;

	else if(Sensor->Type == LoadCell_RR)
		Sensor->UnitValue = ((Sensor->FilteredValue) * 1.5055 - 203 ) * 10.0;

	else if(Sensor->Type == Voltage)
		Sensor->UnitValue = (((Sensor->FilteredValue)*(41600/1200)/4095));

}

