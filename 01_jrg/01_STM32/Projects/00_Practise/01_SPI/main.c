/*----------------------------------------------------------------------------
 * CMSIS-RTOS 'main' function template
 *---------------------------------------------------------------------------*/
 /*
 
 
*/
#include "Hardware_Def.h"

void Error_Handler(void);
void SystemClock_Config(void);
 
/*----------------------------------------------------------------------------
 * Application main thread
 *---------------------------------------------------------------------------*/
__NO_RETURN static void app_main (void *argument) 
{
	(void)argument;
		//IWDG_Init();					//only use watchdog when you know shit works
	//Tasks Definition
	/*
	id_Task_--- = osThreadNew(<Taskname> ,&<Actuator>, NULL);
	osThreadSetPriority(id_task_TR1,osPriorityAboveNormal);			//Other Priorities Possible
	*/
	
	
  
	
		//Initialisation of everything needed
	GPIO_init();						//GPIO INITIALISATION
	
	SPI_Init();

	
	
	
  for (;;) {}
}
 
int main (void) {
 
  SystemClock_Config();
	
	HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
		
  TimeBase_Timer_Config ();
  SystemCoreClockUpdate();
  // ...
 
  osKernelInitialize();                 // Initialize CMSIS-RTOS
  osThreadNew(app_main, NULL, NULL);    // Create application main thread
	osThreadSetPriority(app_main,osPriorityNormal);
  osKernelStart();                      // Start thread execution
  for (;;) {}
}

__NO_RETURN void Error_Handler(void)
{
  while(1)
  {
		
  }
}


void SystemClock_Config(void)		
{
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;

	//__HAL_RCC_SYSCFG_CLK_ENABLE();
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /* Enable Oscillators and activate PLL with HSE as source */
	RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE|RCC_OSCILLATORTYPE_LSE|RCC_OSCILLATORTYPE_LSI;

  RCC_OscInitStruct.LSEState = RCC_LSE_OFF;
	
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  //RCC_OscInitStruct.LSIState = RCC_LSI_ON;

  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 336;  //HSE = 8 mhz
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if(HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  
  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 
     clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if(HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }  
}
