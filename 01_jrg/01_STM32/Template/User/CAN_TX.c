#include "CAN_Conf.h"

uint8_t Error_Data[8];		//CAN ERROR data to transmit

CAN_data_TX_t *CANdata[DATANb];

CAN_TxHeaderTypeDef HTX_Diag;

uint16_t CAN2_FILTER_TR_bank[4];
uint16_t CAN1_FILTER_TR_bank[4];

//Define Message Parts
CAN_data_TX_t TX_ANA1;
CAN_data_TX_t TX_LED1_DC;
CAN_data_TX_t TX_LED2_DC;
CAN_data_TX_t TX_LED3_DC;
CAN_data_TX_t TX_LED4_DC;

#ifdef HW_ELB

  
 	CAN_data_TX_t ANA2;
 	CAN_data_TX_t ANA3;
 	CAN_data_TX_t ANA4;
 	CAN_data_TX_t ANA5;
 	CAN_data_TX_t ANA6;
	CAN_data_TX_t TR_DIAG1;
	CAN_data_TX_t TR_DIAG2;
	CAN_data_TX_t TR_DIAG3;
	
#endif

#ifdef HW_SI

CAN_TxHeaderTypeDef HTX_290h;

  CAN_data_t CAN_SW1;
 	CAN_data_t CAN_SW2;
 	CAN_data_t CAN_SW3;
 	CAN_data_t CAN_SW4;
 	CAN_data_t CAN_SW5;
 	CAN_data_t CAN_SW6;
 	CAN_data_t CAN_SW7;
 	CAN_data_t CAN_SW8;
#endif

#ifdef HW_CONSOLE
CAN_TxHeaderTypeDef HTX_18FF03F1h;
CAN_TxHeaderTypeDef HTX_160h;

  CAN_data_t CAN_SW1;
 	CAN_data_t CAN_SW2;
 	CAN_data_t CAN_SW3;
 	CAN_data_t CAN_SW4;
 	CAN_data_t CAN_SW5;
 	CAN_data_t CAN_SW_Knob;
	CAN_data_t CAN_Rot_Knob;
	CAN_data_t ANA1;
	CAN_data_t ANA2;
	CAN_data_t ANA3;
#endif

#ifdef HW_R5_ELB
  CAN_data_TX_t SN;					//SERIAL NUMBER
	CAN_data_TX_t ANA1;				//TRANSISTOR CURRENT
	CAN_data_TX_t ANA2;				//SPARE ANALOG
	CAN_data_TX_t TR_DIAG1;		//DIAG TRANSISTOR
#endif

void CAN_TX_def(){
///////////////////////////////////////////HEADERS DEFINITION////////////////////////////////////////////


#ifdef HW_CONSOLE
	HTX_160h.StdId = 0x160;
	HTX_160h.DLC = 8;
	HTX_160h.ExtId = 0;
  HTX_160h.IDE = CAN_ID_STD;
  HTX_160h.RTR = CAN_RTR_DATA;
  HTX_160h.TransmitGlobalTime = DISABLE;
	
	HTX_18FF03F1h.StdId = 0x290;
	HTX_18FF03F1h.DLC = 8;
	HTX_18FF03F1h.ExtId = 0x18FF03F1;
  HTX_18FF03F1h.IDE = CAN_ID_EXT;
  HTX_18FF03F1h.RTR = CAN_RTR_DATA;
  HTX_18FF03F1h.TransmitGlobalTime = DISABLE;
#endif	
		
//////////////////////////////////////MESSAGES TO SEND/RETRANSMIT DEFINED HERE//////////////////////////////

////////////////////////////////////////////ANALOG MESSAGES DEFINITION//////////////////////////////////////
	TX_ANA1.CAN_length = RX_LENGTH16;
	TX_ANA1.CAN_length_dec = 16;
	TX_ANA1.CAN_id = 0x100;
	TX_ANA1.CAN_startbit = 0;
	TX_ANA1.Endianness = Motorola;
	TX_ANA1.CAN_data = &ADC_1.Filtered_Value;
	
	TX_LED1_DC.CAN_length = RX_LENGTH8;
	TX_LED1_DC.CAN_length_dec = 8;
	TX_LED1_DC.CAN_id = 0x100;
	TX_LED1_DC.CAN_startbit = 16;
	TX_LED1_DC.Endianness = Motorola;
	TX_LED1_DC.CAN_data = &LED01.dutycycle;
	
	TX_LED2_DC.CAN_length = RX_LENGTH8;
	TX_LED2_DC.CAN_length_dec = 8;
	TX_LED2_DC.CAN_id = 0x100;
	TX_LED2_DC.CAN_startbit = 24;
	TX_LED2_DC.Endianness = Motorola;
	TX_LED2_DC.CAN_data = &LED02.dutycycle;
	
	TX_LED3_DC.CAN_length = RX_LENGTH8;
	TX_LED3_DC.CAN_length_dec = 8;
	TX_LED3_DC.CAN_id = 0x100;
	TX_LED3_DC.CAN_startbit = 32;
	TX_LED3_DC.Endianness = Motorola;
	TX_LED3_DC.CAN_data = &LED03.dutycycle;
	
	TX_LED4_DC.CAN_length = RX_LENGTH8;
	TX_LED4_DC.CAN_length_dec = 8;
	TX_LED4_DC.CAN_id = 0x100;
	TX_LED4_DC.CAN_startbit = 40;
	TX_LED4_DC.Endianness = Motorola;
	TX_LED4_DC.CAN_data = &LED04.dutycycle;

/////////////////////////////////////LINK DATA TO SENDING STRUCTURE////////////////////////////////
	CANdata[0] = &TX_ANA1;
	CANdata[1] = &TX_LED1_DC;
	CANdata[2] = &TX_LED2_DC;
	CANdata[3] = &TX_LED3_DC;
	CANdata[4] = &TX_LED4_DC;


/////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////ERROR FRAME DEFINITION/////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////

	HTX_Diag.StdId = 0x510;
	HTX_Diag.DLC = 8;
	HTX_Diag.ExtId = 0;
  HTX_Diag.IDE = CAN_ID_STD;
  HTX_Diag.RTR = CAN_RTR_DATA;
  HTX_Diag.TransmitGlobalTime = DISABLE;
	
	if (__HAL_RCC_GET_FLAG(RCC_FLAG_PORRST) == 1)					//POWER ON RESET FLAG
		Error_Data[2] |= 0x01;
	else if (__HAL_RCC_GET_FLAG(RCC_FLAG_IWDGRST) == 1)		//WATCHDOG RESET FLAG
		Error_Data[2] |= 0x02;
	else if (__HAL_RCC_GET_FLAG(RCC_FLAG_LPWRRST) == 1)		//LOW POWER RESET FLAG
		Error_Data[2] |= 0x04;
	else if (__HAL_RCC_GET_FLAG(RCC_FLAG_SFTRST) == 1)		//SOFTWARE RESET FLAG
		Error_Data[2] |= 0x08;
	else if (__HAL_RCC_GET_FLAG(RCC_FLAG_BORRST) == 1)		//BROWN OUT RESET FLAG
		Error_Data[2] |= 0x10;
	else
		Error_Data[2] = 0x00;
		__HAL_RCC_CLEAR_RESET_FLAGS(); //clear the reset flag
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////FILTER TRANSMIT DEFINITION/////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	CAN2_FILTER_TR_bank[0] = 0xFFF;
	CAN2_FILTER_TR_bank[1] = 0xFFF;
	CAN2_FILTER_TR_bank[2] = 0xFFF;
	CAN2_FILTER_TR_bank[3] = 0xFFF;
	
	CAN1_FILTER_TR_bank[0] = 0x100;
	CAN1_FILTER_TR_bank[1] = 0xFFF;
	CAN1_FILTER_TR_bank[2] = 0xFFF;
	CAN1_FILTER_TR_bank[3] = 0xFFF;
}
