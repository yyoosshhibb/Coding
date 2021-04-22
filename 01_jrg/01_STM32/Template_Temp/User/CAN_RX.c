#include "CAN_Conf.h"


CanRX_Frame_t CAN1_RX_bank[RX1_FRAME_NB]; //defining a databank for can bus number and ID check after receiving
CanRX_Frame_t CAN2_RX_bank[RX2_FRAME_NB]; //defining a databank for can bus number and ID check after receiving

CAN_data_RX_t *CAN1_data_RX[RX1_DATA_NB];
CAN_data_RX_t *CAN2_data_RX[RX2_DATA_NB];

#ifdef HW_ELB

///////////////////Definition received messages////////////////////
CAN_data_RX_t Water_Fan;
CAN_data_RX_t IC_Fan;
CAN_data_RX_t Starter;
	#if USE_WATER_SPLASH
	CAN_data_RX_t Water_Splash;
	#endif
#endif

#ifdef HW_R5_ELB

///////////////////Definition received messages////////////////////
CAN_data_RX_t Water_Fan_R5;
CAN_data_RX_t Water_Splash;
#endif

void CAN_RX_def()
{
	int i,j;

///////////////////////////////////DATA STORAGES DEFINITIONS//////////////////////////////////////
#ifdef HW_ELB
	CAN1_RX_bank[0].CAN_Id = 0x303;
#endif
#ifdef HW_R5_ELB
	CAN1_RX_bank[0].CAN_Id = 0x303;
	//CAN1_RX_bank[1].CAN_Id = 0x403;   //EXAMPLE OF NEW FRAME TO READ
#endif
/////////////////////////////////////////DATA DEFINITIONS/////////////////////////////////////////
#ifdef HW_ELB
	Water_Fan.CAN_id = 0x303;
	Water_Fan.CAN_length = RX_LENGTH1;
	Water_Fan.CAN_length_dec = 1;
	Water_Fan.CAN_startbit = 58;
	
	IC_Fan.CAN_id = 0x303;
	IC_Fan.CAN_length = RX_LENGTH1;
	IC_Fan.CAN_length_dec = 1;
	IC_Fan.CAN_startbit = 57;
	
	Starter.CAN_id = 0x303;
	Starter.CAN_length = RX_LENGTH1;
	Starter.CAN_length_dec = 1;
	Starter.CAN_startbit = 59;
	
#if USE_WATER_SPLASH
	Water_Splash.CAN_id = 0x303;
	Water_Splash.CAN_length = RX_LENGTH1;
	Water_Splash.CAN_length_dec = 1;
	Water_Splash.CAN_startbit = 59;
#endif

#endif

#ifdef HW_R5_ELB
	Water_Fan_R5.CAN_id = 0x303;
	Water_Fan_R5.CAN_length = RX_LENGTH1;
	Water_Fan_R5.CAN_length_dec = 1;
	Water_Fan_R5.CAN_startbit = 58;
	
	Water_Splash.CAN_id = 0x303;
	Water_Splash.CAN_length = RX_LENGTH1;
	Water_Splash.CAN_length_dec = 1;
	Water_Splash.CAN_startbit = 57;
#endif

//////////////////////////////////LINK DATA TO RECEIVING STRUCTURE////////////////////////////////
#ifdef HW_ELB
	CAN1_data_RX[0] = &Water_Fan;
	CAN1_data_RX[1] = &IC_Fan;
	CAN1_data_RX[2] = &Starter;
	#if USE_WATER_SPLASH
	CAN1_data_RX[3] = &Water_Splash;
	#endif
#endif
#ifdef HW_R5_ELB
	CAN1_data_RX[0] = &Water_Fan_R5;
	CAN1_data_RX[1] = &Water_Splash;
#endif
	
}