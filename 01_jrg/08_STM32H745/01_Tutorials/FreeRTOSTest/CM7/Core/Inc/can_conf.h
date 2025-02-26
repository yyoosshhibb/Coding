#ifndef CAN_CONF_H
#define CAN_CONF_H



#include "main.h"
#include "Hardware_Def.h"

#define DATANb			4			//How many signals are sent on can

#define FDCAN_RX_MSG	2
#define FDCAN_TX_MSG	4

#define FDCAN_RX_DATA	8

typedef enum{
	Motorola,
	Intel,
}Endianness_t;

typedef struct{
	uint64_t	Data;
	FDCAN_TxHeaderTypeDef	*TxHeader;
}FDCAN_Tx_Frame_t;

typedef struct{
	uint64_t	Data;
	FDCAN_RxHeaderTypeDef	*RxHeader;
}FDCAN_Rx_Frame_t;

typedef struct{
	uint8_t	Data[8];
	FDCAN_RxHeaderTypeDef	RxHeader;
}FDCAN_RxQueue_Frame_t;

typedef struct{

	uint16_t			CAN_length;			//can length in bits (look at the table 1 below)
	uint8_t				CAN_length_dec; 	//Can length in decimal value
	uint16_t			CAN_data;			//can data maximum length of 2 bytes
	uint32_t 			CAN_id;				//can id
	uint8_t				CAN_startbit;		//start bit of the data
	Endianness_t  		Endianness;			//endianness of the data (Motorola or Intel)

}CAN_data_t;

#define RX_LENGTH1 0x1
#define RX_LENGTH2 0x3
#define RX_LENGTH3 0x7
#define RX_LENGTH4 0xF
#define RX_LENGTH5 0x1F
#define RX_LENGTH6 0x3F
#define RX_LENGTH7 0x7F
#define RX_LENGTH8 0xFF
#define RX_LENGTH9 0x1FF
#define RX_LENGTH10 0x3FF
#define RX_LENGTH11 0x7FF
#define RX_LENGTH12 0xFFF
#define RX_LENGTH13 0x1FFF
#define RX_LENGTH14 0x3FFF
#define RX_LENGTH15 0x7FFF
#define RX_LENGTH16 0xFFFF


extern CAN_data_t SoC_HV;
extern CAN_data_t SoC_LV;
extern CAN_data_t T_Cell_HV_max;
extern CAN_data_t T_Cell_LV_max;
extern CAN_data_t T_Inverter_max;
extern CAN_data_t T_Motor_max;
extern CAN_data_t T_Water;
extern CAN_data_t TS_State;


extern CAN_data_t	Powerlimit;
extern CAN_data_t	Drivemode;
extern CAN_data_t	FanSpeed;
extern CAN_data_t	PumpSpeed;

extern CAN_data_t	*CANdata[];


extern CAN_data_t			*FDCAN_Data_Rx[];
extern FDCAN_Rx_Frame_t		FDCAN_RX_bank[];
extern uint16_t				rx_id_list[];

void FDCAN_TX_def(void);
void FDCAN_RX_def(void);


#ifdef __cplusplus
extern "C" {
#endif

#endif

