/*
 * CAN_RX.c
 *
 *  Created on: Feb 10, 2023
 *      Author: Yoshi
 */

#include "can_conf.h"

FDCAN_Rx_Frame_t 	FDCAN_RX_bank[FDCAN_RX_MSG];

CAN_data_t			*FDCAN_Data_Rx[FDCAN_RX_DATA];

uint16_t			rx_id_list[FDCAN_RX_MSG] = {0x10, 0x11};

//Signals Received

CAN_data_t SoC_HV;
CAN_data_t SoC_LV;
CAN_data_t T_Cell_HV_max;
CAN_data_t T_Cell_LV_max;
CAN_data_t T_Inverter_max;
CAN_data_t T_Motor_max;
CAN_data_t T_Water;
CAN_data_t TS_State;

void FDCAN_RX_def()
{

	SoC_HV.CAN_length = RX_LENGTH8;
	SoC_HV.CAN_length_dec = 8;
	SoC_HV.CAN_id = 0x10;
	SoC_HV.CAN_startbit = 0;
	SoC_HV.Endianness = Motorola;

	SoC_LV.CAN_length = RX_LENGTH8;
	SoC_LV.CAN_length_dec = 8;
	SoC_LV.CAN_id = 0x10;
	SoC_LV.CAN_startbit = 8;
	SoC_LV.Endianness = Motorola;

	T_Cell_HV_max.CAN_length = RX_LENGTH8;
	T_Cell_HV_max.CAN_length_dec = 8;
	T_Cell_HV_max.CAN_id = 0x10;
	T_Cell_HV_max.CAN_startbit = 16;
	T_Cell_HV_max.Endianness = Motorola;

	T_Cell_LV_max.CAN_length = RX_LENGTH8;
	T_Cell_LV_max.CAN_length_dec = 8;
	T_Cell_LV_max.CAN_id = 0x11;
	T_Cell_LV_max.CAN_startbit = 24;
	T_Cell_LV_max.Endianness = Motorola;

	T_Inverter_max.CAN_length = RX_LENGTH8;
	T_Inverter_max.CAN_length_dec = 8;
	T_Inverter_max.CAN_id = 0x10;
	T_Inverter_max.CAN_startbit = 32;
	T_Inverter_max.Endianness = Motorola;

	T_Motor_max.CAN_length = RX_LENGTH8;
	T_Motor_max.CAN_length_dec = 8;
	T_Motor_max.CAN_id = 0x10;
	T_Motor_max.CAN_startbit = 40;
	T_Motor_max.Endianness = Motorola;

	T_Water.CAN_length = RX_LENGTH8;
	T_Water.CAN_length_dec = 8;
	T_Water.CAN_id = 0x11;
	T_Water.CAN_startbit = 48;
	T_Water.Endianness = Motorola;

	TS_State.CAN_length = RX_LENGTH8;
	TS_State.CAN_length_dec = 8;
	TS_State.CAN_id = 0x10;
	TS_State.CAN_startbit = 56;
	TS_State.Endianness = Motorola;

	FDCAN_Data_Rx[0] = &SoC_HV;
	FDCAN_Data_Rx[1] = &SoC_LV;
	FDCAN_Data_Rx[2] = &T_Cell_HV_max;
	FDCAN_Data_Rx[3] = &T_Cell_LV_max;
	FDCAN_Data_Rx[4] = &T_Inverter_max;
	FDCAN_Data_Rx[5] = &T_Motor_max;
	FDCAN_Data_Rx[6] = &T_Water;
	FDCAN_Data_Rx[7] = &TS_State;
}




//void HAL_FDCAN_RxBufferNewMessageCallback(FDCAN_HandleTypeDef *hfdcan)
//{
//
//
//
//	if (HAL_FDCAN_GetRxMessage(hfdcan, FDCAN_RX_BUFFER0, &RxHeaderTemp, RxData0x10) != HAL_OK)
//	{
//		//Reception Error
//		Error_Handler();
//	}
//	else if (HAL_FDCAN_GetRxMessage(hfdcan, FDCAN_RX_BUFFER1, &RxHeader, RxData0x11) != HAL_OK)
//	{
//		//Reception Error
//		Error_Handler();
//	}
//
//	for (int i = 0; i < FDCAN_RX_MSG; ++i) {
//
//		if(HAL_FDCAN_ActivateNotification(&hfdcan1, FDCAN_IT_RX_BUFFER_NEW_MESSAGE, i) != HAL_OK)
//		{
//			Error_Handler();
//		}
//	}
//}

