#include "GPIO_management.h"

void GPIO_init(void){
	
	GPIO_InitTypeDef GPIO_InitStruct;
	
	//ports clock initialisation, necessary to use the port´s pins
	__GPIOA_CLK_ENABLE();
//	__GPIOC_CLK_ENABLE();
//	__GPIOB_CLK_ENABLE();
	__GPIOD_CLK_ENABLE();
	
	//general parameters
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;  	//only to have high-low output pins
  GPIO_InitStruct.Pull = GPIO_NOPULL;						// no push and no pull
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;


	//debug led initialisation	
//	GPIO_InitStruct.Pin = DEBUG_LED_PIN;
//  HAL_GPIO_Init(DEBUG_LED_PORT, &GPIO_InitStruct);

	

	//Transistor 1,2,3 init
	//GPIO_InitStruct.Pin = TR1_PIN | TR2_PIN | TR3_PIN;
	//HAL_GPIO_Init(TR1_PORT, &GPIO_InitStruct);
	
	/////////////////////////////////////////FOR PWM GENERATION////////////////////////////////////////
	
	GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;   						//used to have a pwm output
	GPIO_InitStruct.Alternate = GPIO_AF2_TIM4;						//Timer used configuartion, here TIM4 is configure for the frequency
	
	GPIO_InitStruct.Pin = GPIO_PIN_12 | GPIO_PIN_13 | GPIO_PIN_14 | GPIO_PIN_15;				//correspond to channel 1, 2,3 and 4 of PWM generation 
	HAL_GPIO_Init(GPIOD,&GPIO_InitStruct);

///////////////////////////////////////////////////////////////////////////////////////////////////
	
//	osThreadFlagsSet(id_Task_LED01,FLAG_GPIO_CONFIG_READY);



/*
#if USE_WATER_SPLASH
	GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;   						//used to have a pwm output
	GPIO_InitStruct.Alternate = GPIO_AF1_TIM1;						//Timer used configuartion, here TIM1 is configure for the frequency
	
	GPIO_InitStruct.Pin = GPIO_PIN_8;				//correspond to channel 1 of TIM1 PWM generation 
	HAL_GPIO_Init(GPIOA,&GPIO_InitStruct);
	
	osThreadFlagsSet(id_task_TR_WS,FLAG_GPIO_CONFIG_READY);
#endif
*/
}

void Set_DutyCycle(TIM_HandleTypeDef *htim, uint8_t PWM_CHANNEL, uint8_t Duty_Cycle){
	
	uint16_t pulse_length = (htim->Init.Period+1) * ((float)Duty_Cycle / 100);
	
	__HAL_TIM_SET_COMPARE(htim,PWM_CHANNEL,pulse_length);
	
}

