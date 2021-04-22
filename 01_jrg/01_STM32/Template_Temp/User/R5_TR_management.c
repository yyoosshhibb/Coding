#include "TR_management.h"

R5_TR_t TR_Water_Fan_R5;

osThreadId_t id_task_TR_WF;

void R5_TR_Init(void){
//////////////////////////////////////////////////////////////////////////////////////////	
////////////////////////////////////WATER FAN CARACTERISTICS//////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////	
	TR_Water_Fan_R5.PWM_CHANNEL = TIM_CHANNEL_2;
	TR_Water_Fan_R5.htim = &htim4;
	
	TR_Water_Fan_R5.fault_threshold = 4000;
	TR_Water_Fan_R5.dki = 0.852;
	TR_Water_Fan_R5.Is0 = 1;

	TR_Water_Fan_R5.N_Current_lim_state = CURRENT_LIM_DISABLE;
	TR_Water_Fan_R5.N_Current_lim = 0;	
	TR_Water_Fan_R5.N_OC_time = 0;
	TR_Water_Fan_R5.N_Retry_Nb = 3;
	TR_Water_Fan_R5.N_Retry_time = 1000;

	TR_Water_Fan_R5.Inrush_Period = 2000;
	TR_Water_Fan_R5.I_Current_lim_state = CURRENT_LIM_DISABLE;
	TR_Water_Fan_R5.I_Current_lim = 0;	
	TR_Water_Fan_R5.I_OC_time = 0;
	TR_Water_Fan_R5.I_Retry_Nb = 3;
	TR_Water_Fan_R5.I_Retry_time = 1000;

	TR_Water_Fan_R5.Sens_Val = &(ADC_1.Filtered_Value);
	TR_Water_Fan_R5.CMD	= (&(Water_Fan_R5.CAN_data));
	
	TR_Water_Fan_R5.Duty_cycle_state = 1;
	TR_Water_Fan_R5.Start_duty_cycle = 0;
	TR_Water_Fan_R5.Start_duration = 4000;
	
	TR_Water_Fan_R5.Timeout_State = 1;
	TR_Water_Fan_R5.Timeout_Duty_cycle = 500;
	TR_Water_Fan_R5.Timeout_Delay = 5000;	
	
	osThreadFlagsSet(id_task_TR_WF,FLAG_TR_CONFIG_READY);
}

void TR_Inrush_Strategy_R5(R5_TR_t *TR, TR_Fault_t *Fault_state, uint16_t *Duty_cycle, uint16_t *Duty_loopNB, uint8_t *RetryNB, uint32_t *Start_Time){
	
	TR->Current = (uint16_t)((((((float)**(TR->Sens_Val))*6600/4096)-TR->Is0))*TR->dki);		//Transistor current value calculation 
	TR->Diag.State = TR_INRUSH;
	
	if((((float)**(TR->Sens_Val))*6600/4096) >= (TR->fault_threshold)){		//check if we have a fault state on the sense pin
		
		//osDelay(TR->Retry_time);																											//wait for some time because the transistor is off anyway
		__HAL_TIM_SET_COMPARE(&htim4,TR->PWM_CHANNEL,0);																//Disable transistor in setting pin to low
		*Fault_state = FAULT_STATE;																											//set the fault state to fault
		TR->Diag.Fault = FAULT_STATE;                                                   //set the fault state to fault		
		TR->Diag.State = TR_OFF;
		
		osDelay_ms(TR->I_Retry_time);																						//wait for the defined time to let current flow and discharging transistor
		*RetryNB = *RetryNB+1;																									//add +1 to the retry number
		TR->Diag.State = TR_OFF;
		*Duty_cycle = 0;
		
	}
	
	else if((((float)**(TR->Sens_Val))>30)&&(TR->I_Current_lim_state == CURRENT_LIM_ENABLE)&&((TR->Current/10) >= TR->I_Current_lim)&&((((float)**(TR->Sens_Val))*6600/4096) < TR->fault_threshold)){
		
		for(int i=0; i<(TR->I_OC_time/10); i++){																										//using a for loop to refresh easier the current reading, otherwise current locked to first value read
		osDelay_ms(10);																																							//wait during the defined time to be sure the overcurrent is still here (filtering peaks)
		TR->Current = (uint16_t)((((((float)**(TR->Sens_Val))*6600/4096)-TR->Is0))*TR->dki);				//Transistor current value calculation 
		}
		
		if(((TR->Current/10) >= TR->I_Current_lim)&&((((float)**(TR->Sens_Val))*6600/4096) < TR->fault_threshold)){	//if overcurrent still here :
			
		__HAL_TIM_SET_COMPARE(&htim4,TR->PWM_CHANNEL,0);																				//set transistor off
		*Fault_state = OVERCURRENT;																															//set fault state to overcurrent
		TR->Diag.Fault = OVERCURRENT;                                                           //set fault state to overcurrent			
		TR->Diag.State = TR_OFF;																																//set global state to OFF
		osDelay_ms(TR->I_Retry_time);																														//wait for the defined time to let current flow and discharging transistor
		*RetryNB = *RetryNB+1;                                   																//add +1 to the retry number
		TR->Diag.State = TR_OFF;
		*Duty_cycle = 0;
			
		}
	}
	
	if((*Fault_state != NO_FAULT)&&(*RetryNB<TR->I_Retry_Nb)){   //if we are in fault mode and retry number not reached limit then switch on again
	
	osDelay(1);																	 							//least time necessary to reset transistor
	
  *Start_Time = Timer_ms;																		//Start the inrush timer for the restart
	TR->Diag.State = TR_INRUSH;
	*Fault_state = NO_FAULT;																 	//RESET fault state
	*Duty_loopNB = 0;
		
	}
	
}

void TR_Normal_Strategy_R5(R5_TR_t *TR, TR_Fault_t *Fault_state, uint16_t *Duty_cycle, uint16_t *Duty_loopNB, uint8_t *RetryNB, uint32_t *Start_Time){
	
		TR->Current = (uint16_t)((((((float)**(TR->Sens_Val))*6600/4096)-TR->Is0))*TR->dki); //Transistor current value calculation 
		TR->Diag.State = TR_NORMAL;
	
	if((((float)**(TR->Sens_Val))*6600/4096) >= (TR->fault_threshold)){		//check if we have a fault state on the sense pin
		
		//osDelay_ms(TR->Retry_time);																										//wait for some time because the transistor is off anyway
		__HAL_TIM_SET_COMPARE(&htim4,TR->PWM_CHANNEL,0);																//Disable transistor in setting pin to low
		*Fault_state = FAULT_STATE;																											//set the fault state to fault
		TR->Diag.Fault = FAULT_STATE;                                                   //set the fault state to fault		
		TR->Diag.State = TR_OFF;
		*Duty_cycle = 0;
		
		osDelay_ms(TR->N_Retry_time);																						//wait for the defined time to let current flow and discharging transistor
		*RetryNB = *RetryNB+1;																									//add +1 to the retry number
		TR->Diag.State = TR_OFF;
		
	}
	
	else if((TR->N_Current_lim_state == CURRENT_LIM_ENABLE)&&((TR->Current/10) >= TR->N_Current_lim)&&((((float)**(TR->Sens_Val))*6600/4096) < TR->fault_threshold)){
		
		for(int i=0; i<(TR->N_OC_time); i++){																											//using a for loop to refresh easier the current reading, otherwise current locked to first value read
		osDelay_ms(1);																																						//wait during the defined time to be sure the overcurrent is still here (filtering peaks)
		TR->Current = (uint16_t)((((((float)**(TR->Sens_Val))*6600/4096)-TR->Is0))*TR->dki);			//Transistor current value calculation 
		}
		
		if(((TR->Current/10) >= TR->N_Current_lim)&&((((float)**(TR->Sens_Val))*6600/4096) < TR->fault_threshold)){	//if overcurrent still here :
			
		__HAL_TIM_SET_COMPARE(&htim4,TR->PWM_CHANNEL,0);																				//set transistor off
		*Fault_state = OVERCURRENT;																															//set fault state to overcurrent
		TR->Diag.Fault = OVERCURRENT;                                                           //set fault state to overcurrent			
		TR->Diag.State = TR_OFF;			                                                          //set global state to OFF
		osDelay_ms(TR->N_Retry_time);																														//wait for the defined time to let current flow and discharging transistor
		*RetryNB = *RetryNB+1;                                   																//add +1 to the retry number
		TR->Diag.State = TR_OFF;
		*Duty_cycle = 0;			
		}
	}
	
	if((*Fault_state != NO_FAULT)&&(*RetryNB<TR->N_Retry_Nb)){   //if we are in fault mode and retry number not reached limit then switch on again
	
	osDelay(1);																	 							//least time necessary to reset transistor
		
	*Start_Time = Timer_ms;	                               //Start the inrush timer for the restart
	TR->Diag.State = TR_INRUSH;
	*Fault_state = NO_FAULT;																 //RESET fault state
	*Duty_loopNB = 0;
	}
	
	else if (((float)**(TR->Sens_Val))<20){
	TR->Diag.Fault = OPEN_CIRCUIT;
	}
}

void TASK_TR_R5(R5_TR_t *TR){
	
////////////////////////TASK PARAMETERS/////////////////////
	osStatus_t status;
	int send_status;
////////////////////////////////////////////////////////////
	
	osThreadFlagsWait(FLAG_GPIO_CONFIG_READY,osFlagsWaitAll,osWaitForever);
	osThreadFlagsWait(FLAG_TR_CONFIG_READY,osFlagsWaitAll,osWaitForever); //wait for the configuration before starting task
	osThreadFlagsWait(FLAG_ANA_CONFIG_READY,osFlagsWaitAll,osWaitForever);
	
	uint8_t N_RetryNB = 0;
	uint8_t I_RetryNB = 0;
  TR_Fault_t Fault_state = NO_FAULT;
	uint16_t Duty_cycle = 0;
	uint16_t Duty_loopNB = 0;
	uint32_t Start_Time = 0;

	osDelay(10);	//necessary to allow all the tasks to receive their flags and get started
	
while(1){
				
	if (TR->Diag.State != TR_OFF){  //if the transistor is active we run the strategies.
		
		if (Start_Time + TR->Inrush_Period >=  Timer_ms){    //check if we are still in inrush state or not
			
		TR_Inrush_Strategy_R5(TR,&Fault_state,&Duty_cycle,&Duty_loopNB,&I_RetryNB,&Start_Time);  //if inrush state we run inrush strategy (differents thresholds)
			
		}
		else {
			
		TR_Normal_Strategy_R5(TR,&Fault_state,&Duty_cycle,&Duty_loopNB,&N_RetryNB,&Start_Time);    //else is normal strategy with normal running thresholds
			
		}

	}

	if (CAN_RX_Delay <= TR->Timeout_Delay){
		
			if(((*(TR->CMD)) == 1)&&(N_RetryNB<TR->N_Retry_Nb)&&(I_RetryNB<TR->I_Retry_Nb)){
				
				if(TR->Diag.State == TR_OFF){
				Start_Time = Timer_ms;																	//get the time when the transistor is set ON
				TR->Diag.Fault = NO_FAULT;
				TR->Diag.State = TR_INRUSH;
				}
				osDelay(10);
				
				if ((Duty_cycle<1000)&&(TR->Duty_cycle_state == 1)){
				Duty_cycle = TR->Start_duty_cycle + ((Duty_loopNB*10000/(TR->Start_duration)));
					if(Duty_cycle>1000){
						Duty_cycle=1000;
					}
				osDelay(10);
				Duty_loopNB++;
				__HAL_TIM_SET_COMPARE(&htim4,TR->PWM_CHANNEL,Duty_cycle);
				}
				
				else if (TR->Duty_cycle_state == 0){
					__HAL_TIM_SET_COMPARE(&htim4,TR->PWM_CHANNEL,1000);
				}
			}
			
			else if((*(TR->CMD)) == 0){
			
				if(TR->Diag.State != TR_OFF){
				__HAL_TIM_SET_COMPARE(&htim4,TR->PWM_CHANNEL,0); 	//set the TR pin off
				Duty_cycle = 0;																				 
				}
				
			TR->Diag.State = TR_OFF;
			TR->Current = 0;
			osDelay(10);
			N_RetryNB = 0;								//only way to reset transistor after a number of retry is making a hard reset by asking low and high again
			I_RetryNB = 0;
			Duty_loopNB = 0;
			}
			
			else
			osDelay(10);
		
	}

	else if (CAN_RX_Delay>=TR->Timeout_Delay){
		
		osDelay(10);
		
		if (TR->Timeout_State == 1){
				__HAL_TIM_SET_COMPARE(&htim4,TR->PWM_CHANNEL,(TR->Timeout_Duty_cycle));  //set the TR pin on 
				TR->Diag.State = TR_NORMAL;
		}
		
		else{
			__HAL_TIM_SET_COMPARE(&htim4,TR->PWM_CHANNEL,0);
			TR->Diag.State = TR_OFF;
		}
	}
	HAL_IWDG_Refresh(&hiwdg);
}
}