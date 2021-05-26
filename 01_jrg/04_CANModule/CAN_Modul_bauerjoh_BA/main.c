/*
 * main.c
 *
 *  Created on: 2019 Nov 29 11:32:40
 *  Author: Valentin Keck
 */

#include <stdio.h>
#include <stdbool.h>
#include <math.h>
#include "XMC4500.h"
#include "Header.h"
#include <DAVE.h>                 //Declarations from DAVE Code Generation (includes SFR declaration)
#include "ANA_Init.h"
#include "Average_Filter.h"

/**

 * @brief main() - Application entry point
 *
 * <b>Details of function</b><br>
 * This routine is the application entry point. It is invoked by the device startup code. It is responsible for
 * invoking the APP initialization dispatcher routine - DAVE_Init() and hosting the place-holder for user application
 * code.
 */

uint16_t value;


int main(void)
{

  DAVE_STATUS_t status;

  status = DAVE_Init();           /* Initialization of DAVE APPs  */
  ANA_Init();

  CAN1_INIT();
  CAN2_INIT();
  DIGITAL_IO_SetOutputHigh(&Debug_LED);

  xTaskCreate(Task_ANA_Read, "Read_Task", 1000, NULL, 0, NULL);
  xTaskCreate(Task_CAN_2_Receive, "Can2_Receive_Task", 1000, NULL, 1, NULL);
  xTaskCreate(Task_CAN_2_Transmit, "Can2_Transmit_Task", 1000, NULL, 2, NULL);
  xTaskCreate(Task_CAN_1_Transmit, "Can1_Transmit_Task", 1000, NULL, 2, NULL);

  vTaskStartScheduler();

  if(status != DAVE_STATUS_SUCCESS)
  {
    /* Placeholder for error handler code. The while loop below can be replaced with an user error handler. */
    XMC_DEBUG("DAVE APPs initialization failed\n");
  }

  /* Placeholder for user application code. The while loop below can be replaced with user application code. */


  while(1U)
  {
	  //Task_ANA_Read();
	  //Task_CAN_2_Receive();
	  //Task_CAN_2_Transmit();

}
}

