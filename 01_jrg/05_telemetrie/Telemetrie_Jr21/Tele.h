/*
 * Tele.h
 *
 *  Created on: 15 Jun 2018
 *      Author: Lukas
 */

#include <DAVE.h>
#include <math.h>

#ifndef TELE_H_
#define TELE_H_

void CAN_1_Receive();
void CAN_2_Receive();
void CAN_1_Transmit(uint8_t);
//uint8_t CAN_data_Tx[8] = {0};
unsigned getbits(unsigned x,int p, int n);
unsigned shift(uint8_t MSB, uint8_t LSB);

void sendTlm();
void writeTlm(const char*,int);



struct __attribute__((__packed__)) data_tele
{
	// COSMOS REQUIERD
	uint8_t length; //8 1

	uint8_t id; //8 1

// #################### CAN_1 #########################

	// DATA from CAN_1-LMO_1
	uint16_t n_engine; //2
	float p_air_22; //4
	uint8_t gear; // 1
	float ign_angle; //4

	// DATA from CAN_1-LMO_2
	uint8_t shift_up;	//1
	uint8_t shift_down;	//1
	uint8_t eng_map;	//1

	// DATA from CAN_1-LMO_3
	float p_pneu;		//4
	float x_RH_RL;	//4
	float x_RH_RR;	//4
	uint8_t t_oil_gb;	//1
	uint8_t t_canmod;	//1

	// DATA from CAN_1-LMO_4
	float p_oil; // 4
	float p_fuel_rail; // 4
	float x_throttle_valve; // 4
	uint16_t t_water_engine; //2
	uint16_t t_air_22; //2
	uint16_t t_oil_engine; //2

	//DATA from CAN_1-LMO_5
	float lambda; //4
	uint8_t trigger_error; // 1

	//DATA from CAN_1-LMO6
	float p_brake_rear; //4

// #################### CAN_2 #########################

	//DATA from CAN_2-LMO1



	//DATA from CAN_2-LMO2
	uint8_t i_tot;	//1

	//DATA from CAN_2-LMO3
	uint8_t t_PCM;	//1

	//DATA from CAN_2-LMO4
	float f_rl;	//4
	float f_rr;	//4
	float x_dp_RL;	//4
	float x_dp_RR;	//4

	//DATA from CAN_2-LMO5
	float f_fl;		//4
	float f_fr;		//4

	//DATA from CAN_2-LMO6
	uint8_t t_VCU;	//1
	float x_RH_F;	//4
	uint8_t x_clutch;	//1
	uint8_t x_clutch_STW;	//1
	float u_bat;	//4

	//Data from CAN_2-LMO07
	float n_wheel_FL;	//4
	float n_wheel_FR;	//4
	float n_wheel_RL;	//4
	float n_wheel_RR;	//4

	//DATA from CAN_2-LMO8
	float p_brake_F;	//4

	//DATA from CAN_2-LMO9
	float ay;	//4

	//DATA from CAN_2-LM10
	float ax;	//4

	//DATA from CAN_2-LM11
	uint16_t  t_tyre_FL_1; //2
	uint16_t  t_tyre_FL_2; //2
	uint16_t  t_tyre_FL_3; //2
	uint16_t  t_tyre_FL_4; //2

	//DATA from CAN_2-LM12
	uint16_t  t_tyre_FL_5; // *2
	uint16_t  t_tyre_FL_6;
	uint16_t  t_tyre_FL_7;
	uint16_t  t_tyre_FL_8;

	//DATA from CAN_2-LMO13
	uint16_t t_tyre_FR_1;
	uint16_t t_tyre_FR_2;
	uint16_t t_tyre_FR_3;
	uint16_t t_tyre_FR_4;

	//DATA from CAN_2-LMO14
	uint16_t t_tyre_FR_5;
	uint16_t t_tyre_FR_6;
	uint16_t t_tyre_FR_7;
	uint16_t t_tyre_FR_8;

	//DATA from CAN_2-LMO15
	uint16_t t_tyre_RL_1;
	uint16_t t_tyre_RL_2;
	uint16_t t_tyre_RL_3;
	uint16_t t_tyre_RL_4;

	//DATA from CAN_2-LMO16
	uint16_t t_tyre_RL_5;
	uint16_t t_tyre_RL_6;
	uint16_t t_tyre_RL_7;
	uint16_t t_tyre_RL_8;

	//DATA from CAN_2-LMO17
	uint16_t t_tyre_RR_1;
	uint16_t t_tyre_RR_2;
	uint16_t t_tyre_RR_3;
	uint16_t t_tyre_RR_4;

	//DATA from CAN_2-LMO18
	uint16_t t_tyre_RR_5;
	uint16_t t_tyre_RR_6;
	uint16_t t_tyre_RR_7;
	uint16_t t_tyre_RR_8;

	// DATA Lauch
	// uint8_t Launch_1;
	// uint8_t Launch_2;
	// uint8_t Launch_3;
	// uint8_t Launch_4;
	/*
	// TTC_Diagnose
	uint8_t diag_static;
	uint8_t watchdog_state;
	uint8_t diag_error_code;
	uint8_t watchdog_errorcode;
	uint8_t get_kl15;
	uint8_t executiontime;

	uint16_t angular_rate_x;
	uint16_t angular_rate_y;
	uint16_t angular_rate_z;
*/
	uint8_t sync;

};

#endif /* TELE_H_ */
