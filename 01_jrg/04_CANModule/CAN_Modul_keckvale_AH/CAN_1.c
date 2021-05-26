/*
 * CAN_1.c
 *
 *  Created on: 01 Aug 2020
 *      Author: Paul
 */

#include "Header.h"

#define CAN_1_RES ENABLED       // "ENABLED" for activation and "DISABLED" for deactivation

uint8_t CAN1_data_Tx_LM01[8] = {0};

uint8_t delay_for_CAN1_Transmit = 5; //ms

void CAN1_INIT()
{

	if (CAN_1_RES == ENABLED)
		DIGITAL_IO_SetOutputHigh (&CAN_1_RES_CTRL);

	else
		DIGITAL_IO_SetOutputLow (&CAN_1_RES_CTRL);

}

void Task_CAN_1_Transmit()
{
	while(1){

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


	//Measuremenet 0x7E1 LM01
	CAN1_data_Tx_LM01[0] = p_Pneu.CAN_Data[0];
	CAN1_data_Tx_LM01[1] = x_RH_RL.CAN_Data[0];
	CAN1_data_Tx_LM01[2] = x_RH_RR.CAN_Data[0];
	CAN1_data_Tx_LM01[3] = T_Water.CAN_Data[0];
	CAN1_data_Tx_LM01[4] = p_Oil.CAN_Data[0];
	CAN1_data_Tx_LM01[5] = T_Oil.CAN_Data[0];
	CAN1_data_Tx_LM01[6] = T_Board.CAN_Data[0];
	CAN1_data_Tx_LM01[7] = u_12V_Meas.CAN_Data[0];

	CAN_NODE_MO_UpdateData(&CAN_1_LMO_01_Config, CAN1_data_Tx_LM01);
	CAN_NODE_MO_Transmit(&CAN_1_LMO_01_Config);

	vTaskDelay(pdMS_TO_TICKS(delay_for_CAN1_Transmit));
	}
}
