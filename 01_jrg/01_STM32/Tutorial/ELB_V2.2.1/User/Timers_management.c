#include "Timers_management.h"

TIM_HandleTypeDef htim7;

#if USE_ANA
TIM_HandleTypeDef htim5;	
#endif

#if USE_PWM
TIM_HandleTypeDef htim4;
TIM_HandleTypeDef htim12;
	#if USE_WATER_SPLASH
	TIM_HandleTypeDef htim1;
	#endif
#endif

uint32_t	Timer_ms = 0;						//this timer is the global clock
uint16_t	CAN_RX_Delay = 0;				//this timer is used for the CAN receive timeout, it is reset to 0 when the receive interrupt happens
uint16_t  Error_Timer = 0;				//this timer is send on the can for having an easy troubleshooting when testing

/* Hal delay need */
uint32_t HAL_GetTick(void){
		return Timer_ms;
}

void osDelay_ms(uint32_t Time_ms){
	osDelay(Time_ms * OS_TICK_FREQ/1000);
}
	
/* Initialize the timer7 as basetime and start it */
void TimeBase_Timer_Config(void){
	
	//enable timer
	TIM7->CR1|=(TIM_CR1_CEN);
	RCC_ClkInitTypeDef    clkconfig;
  uint32_t              uwTimclock = 0;
  uint32_t              uwPrescalerValue = 0;
  uint32_t              pFLatency;
  
  /*Configure the TIM7 IRQ priority */
  HAL_NVIC_SetPriority(TIM7_IRQn, 1 ,0); 
  
  /* Enable the TIM7 global Interrupt */
  HAL_NVIC_EnableIRQ(TIM7_IRQn); 
  
  /* Enable TIM7 clock */
  __HAL_RCC_TIM7_CLK_ENABLE();
  
  /* Get clock configuration */
  HAL_RCC_GetClockConfig(&clkconfig, &pFLatency);
  
  /* Compute TIM7 clock */
  uwTimclock = 2*HAL_RCC_GetPCLK1Freq();
   
  /* Compute the prescaler value to have TIM7 counter clock equal to 1MHz */
  uwPrescalerValue = (uint32_t) ((uwTimclock / 1000000) - 1);
  
  /* Initialize TIM7 */
  htim7.Instance = TIM7;
  
  /* Initialize TIMx peripheral as follow:
  + Period = [(TIM7CLK/1000) - 1]. to have a (1/1000) s time base.
  + Prescaler = (uwTimclock/1000000 - 1) to have a 1MHz counter clock.
  + ClockDivision = 0
  + Counter direction = Up
  */
  htim7.Init.Period = 1000;
  htim7.Init.Prescaler = 84 -1;
  htim7.Init.ClockDivision = 0;
  htim7.Init.CounterMode = TIM_COUNTERMODE_UP;
  if(HAL_TIM_Base_Init(&htim7) == HAL_OK)
  {
    /* Start the TIM time Base generation in interrupt mode */
    HAL_TIM_Base_Start_IT(&htim7);
  }
 
}

void TIM7_IRQHandler(void)
{			
	
	static uint16_t msg;
	
	if(TIM7->DIER & TIM_IT_UPDATE){ //If active
		if(TIM7->SR & TIM_FLAG_UPDATE){
		
			Timer_ms++;
			CAN_RX_Delay++;
			Error_Timer++;
			
			if(CAN_RX_Delay>50000){			//Necessary because the CAN delay should not come back to 0 after 65 535, all output should stay in fault time mode
				CAN_RX_Delay=50000;
			}
			
			if(Timer_ms%PER_200hz==0){
			msg = 200;
			osMessageQueuePut(CAN1_Q,&msg,1,0);	
			}
			
			if(Timer_ms%PER_100hz==0){
			msg = 100;
			osMessageQueuePut(CAN1_Q,&msg,1,0);	
			}
			
			if(Timer_ms%PER_50hz==0){
			msg = 50;
			osMessageQueuePut(CAN1_Q,&msg,1,0);	
			}
			
			if(Timer_ms%PER_40hz==0){
			msg = 40;
			osMessageQueuePut(CAN1_Q,&msg,1,0);	
			}
			
			if(Timer_ms%PER_30hz==0){
			msg = 30;
			osMessageQueuePut(CAN1_Q,&msg,1,0);	
			}
			
			if(Timer_ms%PER_20hz==0){
			msg = 20;
			osMessageQueuePut(CAN1_Q,&msg,1,0);	
			}
			
			if(Timer_ms%PER_10hz==0){
			msg = 10;
			osMessageQueuePut(CAN1_Q,&msg,1,0);
#ifdef ELB_CPU			
					HAL_GPIO_TogglePin(DEBUG_LED_PORT,DEBUG_LED_PIN);
#endif				
			}
			
			if(Timer_ms%PER_5hz==0){
			msg = 5;
			osMessageQueuePut(CAN1_Q,&msg,1,0);	
			}
			
			if(Timer_ms%PER_2hz==0){
			msg = 2;
			osMessageQueuePut(CAN1_Q,&msg,1,0);	
			}
			
			if(Timer_ms%PER_1hz==0){
			msg = 1;
			osMessageQueuePut(CAN1_Q,&msg,1,0);	
			}

		TIM7->SR = ~(TIM_FLAG_UPDATE);
		}
	}
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////TIMER 4 FOR PWM OUTPUT////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////

// this timer can handle up to 4 output channels
#if USE_PWM

void PWM_TIM4_Init(void){								//TRANSISTORS TIMER
	
	__HAL_RCC_TIM4_CLK_ENABLE();
	
  TIM_MasterConfigTypeDef sMasterConfig = {0};
	TIM_OC_InitTypeDef sConfigOC = {0};

  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 84-1;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = PWM1kHz;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_PWM_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
	/*
	To get proper duty cycle, you have simple equation
	
	pulse_length = ((TIM_Period + 1) * DutyCycle) / 100 - 1
	
	where DutyCycle is in percent, between 0 and 100%
	
	25% duty cycle: 	pulse_length = ((1000 + 1) * 25) / 100 - 1 = 249
	50% duty cycle: 	pulse_length = ((1000 + 1) * 50) / 100 - 1 = 499
	75% duty cycle: 	pulse_length = ((1000 + 1) * 75) / 100 - 1 = 749
	100% duty cycle:	pulse_length = ((1000 + 1) * 100) / 100 - 1 = 999
	
	Remember: if pulse_length is larger than TIM_Period, you will have output HIGH all the time
*/
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
	
  if (HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
	HAL_TIM_PWM_Start (&htim4,TIM_CHANNEL_1);
	
#ifdef HW_ELB 
  if (HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
	HAL_TIM_PWM_Start (&htim4,TIM_CHANNEL_2);
#endif
}

#ifdef HW_R5_ELB
void PWM_TIM12_Init(void){									//BRUSHLESS PWM
	
	__HAL_RCC_TIM12_CLK_ENABLE();
	
  TIM_MasterConfigTypeDef sMasterConfig = {0};
	TIM_OC_InitTypeDef sConfigOC = {0};

  htim12.Instance = TIM12;
  htim12.Init.Prescaler = 84-1;
  htim12.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim12.Init.Period = PWM100Hz;
  htim12.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim12.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_PWM_Init(&htim12) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim12, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
	/*
	To get proper duty cycle, you have simple equation
	
	pulse_length = ((TIM_Period + 1) * DutyCycle) / 100 - 1
	
	where DutyCycle is in percent, between 0 and 100%
	
	25% duty cycle: 	pulse_length = ((1000 + 1) * 25) / 100 - 1 = 249
	50% duty cycle: 	pulse_length = ((1000 + 1) * 50) / 100 - 1 = 499
	75% duty cycle: 	pulse_length = ((1000 + 1) * 75) / 100 - 1 = 749
	100% duty cycle:	pulse_length = ((1000 + 1) * 100) / 100 - 1 = 999
	
	Remember: if pulse_length is larger than TIM_Period, you will have output HIGH all the time
*/
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
	
  if (HAL_TIM_PWM_ConfigChannel(&htim12, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
	HAL_TIM_PWM_Start (&htim12,TIM_CHANNEL_1);
}
#endif

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////TIMER 1 FOR PWM OUTPUT////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////

// this timer can handle up to 4 output channels
#if USE_WATER_SPLASH

void PWM_TIM1_Init(void){									//WATER SPLASH PWM
	
	__HAL_RCC_TIM1_CLK_ENABLE();
	
  TIM_MasterConfigTypeDef sMasterConfig = {0};
	TIM_OC_InitTypeDef sConfigOC = {0};

  htim1.Instance = TIM1;
  htim1.Init.Prescaler = 84-1;
  htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim1.Init.Period = PWM333Hz;
  htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV2;
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_PWM_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
	/*
	To get proper duty cycle, you have simple equation
	
	pulse_length = ((TIM_Period + 1) * DutyCycle) / 100 - 1
	
	where DutyCycle is in percent, between 0 and 100%
	
	25% duty cycle: 	pulse_length = ((1000 + 1) * 25) / 100 - 1 = 249
	50% duty cycle: 	pulse_length = ((1000 + 1) * 50) / 100 - 1 = 499
	75% duty cycle: 	pulse_length = ((1000 + 1) * 75) / 100 - 1 = 749
	100% duty cycle:	pulse_length = ((1000 + 1) * 100) / 100 - 1 = 999
	
	Remember: if pulse_length is larger than TIM_Period, you will have output HIGH all the time
*/
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
	
  if (HAL_TIM_PWM_ConfigChannel(&htim1, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
	HAL_TIM_PWM_Start (&htim1,TIM_CHANNEL_1);
}
#endif
#endif

#if USE_ANA
void ADC_Timer_Config(void){
	
	//enable timer
	TIM5->CR1|=(TIM_CR1_CEN);
	RCC_ClkInitTypeDef    clkconfig;
  uint32_t              uwTimclock = 0;
  uint32_t              uwPrescalerValue = 0;
  uint32_t              pFLatency;
  
  /*Configure the TIM5 IRQ priority */
  HAL_NVIC_SetPriority(TIM5_IRQn, 2 ,0); 
  
  /* Enable the TIM5 global Interrupt */
  HAL_NVIC_EnableIRQ(TIM5_IRQn); 
  
  /* Enable TIM5 clock */
  __HAL_RCC_TIM5_CLK_ENABLE();
  
  /* Get clock configuration */
  HAL_RCC_GetClockConfig(&clkconfig, &pFLatency);
  
  /* Compute TIM5 clock */
  uwTimclock = 2*HAL_RCC_GetPCLK1Freq();
   
  /* Compute the prescaler value to have TIM5 counter clock equal to 1MHz */
  uwPrescalerValue = (uint32_t) ((uwTimclock / 1000000) - 1);
  
  /* Initialize TIM5 */
  htim5.Instance = TIM5;
  
  /* Initialize TIMx peripheral as follow:
  + Period = [(TIM5CLK/1000) - 1]. to have a (1/1000) s time base.
  + Prescaler = (uwTimclock/1000000 - 1) to have a 1MHz counter clock.
  + ClockDivision = 0
  + Counter direction = Up
  */
  htim5.Init.Period = 100;
  htim5.Init.Prescaler = 84 -1;
  htim5.Init.ClockDivision = 0;
  htim5.Init.CounterMode = TIM_COUNTERMODE_UP;
  if(HAL_TIM_Base_Init(&htim5) == HAL_OK)
  {
    /* Start the TIM time Base generation in interrupt mode */
    HAL_TIM_Base_Start_IT(&htim5);
  }
 
}

void TIM5_IRQHandler(void)
{			
	uint8_t msgg = 1;
	
	static uint16_t msg;
	
	if(TIM5->DIER & TIM_IT_UPDATE){ //If active
		if(TIM5->SR & TIM_FLAG_UPDATE){

			osThreadFlagsSet(id_task_Filtering,FLAG_ANA_FILTER);

		TIM5->SR = ~(TIM_FLAG_UPDATE);
		}
	}
}

#endif


