#include "GUI_Communication.h"

osMessageQueueId_t 	Q_send_GUI;
GUIMessage_t				msg_send_gui;


void SendToGUI()
{	
	int StartScreen=1;
	Q_send_GUI = osMessageQueueNew(10,sizeof(GUIMessage_t),NULL);
	uint8_t priority;
	uint32_t CAN_Error;
	
	msg_send_gui.pageno = 0;

	msg_send_gui.Homedata.VoltageHV = &U_HV_Bat.Value;
	msg_send_gui.Homedata.TempHV = &T_HV_Cell[1].Value;
	msg_send_gui.Homedata.TempLV = &T_LV_Bat.Value;
	msg_send_gui.Homedata.TSState = &TS_State.CAN_data;
	msg_send_gui.Homedata.TWater = &T_Water.Value;
	msg_send_gui.Homedata.VoltageLV = &U_LV_Bat.Value;
	
	msg_send_gui.Batterydata.TCells[0] = &T_HV_Cell[2].Value;
	msg_send_gui.Batterydata.TCells[1] = &T_HV_Cell[1].Value;
	msg_send_gui.Batterydata.TCells[2] = &T_HV_Cell[0].Value;
	msg_send_gui.Batterydata.UCells[0] = &U_HV_Cell[1].Value;
	msg_send_gui.Batterydata.UCells[1] = &U_HV_Cell[0].Value;
	msg_send_gui.Batterydata.dutyFAN = &d_FAN_HV_Bat.Value;
	msg_send_gui.Batterydata.SoC = &SoC_HV_Bat.Value;
	
	msg_send_gui.Electricsdata.I_LVS = &I_LV_Bat.Value;
	msg_send_gui.Electricsdata.Ethernet_State = &Ethernet_State.CAN_data;
	msg_send_gui.Electricsdata.LTE_State = &LTE_State.CAN_data;
	msg_send_gui.Electricsdata.TVCU = &T_VCU.Value;
	msg_send_gui.Electricsdata.T_Cell_avg = &T_LV_Bat.Value;
	msg_send_gui.Electricsdata.CAN_State = &CAN_Error;
	
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
	static float brakebalance, APPSValue,  U_HV_Cell_avg, U_LV_Cell_avg;
	
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
	
	
	
	U_HV_Cell_avg = U_HV_Bat.Value / 140.0;
	msg_send_gui.Batterydata.UCells[2] = &U_HV_Cell_avg;
	
	U_LV_Cell_avg = U_LV_Bat.Value / 4.0;
	msg_send_gui.Electricsdata.U_LVBat_avg = &U_LV_Cell_avg;
	

	brakebalance = (p_Brake[0].Value * A_BR_F * N_BK_F * DIAMETER_BRDISC_F)/(p_Brake[0].Value * A_BR_F * N_BK_F * DIAMETER_BRDISC_F + p_Brake[1].Value * A_BR_R * N_BK_R * DIAMETER_BRDISC_R);
	msg_send_gui.Suspensiondata.BrakeBalance = &brakebalance;
	APPSValue = (APPS[0].Value + APPS[1].Value) / (255.0 * 255.0);
	msg_send_gui.Suspensiondata.APPS[2] = &APPSValue;
	
	
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
