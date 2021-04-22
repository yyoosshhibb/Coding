#include "LED_Management.h"

//Declare LEDs

static LED_t	LED01;
static LED_t	LED02;
static LED_t	LED03;
static LED_t	LED04;

//Declare Threads

static osThreadId_t is_task_LED01;
static osThreadId_t is_task_LED02;
static osThreadId_t is_task_LED03;
static osThreadId_t is_task_LED04;



void LED_Init(){

	LED01.Color = Green;
	LED01.dutycycle = 1;
	LED01.PORT = LED01_PORT;
	LED01.PWM_CHANNEL = TIM_CHANNEL_1;
	
	LED01.Color = Orange;
	LED01.dutycycle = 1;
	LED01.PORT = LED02_PORT;
	LED01.PWM_CHANNEL = TIM_CHANNEL_2;
	
	LED01.Color = Red;
	LED01.dutycycle = 1;
	LED01.PORT = LED03_PORT;
	LED01.PWM_CHANNEL = TIM_CHANNEL_3;
	
	LED01.Color = Blue;
	LED01.dutycycle = 1;
	LED01.PORT = LED04_PORT;
	LED01.PWM_CHANNEL = TIM_CHANNEL_4;

	//Flags to start the Task
	
	osThreadFlagsSet(id_task_LED01, FLAG_LED_CONFIG_READY);
	osThreadFlagsSet(id_task_LED02, FLAG_LED_CONFIG_READY);
	osThreadFlagsSet(id_task_LED03, FLAG_LED_CONFIG_READY);
	osThreadFlagsSet(id_task_LED04, FLAG_LED_CONFIG_READY);

}
