#ifndef FDCAN_CONF_H
#define FDCAN_CONF_H


#include "HW_Def.h"
#include "main.h"

#define FDCAN_TX_DATA	1			//Number of transmitted signals on CAN
#define FDCAN_TX_MSG	4			//Number of transmitted messages on CAN

#define FDCAN_RX_DATA	109		//Number of received signals on CAN
#define FDCAN_RX_MSG	21		//Number of received messages on CAN


typedef enum{
	Motorola,
	Intel,
}Endianness_t;

typedef enum{
	VALUE_UNSIGNED,
	VALUE_SIGNED,
	}Value_Type_t;

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

	uint16_t					CAN_length;			//can length in bits (look at the table 1 below)
	uint8_t						CAN_length_dec; //Can length in decimal value
	uint16_t					CAN_data;				//can data maximum length of 2 bytes
	uint32_t 					CAN_id;					//can id
	uint8_t						CAN_startbit;		//start bit of the data
	float							Factor;					//Factor for CAN Data
	float							Offset;					//Offset for CAN Data
	float							Value;					//Real World Value
	Endianness_t  		Endianness;			//endianness of the data (Motorola or Intel)
	Value_Type_t			Signed;					//Is the Value Signed or unsigned?
}FDCAN_RX_data_t;

typedef struct{

	uint16_t					CAN_length;			//can length in bits (look at the table 1 below)
	uint8_t						CAN_length_dec; //Can length in decimal value
	uint16_t					*CAN_data;			//can data maximum length of 2 bytes
	uint32_t 					CAN_id;					//can id
	uint8_t						CAN_startbit;		//start bit of the data
	float							Factor;					//Factor for CAN Data
	float							Offset;					//Offset for CAN Data
	float							Value;					//Real World Value
	Endianness_t  		Endianness;			//endianness of the data (Motorola or Intel)
	Value_Type_t			Signed;					//Is the Value Signed or unsigned?
}FDCAN_TX_data_t;


// Value = CANData * Factor + Offset
// CANData = (Value - Offset) / Factor

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

extern FDCAN_HandleTypeDef	hfdcan1;

extern FDCAN_RX_data_t		*FDCAN_Data_Rx[];
extern FDCAN_Rx_Frame_t		FDCAN_RX_bank[];


extern FDCAN_RX_data_t a_STWheel;
extern FDCAN_RX_data_t APPS[2];
extern FDCAN_RX_data_t d_FAN_HV_Bat;
extern FDCAN_RX_data_t Error_HV_Bat;
extern FDCAN_RX_data_t Error_CAN;
extern FDCAN_RX_data_t Error_Inv[4];
extern FDCAN_RX_data_t Error_LVS;
extern FDCAN_RX_data_t Error_MV_Inv[2];
extern FDCAN_RX_data_t Ethernet_State;
extern FDCAN_RX_data_t f_Loadcell[4];
extern FDCAN_RX_data_t I_LV_Bat;
extern FDCAN_RX_data_t I_MV_Bat;
extern FDCAN_RX_data_t LTE_State;
extern FDCAN_RX_data_t n_Motors[4];
extern FDCAN_RX_data_t p_Brake[2];				//0 is F, 1 is R
extern FDCAN_RX_data_t PCM_State;
extern FDCAN_RX_data_t SoC_HV_Bat;
extern FDCAN_RX_data_t T_HV_Cell[3];			//min, max, avg
extern FDCAN_RX_data_t T_Inv[4];
extern FDCAN_RX_data_t T_LV_Cells[2];
extern FDCAN_RX_data_t T_Motors[4];
extern FDCAN_RX_data_t T_MV_Cells[5];
extern FDCAN_RX_data_t T_Tire_FL[8];
extern FDCAN_RX_data_t T_Tire_FR[8];
extern FDCAN_RX_data_t T_Tire_RL[8];
extern FDCAN_RX_data_t T_Tire_RR[8];
extern FDCAN_RX_data_t T_VCU;
extern FDCAN_RX_data_t T_Water;
extern FDCAN_RX_data_t TS_State;
extern FDCAN_RX_data_t U_HV_Bat;
extern FDCAN_RX_data_t U_HV_Cell[2];			//min, max
extern FDCAN_RX_data_t U_LV_Cells[4];
extern FDCAN_RX_data_t U_MV_Cells[12];			
extern FDCAN_RX_data_t x_DP[4];
extern FDCAN_RX_data_t x_RH[3];

extern FDCAN_TX_data_t		*FDCAN_Data_Tx[];

extern FDCAN_TX_data_t		Powerlimit;
extern FDCAN_TX_data_t		Drivemode;
extern FDCAN_TX_data_t		FanSpeed;
extern FDCAN_TX_data_t		PumpSpeed;

extern uint16_t						rx_id_list[];

#define FLAG_CANRX_CONFIG_READY 0x02
#define FLAG_CANTX_CONFIG_READY 0x04

void FDCAN_TX_def(void);
void FDCAN_RX_def(void);
void TASK_FDCAN_RX();
void TASK_FDCAN_TX();

extern osThreadId_t id_Task_FDCAN_RX;
extern osThreadId_t id_Task_FDCAN_TX;

extern osMessageQueueId_t	FDCAN_ERROR_Q;
extern osMessageQueueId_t FDCAN_TX_Q;
extern osMessageQueueId_t FDCAN_RX_Q;



#endif

