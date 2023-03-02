#ifndef FLASH_TASK_H
#define FLASH_TASK_H

#include "HW_Def.h"

typedef struct
{
	uint8_t	pmax;										//maximum Power in kW
	uint8_t	pmin;										//maximum Braking Power in kW
	uint8_t	tv_Strength;						//TV Strength relative (255=max, 0=off)
	uint8_t	fanspeeds;							//AA base Fanpower (255=max, 0=off)
}drivemode_t;

typedef struct
{
	uint32_t	code;
	float			LCD_Brightness;
	uint32_t	R2DTime;
}configuration_t;

union
{
	configuration_t			config;
	uint8_t							data[sizeof(configuration_t)];	
}configuration_u;


#endif