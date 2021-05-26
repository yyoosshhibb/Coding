/*
 * CAN_2.c
 *
 *  Created on: 08 Jan 2020
 *      Author: Clovis
 */

#include "Header.h"

#define CAN_2_RES ENABLED       // "ENABLED" for activation and "DISABLED" for deactivation

uint8_t CAN2_data_Tx_LM01[8] = {0};

uint8_t delay_for_CAN2_Transmit = 5; //ms
uint8_t delay_for_CAN2_Receive = 1; //ms

void CAN2_INIT()
{

	if (CAN_2_RES == ENABLED)
		DIGITAL_IO_SetOutputHigh (&CAN_2_RES_CTRL);

	else
		DIGITAL_IO_SetOutputLow (&CAN_2_RES_CTRL);

}

void Task_CAN_2_Receive()
{
	uint8_t Brake_Light_Value=0;

	while(1){

	//------VCU 0x7E2------
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_2_LMO_02_Config);

	Brake_Light_Value = CAN_2_LMO_02_Config.mo_ptr->can_data_byte[0];

	if(Brake_Light_Value==0x80){
		DIGITAL_IO_SetOutputHigh (&Brake_Light);
	}
	else{
		DIGITAL_IO_SetOutputLow (&Brake_Light);
	}
	vTaskDelay(pdMS_TO_TICKS(delay_for_CAN2_Receive));
	}
}

void Task_CAN_2_Transmit()
{
	while(1){

	uint16_t Buffer;

	/*
	T_Oil.CAN_Data[0] = (uint8_t)T_Oil.UnitValue;
	T_Water.CAN_Data[0] = (uint8_t)T_Water.UnitValue;
	T_Board.CAN_Data[0] = (uint8_t)T_Board.UnitValue;
	p_Oil.CAN_Data[0] = (uint8_t)p_Oil.UnitValue;
	p_Pneu.CAN_Data[0] = (uint8_t)p_Pneu.UnitValue;
	x_RH_RL.CAN_Data[0] = (uint8_t)x_RH_RL.UnitValue;
	x_RH_RR.CAN_Data[0] = (uint8_t)x_RH_RR.UnitValue;
	u_12V_Meas.CAN_Data[0] = (uint8_t)u_12V_Meas.UnitValue;
	u_5V_ANA_Meas.CAN_Data[0] = (uint8_t)u_5V_ANA_Meas.UnitValue;
	u_OUT1_Meas.CAN_Data[0] = (uint8_t)u_OUT1_Meas.UnitValue;
	u_OUT2_Meas.CAN_Data[0] = (uint8_t)u_OUT2_Meas.UnitValue;
	*/

	Buffer = (uint16_t)x_DP_RL.UnitValue;

	x_DP_RL.CAN_Data[0] = Buffer&0xFF;
	x_DP_RL.CAN_Data[1] = (Buffer>>8)&0xFF;

	Buffer = (uint16_t)x_DP_RR.UnitValue;

	x_DP_RR.CAN_Data[0] = Buffer&0xFF;
	x_DP_RR.CAN_Data[1] = (Buffer>>8)&0xFF;

	Buffer = (uint16_t)f_LC_RL.UnitValue;

	f_LC_RL.CAN_Data[0] = Buffer&0xFF;
	f_LC_RL.CAN_Data[1] = (Buffer>>8)&0xFF;

	Buffer = (uint16_t)f_LC_RR.UnitValue;

	f_LC_RR.CAN_Data[0] = Buffer&0xFF;
	f_LC_RR.CAN_Data[1] = (Buffer>>8)&0xFF;

	//Measuremenet 0x7E1 LM01
	/*
	CAN2_data_Tx_LM01[0] = p_Pneu.CAN_Data[0];
	CAN2_data_Tx_LM01[1] = x_RH_RL.CAN_Data[0];
	CAN2_data_Tx_LM01[2] = x_RH_RR.CAN_Data[0];
	CAN2_data_Tx_LM01[3] = T_Water.CAN_Data[0];
	CAN2_data_Tx_LM01[4] = p_Oil.CAN_Data[0];
	CAN2_data_Tx_LM01[5] = T_Oil.CAN_Data[0];
	CAN2_data_Tx_LM01[6] = T_Board.CAN_Data[0];
	CAN2_data_Tx_LM01[7] = u_12V_Meas.CAN_Data[0];

	CAN_NODE_MO_UpdateData(&CAN_2_LMO_01_Config, CAN2_data_Tx_LM01);
	CAN_NODE_MO_Transmit(&CAN_2_LMO_01_Config);
	*/

	//WheelForce 0x7DF LM01
	CAN2_data_Tx_LM01[0] = f_LC_RL.CAN_Data[0];
	CAN2_data_Tx_LM01[1] = f_LC_RL.CAN_Data[1];
	CAN2_data_Tx_LM01[2] = f_LC_RR.CAN_Data[0];
	CAN2_data_Tx_LM01[3] = f_LC_RR.CAN_Data[1];
	CAN2_data_Tx_LM01[4] = x_DP_RL.CAN_Data[0];
	CAN2_data_Tx_LM01[5] = x_DP_RL.CAN_Data[1];
	CAN2_data_Tx_LM01[6] = x_DP_RR.CAN_Data[0];
	CAN2_data_Tx_LM01[7] = x_DP_RR.CAN_Data[1];

	CAN_NODE_MO_UpdateData(&CAN_2_LMO_01_Config, CAN2_data_Tx_LM01);
	CAN_NODE_MO_Transmit(&CAN_2_LMO_01_Config);

	vTaskDelay(pdMS_TO_TICKS(delay_for_CAN2_Transmit));
	}
}
