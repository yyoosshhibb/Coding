#include "CAN_LL_management.h"

uint8_t busnum = 0;

 #if USE_CONTROLLED_CAN_RESISTOR
 #define CAN1_RES_ClkEnable __GPIOG_CLK_ENABLE
 #define CAN1_RES_PORT GPIOG
 #define CAN1_RES_PIN GPIO_PIN_11
 
 #define CAN2_RES_ClkEnable __GPIOG_CLK_ENABLE
 #define CAN2_RES_PORT GPIOG
 #define CAN2_RES_PIN GPIO_PIN_7
 #endif

//#define CONF_CST_CAN1_CONF_PATH "M0:\\Configs\\CanConfig.bin"
//#define CONF_CST_CAN2_CONF_PATH "M0:\\Configs\\CanConfig2.bin"


/** Prototypes */
void CAN_CheckError1(CAN_HandleTypeDef* hcan);

CAN_HandleTypeDef hCAN1;
CAN_HandleTypeDef hCAN2;

CAN_TxHeaderTypeDef TxHeader;
CAN_RxHeaderTypeDef RxHeader;

CAN_BusInfo_t CAN1_BusInfo;
CAN_BusInfo_t CAN2_BusInfo; 

//CAN1
osThreadId_t id_task_CAN1_TX;
osThreadId_t id_task_CAN1_RX;
osMessageQueueId_t CAN1_Q;
osMessageQueueId_t CAN1_RX_Q;
osMutexId_t CAN1_mutex;

//CAN2
osThreadId_t id_task_CAN2_TX;
osThreadId_t id_task_CAN2_RX;
osMessageQueueId_t CAN2_Q;
osMessageQueueId_t CAN2_RX_Q;
osMutexId_t CAN2_mutex;

uint8_t overflow=0;  //security to allow can reboot
 Math_factors_t test_factors;



#ifdef DEBUG_MODE
uint8_t GenCANConf(void){
	CAN_CONFIG_CST testcanconf;
	
	testcanconf.base_address = 0x100;
	testcanconf.speed = 0;
	testcanconf.isMSB = 0;
	testcanconf.Diag_disp_src = 0;
	testcanconf.Diag_Disp_trhs = 50;
	
	FILE* f;
	f = fopen(CONF_CST_CAN1_CONF_PATH,"r+b");
	if(f==NULL)
		f = fopen(CONF_CST_CAN1_CONF_PATH,"w+b");
	if(f==NULL)
		return 0;

	fseek(f,0,SEEK_SET);
	uint32_t xap = CONF_CST_FILE_HEADER;
	fwrite(&xap,4,1,f);
	
	char cetificat[16];
	memcpy(cetificat,CONF_CST_XAP_CERTIFICATION_DEBUG,14);
	fwrite(cetificat,1,16,f);	

	fwrite(&testcanconf,sizeof(CAN_CONFIG_CST),1,f);
	fclose(f);	
	return 1;
	
}
#endif

/** load emmc end*/



void CAN_Config(void){
	
	CAN_TX_def();
	CAN_RX_def();
	
	GPIO_InitTypeDef   GPIO_InitStruct;
	
	memset(&CAN1_BusInfo,0,sizeof(CAN_BusInfo_t));
	memset(&CAN2_BusInfo,0,sizeof(CAN_BusInfo_t));
	
	//clock activation

	__CAN1_CLK_ENABLE(); //CAN1 clock need to be always activated even if running on CAN2 only
	__GPIOA_CLK_ENABLE();


#if USE_CAN2
	__CAN2_CLK_ENABLE();
	__GPIOB_CLK_ENABLE();
#endif
	
	//gpios
	GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	
#if USE_CAN1
	GPIO_InitStruct.Pin = CAN1_TX_PIN | CAN1_RX_PIN;
	GPIO_InitStruct.Alternate =  GPIO_AF9_CAN1;
	HAL_GPIO_Init(CAN1_TX_PORT, &GPIO_InitStruct);
#endif

#if USE_CAN2		
	GPIO_InitStruct.Pin = CAN2_TX_PIN | CAN2_RX_PIN;
	GPIO_InitStruct.Alternate =  GPIO_AF9_CAN2;
	HAL_GPIO_Init(CAN2_TX_PORT, &GPIO_InitStruct);	
#endif	
	
 #if USE_CONTROLLED_CAN_RESISTOR
	CAN1_RES_ClkEnable();
	CAN2_RES_ClkEnable();
	
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Speed = GPIO_SPEED_MEDIUM;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	
	GPIO_InitStruct.Pin = CAN1_RES_PIN;
	HAL_GPIO_Init(CAN1_RES_PORT, &GPIO_InitStruct);	
	HAL_GPIO_WritePin(CAN1_RES_PORT,CAN1_RES_PIN,0);
	
	GPIO_InitStruct.Pin = CAN2_RES_PIN;
	HAL_GPIO_Init(CAN2_RES_PORT, &GPIO_InitStruct);
	HAL_GPIO_WritePin(CAN2_RES_PORT,CAN2_RES_PIN,0);
	
#endif


#if USE_CAN1
	
	//init CAN1	
	hCAN1.Instance = CAN1;
	
	hCAN1.Init.TimeTriggeredMode = DISABLE;
	hCAN1.Init.AutoBusOff = ENABLE;
	hCAN1.Init.AutoWakeUp = DISABLE;
	hCAN1.Init.AutoRetransmission = ENABLE;
	hCAN1.Init.ReceiveFifoLocked = DISABLE;
	hCAN1.Init.TransmitFifoPriority = ENABLE; //fifo priority
	hCAN1.Init.Mode = CAN_MODE_NORMAL;
	
	#if USE_CONTROLLED_CAN_RESISTOR	
	CAN1_set_TerminationResistor(CAN1_ConfCst.CAN_Resistor);
	#endif
	

	//source = 42mhz, 75% sampling point
	hCAN1.Init.SyncJumpWidth = CAN_SJW_1TQ;
	switch(CAN1speed){
		case S_1Mb:		
			hCAN1.Init.TimeSeg1 = CAN_BS1_15TQ;
			hCAN1.Init.TimeSeg2 = CAN_BS2_5TQ;
			hCAN1.Init.Prescaler = 2;
			break;
		case S_500kb:
			hCAN1.Init.TimeSeg1 = CAN_BS1_8TQ;
			hCAN1.Init.TimeSeg2 = CAN_BS2_3TQ;
			hCAN1.Init.Prescaler = 7;
			break;
		case S_250kb:
			hCAN1.Init.TimeSeg1 = CAN_BS1_8TQ;
			hCAN1.Init.TimeSeg2 = CAN_BS2_3TQ;
			hCAN1.Init.Prescaler = 14;
			break;
		default: //1Mb
			hCAN1.Init.TimeSeg1 = CAN_BS1_15TQ;
			hCAN1.Init.TimeSeg2 = CAN_BS2_5TQ;
			hCAN1.Init.Prescaler = 2;
			break;
	}

  if (HAL_CAN_Init(&hCAN1) != HAL_OK)
  {
    /* Initialization Error */
    Error_Handler();
  }
	
	if (HAL_CAN_Start(&hCAN1) != HAL_OK)
  {
    /* Start Error */
    Error_Handler();
  }
	
#endif

#if USE_CAN2		
	//init CAN2
	hCAN2.Instance = CAN2;

	hCAN2.Init.TimeTriggeredMode = DISABLE;
	hCAN2.Init.AutoBusOff = DISABLE;
	hCAN2.Init.AutoWakeUp = DISABLE;
	hCAN2.Init.AutoRetransmission = ENABLE;
	hCAN2.Init.ReceiveFifoLocked = DISABLE;
	hCAN2.Init.TransmitFifoPriority = DISABLE; //fifo priority
	hCAN2.Init.Mode = CAN_MODE_NORMAL;

	#if USE_CONTROLLED_CAN_RESISTOR	
	CAN2_set_TerminationResistor(CAN2_ConfCst.CAN_Resistor);
	#endif	
	
	//source = 42mhz, 75% sampling point
	hCAN2.Init.SyncJumpWidth = CAN_SJW_1TQ;
	switch(CAN2speed){
		case S_1Mb:		
			hCAN2.Init.TimeSeg1 = CAN_BS1_15TQ;
			hCAN2.Init.TimeSeg2 = CAN_BS2_5TQ;
			hCAN2.Init.Prescaler = 2;
			break;
		case S_500kb:
			hCAN2.Init.TimeSeg1 = CAN_BS1_8TQ;
			hCAN2.Init.TimeSeg2 = CAN_BS2_3TQ;
			hCAN2.Init.Prescaler = 7;
			break;
		case S_250kb:
			hCAN2.Init.TimeSeg1 = CAN_BS1_8TQ;
			hCAN2.Init.TimeSeg2 = CAN_BS2_3TQ;
			hCAN2.Init.Prescaler = 14;
			break;
		default: //1Mb
			hCAN2.Init.TimeSeg1 = CAN_BS1_15TQ;
			hCAN2.Init.TimeSeg2 = CAN_BS2_5TQ;
			hCAN2.Init.Prescaler = 2;
			break;
	}

  if (HAL_CAN_Init(&hCAN2) != HAL_OK)
  {
    /* Initialization Error */
    Error_Handler();
  }
	
	if (HAL_CAN_Start(&hCAN2) != HAL_OK)
  {
    /* Start Error */
    Error_Handler();
  }

#endif

#if USE_CAN1
	//NVIC Priority
	HAL_NVIC_SetPriority(CAN1_RX0_IRQn, 4, 0);
	HAL_NVIC_SetPriority(CAN1_RX1_IRQn, 4, 0);
	HAL_NVIC_SetPriority(CAN1_TX_IRQn, 4, 0);
	HAL_NVIC_SetPriority(CAN1_SCE_IRQn, 10, 0);

	HAL_NVIC_EnableIRQ(CAN1_RX0_IRQn);
	HAL_NVIC_EnableIRQ(CAN1_RX1_IRQn);
	//HAL_NVIC_EnableIRQ(CAN1_TX_IRQn);
	HAL_NVIC_EnableIRQ(CAN1_SCE_IRQn);
#endif
	

#if USE_CAN2	
	HAL_NVIC_SetPriority(CAN2_RX0_IRQn, 4, 0);
	HAL_NVIC_SetPriority(CAN2_RX1_IRQn, 4, 0);
	HAL_NVIC_SetPriority(CAN2_TX_IRQn, 4, 0);
	HAL_NVIC_SetPriority(CAN2_SCE_IRQn, 10, 0);
	
	HAL_NVIC_EnableIRQ(CAN2_RX0_IRQn);
	HAL_NVIC_EnableIRQ(CAN2_RX1_IRQn);
	//HAL_NVIC_EnableIRQ(CAN2_TX_IRQn);
	HAL_NVIC_EnableIRQ(CAN2_SCE_IRQn);
#endif	
	
	//enable It
	/* Transmit complete interrupt */
#if USE_CAN1
	__HAL_CAN_ENABLE_IT(&hCAN1,CAN_IER_TMEIE);
#endif

#if USE_CAN2		
	__HAL_CAN_ENABLE_IT(&hCAN2,CAN_IER_TMEIE);
#endif

	/* error interrupt */
#if USE_CAN1
  __HAL_CAN_ENABLE_IT(&hCAN1, CAN_IT_LAST_ERROR_CODE);
	__HAL_CAN_ENABLE_IT(&hCAN1, CAN_IT_ERROR);
#endif

#if USE_CAN2	
  __HAL_CAN_ENABLE_IT(&hCAN2, CAN_IT_LAST_ERROR_CODE);
	__HAL_CAN_ENABLE_IT(&hCAN2, CAN_IT_ERROR);	
#endif


#if USE_CAN1
	osThreadFlagsSet(id_task_CAN1_TX,FLAG_CANTX_CONFIG_READY);
#endif
#if USE_CAN2
	osThreadFlagsSet(id_task_CAN2_TX,FLAG_CANTX_CONFIG_READY);
#endif
}

#define CAN2_START_FILTER 23 //46 id CAN1, 10 id CAN2


void CAN_RX_Init(void){
	
	CAN_FilterTypeDef  sFilterConfig;
	
	//init filter
  sFilterConfig.FilterBank = 0;
  sFilterConfig.FilterMode = CAN_FILTERMODE_IDMASK;
  sFilterConfig.FilterScale = CAN_FILTERSCALE_32BIT;
  sFilterConfig.FilterIdHigh = 0x0000;
  sFilterConfig.FilterIdLow = 0x0000;
  sFilterConfig.FilterMaskIdHigh = 0x0000;
  sFilterConfig.FilterMaskIdLow = 0x0000;
  sFilterConfig.FilterActivation = ENABLE;
  sFilterConfig.SlaveStartFilterBank = 13;

	#if USE_CAN1
	sFilterConfig.FilterFIFOAssignment = CAN_FILTER_FIFO0;	
		  if (HAL_CAN_ConfigFilter(&hCAN1, &sFilterConfig) != HAL_OK)
  {
    /* Filter configuration Error */
    Error_Handler();
  }
	sFilterConfig.FilterBank = 1;
		sFilterConfig.FilterFIFOAssignment = CAN_FILTER_FIFO1;
		  if (HAL_CAN_ConfigFilter(&hCAN1, &sFilterConfig) != HAL_OK)
  {
    /* Filter configuration Error */
    Error_Handler();
  }
	
	//enable reception interruptions	
	__HAL_CAN_ENABLE_IT(&hCAN1, CAN_IT_RX_FIFO0_MSG_PENDING);
	__HAL_CAN_ENABLE_IT(&hCAN1, CAN_IT_RX_FIFO1_MSG_PENDING);
	#endif
	
  #if USE_CAN2
	
			#if (USE_CAN1 == 0)
	hCAN2.Instance = CAN1; //needed to use the CAN2 without the CAN1

	sFilterConfig.FilterFIFOAssignment = CAN_FILTER_FIFO0;
	  if (HAL_CAN_ConfigFilter(&hCAN2, &sFilterConfig) != HAL_OK)
  {
    /* Filter configuration Error */
    Error_Handler();
  }
	sFilterConfig.FilterBank = 1;
  sFilterConfig.FilterFIFOAssignment = CAN_FILTER_FIFO1;
		  if (HAL_CAN_ConfigFilter(&hCAN2, &sFilterConfig) != HAL_OK)
  {
    /* Filter configuration Error */
    Error_Handler();
  }
	
	hCAN2.Instance = CAN2; //important to enable IT on CAN2
		#endif
		
		#if USE_CAN1
	sFilterConfig.FilterBank = 14;
	sFilterConfig.FilterFIFOAssignment = CAN_FILTER_FIFO0;
	  if (HAL_CAN_ConfigFilter(&hCAN2, &sFilterConfig) != HAL_OK)
  {
    /* Filter configuration Error */
    Error_Handler();
  }
	sFilterConfig.FilterBank = 15;
  sFilterConfig.FilterFIFOAssignment = CAN_FILTER_FIFO1;
		  if (HAL_CAN_ConfigFilter(&hCAN2, &sFilterConfig) != HAL_OK)
  {
    /* Filter configuration Error */
    Error_Handler();
  }
	
		#endif
	
	//enable reception interruptions
	__HAL_CAN_ENABLE_IT(&hCAN2, CAN_IT_RX_FIFO0_MSG_PENDING);
	__HAL_CAN_ENABLE_IT(&hCAN2, CAN_IT_RX_FIFO1_MSG_PENDING);
	#endif
	
	#if USE_CAN1
	osThreadFlagsSet(id_task_CAN1_RX,FLAG_CANRX_CONFIG_READY);
#endif

	#if USE_CAN2
	osThreadFlagsSet(id_task_CAN2_RX,FLAG_CANRX_CONFIG_READY);
#endif
}


void CAN_Disable_RX(void){
		//disable CAN reception
	
	#if USE_CAN1
		__HAL_CAN_DISABLE_IT(&hCAN1, CAN_IT_RX_FIFO0_MSG_PENDING);
		__HAL_CAN_DISABLE_IT(&hCAN1, CAN_IT_RX_FIFO1_MSG_PENDING);
	#endif


	#if USE_CAN2	
		__HAL_CAN_DISABLE_IT(&hCAN2, CAN_IT_RX_FIFO0_MSG_PENDING);
		__HAL_CAN_DISABLE_IT(&hCAN2, CAN_IT_RX_FIFO1_MSG_PENDING);
	#endif	

}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////CAN TRANSMIT FUNCTION////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void CAN_Transmit(CAN_HandleTypeDef* hCAN, uint32_t CAN_ID){
	
	CAN_TxHeaderTypeDef HTX;
	
	HTX.DLC = 8;
	HTX.RTR = CAN_RTR_DATA;
	HTX.TransmitGlobalTime = DISABLE;
	
	if (CAN_ID < 0xFFF){
	HTX.IDE = CAN_ID_STD;	
	HTX.StdId = CAN_ID;
	}
	else if (CAN_ID > 0xFFF){
	HTX.IDE = CAN_ID_EXT;	
	HTX.ExtId = CAN_ID;		
	}
	
	CanTX_Frame_t CanMsg;

	static uint32_t  transmitmailbox = 5;
	
	uint64_t Temp_val = 0;
	
	int i;
	 
	for(i=0;i<DATANb;i++){
		if(((HTX.IDE == CAN_ID_STD)&&(CANdata[i]->CAN_id == HTX.StdId))||((HTX.IDE == CAN_ID_EXT)&&(CANdata[i]->CAN_id == HTX.ExtId))){
			
			if(((CANdata[i]->Endianness) == Intel)&&(CANdata[i]->CAN_length_dec>8)){
		
		uint16_t temp = (*CANdata[i]->CAN_data);
		(*CANdata[i]->CAN_data) = (((*CANdata[i]->CAN_data)>>((CANdata[i]->CAN_length_dec)-8))&0x00FF);
		(*CANdata[i]->CAN_data) |= ((temp<<8)&CANdata[i]->CAN_length);
		
			}
	
	Temp_val |= ((uint64_t)((*CANdata[i]->CAN_data)&CANdata[i]->CAN_length)<<(63-CANdata[i]->CAN_startbit-(CANdata[i]->CAN_length_dec-1)));
		
		}
	}
	
	CanMsg.Data[7] = (uint8_t)(Temp_val);
	CanMsg.Data[6] = (uint8_t)(Temp_val>>8);
	CanMsg.Data[5] = (uint8_t)(Temp_val>>16);
	CanMsg.Data[4] = (uint8_t)(Temp_val>>24);
	CanMsg.Data[3] = (uint8_t)(Temp_val>>32);
	CanMsg.Data[2] = (uint8_t)(Temp_val>>40);
	CanMsg.Data[1] = (uint8_t)(Temp_val>>48);
	CanMsg.Data[0] = (uint8_t)(Temp_val>>56);

  // Select one empty transmit mailbox //
  if ((hCAN->Instance->TSR&CAN_TSR_TME0) == CAN_TSR_TME0)
  {
    transmitmailbox = 0;
  }
  else if ((hCAN->Instance->TSR&CAN_TSR_TME1) == CAN_TSR_TME1)
  {
    transmitmailbox = 1;
  }
	else if ((hCAN->Instance->TSR&CAN_TSR_TME2) == CAN_TSR_TME2)
  {
    transmitmailbox = 2;
  }
  else
  {
    transmitmailbox =3;
		overflow++;
		if (overflow >= 50){
		SET_BIT(hCAN->Instance->TSR, CAN_TSR_ABRQ0);
		SET_BIT(hCAN->Instance->TSR, CAN_TSR_ABRQ1);
		SET_BIT(hCAN->Instance->TSR, CAN_TSR_ABRQ2);
			HAL_CAN_Stop(hCAN);
			HAL_CAN_Start(hCAN);
		}
  }

  if (transmitmailbox != 3)
  {
	overflow = 0;
		if (hCAN->Instance==CAN1){
		osMutexAcquire(CAN1_mutex,osWaitForever);
	}
	
		if (hCAN->Instance==CAN2){
		osMutexAcquire(CAN2_mutex,osWaitForever);
	}
		if (HAL_CAN_AddTxMessage(hCAN, &HTX, CanMsg.Data, &transmitmailbox) != HAL_OK)
 		{     
			/* Transmission request Error */			
				HAL_CAN_Stop(hCAN);
				HAL_CAN_Start(hCAN); 
		}
		while (HAL_CAN_IsTxMessagePending(hCAN, transmitmailbox) == 1){
			osDelay(TX_Delay);
			break;
		}
  }
		if (hCAN->Instance==CAN1){
		osMutexRelease(CAN1_mutex);
	}
	
		if (hCAN->Instance==CAN2){
		osMutexRelease(CAN2_mutex);
	}
}


void CAN_ReTransmit(CAN_HandleTypeDef *hcan, CAN_TxHeaderTypeDef HTX, CanRX_Frame_t CAN_RX_Frame){
	
	CanTX_Frame_t CanMsg;
	
	CanMsg.TXheader = &HTX;
	
static	uint32_t transmitmailbox;
	
	CanMsg.Data[7] = (uint8_t)(CAN_RX_Frame.Data);
	CanMsg.Data[6] = (uint8_t)(CAN_RX_Frame.Data>>8);
	CanMsg.Data[5] = (uint8_t)(CAN_RX_Frame.Data>>16);
	CanMsg.Data[4] = (uint8_t)(CAN_RX_Frame.Data>>24);
	CanMsg.Data[3] = (uint8_t)(CAN_RX_Frame.Data>>32);
	CanMsg.Data[2] = (uint8_t)(CAN_RX_Frame.Data>>40);
	CanMsg.Data[1] = (uint8_t)(CAN_RX_Frame.Data>>48);
	CanMsg.Data[0] = (uint8_t)(CAN_RX_Frame.Data>>56);
	
	if ((hcan->Instance->TSR&CAN_TSR_TME0) == CAN_TSR_TME0)
  {
    transmitmailbox = 0;
  }
  else if ((hcan->Instance->TSR&CAN_TSR_TME1) == CAN_TSR_TME1)
  {
    transmitmailbox = 1;
  }
	else if ((hcan->Instance->TSR&CAN_TSR_TME2) == CAN_TSR_TME2)
  {
    transmitmailbox = 2;
  }
  else
  {
    transmitmailbox = 3;
	}

  if (transmitmailbox != 3){

		if (HAL_CAN_AddTxMessage(hcan, CanMsg.TXheader, CanMsg.Data, &transmitmailbox) != HAL_OK)
 		{     
			/* Transmission request Error */			
				HAL_CAN_Stop(hcan);
				HAL_CAN_Start(hcan); 
		}
		while (HAL_CAN_IsTxMessagePending(hcan, transmitmailbox) == 1){
			osDelay(TX_Delay);
			break;
		}
	}
}

void CAN_ReTransmit_Math(CAN_HandleTypeDef *hcan, CAN_TxHeaderTypeDef HTX, CanRX_Frame_t CAN_RX_Frame, CAN_data_RX_t Can_Data, Math_factors_t Math_factors){
	
	static	uint32_t transmitmailbox;
	
	CAN_data_TX_t TX_Frame;
	
	TX_Frame.CAN_length = Can_Data.CAN_length_dec;
	TX_Frame.CAN_startbit = Can_Data.CAN_startbit;

	uint64_t Temp_val;
	uint8_t Temp_buffer[8];
	
	Can_Data.CAN_data = (Can_Data.CAN_data * Math_factors.factor + Math_factors.offset) & Can_Data.CAN_length;
	
	Temp_val = (CAN_RX_Frame.Data & (uint64_t)~((uint64_t)Can_Data.CAN_length<<(63-Can_Data.CAN_startbit-(Can_Data.CAN_length_dec-1))));
	
		if((Can_Data.Endianness == Intel)&&(Can_Data.CAN_length_dec>8)){
		
		uint16_t temp = Can_Data.CAN_data;
		Can_Data.CAN_data = ((Can_Data.CAN_data>>(Can_Data.CAN_length_dec-8))&0x00FF);
		Can_Data.CAN_data |= ((temp<<8)&Can_Data.CAN_length);
		
	}
	
	Temp_val |= ((uint64_t)Can_Data.CAN_data<<(63-Can_Data.CAN_startbit-(Can_Data.CAN_length_dec-1)));
	
	Temp_buffer[7] = (uint8_t)(Temp_val);
	Temp_buffer[6] = (uint8_t)(Temp_val>>8);
	Temp_buffer[5] = (uint8_t)(Temp_val>>16);
	Temp_buffer[4] = (uint8_t)(Temp_val>>24);
	Temp_buffer[3] = (uint8_t)(Temp_val>>32);
	Temp_buffer[2] = (uint8_t)(Temp_val>>40);
	Temp_buffer[1] = (uint8_t)(Temp_val>>48);
	Temp_buffer[0] = (uint8_t)(Temp_val>>56);
	
		if ((hcan->Instance->TSR&CAN_TSR_TME0) == CAN_TSR_TME0)
  {
    transmitmailbox = 0;
  }
  else if ((hcan->Instance->TSR&CAN_TSR_TME1) == CAN_TSR_TME1)
  {
    transmitmailbox = 1;
  }
	else if ((hcan->Instance->TSR&CAN_TSR_TME2) == CAN_TSR_TME2)
  {
    transmitmailbox = 2;
  }
  else
  {
    transmitmailbox = 3;
	}

  if (transmitmailbox != 3){

		if (HAL_CAN_AddTxMessage(hcan, &HTX, Temp_buffer, &transmitmailbox) != HAL_OK)
 		{     
			/* Transmission request Error */			
				HAL_CAN_Stop(hcan);
				HAL_CAN_Start(hcan); 
		}
		while (HAL_CAN_IsTxMessagePending(hcan, transmitmailbox) == 1){
			osDelay(TX_Delay);
			break;
		}
	}
}

void TASK_CAN1_RX(){
	
uint8_t priority;
CanRX_Queue_t Rxbuff;
int i,j,k;

osThreadFlagsWait(FLAG_CANRX_CONFIG_READY,osFlagsWaitAll,osWaitForever);
	
#ifdef HW_ELB
	osDelayUntil(CAN_RX_WAIT*100);
	osMessageQueueReset(CAN1_RX_Q);
#endif

	while(1){
		
		osMessageQueueGet(CAN1_RX_Q,&Rxbuff,&priority,osWaitForever);

#ifdef HW_ELB		
	if(Rxbuff.RXheader.StdId == Water_Fan.CAN_id)
			CAN_RX_Delay = 0;
#endif
#ifdef HW_R5_ELB		
	if(Rxbuff.RXheader.StdId == Water_Fan_R5.CAN_id)
			CAN_RX_Delay = 0;
#endif


	//checking the data and affecting the value, should be made in a task with a message queue not in interrupt
		for(i=0;i<RX1_FRAME_NB;i++){
			if((Rxbuff.RXheader.StdId==CAN1_RX_bank[i].CAN_Id)&&((Rxbuff.RXheader.IDE==CAN_ID_STD)||((Rxbuff.RXheader.ExtId==CAN1_RX_bank[i].CAN_Id))&&(Rxbuff.RXheader.IDE==CAN_ID_EXT))){
				CAN1_RX_bank[i].Data = 0;
				CAN1_RX_bank[i].Data |= Rxbuff.Data[7];
				CAN1_RX_bank[i].Data |= (uint16_t)Rxbuff.Data[6]<<8;
				CAN1_RX_bank[i].Data |= (uint32_t)Rxbuff.Data[5]<<16;
				CAN1_RX_bank[i].Data |= (uint32_t)Rxbuff.Data[4]<<24;
				CAN1_RX_bank[i].Data |= (uint64_t)Rxbuff.Data[3]<<32;
				CAN1_RX_bank[i].Data |= (uint64_t)Rxbuff.Data[2]<<40;
				CAN1_RX_bank[i].Data |= (uint64_t)Rxbuff.Data[1]<<48;
				CAN1_RX_bank[i].Data |= (uint64_t)Rxbuff.Data[0]<<56;			

				for(k=0;k<RX1_DATA_NB;k++){
					if((CAN1_data_RX[k]->CAN_id == CAN1_RX_bank[i].CAN_Id)){
				
						(CAN1_data_RX[k]->CAN_data) = (uint16_t)(((uint64_t)(CAN1_RX_bank[i].Data)>>(63-CAN1_data_RX[k]->CAN_startbit-(CAN1_data_RX[k]->CAN_length_dec-1))) & ((uint64_t)(CAN1_data_RX[k]->CAN_length)));
						
						if((CAN1_data_RX[k]->Endianness == Intel)&&(CAN1_data_RX[k]->CAN_length_dec>8)){
							
							uint16_t temp = CAN1_data_RX[i]->CAN_data;
							CAN1_data_RX[k]->CAN_data = ((CAN1_data_RX[k]->CAN_data>>(CAN1_data_RX[k]->CAN_length_dec-8))&0x00FF);
							CAN1_data_RX[k]->CAN_data |= ((temp<<8)&CAN1_data_RX[k]->CAN_length);
							
						}
					}
				}
			}
		}
	#if CAN1_FULL_RETRANSMIT
			CAN_TxHeaderTypeDef TX_temp;
			
			TX_temp.StdId = Rxbuff.RXheader.StdId;
			TX_temp.DLC = Rxbuff.RXheader.DLC;
			TX_temp.IDE = Rxbuff.RXheader.IDE;
			TX_temp.ExtId = Rxbuff.RXheader.ExtId;
			TX_temp.RTR = Rxbuff.RXheader.RTR;
			TX_temp.TransmitGlobalTime = DISABLE;
			
			uint32_t transmitmailbox = 0;

			// Select one empty transmit mailbox //
		if ((hCAN2.Instance->TSR&CAN_TSR_TME0) == CAN_TSR_TME0)
		{
			transmitmailbox = 0;
		}
		else if ((hCAN2.Instance->TSR&CAN_TSR_TME1) == CAN_TSR_TME1)
		{
			transmitmailbox = 1;
		}
		else if ((hCAN2.Instance->TSR&CAN_TSR_TME2) == CAN_TSR_TME2)
		{
			transmitmailbox = 2;
		}
		else
		{
			transmitmailbox =3;
			overflow++;
			if (overflow >= 50){
			SET_BIT(hCAN2.Instance->TSR, CAN_TSR_ABRQ0);
			SET_BIT(hCAN2.Instance->TSR, CAN_TSR_ABRQ1);
			SET_BIT(hCAN2.Instance->TSR, CAN_TSR_ABRQ2);
				HAL_CAN_Stop(&hCAN2);
				HAL_CAN_Start(&hCAN2);
			}
		}

		if (transmitmailbox != 3)
		{
		overflow = 0;
			osMutexAcquire(CAN2_mutex,osWaitForever);
			if (HAL_CAN_AddTxMessage(&hCAN2, &TX_temp, Rxbuff.Data, &transmitmailbox) != HAL_OK)
			{     
				/* Transmission request Error */			
				HAL_CAN_Stop(&hCAN2);
				HAL_CAN_Start(&hCAN2); 
			}
			int a=0;
			while (HAL_CAN_IsTxMessagePending(&hCAN2, transmitmailbox) == 1){
				osDelay(TX_Delay);
				break;
			}
		}
			osMutexRelease(CAN2_mutex);
	#endif
		
		#if CAN1_FILTER_RETRANSMIT
			CAN_TxHeaderTypeDef TX_temp1;
		for(i=0;i<4;i++){
		if((Rxbuff.RXheader.StdId==CAN1_FILTER_TR_bank[i])&&((Rxbuff.RXheader.IDE==CAN_ID_STD)||((Rxbuff.RXheader.ExtId==CAN1_FILTER_TR_bank[i]))&&(Rxbuff.RXheader.IDE==CAN_ID_EXT))){
			
			TX_temp1.StdId = Rxbuff.RXheader.StdId;
			TX_temp1.DLC = Rxbuff.RXheader.DLC;
			TX_temp1.IDE = Rxbuff.RXheader.IDE;
			TX_temp1.ExtId = Rxbuff.RXheader.ExtId;
			TX_temp1.RTR = Rxbuff.RXheader.RTR;
			
			uint32_t transmitmailbox = 0;
			
			// Select one empty transmit mailbox //
		if ((hCAN2.Instance->TSR&CAN_TSR_TME0) == CAN_TSR_TME0)
		{
			transmitmailbox = 0;
		}
		else if ((hCAN2.Instance->TSR&CAN_TSR_TME1) == CAN_TSR_TME1)
		{
			transmitmailbox = 1;
		}
		else if ((hCAN2.Instance->TSR&CAN_TSR_TME2) == CAN_TSR_TME2)
		{
			transmitmailbox = 2;
		}
		else
		{
			transmitmailbox =3;
			overflow++;
			if (overflow >= 10){
			SET_BIT(hCAN2.Instance->TSR, CAN_TSR_ABRQ0);
			SET_BIT(hCAN2.Instance->TSR, CAN_TSR_ABRQ1);
			SET_BIT(hCAN2.Instance->TSR, CAN_TSR_ABRQ2);
				HAL_CAN_Stop(&hCAN2);
				HAL_CAN_Start(&hCAN2);
			}
		}

		if (transmitmailbox != 3)
		{
			overflow = 0;
			osMutexAcquire(CAN2_mutex,osWaitForever);
			if (HAL_CAN_AddTxMessage(&hCAN2, &TX_temp1, Rxbuff.Data, &transmitmailbox) != HAL_OK)
			{     
				/* Transmission request Error */			
				HAL_CAN_Stop(&hCAN2);
				HAL_CAN_Start(&hCAN2); 
			}
			else{
			while (HAL_CAN_IsTxMessagePending(&hCAN2, transmitmailbox) == 1){
				osDelay(TX_Delay);
				break;
			}
		}
		}
			osMutexRelease(CAN2_mutex);
		
	}
}
		#endif
	}
}
void TASK_CAN2_RX(){
	
uint8_t priority;
CanRX_Queue_t Rxbuff;
int i,j,k;

osThreadFlagsWait(FLAG_CANRX_CONFIG_READY,osFlagsWaitAll,osWaitForever);

while(1){
		
		osMessageQueueGet(CAN2_RX_Q,&Rxbuff,&priority,osWaitForever);


	//checking the data and affecting the value, should be made in a task with a message queue not in interrupt
		for(i=0;i<RX2_FRAME_NB;i++){
			if((Rxbuff.RXheader.StdId==CAN2_RX_bank[i].CAN_Id)&&((Rxbuff.RXheader.IDE==CAN_ID_STD)||((Rxbuff.RXheader.ExtId==CAN1_RX_bank[i].CAN_Id))&&(Rxbuff.RXheader.IDE==CAN_ID_EXT))){
				CAN2_RX_bank[i].Data = 0;
				CAN2_RX_bank[i].Data |= Rxbuff.Data[7];
				CAN2_RX_bank[i].Data |= (uint16_t)Rxbuff.Data[6]<<8;
				CAN2_RX_bank[i].Data |= (uint32_t)Rxbuff.Data[5]<<16;
				CAN2_RX_bank[i].Data |= (uint32_t)Rxbuff.Data[4]<<24;
				CAN2_RX_bank[i].Data |= (uint64_t)Rxbuff.Data[3]<<32;
				CAN2_RX_bank[i].Data |= (uint64_t)Rxbuff.Data[2]<<40;
				CAN2_RX_bank[i].Data |= (uint64_t)Rxbuff.Data[1]<<48;
				CAN2_RX_bank[i].Data |= (uint64_t)Rxbuff.Data[0]<<56;			
			
				for(k=0;k<RX2_DATA_NB;k++){
					if((CAN2_data_RX[k]->CAN_id == CAN2_RX_bank[i].CAN_Id)){
				
						(CAN2_data_RX[k]->CAN_data) = (uint16_t)(((uint64_t)(CAN2_RX_bank[i].Data)>>(63-CAN2_data_RX[k]->CAN_startbit-(CAN2_data_RX[k]->CAN_length_dec-1))) & ((uint64_t)(CAN2_data_RX[k]->CAN_length)));
						
						if((CAN2_data_RX[k]->Endianness == Intel)&&(CAN2_data_RX[k]->CAN_length_dec>8)){
							
							uint16_t temp = CAN2_data_RX[i]->CAN_data;
							CAN2_data_RX[k]->CAN_data = ((CAN2_data_RX[k]->CAN_data>>(CAN2_data_RX[k]->CAN_length_dec-8))&0x00FF);
							CAN2_data_RX[k]->CAN_data |= ((temp<<8)&CAN2_data_RX[k]->CAN_length);
							
						}
					}
				}
			}
		}
	#if CAN2_FULL_RETRANSMIT
			CAN_TxHeaderTypeDef TX_temp;
			
			TX_temp.StdId = Rxbuff.RXheader.StdId;
			TX_temp.DLC = Rxbuff.RXheader.DLC;
			TX_temp.IDE = Rxbuff.RXheader.IDE;
			TX_temp.ExtId = Rxbuff.RXheader.ExtId;
			TX_temp.RTR = Rxbuff.RXheader.RTR;
			
			uint32_t transmitmailbox = 0;
			
			// Select one empty transmit mailbox //
		if ((hCAN1.Instance->TSR&CAN_TSR_TME0) == CAN_TSR_TME0)
		{
			transmitmailbox = 0;
		}
		else if ((hCAN1.Instance->TSR&CAN_TSR_TME1) == CAN_TSR_TME1)
		{
			transmitmailbox = 1;
		}
		else if ((hCAN1.Instance->TSR&CAN_TSR_TME2) == CAN_TSR_TME2)
		{
			transmitmailbox = 2;
		}
		else
		{
			transmitmailbox =3;
			overflow++;
			if (overflow >= 10){
			SET_BIT(hCAN1.Instance->TSR, CAN_TSR_ABRQ0);
			SET_BIT(hCAN1.Instance->TSR, CAN_TSR_ABRQ1);
			SET_BIT(hCAN1.Instance->TSR, CAN_TSR_ABRQ2);
				HAL_CAN_Stop(&hCAN1);
				HAL_CAN_Start(&hCAN1);
			}
		}

		if (transmitmailbox != 3)
		{
			overflow = 0;
			osMutexAcquire(CAN1_mutex,osWaitForever);
			if (HAL_CAN_AddTxMessage(&hCAN1, &TX_temp, Rxbuff.Data, &transmitmailbox) != HAL_OK)
			{     
				/* Transmission request Error */			
				HAL_CAN_Stop(&hCAN1);
				HAL_CAN_Start(&hCAN1); 
			}
			else{
			while (HAL_CAN_IsTxMessagePending(&hCAN1, transmitmailbox) == 1){
				osDelay(TX_Delay);
				break;
			}
		}
		}
			osMutexRelease(CAN1_mutex);
	#endif
		
	#if CAN2_FILTER_RETRANSMIT
			CAN_TxHeaderTypeDef TX_temp1;
		for(i=0;i<4;i++){
		if((Rxbuff.RXheader.StdId==CAN2_FILTER_TR_bank[i])&&((Rxbuff.RXheader.IDE==CAN_ID_STD)||((Rxbuff.RXheader.ExtId==CAN2_FILTER_TR_bank[i]))&&(Rxbuff.RXheader.IDE==CAN_ID_EXT))){
			
			TX_temp1.StdId = Rxbuff.RXheader.StdId;
			TX_temp1.DLC = Rxbuff.RXheader.DLC;
			TX_temp1.IDE = Rxbuff.RXheader.IDE;
			TX_temp1.ExtId = Rxbuff.RXheader.ExtId;
			TX_temp1.RTR = Rxbuff.RXheader.RTR;
			
			uint32_t transmitmailbox = 0;
			
			// Select one empty transmit mailbox //
		if ((hCAN1.Instance->TSR&CAN_TSR_TME0) == CAN_TSR_TME0)
		{
			transmitmailbox = 0;
		}
		else if ((hCAN1.Instance->TSR&CAN_TSR_TME1) == CAN_TSR_TME1)
		{
			transmitmailbox = 1;
		}
		else if ((hCAN1.Instance->TSR&CAN_TSR_TME2) == CAN_TSR_TME2)
		{
			transmitmailbox = 2;
		}
		else
		{
			transmitmailbox =3;
			overflow++;
			if (overflow >= 10){
			SET_BIT(hCAN1.Instance->TSR, CAN_TSR_ABRQ0);
			SET_BIT(hCAN1.Instance->TSR, CAN_TSR_ABRQ1);
			SET_BIT(hCAN1.Instance->TSR, CAN_TSR_ABRQ2);
				HAL_CAN_Stop(&hCAN1);
				HAL_CAN_Start(&hCAN1);
			}
		}

		if (transmitmailbox != 3)
		{
			overflow = 0;
			osMutexAcquire(CAN1_mutex,osWaitForever);
			if (HAL_CAN_AddTxMessage(&hCAN1, &TX_temp1, Rxbuff.Data, &transmitmailbox) != HAL_OK)
			{     
				/* Transmission request Error */			
				HAL_CAN_Stop(&hCAN1);
				HAL_CAN_Start(&hCAN1); 
			}
			else{
			while (HAL_CAN_IsTxMessagePending(&hCAN1, transmitmailbox) == 1){
				osDelay(TX_Delay);
				break;
			}
		}
		}
			osMutexRelease(CAN1_mutex);
		
	}
}
		#endif
	}
}

/***************************************/
/***************** Irq Handler *********/
/***************************************/

//////////////////////////////////////// CAN1
void CAN1_TX_IRQHandler(void)
{
	
	if(__HAL_CAN_GET_IT_SOURCE(&hCAN1, CAN_IT_TX_MAILBOX_EMPTY))
	  {
		if(HAL_CAN_IsTxMessagePending(&hCAN1, CAN_TX_MAILBOX0)){
			__HAL_CAN_CLEAR_FLAG(&hCAN1,CAN_FLAG_TXOK0);
			__HAL_CAN_CLEAR_FLAG(&hCAN1,CAN_FLAG_TME0);
			__HAL_CAN_CLEAR_FLAG(&hCAN1,CAN_FLAG_RQCP0);
			CAN1_BusInfo.tx_success_cnt++;
		}
		
		if(HAL_CAN_IsTxMessagePending(&hCAN1, CAN_TX_MAILBOX1)){
			__HAL_CAN_CLEAR_FLAG(&hCAN1,CAN_FLAG_TXOK1);
			__HAL_CAN_CLEAR_FLAG(&hCAN1,CAN_FLAG_TME1);
			__HAL_CAN_CLEAR_FLAG(&hCAN1,CAN_FLAG_RQCP1);
			CAN1_BusInfo.tx_success_cnt++;
		}
		
		if(HAL_CAN_IsTxMessagePending(&hCAN1, CAN_TX_MAILBOX2)){
			
			//osThreadFlagsSet(id_task_CAN1_TX,FLAG_CAN_TX2_OK);
			
			/* Clear flag */
			__HAL_CAN_CLEAR_FLAG(&hCAN1,CAN_FLAG_TXOK2);
			__HAL_CAN_CLEAR_FLAG(&hCAN1,CAN_FLAG_TME2);
			__HAL_CAN_CLEAR_FLAG(&hCAN1,CAN_FLAG_RQCP2);
			CAN1_BusInfo.tx_success_cnt++;
				
		}	
	}
}

/*	CAN1 FIFO 0	*/
void CAN1_RX0_IRQHandler (void) 
{
		CanRX_Queue_t RX_BUFF;
		uint8_t RxBuffer[8] = {0,0,0,0,0,0,0,0};
		CAN_RxHeaderTypeDef RxHeaderTemp = {0};
		
	if(__HAL_CAN_GET_IT_SOURCE(&hCAN1,CAN_IT_RX_FIFO0_MSG_PENDING)){
		
		HAL_CAN_GetRxMessage(&hCAN1,0,&RxHeaderTemp,RxBuffer);
		
		RX_BUFF.RXheader = RxHeaderTemp;
		for(int i=0;i<8;i++){
			RX_BUFF.Data[i] = RxBuffer[i];}
		
		osMessageQueuePut(CAN1_RX_Q,&RX_BUFF,1,0);
	}
	  HAL_IWDG_Refresh(&hiwdg);
}

/*	CAN1 FIFO 1	*/
void CAN1_RX1_IRQHandler (void) 
{
		CanRX_Queue_t RX_BUFF;
		uint8_t RxBuffer[8] = {0,0,0,0,0,0,0,0};
		CAN_RxHeaderTypeDef RxHeaderTemp = {0};
		
	if(__HAL_CAN_GET_IT_SOURCE(&hCAN1,CAN_IT_RX_FIFO0_MSG_PENDING)){
		
		HAL_CAN_GetRxMessage(&hCAN1,1,&RxHeaderTemp,RxBuffer);
		
		RX_BUFF.RXheader = RxHeaderTemp;
		for(int i=0;i<8;i++){
			RX_BUFF.Data[i] = RxBuffer[i];}
		
		osMessageQueuePut(CAN1_RX_Q,&RX_BUFF,1,0);
	}
	  HAL_IWDG_Refresh(&hiwdg);
}

void CAN1_SCE_IRQHandler(void){
	
		CAN_CheckError1(&hCAN1);
	
	//clear flag
	hCAN1.Instance->MSR = CAN_MSR_ERRI; 
}


//////////////////////////////////////// CAN2
void CAN2_TX_IRQHandler(void){
	
	if(__HAL_CAN_GET_IT_SOURCE(&hCAN2, CAN_IT_TX_MAILBOX_EMPTY))
	  {
		if(HAL_CAN_IsTxMessagePending(&hCAN2, CAN_TX_MAILBOX0)){
			__HAL_CAN_CLEAR_FLAG(&hCAN2,CAN_FLAG_TXOK0);
			__HAL_CAN_CLEAR_FLAG(&hCAN2,CAN_FLAG_TME0);
			__HAL_CAN_CLEAR_FLAG(&hCAN2,CAN_FLAG_RQCP0);
			CAN2_BusInfo.tx_success_cnt++;
		}
		
		if(HAL_CAN_IsTxMessagePending(&hCAN2, CAN_TX_MAILBOX1)){
			__HAL_CAN_CLEAR_FLAG(&hCAN2,CAN_FLAG_TXOK1);
			__HAL_CAN_CLEAR_FLAG(&hCAN2,CAN_FLAG_TME1);
			__HAL_CAN_CLEAR_FLAG(&hCAN2,CAN_FLAG_RQCP1);
			CAN2_BusInfo.tx_success_cnt++;
		}
		
		if(HAL_CAN_IsTxMessagePending(&hCAN2, CAN_TX_MAILBOX2)){
			
			//osThreadFlagsSet(id_task_CAN2_TX,FLAG_CAN_TX2_OK);
			
			/* Clear flag */
			__HAL_CAN_CLEAR_FLAG(&hCAN2,CAN_FLAG_TXOK2);
			__HAL_CAN_CLEAR_FLAG(&hCAN2,CAN_FLAG_TME2);
			__HAL_CAN_CLEAR_FLAG(&hCAN2,CAN_FLAG_RQCP2);
			CAN2_BusInfo.tx_success_cnt++;
				
		}	
	}
		NVIC_ClearPendingIRQ(CAN2_TX_IRQn);
}

/*	CAN2 FIFO 0	*/
void CAN2_RX0_IRQHandler (void) 
{
		CanRX_Queue_t RX_BUFF;
		uint8_t RxBuffer[8] = {0,0,0,0,0,0,0,0};
		CAN_RxHeaderTypeDef RxHeaderTemp = {0};
		
	if(__HAL_CAN_GET_IT_SOURCE(&hCAN2,CAN_IT_RX_FIFO0_MSG_PENDING)){
		
		HAL_CAN_GetRxMessage(&hCAN2,0,&RxHeaderTemp,RxBuffer);
		
		RX_BUFF.RXheader = RxHeaderTemp;
		for(int i=0;i<8;i++){
			RX_BUFF.Data[i] = RxBuffer[i];}
		
		osMessageQueuePut(CAN2_RX_Q,&RX_BUFF,1,0);
	}
	  HAL_IWDG_Refresh(&hiwdg);
}

/*	CAN2 FIFO 1	*/
void CAN2_RX1_IRQHandler (void) 
{
		CanRX_Queue_t RX_BUFF;
		uint8_t RxBuffer[8] = {0,0,0,0,0,0,0,0};
		CAN_RxHeaderTypeDef RxHeaderTemp = {0};
		
	if(__HAL_CAN_GET_IT_SOURCE(&hCAN2,CAN_IT_RX_FIFO0_MSG_PENDING)){
		
		HAL_CAN_GetRxMessage(&hCAN2,1,&RxHeaderTemp,RxBuffer);
		
		RX_BUFF.RXheader = RxHeaderTemp;
		for(int i=0;i<8;i++){
			RX_BUFF.Data[i] = RxBuffer[i];}
		
		osMessageQueuePut(CAN2_RX_Q,&RX_BUFF,1,0);
	}
	  HAL_IWDG_Refresh(&hiwdg);
}

void CAN2_SCE_IRQHandler(void){
	
		CAN_CheckError1(&hCAN2);
	
	//clear flag
	hCAN2.Instance->MSR = CAN_MSR_ERRI; 
}



/** error checker**/
void CAN_CheckError1(CAN_HandleTypeDef* hcan){
  
  uint32_t tmp1 = 0, tmp2 = 0, tmp3 = 0;
    
  tmp1 = HAL_IS_BIT_CLR(hcan->Instance->ESR, CAN_ESR_LEC);
  tmp2 = __HAL_CAN_GET_IT_SOURCE(hcan, CAN_IT_LAST_ERROR_CODE);
  tmp3 = __HAL_CAN_GET_IT_SOURCE(hcan, CAN_IT_ERROR);
	
  CAN_BusInfo_t* bus_info;
  if(hcan->Instance==CAN1)
	  bus_info=&CAN1_BusInfo;
  else
	  bus_info=&CAN2_BusInfo;
	
  /* Check Last error code Flag */
  if((!tmp1) && tmp2 && tmp3)
  {
    tmp1 = (hcan->Instance->ESR) & CAN_ESR_LEC;
    switch(tmp1)
    {
	case(CAN_ESR_LEC_0):
		/* Set CAN error code to STF error */
		bus_info->last_error_code = HAL_CAN_ERROR_STF; 
		bus_info->err_stuff_cnt++;
		break;
	case(CAN_ESR_LEC_1):
		/* Set CAN error code to FOR error */
		bus_info->last_error_code = HAL_CAN_ERROR_FOR;
		bus_info->err_form_cnt++;
		break;
	case(CAN_ESR_LEC_1 | CAN_ESR_LEC_0):
		/* Set CAN error code to ACK error */
		bus_info->last_error_code = HAL_CAN_ERROR_ACK;
		bus_info->err_ack_cnt++;
		break;
	case(CAN_ESR_LEC_2):
		/* Set CAN error code to BR error */
		bus_info->last_error_code = HAL_CAN_ERROR_BR;
		bus_info->err_br_cnt++;
		break;
	case(CAN_ESR_LEC_2 | CAN_ESR_LEC_0):
		/* Set CAN error code to BD error */
		bus_info->last_error_code = HAL_CAN_ERROR_BD;    
		bus_info->err_bd_cnt++;
		break;
	case(CAN_ESR_LEC_2 | CAN_ESR_LEC_1):
		/* Set CAN error code to CRC error */
		bus_info->last_error_code = HAL_CAN_ERROR_CRC;
		bus_info->err_crc_cnt++;
		break;
	default:
		break;
	}	

    /* Clear Last error code Flag */ 
    hcan->Instance->ESR &= ~(CAN_ESR_LEC);
  }
 }
 
 void DIAG_Transmit_CAN(CAN_HandleTypeDef *hcan){
	 	 uint32_t txmailbox =0;
//////////////////////////////////////ERROR MESSAGES TRANSMITTING//////////////////////////////////////
				Error_Data[1] = (uint8_t)Error_Timer;
				Error_Data[0] = (uint8_t)((uint16_t)Error_Timer >> (uint16_t)8);
				osMutexAcquire(CAN1_mutex,osWaitForever);
				HAL_CAN_AddTxMessage(hcan, &HTX_Diag, Error_Data, &txmailbox);
				osMutexRelease(CAN1_mutex); 
////////////////////////////////////////////////////////////////////////////////////////////////////////
 }

///////////////////////////////////////////////////////////////
////////////////////////// TASK ///////////////////////////////
///////////////////////////////////////////////////////////////

 void TASK_CAN1_TX(void *argument){
	 osStatus_t status;
	 int send_status;
	 
	 osThreadFlagsWait(FLAG_CANTX_CONFIG_READY,osFlagsWaitAll,osWaitForever);
	 
	 uint16_t frequency = 0;
	 uint8_t priority = 0;
	 
	 test_factors.factor = 2;
	 test_factors.offset =2;
	 
	 while(1){

		 osMessageQueueGet(CAN1_Q,&frequency,&priority,osWaitForever);

#if USE_ANA
		 ADC_factor();
#endif
		 
		 switch(frequency){
			 
			 case 200:
#ifdef HW_ELB
			CAN_Transmit(&hCAN1,0x230);
#endif
#ifdef HW_R5_ELB
			CAN_Transmit(&hCAN1,0x230);
#endif
			 break;
			 
			 case 100:

			 break;
			 
			 case 50:
#ifdef HW_SI
				CAN_Transmit(&hCAN1,HTX_290h);
#endif
#ifdef HW_CONSOLE
			  CAN_Transmit(&hCAN1,HTX_160h);
				CAN_Transmit(&hCAN1,HTX_18FF03F1h);
#endif
			 break;
			 
			 case 40:
			 break;
			 
			 case 30:
			 break;
			 
			 case 20:
#ifdef HW_ELB
				CAN_Transmit(&hCAN2,0x234);
#endif
				DIAG_Transmit_CAN(&hCAN1);			//Transmitting of diagnostic frame with timer and last reset flag, comment if not used
			 break;
			 
			 case 10:
#ifdef HW_R5_ELB
			 CAN_Transmit(&hCAN1,0x100);
#endif
			 break;
			 
			 case 5:
			 break;
			 
			 case 2:
			 break;
			 
			 case 1:
			 break;
			 
			 default:
			 break;
			 
		 }		 
		 
		 HAL_IWDG_Refresh(&hiwdg);
		 
	 }
 }