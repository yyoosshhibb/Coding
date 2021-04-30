#include "Analog_management.h"
static ADC_HandleTypeDef    AdcHandle;

static void ANA_def(void);

osThreadId_t id_task_Filtering;


//Declare ADC Inputs

  ADC_input_t ADC_1;
 	//ADC_input_t ADC_2;
 	//ADC_input_t ADC_3;
 	//ADC_input_t ADC_4;
	//ADC_input_t ADC_5;
 	//ADC_input_t ADC_6;


static uint32_t ADC1Buffer[ADCNb];

static uint16_t Filter_Buffer[ADCNb][Filter_AV_NB+1];

void Analog_init(){
	
	ANA_def();
	
  GPIO_InitTypeDef          GPIO_InitStruct;
  static DMA_HandleTypeDef  hdma_adc;
	
  /*##-1- Enable peripherals and GPIO Clocks #################################*/
  /* Enable GPIO clock */
	
//  __HAL_RCC_GPIOB_CLK_ENABLE();
//	__HAL_RCC_GPIOA_CLK_ENABLE();
//	__HAL_RCC_GPIOC_CLK_ENABLE();
	
  /* ADC1 Periph clock enable */
  __HAL_RCC_ADC1_CLK_ENABLE();
  /* Enable DMA2 clock */
  __HAL_RCC_DMA2_CLK_ENABLE(); 
  
  /*##-2- Configure peripheral GPIO ##########################################*/ 
  /* ADC3 Channel8 GPIO pin configuration */
  GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
	
	/*##-3- Configure Pin Numbers ##############################################*/
	  GPIO_InitStruct.Pin = ADC_1.Pin;// | ADC_2.Pin | ADC_3.Pin | ADC_4.Pin | ADC_5.Pin | ADC_6.Pin;	
  HAL_GPIO_Init(ADC_1.Port, &GPIO_InitStruct);

  
  /*##-4- Configure the DMA streams ##########################################*/
  /* Set the parameters to be configured */
  hdma_adc.Instance = ADC1_DMA_STREAM;
  
  hdma_adc.Init.Channel  = ADC1_DMA_CHANNEL;
  hdma_adc.Init.Direction = DMA_PERIPH_TO_MEMORY;
  hdma_adc.Init.PeriphInc = DMA_PINC_DISABLE;
  hdma_adc.Init.MemInc = DMA_MINC_ENABLE;
  hdma_adc.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
  hdma_adc.Init.MemDataAlignment = DMA_MDATAALIGN_WORD;
  hdma_adc.Init.Mode = DMA_CIRCULAR;
  hdma_adc.Init.Priority = DMA_PRIORITY_HIGH;
  hdma_adc.Init.FIFOMode = DMA_FIFOMODE_DISABLE;         
  hdma_adc.Init.FIFOThreshold = DMA_FIFO_THRESHOLD_HALFFULL;
  hdma_adc.Init.MemBurst = DMA_MBURST_SINGLE;
  hdma_adc.Init.PeriphBurst = DMA_PBURST_SINGLE; 

  HAL_DMA_Init(&hdma_adc);
    
	//IS_ADC_SAMPLING_DELAY(ADC_TWOSAMPLINGDELAY_5CYCLES);

  /*##-4- Configure the NVIC for DMA #########################################*/
  /* NVIC configuration for DMA transfer complete interrupt */
  HAL_NVIC_SetPriority(ADC1_DMA_IRQn, 5, 0);   
  HAL_NVIC_EnableIRQ(ADC1_DMA_IRQn);
	
	ADC_ChannelConfTypeDef sConfig;
	
	/*##-1- Configure the ADC peripheral #######################################*/
  AdcHandle.Instance = ADC1;
  
  AdcHandle.Init.ClockPrescaler = ADC_CLOCKPRESCALER_PCLK_DIV4;
  AdcHandle.Init.Resolution = ADC_RESOLUTION_12B;
  AdcHandle.Init.ScanConvMode = ENABLE;
  AdcHandle.Init.ContinuousConvMode = ENABLE;
  AdcHandle.Init.DiscontinuousConvMode = DISABLE;
  AdcHandle.Init.NbrOfDiscConversion = 1;
  AdcHandle.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  AdcHandle.Init.ExternalTrigConv = ADC_EXTERNALTRIGCONV_T1_CC1;
  AdcHandle.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  AdcHandle.Init.NbrOfConversion = ADCNb;
  AdcHandle.Init.DMAContinuousRequests = ENABLE;
  AdcHandle.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
      
  if(HAL_ADC_Init(&AdcHandle) != HAL_OK)
  {
    /* Initialization Error */
    Error_Handler(); 
  }	
	
	/*##-2- Configure ADC regular channel ######################################*/
  /* Note: Considering IT occurring after each number of size of              */
  /*       "uhADCxConvertedValue"  ADC conversions (IT by DMA end             */
  /*       of transfer), select sampling time and ADC clock with sufficient   */
  /*       duration to not create an overhead situation in IRQHandler.        */ 
  /* Note2: define manually a new rank affected to the adc channel            */
  /*       then ue the configurtion function to initialise the channel        */

  sConfig.SamplingTime = ADC_SAMPLETIME_56CYCLES;
  sConfig.Offset = 0;
	

	sConfig.Rank = 1;
  sConfig.Channel = ADC_1.ADC_channel;  
  HAL_ADC_ConfigChannel(&AdcHandle, &sConfig);
	
//	sConfig.Rank = 2;
//	sConfig.Channel = ADC_2.ADC_channel; 
//  HAL_ADC_ConfigChannel(&AdcHandle, &sConfig);
//
//	sConfig.Rank = 3;
//	sConfig.Channel = ADC_3.ADC_channel;  
//  HAL_ADC_ConfigChannel(&AdcHandle, &sConfig);
//	
//	sConfig.Rank = 4;
//	sConfig.Channel = ADC_4.ADC_channel;  
//  HAL_ADC_ConfigChannel(&AdcHandle, &sConfig);
//	
//	sConfig.Rank = 5;
//	sConfig.Channel = ADC_5.ADC_channel;  
//  HAL_ADC_ConfigChannel(&AdcHandle, &sConfig);
//	
//	sConfig.Rank = 6;
//	sConfig.Channel = ADC_6.ADC_channel;  
//  HAL_ADC_ConfigChannel(&AdcHandle, &sConfig);

	
	/*##-3- Start the conversion process and enable interrupt ##################*/
  /* Note: Considering IT occurring after each number of ADC conversions      */
  /*       (IT by DMA end of transfer), select sampling time and ADC clock    */
  /*       with sufficient duration to not create an overhead situation in    */
  /*        IRQHandler. */ 
__HAL_LINKDMA(&AdcHandle, DMA_Handle, hdma_adc);
 HAL_ADC_Start_DMA(&AdcHandle, (uint32_t*)&ADC1Buffer, ADCNb);

//Flags sending that says the analog inputs are configured. Used in the transistor tasks to start the current reading after te configuration//

 	osThreadFlagsSet(id_Task_LED01,FLAG_ANA_CONFIG_READY);
 	osThreadFlagsSet(id_Task_LED02,FLAG_ANA_CONFIG_READY);
 	osThreadFlagsSet(id_Task_LED03,FLAG_ANA_CONFIG_READY);
 	osThreadFlagsSet(id_Task_LED04,FLAG_ANA_CONFIG_READY);

}
void HAL_ADC_MspDeInit(ADC_HandleTypeDef *hadc){
  static DMA_HandleTypeDef  hdma_adc;
  
  /*##-1- Reset peripherals ##################################################*/
  __HAL_RCC_ADC_FORCE_RESET();
  __HAL_RCC_ADC_RELEASE_RESET();

  /*##-2- Disable peripherals and GPIO Clocks ################################*/
  /* De-initialize the ADC3 Channel8 GPIO pin */

  HAL_GPIO_DeInit(ADC_1.Port, ADC_1.Pin);
//	HAL_GPIO_DeInit(ADC_1.Port, ADC_2.Pin);
//	HAL_GPIO_DeInit(ADC_1.Port, ADC_3.Pin);
//	HAL_GPIO_DeInit(ADC_1.Port, ADC_4.Pin);
//	HAL_GPIO_DeInit(ADC_1.Port, ADC_5.Pin);
//	HAL_GPIO_DeInit(ADC_1.Port, ADC_6.Pin);


  /*##-3- Disable the DMA Streams ############################################*/
  /* De-Initialize the DMA Stream associate to transmission process */
  HAL_DMA_DeInit(&hdma_adc); 
    
  /*##-4- Disable the NVIC for DMA ###########################################*/
  HAL_NVIC_DisableIRQ(ADC1_DMA_IRQn);
}

  /*## In this function all the parameters for every ADC input will be defined
			 This includes the Range in mV, the type of convertion done, nd the associated factors ##*/
void ANA_def(){


	ADC_1.Pin = GPIO_PIN_1;
	ADC_1.Port = GPIOA;
	ADC_1.ADC_channel = ADC_CHANNEL_1;
	ADC_1.ADC_Value = (uint16_t*)&ADC1Buffer[0];
	ADC_1.Sensor_type = Linear;																				//Potentiometer to read
	ADC_1.Range_mV = 3300;
	ADC_1.Filtered_Value = (uint16_t*)&Filter_Buffer[0][Filter_AV_NB];
	ADC_1.Factor = 1.0f/33.0f;
	

//	ADC_2.Pin = GPIO_PIN_2;
//	ADC_2.Port = GPIOA;
//	ADC_2.ADC_channel = ADC_CHANNEL_2;
//	ADC_2.ADC_Value = (uint16_t*)&ADC1Buffer[1];
//	ADC_2.Sensor_type = Linear;
//	ADC_2.Range_mV = 5000;
//	ADC_2.Filtered_Value = (uint16_t*)&Filter_Buffer[1][Filter_AV_NB];
//	
//	ADC_3.Pin = GPIO_PIN_3;
//	ADC_3.Port = GPIOA;
//	ADC_3.ADC_channel = ADC_CHANNEL_3;
//	ADC_3.ADC_Value = (uint16_t*)&ADC1Buffer[2];
//	ADC_3.Sensor_type = Linear;
//	ADC_3.Range_mV = 5000;
//	ADC_3.Factor = TR_Water_Fan.dki;
//	ADC_3.offset_mV = TR_Water_Fan.Is0;
//	ADC_3.Filtered_Value = (uint16_t*)&Filter_Buffer[2][Filter_AV_NB];
//	
//	ADC_4.Pin = GPIO_PIN_5;
//	ADC_4.Port = GPIOA;
//	ADC_4.ADC_channel = ADC_CHANNEL_5;
//	ADC_4.ADC_Value = (uint16_t*)&ADC1Buffer[3];
//	ADC_4.Sensor_type = Linear;
//	ADC_4.Range_mV = 5000;
//	ADC_4.Factor = TR_IC_Fan.dki;
//	ADC_4.offset_mV = TR_IC_Fan.Is0;
//	ADC_4.Filtered_Value = (uint16_t*)&Filter_Buffer[3][Filter_AV_NB];
//	
//	ADC_5.Pin = GPIO_PIN_7;
//	ADC_5.Port = GPIOA;
//	ADC_5.ADC_channel = ADC_CHANNEL_7;
//	ADC_5.ADC_Value = (uint16_t*)&ADC1Buffer[4];
//	ADC_5.Sensor_type = Linear;
//	ADC_5.Range_mV = 5000;
//	ADC_5.Factor = TR_Starter.dki;
//	ADC_5.offset_mV = TR_Starter.Is0;
//	ADC_5.Filtered_Value = (uint16_t*)&Filter_Buffer[4][Filter_AV_NB];
//	
//	ADC_6.Pin = GPIO_PIN_1;
//	ADC_6.Port = GPIOA;
//	ADC_6.ADC_channel = ADC_CHANNEL_1;
//	ADC_6.ADC_Value = (uint16_t*)&ADC1Buffer[5];
//	ADC_6.Sensor_type = Linear;
//	ADC_6.Range_mV = 5000;
//	ADC_6.Factor = 0.05;						//ELB TEMPERATURE SENSOR
//	ADC_6.offset_mV = 750;
//	ADC_6.Filtered_Value = (uint16_t*)&Filter_Buffer[5][Filter_AV_NB];
}

void ADC1_DMA_IRQHandler(void)
{
  HAL_DMA_IRQHandler(AdcHandle.DMA_Handle);
}

void mV_conversion(ADC_input_t *ADC_in){
	
	ADC_in->Value_mV = ((uint32_t)*ADC_in->Filtered_Value*ADC_in->Range_mV)/4096;
	
}

void real_conversion(ADC_input_t *ADC_in){
	
		int i;
		float x0,y0,x1,y1,a,b;
		uint32_t LUT_NTC_V[PT100X_NB_PT]={0};
	  int16_t LUT_NTC[PT100X_NB_PT]={0};
	
	switch (ADC_in->Sensor_type){
	
		case Linear:
			ADC_in->Real_Value = ((((uint32_t)*ADC_in->Filtered_Value*ADC_in->Range_mV)/4096)-ADC_in->offset_mV)*ADC_in->Factor;
		break;
		
		case BTS50010:
			ADC_in->Real_Value = (((((float)*ADC_in->Filtered_Value*ADC_in->Range_mV)/4096)-ADC_in->offset_mV))*ADC_in->Factor;
		break;
		
		case PT100X:
			
		mV_conversion(ADC_in);

	  LUT_NTC_V[0] = 388;
		LUT_NTC_V[1] = 1075;
		LUT_NTC_V[2] = 1563;
		LUT_NTC_V[3] = 1932;
		LUT_NTC_V[4] = 2221;
		LUT_NTC_V[5] = 2454;
		LUT_NTC_V[6] = 2645;
		LUT_NTC_V[7] = 2804;
		LUT_NTC_V[8] = 2939;
		LUT_NTC_V[9] = 3054;
		LUT_NTC_V[10] = 3153;
		LUT_NTC_V[11] = 3198;
		
	  LUT_NTC[0] = -200;
		LUT_NTC[1] = -100;
		LUT_NTC[2] = 0;
		LUT_NTC[3] = 100;
		LUT_NTC[4] = 200;
		LUT_NTC[5] = 300;
		LUT_NTC[6] = 400;
		LUT_NTC[7] = 500;
		LUT_NTC[8] = 600;
		LUT_NTC[9] = 700;
		LUT_NTC[10] = 800;
		LUT_NTC[11] = 850;

				i=0;
			while(i<PT100X_NB_PT && LUT_NTC_V[i]<=ADC_in->Value_mV) i++;
			if(i==0){
				x0 = LUT_NTC_V[0];
				y0 = LUT_NTC[0];
				x1 = LUT_NTC_V[1];
				y1 = LUT_NTC[1];
			}
			else if(i==PT100X_NB_PT){
				x0 = LUT_NTC_V[PT100X_NB_PT-2];
				y0 = LUT_NTC[PT100X_NB_PT-2];
				x1 = LUT_NTC_V[PT100X_NB_PT-1];
				y1 = LUT_NTC[PT100X_NB_PT-1];
			}
			else{
				x0 = LUT_NTC_V[i-1];
				y0 = LUT_NTC[i-1];
				x1 = LUT_NTC_V[i];
				y1 = LUT_NTC[i];	
			}
				
			a = (y1-y0)/(x1-x0);
			b = y0 - a*x0;	
			ADC_in->Real_Value = a*ADC_in->Value_mV + b;	

		break;
		
	}
	
}

void ADC_factor(){
	
 mV_conversion(&ADC_1);
// mV_conversion(&ADC_2);
// real_conversion(&ADC_3);
// real_conversion(&ADC_4);
// real_conversion(&ADC_5);
// real_conversion(&ADC_6);				

}

void TASK_Filtering(void* argument){
	
	uint8_t msgg, priority;
	int j=0;
	uint32_t Temp;
	
	while (1){
		
		osThreadFlagsWait(FLAG_ANA_FILTER,osFlagsWaitAll,osWaitForever);
		osThreadFlagsClear(FLAG_ANA_FILTER);
		
		for(int i=0;i<ADCNb;i++){
			
			Filter_Buffer[i][j] = ADC1Buffer[i];
			Temp = 0;
			//Calculating Average value over Filter_AV_NB Samples
			for (int k=0;k<Filter_AV_NB;k++){
				Temp += Filter_Buffer[i][k];
			}
			
			Filter_Buffer[i][Filter_AV_NB] = Temp/Filter_AV_NB;
		}	
		
		j++;
		if(j>=Filter_AV_NB){
			j=0;
		}
	}
}