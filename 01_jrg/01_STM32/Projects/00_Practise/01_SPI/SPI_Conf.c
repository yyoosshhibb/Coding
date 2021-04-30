#include "SPI_Conf.h"

static SPI_SLAVE_t			accelerometer;


#if USE_SPI1
	static SPI_HandleTypeDef hspi1;
#endif

#if USE_SPI2
	static SPI_HandleTypeDef hspi2;
#endif

#if USE_SPI3
	static SPI_HandleTypeDef hspi3;
#endif

void SPI_Slave_Init(void)
{
	GPIO_InitTypeDef GPIO_InitStruct = {0};
	
	
	accelerometer.CS_PIN = GPIO_PIN_3;
	accelerometer.CS_PORT = GPIOE;
	accelerometer.hSPI = &hspi1;
	
	
	__HAL_RCC_GPIOE_CLK_ENABLE();		//Enable CLK of CS Port
	HAL_GPIO_WritePin(accelerometer.CS_PORT, accelerometer.CS_PIN, GPIO_PIN_SET);			//Set CS High (inactive as CS is active low)
	/*Configure GPIO pin : accelerometer CS */
  GPIO_InitStruct.Pin = accelerometer.CS_PIN;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(accelerometer.CS_PORT, &GPIO_InitStruct);
	
}


void SPI_Init(void)
{
	SPI_Slave_Init();				//Initialize SPI Devices
	GPIO_InitTypeDef GPIO_InitStruct = {0};
	
	#if USE_SPI1
	/*GPIO Ports Clk Enable*/
  __HAL_RCC_GPIOA_CLK_ENABLE();
	__HAL_RCC_SPI1_CLK_ENABLE();
	
	////////////////////////////////////////GPIO Initialization
	//CLK
	GPIO_InitStruct.Pin = SPI1_CLK_PIN;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
	GPIO_InitStruct.Alternate = GPIO_AF5_SPI1;
	HAL_GPIO_Init(SPI1_CLK_PORT, &GPIO_InitStruct);
	
	
	//MOSI
	GPIO_InitStruct.Pin = SPI1_MOSI_PIN;
	HAL_GPIO_Init(SPI1_MOSI_PORT, &GPIO_InitStruct);
	
	//MISO
	GPIO_InitStruct.Pin = SPI1_MISO_PIN;
	HAL_GPIO_Init(SPI1_MISO_PORT, &GPIO_InitStruct);
	
	//SPI Init function from CubeMX
	
	hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_16;				//84 MHz Clock, dividers are powers of 2 from 2 to 256
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 10;
	

  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
	#endif
	
	
		#if USE_SPI2
	/*GPIO Ports Clk Enable*/
  __HAL_RCC_GPIOB_CLK_ENABLE();
	
	hspi2.Instance = SPI2;
  hspi2.Init.Mode = SPI_MODE_MASTER;
  hspi2.Init.Direction = SPI_DIRECTION_2LINES;
  hspi2.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi2.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi2.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi2.Init.NSS = SPI_NSS_SOFT;
  hspi2.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_16;				//84 MHz Clock, dividers are powers of 2 from 2 to 256
  hspi2.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi2.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi2.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi2.Init.CRCPolynomial = 10;
	
	
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
	#endif
	
		#if USE_SPI3
	/*GPIO Ports Clk Enable*/
  __HAL_RCC_GPIOC_CLK_ENABLE();
	
	hspi3.Instance = SPI3;
  hspi3.Init.Mode = SPI_MODE_MASTER;
  hspi3.Init.Direction = SPI_DIRECTION_2LINES;
  hspi3.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi3.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi3.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi3.Init.NSS = SPI_NSS_SOFT;
  hspi3.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_16;				//84 MHz Clock, dividers are powers of 2 from 2 to 256
  hspi3.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi3.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi3.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi3.Init.CRCPolynomial = 10;
	
	
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
	#endif
}

void SPI_Transmit(SPI_TX_MSG_t* Message)
{
	//Set slave select low
	HAL_GPIO_WritePin(Message->Slave.CS_PORT, Message->Slave.CS_PIN, GPIO_PIN_RESET);
	
	//Transmit Register & Data
	HAL_SPI_Transmit(Message->Slave.hSPI, Message->data, Message->Msg_length, Message->timeout);
	//Set slave select high
	HAL_GPIO_WritePin(Message->Slave.CS_PORT, Message->Slave.CS_PIN, GPIO_PIN_SET);
}

void SPI_Receive(SPI_RX_MSG_t* Message)
{
	//Set SS Low
	HAL_GPIO_WritePin(Message->Slave.CS_PORT, Message->Slave.CS_PIN, GPIO_PIN_RESET);
	//Transmit message to activate read mode
	
	//Receive Data
	
	//Set SS High
	HAL_GPIO_WritePin(Message->Slave.CS_PORT, Message->Slave.CS_PIN, GPIO_PIN_SET);
}


