#ifndef __HARDWARE_DEF
#define __HARDWARE_DEF

//////////////////////////GLOBAL HEADER FILES DEFINITION////////////////////////


#include "RTE_Components.h"
#include  CMSIS_device_header
#include "cmsis_os2.h"
#include "stm32f4xx_hal.h"              // Keil::Device:STM32Cube HAL:Common
#include "RTX_Config.h"


#include "Timers_management.h"
#include "GPIO_management.h"
#include "IWDG.h"


#ifdef HW_ELB
#define ELB_CPU

#define USE_ANA						1
#define USE_CAN1 					1
#define USE_CAN2 					1
#define USE_SPI2					0
#define USE_TR			  		1
#define USE_PWM						1
#define USE_SWITCH				0
#define USE_INCREMENTAL 	0
#define USE_SERIAL_NB			0
#define USE_WATER_SPLASH 	0

#endif		
		
#ifdef HW_CAN_HUB		
#define ELB_CPU		
		
#define USE_ANA						1
#define USE_CAN1 					1
#define USE_CAN2 					1
#define USE_SPI2					1
#define USE_TR 						0
#define USE_PWM						0
#define USE_SWITCH				0
#define USE_INCREMENTAL 	0
#define USE_SERIAL_NB			0
#define USE_WATER_SPLASH 	0

#endif		
		
#ifdef HW_SI		
#define ELB_CPU		
		
#define USE_ANA						1
#define USE_CAN1 					1
#define USE_CAN2 					1
#define USE_SPI2					0
#define USE_TR 						0
#define USE_PWM						0
#define USE_SWITCH				1
#define USE_INCREMENTAL 	0
#define USE_SERIAL_NB			0
#define USE_WATER_SPLASH 	0

#endif	
	
#ifdef HW_CONSOLE	
#define ELB_CPU	
	
#define USE_ANA						1
#define USE_CAN1 					1
#define USE_CAN2 					0
#define USE_SPI2					0
#define USE_TR 						0
#define USE_PWM						0
#define USE_SWITCH				1
#define USE_INCREMENTAL 	1
#define USE_SERIAL_NB			0
#define USE_WATER_SPLASH 	0

#endif

#ifdef HW_R5_ELB
#define ELB_CPU

#define USE_ANA						1
#define USE_CAN1 					1
#define USE_CAN2 					0
#define USE_SPI2					0
#define USE_TR 						1
#define USE_PWM						1
#define USE_SWITCH				0
#define USE_INCREMENTAL 	0
#define USE_SERIAL_NB			1
#define USE_WATER_SPLASH 	1 

#endif


#if USE_ANA
#include "Analog_management.h"
#endif

#if USE_CAN1 || USE_CAN2
#include "CAN_LL_management.h"
#include "CAN_Conf.h"
#endif

#if USE_TR
#include "TR_management.h"
#endif

#if USE_SWITCH
#include "Switch_management.h"
#endif

#if USE_INCREMENTAL
#include "Incremental_management.h"
#endif

#if USE_SERIAL_NB
#include "Serial_Number.h"
#endif

#endif