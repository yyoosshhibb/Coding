#ifndef __I2C
#define __I2C

#include "Hardware_Def.h"

#define FLAG_I2C1_CONFIG_READY 0x04

#ifdef USE_I2C1
	#define I2C1_SCL_PIN	GPIO_PIN_6
	#define I2C1_SDA_PIN	GPIO_PIN_7
	
	#define I2C1_PORT GPIOB

	//Options for SCL: PB6, PB8
	//Options for SDA: PB7, PB9
	#endif
	


//Prototypes
void I2C_Init(void);
void I2C_Main(void);
#endif
