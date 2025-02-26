/*
 * main.c
 *
 *  Created on: 2022 Apr 12 10:45:49
 *  Author: Yoshi
 */




#include "DAVE.h"                 //Declarations from DAVE Code Generation (includes SFR declaration)



/**

 * @brief main() - Application entry point
 *
 * <b>Details of function</b><br>
 * This routine is the application entry point. It is invoked by the device startup code. It is responsible for
 * invoking the APP initialization dispatcher routine - DAVE_Init() and hosting the place-holder for user application
 * code.
 */

uint16_t ADC_Value;
uint8_t delay_for_CAN_Transmit = 5;

uint8_t CAN0_data_TX_LM01[8] = {0};
void Task_CAN_Transmit();
void Task_ANA_Read();

int main(void)
{
  DAVE_STATUS_t status;

  status = DAVE_Init();           /* Initialization of DAVE APPs  */

  xTaskCreate(Task_CAN_Transmit,"CAN_Transmit",1000, NULL, 0, NULL);
  xTaskCreate(Task_ANA_Read,"ANA_Read",1000, NULL, 0, NULL);

  vTaskStartScheduler();

  if (status != DAVE_STATUS_SUCCESS)
  {
    /* Placeholder for error handler code. The while loop below can be replaced with an user error handler. */
    XMC_DEBUG("DAVE APPs initialization failed\n");

    while(1U)
    {

    }
  }

  /* Placeholder for user application code. The while loop below can be replaced with user application code. */
  while(1U)
  {

  }
}

void Task_CAN_Transmit()
{
	while(1)
	{
		CAN0_data_TX_LM01[0]=(uint8_t)(ADC_Value>>8);
		CAN0_data_TX_LM01[1]=(uint8_t)(ADC_Value&0x00FF);

		CAN_NODE_MO_UpdateData(&CAN_NODE_0_LMO_01_Config, CAN0_data_TX_LM01);
		CAN_NODE_MO_Transmit(&CAN_NODE_0_LMO_01_Config);

		vTaskDelay(pdMS_TO_TICKS(delay_for_CAN_Transmit));

	}
}

void Task_ANA_Read()
{
	while(1)
	{
		ADC_Value = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_A);
		vTaskDelay(pdMS_TO_TICKS(1));
	}
}

