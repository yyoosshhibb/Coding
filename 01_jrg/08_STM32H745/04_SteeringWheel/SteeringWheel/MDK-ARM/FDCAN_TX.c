/*
 * CAN_TX.c
 *
 *  Created on: Feb 10, 2023
 *      Author: Yoshi
 */

#include "fdcan_conf.h"

FDCAN_TX_data_t		*FDCAN_Data_Tx[FDCAN_TX_DATA];
FDCAN_Tx_Frame_t	FDCAN_Tx_Bank[FDCAN_TX_MSG];

uint16_t					tx_id_list[FDCAN_TX_MSG] = {};

FDCAN_TX_data_t	Powerlimit;
FDCAN_TX_data_t	Drivemode;
FDCAN_TX_data_t	FanSpeed;
FDCAN_TX_data_t	PumpSpeed;

void FDCAN_TX_def()
{
	/*
	int i, j;
	Powerlimit.CAN_id = 0x100;
	Powerlimit.CAN_length = RX_LENGTH8;
	Powerlimit.CAN_length_dec = 8;
	Powerlimit.CAN_startbit = 0;
	Powerlimit.Endianness = Motorola;

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
	*/
}

