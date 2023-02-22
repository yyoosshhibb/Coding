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
	uint16_t	*TSState;
	uint16_t	*TS_Error;
	uint16_t	*Error;
}HomeData_t;

typedef struct
{
	float			*TCells[3];			//avg, max, min
	float			*UCells[3];			//max, min, avg
	float			*dutyFAN;
	float			*SoC;	
	float			*PCM_State;
}BatteryData_t;

typedef struct
{
	float			*DamperTravel[4];
	float			*WheelLoads[4];
	float			*StWAngle;
	float			*Ridehight[3];
	float			*BrakePressure[2];
	float			*BrakeBalance;
	float			*APPS[2];
}SuspensionData_t;

typedef struct
{
	float			*TVCU;
	float			*T_LV_Cells[2];
	float			*I_LVS;
	float			*U_LV_Cells[4];
	float			*U_MV_Cells[12];
	float			*T_MV_Cells[5];
	float			*I_MV_Bat;
	uint16_t	*Comm;
	uint16_t	*LVS_Errors;
	float			*maxDelta;
}ElectricsData_t;

typedef struct
{
	float			*TireTempFL[8];
	float			*TireTempFR[8];
	float			*TireTempRL[8];
	float			*TireTempRR[8];
}TireTemps_t;

typedef struct
{
	float			*T_Motors[4];
	float			*T_Inverters[4];
	float			*n_Motors[4];
	float			*Error_Inv[4];
}PowertrainData_t;

typedef struct
{
	uint8_t							pageno;
	HomeData_t					Homedata;
	BatteryData_t				Batterydata;
	SuspensionData_t		Suspensiondata;
	ElectricsData_t			Electricsdata;
	TireTemps_t					Tiretemps;
	PowertrainData_t		Powertraindata;
}GUIMessage_t;

extern GUIMessage_t				msg_send_gui;


#endif
