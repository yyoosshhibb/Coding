/*
 * Error_Handling.c
 *
 *  Created on: 28 Oct 2019
 *      Author: Paul
 */

#include "Header.h"

//####### Var #######
extern struct data_can canData;
extern struct data_IOPort IOportData;
uint8_t plausi_error_array[8] = {0};

boolean_T checkRangePlausi_active = 1;


//######## Watchdog ########

void Watchdog_Start()
{
	  WATCHDOG_Start();
}

void Watchdog_Reset()
{
	  WATCHDOG_ClearAlarm();
	  WATCHDOG_Service();
}

void NMI_Handler(void) //Watchdog Prewarning Handler
{
	DIGITAL_IO_SetOutputLow(&DIGITAL_IO_Debug_LED);

	setbitTrue((unsigned*)&canData.plausi_error, 63);
	for (int i = 0; i < 8; i++) {
		plausi_error_array[i] = getbits64(canData.plausi_error, 8*(i+1)-1, 8);
	}
	CAN_NODE_MO_UpdateData(&CAN_2_LMO_11_Config, plausi_error_array);
	CAN_NODE_MO_Transmit(&CAN_2_LMO_11_Config);
}

//######## Plausi Check ########

unsigned checkRangePlausi(unsigned value, VCU_Failure error_code)
{
	if(checkRangePlausi_active)
	{
		int upperLimit, lowerLimit;
		unsigned prevValue;

		switch(error_code){
		case ERR_FANS_DASH_BIT: prevValue = (unsigned)*IOportData.Fans_dash_bit;
								upperLimit=1;
								lowerLimit =0;
								break;
		case ERR_G_LONG_ABS: 	prevValue = (unsigned)*canData.g_long_ABS; //todo
								upperLimit=32e3;
								lowerLimit =0;
								break;
		case ERR_G_YAW_ABS: 	prevValue = (unsigned)*canData.g_yaw_ABS; //todo
								upperLimit=32e3;
								lowerLimit =0;
								break;
		case ERR_GEAR:		 	prevValue = (unsigned)*canData.gear;
								upperLimit =3<<3; //Motorola
								lowerLimit =0<<3; //Motorola
								break;
		case ERR_LC_DASH_BIT: 	prevValue = (unsigned)*IOportData.LC_dash_bit;
								upperLimit=1;
								lowerLimit =0;
								break;
		case ERR_N_ENGINE:	 	prevValue = (unsigned)*canData.n_engine;
								upperLimit=10000;
								lowerLimit =0;
								break;
		case ERR_N_WHEEL_FL: 	prevValue = (unsigned)*canData.n_wheel_FL;
								upperLimit=3840;
								lowerLimit =0;
								break;
		case ERR_N_WHEEL_FR: 	prevValue = (unsigned)*canData.n_wheel_FR;
								upperLimit=3840;
								lowerLimit =0;
								break;
		case ERR_N_WHEEL_RL: 	prevValue = (unsigned)*canData.n_wheel_RL;
								upperLimit=3840;
								lowerLimit =0;
								break;
		case ERR_N_WHEEL_RR: 	prevValue = (unsigned)*canData.n_wheel_RR;
								upperLimit=3840;
								lowerLimit =0;
								break;
		case ERR_P_AIR_22:	 	prevValue = (unsigned)*canData.p_air_22;
								upperLimit=1000;
								lowerLimit =0;
								break;
		case ERR_P_AIR_22_DES: 	prevValue = (unsigned)*canData.AN5GearPos;
								upperLimit=1000;
								lowerLimit =0;
								break;
		case ERR_P_BRAKE_F: 	prevValue = (unsigned)*canData.p_brake_F; //todo
								upperLimit=32e3;
								lowerLimit =0;
								break;
		case ERR_P_BRAKE_R: 	prevValue = (unsigned)*IOportData.p_brake_R;
								upperLimit = 4800;
								lowerLimit = 500;
								break;
		case ERR_STW_CLTUCH_MODE: 	prevValue = (unsigned)*canData.STW_clutch_mode; //todo
									upperLimit = 32e3;
									lowerLimit = 0;
									break;
		case ERR_MUE_TYRE:		 	prevValue = (unsigned)*canData.STW_mue_tyre;
									upperLimit = 100;
									lowerLimit = 0;
									break;
		case ERR_STW_SHIFT_DOWN_REQUEST: 	prevValue = (unsigned)*canData.STW_shift_down_request;
											upperLimit = 1;
											lowerLimit = 0;
											break;
		case ERR_STW_SHIFT_UP_REQUEST: 	prevValue = (unsigned)*canData.STW_shift_up_request;
											upperLimit = 1;
											lowerLimit = 0;
											break;
		case ERR_T_WATER_ENGINE: 	prevValue = (unsigned)*canData.t_water_engine;
									upperLimit = 250;
									lowerLimit = 0;
									break;
		case ERR_TRANSMISSION_MODE:	prevValue = (unsigned)*canData.t_water_engine;
									upperLimit = 250;
									lowerLimit = 0;
									break;
		case ERR_U_BAT:				prevValue = (unsigned)*IOportData.U_Bat;
									upperLimit = 20000;
									lowerLimit = 0;
									break;
		case ERR_X_CLUTCH:			prevValue = (unsigned)*IOportData.x_clutch;
									upperLimit = 5000;
									lowerLimit = 0;
									break;
		case ERR_X_CLUTCH_STW:			prevValue = (unsigned)*IOportData.x_clutch_STW;
										upperLimit = 5000;
										lowerLimit = 0;
										break;
		}

		if(value >= lowerLimit && value <= upperLimit)
		{
			setbitFalse((unsigned*)&canData.plausi_error, 2*(error_code-1));
			setbitFalse((unsigned*)&canData.plausi_error, 2*(error_code-1)+1);
			return value;
		}
		else
		{
			if(value <= lowerLimit)
			{
				setbitTrue((unsigned*)&canData.plausi_error, 2*(error_code-1));
			}
			else
			{
				setbitTrue((unsigned*)&canData.plausi_error, 2*(error_code-1)+1);
			}
			return prevValue;
		}
	}
	else
	{
		return value; //No Plausi Check
	}
}
