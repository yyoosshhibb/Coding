#include "I2C.h"

I2C_HandleTypeDef hi2c1;

uint8_t i2cbuf[2];
int16_t rotx, roty, rotz;
float xRotation, yRotation, zRotation;

void I2C_Init()
{
	GPIO_InitTypeDef myPinInit;
	
	__HAL_RCC_I2C1_CLK_ENABLE();
	__HAL_RCC_GPIOB_CLK_ENABLE();

	myPinInit.Pin = I2C1_SCL_PIN | I2C1_SDA_PIN;
	myPinInit.Mode = GPIO_MODE_AF_OD;
	myPinInit.Pull = GPIO_PULLUP;
	myPinInit.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
	myPinInit.Alternate = GPIO_AF4_I2C1;
	HAL_GPIO_Init(I2C1_PORT, &myPinInit);
	
	hi2c1.Instance = I2C1;
  hi2c1.Init.ClockSpeed = 100000;
  hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }
	
}

void I2C_Main()
{
	for(uint8_t i=0; i<255; i++)
	{
		if(HAL_I2C_IsDeviceReady(&hi2c1, i, 1, 10)==HAL_OK)
		{
			HAL_GPIO_WritePin(GPIOD, GPIO_PIN_12, GPIO_PIN_SET);
			break;
		}
	}
}

