/**
  ******************************************************************************
  * @file    mc_configuration_registers.c
  * @author  Motor Control SDK Team, ST Microelectronics
  * @brief   This file provides project configuration information registers.
  *
  *
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */

#include "mc_configuration_registers.h"
#include "register_interface.h"
#include "parameters_conversion.h"

#define FIRMWARE_NAME_STR "ST MC SDK\tVer.5.Y.2-RC1"

const char CTL_BOARD[] = "No Control name";
const char M1_PWR_BOARD[] = "No Power Name M1";
const char FIRMWARE_NAME [] = FIRMWARE_NAME_STR;

const GlobalConfig_reg_t globalConfig_reg =
{
  .SDKVersion =  SDK_VERSION,
  .MotorNumber =  1 ,
  .MCP_Flag = MCP_OVER_STLINK+MCP_OVER_UARTA+MCP_OVER_UARTB,
  .MCPA_UARTA_LOG =  (MCPA_OVER_UARTA_STREAM) ,
  .MCPA_UARTB_LOG =  0 ,
  .MCPA_STLNK_LOG =  0 ,
};

const ApplicationConfig_reg_t M1_ApplicationConfig_reg =
{
  .maxMechanicalSpeed = 20000,
  .maxMotorCurrent = 0xA, /* Information not available yet */
  .maxVoltageSupply = 567,
  .minVoltageSupply = 400,
  .driveType = DRIVE_TYPE_M1,
};

const MotorConfig_reg_t M1_MotorConfig_reg =
{
  .polePairs = 4,
  .ratedFlux = 31.0,
  .rs = 0.13,
  .ls = 0.000393*1.000,
  .ld = 0.000393,
  .maxCurrent = 6148,
  .name = "No Name M1"
};

const FOCFwConfig_reg_t M1_FOCConfig_reg =
{
  .primarySensor = (uint8_t) PRIM_SENSOR_M1,
  .auxiliarySensor = (uint8_t) AUX_SENSOR_M1,
  .topology = (uint8_t) TOPOLOGY_M1,
  .FOCRate = (uint8_t) FOC_RATE_M1,
  .PWMFrequency = (uint32_t) PWM_FREQ_M1,
  .MediumFrequency = (uint16_t) MEDIUM_FREQUENCY_TASK_RATE,
  .configurationFlag1 = (uint16_t) configurationFlag1_M1,

};

const char * PWR_BOARD_NAME[NBR_OF_MOTORS] = {M1_PWR_BOARD};
const FOCFwConfig_reg_t* FOCConfig_reg[NBR_OF_MOTORS]={ &M1_FOCConfig_reg };
const MotorConfig_reg_t* MotorConfig_reg[NBR_OF_MOTORS]={ &M1_MotorConfig_reg };
const ApplicationConfig_reg_t* ApplicationConfig_reg[NBR_OF_MOTORS]={ &M1_ApplicationConfig_reg};

/************************ (C) COPYRIGHT 2021 STMicroelectronics *****END OF FILE****/
