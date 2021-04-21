#include "IWDG.h"

IWDG_HandleTypeDef hiwdg;

/* IWDG init function */
void IWDG_Init(void)
{
	
	DBGMCU->APB1FZ |= DBGMCU_APB1_FZ_DBG_IWDG_STOP; //disable the watchdog during debug mode, comment if not used
	
/*	the IWDG timeout is define by the formula :
	
			Timeout = (1/32000) * 4 * 2^Prescaler * (Reload +1)
	
	Prescaler mini is 4
	
	So, to have 1s in our case, Reload = 499
	
*/
  hiwdg.Instance = IWDG;
  hiwdg.Init.Prescaler = IWDG_PRESCALER_4;
  hiwdg.Init.Reload = 499;
  if (HAL_IWDG_Init(&hiwdg) != HAL_OK)
  {
    Error_Handler();
  }

}