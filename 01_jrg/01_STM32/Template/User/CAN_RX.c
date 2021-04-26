#include "CAN_Conf.h"


CanRX_Frame_t CAN1_RX_bank[RX1_FRAME_NB]; //defining a databank for can bus number and ID check after receiving
CanRX_Frame_t CAN2_RX_bank[RX2_FRAME_NB]; //defining a databank for can bus number and ID check after receiving
 
CAN_data_RX_t *CAN1_data_RX[RX1_DATA_NB];
CAN_data_RX_t *CAN2_data_RX[RX2_DATA_NB];

//Definition received messages
CAN_data_RX_t RX_ANA1;
CAN_data_RX_t RX_LED1_DC;
CAN_data_RX_t RX_LED2_DC;
CAN_data_RX_t RX_LED3_DC;
CAN_data_RX_t RX_LED4_DC;


void CAN_RX_def()
{
	//int i,j;

///////////////////////////////////DATA STORAGES DEFINITIONS//////////////////////////////////////
	CAN2_RX_bank[0].CAN_Id = 0x100;
#ifdef HW_ELB
	CAN1_RX_bank[0].CAN_Id = 0x303;
#endif
#ifdef HW_R5_ELB
	CAN1_RX_bank[0].CAN_Id = 0x303;
	//CAN1_RX_bank[1].CAN_Id = 0x403;   //EXAMPLE OF NEW FRAME TO READ
#endif
/////////////////////////////////////////DATA DEFINITIONS/////////////////////////////////////////
	RX_ANA1.CAN_id = 0x100;
	RX_ANA1.CAN_length = RX_LENGTH16;
	RX_ANA1.CAN_length_dec = 16;
	RX_ANA1.CAN_startbit = 0;
	
	RX_LED1_DC.CAN_id = 0x100;
	RX_LED1_DC.CAN_length = RX_LENGTH8;
	RX_LED1_DC.CAN_length_dec = 8;
	RX_LED1_DC.CAN_startbit = 16;

	RX_LED2_DC.CAN_id = 0x100;
	RX_LED2_DC.CAN_length = RX_LENGTH8;
	RX_LED2_DC.CAN_length_dec = 8;
	RX_LED2_DC.CAN_startbit = 24;

	RX_LED3_DC.CAN_id = 0x100;
	RX_LED3_DC.CAN_length = RX_LENGTH8;
	RX_LED3_DC.CAN_length_dec = 8;
	RX_LED3_DC.CAN_startbit = 32;

	RX_LED4_DC.CAN_id = 0x100;
	RX_LED4_DC.CAN_length = RX_LENGTH8;
	RX_LED4_DC.CAN_length_dec = 8;
	RX_LED4_DC.CAN_startbit = 40;
	
//////////////////////////////////LINK DATA TO RECEIVING STRUCTURE////////////////////////////////

	CAN2_data_RX[0] = &RX_ANA1;
	CAN2_data_RX[1] = &RX_LED1_DC;
	CAN2_data_RX[2] = &RX_LED2_DC;
	CAN2_data_RX[3] = &RX_LED3_DC;
	CAN2_data_RX[4] = &RX_LED4_DC;
	
}

