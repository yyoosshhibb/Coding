/*
 * CAN_1.c
 *
 *  Created on: 15 Jun 2018
 *      Author: Lukas
 */


#include "Tele.h"

	extern struct data_tele carData;
	uint8_t CAN_data_Tx[8] = {0};
	//CAN 1
	// LMO_01, 0x10
	// Link4_1_boost_gear
		uint8_t* p_air_22=0;
		uint16_t* n_engine=0;
		uint8_t* gear=0; //NEU
		uint8_t gear_1=0;

		uint32_t* ign_angle=0; //NEU
		uint16_t ign_angle_1=0;

	//LMO_02, 0x8
	//STW
		uint8_t shift_up=0;
		uint8_t shift_down=0;
		uint8_t eng_map=0;

	//LMO_03, 0x7E1
	//CAN Module Measurement
		uint8_t* p_pneu=0;
		uint8_t* x_RH_RL=0;
		uint8_t* x_RH_RR=0;
		uint8_t* t_oil_gb=0;
		uint8_t* t_canmod=0;

	// LMO_04, 0x771
	// Link4_2_press_temp
		uint8_t* p_oil=0;
		uint8_t* p_fuel_rail=0;
		uint8_t* a_ath=0;
		uint8_t* t_water_engine=0;
		uint8_t* t_air_22=0;
		uint8_t* t_oil_engine=0;

	// LMO_05, 0x772
	// Link4_3_inj_lambda_error
		uint32_t* lambda1=0;
		uint16_t lambda=0;
		uint8_t* trigger_error=0; //NEU

	// LMO_06, 0x7F0
	//TTC_LaunchControl
		uint8_t* p_brake_rear = 0;
		//uint8_t* LC_clutch_pos_des = 0;

void CAN_1_Receive()
	{
	//LINK_1_boost_gear 0x10 LMO1
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_1_LMO_01_Config);

	p_air_22 = &(CAN_1_LMO_01_Config.mo_ptr->can_data_byte[0]);
	n_engine = &(CAN_1_LMO_01_Config.mo_ptr->can_data_word[1]);
	gear =  &(CAN_1_LMO_01_Config.mo_ptr->can_data_byte[4]); // ACHTUNG MOTOROLA und nur 5 bit NEU

	gear_1 = *gear >> 3;
	ign_angle =  &(CAN_1_LMO_01_Config.mo_ptr->can_data[1]); //NEU
	ign_angle_1 = getbits(*ign_angle,23,16);


	//STW 0x08 LM02
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_1_LMO_02_Config);

	uint8_t* temp= &(CAN_1_LMO_02_Config.mo_ptr->can_data[0]);
	shift_up=temp&&0x01;
	shift_down=temp&&0x02;
	eng_map=temp&&0x04;


	//CAN Module Measurement 0x7E1 LM03
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_1_LMO_03_Config);
	p_pneu = &(CAN_1_LMO_03_Config.mo_ptr->can_data_byte[0]);
	x_RH_RL= &(CAN_1_LMO_03_Config.mo_ptr->can_data_byte[1]);
	x_RH_RR= &(CAN_1_LMO_03_Config.mo_ptr->can_data_byte[2]);
	t_oil_gb= &(CAN_1_LMO_03_Config.mo_ptr->can_data_byte[5]);
	t_canmod=&(CAN_1_LMO_03_Config.mo_ptr->can_data_byte[6]);




	//0x771 Link press temp LMO4
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_1_LMO_04_Config);

	p_oil = &(CAN_1_LMO_04_Config.mo_ptr->can_data_byte[0]);
	p_fuel_rail =  &(CAN_1_LMO_04_Config.mo_ptr->can_data_byte[1]);
	a_ath = &(CAN_1_LMO_04_Config.mo_ptr->can_data_byte[2]); //x_throttleValve
	t_water_engine = &(CAN_1_LMO_04_Config.mo_ptr->can_data_byte[3]);
	t_air_22 = &(CAN_1_LMO_04_Config.mo_ptr->can_data_byte[4]);
	t_oil_engine =  &(CAN_1_LMO_04_Config.mo_ptr->can_data_byte[5]);


	//LIMK_LAMBDA 0x772 LMO5

	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_1_LMO_05_Config);

	lambda1 = &(CAN_1_LMO_05_Config.mo_ptr->can_data[0]);
	lambda = getbits(*lambda1,23,16);
	trigger_error= &(CAN_1_LMO_05_Config.mo_ptr->can_data_byte[6]); //NEU

	//VCU_LaunchControl LMO6
	CAN_NODE_MO_Receive((CAN_NODE_LMO_t*)&CAN_1_LMO_06_Config);

	p_brake_rear = &(CAN_1_LMO_06_Config.mo_ptr->can_data_byte[0]);
	//LC_clutch_pos_des = &(CAN_1_LMO_06_Config.mo_ptr->can_data_byte[2]);

//######################################################################
//################ calculation and write to struct #####################
	//LMO1
	carData.p_air_22 =(float)*p_air_22*0.01f;
	carData.n_engine =*n_engine;
	carData.gear = gear_1;
	carData.ign_angle =(((float)ign_angle_1*0.1f)-100);


	//LM02
	carData.shift_up = shift_up;
	carData.shift_down = shift_down;
	carData.eng_map = eng_map;

	//LM03
	carData.p_pneu = (float)*p_pneu*0.04f;
	carData.x_RH_RL = (float)*x_RH_RL*0.5f;
	carData.x_RH_RR = (float)*x_RH_RR*0.5f;
	carData.t_oil_gb = *t_oil_gb;
	carData.t_canmod = *t_canmod;

	//LMO4
	carData.p_oil =(float)*p_oil*0.032f;
	carData.p_fuel_rail =(float)*p_fuel_rail*0.032f;
	carData.x_throttle_valve =(float)*a_ath*0.4f;
	carData.t_water_engine =*t_water_engine-50;
	carData.t_air_22 = *t_air_22-50;
	carData.t_oil_engine = *t_oil_engine-50;

	//LMO5
	carData.lambda = (float)lambda * 0.001f;
	carData.trigger_error = *trigger_error;

	//LMO6
	carData.p_brake_rear = (float)*p_brake_rear;
	//carData.LC_clutch_pos_des = 44;// (float)*LC_clutch_pos_des*10;

	//CAN_NODE_MO_Transmit(&CAN_1_LMO_07_Config);
}


void CAN_1_Transmit(uint8_t ok) //ID 2032
{
//	CAN_data_Tx[0]=carData.Launch_1;
//	CAN_data_Tx[1]=carData.Launch_2;
//	CAN_data_Tx[2]=carData.Launch_3;
//	CAN_data_Tx[3]=carData.Launch_4;
	if(ok == 1)
	{
	//CAN_NODE_MO_UpdateData(&CAN_1_LMO_07_Config, CAN_data_Tx);
	//CAN_NODE_MO_Transmit(&CAN_1_LMO_07_Config);
	//ok = 0;
	}
}



//
