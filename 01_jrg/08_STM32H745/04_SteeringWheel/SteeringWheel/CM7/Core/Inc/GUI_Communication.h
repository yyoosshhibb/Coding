#ifndef __GUI_MANAGEMENT
#define __GUI_MANAGEMENT

#include "HW_Def.h"

#define NO_GUI_PAGES		7

#define FLAG_NEXT_PAGE	0x10

extern osThreadId_t idtaskfeedGUI;
extern osMessageQueueId_t Q_send_GUI;

void SendToGUI();
void msg_calc();

typedef enum
{
	TSOff,
	TSOn,
	R2D,
	SD,					//SD Circuit open
}TSState_t;
	
typedef struct
{
	float			*TempHV;
	float 		*TempLV;
	float 		*VoltageHV;
	float 		*VoltageLV;
	float 		*TMotorMax;
	float 		*TInvMax;
	float 		*TWater;
	uint8_t		*TSState;
	uint8_t		*TS_Error;
	uint8_t		*Error;
}HomeData_t;

typedef struct
{
	uint16_t	DamperTravel[4];
	uint16_t	WheelLoads[4];
	
}BatteryData_t;

typedef struct
{
	uint16_t	DamperTravel[4];
	uint16_t	WheelLoads[4];
	
}SuspensionData_t;

typedef struct
{
}ElectricsData_t;

typedef struct
{
}InverterData_t;

typedef struct
{
}PowertrainData_t;

typedef struct
{
}ActiveAeroData_t;

typedef struct
{
	uint8_t							pageno;
	HomeData_t					Homedata;
	BatteryData_t				Batterydata;
	SuspensionData_t		Suspensiondata;
	ElectricsData_t			Electricsdata;
	InverterData_t			Inverterdata;
	PowertrainData_t		Powertraindata;
	ActiveAeroData_t		ActiveAerodata;
}GUIMessage_t;

extern GUIMessage_t				msg_send_gui;


#endif
