#ifndef __GPIO_MANAGEMENT
#define __GPIO_MANAGEMENT

#include "Hardware_Def.h"

/*#### GPIO Management defines the general digital inputs pins and ports. These pins and ports are then 
defined with a user defined name for a better software understanding. ####*/

#define FLAG_GPIO_CONFIG_READY 0x03

//////////////Debug led definition/////////////
//#ifdef ELB_CPU

#define DEBUG_LED_PORT	GPIOC
#define DEBUG_LED_PIN		GPIO_PIN_6

//#endif
///////////////////////////////////////////////

#ifdef HW_ELB
//////////////Mosfet control output////////////

#define TR1_PORT				GPIOB						//WATER FAN
#define TR1_PIN 				GPIO_PIN_4

#define TR2_PORT				GPIOB						//IC FAN
#define TR2_PIN 				GPIO_PIN_5

#define TR3_PORT				GPIOB						//STARTER
#define TR3_PIN 				GPIO_PIN_11

///////////////////////////////////////////////
#endif

#ifdef HW_R5_ELB

#define TR_WF_PORT			GPIOA
#define TR_WF_PIN				GPIO_PIN_10

/* This section defines the serial number DIO input to define the global serial number coded in 8bits*/

#define SN_B0_PORT			GPIOC
#define SN_B0_PIN				GPIO_PIN_7

#define SN_B1_PORT			GPIOC
#define SN_B1_PIN 			GPIO_PIN_8

#define SN_B2_PORT			GPIOC
#define SN_B2_PIN 			GPIO_PIN_9

#define SN_B3_PORT			GPIOC
#define SN_B3_PIN 			GPIO_PIN_10

#define SN_B4_PORT			GPIOC
#define SN_B4_PIN 			GPIO_PIN_11

#define SN_B5_PORT			GPIOC
#define SN_B5_PIN 			GPIO_PIN_12

#define SN_B6_PORT			GPIOC
#define SN_B6_PIN 			GPIO_PIN_13

#define SN_B7_PORT			GPIOC
#define SN_B7_PIN 			GPIO_PIN_14

#endif

void GPIO_init(void);
void Set_DutyCycle(TIM_HandleTypeDef *htim, uint8_t PWM_CHANNEL, uint8_t Duty_Cycle);

#endif