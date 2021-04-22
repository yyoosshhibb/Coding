#ifndef __INCREMENTAL_MANAGEMENT
#define __INCREMENTAL_MANAGEMENT

#include "Hardware_Def.h"

#define FLAG_INCREMENTAL_OK 0x13

typedef enum{
	A,
	B,
}Inc_output_t;

typedef struct{
	
uint16_t						Pin;
GPIO_TypeDef 				*Port;						//input port
GPIO_PinState				State;
Inc_output_t				Output;
uint8_t							Debounce;
uint32_t						time;
	
}Incremental_t;

#ifdef HW_CONSOLE

#define INA_PIN				GPIO_PIN_7
#define INA_PORT			GPIOC

#define INB_PIN				GPIO_PIN_9
#define	INB_PORT			GPIOC

#endif

extern uint8_t Incremental_val;

extern osThreadId_t id_task_incremental;
extern osMessageQueueId_t Incremental_Q;

void EXTI7_9_IRQHandler_Inc(void);
void Incremental_Init(void);
void TASK_Incremental(void);

#endif