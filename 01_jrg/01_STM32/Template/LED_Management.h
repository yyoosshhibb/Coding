#ifndef __LED_MANAGEMENT
#define __LED_MANAGEMENT

#include "Hardware_Def.h"

//Task Definitions
#define FLAG_LED_CONFIG_READY 0x01

extern osThreadId_t id_task_LED01;
extern osThreadId_t id_task_LED02;
extern osThreadId_t id_task_LED03;
extern osThreadId_t id_task_LED04;

/////////////////////////////// LED Definition //////////////
typedef enum{
	Green,
	Orange,
	Red,
	Blue,
}LED_Color_t;

typedef struct{
	LED_Color_t		Color;				//Color of LED
	uint8_t				dutycycle;		//Dutycycle of LED
	GPIO_TypeDef	*PORT;				//Port of the LED
	uint8_t				PWM_CHANNEL;	//Timer related to LED
}LED_t;
	

//External Variables


//External Functions
extern void LED_Init(void);
extern void TASK_LED(LED_t *LED);





#endif

