#include "Serial_Number.h"

uint8_t Serial_Number = 0;

void SN_READ(void){
	
	uint8_t SN_buffer[8];
	
	SN_buffer[0] = HAL_GPIO_ReadPin(SN_B0_PORT,SN_B0_PIN);
	SN_buffer[1] = HAL_GPIO_ReadPin(SN_B1_PORT,SN_B1_PIN);
	SN_buffer[2] = HAL_GPIO_ReadPin(SN_B2_PORT,SN_B2_PIN);
	SN_buffer[3] = HAL_GPIO_ReadPin(SN_B3_PORT,SN_B3_PIN);
	SN_buffer[4] = HAL_GPIO_ReadPin(SN_B4_PORT,SN_B4_PIN);
	SN_buffer[5] = HAL_GPIO_ReadPin(SN_B5_PORT,SN_B5_PIN);
	SN_buffer[6] = HAL_GPIO_ReadPin(SN_B6_PORT,SN_B6_PIN);
	SN_buffer[7] = HAL_GPIO_ReadPin(SN_B7_PORT,SN_B7_PIN);
	
	for(int i=0;i<8;i++){
		Serial_Number |= SN_buffer[i]<<i;
	}	
}
	