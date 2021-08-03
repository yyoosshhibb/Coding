/*
 * RTOS_Handling.c
 *
 *  Created on: 7 Dec 2019
 *      Author: Paul
 */

#include "Header.h"

extern struct data_can canData;
extern struct data_IOPort IOportData;

TaskHandle_t TaskHandle_Receive = NULL;
TaskHandle_t TaskHandle_Transmit = NULL;
TaskHandle_t TaskHandle_Transmission = NULL;
TaskHandle_t TaskHandle_LowPrioTasks = NULL;
TaskHandle_t TaskHandle_OneLoopTask = NULL;
xTimerHandle TimerHandle_Transmission = NULL;

boolean_T wachdog_reset[2] = {0};

uint8_t delay_for_transmitting = 100; //ms
uint8_t delay_for_lowPrioTasks = 100; //ms
uint16_t runtime_for_transmission = 600; //ms
uint16_t clutch_STW_threshold = 4900; //mV

boolean_T TransmissionTask_Stop = 0;

boolean_T oneloopmode = 0; //const?

extern boolean_T shiftDownInterrupt;
extern boolean_T shiftUpInterrupt;

uint8_t test1 =0,test2 =0;
boolean_T transActive = 0;

void Task_Transmission (void *p)
{
	while(1)
	{
		transActive=1;

	      //Run Brakelight Task (if braking during shifting)
		  FUNC_Brakelight();

		  //Safety
		  FUNC_Safety();

		  //Start Transmission Calculation and send Data
		  FUNC_Transmission();

		  //Set Outputs from Transmission Calculation
		  FUNC_OutputData();
		  CAN_1_Transmit(); //Vllt unnötig
		  CAN_2_Transmit();
		  IOPort_setDOUTS();
		  IOPort_setPWMOUTS();

		  //Read Inputs for next Calculation
		  CAN_1_Receive();
		  CAN_2_Receive();
		  IOPort_readAINS();
		  IOPort_readDINS();

		  if(shiftDownInterrupt | shiftUpInterrupt)
		  {
			  VCU_DW.VAR_IN_STW_shift_up_request = DIGITAL_IO_GetInput(&Signal_UpShift);
			  VCU_DW.VAR_IN_STW_shift_down_request = DIGITAL_IO_GetInput(&Signal_DownShift);
		  }
		  FUNC_InputData();

		  //Reset if clutch is pressed
		  if((*canData.STW_shift_up_request == 1) | (*canData.STW_shift_down_request == 1) | (*IOportData.x_clutch_STW < clutch_STW_threshold) | shiftDownInterrupt | shiftUpInterrupt | *canData.LC_dash_bit)
		  {
			  Watchdog_Reset();
			  xTimerReset(TimerHandle_Transmission,0);
		  }
		  if(TransmissionTask_Stop)
		  {
			  transActive = 0;
			  TransmissionTask_Stop = 0;
			  vTaskSuspend(TaskHandle_Transmission);
		  }
	}
}

void Task_Transmit (void *p)
{
	while(1)
	{
		  //Simulink
		  FUNC_OutputData();

		  //CAN
		  CAN_1_Transmit();
		  CAN_2_Transmit();

		  //IOPort
		  IOPort_setDOUTS();
		  IOPort_setPWMOUTS();

		  //Watchdog
		  wachdog_reset[1] = 1;

		  //TaskHandler Delay
		  vTaskDelay(pdMS_TO_TICKS(delay_for_transmitting));
	}
}

void Task_Reveive (void *p)
{
	while(1)
	{
		 test1 = DIGITAL_IO_GetInput(&Signal_UpShift);
		 test2 =  DIGITAL_IO_GetInput(&Signal_DownShift);

		  //CAN
		  CAN_1_Receive();
		  CAN_2_Receive();

		  //IOPort
		  IOPort_readDINS();
		  IOPort_readAINS();

		  //Simulink
		  FUNC_InputData();

		  //Reset Watchdog
		  if(wachdog_reset[0] & wachdog_reset[1])
		  {
			  Watchdog_Reset();

			  wachdog_reset[0]=0;
			  wachdog_reset[1]=0;
		  }

		  //Start Transmission-Task if shift up or down request occurs
		  if((*canData.STW_shift_up_request == 1) | (*canData.STW_shift_down_request == 1) | (*IOportData.x_clutch_STW < clutch_STW_threshold) | shiftDownInterrupt | shiftUpInterrupt | *canData.LC_dash_bit)
		  {
			  if(shiftDownInterrupt)
			  {
				  VCU_DW.VAR_IN_STW_shift_down_request = 1;
			  }
			  else if(shiftUpInterrupt)
			  {
				  VCU_DW.VAR_IN_STW_shift_up_request = 1;
			  }
			  xTimerReset(TimerHandle_Transmission,0);
			  vTaskResume(TaskHandle_Transmission);
		  }
	}
}

void Task_LowPrioTask (void *p)
{
	while(1)
	{
		//Simulink
		FUNC_PumpAndFans();
		FUNC_Brakelight();
		FUNC_Safety();

		//Watchdog
		wachdog_reset[0] = 1;

		//TaskHandler Delay
		vTaskDelay(pdMS_TO_TICKS(delay_for_lowPrioTasks));
	}
}

void Task_OneLoop(void *p)
//Backup-Task which runs everything in one loop
{
	while(1)
	{
		  //CAN
		  CAN_1_Receive();
		  CAN_2_Receive();

		  //IOPort
		  IOPort_readDINS();
		  IOPort_readAINS();

		  //Simulink
		  FUNC_InputData();
		  FUNC_Transmission();
		  FUNC_PumpAndFans();
		  FUNC_Brakelight();
		  FUNC_OutputData();
		  FUNC_Safety();

		   //CAN
		   CAN_1_Transmit();
		   CAN_2_Transmit();

		   //IOPort
		   IOPort_setDOUTS();
		   IOPort_setPWMOUTS();

		  //Reset Watchdog
		  Watchdog_Reset();
	}
}

static void vCallback_SuspendTransmission(xTimerHandle pxTimer)
{
	  shiftDownInterrupt = 0;
	  shiftUpInterrupt = 0;
	  TransmissionTask_Stop = 1;
	 //vTaskSuspend(TaskHandle_Transmission);
	 //xTimerStop(TimerHandle_Transmission, 0);
}

void RTOS_Handling_ini()
{
	shiftDownInterrupt = 0;
	shiftUpInterrupt = 0;

	  xTaskCreate(Task_Reveive, "Task_Reveive", 200, (void*) 0, tskIDLE_PRIORITY + 0, &TaskHandle_Receive);
	  xTaskCreate(Task_LowPrioTask, "Task_LowPrioTask", 200, (void*) 0, tskIDLE_PRIORITY + 1, &TaskHandle_LowPrioTasks);
	  xTaskCreate(Task_Transmit, "Task_Transmit", 200, (void*) 0, tskIDLE_PRIORITY + 2, &TaskHandle_Transmit);
	  xTaskCreate(Task_Transmission, "Task_Transmission", 200, (void*) 0, tskIDLE_PRIORITY + 3, &TaskHandle_Transmission);
	  xTaskCreate(Task_OneLoop, "Task_OneLoopTask", 200, (void*) 0, tskIDLE_PRIORITY + 4, &TaskHandle_OneLoopTask);

	  TimerHandle_Transmission = xTimerCreate("Timer_Transmission", pdMS_TO_TICKS(runtime_for_transmission), pdFALSE, (void*) 0, vCallback_SuspendTransmission);

	  vTaskSuspend(TaskHandle_OneLoopTask);
	  vTaskSuspend(TaskHandle_Transmission);

	  //run one loop task if one-loop-mode is active
	  if(oneloopmode)
	  {
		  vTaskSuspend(TaskHandle_Transmit);
		  vTaskSuspend(TaskHandle_LowPrioTasks);
		  vTaskSuspend(TaskHandle_Receive);

		  vTaskResume(TaskHandle_OneLoopTask);
	  }

	  vTaskStartScheduler();
}
