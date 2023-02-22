#include "fdcan_conf.h"

FDCAN_Rx_Frame_t 	FDCAN_RX_bank[FDCAN_RX_MSG];
FDCAN_RX_data_t		*FDCAN_Data_Rx[FDCAN_RX_DATA];

uint16_t					rx_id_list[FDCAN_RX_MSG] = {0x100, 0x110, 0x120, 0x130, 0x200, 0x210, 0x220, 0x230, 0x300, 0x400, 0x500, 0x600, 0x601, 0x602, 0x603, 0x604, 0x605, 0x606, 0x607};

//Signals Received

FDCAN_RX_data_t a_STWheel;
FDCAN_RX_data_t APPS[2];
FDCAN_RX_data_t d_FAN_HV_Bat;
FDCAN_RX_data_t Error_HV_Bat;
FDCAN_RX_data_t Error_CAN;
FDCAN_RX_data_t Error_Inv[4];
FDCAN_RX_data_t Error_LVS;
FDCAN_RX_data_t Error_MV_Inv[2];
FDCAN_RX_data_t Ethernet_State;
FDCAN_RX_data_t f_Loadcell[4];
FDCAN_RX_data_t I_LV_Bat;
FDCAN_RX_data_t I_MV_Bat;
FDCAN_RX_data_t LTE_State;
FDCAN_RX_data_t n_Motors[4];
FDCAN_RX_data_t p_Brake[2];				//0 is F, 1 is R
FDCAN_RX_data_t PCM_State;
FDCAN_RX_data_t SoC_HV_Bat;
FDCAN_RX_data_t T_HV_Cell[3];			//avg, max, min
FDCAN_RX_data_t T_Inv[4];
FDCAN_RX_data_t T_LV_Cells[2];
FDCAN_RX_data_t T_Motors[4];
FDCAN_RX_data_t T_MV_Cells[5];
FDCAN_RX_data_t T_Tire_FL[8];
FDCAN_RX_data_t T_Tire_FR[8];
FDCAN_RX_data_t T_Tire_RL[8];
FDCAN_RX_data_t T_Tire_RR[8];
FDCAN_RX_data_t T_VCU;
FDCAN_RX_data_t T_Water;
FDCAN_RX_data_t TS_State;
FDCAN_RX_data_t U_HV_Bat;
FDCAN_RX_data_t U_HV_Cell[2];			//max, min
FDCAN_RX_data_t U_LV_Cells[4];
FDCAN_RX_data_t U_MV_Cells[12];		//Cells from 1 to 12
FDCAN_RX_data_t x_DP[4];
FDCAN_RX_data_t x_RH[3];


void FDCAN_RX_def()
{
	int i, nbSignals = 0;
	
	for(i=0; i<4; i++)
	{
		x_DP[i].CAN_length = RX_LENGTH16;
		x_DP[i].CAN_length_dec = 16;
		x_DP[i].CAN_id = 0x100;
		x_DP[i].CAN_startbit = 16*i;
		x_DP[i].Endianness = Motorola;
		x_DP[i].Factor = 0.01;
		x_DP[i].Offset = 0;
		x_DP[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &x_DP[i];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		f_Loadcell[i].CAN_length = RX_LENGTH16;
		f_Loadcell[i].CAN_length_dec = 16;
		f_Loadcell[i].CAN_id = 0x110;
		f_Loadcell[i].CAN_startbit = 16*i;
		f_Loadcell[i].Endianness = Motorola;
		f_Loadcell[i].Factor = 0.1;
		f_Loadcell[i].Offset = 0;
		f_Loadcell[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &f_Loadcell[i];
		nbSignals++;
	}
	
	a_STWheel.CAN_length = RX_LENGTH16;
	a_STWheel.CAN_length_dec = 16;
	a_STWheel.CAN_id = 0x120;
	a_STWheel.CAN_startbit = 0;
	a_STWheel.Endianness = Motorola;
	a_STWheel.Factor = 0.01;
	a_STWheel.Offset = 0;
	a_STWheel.Signed = VALUE_SIGNED;
	FDCAN_Data_Rx[nbSignals] = &a_STWheel;
	nbSignals++;
	
	for(i=0; i<3; i++)
	{
		x_RH[i].CAN_length = RX_LENGTH16;
		x_RH[i].CAN_length_dec = 16;
		x_RH[i].CAN_id = 0x120;
		x_RH[i].CAN_startbit = 16*(1+i);
		x_RH[i].Endianness = Motorola;
		x_RH[i].Factor = 0.01;
		x_RH[i].Offset = 0;
		x_RH[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &x_RH[i];
		nbSignals++;
	}
	
	for(i=0; i<2; i++)
	{
		APPS[i].CAN_length = RX_LENGTH8;
		APPS[i].CAN_length_dec = 8;
		APPS[i].CAN_id = 0x130;
		APPS[i].CAN_startbit = 8*i;
		APPS[i].Endianness = Motorola;
		APPS[i].Factor = 0.392156862745098;
		APPS[i].Offset = 0;
		APPS[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &APPS[i];
		nbSignals++;
	}
	
	for(i=0; i<2; i++)
	{
		p_Brake[i].CAN_length = RX_LENGTH8;
		p_Brake[i].CAN_length_dec = 8;
		p_Brake[i].CAN_id = 0x130;
		p_Brake[i].CAN_startbit = 8*i+16;
		p_Brake[i].Endianness = Motorola;
		p_Brake[i].Factor = 1;
		p_Brake[i].Offset = 0;
		p_Brake[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &p_Brake[i];
		nbSignals++;
	}

	for(i=0; i<4; i++)
	{
		T_Motors[i].CAN_length = RX_LENGTH8;
		T_Motors[i].CAN_length_dec = 8;
		T_Motors[i].CAN_id = 0x200;
		T_Motors[i].CAN_startbit = 8*i;
		T_Motors[i].Endianness = Motorola;
		T_Motors[i].Factor = 0.5;
		T_Motors[i].Offset = 0;
		T_Motors[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &T_Motors[i];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		T_Inv[i].CAN_length = RX_LENGTH8;
		T_Inv[i].CAN_length_dec = 8;
		T_Inv[i].CAN_id = 0x200;
		T_Inv[i].CAN_startbit = 8*i+32;
		T_Inv[i].Endianness = Motorola;
		T_Inv[i].Factor = 0.5;
		T_Inv[i].Offset = 0;
		T_Inv[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &T_Inv[i];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		n_Motors[i].CAN_length = RX_LENGTH16;
		n_Motors[i].CAN_length_dec = 16;
		n_Motors[i].CAN_id = 0x210;
		n_Motors[i].CAN_startbit = 16*i;
		n_Motors[i].Endianness = Motorola;
		n_Motors[i].Factor = 0.5;
		n_Motors[i].Offset = 0;
		n_Motors[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &n_Motors[i];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		Error_Inv[i].CAN_length = RX_LENGTH8;
		Error_Inv[i].CAN_length_dec = 8;
		Error_Inv[i].CAN_id = 0x220;
		Error_Inv[i].CAN_startbit = 8*i;
		Error_Inv[i].Endianness = Motorola;
		Error_Inv[i].Factor = 1;
		Error_Inv[i].Offset = 0;
		Error_Inv[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &Error_Inv[i];
		nbSignals++;
	}
	
	for(i=0; i<3; i++)
	{
		T_HV_Cell[i].CAN_length = RX_LENGTH8;
		T_HV_Cell[i].CAN_length_dec = 8;
		T_HV_Cell[i].CAN_id = 0x230;
		T_HV_Cell[i].CAN_startbit = 8*i;
		T_HV_Cell[i].Endianness = Motorola;
		T_HV_Cell[i].Factor = 0.25;
		T_HV_Cell[i].Offset = 0;
		T_HV_Cell[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &T_HV_Cell[i];
		nbSignals++;
	}
	
	for(i=0; i<2; i++)
	{
		U_HV_Cell[i].CAN_length = RX_LENGTH8;
		U_HV_Cell[i].CAN_length_dec = 8;
		U_HV_Cell[i].CAN_id = 0x230;
		U_HV_Cell[i].CAN_startbit = 8*i+24;
		U_HV_Cell[i].Endianness = Motorola;
		U_HV_Cell[i].Factor = 0.02;
		U_HV_Cell[i].Offset = 0;
		U_HV_Cell[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &U_HV_Cell[i];
		nbSignals++;
	}
	
	U_HV_Bat.CAN_length = RX_LENGTH16;
	U_HV_Bat.CAN_length_dec = 16;
	U_HV_Bat.CAN_id = 0x230;
	U_HV_Bat.CAN_startbit = 40;
	U_HV_Bat.Endianness = Motorola;
	U_HV_Bat.Factor = 0.01;
	U_HV_Bat.Offset = 0;
	U_HV_Bat.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &U_HV_Bat;
	nbSignals++;
	
	Error_HV_Bat.CAN_length = RX_LENGTH8;
	Error_HV_Bat.CAN_length_dec = 8;
	Error_HV_Bat.CAN_id = 0x230;
	Error_HV_Bat.CAN_startbit = 56;
	Error_HV_Bat.Endianness = Motorola;
	Error_HV_Bat.Factor = 1;
	Error_HV_Bat.Offset = 0;
	Error_HV_Bat.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &Error_HV_Bat;
	nbSignals++;
	
	Error_LVS.CAN_length = RX_LENGTH8;
	Error_LVS.CAN_length_dec = 8;
	Error_LVS.CAN_id = 0x300;
	Error_LVS.CAN_startbit = 0;
	Error_LVS.Endianness = Motorola;
	Error_LVS.Factor = 1;
	Error_LVS.Offset = 0;
	Error_LVS.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &Error_LVS;
	nbSignals++;
	
	Ethernet_State.CAN_length = RX_LENGTH4;
	Ethernet_State.CAN_length_dec = 4;
	Ethernet_State.CAN_id = 0x300;
	Ethernet_State.CAN_startbit = 8;
	Ethernet_State.Endianness = Motorola;
	Ethernet_State.Factor = 1;
	Ethernet_State.Offset = 0;
	Ethernet_State.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &Ethernet_State;
	nbSignals++;
	
	LTE_State.CAN_length = RX_LENGTH4;
	LTE_State.CAN_length_dec = 4;
	LTE_State.CAN_id = 0x300;
	LTE_State.CAN_startbit = 12;
	LTE_State.Endianness = Motorola;
	LTE_State.Factor = 1;
	LTE_State.Offset = 0;
	LTE_State.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &LTE_State;
	nbSignals++;
	
	I_LV_Bat.CAN_length = RX_LENGTH8;
	I_LV_Bat.CAN_length_dec = 8;
	I_LV_Bat.CAN_id = 0x300;
	I_LV_Bat.CAN_startbit = 16;
	I_LV_Bat.Endianness = Motorola;
	I_LV_Bat.Factor = 0.2;
	I_LV_Bat.Offset = 0;
	I_LV_Bat.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &I_LV_Bat;
	nbSignals++;
		
	Error_CAN.CAN_length = RX_LENGTH8;
	Error_CAN.CAN_length_dec = 8;
	Error_CAN.CAN_id = 0x300;
	Error_CAN.CAN_startbit = 24;
	Error_CAN.Endianness = Motorola;
	Error_CAN.Factor = 1;
	Error_CAN.Offset = 0;
	Error_CAN.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &Error_CAN;
	nbSignals++;
	
	T_VCU.CAN_length = RX_LENGTH8;
	T_VCU.CAN_length_dec = 8;
	T_VCU.CAN_id = 0x300;
	T_VCU.CAN_startbit = 32;
	T_VCU.Endianness = Motorola;
	T_VCU.Factor = 0.5;
	T_VCU.Offset = 0;
	T_VCU.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &T_VCU;
	nbSignals++;
//	
//	U_LV_Bat.CAN_length = RX_LENGTH8;
//	U_LV_Bat.CAN_length_dec = 8;
//	U_LV_Bat.CAN_id = 0x300;
//	U_LV_Bat.CAN_startbit = 40;
//	U_LV_Bat.Endianness = Motorola;
//	U_LV_Bat.Factor = 0.1;
//	U_LV_Bat.Offset = 0;
//	U_LV_Bat.Signed = VALUE_UNSIGNED;
//	FDCAN_Data_Rx[nbSignals] = &U_LV_Bat;
//	nbSignals++;
	
	for(i=0; i<2; i++)
	{
		T_LV_Cells[i].CAN_length = RX_LENGTH8;
		T_LV_Cells[i].CAN_length_dec = 8;
		T_LV_Cells[i].CAN_id = 0x300;
		T_LV_Cells[i].CAN_startbit = 40+8*i;
		T_LV_Cells[i].Endianness = Motorola;
		T_LV_Cells[i].Factor = 0.25;
		T_LV_Cells[i].Offset = 0;
		T_LV_Cells[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &T_LV_Cells[i];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		U_LV_Cells[i].CAN_length = RX_LENGTH8;
		U_LV_Cells[i].CAN_length_dec = 8;
		U_LV_Cells[i].CAN_id = 0x310;
		U_LV_Cells[i].CAN_startbit = 8*i;
		U_LV_Cells[i].Endianness = Motorola;
		U_LV_Cells[i].Factor = 0.25;
		U_LV_Cells[i].Offset = 0;
		U_LV_Cells[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &U_LV_Cells[i];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		U_MV_Cells[i].CAN_length = RX_LENGTH8;
		U_MV_Cells[i].CAN_length_dec = 8;
		U_MV_Cells[i].CAN_id = 0x310;
		U_MV_Cells[i].CAN_startbit = 40+8*i;
		U_MV_Cells[i].Endianness = Motorola;
		U_MV_Cells[i].Factor = 0.25;
		U_MV_Cells[i].Offset = 0;
		U_MV_Cells[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &U_MV_Cells[i];
		nbSignals++;
	}
	
	for(i=0; i<8; i++)
	{
		U_MV_Cells[i+4].CAN_length = RX_LENGTH8;
		U_MV_Cells[i+4].CAN_length_dec = 8;
		U_MV_Cells[i+4].CAN_id = 0x320;
		U_MV_Cells[i+4].CAN_startbit = 8*i;
		U_MV_Cells[i+4].Endianness = Motorola;
		U_MV_Cells[i+4].Factor = 0.25;
		U_MV_Cells[i+4].Offset = 0;
		U_MV_Cells[i+4].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &U_MV_Cells[i+4];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		T_MV_Cells[i+4].CAN_length = RX_LENGTH8;
		T_MV_Cells[i+4].CAN_length_dec = 8;
		T_MV_Cells[i+4].CAN_id = 0x330;
		T_MV_Cells[i+4].CAN_startbit = 8*i;
		T_MV_Cells[i+4].Endianness = Motorola;
		T_MV_Cells[i+4].Factor = 0.25;
		T_MV_Cells[i+4].Offset = 0;
		T_MV_Cells[i+4].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &T_MV_Cells[i];
		nbSignals++;
	}
	
	
	I_MV_Bat.CAN_length = RX_LENGTH16;
	I_MV_Bat.CAN_length_dec = 16;
	I_MV_Bat.CAN_id = 0x330;
	I_MV_Bat.CAN_startbit = 40;
	I_MV_Bat.Endianness = Motorola;
	I_MV_Bat.Factor = 0.01;
	I_MV_Bat.Offset = 0;
	I_MV_Bat.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &I_MV_Bat;
	nbSignals++;
	
	d_FAN_HV_Bat.CAN_length = RX_LENGTH8;
	d_FAN_HV_Bat.CAN_length_dec = 8;
	d_FAN_HV_Bat.CAN_id = 0x500;
	d_FAN_HV_Bat.CAN_startbit = 0;
	d_FAN_HV_Bat.Endianness = Motorola;
	d_FAN_HV_Bat.Factor = 0.392156862745098;
	d_FAN_HV_Bat.Offset = 0;
	d_FAN_HV_Bat.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &d_FAN_HV_Bat;
	nbSignals++;
	
	for(i=0; i<2; i++)
	{
		Error_MV_Inv[i].CAN_length = RX_LENGTH8;
		Error_MV_Inv[i].CAN_length_dec = 8;
		Error_MV_Inv[i].CAN_id = 0x500;
		Error_MV_Inv[i].CAN_startbit = 8+8*i;
		Error_MV_Inv[i].Endianness = Motorola;
		Error_MV_Inv[i].Factor = 1;
		Error_MV_Inv[i].Offset = 0;
		Error_MV_Inv[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &Error_MV_Inv[i];
		nbSignals++;
	}
	
	SoC_HV_Bat.CAN_length = RX_LENGTH8;
	SoC_HV_Bat.CAN_length_dec = 8;
	SoC_HV_Bat.CAN_id = 0x500;
	SoC_HV_Bat.CAN_startbit = 24;
	SoC_HV_Bat.Endianness = Motorola;
	SoC_HV_Bat.Factor = 0.392156862745098;
	SoC_HV_Bat.Offset = 0;
	SoC_HV_Bat.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &SoC_HV_Bat;
	nbSignals++;
	
	T_Water.CAN_length = RX_LENGTH8;
	T_Water.CAN_length_dec = 8;
	T_Water.CAN_id = 0x500;
	T_Water.CAN_startbit = 32;
	T_Water.Endianness = Motorola;
	T_Water.Factor = 0.5;
	T_Water.Offset = 0;
	T_Water.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &T_Water;
	nbSignals++;
	
	TS_State.CAN_length = RX_LENGTH8;
	TS_State.CAN_length_dec = 8;
	TS_State.CAN_id = 0x500;
	TS_State.CAN_startbit = 40;
	TS_State.Endianness = Motorola;
	TS_State.Factor = 1;
	TS_State.Offset = 0;
	TS_State.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &TS_State;
	nbSignals++;
	
	PCM_State.CAN_length = RX_LENGTH8;
	PCM_State.CAN_length_dec = 8;
	PCM_State.CAN_id = 0x500;
	PCM_State.CAN_startbit = 48;
	PCM_State.Endianness = Motorola;
	PCM_State.Factor = 0.392156862745098;
	PCM_State.Offset = 0;
	PCM_State.Signed = VALUE_UNSIGNED;
	FDCAN_Data_Rx[nbSignals] = &PCM_State;
	nbSignals++;
	
	for(i=0; i<4; i++)
	{
		T_Tire_FL[i].CAN_length = RX_LENGTH16;
		T_Tire_FL[i].CAN_length_dec = 16;
		T_Tire_FL[i].CAN_id = 0x600;
		T_Tire_FL[i].CAN_startbit = 16*i;
		T_Tire_FL[i].Endianness = Motorola;
		T_Tire_FL[i].Factor = 0.1;
		T_Tire_FL[i].Offset = (-100);
		T_Tire_FL[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &T_Tire_FL[i];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		T_Tire_FL[i+4].CAN_length = RX_LENGTH16;
		T_Tire_FL[i+4].CAN_length_dec = 16;
		T_Tire_FL[i+4].CAN_id = 0x601;
		T_Tire_FL[i+4].CAN_startbit = 16*i;
		T_Tire_FL[i+4].Endianness = Motorola;
		T_Tire_FL[i+4].Factor = 0.1;
		T_Tire_FL[i+4].Offset = (-100);
		T_Tire_FL[i+4].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &T_Tire_FL[i+4];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		T_Tire_FR[i].CAN_length = RX_LENGTH16;
		T_Tire_FR[i].CAN_length_dec = 16;
		T_Tire_FR[i].CAN_id = 0x602;
		T_Tire_FR[i].CAN_startbit = 16*i;
		T_Tire_FR[i].Endianness = Motorola;
		T_Tire_FR[i].Factor = 0.1;
		T_Tire_FR[i].Offset = (-100);
		T_Tire_FR[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &T_Tire_FR[i];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		T_Tire_FR[i+4].CAN_length = RX_LENGTH16;
		T_Tire_FR[i+4].CAN_length_dec = 16;
		T_Tire_FR[i+4].CAN_id = 0x603;
		T_Tire_FR[i+4].CAN_startbit = 16*i;
		T_Tire_FR[i+4].Endianness = Motorola;
		T_Tire_FR[i+4].Factor = 0.1;
		T_Tire_FR[i+4].Offset = (-100);
		T_Tire_FR[i+4].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &T_Tire_FR[i+4];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		T_Tire_RL[i].CAN_length = RX_LENGTH16;
		T_Tire_RL[i].CAN_length_dec = 16;
		T_Tire_RL[i].CAN_id = 0x604;
		T_Tire_RL[i].CAN_startbit = 16*i;
		T_Tire_RL[i].Endianness = Motorola;
		T_Tire_RL[i].Factor = 0.1;
		T_Tire_RL[i].Offset = (-100);
		T_Tire_RL[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &T_Tire_RL[i];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		T_Tire_RL[i+4].CAN_length = RX_LENGTH16;
		T_Tire_RL[i+4].CAN_length_dec = 16;
		T_Tire_RL[i+4].CAN_id = 0x605;
		T_Tire_RL[i+4].CAN_startbit = 16*i;
		T_Tire_RL[i+4].Endianness = Motorola;
		T_Tire_RL[i+4].Factor = 0.1;
		T_Tire_RL[i+4].Offset = (-100);
		T_Tire_RL[i+4].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &T_Tire_RL[i+4];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		T_Tire_RR[i].CAN_length = RX_LENGTH16;
		T_Tire_RR[i].CAN_length_dec = 16;
		T_Tire_RR[i].CAN_id = 0x606;
		T_Tire_RR[i].CAN_startbit = 16*i;
		T_Tire_RR[i].Endianness = Motorola;
		T_Tire_RR[i].Factor = 0.1;
		T_Tire_RR[i].Offset = (-100);
		T_Tire_RR[i].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &T_Tire_RR[i];
		nbSignals++;
	}
	
	for(i=0; i<4; i++)
	{
		T_Tire_RR[i+4].CAN_length = RX_LENGTH16;
		T_Tire_RR[i+4].CAN_length_dec = 16;
		T_Tire_RR[i+4].CAN_id = 0x607;
		T_Tire_RR[i+4].CAN_startbit = 16*i;
		T_Tire_RR[i+4].Endianness = Motorola;
		T_Tire_RR[i+4].Factor = 0.1;
		T_Tire_RR[i+4].Offset = (-100);
		T_Tire_RR[i+4].Signed = VALUE_UNSIGNED;
		FDCAN_Data_Rx[nbSignals] = &T_Tire_RR[i+4];
		nbSignals++;
	}
}
