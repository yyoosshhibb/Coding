#ifndef __GUI_MANAGEMENT
#define __GUI_MANAGEMENT

#include "HW_Def.h"

#define NO_GUI_PAGES		7

#define FLAG_NEXT_PAGE	0x06
#define FLAG_UPDATE_MODEL 0x08

#define DIAMETER_BRDISC_F	230				//mm
#define DIAMETER_BRDISC_R 200				//mm
#define A_BR_F						20				//mm²
#define A_BR_R						15				//mm²
#define N_BK_F						3					//Bremskolben an d Vorderachse
#define N_BK_R						2					//Bremskolben an d Hinterachse

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
	float			*TCells[3];			//min, max, avg
	float			*UCells[3];			//min, max, avg
	float			*dutyFAN;
	float			*SoC;	
}BatteryData_t;

typedef struct
{
	float			*DamperTravel[4];
	float			*WheelLoads[4];
	float			*StWAngle;
	float			*Ridehight[3];
	float			*BrakePressure[2];
	float			*BrakeBalance;
	float			*APPS[3];	
}SuspensionData_t;

typedef struct
{
	float			*TVCU;
	float			*T_Cell_avg;
	float			*I_LVS;
	float			*U_LVBat_avg;
	uint8_t		*Ethernet_State;
	uint8_t		*LTE_State;
	uint32_t	*CAN_State;
	uint8_t		*Errors;
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
