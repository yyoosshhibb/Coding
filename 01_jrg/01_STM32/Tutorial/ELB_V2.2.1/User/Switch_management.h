#ifndef __SWITCH_MANAGEMENT
#define __SWITCH_MANAGEMENT

#include "Hardware_Def.h"

#define FLAG_SWITCH_OK 0x12

typedef enum{
	SINGLE,
	MULTI,
	TOGGLE,	
}Mode_t;

typedef struct{
	
uint16_t						Pin;
GPIO_TypeDef 				*Port;						//input port
GPIO_PinState				State;
GPIO_PinState				toggle_state;
Mode_t							Mode;
uint8_t							Debounce;
uint32_t						time;
	
}Switch_t;

#define TOGGLE_DEBOUNCE 1000

#ifdef HW_SI

#define SW_Number 8

#define SW1_PIN 	GPIO_PIN_7
#define SW1_PORT	GPIOC

#define SW2_PIN 	GPIO_PIN_8
#define SW2_PORT	GPIOC

#define SW3_PIN 	GPIO_PIN_9
#define SW3_PORT	GPIOC

#define SW4_PIN 	GPIO_PIN_10
#define SW4_PORT	GPIOC

#define SW5_PIN 	GPIO_PIN_11
#define SW5_PORT	GPIOC

#define SW6_PIN 	GPIO_PIN_12
#define SW6_PORT	GPIOC

#define SW7_PIN 	GPIO_PIN_13
#define SW7_PORT	GPIOC

#define SW8_PIN 	GPIO_PIN_14
#define SW8_PORT	GPIOC

extern	Switch_t SW1;
extern	Switch_t SW2;
extern	Switch_t SW3;
extern	Switch_t SW4;
extern	Switch_t SW5;
extern	Switch_t SW6;
extern	Switch_t SW7;
extern	Switch_t SW8;

#endif

#ifdef HW_CONSOLE

#define SW_Number 6

#define SW1_PIN 	GPIO_PIN_10
#define SW1_PORT	GPIOC

#define SW2_PIN 	GPIO_PIN_12
#define SW2_PORT	GPIOC

#define SW3_PIN 	GPIO_PIN_14
#define SW3_PORT	GPIOC

#define SW4_PIN 	GPIO_PIN_13
#define SW4_PORT	GPIOC

#define SW5_PIN 	GPIO_PIN_11
#define SW5_PORT	GPIOC

#define SW6_PIN 	GPIO_PIN_8
#define SW6_PORT	GPIOC

extern	Switch_t SW1;
extern	Switch_t SW2;
extern	Switch_t SW3;
extern	Switch_t SW4;
extern	Switch_t SW5;
extern	Switch_t SW6;

#endif

extern GPIO_PinState SW_state[SW_Number];

extern osThreadId_t id_task_switch;
extern osMessageQueueId_t Switch_Q;

void Switch_Init(void);
void EXTI9_5_IRQHandler(void);
void TASK_Switch(void);

#endif