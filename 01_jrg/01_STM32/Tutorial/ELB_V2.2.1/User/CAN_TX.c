#include "CAN_Conf.h"

uint8_t Error_Data[8];		//CAN ERROR data to transmit

CAN_data_TX_t *CANdata[DATANb];

CAN_TxHeaderTypeDef HTX_Diag;

uint16_t CAN2_FILTER_TR_bank[4];
uint16_t CAN1_FILTER_TR_bank[4];

#ifdef HW_ELB

  CAN_data_TX_t ANA1;
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

#ifdef HW_SI
	HTX_290h.StdId = 0x290;
	HTX_290h.DLC = 1;
	HTX_290h.ExtId = 0;
  HTX_290h.IDE = CAN_ID_STD;
  HTX_290h.RTR = CAN_RTR_DATA;
  HTX_290h.TransmitGlobalTime = DISABLE;
#endif

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
#ifdef HW_ELB
	ANA1.CAN_length = RX_LENGTH16;
	ANA1.CAN_length_dec = 16;
	ANA1.CAN_id = 0x230;
	ANA1.CAN_startbit = 0;
	ANA1.Endianness = Motorola;
	ANA1.CAN_data = &ADC_1.Value_mV;

	ANA2.CAN_length = RX_LENGTH16;		
	ANA2.CAN_length_dec = 16;
	ANA2.CAN_id = 0x230;
	ANA2.CAN_startbit = 16;
	ANA2.Endianness = Motorola;
	ANA2.CAN_data = &ADC_2.Value_mV;

	ANA3.CAN_length = RX_LENGTH16;
	ANA3.CAN_length_dec = 16;
	ANA3.CAN_id = 0x230;
	ANA3.CAN_startbit = 32;
	ANA3.Endianness = Motorola;
	ANA3.CAN_data = &TR_Water_Fan.Current;

	ANA4.CAN_length = RX_LENGTH16;
	ANA4.CAN_length_dec = 16;
	ANA4.CAN_id = 0x230;
	ANA4.CAN_startbit = 48;
	ANA4.Endianness = Motorola;
	ANA4.CAN_data = &TR_IC_Fan.Current;

	ANA5.CAN_length = RX_LENGTH16;
	ANA5.CAN_length_dec = 16;
	ANA5.CAN_id = 0x234;
	ANA5.CAN_startbit = 0;
	ANA5.Endianness = Motorola;
	ANA5.CAN_data = &TR_Starter.Current;

	ANA6.CAN_length = RX_LENGTH16;
	ANA6.CAN_length_dec = 16;
	ANA6.CAN_id = 0x234;
	ANA6.CAN_startbit = 16;
	ANA6.Endianness = Motorola;
	ANA6.CAN_data = &ADC_6.Real_Value;
	
	TR_DIAG1.CAN_length = RX_LENGTH8;
	TR_DIAG1.CAN_length_dec = 8;
	TR_DIAG1.CAN_id = 0x234;
	TR_DIAG1.CAN_startbit = 40;
	TR_DIAG1.Endianness = Motorola;
	TR_DIAG1.CAN_data = &TR_Water_Fan.Diag.Diag_byte;
	
	TR_DIAG2.CAN_length = RX_LENGTH8;
	TR_DIAG2.CAN_length_dec = 8;
	TR_DIAG2.CAN_id = 0x234;
	TR_DIAG2.CAN_startbit = 48;
	TR_DIAG2.Endianness = Motorola;
	TR_DIAG2.CAN_data = &TR_IC_Fan.Diag.Diag_byte;
	
	TR_DIAG3.CAN_length = RX_LENGTH8;
	TR_DIAG3.CAN_length_dec = 8;
	TR_DIAG3.CAN_id = 0x234;
	TR_DIAG3.CAN_startbit = 56;
	TR_DIAG3.Endianness = Motorola;
	TR_DIAG3.CAN_data = &TR_Starter.Diag.Diag_byte;
#endif


#ifdef HW_CONSOLE
	CAN_SW1.CAN_length = RX_LENGTH1;
	CAN_SW1.CAN_length_dec = 1;
	CAN_SW1.CAN_header = HTX_18FF03F1h;
	CAN_SW1.CAN_startbit = 31;
	CAN_SW1.Endianness = Motorola;
	CAN_SW1.CAN_data = &SW1.State;
	
	CAN_SW2.CAN_length = RX_LENGTH1;
	CAN_SW2.CAN_length_dec = 1;
	CAN_SW2.CAN_header = HTX_18FF03F1h;
	CAN_SW2.CAN_startbit = 25;
	CAN_SW2.Endianness = Motorola;
	CAN_SW2.CAN_data = &SW2.State;
	
	CAN_SW3.CAN_length = RX_LENGTH1;
	CAN_SW3.CAN_length_dec = 1;
	CAN_SW3.CAN_header = HTX_18FF03F1h;
	CAN_SW3.CAN_startbit = 39;
	CAN_SW3.Endianness = Motorola;
	CAN_SW3.CAN_data = &SW3.State;
	
	CAN_SW4.CAN_length = RX_LENGTH1;
	CAN_SW4.CAN_length_dec = 1;
	CAN_SW4.CAN_header = HTX_18FF03F1h;
	CAN_SW4.CAN_startbit = 29;
	CAN_SW4.Endianness = Motorola;
	CAN_SW4.CAN_data = &SW4.State;
	
	CAN_SW5.CAN_length = RX_LENGTH1;
	CAN_SW5.CAN_length_dec = 1;
	CAN_SW5.CAN_header = HTX_18FF03F1h;
	CAN_SW5.CAN_startbit = 27;
	CAN_SW5.Endianness = Motorola;
	CAN_SW5.CAN_data = &SW5.State;
	
	CAN_SW_Knob.CAN_length = RX_LENGTH1;
	CAN_SW_Knob.CAN_length_dec = 1;
	CAN_SW_Knob.CAN_header = HTX_18FF03F1h;
	CAN_SW_Knob.CAN_startbit = 37;
	CAN_SW_Knob.Endianness = Motorola;
	CAN_SW_Knob.CAN_data = &SW6.State;
	
	CAN_Rot_Knob.CAN_length = RX_LENGTH8;
	CAN_Rot_Knob.CAN_length_dec = 8;
	CAN_Rot_Knob.CAN_header = HTX_18FF03F1h;
	CAN_Rot_Knob.CAN_startbit = 8;
	CAN_Rot_Knob.Endianness = Motorola;
	CAN_Rot_Knob.CAN_data = &Incremental_val;
	
	ANA1.CAN_length = RX_LENGTH16;
	ANA1.CAN_length_dec = 16;
	ANA1.CAN_header = HTX_160h;
	ANA1.CAN_startbit = 0;
	ANA1.Endianness = Motorola;
	ANA1.CAN_data = &ADC_1.Value_mV;

	ANA2.CAN_length = RX_LENGTH16;		
	ANA2.CAN_length_dec = 16;
	ANA2.CAN_header = HTX_160h;
	ANA2.CAN_startbit = 16;
	ANA2.Endianness = Motorola;
	ANA2.CAN_data = &ADC_2.Value_mV;

	ANA3.CAN_length = RX_LENGTH16;
	ANA3.CAN_length_dec = 16;
	ANA3.CAN_header = HTX_160h;
	ANA3.CAN_startbit = 32;
	ANA3.Endianness = Motorola;
	ANA3.CAN_data = &ADC_3.Value_mV;
#endif

#ifdef HW_R5_ELB
	SN.CAN_length = RX_LENGTH8;
	SN.CAN_length_dec = 8;
	SN.CAN_id = 0x100;
	SN.CAN_startbit = 0;
	SN.Endianness = Motorola;
	SN.CAN_data = &Serial_Number;
	
	ANA1.CAN_length = RX_LENGTH16;
	ANA1.CAN_length_dec = 16;
	ANA1.CAN_id = 0x230;
	ANA1.CAN_startbit = 0;
	ANA1.Endianness = Motorola;
	ANA1.CAN_data = &TR_Water_Fan_R5.Current;
	
	ANA2.CAN_length = RX_LENGTH16;
	ANA2.CAN_length_dec = 16;
	ANA2.CAN_id = 0x230;
	ANA2.CAN_startbit = 16;
	ANA2.Endianness = Motorola;
	ANA2.CAN_data = &ADC_2.Value_mV;
	
	TR_DIAG1.CAN_length = RX_LENGTH8;
	TR_DIAG1.CAN_length_dec = 8;
	TR_DIAG1.CAN_id = 0x230;
	TR_DIAG1.CAN_startbit = 32;
	TR_DIAG1.Endianness = Motorola;
	TR_DIAG1.CAN_data = &TR_Water_Fan_R5.Diag.Diag_byte;
#endif

/////////////////////////////////////LINK DATA TO SENDING STRUCTURE////////////////////////////////
#ifdef HW_ELB
	CANdata[0] = &ANA1;
	CANdata[1] = &ANA2;
	CANdata[2] = &ANA3;
	CANdata[3] = &ANA4;
	CANdata[4] = &ANA5;
	CANdata[5] = &ANA6;	
	CANdata[6] = &TR_DIAG1;
	CANdata[7] = &TR_DIAG2;
	CANdata[8] = &TR_DIAG3;
#endif

#ifdef HW_SI
	CANdata[0] = &CAN_SW1;
	CANdata[1] = &CAN_SW2;
	CANdata[2] = &CAN_SW3;
	CANdata[3] = &CAN_SW4;
	CANdata[4] = &CAN_SW5;
	CANdata[5] = &CAN_SW6;	
	CANdata[6] = &CAN_SW7;
	CANdata[7] = &CAN_SW8;	
#endif

#ifdef HW_CONSOLE
	CANdata[0] = &CAN_SW1;
	CANdata[1] = &CAN_SW2;
	CANdata[2] = &CAN_SW3;
	CANdata[3] = &CAN_SW4;
	CANdata[4] = &CAN_SW5;
	CANdata[5] = &CAN_SW_Knob;	
	CANdata[6] = &CAN_Rot_Knob;
	CANdata[7] = &ANA1;
	CANdata[8] = &ANA2;
	CANdata[9] = &ANA3;
#endif

#ifdef HW_R5_ELB
	CANdata[0] = &SN;
	CANdata[1] = &ANA1;
	CANdata[2] = &ANA2;
	CANdata[3] = &TR_DIAG1;
#endif

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
	
	CAN2_FILTER_TR_bank[0] = 0x182;
	CAN2_FILTER_TR_bank[1] = 0xFFF;
	CAN2_FILTER_TR_bank[2] = 0xFFF;
	CAN2_FILTER_TR_bank[3] = 0xFFF;
	
	CAN1_FILTER_TR_bank[0] = 0x180;
	CAN1_FILTER_TR_bank[1] = 0x181;
	CAN1_FILTER_TR_bank[2] = 0x182;
	CAN1_FILTER_TR_bank[3] = 0xFFF;
}
