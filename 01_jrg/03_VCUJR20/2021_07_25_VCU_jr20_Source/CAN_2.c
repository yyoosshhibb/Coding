/*
 * CAN_1.c
 *
 *  Created on: 17 Oct 2019
 *      Author: Paul
 */

#include "Header.h"

extern struct data_can canData;
uint8_t CAN2_data_Tx_LM09[8] = {0};
uint8_t CAN2_data_Tx_LM10[8] = {0};
uint8_t CAN2_data_Tx_LM11[8] = {0};
uint16_t g_yaw_ABS = 0;
uint8_t *g_yaw_ABS_LSB, *g_yaw_ABS_MSB;
uint16_t g_long_ABS = 0;
uint8_t *g_long_ABS_LSB, *g_long_ABS_MSB;
uint16_t p_brake_F = 0;
uint8_t *p_brake_F_LSB, *p_brake_F_MSB;
uint16_t n_wheel_FL_mpros = 0;
uint8_t *n_wheel_FL_mpros_LSB, *n_wheel_FL_mpros_MSB;
uint16_t n_wheel_FR_mpros = 0;
uint8_t *n_wheel_FR_mpros_LSB, *n_wheel_FR_mpros_MSB;
uint16_t n_wheel_RL_mpros = 0;
uint8_t *n_wheel_RL_mpros_LSB, *n_wheel_RL_mpros_MSB;
uint16_t n_wheel_RR_mpros = 0;
uint8_t *n_wheel_RR_mpros_LSB, *n_wheel_RR_mpros_MSB;

boolean_T CAN_2_RES = true;

void CAN_2_ini()
{
	//Termination Resistor on CAN 2
	if (CAN_2_RES)
		DIGITAL_IO_SetOutputHigh (&CAN2_Res);
	else
		DIGITAL_IO_SetOutputLow (&CAN2_Res);

	//------ABS 0x80 LM01------
	canData.g_yaw_ABS 			= &g_yaw_ABS;
	g_yaw_ABS_LSB				= &VCU_DW.VAR_IN_g_yaw_ABS_LSB;
	g_yaw_ABS_MSB				= &VCU_DW.VAR_IN_g_long_ABS_MSB;
	canData.g_long_ABS			= &g_long_ABS;
	g_long_ABS_LSB				= &VCU_DW.VAR_IN_g_long_ABS_LSB;
	g_long_ABS_MSB				= &VCU_DW.VAR_IN_g_long_ABS_MSB;

	//------ABS 0x5C0 LM02------
	canData.ABS_switchstate_CAN2	= &VCU_DW.VAR_IN_ABS_switchstate;
	canData.p_brake_F_CAN2			= &p_brake_F;
	p_brake_F_LSB					= &VCU_DW.VAR_IN_p_brake_F_LSB;
	p_brake_F_MSB					= &VCU_DW.VAR_IN_p_brake_F_MSB;
	canData.ABS_BL_swtich_CAN2		= &VCU_DW.VAR_IN_ABS_BL_switch;
	canData.ABS_active_CAN2			= &VCU_DW.VAR_IN_ABS_active;
	canData.ABS_EBD_lamp_CAN2		= &VCU_DW.VAR_IN_ABS_EBD_Lamp;

	//------Wheel n 0x140 LM03------
	canData.n_wheel_FL_mpros	= &n_wheel_FL_mpros;
	n_wheel_FL_mpros_LSB 		= &VCU_DW.VAR_IN_n_wheel_FL_mpros_LSB;
	n_wheel_FL_mpros_MSB 		= &VCU_DW.VAR_IN_n_wheel_FL_mpros_MSB;

	//------Wheel n 0x142 LM04------
	canData.n_wheel_FR_mpros	= &n_wheel_FR_mpros;
	n_wheel_FR_mpros_LSB 		= &VCU_DW.VAR_IN_n_wheel_FR_mpros_LSB;
	n_wheel_FR_mpros_MSB 		= &VCU_DW.VAR_IN_n_wheel_FR_mpros_MSB;

	//------Wheel n 0x340 LM05------
	canData.n_wheel_RL_mpros	= &n_wheel_RL_mpros;
	n_wheel_RL_mpros_LSB 		= &VCU_DW.VAR_IN_n_wheel_RL_mpros_LSB;
	n_wheel_RL_mpros_MSB 		= &VCU_DW.VAR_IN_n_wheel_RL_mpros_MSB;

	//------Wheel n 0x342 LM06------
	canData.n_wheel_RR_mpros	= &n_wheel_RR_mpros;
	n_wheel_RR_mpros_LSB 		= &VCU_DW.VAR_IN_n_wheel_RR_mpros_LSB;
	n_wheel_RR_mpros_MSB 		= &VCU_DW.VAR_IN_n_wheel_RR_mpros_MSB;

	//BSPD 0x200 LM07

	//BSPD 0x201 LM08

	//Wheelforce 0x7E0 LM09
	canData.f_FL			= &VCU_DW.VAR_OUT_f_FL;
	canData.f_FR			= &VCU_DW.VAR_OUT_f_FR;
	//canData.f_RL			= (uint16_t*)&VCU_DW.VAR_OUT_f_RL;
	//canData.f_RR			= (uint16_t*)&VCU_DW.VAR_OUT_f_RR;
	canData.TR1_VSense_WP	= &VAR_TR1_VSense_WP;
	canData.TR2_VSense_FAN1	= &VAR_TR2_VSense_FAN1;
	canData.TR3_VSense_FAN2	= &VAR_TR3_VSense_FAN2;

	//Measurement 0x7E2 LM10
	//canData.x_RH_RL			= (uint8_t*)&VCU_DW.VAR_OUT_x_RH_RL;
	//canData.x_RH_RR			= (uint8_t*)&VCU_DW.VAR_OUT_x_RH_RR;
	canData.Brakelight		= &VCU_DW.VAR_OUT_Brakelight;
	canData.x_RH_F			= &VCU_DW.VAR_OUT_x_RH_F;
	canData.x_clutch		= &VCU_DW.VAR_OUT_x_clutch;
	canData.x_clutch_STW	= &VCU_DW.VAR_OUT_x_clutch_STW;
	canData.p_pneu			= &VCU_DW.VAR_OUT_p_pneum;
	canData.U_bat			= &VCU_DW.VAR_OUT_U_Bat;
	canData.t_board_VCU		= &VAR_boardTemp;
	canData.BSD				= &VCU_DW.VAR_OUT_BSD;

	//Error 0x7E3 LM11
	canData.plausi_error 	= 0;

	//Manual Control 0x7FF LM12
	canData.ManualControl_Active = 0;
	canData.ManConOn_MHJ9_IN = 0;
	canData.ManConOn_MHJ9_OUT = 0;
	canData.ManConOn_Waterpump = 0;
	canData.ManConOn_Fans1 = 0;
	canData.ManConOn_Fans2 = 0;
	canData.ManConOn_VOVGShiftDown = 0;
	canData.ManConOn_VOVGShiftUp = 0;
	canData.ManConOn_IgnCut = 0;
	canData.ManConOn_VOVG_IN = 0;
	canData.ManConOn_VOVG_OUT = 0;
	canData.ManConVar_MHJ9_IN = 0;
	canData.ManConVar_MHJ9_OUT = 0;
	canData.ManConVar_Waterpump = 0;
	canData.ManConVar_Fans1 = 0;
	canData.ManConVar_Fans2 = 0;
	canData.ManConVar_VOVGShiftDown = 0;
	canData.ManConVar_VOVGShiftUp = 0;
	canData.ManConVar_IgnCut = 0;
	canData.ManConVar_VOVG_IN = 0;
	canData.ManConVar_VOVG_OUT = 0;
}

void CAN_2_Receive()
{
	//------ABS 0x80 LM01------
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_2_LMO_01_Config);

	*canData.g_yaw_ABS 			= checkRangePlausi(CAN_2_LMO_01_Config.mo_ptr->can_data_word[0],ERR_G_YAW_ABS);
	*g_yaw_ABS_LSB				= getbits(*canData.g_yaw_ABS, 7, 8);
	*g_yaw_ABS_MSB				= getbits(*canData.g_yaw_ABS, 15, 8);
	*canData.g_long_ABS			= checkRangePlausi(CAN_2_LMO_01_Config.mo_ptr->can_data_word[1],ERR_G_LONG_ABS);
	*g_long_ABS_LSB				= getbits(*canData.g_long_ABS, 7, 8);
	*g_long_ABS_MSB				= getbits(*canData.g_long_ABS, 15, 8);

	//------ABS 0x5C0 LM02------
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_2_LMO_02_Config);

	*canData.ABS_switchstate_CAN2	= CAN_2_LMO_02_Config.mo_ptr->can_data_byte[0];
	*canData.p_brake_F_CAN2			= checkRangePlausi(getbits(CAN_2_LMO_02_Config.mo_ptr->can_data_long,23,16),ERR_P_BRAKE_F);
	*p_brake_F_LSB					= getbits(*canData.p_brake_F_CAN2, 7, 8);
	*p_brake_F_MSB					= getbits(*canData.p_brake_F_CAN2, 15, 8);
	*canData.ABS_BL_swtich_CAN2		= CAN_2_LMO_02_Config.mo_ptr->can_data_byte[3];
	*canData.ABS_active_CAN2		= CAN_2_LMO_02_Config.mo_ptr->can_data_byte[4];
	*canData.ABS_EBD_lamp_CAN2		= CAN_2_LMO_02_Config.mo_ptr->can_data_byte[5];

	//------Wheel n 0x140 LM03------
	//CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_2_LMO_03_Config);

	//*canData.n_wheel_FL_mpros	= checkRangePlausi(CAN_2_LMO_03_Config.mo_ptr->can_data_word[0],ERR_N_WHEEL_FL);
	//*n_wheel_FL_mpros_LSB		= getbits(*canData.n_wheel_FL_mpros, 7, 8);
	//*n_wheel_FL_mpros_MSB		= getbits(*canData.n_wheel_FL_mpros, 15, 8);

	//------Wheel n 0x142 LM04------
	//CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_2_LMO_04_Config);

	//*canData.n_wheel_FR_mpros	= checkRangePlausi(CAN_2_LMO_04_Config.mo_ptr->can_data_word[0],ERR_N_WHEEL_FR);
	//*n_wheel_FR_mpros_LSB		= getbits(*canData.n_wheel_FR_mpros, 7, 8);
	//*n_wheel_FR_mpros_MSB		= getbits(*canData.n_wheel_FR_mpros, 15, 8);

	//------Wheel n 0x340 LM05------
	//CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_2_LMO_05_Config);

	//*canData.n_wheel_RL_mpros	= checkRangePlausi(CAN_2_LMO_05_Config.mo_ptr->can_data_word[0],ERR_N_WHEEL_RL);
	//*n_wheel_RL_mpros_LSB		= getbits(*canData.n_wheel_RL_mpros, 7, 8);
	//*n_wheel_RL_mpros_MSB		= getbits(*canData.n_wheel_RL_mpros, 15, 8);

	//------Wheel n 0x342 LM06------
	//CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_2_LMO_06_Config);

	//*canData.n_wheel_RR_mpros	= checkRangePlausi(CAN_2_LMO_06_Config.mo_ptr->can_data_word[0],ERR_N_WHEEL_RR);
	//*n_wheel_RR_mpros_LSB		= getbits(*canData.n_wheel_RR_mpros, 7, 8);
	//*n_wheel_RR_mpros_MSB		= getbits(*canData.n_wheel_RR_mpros, 15, 8);

	//------Manual Control 0x7FF LM12------
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_2_LMO_12_Config);
	canData.ManualControl_Active = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[7],7,1);
	canData.ManConOn_MHJ9_IN = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[0],0,1);
	canData.ManConOn_MHJ9_OUT = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[1],0,1);
	canData.ManConOn_Waterpump = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[2],0,1);
	canData.ManConOn_Fans1 = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[3],0,1);
	canData.ManConOn_Fans2 = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[4],0,1);
	canData.ManConOn_VOVGShiftUp = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[5],0,1);
	canData.ManConOn_VOVGShiftDown = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[5],2,1);
	canData.ManConOn_IgnCut = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[5],4,1);
	canData.ManConOn_VOVG_IN = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[5],6,1);
	canData.ManConOn_VOVG_OUT = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[6],0,1);
	canData.ManConVar_MHJ9_IN = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[0],7,7);
	canData.ManConVar_MHJ9_OUT = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[1],7,7);
	canData.ManConVar_Waterpump = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[2],7,7);
	canData.ManConVar_Fans1 = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[3],7,7);
	canData.ManConVar_Fans2 = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[4],7,7);
	canData.ManConVar_VOVGShiftUp = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[5],1,1);
	canData.ManConVar_VOVGShiftDown = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[5],3,1);
	canData.ManConVar_IgnCut = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[5],5,1);
	canData.ManConVar_VOVG_IN = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[5],7,1);
	canData.ManConVar_VOVG_OUT = getbits(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[5],9,1);

	//------Bremse_2 0x24A LM13------
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_2_LMO_13_Config);

	*canData.n_wheel_FL_mpros	= checkRangePlausi(CAN_2_LMO_13_Config.mo_ptr->can_data_word[0],ERR_N_WHEEL_FL);
	*n_wheel_FL_mpros_LSB		= getbits(*canData.n_wheel_FL_mpros, 7, 8);
	*n_wheel_FL_mpros_MSB		= getbits(*canData.n_wheel_FL_mpros, 15, 8);

	*canData.n_wheel_FR_mpros	= checkRangePlausi(CAN_2_LMO_13_Config.mo_ptr->can_data_word[1],ERR_N_WHEEL_FR);
	*n_wheel_FR_mpros_LSB		= getbits(*canData.n_wheel_FR_mpros, 7, 8);
	*n_wheel_FR_mpros_MSB		= getbits(*canData.n_wheel_FR_mpros, 15, 8);

	*canData.n_wheel_RL_mpros	= checkRangePlausi(CAN_2_LMO_13_Config.mo_ptr->can_data_word[2],ERR_N_WHEEL_RL);
	*n_wheel_RL_mpros_LSB		= getbits(*canData.n_wheel_RL_mpros, 7, 8);
	*n_wheel_RL_mpros_MSB		= getbits(*canData.n_wheel_RL_mpros, 15, 8);

	*canData.n_wheel_RR_mpros	= checkRangePlausi(CAN_2_LMO_13_Config.mo_ptr->can_data_word[3],ERR_N_WHEEL_RR);
	*n_wheel_RR_mpros_LSB		= getbits(*canData.n_wheel_RR_mpros, 7, 8);
	*n_wheel_RR_mpros_MSB		= getbits(*canData.n_wheel_RR_mpros, 15, 8);

}

void CAN_2_Transmit()
{
	//Wheelforce 0x7E0 LM09
	CAN2_data_Tx_LM09[0] = getbits(*canData.f_FL,7,8);
	CAN2_data_Tx_LM09[1] = getbits(*canData.f_FL,15,8);
	CAN2_data_Tx_LM09[2] = getbits(*canData.f_FR,7,8);
	CAN2_data_Tx_LM09[3] = getbits(*canData.f_FR,15,8);
	CAN2_data_Tx_LM09[4] = (uint8_t)(*canData.TR1_VSense_WP);
	CAN2_data_Tx_LM09[5] = (uint8_t)(*canData.TR2_VSense_FAN1);
	CAN2_data_Tx_LM09[6] = (uint8_t)(*canData.TR3_VSense_FAN2);
	//CAN2_data_Tx_LM09[4] = getbits(*canData.f_RL,7,8);
	//CAN2_data_Tx_LM09[5] = getbits(*canData.f_RL,15,8);
	//CAN2_data_Tx_LM09[6] = getbits(*canData.f_RR,7,8);
	//CAN2_data_Tx_LM09[7] = getbits(*canData.f_RR,15,8);

	CAN_NODE_MO_UpdateData(&CAN_2_LMO_09_Config, CAN2_data_Tx_LM09);
	CAN_NODE_MO_Transmit(&CAN_2_LMO_09_Config);

	//Measurement 0x7E2 LM10
	//CAN2_data_Tx_LM10[0] = *canData.x_RH_RL;
	//CAN2_data_Tx_LM10[1] = *canData.x_RH_RR;
	CAN2_data_Tx_LM10[0] = *canData.Brakelight << 7;
	CAN2_data_Tx_LM10[1] = (uint8_t)(*canData.t_board_VCU / 0.6);
	CAN2_data_Tx_LM10[2] = *canData.x_RH_F;
	CAN2_data_Tx_LM10[3] = *canData.x_clutch;
	CAN2_data_Tx_LM10[4] = *canData.x_clutch_STW;
	CAN2_data_Tx_LM10[5] = *canData.p_pneu;
	CAN2_data_Tx_LM10[6] = *canData.U_bat;
	CAN2_data_Tx_LM10[7] = *canData.BSD;

	CAN_NODE_MO_UpdateData(&CAN_2_LMO_10_Config, CAN2_data_Tx_LM10);
	CAN_NODE_MO_Transmit(&CAN_2_LMO_10_Config);

	//VCU_Failure 0x7E3 LM11
	for (int i = 0; i < 8; i++) {
		CAN2_data_Tx_LM11[i] = getbits64(canData.plausi_error, 8*(i+1)-1, 8);
	}
	CAN_NODE_MO_UpdateData(&CAN_2_LMO_11_Config, CAN2_data_Tx_LM11);
	CAN_NODE_MO_Transmit(&CAN_2_LMO_11_Config);
}
