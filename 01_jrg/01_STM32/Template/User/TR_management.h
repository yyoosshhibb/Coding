#ifndef __TR_MANAGEMENT
#define __TR_MANAGEMENT

#include "Hardware_Def.h"

//////////////////////////////////TASK DEFINITIONS//////////////////////////
#define FLAG_TR_CONFIG_READY 0x01

#ifdef HW_ELB
extern osThreadId_t id_task_LED1;
extern osThreadId_t id_task_LED2;
extern osThreadId_t id_task_LED3;
#endif

#ifdef HW_R5_ELB
extern osThreadId_t id_task_TR_WF;
#endif

#ifdef USE_WATER_SPLASH
extern osThreadId_t id_task_TR_WS;
#endif

////////////////////////////////////////////////////////////////////////////

typedef enum{
	CURRENT_LIM_ENABLE,
	CURRENT_LIM_DISABLE,
}Current_lim_t;

typedef enum{
	SMARTSWITCH,
	EXT_SENSOR,
}TR_Sensor_t;

typedef enum{
	TR_OFF,
	TR_INRUSH,
	TR_NORMAL
}TR_State_t;

typedef enum{
	NO_FAULT,
	FAULT_STATE,
	OVERCURRENT,
	SHORT_CIRCUIT,
	OPEN_CIRCUIT,
	TIMEOUT_FAULT
}TR_Fault_t;

typedef union{
	uint8_t Diag_byte;
	struct{
		TR_State_t 	State:4;
		TR_Fault_t	Fault:4;
	};
}Diag_union_t;

typedef struct{
	
	uint16_t			CTRL_PIN;    			  	//CONTROL PIN OF THE TRANSISTOR
	GPIO_TypeDef 	*PORT;								//CONTROL PORT OF THE TRANSISTOR
	uint8_t				PWM_CHANNEL;					//PWM CHANNEL OF THE TRANSISTOR
	TIM_HandleTypeDef *htim;						//TIMER AFFECTED
	
	TR_Sensor_t		Sensor;								//SENSING METHOD USED FOR CURRENT SENSING OF OUTPUT
	uint32_t			fault_threshold;			//FAULT THRESHOLD IN MV	ONLY FOR SMARTSWITCH
	float					dki;									//factor value for current conversion in A/mV
	uint16_t			Is0;									//offset value for current conversion in mV
	
	uint8_t				N_Current_lim;				//CURRENT LIMIT DURING NORMAL STATE IN AMPS
	Current_lim_t N_Current_lim_state; 	//CURRENT LIMIT DURING NORMAL STATE ENABLE OR DISABLE @ref Current_lim_t
	uint16_t			N_OC_time;			 			//OVERCURRENT TIME DURING NORMAL STATE IN MS
	uint8_t				N_Retry_Nb;      			//NUMBER OF RETRY DURING NORMAL STATE IF FAULT STATE
	uint16_t			N_Retry_time;		 			//TIME ALLOWED BEFORE NORMAL DURING TRIP STATE IN MS
	
  uint16_t			Inrush_Period;				//Time during which the state is considered as inrush (start of the load with high current) in MS  ###PUT 0 FOR DISABLING ###	
	uint8_t				I_Current_lim;				//CURRENT LIMIT DURING INRUSH STATE IN AMPS
	Current_lim_t I_Current_lim_state; 	//CURRENT LIMIT DURING INRUSH STATE ENABLE OR DISABLE @ref Current_lim_t
	uint16_t			I_OC_time;			 			//OVERCURRENT TIME DURING INRUSH STATE IN MS
	uint8_t				I_Retry_Nb;      			//NUMBER OF RETRY DURING INRUSH STATE IF FAULT STATE
	uint16_t			I_Retry_time;		 			//TIME ALLOWED BEFORE RETRY DURING INRUSH STATE IN MS
  
	uint16_t			**Sens_Val;		 				//VALUE IN MV OF THE TRANSISTOR SENS PIN
	uint16_t			Current;							//Value of current in the TR in Amps/10
	uint16_t			*CMD;							  	//COMMAND STATE
	
	uint8_t       Duty_cycle_state;			//define the duty cycle state of the output      0 = disable		1 = enable
  uint16_t			Start_duty_cycle;			//define the starting duty cycle of the output
	uint16_t			Start_duration;     	//define the start procedure duration in MS
	
	uint8_t				Timeout_State;				//define if CAN timeout state						 0 = TR off		1 = TR on
	uint16_t			Timeout_Duty_cycle;		//define the default duty cycle if timeout state
	uint16_t			Timeout_Delay;				//define the delay of can error before can fault state in ms
	
	Diag_union_t	Diag;									//Diag structure to send on the CAN
	
}TR_t;

/////////////////////////////////////////EXTERNAL VARIABLES///////////////////////////////////////
#ifdef HW_ELB
extern TR_t TR_Water_Fan;
extern TR_t TR_IC_Fan;
extern TR_t TR_Starter;
#endif
#ifdef HW_R5_ELB
extern TR_t TR_Water_Fan_R5;
#endif
#if USE_WATER_SPLASH
extern TR_t TR_Water_Splash;
#endif
//////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////EXTERNAL FUNCTIONS///////////////////////////////////////
extern void TR_Init(void);
extern void TASK_TR_FAN(TR_t *TR);
extern void TASK_TR_WS(TR_t *TR);
///////////////////////////////////////////////////////////////////////////////////////////////////
#endif