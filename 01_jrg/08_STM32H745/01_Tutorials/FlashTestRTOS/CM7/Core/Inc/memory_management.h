/**
  ***************************************************************************************************************
  ***************************************************************************************************************
  ***************************************************************************************************************

  File:       FLASH_SECTOR_H7.h
  Modifier:   ControllersTech.com
  Updated:    27th MAY 2021

  ***************************************************************************************************************
  Copyright (C) 2017 ControllersTech.com

  This is a free software under the GNU license, you can redistribute it and/or modify it under the terms
  of the GNU General Public License version 3 as published by the Free Software Foundation.
  This software library is shared with public for educational purposes, without WARRANTY and Author is not liable for any damages caused directly
  or indirectly by this software, read more about this on the GNU General Public License.

  ***************************************************************************************************************
*/

#ifndef MEMORY_MANAGEMENT_H
#define MEMORY_MANAGEMENT_H

#include "main.h"
#include "string.h"
#include "stdio.h"
#define FLAG_WRITE_MEM 0x0A

//extern osThreadId_t id_task_write_flash;

uint32_t Flash_Write_Data (uint32_t StartSectorAddress, uint32_t *data, uint16_t numberofwords);
void Flash_Read_Data (uint32_t StartSectorAddress, uint32_t *data, uint16_t numberofwords);
void Convert_To_Str (uint32_t *Data, char *Buf);
void task_write_flash(void);
void flash_read_boot(void);

void Flash_Write_NUM (uint32_t StartSectorAddress, float Num);
float Flash_Read_NUM (uint32_t StartSectorAddress);


#endif /* INC_FLASH_SECTOR_H7_H_ */
