#include "Switch_management.h"

osThreadId_t id_task_switch;
osMessageQueueId_t Switch_Q;

uint8_t SW_NB = 0;

#ifdef HW_SI
	Switch_t SW1;
	Switch_t SW2;
	Switch_t SW3;
	Switch_t SW4;
	Switch_t SW5;
	Switch_t SW6;
	Switch_t SW7;
	Switch_t SW8;
#endif

#ifdef HW_CONSOLE
	Switch_t SW1;
	Switch_t SW2;
	Switch_t SW3;
	Switch_t SW4;
	Switch_t SW5;
	Switch_t SW6;
#endif


void Switch_Init(){
	
		GPIO_InitTypeDef GPIO_InitStruct;
	
	__GPIOC_CLK_ENABLE();
	
	//general parameters
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING_FALLING;  //interruption generates for every edge detected
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	
#ifdef HW_SI
	
	//SWITCH 1-8 INIT
	GPIO_InitStruct.Pin = SW1_PIN | SW2_PIN | SW3_PIN | SW4_PIN | SW5_PIN | SW6_PIN | SW7_PIN | SW8_PIN;
	HAL_GPIO_Init(SW1_PORT, &GPIO_InitStruct);
	
	HAL_NVIC_SetPriority(EXTI9_5_IRQn,5,0);
	HAL_NVIC_EnableIRQ(EXTI9_5_IRQn);
	
	HAL_NVIC_SetPriority(EXTI15_10_IRQn,5,0);
	HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);

	SW1.Pin = SW1_PIN;
	SW1.Port = GPIOC;
	SW1.Mode = SINGLE;
	SW1.Debounce = 10;
	SW1.time = 0;
	SW1.State = HAL_GPIO_ReadPin(SW1_PORT,SW1_PIN);	
	SW1.toggle_state = HAL_GPIO_ReadPin(SW1_PORT,SW1_PIN);
	
	SW2.Pin = SW2_PIN;
	SW2.Port = GPIOC;
	SW2.Mode = SINGLE;
	SW2.Debounce = 10;
	SW2.time = 0;
	SW2.State = HAL_GPIO_ReadPin(SW2_PORT,SW2_PIN);
	SW2.toggle_state = HAL_GPIO_ReadPin(SW2_PORT,SW2_PIN);
	
	SW3.Pin = SW3_PIN;
	SW3.Port = GPIOC;
	SW3.Mode = SINGLE;
	SW3.Debounce = 10;
	SW3.time = 0;
	SW3.State = HAL_GPIO_ReadPin(SW3_PORT,SW3_PIN);
	SW3.toggle_state = HAL_GPIO_ReadPin(SW3_PORT,SW3_PIN);
	
	SW4.Pin = SW4_PIN;
	SW4.Port = GPIOC;
	SW4.Mode = SINGLE;
	SW4.Debounce = 10;
	SW4.time = 0;
	SW4.State = HAL_GPIO_ReadPin(SW4_PORT,SW4_PIN);	
	SW4.toggle_state = HAL_GPIO_ReadPin(SW4_PORT,SW4_PIN);
	
	SW5.Pin = SW5_PIN;
	SW5.Port = GPIOC;
	SW5.Mode = SINGLE;
	SW5.Debounce = 10;
	SW5.time = 0;
	SW5.State = HAL_GPIO_ReadPin(SW5_PORT,SW5_PIN);
  SW5.toggle_state = HAL_GPIO_ReadPin(SW5_PORT,SW5_PIN);	
	
	SW6.Pin = SW6_PIN;
	SW6.Port = GPIOC;
	SW6.Mode = SINGLE;
	SW6.Debounce = 10;
	SW6.time = 0;
	SW6.State = HAL_GPIO_ReadPin(SW6_PORT,SW6_PIN);
	SW6.toggle_state = HAL_GPIO_ReadPin(SW6_PORT,SW6_PIN);
	
	SW7.Pin = SW7_PIN;
	SW7.Port = GPIOC;
	SW7.Mode = SINGLE;
	SW7.Debounce = 10;
	SW7.time = 0;
	SW7.State = HAL_GPIO_ReadPin(SW7_PORT,SW7_PIN);
	SW7.toggle_state = HAL_GPIO_ReadPin(SW7_PORT,SW7_PIN);
	
	SW8.Pin = SW8_PIN;
	SW8.Port = GPIOC;
	SW8.Mode = SINGLE;
	SW8.Debounce = 10;
	SW8.time = 0;
	SW8.State = HAL_GPIO_ReadPin(SW8_PORT,SW8_PIN);
	SW8.toggle_state = HAL_GPIO_ReadPin(SW8_PORT,SW8_PIN);	
#endif

#ifdef HW_CONSOLE
	
	//SWITCH 1-8 INIT
	GPIO_InitStruct.Pin = SW1_PIN | SW2_PIN | SW3_PIN | SW4_PIN | SW5_PIN | SW6_PIN ;
	HAL_GPIO_Init(SW1_PORT, &GPIO_InitStruct);
	
	HAL_NVIC_SetPriority(EXTI9_5_IRQn,5,0);
	HAL_NVIC_EnableIRQ(EXTI9_5_IRQn);
	
	HAL_NVIC_SetPriority(EXTI15_10_IRQn,5,0);
	HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);

	SW1.Pin = SW1_PIN;
	SW1.Port = GPIOC;
	SW1.Mode = SINGLE;
	SW1.Debounce = 10;
	SW1.time = 0;
	SW1.State = HAL_GPIO_ReadPin(SW1_PORT,SW1_PIN);	
	SW1.toggle_state = HAL_GPIO_ReadPin(SW1_PORT,SW1_PIN);
	
	SW2.Pin = SW2_PIN;
	SW2.Port = GPIOC;
	SW2.Mode = SINGLE;
	SW2.Debounce = 10;
	SW2.time = 0;
	SW2.State = HAL_GPIO_ReadPin(SW2_PORT,SW2_PIN);
	SW2.toggle_state = HAL_GPIO_ReadPin(SW2_PORT,SW2_PIN);
	
	SW3.Pin = SW3_PIN;
	SW3.Port = GPIOC;
	SW3.Mode = SINGLE;
	SW3.Debounce = 10;
	SW3.time = 0;
	SW3.State = HAL_GPIO_ReadPin(SW3_PORT,SW3_PIN);
	SW3.toggle_state = HAL_GPIO_ReadPin(SW3_PORT,SW3_PIN);
	
	SW4.Pin = SW4_PIN;
	SW4.Port = GPIOC;
	SW4.Mode = SINGLE;
	SW4.Debounce = 10;
	SW4.time = 0;
	SW4.State = HAL_GPIO_ReadPin(SW4_PORT,SW4_PIN);	
	SW4.toggle_state = HAL_GPIO_ReadPin(SW4_PORT,SW4_PIN);
	
	SW5.Pin = SW5_PIN;
	SW5.Port = GPIOC;
	SW5.Mode = SINGLE;
	SW5.Debounce = 10;
	SW5.time = 0;
	SW5.State = HAL_GPIO_ReadPin(SW5_PORT,SW5_PIN);
  SW5.toggle_state = HAL_GPIO_ReadPin(SW5_PORT,SW5_PIN);	
	
	SW6.Pin = SW6_PIN;
	SW6.Port = GPIOC;
	SW6.Mode = SINGLE;
	SW6.Debounce = 10;
	SW6.time = 0;
	SW6.State = HAL_GPIO_ReadPin(SW6_PORT,SW6_PIN);
	SW6.toggle_state = HAL_GPIO_ReadPin(SW6_PORT,SW6_PIN);
	
#endif
	
	osThreadFlagsSet(id_task_switch,FLAG_SWITCH_OK);
}

void EXTI9_5_IRQHandler(void)
{
	#ifdef HW_SI
  /* EXTI line interrupt detected */
  if(__HAL_GPIO_EXTI_GET_IT(SW1_PIN) != RESET){
		SW_NB = 1;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW1_PIN);
	}
	else if(__HAL_GPIO_EXTI_GET_IT(SW2_PIN) != RESET){
		SW_NB = 2;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW2_PIN);
	}
	else if(__HAL_GPIO_EXTI_GET_IT(SW3_PIN) != RESET){
		SW_NB = 3;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW3_PIN);
	}
	#endif
	
		#ifdef HW_CONSOLE
  /* EXTI line interrupt detected */

	if(__HAL_GPIO_EXTI_GET_IT(SW6_PIN) != RESET){
		SW_NB = 6;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW6_PIN);
	}
		EXTI7_9_IRQHandler_Inc();
	#endif

}

void EXTI15_10_IRQHandler(void){
	#ifdef HW_SI
  /* EXTI line interrupt detected */
	if(__HAL_GPIO_EXTI_GET_IT(SW4_PIN) != RESET){
		SW_NB = 4;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW4_PIN);
	}
  else if(__HAL_GPIO_EXTI_GET_IT(SW5_PIN) != RESET){
		SW_NB = 5;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW5_PIN);
	}
	else if(__HAL_GPIO_EXTI_GET_IT(SW6_PIN) != RESET){
		SW_NB = 6;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW6_PIN);
	}
	else if(__HAL_GPIO_EXTI_GET_IT(SW7_PIN) != RESET){
		SW_NB = 7;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW7_PIN);
	}
	else if(__HAL_GPIO_EXTI_GET_IT(SW8_PIN) != RESET){
		SW_NB = 8;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW8_PIN);
	}
	#endif
	
	#ifdef HW_CONSOLE
  /* EXTI line interrupt detected */
	 if(__HAL_GPIO_EXTI_GET_IT(SW1_PIN) != RESET){
		SW_NB = 1;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW1_PIN);
	}
	else if(__HAL_GPIO_EXTI_GET_IT(SW2_PIN) != RESET){
		SW_NB = 2;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW2_PIN);
	}
	else if(__HAL_GPIO_EXTI_GET_IT(SW3_PIN) != RESET){
		SW_NB = 3;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW3_PIN);
	}
	else if(__HAL_GPIO_EXTI_GET_IT(SW4_PIN) != RESET){
		SW_NB = 4;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW4_PIN);	
	}
	  else if(__HAL_GPIO_EXTI_GET_IT(SW5_PIN) != RESET){
		SW_NB = 5;
		osMessageQueuePut(Switch_Q,&SW_NB,1,0);
    __HAL_GPIO_EXTI_CLEAR_IT(SW5_PIN);
	}

	#endif
}

void Switch_read(Switch_t *SW){
	if(SW->Mode == TOGGLE){
		if (Timer_ms >= (SW->time + TOGGLE_DEBOUNCE)){
			SW->time = Timer_ms;
			if (SW->toggle_state == 1){
				SW->toggle_state = 0;
			}
			else if (SW->toggle_state == 0){
				SW->toggle_state = 1;
			}
			SW->State = SW->toggle_state;
		}
	}
	else {
		if (Timer_ms >= (SW->time + SW->Debounce)){
				SW->time = Timer_ms;
				SW->State = HAL_GPIO_ReadPin(SW->Port,SW->Pin);
			}
		}
}

void TASK_Switch(void){
	 osStatus_t status;
	 int send_status;
	
	osThreadFlagsWait(FLAG_SWITCH_OK,osFlagsWaitAll,osWaitForever);
	
	uint8_t SW_Num = 0;
	uint8_t priority;

	
	while(1){
		
		osMessageQueueGet(Switch_Q,&SW_Num,&priority,osWaitForever);
		
		switch (SW_Num){
			
			case 1:
			#if defined (HW_SI) || defined (HW_CONSOLE)
				Switch_read(&SW1);
			#endif
			break;
			
			case 2:
			#if defined (HW_SI) || defined (HW_CONSOLE)
				Switch_read(&SW2);
			#endif
			break;
			
			case 3:
			#if defined (HW_SI) || defined (HW_CONSOLE)
				Switch_read(&SW3);
			#endif
			break;
			
			case 4:
			#if defined (HW_SI) || defined (HW_CONSOLE)
				Switch_read(&SW4);
			#endif
			break;
			
			case 5:
			#if defined (HW_SI) || defined (HW_CONSOLE)
				Switch_read(&SW5);
			#endif
			break;
			
			case 6:
			#if defined (HW_SI) || defined (HW_CONSOLE)
				Switch_read(&SW6);
		  #endif
			break;
			
			case 7:
			#ifdef HW_SI
				Switch_read(&SW7);
		  #endif
			break;
			
			case 8:
			#ifdef HW_SI
				Switch_read(&SW8);
			#endif
			break;
		}
	}
}