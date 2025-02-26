/*
 * CAN_TX.c
 *
 *  Created on: Feb 10, 2023
 *      Author: Yoshi
 */

#include "can_conf.h"

CAN_data_t	*CANdata[DATANb];		//Struct for outgoing Can data
FDCAN_Tx_Frame_t	FDCAN_Tx_Bank[FDCAN_TX_MSG];

uint16_t			tx_id_list[FDCAN_TX_MSG] = {0x120, 0x100, 0x140, 0x160};



CAN_data_t	Powerlimit;
CAN_data_t	Drivemode;
CAN_data_t	FanSpeed;
CAN_data_t	PumpSpeed;

void FDCAN_TX_def()
{
	int i, j;
	Powerlimit.CAN_id = 0x100;
	Powerlimit.CAN_length = RX_LENGTH8;
	Powerlimit.CAN_length_dec = 8;
	Powerlimit.CAN_startbit = 0;
	Powerlimit.Endianness = Motorola;
	Powerlimit.CAN_data = 80;

	Drivemode.CAN_id = 0x120;
	Drivemode.CAN_length = RX_LENGTH8;
	Drivemode.CAN_length_dec = 8;
	Drivemode.CAN_startbit = 8;
	Drivemode.Endianness = Motorola;
	Drivemode.CAN_data = 3;

	FanSpeed.CAN_id = 0x140;
	FanSpeed.CAN_length = RX_LENGTH8;
	FanSpeed.CAN_length_dec = 8;
	FanSpeed.CAN_startbit = 16;
	FanSpeed.Endianness = Motorola;
	FanSpeed.CAN_data = 128;

	PumpSpeed.CAN_id = 0x160;
	PumpSpeed.CAN_length = RX_LENGTH8;
	PumpSpeed.CAN_length_dec = 8;
	PumpSpeed.CAN_startbit = 24;
	PumpSpeed.Endianness = Motorola;
	PumpSpeed.CAN_data = 64;

	for(i=0; i<FDCAN_TX_MSG; i++)
	{
		FDCAN_Tx_Bank[i].TxHeader->DataLength = FDCAN_DLC_BYTES_8;
		FDCAN_Tx_Bank[i].TxHeader->TxFrameType = FDCAN_DATA_FRAME;
		FDCAN_Tx_Bank[i].TxHeader->BitRateSwitch = FDCAN_BRS_OFF;
		FDCAN_Tx_Bank[i].TxHeader->ErrorStateIndicator = FDCAN_ESI_ACTIVE;
		FDCAN_Tx_Bank[i].TxHeader->FDFormat = FDCAN_FD_CAN;
		FDCAN_Tx_Bank[i].TxHeader->TxEventFifoControl = FDCAN_NO_TX_EVENTS;
		FDCAN_Tx_Bank[i].TxHeader->MessageMarker = 0;
		FDCAN_Tx_Bank[i].TxHeader->IdType = FDCAN_STANDARD_ID;
		FDCAN_Tx_Bank[i].TxHeader->Identifier = tx_id_list[i];
	}

	CANdata[0] = &Powerlimit;
	CANdata[1] = &Drivemode;
	CANdata[2] = &FanSpeed;
	CANdata[3] = &PumpSpeed;
}

