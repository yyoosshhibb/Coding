#ifndef __STD_TIM_H
#define __STD_TIM_H


/*
ADC: TIM4
LED: TIM14, TIM10
Scheduler: TIM7
DATA LPF: TIM6

*/


#include "stm32f4xx_hal.h"
void TIM_std_base_init(TIM_TypeDef* TIM_instance,TIM_Base_InitTypeDef* tim_base_init_struct);
void TIM_std_ConfigClockSource(TIM_TypeDef* TIM_instance,TIM_ClockConfigTypeDef * sClockSourceConfig);

void TIM_std_PWM_ConfigChannel(TIM_TypeDef* TIM_instance, TIM_OC_InitTypeDef* sConfig, uint32_t Channel);

#endif
