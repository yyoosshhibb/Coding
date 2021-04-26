#ifndef __GPIO_MANAGEMENT
#define __GPIO_MANAGEMENT

#include "Hardware_Def.h"
/*#### GPIO Management defines the general digital inputs pins and ports. These pins and ports are then 
defined with a user defined name for a better software understanding. ####*/

#define FLAG_GPIO_CONFIG_READY 0x03

//////////////Debug led definition/////////////

//#define DEBUG_LED_PORT	GPIOC
//#define DEBUG_LED_PIN		GPIO_PIN_6

///////////////////////////////////////////////


//////////////Mosfet control output////////////

//#define LED01_PORT				GPIOD
//#define LED01_PIN 				GPIO_PIN_12
//
//#define LED02_PORT				GPIOD
//#define LED02_PIN 				GPIO_PIN_13
//
//#define LED03_PORT				GPIOD
//#define LED03_PIN 				GPIO_PIN_14
//
//#define LED04_PORT				GPIOD
//#define LED04_PIN 				GPIO_PIN_15

///////////////////////////////////////////////
	


void GPIO_init(void);
void Set_DutyCycle(TIM_HandleTypeDef *htim, uint8_t PWM_CHANNEL, uint8_t Duty_Cycle);

#endif
