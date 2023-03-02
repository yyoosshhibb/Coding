/*
 * Timers.c
 *
 *  Created on: Feb 10, 2023
 *      Author: Yoshi
 */

#include "HW_Def.h"
#include "Timer_Management.h"

TIM_HandleTypeDef htim8, htim15;


uint32_t	Timer_ms = 0;
uint16_t	CAN_RX_Delay = 0;
float			LCD_duty = 0.5;

osThreadId_t id_task_timer;

/* TIM15 init function */
void MX_TIM15_Init(void)
{
	uint32_t prescaler, frequency;

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  frequency = 2 * HAL_RCC_GetPCLK2Freq();

  //To get the frequency down to 1 MHz it needs to be divided by 1000000 and - 1 because of digital stuff

  prescaler = (uint32_t)((frequency / 1000000U) - 1U);

  //With 1 MHz we have a Period of 1000000/<Period in us> -1

  /* USER CODE END TIM15_Init 1 */
  htim15.Instance = TIM15;
  htim15.Init.Prescaler = prescaler;
  htim15.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim15.Init.Period = (1000000U/1000U) - 1U;
  htim15.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim15.Init.RepetitionCounter = 0;
  htim15.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim15) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim15, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim15, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM15_Init 2 */
  HAL_TIM_Base_Start_IT(&htim15);

  /* USER CODE END TIM15_Init 2 */

}

void MX_TIM8_Init(void)
{

  /* USER CODE BEGIN TIM8_Init 0 */

  /* USER CODE END TIM8_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};
  TIM_BreakDeadTimeConfigTypeDef sBreakDeadTimeConfig = {0};

  /* USER CODE BEGIN TIM8_Init 1 */

  /* USER CODE END TIM8_Init 1 */
  htim8.Instance = TIM8;
  htim8.Init.Prescaler = 0;
  htim8.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim8.Init.Period = 65535;
  htim8.Init.ClockDivision = TIM_CLOCKDIVISION_DIV2;
  htim8.Init.RepetitionCounter = 0;
  htim8.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim8) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim8, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim8) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterOutputTrigger2 = TIM_TRGO2_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim8, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCNPolarity = TIM_OCNPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  sConfigOC.OCIdleState = TIM_OCIDLESTATE_RESET;
  sConfigOC.OCNIdleState = TIM_OCNIDLESTATE_RESET;
  if (HAL_TIM_PWM_ConfigChannel(&htim8, &sConfigOC, TIM_CHANNEL_3) != HAL_OK)
  {
    Error_Handler();
  }
  sBreakDeadTimeConfig.OffStateRunMode = TIM_OSSR_DISABLE;
  sBreakDeadTimeConfig.OffStateIDLEMode = TIM_OSSI_DISABLE;
  sBreakDeadTimeConfig.LockLevel = TIM_LOCKLEVEL_OFF;
  sBreakDeadTimeConfig.DeadTime = 0;
  sBreakDeadTimeConfig.BreakState = TIM_BREAK_DISABLE;
  sBreakDeadTimeConfig.BreakPolarity = TIM_BREAKPOLARITY_HIGH;
  sBreakDeadTimeConfig.BreakFilter = 0;
  sBreakDeadTimeConfig.Break2State = TIM_BREAK2_DISABLE;
  sBreakDeadTimeConfig.Break2Polarity = TIM_BREAK2POLARITY_HIGH;
  sBreakDeadTimeConfig.Break2Filter = 0;
  sBreakDeadTimeConfig.AutomaticOutput = TIM_AUTOMATICOUTPUT_DISABLE;
  if (HAL_TIMEx_ConfigBreakDeadTime(&htim8, &sBreakDeadTimeConfig) != HAL_OK)
  {
    Error_Handler();
  }

  HAL_TIM_MspPostInit(&htim8);
	
	HAL_TIM_PWM_Start(&htim8, TIM_CHANNEL_3);
	
	
	

}

void HAL_TIM_Base_MspInit(TIM_HandleTypeDef* tim_baseHandle)
{
	  if(tim_baseHandle->Instance==TIM8)
		{
		/* USER CODE BEGIN TIM8_MspInit 0 */

		/* USER CODE END TIM8_MspInit 0 */
			/* TIM8 clock enable */
			__HAL_RCC_TIM8_CLK_ENABLE();
		/* USER CODE BEGIN TIM8_MspInit 1 */

		/* USER CODE END TIM8_MspInit 1 */
		}

	  if(tim_baseHandle->Instance==TIM15)
	  {
	    __HAL_RCC_TIM15_CLK_ENABLE();
	    HAL_NVIC_SetPriority(TIM15_IRQn, 5, 0);
	    HAL_NVIC_EnableIRQ(TIM15_IRQn);
	  }
}

void HAL_TIM_MspPostInit(TIM_HandleTypeDef* timHandle)
{

  GPIO_InitTypeDef GPIO_InitStruct = {0};
  if(timHandle->Instance==TIM8)
  {
  /* USER CODE BEGIN TIM8_MspPostInit 0 */

  /* USER CODE END TIM8_MspPostInit 0 */

    __HAL_RCC_GPIOK_CLK_ENABLE();
    /**TIM8 GPIO Configuration
    PK0     ------> TIM8_CH3
    */
    GPIO_InitStruct.Pin = GPIO_PIN_0;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    GPIO_InitStruct.Alternate = GPIO_AF3_TIM8;
    HAL_GPIO_Init(GPIOK, &GPIO_InitStruct);

  /* USER CODE BEGIN TIM8_MspPostInit 1 */

  /* USER CODE END TIM8_MspPostInit 1 */
  }
}

void HAL_TIM_Base_MspDeInit(TIM_HandleTypeDef* tim_baseHandle)
{

  if(tim_baseHandle->Instance==TIM15)
  {
    __HAL_RCC_TIM15_CLK_DISABLE();
    HAL_NVIC_DisableIRQ(TIM15_IRQn);
  }
}

void Task_Timer(void)
{
	static uint16_t msg;

	while(1)
	{
		osThreadFlagsWait(FLAG_TIMER_TICK,osFlagsWaitAll,osWaitForever);
		Timer_ms++;
		CAN_RX_Delay++;

		if(CAN_RX_Delay>50000){			//Necessary because the CAN delay should not come back to 0 after 65 535, all output should stay in fault time mode
			CAN_RX_Delay=50000;
		}

		if(Timer_ms%PER_200hz==0){
		msg = 200;
		osMessageQueuePut(FDCAN_TX_Q,&msg,1,0);
		}

		if(Timer_ms%PER_100hz==0){
		msg = 100;
		osMessageQueuePut(FDCAN_TX_Q,&msg,1,0);
		}

		if(Timer_ms%PER_50hz==0){
		msg = 50;
		osMessageQueuePut(FDCAN_TX_Q,&msg,1,0);
		}

		if(Timer_ms%PER_20hz==0){
		msg = 20;
		osMessageQueuePut(FDCAN_TX_Q,&msg,1,0);
		}

		if(Timer_ms%PER_10hz==0){
		htim8.Instance->CCR3 = (uint16_t)(LCD_duty * 65535);
		msg = 10;
		osMessageQueuePut(FDCAN_TX_Q,&msg,1,0);
		}

		if(Timer_ms%PER_5hz==0){
		msg = 5;
		osMessageQueuePut(FDCAN_TX_Q,&msg,1,0);
		}

		if(Timer_ms%PER_2hz==0){
		msg = 2;
		osMessageQueuePut(FDCAN_TX_Q,&msg,1,0);
		}

		if(Timer_ms%PER_1hz==0){
		msg = 1;
		osMessageQueuePut(FDCAN_TX_Q,&msg,1,0);
		}
	}
}

void TIM15_IRQHandler(void)
{
	osThreadFlagsSet(id_task_timer, FLAG_TIMER_TICK);
	HAL_TIM_IRQHandler(&htim15);
}
