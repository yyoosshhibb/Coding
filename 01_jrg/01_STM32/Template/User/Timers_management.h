#ifndef __TIMERS_MANAGEMENT
#define __TIMERS_MANAGEMENT

#include "Hardware_Def.h"

#define FLAG_ANA_FILTER  0x80

#define TIME_BASE_PERIODus 1000 //1ms

#define PER_200hz	5
#define PER_100hz	10
#define PER_50hz	20
#define PER_40hz	25
#define PER_30hz	33
#define PER_20hz	50
#define PER_10hz	100
#define PER_5hz		200
#define PER_2hz		500
#define PER_1hz		1000

/*
	Set timer period when it have reset
	First you have to know max value for timer
	In our case it is 16bit = 65535
	To get your frequency for PWM, equation is simple
	
	PWM_frequency = timer_tick_frequency / (TIM_Period + 1)
	
	If you know your PWM frequency you want to have timer period set correct
	
	TIM_Period = timer_tick_frequency / PWM_frequency - 1
*/

#define PWM20kHz	49
#define PWM10kHz	99
#define PWM5kHz		199
#define PWM2kHz		499
#define PWM1kHz		999
#define PWM500Hz	4999
#define PWM333Hz	5999
#define PWM150Hz	6699
#define PWM100Hz	9999
#define PWM50Hz		19999

//extern TIM_HandleTypeDef htim1;
extern TIM_HandleTypeDef htim4;
//extern TIM_HandleTypeDef htim12;

extern uint16_t CAN_RX_Delay;
extern uint16_t  Error_Timer;
extern uint32_t Timer_ms;
	
void TimeBase_Timer_Config(void);
//void PWM_TIM1_Init(void);
void PWM_TIM4_Init(void);
//void PWM_TIM12_Init(void);
void ADC_Timer_Config(void);
void osDelay_ms(uint32_t Time_ms);

#endif


