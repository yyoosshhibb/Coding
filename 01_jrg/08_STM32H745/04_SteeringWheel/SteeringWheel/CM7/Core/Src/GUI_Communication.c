#include "GUI_Communication.h"

osMessageQueueId_t 	Q_send_GUI;
GUIMessage_t				msg_send_gui;


void SendToGUI()
{
	Q_send_GUI = osMessageQueueNew(10,sizeof(GUIMessage_t),NULL);

	
	msg_send_gui.Homedata.VoltageHV = &U_HV_Bat.Value;
	msg_send_gui.Homedata.TempHV = &T_HV_Cell[1].Value;
	msg_send_gui.Homedata.TempLV = &T_LV_Bat.Value;

	//msg_send_gui.Testdata.TSState = &TS_State.Value;
	msg_send_gui.Homedata.TWater = &T_Water.Value;
	msg_send_gui.Homedata.VoltageLV = &U_LV_Bat.Value;
	
	
	while(1)
	{
		msg_calc();
		if(msg_send_gui.pageno < NO_GUI_PAGES){}		//everything is fine
		else
			{
				msg_send_gui.pageno = 0;
			}
		osMessageQueuePut(Q_send_GUI,&msg_send_gui, 1, 0);
		
		osDelay(10);
	}
}

void msg_calc()
{
	int i;
	float temp_max=0;
	
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
}
