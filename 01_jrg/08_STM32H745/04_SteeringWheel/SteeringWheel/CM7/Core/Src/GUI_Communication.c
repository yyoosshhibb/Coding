#include "GUI_Communication.h"

osMessageQueueId_t 	Q_send_GUI;
GUIMessage_t				msg_send_gui;


void SendToGUI()
{	
	int StartScreen=1;
	Q_send_GUI = osMessageQueueNew(10,sizeof(GUIMessage_t),NULL);
	uint8_t priority;
	uint32_t CAN_Error;
	int i;
	
	msg_send_gui.pageno = 0;

	msg_send_gui.Homedata.VoltageHV = &U_HV_Bat.Value;
	msg_send_gui.Homedata.TempHV = &T_HV_Cell[1].Value;
	msg_send_gui.Homedata.TSState = &TS_State.CAN_data;
	msg_send_gui.Homedata.TWater = &T_Water.Value;
	
	msg_send_gui.Batterydata.dutyFAN = &d_FAN_HV_Bat.Value;
	msg_send_gui.Batterydata.SoC = &SoC_HV_Bat.Value;
	msg_send_gui.Batterydata.PCM_State = &PCM_State.Value;
	
	msg_send_gui.Electricsdata.I_LVS = &I_LV_Bat.Value;
	//msg_send_gui.Electricsdata.Comm
	msg_send_gui.Electricsdata.TVCU = &T_VCU.Value;
	
	msg_send_gui.Electricsdata.LVS_Errors = &Error_LVS.CAN_data;
	msg_send_gui.Electricsdata.I_MV_Bat = &I_MV_Bat.Value;
	
	msg_send_gui.Suspensiondata.StWAngle = &a_STWheel.Value;

	for(i=0; i<2; i++)
	{
		msg_send_gui.Batterydata.UCells[i] = &U_HV_Cell[i].Value;
		
		msg_send_gui.Electricsdata.T_LV_Cells[i] = &T_LV_Cells[i].Value;
		
		msg_send_gui.Suspensiondata.APPS[i] = &APPS[i].Value;
	}

	for(i=0; i<3; i++)
	{
		msg_send_gui.Batterydata.TCells[i] = &T_HV_Cell[i].Value;
		
		msg_send_gui.Suspensiondata.Ridehight[i] = &x_RH[i].Value;
	}

	for(i=0; i<4; i++)
	{
		msg_send_gui.Electricsdata.U_LV_Cells[i] = &U_LV_Cells[0].Value;
		
		msg_send_gui.Powertraindata.T_Inverters[i] = &T_Inv[i].Value;
		msg_send_gui.Powertraindata.T_Motors[i] = &T_Motors[i].Value;
		msg_send_gui.Powertraindata.n_Motors[i] = &n_Motors[i].Value;
		msg_send_gui.Powertraindata.Error_Inv[i] = &Error_Inv[i].Value;
		
		msg_send_gui.Suspensiondata.DamperTravel[i] = &x_DP[i].Value;
		msg_send_gui.Suspensiondata.WheelLoads[i] = &f_Loadcell[i].Value;
	}
	
	for(i=0; i<5; i++)
	{
		msg_send_gui.Electricsdata.T_MV_Cells[i] = &T_MV_Cells[0].Value;
	}
	
	for(i=0; i<8; i++)
	{
		msg_send_gui.Tiretemps.TireTempFL[i] = &T_Tire_FL[i].Value;
		msg_send_gui.Tiretemps.TireTempFR[i] = &T_Tire_FR[i].Value;
		msg_send_gui.Tiretemps.TireTempRL[i] = &T_Tire_RL[i].Value;
		msg_send_gui.Tiretemps.TireTempRR[i] = &T_Tire_RR[i].Value;
	}
	
	for(i=0; i<12; i++)
	{
		msg_send_gui.Electricsdata.U_MV_Cells[i] = &U_MV_Cells[0].Value;
	}
	
	
	while(1)
	{
		osMessageQueueGet(FDCAN_ERROR_Q, &CAN_Error,&priority,10);
		
		msg_calc();
		if(msg_send_gui.pageno < NO_GUI_PAGES){}		//everything is fine
		else
			{
				msg_send_gui.pageno = 1;
			}
			
		if((StartScreen==1)&&(Timer_ms>=1000))
		{
			msg_send_gui.pageno = 1;
			StartScreen=0;
		}
	
		osMessageQueuePut(Q_send_GUI,&msg_send_gui, 1, 0);
		osThreadFlagsWait(FLAG_UPDATE_MODEL, osFlagsWaitAll, osWaitForever);
	}
}

void msg_calc()
{
	int i;
	float temp_max=0;
	static float brakebalance, APPSValue, T_LV_Cell_avg, U_HV_Cell_avg, U_LV_Cell, delta_U_max, U_MV_Cell_min, U_MV_Cell_max;
	
	for(i=0; i<4; i++)
	{
		if(T_Inv[i].Value > temp_max) 
		{
			temp_max=T_Inv[i].Value;
			msg_send_gui.Homedata.TInvMax = &T_Inv[i].Value;
		}
	}
	
	temp_max=0;
	
	for(i=0; i<4; i++)
	{
		if(T_Motors[i].Value > temp_max) 
		{
			temp_max=T_Motors[i].Value;
			msg_send_gui.Homedata.TMotorMax = &T_Motors[i].Value;
		}
	}
	
	T_LV_Cell_avg = (T_LV_Cells[0].Value + T_LV_Cells[1].Value) / 2;
	msg_send_gui.Homedata.TempLV = &T_LV_Cell_avg;
	
	U_HV_Cell_avg = U_HV_Bat.Value / 140.0;
	msg_send_gui.Batterydata.UCells[2] = &U_HV_Cell_avg;
	
	U_MV_Cell_min = U_MV_Cells[0].Value;
	U_MV_Cell_max = U_MV_Cells[0].Value;
	
	for(i=0; i< 12; i++)
	{
		if(U_MV_Cells[i].Value > U_MV_Cell_max) U_MV_Cell_max = U_MV_Cells[i].Value;
		if(U_MV_Cells[i].Value < U_MV_Cell_min) U_MV_Cell_min = U_MV_Cells[i].Value;
	}
	
	delta_U_max = U_MV_Cell_max - U_MV_Cell_min;
	
	msg_send_gui.Electricsdata.maxDelta = &delta_U_max;
	
	U_LV_Cell = (U_LV_Cells[0].Value + U_LV_Cells[1].Value + U_LV_Cells[2].Value + U_LV_Cells[3].Value) / 4;
	msg_send_gui.Homedata.VoltageLV = &U_LV_Cell;
	
	brakebalance = (p_Brake[0].Value * A_BR_F * N_BK_F * DIAMETER_BRDISC_F)/(p_Brake[0].Value * A_BR_F * N_BK_F * DIAMETER_BRDISC_F + p_Brake[1].Value * A_BR_R * N_BK_R * DIAMETER_BRDISC_R);
	msg_send_gui.Suspensiondata.BrakeBalance = &brakebalance;
}

void startscreen(void)
{
	msg_send_gui.pageno = 0;
	int i = 1;
	
	while(i)
	{
		if(Timer_ms == 1000)
		{
			msg_send_gui.pageno = 1;
			i=0;
		}
		osDelay(10);
	}
	
}
