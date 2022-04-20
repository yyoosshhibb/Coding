/*
 * main.c
 *
 *  Created on: 2022 Apr 11 19:27:04
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

uint16_t ADC_Value[2];

int main(void)
{
  DAVE_STATUS_t status;

  status = DAVE_Init();           /* Initialization of DAVE APPs  */

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
	  ADC_Value[0] = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_A);
	  ADC_Value[1] = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_B);
  }
}
