#include "memory_management.h"

#define MEM_ADDRESS		0x080A0000

osThreadId_t id_task_write_flash;


void task_write_flash(void)
{
	uint32_t *data = (uint32_t*)&msg_send_gui.pageno;
	
	while(1)
	{
		osThreadFlagsWait(FLAG_WRITE_MEM,osFlagsWaitAll,osWaitForever);
		Flash_Write_Data(MEM_ADDRESS, data, 1);
	}
}

void flash_read_boot(void)
{
	uint32_t	data;
	Flash_Read_Data(MEM_ADDRESS, &data, 1);
	msg_send_gui.pageno = (uint8_t) data;
}

