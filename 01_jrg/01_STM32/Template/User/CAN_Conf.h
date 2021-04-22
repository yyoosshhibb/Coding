#ifndef __CAN_MSG
#define __CAN_MSG

#include "Hardware_Def.h"

typedef enum{
	CAN1_Bus=0,
	CAN2_Bus,
	
	CAN_Bus_Nb
}CAN_Bus_t;

typedef enum{
	Motorola,
	Intel,
}Endianness_t;

////////////////////////CAN TRANSMITTING FRAME STRUCTURE////////////////////
typedef struct {
	
  uint8_t Data[8];
	CAN_TxHeaderTypeDef *TXheader;
	uint8_t bus_num;
	
} CanTX_Frame_t;

////////////////////////CAN RECEIVING FRAME STRUCTURE////////////////////
typedef struct {
	
  uint64_t Data;
	CAN_RxHeaderTypeDef *RXheader;
	uint8_t bus_num;
	uint32_t CAN_Id;
	
} CanRX_Frame_t;

////////////////////////CAN RECEIVING MSG QUEUE STRUCTURE////////////////////
typedef struct {
	
  uint8_t Data[8];    /**< Données. */
	CAN_RxHeaderTypeDef RXheader;
	
} CanRX_Queue_t;

	///////////////////////////CAN DATA STRUCTURE FOR TRANSMITTED MESSAGES/////////////////////
typedef struct{
	
	uint16_t			CAN_length;			//can length in bits (look at the table 1 below)
	uint8_t				CAN_length_dec; //Can length in decimal value
	uint16_t			*CAN_data;			//can data maximum length of 2 bytes
	uint32_t 			CAN_id;					//can id
	uint8_t				CAN_startbit;		//start bit of the data
	Endianness_t  Endianness;			//endianness of the data (Motorola or Intel)
	
}CAN_data_TX_t;

	///////////////////////////CAN DATA STRUCTURE FOR RECEIVED MESSAGES/////////////////////
typedef struct{
	
	uint16_t			CAN_length;			//can length in bits (look at the table 1 below)
	uint8_t				CAN_length_dec; //Can length in decimal value
	uint16_t			CAN_data;				//can data maximum length of 2 bytes
	uint32_t 			CAN_id;					//can id
	uint8_t				CAN_startbit;		//start bit of the data
	Endianness_t  Endianness;			//endianness of the data (Motorola or Intel)
	
}CAN_data_RX_t;

///////////////////////////table of can length/////////////////////////////////
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
/////////////////////////////////////////////////////////////////////////////////



#define CAN1speed S_1Mb
#define CAN2speed S_1Mb

#define CAN1_FULL_RETRANSMIT 		0
#define	CAN1_FILTER_RETRANSMIT	1					//DO not activate both full and filter restransmitting 

#define CAN2_FULL_RETRANSMIT 		0
#define	CAN2_FILTER_RETRANSMIT	1					//DO not activate both full and filter restransmitting 

#define DATANb 1        //Number of sending messages

#define RX1_DATA_NB 0   //Number of datas received by CAN1
#define RX2_DATA_NB 1   //Number of datas received by CAN2

#define RX1_FRAME_NB 0 //Number of receiving frame in the CAN1
#define RX2_FRAME_NB 1 //Number of receiving frame in the CAN2

#define CAN_RX_WAIT	1000  //VALUE FOR WAITING BEFOR TR ACTIVATION IN MS

extern CAN_data_RX_t PotentiometerRx;
//extern CAN_data_RX_t IC_Fan;
//extern CAN_data_RX_t Starter;

#if USE_WATER_SPLASH
extern CAN_data_RX_t Water_Splash;
#endif

/////////////Definition of can messages sent/////////////////

extern  CAN_data_TX_t PotentiometerTx;
//extern 	CAN_data_TX_t ANA2;
//extern 	CAN_data_TX_t ANA3;
//extern 	CAN_data_TX_t ANA4;
//extern 	CAN_data_TX_t ANA5;
//extern 	CAN_data_TX_t ANA6;
//extern 	CAN_data_TX_t TR_DIAG1;
//extern 	CAN_data_TX_t TR_DIAG2;
//extern 	CAN_data_TX_t TR_DIAG3;
