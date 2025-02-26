/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    fdcan.h
  * @brief   This file contains all the function prototypes for
  *          the fdcan.c file
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __FDCAN_H__
#define __FDCAN_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* USER CODE BEGIN Includes */
#include "Hardware_Def.h"

#define FLAG_CAN_TX2_OK 0x01
#define FLAG_CANRX_CONFIG_READY 0x02
#define FLAG_CANTX_CONFIG_READY 0x04
#define FLAG_CAN1_INIT_OK 0x08
#define FLAG_CANTX_TRANSMIT 0x10


typedef struct{

	uint8_t factor;
	uint16_t offset;

}Math_factors_t;

#define CAN1_RX_ID_NB_MAX 46
#define CAN2_RX_ID_NB_MAX 10

//extern CAN_BusInfo_t CAN1_BusInfo;
extern osMessageQueueId_t CAN_Q;
extern osMessageQueueId_t CAN_RX_Q;
extern osThreadId_t id_task_CAN_TX;
extern osThreadId_t id_task_CAN_RX;
extern osMutexId_t CAN_mutex;


void MX_FDCAN1_Init(void);
void FDCAN_RX_Init(void);
void FDCAN_Disable_RX(void);


void Error_Handler(void);

extern FDCAN_HandleTypeDef hfdcan1;

void TASK_FDCAN_TX(void);
void TASK_FDCAN_RX(void);

extern FDCAN_TxHeaderTypeDef TxHeader;
extern FDCAN_RxHeaderTypeDef RxHeader;

void FDCAN_Transmit(FDCAN_HandleTypeDef* hdfcan, uint32_t CAN_ID);
/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif

#endif /* __FDCAN_H__ */

