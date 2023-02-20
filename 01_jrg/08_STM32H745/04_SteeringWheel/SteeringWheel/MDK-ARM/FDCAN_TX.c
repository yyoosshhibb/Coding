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
	
	int i, j;
	Powerlimit.CAN_id = 0x10;
	Powerlimit.CAN_length = RX_LENGTH8;
	Powerlimit.CAN_length_dec = 8;
	Powerlimit.CAN_startbit = 0;
	Powerlimit.Endianness = Motorola;
	Powerlimit.CAN_data = 100;

	FDCAN_Data_Tx[0] = &Powerlimit;
	
}

