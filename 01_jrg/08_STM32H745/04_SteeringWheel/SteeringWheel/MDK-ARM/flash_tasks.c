#include "flash_task.h"

#define MEM_ADDRESS		0x08100000
const uint32_t code=0x67818301;			//Some random value to write in the beginning of the flash where the config is stored. When reading data, this value can be checked to tell if data is valid

osThreadId_t id_task_write_flash;

drivemode_t		accel;
drivemode_t		skidpad;
drivemode_t		autox;
drivemode_t		endurance;

drivemode_t		*drivemodes[4];


void drivemodes_init(void *argument)
{
	//read from flash
	
	//if(code == code read in flash)
	//{init drivemodes from flash}
	//else	//init default values
	//{
	accel.pmax = 80;
	accel.pmin = 0;
	accel.fanspeeds = 255;
	accel.tv_Strength = 0;
	
	//}
}


void task_write_flash(void)
{
	uint32_t *data = (uint32_t*)&msg_send_gui.pageno;
	
	while(1)
	{
		osThreadFlagsWait(FLAG_WRITE_MEM,osFlagsWaitAll,osWaitForever);
		//Flash_Write_Data(MEM_ADDRESS, data, 1);
	}
}

void flash_read_boot(void)
{
	configuration_t config;
	uint16_t nwords = sizeof(configuration_t)/8+1;			//+1 in case sizeof() is not dividable by 8 --> 1 extra word will be written to mem, but who cares?
	
	//ignore pointer warning. Pointers are always uint32 and we just want to write the data and read it from the exact same location
	Flash_Read_Data(MEM_ADDRESS, (uint32_t*)&config, sizeof(configuration_t));
	
	if(config.code == code)
	{
		//assign values
	}
	else
	{
		//assign default values
	}
}

