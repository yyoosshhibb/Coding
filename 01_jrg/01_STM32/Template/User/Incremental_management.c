#include "Incremental_management.h"

osThreadId_t id_task_incremental;
osMessageQueueId_t Incremental_Q;

Inc_output_t OUT_NB = 0;

uint8_t Incremental_val = 127;

#ifdef HW_CONSOLE

Incremental_t IN_A;
Incremental_t IN_B;

#endif

void Incremental_Init(){
	
			GPIO_InitTypeDef GPIO_InitStruct;
	
	__GPIOC_CLK_ENABLE();
	
	//general parameters
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING_FALLING;  //interruption generates for every edge detected
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	
	#ifdef HW_CONSOLE
	
	GPIO_InitStruct.Pin = INA_PIN | INB_PIN ;
	HAL_GPIO_Init(INA_PORT, &GPIO_InitStruct);
	
	HAL_NVIC_SetPriority(EXTI15_10_IRQn,5,0);
	HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);
	
	IN_A.Pin = INA_PIN;
	IN_A.Port = INA_PORT;
	IN_A.Output = A;
	IN_A.Debounce = 10;
	IN_A.time = 0;
	IN_A.State = HAL_GPIO_ReadPin(INA_PORT,INA_PIN);
	
	IN_B.Pin = INB_PIN;
	IN_B.Port = INB_PORT;
	IN_B.Output = B;
	IN_B.Debounce = 10;
	IN_B.time = 0;
	IN_B.State = HAL_GPIO_ReadPin(INB_PORT,INB_PIN);
	
	#endif
	
	osThreadFlagsSet(id_task_incremental,FLAG_INCREMENTAL_OK);
	
}

void EXTI7_9_IRQHandler_Inc(void){
	#ifdef HW_CONSOLE
  /* EXTI line interrupt detected */
	if(__HAL_GPIO_EXTI_GET_IT(INA_PIN) != RESET){
		OUT_NB = A;
		osMessageQueuePut(Incremental_Q,&OUT_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(INA_PIN);
	}
	else if(__HAL_GPIO_EXTI_GET_IT(INB_PIN) != RESET){
		OUT_NB = B;
		osMessageQueuePut(Incremental_Q,&OUT_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(INB_PIN);
	}
	#endif
}

void TASK_Incremental(){
	 osStatus_t status;
	 int send_status;
	
	osThreadFlagsWait(FLAG_INCREMENTAL_OK,osFlagsWaitAll,osWaitForever);
	
	uint8_t OUT_Num = 0;
	uint8_t priority;
	
	while(1){
		
		osMessageQueueGet(Incremental_Q,&OUT_Num,&priority,osWaitForever);
		
		if(OUT_Num == A){
			if (Timer_ms >= (IN_A.time + IN_A.Debounce)){
				IN_A.time = Timer_ms;
				IN_A.State = HAL_GPIO_ReadPin(INA_PORT,INA_PIN);
				IN_B.State = HAL_GPIO_ReadPin(INB_PORT,INB_PIN);
				if(IN_A.State == IN_B.State){
					Incremental_val --;
				}
				if(IN_A.State != IN_B.State){
					Incremental_val ++;
				}
			}
		}
		
		if(OUT_Num == B){
			if (Timer_ms >= (IN_B.time + IN_B.Debounce)){
				IN_B.time = Timer_ms;
				IN_A.State = HAL_GPIO_ReadPin(INA_PORT,INA_PIN);
				IN_B.State = HAL_GPIO_ReadPin(INB_PORT,INB_PIN);
				if(IN_A.State == IN_B.State){
					Incremental_val ++;
				}
				if(IN_A.State != IN_B.State){
					Incremental_val --;
				}
			}
		}
	}
}