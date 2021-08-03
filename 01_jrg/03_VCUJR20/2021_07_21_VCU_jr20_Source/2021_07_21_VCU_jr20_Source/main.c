/*
 * main.c
 *
 *  Created on: 17 Oct 2019
 *      Author: Paul
 *
 *  jr20 VCU XMC-Software
 */

#include <stdio.h>
#include <stdbool.h>
#include <math.h>
#include "XMC4500.h"
#include "Header.h"

struct data_can canData;
struct data_IOPort IOportData;

/****************************************************
   Main Function
 *****************************************************/
int main (void)
{
  DAVE_Init();
  Watchdog_Start();
  VCU_initialize();
  CAN_1_ini();
  CAN_2_ini();
  IOPort_ini();
  RTOS_Handling_ini();  //Kupplung, Detect increase Block ???
}
