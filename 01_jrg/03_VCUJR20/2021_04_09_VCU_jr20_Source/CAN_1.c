/*
 * CAN_1.c
 *
 *  Created on: 17 Oct 2019
 *      Author: Paul
 */

#include "Header.h"

extern struct data_can canData;
uint8_t CAN1_data_Tx_LM05[8] = {0};
uint8_t CAN1_data_Tx_LM06[8] = {0};
uint8_t CAN1_data_Tx_LM07[8] = {0};
uint16_t n_engine = 0;
uint8_t *n_engine_LSB, *n_engine_MSB;
uint16_t counter = 0;

boolean_T CAN_1_RES = true;

void CAN_1_ini()
{
	//Termination Resistor on CAN 1
	if (CAN_1_RES)
		DIGITAL_IO_SetOutputHigh (&CAN1_Res);
	else
		DIGITAL_IO_SetOutputLow (&CAN1_Res);

	//------LINK4_1_boost_gear_rev_map 0x10 LMO1------ todo
	canData.p_air_22 				= &VCU_DW.VAR_IN_p_air_22;
	canData.AN5GearPos	 			= &VCU_DW.VAR_IN_p_air_22_des;
	canData.n_engine 				= &n_engine;
	n_engine_LSB					= &VCU_DW.VAR_IN_n_engine_LSB;
	n_engine_MSB					= &VCU_DW.VAR_IN_n_engine_MSB;
	//canData.ign_angle 				= (uint8_t*)&VCU_DW.
	canData.gear 					= &VCU_DW.VAR_IN_gear;
	//canData.gear_shift_status 		= (uint8_t*)&VCU_DW.VAR_IN_gear_shift_status;
	//canData.fuel_table_1_status 	= (uint8_t*)&VCU_DW.VAR_IN_
	//canData.fuel_table_2_status 	= (uint8_t*)&VCU_DW.VAR_IN_
	//canData.ign_table_1_status 	= (uint8_t*)&VCU_DW.VAR_IN_
	//canData.ign_table_2_status 	= (uint8_t*)&VCU_DW.VAR_IN_

	//------LINK4_2_press_temp_Wg 0x771 LMO2------ todo
	//canData.p_oil 				= (uint8_t*)&VCU_DW.VAR_IN_p_Oil;
	//canData.p_fuel_rail 		= (uint8_t*)&VCU_DW.VAR_IN_p_fuel_rail;
	//canData.x_throttle_valve 	= (uint8_t*)&VCU_DW.VAR_IN_x_ath;
	canData.t_water_engine 		= &VCU_DW.VAR_IN_t_water_engine;
	//canData.t_air_22 			= (uint8_t*)&VCU_DW.VAR_IN_t_air_22;
	//canData.t_oil_engine 		= (uint8_t*)&VCU_DW.VAR_IN_t_oil_engine;
	//canData.WasteGate_dutycycle	= (uint8_t*)&VCU_DW.VAR_IN_

	//------LINK4_3 inj_lambda_error 0x772 LMO3------
	//canData.inj_effective_PW = (uint8_t*)&VCU_DW.VAR_IN_
	//canData.lambda = (uint8_t*)&VCU_DW.VAR_IN_
	//canData.lambda_error_status = (uint8_t*)&VCU_DW.VAR_IN_
	//canData.Link_Fault_Codes = (uint8_t*)&VCU_DW.VAR_IN_
	//canData.lambda_status = (uint8_t*)&VCU_DW.VAR_IN_
	//canData.error_trigger = (uint8_t*)&VCU_DW.VAR_IN_
	//canData.boost_table = (uint8_t*)&VCU_DW.VAR_IN_

	//------STW 0x8 LM04------
	canData.STW_shift_up_request 	= &VCU_DW.VAR_IN_STW_shift_up_request;
	canData.STW_shift_down_request 	= &VCU_DW.VAR_IN_STW_shift_down_request;
	canData.STW_transmission_mode 	= &VCU_DW.VAR_IN_STW_transmission_mode;
	//canData.STW_trigger_point		= (uint8_t*)&VCU_DW.VAR_IN_STW_map_max;
	//canData.STW_engine_map 			= (uint8_t*)&VCU_DW.VAR_IN_STW_map_min;
	//canData.STW_rev_limiter 		= (uint8_t*)&VCU_DW.VAR_IN_STW_map_3;
	//canData.STW_clutch_mode 		= (uint8_t*)&VCU_DW.VAR_IN_STW_clutch_mode;
	canData.STW_mue_tyre 			= &VCU_DW.VAR_IN_STW_mue_tyre;
	//canData.STW_brake_balance 		= (uint8_t*)&VCU_DW.VAR_IN_brake_ratio_R;

	//------TTC_ABS 0x5C0 LM05------
	canData.ABS_switchstate	= &VCU_DW.VAR_OUT_ABS_switchstate;
	canData.p_brake_F		= &VCU_DW.VAR_OUT_p_brake_F;
	canData.ABS_BL_switch	= &VCU_DW.VAR_OUT_ABS_BL_switch;
	canData.ABS_active		= &VCU_DW.VAR_OUT_ABS_active;
	canData.ABS_EBD_lamp	= &VCU_DW.VAR_OUT_ABS_EBD_Lamp;
	canData.ABS_lamp		= &VCU_DW.VAR_OUT_ABS_Lamp;

	//------TTC_LaunchControl 0x7F0 LM06------
	canData.p_brake_R			= &VCU_DW.VAR_OUT_p_brake_R;
	canData.LC_mue_tyre			= &VCU_DW.VAR_OUT_STW_mue_tyre;
	canData.LC_clutch_pos_des	= &VCU_DW.VAR_OUT_x_clutch_LC;
	canData.LC_dash_bit			= &VCU_DW.VAR_OUT_LC_dash_Bit;
	canData.LC_active_bit		= &VCU_DW.VAR_OUT_LC_active_bit;
	canData.LC_ready_bit		= &VCU_DW.VAR_OUT_LC_ready_bit;
	canData.LC_Mdes				= &VCU_DW.VAR_OUT_LC_Mdes;
	canData.LC_Fnr				= &VCU_DW.VAR_OUT_LC_Fnr;

	//------TTC_WheelSpeed 0x340 LM07------
	canData.n_wheel_FL			= &VCU_DW.VAR_OUT_n_wheel_FL_kmproh;
	canData.n_wheel_FR			= &VCU_DW.VAR_OUT_n_wheel_FR_kmproh;
	canData.n_wheel_RL			= &VCU_DW.VAR_OUT_n_wheel_RL_kmproh;
	canData.n_wheel_RR			= &VCU_DW.VAR_OUT_n_wheel_FL_kmproh;

	//----CAN-Modeul Measurement 0x7E1 LM08------
	canData.p_pneu_VCU_IN		= &VCU_DW.VAR_IN_p_pneum;
}

void CAN_1_Receive()
{
	//------LINK4_1_boost_gear_rev_map 0x10 LMO1------
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_1_LMO_01_Config);

	*canData.p_air_22 = checkRangePlausi(CAN_1_LMO_01_Config.mo_ptr->can_data_byte[0], ERR_P_AIR_22); // ACHTUNG MOTOROLA und Offset --> Umwandlung in Simulink
	*canData.AN5GearPos = checkRangePlausi(CAN_1_LMO_01_Config.mo_ptr->can_data_byte[1], ERR_P_AIR_22_DES); //p_air_22_des
	*canData.n_engine = checkRangePlausi(CAN_1_LMO_01_Config.mo_ptr->can_data_word[1], ERR_N_ENGINE);
	*n_engine_LSB	= getbits(*canData.n_engine, 7, 8);
	*n_engine_MSB	= getbits(*canData.n_engine, 15, 8);
	*canData.gear =  checkRangePlausi(CAN_1_LMO_01_Config.mo_ptr->can_data_byte[4],ERR_GEAR); // ACHTUNG MOTOROLA und nur 5 bit NEU --> Umwandlung in Simulink
	//*canData.ign_angle =  getbits(CAN_1_LMO_01_Config.mo_ptr->can_data[1],23,16); //?
	//*canData.gear_shift_status = getbits(CAN_1_LMO_01_Config.mo_ptr->can_data[1],28,4);
	//*canData.fuel_table_1_status = getbits(CAN_1_LMO_01_Config.mo_ptr->can_data[1],29,1);
	//*canData.fuel_table_2_status = getbits(CAN_1_LMO_01_Config.mo_ptr->can_data[1],30,1);
	//*canData.ign_table_1_status = getbits(CAN_1_LMO_01_Config.mo_ptr->can_data[1],31,1);
	//*canData.ign_table_2_status = getbits(CAN_1_LMO_01_Config.mo_ptr->can_data[1],32,1);

	//------LINK4_2_press_temp_Wg 0x771 LMO2------
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_1_LMO_02_Config);

	//*canData.p_oil = CAN_1_LMO_02_Config.mo_ptr->can_data_byte[0];
	//*canData.p_fuel_rail =  CAN_1_LMO_02_Config.mo_ptr->can_data_byte[1];
	//*canData.x_throttle_valve = CAN_1_LMO_02_Config.mo_ptr->can_data_byte[2]; //x_throttleValve
	*canData.t_water_engine = CAN_1_LMO_02_Config.mo_ptr->can_data_byte[3];
	//*canData.t_air_22 = CAN_1_LMO_02_Config.mo_ptr->can_data_byte[4];
	//*canData.t_oil_engine = CAN_1_LMO_02_Config.mo_ptr->can_data_byte[5];
	//*canData.WasteGate_dutycycle = CAN_1_LMO_02_Config.mo_ptr->can_data_word[3];

	//------LINK4_3 inj_lambda_error 0x772 LMO3------
	//CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_1_LMO_03_Config);
	/*
	*canData.inj_effective_PW = CAN_1_LMO_03_Config.mo_ptr->can_data_byte[0];
	*canData.lambda = getbits(CAN_1_LMO_03_Config.mo_ptr->can_data[0],23,16);
	*canData.lambda_error_status = CAN_1_LMO_03_Config.mo_ptr->can_data_byte[3];
	*canData.Link_Fault_Codes = CAN_1_LMO_03_Config.mo_ptr->can_data_byte[4];
	*canData.lambda_status = CAN_1_LMO_03_Config.mo_ptr->can_data_byte[5];
	*canData.error_trigger = (CAN_1_LMO_03_Config.mo_ptr->can_data_byte[6]);
	*canData.boost_table = CAN_1_LMO_03_Config.mo_ptr->can_data_byte[7];
	*/

	//------STW 0x8 LM04------
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_1_LMO_04_Config);

	*canData.STW_shift_up_request = checkRangePlausi(getbits(CAN_1_LMO_04_Config.mo_ptr->can_data_byte[0],0,1),ERR_STW_SHIFT_UP_REQUEST);
	*canData.STW_shift_down_request = checkRangePlausi(getbits(CAN_1_LMO_04_Config.mo_ptr->can_data_byte[0],1,1),ERR_STW_SHIFT_DOWN_REQUEST);
	//*canData.STW_trigger_point = getbits(CAN_1_LMO_04_Config.mo_ptr->can_data_byte[0],2,1);
	//*canData.STW_engine_map = getbits(CAN_1_LMO_04_Config.mo_ptr->can_data_byte[0],3,1);
	//*canData.STW_rev_limiter = getbits(CAN_1_LMO_04_Config.mo_ptr->can_data_byte[0],4,1);
	//*canData.STW_clutch_mode = CAN_1_LMO_04_Config.mo_ptr->can_data_byte[1];
	*canData.STW_transmission_mode = checkRangePlausi(CAN_1_LMO_04_Config.mo_ptr->can_data_byte[2],ERR_TRANSMISSION_MODE);
	*canData.STW_mue_tyre = checkRangePlausi(CAN_1_LMO_04_Config.mo_ptr->can_data_byte[3],ERR_MUE_TYRE);
	//*canData.STW_brake_balance = CAN_1_LMO_04_Config.mo_ptr->can_data_byte[4];

	//-----CAN-Modul LM08-----
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_1_LMO_08_Config);

	*canData.p_pneu_VCU_IN = CAN_1_LMO_08_Config.mo_ptr->can_data_byte[0];
}

void CAN_1_Transmit()
{
	//------TTC_ABS 0x5C0 LM05------
	CAN1_data_Tx_LM05[0] = *canData.ABS_switchstate;
	CAN1_data_Tx_LM05[1] = getbits(*canData.p_brake_F, 7,8);
	CAN1_data_Tx_LM05[2] = getbits(*canData.p_brake_F, 15,8);
	CAN1_data_Tx_LM05[3] = getbits(*canData.ABS_BL_switch,0,1) || getbits(*canData.ABS_active,0,1) << 1 || getbits(*canData.ABS_EBD_lamp,0,1) << 2 || getbits(*canData.ABS_lamp,0,1) << 3;

	CAN_NODE_MO_UpdateData(&CAN_1_LMO_05_Config, CAN1_data_Tx_LM05);
	CAN_NODE_MO_Transmit(&CAN_1_LMO_05_Config);

	//------TTC_LaunchControl 0x7F0 LM06------
	CAN1_data_Tx_LM06[0] = *canData.p_brake_R;
	CAN1_data_Tx_LM06[1] = *canData.LC_mue_tyre;
	CAN1_data_Tx_LM06[2] = *canData.LC_clutch_pos_des;
	CAN1_data_Tx_LM06[3] = getbits(*canData.LC_dash_bit,0,1) || getbits(*canData.LC_active_bit,0,1) << 1 || getbits(*canData.LC_ready_bit,0,1) << 2;
	CAN1_data_Tx_LM06[4] = *canData.LC_Mdes;
	CAN1_data_Tx_LM06[5] = *canData.LC_Fnr;

	CAN_NODE_MO_UpdateData(&CAN_1_LMO_06_Config, CAN1_data_Tx_LM06);
	CAN_NODE_MO_Transmit(&CAN_1_LMO_06_Config);

	//------TTC_WheelSpeed 0x340 LM07------
	CAN1_data_Tx_LM07[0] = getbits(*canData.n_wheel_FL,7,8);
	CAN1_data_Tx_LM07[1] = getbits(*canData.n_wheel_FL,15,8);
	CAN1_data_Tx_LM07[2] = getbits(*canData.n_wheel_FR,7,8);
	CAN1_data_Tx_LM07[3] = getbits(*canData.n_wheel_FR,15,8);
	CAN1_data_Tx_LM07[4] = getbits(*canData.n_wheel_RL,7,8);
	CAN1_data_Tx_LM07[5] = getbits(*canData.n_wheel_RL,15,8);
	CAN1_data_Tx_LM07[6] = getbits(*canData.n_wheel_RR,7,8);
	CAN1_data_Tx_LM07[7] = getbits(*canData.n_wheel_RR,15,8);

	CAN_NODE_MO_UpdateData(&CAN_1_LMO_07_Config, CAN1_data_Tx_LM07);
	CAN_NODE_MO_Transmit(&CAN_1_LMO_07_Config);
}

