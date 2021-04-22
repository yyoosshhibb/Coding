#include "TR_management.h"

TR_t LED1;
TR_t LED2;
TR_t LED3;
TR_t LED4;
//TR_t TR_Water_Fan;
//TR_t TR_IC_Fan;
//TR_t TR_Starter;




osThreadId_t id_task_LED1;
osThreadId_t id_task_LED2;
osThreadId_t id_task_LED3;
osThreadId_t id_task_LED4;


void TR_Init(){
#ifdef HW_ELB
//////////////////////////////////////////////////////////////////////////////////////////	
////////////////////////////////////WATER FAN CARACTERISTICS//////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////	
	TR_Water_Fan.CTRL_PIN = TR1_PIN;
	TR_Water_Fan.PORT = TR1_PORT;
	TR_Water_Fan.PWM_CHANNEL = TIM_CHANNEL_2;
	TR_Water_Fan.htim = &htim4;
	
	TR_Water_Fan.Sensor = EXT_SENSOR;
	TR_Water_Fan.fault_threshold = 0;
	TR_Water_Fan.dki = 0.255;
	TR_Water_Fan.Is0 = 500;

	TR_Water_Fan.N_Current_lim_state = CURRENT_LIM_DISABLE;
	TR_Water_Fan.N_Current_lim = 0;	
	TR_Water_Fan.N_OC_time = 0;
	TR_Water_Fan.N_Retry_Nb = 3;
	TR_Water_Fan.N_Retry_time = 2000;

	TR_Water_Fan.Inrush_Period = 2000;
	TR_Water_Fan.I_Current_lim_state = CURRENT_LIM_DISABLE;
	TR_Water_Fan.I_Current_lim = 0;	
	TR_Water_Fan.I_OC_time = 0;
	TR_Water_Fan.I_Retry_Nb = 3;
	TR_Water_Fan.I_Retry_time = 1000;

//	TR_Water_Fan.Sens_Val = &(ADC_3.Filtered_Value);
//	TR_Water_Fan.CMD	= (&(Water_Fan.CAN_data));
	
	//PWM sweep parameters
	
	TR_Water_Fan.Duty_cycle_state = 1;
	TR_Water_Fan.Start_duty_cycle = 0;
	TR_Water_Fan.Start_duration = 1000;
	
	TR_Water_Fan.Timeout_State = 1;
	TR_Water_Fan.Timeout_Duty_cycle = 50;
	TR_Water_Fan.Timeout_Delay = 5000;
	
//////////////////////////////////////////////////////////////////////////////////////////	
////////////////////////////////////IC FAN CARACTERISTICS/////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////	
	TR_IC_Fan.CTRL_PIN = TR2_PIN;
	TR_IC_Fan.PORT = TR2_PORT;
	TR_IC_Fan.PWM_CHANNEL = TIM_CHANNEL_1;
	TR_IC_Fan.htim = &htim4;
	
	TR_IC_Fan.Sensor = EXT_SENSOR;
	TR_IC_Fan.fault_threshold = 0;
	TR_IC_Fan.dki = 0.255;
	TR_IC_Fan.Is0 = 500;	
	
	TR_IC_Fan.N_Current_lim_state = CURRENT_LIM_DISABLE;
	TR_IC_Fan.N_Current_lim = 0;	
	TR_IC_Fan.N_OC_time = 0;
	TR_IC_Fan.N_Retry_Nb = 3;
	TR_IC_Fan.N_Retry_time = 1000;
	
	TR_IC_Fan.Inrush_Period = 2000;
	TR_IC_Fan.I_Current_lim_state = CURRENT_LIM_DISABLE;
	TR_IC_Fan.I_Current_lim = 0;	
	TR_IC_Fan.I_OC_time = 0;
	TR_IC_Fan.I_Retry_Nb = 3;
	TR_IC_Fan.I_Retry_time = 3000;

//	TR_IC_Fan.Sens_Val = &(ADC_4.Filtered_Value);
//	TR_IC_Fan.CMD = (&(IC_Fan.CAN_data));
	
		//PWM sweep parameters
	
	TR_IC_Fan.Duty_cycle_state = 1;				// 0=disable; 1=enable
	TR_IC_Fan.Start_duty_cycle = 0;
	TR_IC_Fan.Start_duration = 1000;
	
	TR_IC_Fan.Timeout_State = 0;
	TR_IC_Fan.Timeout_Duty_cycle = 0;
	TR_IC_Fan.Timeout_Delay = 5000;

//////////////////////////////////////////////////////////////////////////////////////////	
////////////////////////////////////STARTER CARACTERISTICS////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////	
	TR_Starter.CTRL_PIN = TR3_PIN;
	TR_Starter.PORT = TR3_PORT;
	
	TR_Starter.Sensor = EXT_SENSOR;
	TR_Starter.fault_threshold = 0;
	TR_Starter.dki = 0.255;
	TR_Starter.Is0 = 500;	
	
	TR_Starter.N_Current_lim_state = CURRENT_LIM_DISABLE;
	TR_Starter.N_Current_lim = 0;
	TR_Starter.N_OC_time = 0;	
	TR_Starter.N_Retry_Nb = 3;
	TR_Starter.N_Retry_time = 3000;

	TR_Starter.Inrush_Period = 2000;
	TR_Starter.I_Current_lim_state = CURRENT_LIM_DISABLE;
	TR_Starter.I_Current_lim = 0;
	TR_Starter.I_OC_time = 0;	
	TR_Starter.I_Retry_Nb = 3;
	TR_Starter.I_Retry_time = 1000;

	//TR_Starter.Sens_Val = &(ADC_5.Filtered_Value);
	//TR_Starter.CMD = (&(Starter.CAN_data));
	
	TR_Starter.Duty_cycle_state = 0;
	
	TR_Starter.Timeout_State = 0;				//CAN timeout value
	TR_Starter.Timeout_Delay = 1000;		//CAN timeout def.

			/*##### FLAGS TO START THE TASKS #####*/
	osThreadFlagsSet(id_task_LED1,FLAG_TR_CONFIG_READY);
	osThreadFlagsSet(id_task_LED2,FLAG_TR_CONFIG_READY);
	osThreadFlagsSet(id_task_LED3,FLAG_TR_CONFIG_READY);
#endif

#ifdef HW_R5_ELB
//////////////////////////////////////////////////////////////////////////////////////////	
////////////////////////////////////WATER FAN CARACTERISTICS//////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////
	TR_Water_Fan_R5.CTRL_PIN = TR_WF_PIN;
	TR_Water_Fan_R5.PORT = TR_WF_PORT;
	TR_Water_Fan_R5.PWM_CHANNEL = TIM_CHANNEL_1;
	TR_Water_Fan_R5.htim = &htim4;
	
	TR_Water_Fan_R5.Sensor = EXT_SENSOR;
	TR_Water_Fan_R5.fault_threshold = 0;
	TR_Water_Fan_R5.dki = 0.025;
	TR_Water_Fan_R5.Is0 = 500;

	TR_Water_Fan_R5.N_Current_lim_state = CURRENT_LIM_ENABLE;
	TR_Water_Fan_R5.N_Current_lim = 50;	
	TR_Water_Fan_R5.N_OC_time = 100;
	TR_Water_Fan_R5.N_Retry_Nb = 3;
	TR_Water_Fan_R5.N_Retry_time = 3000;

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
	TR_Water_Fan_R5.Start_duration = 1000;
	
	TR_Water_Fan_R5.Timeout_State = 1;
	TR_Water_Fan_R5.Timeout_Duty_cycle = 100;
	TR_Water_Fan_R5.Timeout_Delay = 5000;

	Brushless_PWM = 60;
	
	Set_DutyCycle(&htim12,TIM_CHANNEL_1,Brushless_PWM);
	
	osThreadFlagsSet(id_task_TR_WF,FLAG_TR_CONFIG_READY);
#endif

#if USE_WATER_SPLASH
//////////////////////////////////////////////////////////////////////////////////////////	
////////////////////////////////////WATER SPLASH CARACTERISTICS///////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////
	TR_Water_Splash.PWM_CHANNEL = TIM_CHANNEL_1;
	TR_Water_Splash.htim = &htim1;
					 
	TR_Water_Splash.CMD	= (&(Water_Splash.CAN_data));
					 
	TR_Water_Splash.Timeout_Delay = 2000;	
	
	osThreadFlagsSet(id_task_TR_WS,FLAG_TR_CONFIG_READY);
#endif
}

void TR_Inrush_Strategy(TR_t *TR, TR_Fault_t *Fault_state, uint16_t *Duty_cycle, uint16_t *Duty_loopNB, uint8_t *RetryNB, uint32_t *Start_Time, uint16_t *V_range){
	
	TR->Current = (uint16_t)((((((float)**(TR->Sens_Val))*(*V_range)/4096)-TR->Is0))*TR->dki);		//Transistor current value calculation 
	TR->Diag.State = TR_INRUSH;

	if(((((float)**(TR->Sens_Val))*(*V_range)/4096) >= (TR->fault_threshold))&&(TR->Sensor == SMARTSWITCH)){		//check if we have a fault state on the sense pin
		
		HAL_GPIO_WritePin(TR->PORT,TR->CTRL_PIN,GPIO_PIN_RESET);												//Disable transistor in setting pin to low
		*Fault_state = FAULT_STATE;																											//set the fault state to fault
		TR->Diag.Fault = FAULT_STATE;                                                   //set the fault state to fault		
		TR->Diag.State = TR_OFF;
		
#if USE_PWM
		Set_DutyCycle(TR->htim,TR->PWM_CHANNEL,0);
		*Duty_cycle = 0;
#endif
		
		osDelay_ms(TR->I_Retry_time);																						//wait for the defined time to let current flow and discharging transistor
		*RetryNB = *RetryNB+1;																									//add +1 to the retry number
		TR->Diag.State = TR_OFF;
	}
	
	else if((((float)**(TR->Sens_Val))>30)&&(TR->I_Current_lim_state == CURRENT_LIM_ENABLE)&&((TR->Current/10) >= TR->I_Current_lim)){
		
		for(int i=0; i<(TR->I_OC_time/10); i++){																										//using a for loop to refresh easier the current reading, otherwise current locked to first value read
		osDelay_ms(10);																																							//wait during the defined time to be sure the overcurrent is still here (filtering peaks)
		TR->Current = (uint16_t)((((((float)**(TR->Sens_Val))*(*V_range)/4096)-TR->Is0))*TR->dki);				//Transistor current value calculation 
		}
		
		if(((TR->Current/10) >= TR->I_Current_lim)){	//if overcurrent still here :
			
		HAL_GPIO_WritePin(TR->PORT,TR->CTRL_PIN,GPIO_PIN_RESET);																//set transistor off
		*Fault_state = OVERCURRENT;																															//set fault state to overcurrent
		TR->Diag.Fault = OVERCURRENT;                                                           //set fault state to overcurrent			
		TR->Diag.State = TR_OFF;																																//set global state to OFF
		osDelay_ms(TR->I_Retry_time);																														//wait for the defined time to let current flow and discharging transistor
		*RetryNB = *RetryNB+1;                                   																//add +1 to the retry number
		TR->Diag.State = TR_OFF;
		}
	}
	
	if((*Fault_state != NO_FAULT)&&(*RetryNB<TR->I_Retry_Nb)){   //if we are in fault mode and retry number not reached limit then switch on again
	
	osDelay(1);																	 							//least time necessary to reset transistor
		
#if USE_PWM
	Set_DutyCycle(TR->htim,TR->PWM_CHANNEL,0);
	*Duty_cycle = 0;
#endif
	
  *Start_Time = Timer_ms;																		//Start the inrush timer for the restart
	HAL_GPIO_WritePin(TR->PORT,TR->CTRL_PIN,GPIO_PIN_SET);		//put the pin high to activate again
	TR->Diag.State = TR_INRUSH;
	*Fault_state = NO_FAULT;																 	//RESET fault state
	*Duty_loopNB = 0;
		
	}
	
}

void TR_Normal_Strategy(TR_t *TR, TR_Fault_t *Fault_state, uint16_t *Duty_cycle, uint16_t *Duty_loopNB, uint8_t *RetryNB, uint32_t *Start_Time, uint16_t *V_range){
	
		TR->Current = (uint16_t)((((((float)**(TR->Sens_Val))*(*V_range)/4096)-TR->Is0))*TR->dki); //Transistor current value calculation 
		TR->Diag.State = TR_NORMAL;
	
	if(((((float)**(TR->Sens_Val))*(*V_range)/4096) >= (TR->fault_threshold))&&(TR->Sensor == SMARTSWITCH)){		//check if we have a fault state on the sense pin
		
		HAL_GPIO_WritePin(TR->PORT,TR->CTRL_PIN,GPIO_PIN_RESET);												//Disable transistor in setting pin to low
		*Fault_state = FAULT_STATE;																											//set the fault state to fault
		TR->Diag.Fault = FAULT_STATE;                                                   //set the fault state to fault		
		TR->Diag.State = TR_OFF;
		
#if USE_PWM
		Set_DutyCycle(TR->htim,TR->PWM_CHANNEL,0);
		*Duty_cycle = 0;
#endif
		
		osDelay_ms(TR->N_Retry_time);																						//wait for the defined time to let current flow and discharging transistor
		*RetryNB = *RetryNB+1;																									//add +1 to the retry number
		TR->Diag.State = TR_OFF;
		
	}
	
	else if((TR->N_Current_lim_state == CURRENT_LIM_ENABLE)&&((TR->Current/10) >= TR->N_Current_lim)){
		
		for(int i=0; i<(TR->N_OC_time); i++){																											//using a for loop to refresh easier the current reading, otherwise current locked to first value read
		osDelay_ms(1);																																						//wait during the defined time to be sure the overcurrent is still here (filtering peaks)
		TR->Current = (uint16_t)((((((float)**(TR->Sens_Val))*(*V_range)/4096)-TR->Is0))*TR->dki);			//Transistor current value calculation 
		}
		
		if(((TR->Current/10) >= TR->N_Current_lim)){														//if overcurrent still here :
			
		HAL_GPIO_WritePin(TR->PORT,TR->CTRL_PIN,GPIO_PIN_RESET);																//set transistor off
		*Fault_state = OVERCURRENT;																															//set fault state to overcurrent
		TR->Diag.Fault = OVERCURRENT;                                                           //set fault state to overcurrent			
		TR->Diag.State = TR_OFF;			                                                          //set global state to OFF
		osDelay_ms(TR->N_Retry_time);																														//wait for the defined time to let current flow and discharging transistor
		*RetryNB = *RetryNB+1;                                   																//add +1 to the retry number
		TR->Diag.State = TR_OFF;
		}
	}
	
	if((*Fault_state != NO_FAULT)&&(*RetryNB<TR->N_Retry_Nb)){   //if we are in fault mode and retry number not reached limit then switch on again
	
	osDelay(1);																	 							//least time necessary to reset transistor
		
#if USE_PWM
	Set_DutyCycle(TR->htim,TR->PWM_CHANNEL,0);
	*Duty_cycle = 0;
#endif
	*Start_Time = Timer_ms;	                               //Start the inrush timer for the restart
	HAL_GPIO_WritePin(TR->PORT,TR->CTRL_PIN,GPIO_PIN_SET); //put the pin high to activate again
	TR->Diag.State = TR_INRUSH;
	*Fault_state = NO_FAULT;																 //RESET fault state
	*Duty_loopNB = 0;
		
	}
	
		else if (((float)**(TR->Sens_Val))<20){
		TR->Diag.Fault = OPEN_CIRCUIT;
	}
}

void TASK_TR_FAN(TR_t *TR){
	
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
	uint16_t V_range;
	
	//check which type of sensor it is to know which range to take because of the voltage divider
	if(TR->Sensor == SMARTSWITCH){
		V_range = 6600;
	}
	else if(TR->Sensor == EXT_SENSOR){
		V_range = 5000;
	}

	osDelay(10);	//necessary to allow all the tasks to receive their flags and get started
	
	while(1){
				
	if (TR->Diag.State != TR_OFF){  //if the transistor is active we run the strategies.
		
		if (Start_Time + TR->Inrush_Period >=  Timer_ms){    //check if we are still in inrush state or not
			
			TR_Inrush_Strategy(TR,&Fault_state,&Duty_cycle,&Duty_loopNB,&I_RetryNB,&Start_Time,&V_range);  //if inrush state we run inrush strategy (differents thresholds)
			
		}
		else {
			
		TR_Normal_Strategy(TR,&Fault_state,&Duty_cycle,&Duty_loopNB,&N_RetryNB,&Start_Time,&V_range);    //else is normal strategy with normal running thresholds
			
		}

	}

	if (CAN_RX_Delay <= TR->Timeout_Delay){
		
			if(((*(TR->CMD)) == 1)&&(N_RetryNB<TR->N_Retry_Nb)&&(I_RetryNB<TR->I_Retry_Nb)){
				
				if(TR->Diag.State == TR_OFF){
				Start_Time = Timer_ms;																	//get the time when the transistor is set ON
				HAL_GPIO_WritePin(TR->PORT,TR->CTRL_PIN,GPIO_PIN_SET);  //set the TR pin on
				TR->Diag.Fault = NO_FAULT;
				TR->Diag.State = TR_INRUSH;
				}
			osDelay(10);
				
	#if USE_PWM
				if ((Duty_cycle<101)&&(TR->Duty_cycle_state == 1)){
				Duty_cycle = TR->Start_duty_cycle + ((Duty_loopNB*1000/(TR->Start_duration)));
					if(Duty_cycle>101){
						Duty_cycle=101;
					}
				osDelay_ms(10);
				Duty_loopNB++;
				Set_DutyCycle(TR->htim,TR->PWM_CHANNEL,Duty_cycle+1);
			}
	#endif
		}
			
			else if((*(TR->CMD)) == 0){
			
				if(TR->Diag.State != TR_OFF){
				HAL_GPIO_WritePin(TR->PORT,TR->CTRL_PIN,GPIO_PIN_RESET); 	//set the TR pin off
					
		#if USE_PWM
					if(TR->Duty_cycle_state == 1){
						Set_DutyCycle(TR->htim,TR->PWM_CHANNEL,0);
					}			
				Duty_cycle = 0;
		#endif																				 

			}
			TR->Diag.State = TR_OFF;
			TR->Diag.Fault = NO_FAULT;
			osDelay(10);
			TR->Current = 0;
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
			HAL_GPIO_WritePin(TR->PORT,TR->CTRL_PIN,GPIO_PIN_SET);  //set the TR pin on 
			TR->Diag.State = TR_NORMAL;
		
		#if USE_PWM
			Set_DutyCycle(TR->htim, TR->PWM_CHANNEL,TR->Timeout_Duty_cycle+1);
			Duty_cycle = TR->Timeout_Duty_cycle;
			Duty_loopNB = ((Duty_cycle - TR->Start_duty_cycle)*TR->Start_duration)/1000;
		#endif
		}
		
		else{
			HAL_GPIO_WritePin(TR->PORT,TR->CTRL_PIN,GPIO_PIN_RESET);
			TR->Diag.State = TR_OFF;
			
		#if USE_PWM
			Set_DutyCycle(TR->htim, TR->PWM_CHANNEL,0);
			Duty_cycle = 0;
			Duty_loopNB = 0;
		#endif
		}
		TR->Diag.Fault = TIMEOUT_FAULT;
		
	}
	HAL_IWDG_Refresh(&hiwdg);
}
}

void TASK_TR_WS(TR_t *TR){
	
////////////////////////TASK PARAMETERS/////////////////////
	osStatus_t status;
	int send_status;
////////////////////////////////////////////////////////////
	
	osThreadFlagsWait(FLAG_GPIO_CONFIG_READY,osFlagsWaitAll,osWaitForever);
	osThreadFlagsWait(FLAG_TR_CONFIG_READY,osFlagsWaitAll,osWaitForever); //wait for the configuration before starting task
	
	while(1){

	if (CAN_RX_Delay <= TR->Timeout_Delay){
		
			if((*(TR->CMD)) == 1){
				Set_DutyCycle(TR->htim,TR->PWM_CHANNEL,70);
				osDelay(10);
		}
			
			else if((*(TR->CMD)) == 0){
				Set_DutyCycle(TR->htim,TR->PWM_CHANNEL,30);
				osDelay(10);
		}
			
			else
				osDelay(10);
		
	}

	else if (CAN_RX_Delay>=TR->Timeout_Delay){
		
		Set_DutyCycle(TR->htim, TR->PWM_CHANNEL,30);
		osDelay(10);
		
	}
	HAL_IWDG_Refresh(&hiwdg);
}
}