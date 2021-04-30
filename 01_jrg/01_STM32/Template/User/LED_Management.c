#include "LED_Management.h"

//Declare LEDs

LED_t	LED01;
LED_t	LED02;
LED_t	LED03;
LED_t	LED04;

//Declare Threads

osThreadId_t id_Task_LED01;
osThreadId_t id_Task_LED02;
osThreadId_t id_Task_LED03;
osThreadId_t id_Task_LED04;



void LED_Init(){

	LED01.Color = Green;
	LED01.dutycycle = 0;
	//LED01.PORT = LED01_PORT;
	LED01.PWM_CHANNEL = TIM_CHANNEL_1;
	LED01.htim = &htim4;
	
	LED02.Color = Orange;
	LED02.dutycycle = 0;
	//LED02.PORT = LED02_PORT;
	LED02.PWM_CHANNEL = TIM_CHANNEL_2;
	LED02.htim = &htim4;
	
	LED03.Color = Red;
	LED03.dutycycle = 0;
	//LED03.PORT = LED03_PORT;
	LED03.PWM_CHANNEL = TIM_CHANNEL_3;
	LED03.htim = &htim4;
	
	LED04.Color = Blue;
	LED04.dutycycle = 0;
	//LED04.PORT = LED04_PORT;
	LED04.PWM_CHANNEL = TIM_CHANNEL_4;
	LED04.htim = &htim4;


	//Flags to start the Task
	
	osThreadFlagsSet(id_Task_LED01, FLAG_LED_CONFIG_READY);
	osThreadFlagsSet(id_Task_LED02, FLAG_LED_CONFIG_READY);
	osThreadFlagsSet(id_Task_LED03, FLAG_LED_CONFIG_READY);
	osThreadFlagsSet(id_Task_LED04, FLAG_LED_CONFIG_READY);

}

void TASK_LED(LED_t *LED){
	
	//Task Parameters
	osStatus_t status;
	int send_status;
	uint8_t dutyCycle;
	extern uint8_t selectedLED;
	extern LED_t LED01;
	extern LED_t LED02;
	extern LED_t LED03;
	extern LED_t LED04;
	
	//////////////////////////////
	
	osThreadFlagsWait(FLAG_GPIO_CONFIG_READY,osFlagsWaitAll,osWaitForever);		//wait for flags in the order of initialization
	osThreadFlagsWait(FLAG_LED_CONFIG_READY,osFlagsWaitAll,osWaitForever); //wait for the configuration before starting task
	osThreadFlagsWait(FLAG_ANA_CONFIG_READY,osFlagsWaitAll,osWaitForever);

	
	while(1){
		
				//osThreadFlagsSet(id_task_Filtering, FLAG_ANA_FILTER);			//Done with timer activated in main.c
				real_conversion(&ADC_1);

				Set_DutyCycle(LED->htim, LED->PWM_CHANNEL, LED->dutycycle);

			
		
		HAL_IWDG_Refresh(&hiwdg);
		osDelay(10);
	}
	
	
	
	
}
