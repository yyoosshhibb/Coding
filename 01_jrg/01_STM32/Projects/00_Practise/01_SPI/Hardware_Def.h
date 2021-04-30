#ifndef __HARDWARE_DEF
#define __HARDWARE_DEF


#include "RTE_Components.h"
#include  CMSIS_device_header
#include "cmsis_os2.h"
#include "stm32f4xx_hal.h"              // Keil::Device:STM32Cube HAL:Common


#include "RTX_Config.h"
//#include "Timers_management.h"
#include "GPIO_management.h"
#include "IWDG.h"
//#include "Switch_management.h"
//#include "Analog_management.h"
//#include "CAN_LL_management.h"
//#include "CAN_Conf.h"

#define USE_ANA						0
#define USE_CAN1 					0
#define USE_CAN2 					0
#define USE_SPI1					1
#define USE_SPI2					0
#define USE_SPI3					0
#define USE_PWM						1
#define USE_SWITCH				0



#endif
