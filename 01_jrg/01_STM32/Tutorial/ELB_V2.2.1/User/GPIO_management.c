#include "GPIO_management.h"

void GPIO_init(void){
	
	GPIO_InitTypeDef GPIO_InitStruct;
	
	//ports clock initialisation, necessary to use the port´s pins
	__GPIOA_CLK_ENABLE();
	__GPIOC_CLK_ENABLE();
	__GPIOB_CLK_ENABLE();
	
	//general parameters
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;  //only to have high-low output pins
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;

#ifdef ELB_CPU
	//debug led initialisation	
	GPIO_InitStruct.Pin = DEBUG_LED_PIN;
  HAL_GPIO_Init(DEBUG_LED_PORT, &GPIO_InitStruct);
#endif
	
#ifdef HW_ELB	
	//Transistor 1,2,3 init
	GPIO_InitStruct.Pin = TR1_PIN | TR2_PIN | TR3_PIN;
	HAL_GPIO_Init(TR1_PORT, &GPIO_InitStruct);
	
	/////////////////////////////////////////FOR PWM GENERATION////////////////////////////////////////
	
	GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;   						//used to have a pwm output
	GPIO_InitStruct.Alternate = GPIO_AF2_TIM4;						//Timer used configuartion, here TIM4 is configure for the frequency
	
	GPIO_InitStruct.Pin = GPIO_PIN_6 | GPIO_PIN_7;				//correspond to channel 1 and 2 of PWM generation 
	HAL_GPIO_Init(GPIOB,&GPIO_InitStruct);

///////////////////////////////////////////////////////////////////////////////////////////////////
	
	osThreadFlagsSet(id_task_TR1,FLAG_GPIO_CONFIG_READY);
	osThreadFlagsSet(id_task_TR2,FLAG_GPIO_CONFIG_READY);
	osThreadFlagsSet(id_task_TR3,FLAG_GPIO_CONFIG_READY);
#endif

#ifdef HW_R5_ELB
	//Transistor 1,2,3 init
	GPIO_InitStruct.Pin = TR_WF_PIN;
	HAL_GPIO_Init(TR_WF_PORT, &GPIO_InitStruct);
	
/////////////////////////////////////////FOR PWM GENERATION////////////////////////////////////////
	
	GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;   						//used to have a pwm output
	GPIO_InitStruct.Alternate = GPIO_AF2_TIM4;						//Timer used configuartion, here TIM4 is configure for the frequency
	
	GPIO_InitStruct.Pin = GPIO_PIN_6;					//correspond to channel 1 of TIM4 PWM generation 
	HAL_GPIO_Init(GPIOB,&GPIO_InitStruct);

	GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;   						//used to have a pwm output
	GPIO_InitStruct.Alternate = GPIO_AF9_TIM12;						//Timer used configuartion, here TIM12 is configure for the frequency
	
	GPIO_InitStruct.Pin = GPIO_PIN_14;				//correspond to channel 1 of TIM12 PWM generation 
	HAL_GPIO_Init(GPIOB,&GPIO_InitStruct);

///////////////////////////////////////////////////////////////////////////////////////////////////

	#if USE_SERIAL_NB
		GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
		GPIO_InitStruct.Pull = GPIO_PULLDOWN;
		
		GPIO_InitStruct.Pin = SN_B0_PIN | SN_B1_PIN | SN_B2_PIN | SN_B3_PIN | SN_B4_PIN | SN_B5_PIN | SN_B6_PIN | SN_B7_PIN;
		HAL_GPIO_Init(SN_B0_PORT, &GPIO_InitStruct);
	#endif

	osThreadFlagsSet(id_task_TR_WF,FLAG_GPIO_CONFIG_READY);
	
#endif

#if USE_WATER_SPLASH
	GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;   						//used to have a pwm output
	GPIO_InitStruct.Alternate = GPIO_AF1_TIM1;						//Timer used configuartion, here TIM1 is configure for the frequency
	
	GPIO_InitStruct.Pin = GPIO_PIN_8;				//correspond to channel 1 of TIM1 PWM generation 
	HAL_GPIO_Init(GPIOA,&GPIO_InitStruct);
	
	osThreadFlagsSet(id_task_TR_WS,FLAG_GPIO_CONFIG_READY);
#endif

}

void Set_DutyCycle(TIM_HandleTypeDef *htim, uint8_t PWM_CHANNEL, uint8_t Duty_Cycle){
	
	uint16_t pulse_length = (htim->Init.Period+1) * ((float)Duty_Cycle / 100);
	
	__HAL_TIM_SET_COMPARE(htim,PWM_CHANNEL,pulse_length);
	
}

