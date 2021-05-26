/*
 * ANA_Init.c
 *
 *  Created on: 3 Dec 2019
 *      Author: Valentin Keck
 */

#include <ANA_Init.h>
#include "Header.h"


void ANA_Init()
{
	// Type: 0: Linear, 1: Ride Height, 2: NTC, 3: Pressure, 4: Load Cell


	//------Sensors------
	T_Oil.Channel = &ADC_MEASUREMENT_Channel_A;
	T_Oil.Type = NTC;
	T_Oil.FilterType = Average;
	T_Oil.InputVoltage = 5;

	T_Water.Channel = &ADC_MEASUREMENT_Channel_B;
	T_Water.Type = NTC;
	T_Water.FilterType = Average;
	T_Water.InputVoltage = 5;

	p_Oil.Channel = &ADC_MEASUREMENT_Channel_C;
	p_Oil.Type = Pressure;
	p_Oil.FilterType = Average;
	p_Oil.k = 2.22; // Bar / V
	p_Oil.InputVoltage = 5;

	p_Pneu.Channel = &ADC_MEASUREMENT_Channel_D;
	p_Pneu.Type = Pressure;
	p_Pneu.FilterType = Average;
	p_Pneu.k = 2.22; // Bar / V
	p_Pneu.InputVoltage = 5;

	x_DP_RL.Channel = &ADC_MEASUREMENT_Channel_F;
	x_DP_RL.Type = Linear;
	x_DP_RL.FilterType = LowPass;
	x_DP_RL.k = 0.0083;
	x_DP_RL.InputVoltage = 12;
	Powercycle_Calibration(&x_DP_RL);

	x_DP_RR.Channel = &ADC_MEASUREMENT_Channel_E;
	x_DP_RR.Type = Linear;
	x_DP_RR.FilterType = LowPass;
	x_DP_RR.k = 0.0083;
	x_DP_RR.InputVoltage = 12;
	Powercycle_Calibration(&x_DP_RR);

	x_RH_RL.Channel = &ADC_MEASUREMENT_Channel_G;
	x_RH_RL.Type = RideHeight;
	x_RH_RL.FilterType = LowPass;
	x_RH_RL.k = 0.035;
	x_RH_RL.InputVoltage = 10;
	Powercycle_Calibration(&x_RH_RL);

	x_RH_RR.Channel = &ADC_MEASUREMENT_Channel_H;
	x_RH_RR.Type = RideHeight;
	x_RH_RR.FilterType = LowPass;
	x_RH_RR.k = 0.035;
	x_RH_RR.InputVoltage = 10;
	Powercycle_Calibration(&x_RH_RR);

	f_LC_RL.Channel = &ADC_MEASUREMENT_Channel_I;
	f_LC_RL.Type = LoadCell_RL;
	f_LC_RL.FilterType = LowPass;

	f_LC_RL.InputVoltage = 5;

	f_LC_RR.Channel = &ADC_MEASUREMENT_Channel_J;
	f_LC_RR.Type = LoadCell_RR;
	f_LC_RR.FilterType = LowPass;

	f_LC_RR.InputVoltage = 5;


	//------Board Monitoring------
	T_Board.Channel = &ADC_MEASUREMENT_Channel_L;
	T_Board.Type = NTC_Board;
	T_Board.FilterType = No_Filter;
	T_Board.InputVoltage = 5;

	u_12V_Meas.Channel = &ADC_MEASUREMENT_Channel_M;
	u_12V_Meas.Type = Voltage;
	u_12V_Meas.FilterType = No_Filter;

	u_5V_ANA_Meas.Channel = &ADC_MEASUREMENT_Channel_N;
	u_5V_ANA_Meas.Type = Linear;
	u_5V_ANA_Meas.FilterType = No_Filter;

	u_OUT1_Meas.Channel = &ADC_MEASUREMENT_Channel_O;
	u_OUT1_Meas.Type = Linear;
	u_OUT1_Meas.FilterType = No_Filter;

	u_OUT2_Meas.Channel = &ADC_MEASUREMENT_Channel_P;
	u_OUT2_Meas.Type = Linear;
	u_OUT2_Meas.FilterType = No_Filter;


	//------not used Inputs------
	NTC1.Channel = &ADC_MEASUREMENT_Channel_K;
	NTC1.Type = NTC;
	NTC1.FilterType = Average;

}
