#ifndef CAN_CONF_H
#define CAN_CONF_H

#ifdef __cplusplus
extern "C" {
#endif

#include "main.h"

typedef struct{
	uint8_t	Data[8];
	FDCAN_TxHeaderTypeDef	*TxHeader;
}FDCAN_Tx_Frame_t;

typedef struct{
	uint8_t	Data[8];
	FDCAN_RxHeaderTypeDef	*RxHeader;
}FDCAN_Rx_Frame_t;


#define FDCAN_RX_MSG	2
#define FDCAN_TX_MSG	2
#endif
