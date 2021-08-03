/*
 * CAN_2.c
 *
 *  Created on: 15 Jun 2018
 *      Author: Lukas
 */

#include "Tele.h"

	extern struct data_tele carData;

	// CAN_2
	//LMO_01, 0x222		?


	//LMO_02, 0x520
	uint8_t* i_tot=0;

	//LMO_03, 0x521
	uint8_t* t_pcm=0;


	// LMO_04, 0x7DF
	uint16_t* f_rl=0;
	uint16_t* f_rr=0;
	uint16_t* x_dp_RL=0;
	uint16_t* x_dp_RR=0;

	// LMO_05, 0x7E0
	uint16_t* f_fl=0;
	uint16_t* f_fr=0;

	// LMO_O6, 0x7E2
	uint8_t* t_VCU=0;
	uint8_t* x_RH_F=0;
	uint8_t* x_clutch=0;
	uint8_t* x_clutch_STW=0;
	uint8_t* u_bat=0;

	// LMO_O7, 0x24A
	uint16_t* n_wheel_FL = 0;
	uint16_t* n_wheel_FR = 0;
	uint16_t* n_wheel_RL = 0;
	uint16_t* n_wheel_RR = 0;


	//LMO_08, 0x5C0
	uint16_t* p_brake_front=0;

	// LMO_09, 0x70
	// AX1 ABS
	uint16_t* AY=0;

	// LMO_010 0x80
	uint16_t* AX=0;

	//LM11, 0x4B0 t_tyre FrontLeft
	uint8_t* t_tyre_FL_1_MSB=0;
	uint8_t* t_tyre_FL_1_LSB=0;
	uint8_t* t_tyre_FL_2_MSB=0;
	uint8_t* t_tyre_FL_2_LSB=0;
	uint8_t* t_tyre_FL_3_MSB=0;
	uint8_t* t_tyre_FL_3_LSB=0;
	uint8_t* t_tyre_FL_4_MSB=0;
	uint8_t* t_tyre_FL_4_LSB=0;


	// LM12, 0x4B1 t_tyre FrontLeft
	uint8_t* t_tyre_FL_5_MSB=0;
	uint8_t* t_tyre_FL_5_LSB=0;
	uint8_t* t_tyre_FL_6_MSB=0;
	uint8_t* t_tyre_FL_6_LSB=0;
	uint8_t* t_tyre_FL_7_MSB=0;
	uint8_t* t_tyre_FL_7_LSB=0;
	uint8_t* t_tyre_FL_8_MSB=0;
	uint8_t* t_tyre_FL_8_LSB=0;


	// LMO13, 0x4B4 t_tyre FrontRight
	uint8_t* t_tyre_FR_1_MSB=0;
	uint8_t* t_tyre_FR_1_LSB=0;
	uint8_t* t_tyre_FR_2_MSB=0;
	uint8_t* t_tyre_FR_2_LSB=0;
	uint8_t* t_tyre_FR_3_MSB=0;
	uint8_t* t_tyre_FR_3_LSB=0;
	uint8_t* t_tyre_FR_4_MSB=0;
	uint8_t* t_tyre_FR_4_LSB=0;


	// LMO14, 0x4B5 t_tyre FrontRight
	uint8_t* t_tyre_FR_5_MSB=0;
	uint8_t* t_tyre_FR_5_LSB=0;
	uint8_t* t_tyre_FR_6_MSB=0;
	uint8_t* t_tyre_FR_6_LSB=0;
	uint8_t* t_tyre_FR_7_MSB=0;
	uint8_t* t_tyre_FR_7_LSB=0;
	uint8_t* t_tyre_FR_8_MSB=0;
	uint8_t* t_tyre_FR_8_LSB=0;

	// LMO15, 0x4B8 t_tyre RearLeft
	uint8_t* t_tyre_RL_1_MSB=0;
	uint8_t* t_tyre_RL_1_LSB=0;
	uint8_t* t_tyre_RL_2_MSB=0;
	uint8_t* t_tyre_RL_2_LSB=0;
	uint8_t* t_tyre_RL_3_MSB=0;
	uint8_t* t_tyre_RL_3_LSB=0;
	uint8_t* t_tyre_RL_4_MSB=0;
	uint8_t* t_tyre_RL_4_LSB=0;
	// LMO16, 0x4B9 t_tyre RearLeft
	uint8_t* t_tyre_RL_5_MSB=0;
	uint8_t* t_tyre_RL_5_LSB=0;
	uint8_t* t_tyre_RL_6_MSB=0;
	uint8_t* t_tyre_RL_6_LSB=0;
	uint8_t* t_tyre_RL_7_MSB=0;
	uint8_t* t_tyre_RL_7_LSB=0;
	uint8_t* t_tyre_RL_8_MSB=0;
	uint8_t* t_tyre_RL_8_LSB=0;

	//LMO17, 0x4BC t_tyre RearRight
	uint8_t* t_tyre_RR_1_MSB=0;
	uint8_t* t_tyre_RR_1_LSB=0;
	uint8_t* t_tyre_RR_2_MSB=0;
	uint8_t* t_tyre_RR_2_LSB=0;
	uint8_t* t_tyre_RR_3_MSB=0;
	uint8_t* t_tyre_RR_3_LSB=0;
	uint8_t* t_tyre_RR_4_MSB=0;
	uint8_t* t_tyre_RR_4_LSB=0;
	// LMO18, 0x4BD t_tyre RearRight
	uint8_t* t_tyre_RR_5_MSB=0;
	uint8_t* t_tyre_RR_5_LSB=0;
	uint8_t* t_tyre_RR_6_MSB=0;
	uint8_t* t_tyre_RR_6_LSB=0;
	uint8_t* t_tyre_RR_7_MSB=0;
	uint8_t* t_tyre_RR_7_LSB=0;
	uint8_t* t_tyre_RR_8_MSB=0;
	uint8_t* t_tyre_RR_8_LSB=0;

	//LM11, 0x4B0
	uint16_t t_tyre_FL_1 = 0;
	uint16_t t_tyre_FL_2 = 0;
	uint16_t t_tyre_FL_3 = 0;
	uint16_t t_tyre_FL_4 = 0;

	//LM12, 0x4B1
	uint16_t t_tyre_FL_5 = 0;
	uint16_t t_tyre_FL_6 = 0;
	uint16_t t_tyre_FL_7 = 0;
	uint16_t t_tyre_FL_8 = 0;

	//LM013, 0x4B4
	uint16_t t_tyre_FR_1=0;
	uint16_t t_tyre_FR_2=0;
	uint16_t t_tyre_FR_3=0;
	uint16_t t_tyre_FR_4=0;

	//LM014, 0x4B5
	uint16_t t_tyre_FR_5=0;
	uint16_t t_tyre_FR_6=0;
	uint16_t t_tyre_FR_7=0;
	uint16_t t_tyre_FR_8=0;

	//LM015, 0x4B8
	uint16_t t_tyre_RL_1=0;
	uint16_t t_tyre_RL_2=0;
	uint16_t t_tyre_RL_3=0;
	uint16_t t_tyre_RL_4=0;

	//LM016, 0x4B9
	uint16_t t_tyre_RL_5=0;
	uint16_t t_tyre_RL_6=0;
	uint16_t t_tyre_RL_7=0;
	uint16_t t_tyre_RL_8=0;

	//LM017, 0x4BC
	uint16_t t_tyre_RR_1=0;
	uint16_t t_tyre_RR_2=0;
	uint16_t t_tyre_RR_3=0;
	uint16_t t_tyre_RR_4=0;

	//LM018, 0x4BD
	uint16_t t_tyre_RR_5=0;
	uint16_t t_tyre_RR_6=0;
	uint16_t t_tyre_RR_7=0;
	uint16_t t_tyre_RR_8=0;


void CAN_2_Receive(){

	// 0x7E2 LMO_01
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_01_Config);


	//0x520 LMO_02
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_02_Config);

	i_tot = &(CAN_2_LMO_02_Config.mo_ptr->can_data_byte[5]);
	//AY = &(CAN_2_LMO_02_Config.mo_ptr->can_data_word[2]);
	//AY = getbits(*AY1,31,16);

	//0x521 LMO_03
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_03_Config);
	t_pcm = &(CAN_2_LMO_03_Config.mo_ptr->can_data_byte[5]);
	//AX = getbits(*AY1,31,16);

	//0x7DF LMO_04
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_04_Config);
	//f_rl = &(CAN_2_LMO_04_Config.mo_ptr->can_data_byte[1]<<8);
	//f_rl += &(CAN_2_LMO_04_Config.mo_ptr->can_data_byte[0]);
	//f_rr = &(CAN_2_LMO_04_Config.mo_ptr->can_data_byte[3]<<8);
	//f_rr += &(CAN_2_LMO_04_Config.mo_ptr->can_data_byte[2]);
	//x_dp_RL = &(CAN_2_LMO_04_Config.mo_ptr->can_data_byte[5]<<8);
	//x_dp_RL += &(CAN_2_LMO_04_Config.mo_ptr->can_data_byte[4]);
	//x_dp_RR = &(CAN_2_LMO_04_Config.mo_ptr->can_data_byte[7]<<8);
	//x_dp_RR += &(CAN_2_LMO_04_Config.mo_ptr->can_data_byte[6]);

	//0x7E0 LMO_05
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_05_Config);
	//f_fl = &(CAN_2_LMO_05_Config.mo_ptr->can_data_byte[1]<<8);
	//f_fl += &(CAN_2_LMO_05_Config.mo_ptr->can_data_byte[0]);
	//f_fr = &(CAN_2_LMO_05_Config.mo_ptr->can_data_byte[3]<<8);
	//f_fr += &(CAN_2_LMO_05_Config.mo_ptr->can_data_byte[2]);

	//0x7E2 LMO_06
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_06_Config);
	t_VCU = &(CAN_2_LMO_06_Config.mo_ptr->can_data_byte[1]);
	x_RH_F = &(CAN_2_LMO_06_Config.mo_ptr->can_data_byte[2]);
	x_clutch = &(CAN_2_LMO_06_Config.mo_ptr->can_data_byte[3]);
	x_clutch_STW = &(CAN_2_LMO_06_Config.mo_ptr->can_data_byte[4]);
	u_bat = &(CAN_2_LMO_06_Config.mo_ptr->can_data_byte[6]);

	//0x24A LMO_07
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_07_Config);
	n_wheel_FL = &(CAN_2_LMO_07_Config.mo_ptr->can_data_word[0]);
	n_wheel_FR = &(CAN_2_LMO_07_Config.mo_ptr->can_data_word[1]);
	n_wheel_RL = &(CAN_2_LMO_07_Config.mo_ptr->can_data_word[2]);
	n_wheel_RR = &(CAN_2_LMO_07_Config.mo_ptr->can_data_word[3]);

	//0x5C0 LMO_08
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_08_Config);
	//p_brake_front = &(CAN_2_LMO_08_Config.mo_ptr->can_data_byte[1]<<8);
	//p_brake_front += &(CAN_2_LMO_08_Config.mo_ptr->can_data_byte[0]);

	//0x70 LMO_09
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_09_Config);
	AY = &(CAN_2_LMO_09_Config.mo_ptr->can_data_word[2]);

	//0x80 LMO_10
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_10_Config);
	AX = &(CAN_2_LMO_10_Config.mo_ptr->can_data_word[2]);

	//0x4B0 t_tyre_FL
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_11_Config);
	 t_tyre_FL_1_MSB =  &(CAN_2_LMO_11_Config.mo_ptr->can_data_byte[0]);
	 t_tyre_FL_1_LSB =  &(CAN_2_LMO_11_Config.mo_ptr->can_data_byte[1]);
	 t_tyre_FL_2_MSB=  &(CAN_2_LMO_11_Config.mo_ptr->can_data_byte[2]);
	 t_tyre_FL_2_LSB =  &(CAN_2_LMO_11_Config.mo_ptr->can_data_byte[3]);
	 t_tyre_FL_3_MSB =  &(CAN_2_LMO_11_Config.mo_ptr->can_data_byte[4]);
	 t_tyre_FL_3_LSB =  &(CAN_2_LMO_11_Config.mo_ptr->can_data_byte[5]);
	 t_tyre_FL_4_MSB =  &(CAN_2_LMO_11_Config.mo_ptr->can_data_byte[6]);
	 t_tyre_FL_4_LSB =  &(CAN_2_LMO_11_Config.mo_ptr->can_data_byte[7]);
	//0x4B1 t_tyre_FL
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_12_Config);
	 t_tyre_FL_5_MSB =  &(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[0]);
	 t_tyre_FL_5_LSB =  &(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[1]);
	 t_tyre_FL_6_MSB =  &(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[2]);
	 t_tyre_FL_6_LSB =  &(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[3]);
	 t_tyre_FL_7_MSB =  &(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[4]);
	 t_tyre_FL_7_LSB =  &(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[5]);
	 t_tyre_FL_8_MSB =  &(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[6]);
	 t_tyre_FL_8_LSB =  &(CAN_2_LMO_12_Config.mo_ptr->can_data_byte[7]);

	//0x4B4 t_tyre_FR
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_13_Config);
	 t_tyre_FR_1_MSB =  &(CAN_2_LMO_13_Config.mo_ptr->can_data_byte[0]);
	 t_tyre_FR_1_LSB =  &(CAN_2_LMO_13_Config.mo_ptr->can_data_byte[1]);
	 t_tyre_FR_2_MSB =  &(CAN_2_LMO_13_Config.mo_ptr->can_data_byte[2]);
	 t_tyre_FR_2_LSB =  &(CAN_2_LMO_13_Config.mo_ptr->can_data_byte[3]);
	 t_tyre_FR_3_MSB =  &(CAN_2_LMO_13_Config.mo_ptr->can_data_byte[4]);
	 t_tyre_FR_3_LSB =  &(CAN_2_LMO_13_Config.mo_ptr->can_data_byte[5]);
	 t_tyre_FR_4_MSB =  &(CAN_2_LMO_13_Config.mo_ptr->can_data_byte[6]);
	 t_tyre_FR_4_LSB =  &(CAN_2_LMO_13_Config.mo_ptr->can_data_byte[7]);

	//0x4B5 t_tyre_FR
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_14_Config);
	 t_tyre_FR_5_MSB =  &(CAN_2_LMO_14_Config.mo_ptr->can_data_byte[0]);
	 t_tyre_FR_5_LSB =  &(CAN_2_LMO_14_Config.mo_ptr->can_data_byte[1]);
	 t_tyre_FR_6_MSB =  &(CAN_2_LMO_14_Config.mo_ptr->can_data_byte[2]);
	 t_tyre_FR_6_LSB =  &(CAN_2_LMO_14_Config.mo_ptr->can_data_byte[3]);
	 t_tyre_FR_7_MSB =  &(CAN_2_LMO_14_Config.mo_ptr->can_data_byte[4]);
	 t_tyre_FR_7_LSB =  &(CAN_2_LMO_14_Config.mo_ptr->can_data_byte[5]);
	 t_tyre_FR_8_MSB =  &(CAN_2_LMO_14_Config.mo_ptr->can_data_byte[6]);
	 t_tyre_FR_8_LSB =  &(CAN_2_LMO_14_Config.mo_ptr->can_data_byte[7]);

	//0x4B8 t_tyre_RL
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_15_Config);
	t_tyre_RL_1_MSB =  &(CAN_2_LMO_15_Config.mo_ptr->can_data_byte[0]);
	t_tyre_RL_1_LSB =  &(CAN_2_LMO_15_Config.mo_ptr->can_data_byte[1]);
	t_tyre_RL_2_MSB =  &(CAN_2_LMO_15_Config.mo_ptr->can_data_byte[2]);
	t_tyre_RL_2_LSB =  &(CAN_2_LMO_15_Config.mo_ptr->can_data_byte[3]);
	t_tyre_RL_3_MSB =  &(CAN_2_LMO_15_Config.mo_ptr->can_data_byte[4]);
	t_tyre_RL_3_LSB =  &(CAN_2_LMO_15_Config.mo_ptr->can_data_byte[5]);
	t_tyre_RL_4_MSB =  &(CAN_2_LMO_15_Config.mo_ptr->can_data_byte[6]);
	t_tyre_RL_4_LSB =  &(CAN_2_LMO_15_Config.mo_ptr->can_data_byte[7]);
	//0x4B9 t_tyre_RL
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_16_Config);
	t_tyre_RL_5_MSB =  &(CAN_2_LMO_16_Config.mo_ptr->can_data_byte[0]);
	t_tyre_RL_5_LSB =  &(CAN_2_LMO_16_Config.mo_ptr->can_data_byte[1]);
	t_tyre_RL_6_MSB =  &(CAN_2_LMO_16_Config.mo_ptr->can_data_byte[2]);
	t_tyre_RL_6_LSB =  &(CAN_2_LMO_16_Config.mo_ptr->can_data_byte[3]);
	t_tyre_RL_7_MSB =  &(CAN_2_LMO_16_Config.mo_ptr->can_data_byte[4]);
	t_tyre_RL_7_LSB =  &(CAN_2_LMO_16_Config.mo_ptr->can_data_byte[5]);
	t_tyre_RL_8_MSB =  &(CAN_2_LMO_16_Config.mo_ptr->can_data_byte[6]);
	t_tyre_RL_8_LSB =  &(CAN_2_LMO_16_Config.mo_ptr->can_data_byte[7]);

	//0x4BC t_tyre_RR
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_17_Config);
	t_tyre_RR_1_MSB =  &(CAN_2_LMO_17_Config.mo_ptr->can_data_byte[0]);
	t_tyre_RR_1_LSB =  &(CAN_2_LMO_17_Config.mo_ptr->can_data_byte[1]);
	t_tyre_RR_2_MSB =  &(CAN_2_LMO_17_Config.mo_ptr->can_data_byte[2]);
	t_tyre_RR_2_LSB =  &(CAN_2_LMO_17_Config.mo_ptr->can_data_byte[3]);
	t_tyre_RR_3_MSB =  &(CAN_2_LMO_17_Config.mo_ptr->can_data_byte[4]);
	t_tyre_RR_3_LSB = &(CAN_2_LMO_17_Config.mo_ptr->can_data_byte[5]);
	t_tyre_RR_4_MSB =  &(CAN_2_LMO_17_Config.mo_ptr->can_data_byte[6]);
	t_tyre_RR_4_LSB =  &(CAN_2_LMO_17_Config.mo_ptr->can_data_byte[7]);

	//0x4BD t_tyre_FL
	CAN_NODE_MO_ReceiveData((CAN_NODE_LMO_t*)&CAN_2_LMO_18_Config);
	t_tyre_RR_5_MSB =  &(CAN_2_LMO_18_Config.mo_ptr->can_data_byte[0]);
	t_tyre_RR_5_LSB =  &(CAN_2_LMO_18_Config.mo_ptr->can_data_byte[1]);
	t_tyre_RR_6_MSB =  &(CAN_2_LMO_18_Config.mo_ptr->can_data_byte[2]);
	t_tyre_RR_6_LSB =  &(CAN_2_LMO_18_Config.mo_ptr->can_data_byte[3]);
	t_tyre_RR_7_MSB =  &(CAN_2_LMO_18_Config.mo_ptr->can_data_byte[4]);
	t_tyre_RR_7_LSB =  &(CAN_2_LMO_18_Config.mo_ptr->can_data_byte[5]);
	t_tyre_RR_8_MSB =  &(CAN_2_LMO_18_Config.mo_ptr->can_data_byte[6]);
	t_tyre_RR_8_LSB =  &(CAN_2_LMO_18_Config.mo_ptr->can_data_byte[7]);


	//######################################################################
	//################ calculation and write to struct #####################

	// LMO_01
	//carData.x_RH_RL=(float)*x_RH_RL*0.67f;
	//carData.x_RH_RR=(float)*x_RH_RR*0.67f;
	//carData.x_RH_F=(float)*x_RH_F*0.67f;
	//carData.x_clutch=(float)*x_clutch*0.1f;
	//carData.x_clutch_STW=(float)*x_clutch_STW*0.1f;
	//carData.p_pneu =(float)*p_pneu*0.1f;
	//carData.U_bat = (float)*U_bat*0.1f;

	// LMO_02
	carData.i_tot = *i_tot;

	// LMO_03
	carData.t_PCM = *t_pcm;


	// LMO_04
	carData.f_rl = (float)*f_rl*0.1f;
	carData.f_rr = (float)*f_rr*0.1f;
	carData.x_dp_RL = (float)*x_dp_RL*0.0022888f;
	carData.x_dp_RR = (float)*x_dp_RR*0.0022888f;

	// LMO_05
	carData.f_fl = (float)*f_fl*0.1f;
	carData.f_fr = (float)*f_fr*0.1f;


	//LMO_06
	carData.t_VCU = *t_VCU;
	carData.x_RH_F = (float)*x_RH_F*0.67f;
	carData.x_clutch = *x_clutch;
	carData.x_clutch_STW = *x_clutch_STW;
	carData.u_bat = (float)*u_bat*0.1f;

	//LMO_07
	carData.n_wheel_FL = (float)*n_wheel_FL*0.05625f;
	carData.n_wheel_FR = (float)*n_wheel_FR*0.05625f;
	carData.n_wheel_RL = (float)*n_wheel_RL*0.05625f;
	carData.n_wheel_RR = (float)*n_wheel_RR*0.05625f;
 // +16Byte

	//LMO_08
	carData.p_brake_F = ((float)*p_brake_front*0.0153f)-20.0f;

	//LMO_09
	carData.ay = ((float)*AY * 0.0001272f) - 4.1768f;


	//LMO_10
	carData.ax =((float)*AX * 0.0001272f) - 4.1768f;

	//LMO for tyre temps are not changed

	//LMO_11 FL
	t_tyre_FL_1 =shift(*t_tyre_FL_1_MSB,*t_tyre_FL_1_LSB);// (*t_tyre_FL_1_MSB<<8)|*t_tyre_FL_1_LSB;
	t_tyre_FL_2 =shift(*t_tyre_FL_2_MSB,*t_tyre_FL_2_LSB);// (*t_tyre_FL_2_MSB<<8)|*t_tyre_FL_2_LSB;
	t_tyre_FL_3 =shift(*t_tyre_FL_3_MSB,*t_tyre_FL_3_LSB);// (*t_tyre_FL_3_MSB<<8)|*t_tyre_FL_3_LSB;
	t_tyre_FL_4 =shift(*t_tyre_FL_4_MSB,*t_tyre_FL_4_LSB);// (*t_tyre_FL_4_MSB<<8)|*t_tyre_FL_4_LSB;
	t_tyre_FL_5 = shift(*t_tyre_FL_5_MSB,*t_tyre_FL_5_LSB);
	t_tyre_FL_6 = shift(*t_tyre_FL_6_MSB,*t_tyre_FL_6_LSB);
	t_tyre_FL_7 = shift(*t_tyre_FL_7_MSB,*t_tyre_FL_7_LSB);
	t_tyre_FL_8 = shift(*t_tyre_FL_8_MSB,*t_tyre_FL_8_LSB);

	//t_tyre FR
	t_tyre_FR_1 = shift(*t_tyre_FR_1_MSB,*t_tyre_FR_1_LSB);
	t_tyre_FR_2 = shift(*t_tyre_FR_2_MSB,*t_tyre_FR_2_LSB);
	t_tyre_FR_3 = shift(*t_tyre_FR_3_MSB,*t_tyre_FR_3_LSB);
	t_tyre_FR_4 = shift(*t_tyre_FR_4_MSB,*t_tyre_FR_4_LSB);
	t_tyre_FR_5 = shift(*t_tyre_FR_5_MSB,*t_tyre_FR_5_LSB);
	t_tyre_FR_6 = shift(*t_tyre_FR_6_MSB,*t_tyre_FR_6_LSB);
	t_tyre_FR_7 = shift(*t_tyre_FR_7_MSB,*t_tyre_FR_7_LSB);
	t_tyre_FR_8 = shift(*t_tyre_FR_8_MSB,*t_tyre_FR_8_LSB);

	// t_tyre RL
	t_tyre_RL_1 = shift(*t_tyre_RL_1_MSB,*t_tyre_RL_1_LSB);
	t_tyre_RL_2 = shift(*t_tyre_RL_2_MSB,*t_tyre_RL_2_LSB);
	t_tyre_RL_3 = shift(*t_tyre_RL_3_MSB,*t_tyre_RL_3_LSB);
	t_tyre_RL_4 = shift(*t_tyre_RL_4_MSB,*t_tyre_RL_4_LSB);
	t_tyre_RL_5 = shift(*t_tyre_RL_5_MSB,*t_tyre_RL_5_LSB);
	t_tyre_RL_6 = shift(*t_tyre_RL_6_MSB,*t_tyre_RL_6_LSB);
	t_tyre_RL_7 = shift(*t_tyre_RL_7_MSB,*t_tyre_RL_7_LSB);
	t_tyre_RL_8 = shift(*t_tyre_RL_8_MSB,*t_tyre_RL_8_LSB);

	t_tyre_RR_1 = shift(*t_tyre_RR_1_MSB,*t_tyre_RR_1_LSB);
	t_tyre_RR_2 = shift(*t_tyre_RR_2_MSB,*t_tyre_RR_2_LSB);
	t_tyre_RR_3 = shift(*t_tyre_RR_3_MSB,*t_tyre_RR_3_LSB);
	t_tyre_RR_4 = shift(*t_tyre_RR_4_MSB,*t_tyre_RR_4_LSB);
	t_tyre_RR_5 = shift(*t_tyre_RR_5_MSB,*t_tyre_RR_5_LSB);
	t_tyre_RR_6 = shift(*t_tyre_RR_6_MSB,*t_tyre_RR_6_LSB);
	t_tyre_RR_7 = shift(*t_tyre_RR_7_MSB,*t_tyre_RR_7_LSB);
	t_tyre_RR_8 = shift(*t_tyre_RR_8_MSB,*t_tyre_RR_8_LSB);


	carData.t_tyre_FL_1 = ((float)t_tyre_FL_1*0.1f)-100.0f;
	carData.t_tyre_FL_2 = ((float)t_tyre_FL_2*0.1f)-100.0f;
	carData.t_tyre_FL_3 = ((float)t_tyre_FL_3*0.1f)-100.0f;
	carData.t_tyre_FL_4 = ((float)t_tyre_FL_4*0.1f)-100.0f;
	// LMO_09
	carData.t_tyre_FL_5 = ((float)t_tyre_FL_5*0.1f)-100.0f;
	carData.t_tyre_FL_6 = ((float)t_tyre_FL_6*0.1f)-100.0f;
	carData.t_tyre_FL_7 = ((float)t_tyre_FL_7*0.1f)-100.0f;
	carData.t_tyre_FL_8 = ((float)t_tyre_FL_8*0.1f)-100.0f;


	//LMO_10
	carData.t_tyre_FR_1 = ((float)t_tyre_FR_1*0.1f)-100.0f;
	carData.t_tyre_FR_2 = ((float)t_tyre_FR_2*0.1f)-100.0f;
	carData.t_tyre_FR_3 = ((float)t_tyre_FR_3*0.1f)-100.0f;
	carData.t_tyre_FR_4 = ((float)t_tyre_FR_4*0.1f)-100.0f;
	// LMO_11
	carData.t_tyre_FR_5 = ((float)t_tyre_FR_5*0.1f)-100.0f;
	carData.t_tyre_FR_6 = ((float)t_tyre_FR_6*0.1f)-100.0f;
	carData.t_tyre_FR_7 = ((float)t_tyre_FR_7*0.1f)-100.0f;
	carData.t_tyre_FR_8 = ((float)t_tyre_FR_8*0.1f)-100.0f;

	//LMO_12
	carData.t_tyre_RL_1 = ((float)t_tyre_RL_1*0.1f)-100.0f;
	carData.t_tyre_RL_2 = ((float)t_tyre_RL_2*0.1f)-100.0f;
	carData.t_tyre_RL_3 = ((float)t_tyre_RL_3*0.1f)-100.0f;
	carData.t_tyre_RL_4 = ((float)t_tyre_RL_4*0.1f)-100.0f;
	// LMO_13
	carData.t_tyre_RL_5 =((float)t_tyre_RL_5*0.1f)-100.0f;
	carData.t_tyre_RL_6 =((float)t_tyre_RL_6*0.1f)-100.0f;
	carData.t_tyre_RL_7 =((float)t_tyre_RL_7*0.1f)-100.0f;
	carData.t_tyre_RL_8 =((float)t_tyre_RL_8*0.1f)-100.0f;

	//LMO_14
	carData.t_tyre_RR_1 = ((float)t_tyre_RR_1*0.1f)-100.0f;
	carData.t_tyre_RR_2 = ((float)t_tyre_RR_2*0.1f)-100.0f;
	carData.t_tyre_RR_3 = ((float)t_tyre_RR_3*0.1f)-100.0f;
	carData.t_tyre_RR_4 = ((float)t_tyre_RR_4*0.1f)-100.0f;
	// LMO_15
	carData.t_tyre_RR_5 = ((float)t_tyre_RR_5*0.1f)-100.0f;
	carData.t_tyre_RR_6 =((float)t_tyre_RR_6*0.1f)-100.0f;
	carData.t_tyre_RR_7 =((float)t_tyre_RR_7*0.1f)-100.0f;
	carData.t_tyre_RR_8 = ((float)t_tyre_RR_8*0.1f)-100.0f;

}

