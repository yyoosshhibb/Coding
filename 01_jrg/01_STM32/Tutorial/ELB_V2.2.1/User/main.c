/*----------------------------------------------------------------------------
 * CMSIS-RTOS 'main' function
 *---------------------------------------------------------------------------*/
 
 
//////////////////////////////////////////////////USER LIBRARY////////////////////////////////////////////////

#include "Hardware_Def.h"

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*** Prototypes ***/

void Error_Handler(void);
void SystemClock_Config(void);
 
/*----------------------------------------------------------------------------
 * Application main thread
 *---------------------------------------------------------------------------*/

void app_main (void *argument) {
	
	IWDG_Init();					//WATCHDOG INITIALISATION BEFORE ALL TO MAKE SURE ALL INITIALISATION ARE CORRECTY SET
	
//////////////////////////////////////////////////////////////////////////////////////////////////////////////	
///////////////////////////////////////////////TASK DEFINITION////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
#ifdef HW_ELB
	id_task_TR1 = osThreadNew(TASK_TR_FAN,&TR_Water_Fan,NULL);
	osThreadSetPriority(id_task_TR1,osPriorityAboveNormal);
	
	id_task_TR2 = osThreadNew(TASK_TR_FAN,&TR_IC_Fan,NULL);
	osThreadSetPriority(id_task_TR2,osPriorityAboveNormal);
	
	id_task_TR3 = osThreadNew(TASK_TR_FAN,&TR_Starter,NULL);
	osThreadSetPriority(id_task_TR3,osPriorityAboveNormal);
#endif
	
#ifdef HW_R5_ELB
	id_task_TR_WF = osThreadNew(TASK_TR_FAN,&TR_Water_Fan_R5,NULL);
	osThreadSetPriority(id_task_TR_WF,osPriorityAboveNormal);
#endif

#if USE_WATER_SPLASH
	id_task_TR_WS = osThreadNew(TASK_TR_WS,&TR_Water_Splash,NULL);
	osThreadSetPriority(id_task_TR_WS,osPriorityAboveNormal);
#endif

#if USE_CAN1 	
	CAN1_Q = osMessageQueueNew(20,1,NULL);
	CAN1_RX_Q = osMessageQueueNew(20,sizeof(CanRX_Queue_t),NULL);
	CAN1_mutex = osMutexNew(NULL);
	
	id_task_CAN1_TX = osThreadNew(TASK_CAN1_TX,NULL,NULL);
	osThreadSetPriority(id_task_CAN1_TX,osPriorityRealtime);
	id_task_CAN1_RX = osThreadNew(TASK_CAN1_RX,NULL,NULL);
	osThreadSetPriority(id_task_CAN1_RX,osPriorityHigh1);
#endif

#if USE_CAN2
	CAN2_Q = osMessageQueueNew(10,1,NULL);
	CAN2_RX_Q = osMessageQueueNew(10,sizeof(CanRX_Queue_t),NULL);
	CAN2_mutex = osMutexNew(NULL);
	
//	id_task_CAN2_TX = osThreadNew(TASK_CAN2_TX,NULL,NULL);
//	osThreadSetPriority(id_task_CAN2_TX,osPriorityHigh4);
	id_task_CAN2_RX = osThreadNew(TASK_CAN2_RX,NULL,NULL);
	osThreadSetPriority(id_task_CAN2_RX,osPriorityHigh1);
#endif

#if USE_ANA
	id_task_Filtering = osThreadNew(TASK_Filtering,NULL,NULL);
	osThreadSetPriority(id_task_Filtering,osPriorityAboveNormal1);
#endif

#if USE_SWITCH
	Switch_Q = osMessageQueueNew(20,1,NULL);
	
	id_task_switch = osThreadNew(TASK_Switch,NULL,NULL);
	osThreadSetPriority(id_task_CAN1_TX,osPriorityHigh);
#endif

#if USE_INCREMENTAL
	Incremental_Q = osMessageQueueNew(5,1,NULL);
	
	id_task_incremental = osThreadNew(TASK_Incremental,NULL,NULL);
	osThreadSetPriority(id_task_incremental,osPriorityAboveNormal1);
#endif

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////CONFIGS///////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

	GPIO_init();						//GPIO INITIALISATION
#if USE_PWM
	PWM_TIM4_Init();				//PWM TIMER INITIALISATION
	#ifdef HW_R5_ELB
	PWM_TIM12_Init();
	#endif
	#if USE_WATER_SPLASH
		PWM_TIM1_Init();
	#endif
#endif
	
#if USE_CAN1 || USE_CAN2
  CAN_Config();						//CAN INITIALISATION
	CAN_RX_Init();					//CAN RECEIVE ACTIVATION
#endif
	
#if USE_TR
		TR_Init();						//OUTPUT TRANSISTORS INITIALISATION
#endif

#if USE_ANA
	Analog_init();					//ANALOG READING INITIALISATION
	ADC_Timer_Config();
#endif

#if USE_SWITCH
	Switch_Init();
#endif

#if USE_INCREMENTAL
	Incremental_Init();
#endif

#if USE_SERIAL_NB
SN_READ();								//INITIALISALISATION AND READING OF RESISTORS FOR THE SERIAL NUMBER OF R5 ELB
#endif

  for (;;) { 

		}
}
 
 int main (void) {
 
  SystemClock_Config();
	
	HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
		
  TimeBase_Timer_Config ();
	SystemCoreClockUpdate();
 
  osKernelInitialize();                 // Initialize CMSIS-RTOS
  osThreadNew(app_main, NULL, NULL);    // Create application main thread
	osThreadSetPriority(app_main,osPriorityNormal);
  osKernelStart();                      // Start thread execution

  for (;;) {

  }
}

void Error_Handler(void)
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
