/*
 * ANA_Read.c
 *
 *  Created on: 3 Dec 2019
 *      Author: Valentin Keck
 */
#include "Header.h"
#include "ANA_Init.h"
#include "Average_Filter.h"

void ANA_Read(Analog_Sensor_t *const Sensor)
{

	//-----------Read-------------

	if(Sensor->Type == Linear)
		Sensor->Value = ADC_MEASUREMENT_GetResult(Sensor->Channel); //3.3V = 4095 uint16_t

	else if(Sensor->Type == Pressure)
		Sensor->Value = ADC_MEASUREMENT_GetResult(Sensor->Channel);

	else if(Sensor->Type == RideHeight)
		Sensor->Value = ADC_MEASUREMENT_GetResult(Sensor->Channel);

	else if((Sensor->Type == NTC)||(Sensor->Type == NTC_Board))
		Sensor->Value = ADC_MEASUREMENT_GetResult(Sensor->Channel);

	else if(Sensor->Type == LoadCell_RL)
		Sensor->Value = ADC_MEASUREMENT_GetResult(Sensor->Channel);

	else if(Sensor->Type == LoadCell_RR)
		Sensor->Value = ADC_MEASUREMENT_GetResult(Sensor->Channel);

	else if(Sensor->Type == Voltage)
		Sensor->Value = ADC_MEASUREMENT_GetResult(Sensor->Channel);

	//-------------Filter-------------

	if(Sensor->FilterType == Average)
		Average_Filter(Sensor);

	else if(Sensor->FilterType == LowPass)
		Low_Pass_Filter(Sensor);

	else if(Sensor->FilterType == No_Filter)
		Sensor->FilteredValue = Sensor->Value;


	UnitConversion(Sensor);

}

void Filter_Time()
{
	  //------Filter------
	  time = TIMER_GetTime(&TIMER_0);

	  	if(time >= 1)   // 1 micro second --- every new sample from ADC
	  	{
	  		i_Buffer_average++;

	  		if(i_Buffer_average == 4)
	  			i_Buffer_average = 0;

	  		TIMER_Clear(&TIMER_0);
	  	}
}

void Task_ANA_Read()
{
	while(1){

	ANA_Read(&T_Oil);
	ANA_Read(&T_Water);
	ANA_Read(&T_Board);
	ANA_Read(&p_Oil);
	ANA_Read(&p_Pneu);
	ANA_Read(&x_DP_RL);
	ANA_Read(&x_DP_RR);
	ANA_Read(&x_RH_RL);
	ANA_Read(&x_RH_RR);
	ANA_Read(&f_LC_RL);
	ANA_Read(&f_LC_RR);
	ANA_Read(&u_12V_Meas);
	ANA_Read(&u_5V_ANA_Meas);
	ANA_Read(&u_OUT1_Meas);
	ANA_Read(&u_OUT2_Meas);
	//ANA_Read(NTC1);            // comment/uncomment if used or not

	Filter_Time();

	}
}

