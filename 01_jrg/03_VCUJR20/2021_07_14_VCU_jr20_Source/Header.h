/*
 * Header.h
 *
 *  Created on: 4 Nov 2019
 *      Author: Paul
 */

#include "Simulink/VCU.h"
#include "Simulink/VCU_private.h"
#include <DAVE.h>

#ifndef HEADER_H_
#define HEADER_H_

unsigned getbits(unsigned x,int p, int n);
unsigned getbits64(unsigned long long int x,int p, int n);
void setbitTrue(unsigned *x, int n);
void setbitFalse(unsigned *x, int n);

//----------------------------------------------------------_CAN_HEADER_----------------------------------------------------------

void CAN_1_ini();
void CAN_2_ini();
void CAN_1_Receive();
void CAN_2_Receive();
void CAN_1_Transmit();
void CAN_2_Transmit();

struct data_can
{
// #################### CAN_1 #########################

	//CAN_1-LMO_1 0x10
	uint8_t *p_air_22; //4
	uint8_t *AN5GearPos; //1
	uint16_t *n_engine; //2
	uint8_t *gear; // 1
	uint16_t *ign_angle; //4
	uint8_t *gear_shift_status; //1
	uint8_t *fuel_table_1_status; //1
	uint8_t *fuel_table_2_status; //1
	uint8_t *ign_table_1_status; //1
	uint8_t *ign_table_2_status; //1
	uint8_t *TPS; //1

	//CAN_1-LMO_2 0x771
	uint8_t *p_oil; // 4
	uint8_t *p_fuel_rail; // 4
	uint8_t *x_throttle_valve; // 4
	uint8_t *t_water_engine; //2
	uint8_t *t_air_22; //2
	uint8_t *t_oil_engine; //2
	uint16_t *WasteGate_dutycycle; //4

	//CAN_1-LMO_3 0x772
	uint8_t *inj_effective_PW; //1
	uint16_t *lambda; //4
	uint8_t *lambda_error_status; //1
	uint8_t *Link_Fault_Codes; //1
	uint8_t *lambda_status; //1
	uint8_t *error_trigger; //1
	uint8_t *boost_table; //1

	//CAN_1-LMO4 0x8
	uint8_t *STW_shift_up_request; //1
	uint8_t *STW_shift_down_request; //1
	uint8_t *STW_trigger_point; //1
	uint8_t *STW_engine_map; //1
	uint8_t *STW_rev_limiter; //1
	uint8_t *STW_clutch_mode; //1
	uint8_t *STW_transmission_mode; //1
	uint8_t *STW_mue_tyre; //1
	uint8_t *STW_brake_balance; //1

	//CAN_1-LMO5 0x5C0
	uint8_t *ABS_switchstate;
	uint16_t *p_brake_F;
	uint8_t *ABS_BL_switch;
	uint8_t *ABS_active;
	uint8_t *ABS_EBD_lamp;
	uint8_t *ABS_lamp;
	uint8_t *Brakelight_CAN1;


	//CAN_1-LMO6 0x7F0
	uint8_t *p_brake_R;
	uint8_t *LC_mue_tyre;
	uint8_t *LC_clutch_pos_des;
	uint8_t *LC_dash_bit;
	uint8_t *LC_active_bit;
	uint8_t *LC_ready_bit;
	uint8_t *LC_Mdes;
	uint8_t *LC_Fnr;

	//CAN_1-LM07 0x340
	uint16_t *n_wheel_FL;
	uint16_t *n_wheel_FR;
	uint16_t *n_wheel_RL;
	uint16_t *n_wheel_RR;

// #################### CAN_2 #########################

	//CAN_2-LM01 0x80
	uint16_t *g_yaw_ABS;
	uint16_t *g_long_ABS;

	//CAN_2-LM02 0x5C0
	uint8_t *ABS_switchstate_CAN2;
	uint16_t *p_brake_F_CAN2;
	uint8_t *ABS_BL_swtich_CAN2;
	uint8_t *ABS_active_CAN2;
	uint8_t *ABS_EBD_lamp_CAN2;
	uint8_t *ABS_Lamp_CAN2;

	//CAN_2-LM03 0x140
	uint16_t *n_wheel_FL_mpros;

	//CAN_2-LM04 0x142
	uint16_t *n_wheel_FR_mpros;

	//CAN_2-LM05 0x340
	uint16_t *n_wheel_RL_mpros;

	//CAN_2-LM06 0x342
	uint16_t *n_wheel_RR_mpros;

	//CAN_2-LM07 0x200 BSPD

	//CAN_2-LM08 0x201 BSPD

	//CAN_2-LM09 0x7E0
	uint16_t *f_FL;
	uint16_t *f_FR;
	uint16_t *f_RL;
	uint16_t *f_RR;
	double *TR1_VSense_WP;
	double *TR2_VSense_FAN1;
	double *TR3_VSense_FAN2;

	//CAN_2-LM10 0x7E2
	uint8_t *x_RH_RL; //4
	uint8_t *x_RH_RR; //4
	uint8_t *x_RH_F; //4
	uint8_t *x_clutch; //4
	uint8_t *x_clutch_STW; //4
	uint8_t *p_pneu; //4
	uint8_t *p_pneu_VCU_IN;
	uint8_t *U_bat; //4
	uint8_t *Brakelight;
	double *t_board_VCU; //Umrechnen für CAN Uebertragung
	uint8_t *BSD;

	//CAN_2-LM11 0x7E3 Error
	uint64_t plausi_error;

	//CAN_2-LM12 0x7FF Manual Control
	boolean_T ManualControl_Active;
	boolean_T ManConOn_MHJ9_IN;
	boolean_T ManConOn_MHJ9_OUT;
	boolean_T ManConOn_Waterpump;
	boolean_T ManConOn_Fans1;
	boolean_T ManConOn_Fans2;
	boolean_T ManConOn_VOVGShiftDown;
	boolean_T ManConOn_VOVGShiftUp;
	boolean_T ManConOn_IgnCut;
	boolean_T ManConOn_VOVG_IN;
	boolean_T ManConOn_VOVG_OUT;
	uint8_t ManConVar_MHJ9_IN;
	uint8_t ManConVar_MHJ9_OUT;
	uint8_t ManConVar_Waterpump;
	uint8_t ManConVar_Fans1;
	uint8_t ManConVar_Fans2;
	boolean_T ManConVar_VOVGShiftDown;
	boolean_T ManConVar_VOVGShiftUp;
	boolean_T ManConVar_IgnCut;
	boolean_T ManConVar_VOVG_IN;
	boolean_T ManConVar_VOVG_OUT;
};
//--------------------------------------------------------------------------------------------------------------------------------



//----------------------------------------------------------_ERROR_HANDLING_HEADER_----------------------------------------------------------

void Watchdog_Reset();
void Watchdog_Start();

typedef enum { 	ERR_FANS_DASH_BIT=1,
				ERR_G_LONG_ABS=2,
				ERR_G_YAW_ABS=3,
				ERR_GEAR=4,
				ERR_LC_DASH_BIT=5,
				ERR_N_ENGINE=6,
				ERR_N_WHEEL_FL=7,
				ERR_N_WHEEL_FR=8,
				ERR_N_WHEEL_RL=9,
				ERR_N_WHEEL_RR=10,
				ERR_P_AIR_22=11,
				ERR_P_AIR_22_DES=12,
				ERR_P_BRAKE_F=13,
				ERR_P_BRAKE_R=14,
				ERR_STW_CLTUCH_MODE=15,
				ERR_MUE_TYRE=16,
				ERR_STW_SHIFT_DOWN_REQUEST=17,
				ERR_STW_SHIFT_UP_REQUEST=18,
				ERR_T_WATER_ENGINE=19,
				ERR_TRANSMISSION_MODE=20,
				ERR_U_BAT=21,
				ERR_X_CLUTCH=22,
				ERR_X_CLUTCH_STW=23
} VCU_Failure;

unsigned checkRangePlausi(unsigned value, VCU_Failure error_code);
//-------------------------------------------------------------------------------------------------------------------------------------------



//----------------------------------------------------------_IO_PORT_HEADER_----------------------------------------------------------

void IOPort_ini();
void IOPort_setDOUTS();
void IOPort_readDINS();
void IOPort_setPWMOUTS();
void IOPort_readAINS();
void ManualControl_setDOUTS();
void ManualControl_setPWMOUTS();
void setMHJ9Freq();

struct data_IOPort
{
	// #################### Inputs #########################
	boolean_T* Fans_dash_bit;
	double* p_brake_R;
	double* p_pneum;
	double* x_clutch;
	double* f_FL;
	double* f_FR;
	double* f_RL;
	double* f_RR;
	boolean_T* LC_dash_bit;
	double* x_RH_F;
	double* x_RH_RL;
	double* x_RH_RR;
	double* U_Bat;
	double* x_clutch_STW;
	double* boardTemp;
	double* TR1_VSense_WP;
	double* TR2_VSense_FAN1;
	double* TR3_VSense_FAN2;

	// #################### Outputs #########################
	boolean_T* VOVG_ShiftUp;
	boolean_T* VOVG_ShiftDown;
	boolean_T* Ignition_Cut;
	boolean_T* VOVG_IN;
	boolean_T* VOVG_OUT;
	uint16_t* MHJ9_IN;
	uint16_t* MHJ9_OUT;
	boolean_T* Brakelight;
	uint16_t* Waterpump_PWM_active;
	uint16_t* Fans1_PWM_active;
	uint16_t* Fans2_PWM_active;
};

double VAR_boardTemp, VAR_TR1_VSense_WP, VAR_TR2_VSense_FAN1, VAR_TR3_VSense_FAN2;
double NTC_Calc(double Temp);
//--------------------------------------------------------------------------------------------------------------------------------------



//----------------------------------------------------------_RTOS_HANDLING_HEADER_----------------------------------------------------------

void RTOS_Handling_ini();
boolean_T shiftUpInterrupt;
boolean_T shiftDownInterrupt;

//--------------------------------------------------------------------------------------------------------------------------------------

#endif /* HEADER_H_ */
