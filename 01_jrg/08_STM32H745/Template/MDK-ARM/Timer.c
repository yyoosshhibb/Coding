/*
 * Timers.c
 *
 *  Created on: Feb 10, 2023
 *      Author: Yoshi
 */

#include "Hardware_Def.h"

TIM_HandleTypeDef htim15;


uint32_t	Timer_ms = 0;
uint16_t	CAN_RX_Delay = 0;

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

void HAL_TIM_Base_MspInit(TIM_HandleTypeDef* tim_baseHandle)
{

	  if(tim_baseHandle->Instance==TIM15)
	  {
	    __HAL_RCC_TIM15_CLK_ENABLE();
	    HAL_NVIC_SetPriority(TIM15_IRQn, 5, 0);
	    HAL_NVIC_EnableIRQ(TIM15_IRQn);
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
		osMessageQueuePut(CAN_Q,&msg,1,0);
		}

		if(Timer_ms%PER_100hz==0){
		msg = 100;
		osMessageQueuePut(CAN_Q,&msg,1,0);
		}

		if(Timer_ms%PER_50hz==0){
		msg = 50;
		osMessageQueuePut(CAN_Q,&msg,1,0);
		}

		if(Timer_ms%PER_20hz==0){
		msg = 20;
		osMessageQueuePut(CAN_Q,&msg,1,0);
		}

		if(Timer_ms%PER_10hz==0){
		msg = 10;
		osMessageQueuePut(CAN_Q,&msg,1,0);
		}

		if(Timer_ms%PER_5hz==0){
		msg = 5;
		osMessageQueuePut(CAN_Q,&msg,1,0);
		}

		if(Timer_ms%PER_2hz==0){
		msg = 2;
		osMessageQueuePut(CAN_Q,&msg,1,0);
		}

		if(Timer_ms%PER_1hz==0){
		msg = 1;
		osMessageQueuePut(CAN_Q,&msg,1,0);
		}
	}
}

void TIM15_IRQHandler(void)
{
	osThreadFlagsSet(id_task_timer, FLAG_TIMER_TICK);
	HAL_TIM_IRQHandler(&htim15);
}
