#include "fdcan_conf.h"

FDCAN_TxHeaderTypeDef TxHeader;
FDCAN_RxHeaderTypeDef RxHeader;

//CAN_BusInfo_t CAN1_BusInfo;

osThreadId_t id_Task_FDCAN_RX;
osThreadId_t id_Task_FDCAN_TX;

osMessageQueueId_t	FDCAN_ERROR_Q;
osMessageQueueId_t FDCAN_TX_Q;
osMessageQueueId_t FDCAN_RX_Q;




/* FDCAN1 init function */
//void MX_FDCAN1_Init(void)
//{
//  FDCAN_TX_def();
//  FDCAN_RX_def();

//  hfdcan1.Instance = FDCAN1;
//  hfdcan1.Init.FrameFormat = FDCAN_FRAME_CLASSIC;
//  hfdcan1.Init.Mode = FDCAN_MODE_NORMAL;
//  hfdcan1.Init.AutoRetransmission = ENABLE;
//  hfdcan1.Init.TransmitPause = DISABLE;
//  hfdcan1.Init.ProtocolException = DISABLE;
//  hfdcan1.Init.NominalPrescaler = 2;
//  hfdcan1.Init.NominalSyncJumpWidth = 7;
//  hfdcan1.Init.NominalTimeSeg1 = 18;
//  hfdcan1.Init.NominalTimeSeg2 = 6;
//  hfdcan1.Init.DataPrescaler = 2;
//  hfdcan1.Init.DataSyncJumpWidth = 6;
//  hfdcan1.Init.DataTimeSeg1 = 18;
//  hfdcan1.Init.DataTimeSeg2 = 6;
//  hfdcan1.Init.MessageRAMOffset = 0;
//  hfdcan1.Init.StdFiltersNbr = FDCAN_RX_MSG;
//  hfdcan1.Init.ExtFiltersNbr = 0;
//  hfdcan1.Init.RxFifo0ElmtsNbr = 1;
//  hfdcan1.Init.RxFifo0ElmtSize = FDCAN_DATA_BYTES_8;
//  hfdcan1.Init.RxFifo1ElmtsNbr = 1;
//  hfdcan1.Init.RxFifo1ElmtSize = FDCAN_DATA_BYTES_8;
//  hfdcan1.Init.RxBuffersNbr = 0;
//  hfdcan1.Init.RxBufferSize = FDCAN_DATA_BYTES_8;
//  hfdcan1.Init.TxEventsNbr = 0;
//  hfdcan1.Init.TxBuffersNbr = 0;
//  hfdcan1.Init.TxFifoQueueElmtsNbr = FDCAN_TX_MSG;
//  hfdcan1.Init.TxFifoQueueMode = FDCAN_TX_FIFO_OPERATION;
//  hfdcan1.Init.TxElmtSize = FDCAN_DATA_BYTES_8;

//  GPIO_InitTypeDef GPIO_InitStruct = {0};
//  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

//  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_FDCAN;
//  PeriphClkInitStruct.PLL2.PLL2M = 5;
//  PeriphClkInitStruct.PLL2.PLL2N = 80;
//  PeriphClkInitStruct.PLL2.PLL2P = 80;
//  PeriphClkInitStruct.PLL2.PLL2Q = 8;
//  PeriphClkInitStruct.PLL2.PLL2R = 2;
//  PeriphClkInitStruct.PLL2.PLL2RGE = RCC_PLL2VCIRANGE_2;
//  PeriphClkInitStruct.PLL2.PLL2VCOSEL = RCC_PLL2VCOWIDE;
//  PeriphClkInitStruct.PLL2.PLL2FRACN = 0;
//  PeriphClkInitStruct.FdcanClockSelection = RCC_FDCANCLKSOURCE_PLL2;
//  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
//  {
//    Error_Handler();
//  }

//  /* FDCAN1 clock enable */
//  __HAL_RCC_FDCAN_CLK_ENABLE();

//  __HAL_RCC_GPIOH_CLK_ENABLE();
//  /**FDCAN1 GPIO Configuration
//  PH14     ------> FDCAN1_RX
//  PH13     ------> FDCAN1_TX
//  */
//  GPIO_InitStruct.Pin = GPIO_PIN_14|GPIO_PIN_13;
//  GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
//  GPIO_InitStruct.Pull = GPIO_NOPULL;
//  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
//  GPIO_InitStruct.Alternate = GPIO_AF9_FDCAN1;
//  HAL_GPIO_Init(GPIOH, &GPIO_InitStruct);

//  /* FDCAN1 interrupt Init */
//  HAL_NVIC_SetPriority(FDCAN1_IT0_IRQn, 5, 0);
//  HAL_NVIC_EnableIRQ(FDCAN1_IT0_IRQn);

//  if (HAL_FDCAN_Init(&hfdcan1) != HAL_OK)
//  {
//    Error_Handler();
//  }

//	/* Transmit complete interrupt */
//	__HAL_FDCAN_ENABLE_IT(&hfdcan1,FDCAN_IE_TCE);

//	/* error interrupt */
//	__HAL_FDCAN_ENABLE_IT(&hfdcan1, FDCAN_IE_EPE);

//}

/* USER CODE BEGIN 1 */

void FDCAN_RX_Init(void)
{
	//Only accept the Messages defined in rx_id_list
	int i, pos_filter;
	uint8_t y=0;
	FDCAN_FilterTypeDef sFilterConfig;
	
	pos_filter = 0;

	sFilterConfig.IdType = FDCAN_STANDARD_ID;
	sFilterConfig.FilterIndex =0;
	sFilterConfig.FilterType = FDCAN_FILTER_DUAL;
	sFilterConfig.FilterConfig = FDCAN_FILTER_TO_RXFIFO0;
	sFilterConfig.RxBufferIndex = 0;

	for(i=0;(i<FDCAN_RX_MSG);i++){

			switch(pos_filter)
			{
				case 0:
					sFilterConfig.FilterID1 = rx_id_list[i];
					pos_filter=1;
					break;

				case 1:
					sFilterConfig.FilterID2 = rx_id_list[i];

					HAL_FDCAN_ConfigFilter(&hfdcan1, &sFilterConfig);
					sFilterConfig.FilterIndex++;
				  if(y==1){
					sFilterConfig.FilterConfig = FDCAN_FILTER_TO_RXFIFO0;
					y=0;
					}
					if(y==0){
					sFilterConfig.FilterConfig = FDCAN_FILTER_TO_RXFIFO1;
					y=1;
					}
					pos_filter=0;
					break;
			}

		}

	if(pos_filter==1){
		sFilterConfig.FilterID2 = 0;
		HAL_FDCAN_ConfigFilter(&hfdcan1, &sFilterConfig);
	}

	HAL_FDCAN_ActivateNotification(&hfdcan1, FDCAN_IT_RX_FIFO0_NEW_MESSAGE, 0);
	HAL_FDCAN_ActivateNotification(&hfdcan1, FDCAN_IT_RX_FIFO1_NEW_MESSAGE, 0);
	HAL_FDCAN_ConfigGlobalFilter(&hfdcan1, FDCAN_REJECT, FDCAN_REJECT, FDCAN_REJECT_REMOTE, FDCAN_REJECT_REMOTE);
	HAL_FDCAN_Start(&hfdcan1);

	osThreadFlagsSet(id_Task_FDCAN_TX, FLAG_CANTX_CONFIG_READY);
	osThreadFlagsSet(id_Task_FDCAN_RX, FLAG_CANRX_CONFIG_READY);


}

void FDCAN_Disable_RX(void)
{
		//disable CAN reception
	HAL_FDCAN_DeactivateNotification(&hfdcan1, FDCAN_IT_RX_FIFO0_NEW_MESSAGE);
	HAL_FDCAN_DeactivateNotification(&hfdcan1, FDCAN_IT_RX_FIFO1_NEW_MESSAGE);
}

void FDCAN_Transmit(FDCAN_HandleTypeDef* hfdcan, uint32_t CAN_ID)
{
	FDCAN_TxHeaderTypeDef HeaderTX;

	HeaderTX.DataLength = FDCAN_DLC_BYTES_8;
	HeaderTX.TxFrameType = FDCAN_DATA_FRAME;
	HeaderTX.BitRateSwitch = FDCAN_BRS_OFF;
	HeaderTX.ErrorStateIndicator = FDCAN_ESI_ACTIVE;
	HeaderTX.FDFormat = FDCAN_FD_CAN;
	HeaderTX.TxEventFifoControl = FDCAN_NO_TX_EVENTS;
	HeaderTX.MessageMarker = 0;

	if (CAN_ID < 0xFFF)
	{
		HeaderTX.IdType = FDCAN_STANDARD_ID;
		HeaderTX.Identifier = CAN_ID;
		}
	else if (CAN_ID > 0xFFF)
	{
		HeaderTX.IdType = FDCAN_EXTENDED_ID;
		HeaderTX.Identifier = CAN_ID;
	}

	uint8_t Data[8];

	uint64_t Temp_val = 0;

	int i;

	for(i=0;i<FDCAN_TX_DATA;i++)
	{
		if(FDCAN_Data_Tx[i]->CAN_id == HeaderTX.Identifier)
		{

			if(((FDCAN_Data_Tx[i]->Endianness) == Intel)&&(FDCAN_Data_Tx[i]->CAN_length_dec>8)){

			uint16_t temp = *FDCAN_Data_Tx[i]->CAN_data;
			(*FDCAN_Data_Tx[i]->CAN_data) = (((*FDCAN_Data_Tx[i]->CAN_data)>>((FDCAN_Data_Tx[i]->CAN_length_dec)-8))&0x00FF);
			(*FDCAN_Data_Tx[i]->CAN_data) |= ((temp<<8)&FDCAN_Data_Tx[i]->CAN_length);

			}
		Temp_val |= ((uint64_t)((*FDCAN_Data_Tx[i]->CAN_data)&FDCAN_Data_Tx[i]->CAN_length)<<(63-FDCAN_Data_Tx[i]->CAN_startbit-(FDCAN_Data_Tx[i]->CAN_length_dec-1)));

		}
	}

	Data[7] = (uint8_t)(Temp_val);
	Data[6] = (uint8_t)(Temp_val>>8);
	Data[5] = (uint8_t)(Temp_val>>16);
	Data[4] = (uint8_t)(Temp_val>>24);
	Data[3] = (uint8_t)(Temp_val>>32);
	Data[2] = (uint8_t)(Temp_val>>40);
	Data[1] = (uint8_t)(Temp_val>>48);
	Data[0] = (uint8_t)(Temp_val>>56);

	HAL_FDCAN_AddMessageToTxFifoQ(hfdcan, &HeaderTX, Data);
	//HAL_FDCAN_EnableTxBufferRequest(&hfdcan1,TxBuff_Nb);

}

void HAL_FDCAN_ErrorCallback(FDCAN_HandleTypeDef *hfdcan)
{
	HAL_FDCAN_Stop(hfdcan);
	//osDelay(1);
	HAL_FDCAN_Start(hfdcan);
}

void HAL_FDCAN_RxFifo0Callback(FDCAN_HandleTypeDef *hfdcan, uint32_t RxFifo0ITs)
{
	if((RxFifo0ITs & FDCAN_IT_RX_FIFO0_NEW_MESSAGE) != RESET)
	{
		FDCAN_RxQueue_Frame_t RX_BUFF;
//		FDCAN_RxHeaderTypeDef RxHeaderTemp = {0};
//		uint8_t RxBuffer[8];

		//Retrieve Rx messages from RX FIFO0
		HAL_FDCAN_GetRxMessage(hfdcan, FDCAN_RX_FIFO0, &RX_BUFF.RxHeader, RX_BUFF.Data);

//		RX_BUFF.RxHeader = RxHeaderTemp;
//		for(int i=0; i<8; i++)
//		{
//			RX_BUFF.Data[i] = RxBuffer[i];
//		}



		osMessageQueuePut(FDCAN_RX_Q,&RX_BUFF,1,0);

		HAL_FDCAN_ActivateNotification(&hfdcan1, FDCAN_IT_RX_FIFO0_NEW_MESSAGE, 0);
	}
}

void HAL_FDCAN_RxFifo1Callback(FDCAN_HandleTypeDef *hfdcan, uint32_t RxFifo1ITs)
{
	if((RxFifo1ITs & FDCAN_IT_RX_FIFO1_NEW_MESSAGE) != RESET)
	{
		FDCAN_RxQueue_Frame_t RX_BUFF;
//		FDCAN_RxHeaderTypeDef RxHeaderTemp = {0};
//		uint8_t RxBuffer[8];

		//Retrieve Rx messages from RX FIFO0
		HAL_FDCAN_GetRxMessage(hfdcan, FDCAN_RX_FIFO1, &RX_BUFF.RxHeader, RX_BUFF.Data);

//		RX_BUFF.RxHeader = RxHeaderTemp;
//		for(int i=0; i<8; i++)
//		{
//			RX_BUFF.Data[i] = RxBuffer[i];
//		}



		osMessageQueuePut(FDCAN_RX_Q,&RX_BUFF,1,0);

		HAL_FDCAN_ActivateNotification(&hfdcan1, FDCAN_IT_RX_FIFO1_NEW_MESSAGE, 0);
	}
}

void TASK_FDCAN_RX(void)
{
	uint8_t priority;
	FDCAN_RxQueue_Frame_t RxBuff;
	int i, j, k;
	
	FDCAN_RX_Init();

	HAL_GPIO_WritePin(GPIOJ, GPIO_PIN_2, GPIO_PIN_SET);


	osThreadFlagsWait(FLAG_CANRX_CONFIG_READY,osFlagsWaitAll,osWaitForever);

	while(1)
	{
		
		osMessageQueueGet(FDCAN_RX_Q, &RxBuff,&priority,osWaitForever);

		for(i=0; i<FDCAN_RX_MSG; i++)
		{
			if((RxBuff.RxHeader.Identifier == rx_id_list[i]) && (RxBuff.RxHeader.IdType == FDCAN_STANDARD_ID))
			{
				FDCAN_RX_bank[i].Data = 0;
				FDCAN_RX_bank[i].Data  = 	((uint64_t)(RxBuff.Data[0]))<<56;
				FDCAN_RX_bank[i].Data |= 	((uint64_t)(RxBuff.Data[1]))<<48;
				FDCAN_RX_bank[i].Data |= 	((uint64_t)(RxBuff.Data[2]))<<40;
				FDCAN_RX_bank[i].Data |= 	((uint64_t)(RxBuff.Data[3]))<<32;
				FDCAN_RX_bank[i].Data |= 	((uint64_t)(RxBuff.Data[4]))<<24;
				FDCAN_RX_bank[i].Data |= 	((uint64_t)(RxBuff.Data[5]))<<16;
				FDCAN_RX_bank[i].Data |= 	((uint64_t)(RxBuff.Data[6]))<<8;
				FDCAN_RX_bank[i].Data |= 	((uint64_t)(RxBuff.Data[7]));

				for(k = 0; k<FDCAN_RX_DATA; k++)
				{
					if(RxBuff.RxHeader.Identifier == FDCAN_Data_Rx[k]->CAN_id)
					{
						FDCAN_Data_Rx[k]->CAN_data = (uint16_t)(((uint64_t)(FDCAN_RX_bank[i].Data)>>(63-FDCAN_Data_Rx[k]->CAN_startbit-(FDCAN_Data_Rx[k]->CAN_length_dec-1))) & ((uint64_t)(FDCAN_Data_Rx[k]->CAN_length)));

						if((FDCAN_Data_Rx[k]->Endianness == Intel)&&(FDCAN_Data_Rx[k]->CAN_length_dec>8))
						{

							uint16_t temp = FDCAN_Data_Rx[i]->CAN_data;
							FDCAN_Data_Rx[k]->CAN_data = ((FDCAN_Data_Rx[k]->CAN_data>>(FDCAN_Data_Rx[k]->CAN_length_dec-8))&0x00FF);
							FDCAN_Data_Rx[k]->CAN_data |= ((temp<<8)&FDCAN_Data_Rx[k]->CAN_length);
						}
					}
					
					if((FDCAN_Data_Rx[k]->Factor == 1) && (FDCAN_Data_Rx[k]->Offset == 0))
					{
						FDCAN_Data_Rx[k]->Value = FDCAN_Data_Rx[k]->CAN_data;
					}
					else
					{
						FDCAN_Data_Rx[k]->Value = FDCAN_Data_Rx[k]->CAN_data * FDCAN_Data_Rx[k]->Factor + FDCAN_Data_Rx[k]->Offset;
					}
				}
			}
		}
	}

}

void TASK_FDCAN_TX(void)
{
	osThreadFlagsWait(FLAG_CANTX_CONFIG_READY,osFlagsWaitAll,osWaitForever);
	uint16_t frequency = 0;
	uint8_t priority = 0;
	uint32_t error;


	 while(1){

		 osMessageQueueGet(FDCAN_TX_Q,&frequency,&priority,osWaitForever);

		 switch(frequency){
			 
			 if (error == HAL_FDCAN_ERROR_FIFO_FULL)
			 {
				 //HAL_FDCAN_TX
			 }

			 case 200:
				 FDCAN_Transmit(&hfdcan1, 0x20);

			 break;

			 case 100:
					FDCAN_Transmit(&hfdcan1, 0x10);
					error = HAL_FDCAN_GetError(&hfdcan1);
					osMessageQueuePut(FDCAN_ERROR_Q, &error, 1, 0);

			 break;

			 case 50:

			 break;

			 case 20:

			 break;

			 case 10:

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


	 }

}

