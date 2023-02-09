/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
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
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32h7xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define OCD_Phase_1_Pin GPIO_PIN_3
#define OCD_Phase_1_GPIO_Port GPIOF
#define U_DC_Pin GPIO_PIN_1
#define U_DC_GPIO_Port GPIOC
#define I_Phase_3_Pin GPIO_PIN_0
#define I_Phase_3_GPIO_Port GPIOA
#define I_Phase_1_Pin GPIO_PIN_2
#define I_Phase_1_GPIO_Port GPIOA
#define I_Phase_2_Pin GPIO_PIN_3
#define I_Phase_2_GPIO_Port GPIOA
#define NTC_Module_Pin GPIO_PIN_4
#define NTC_Module_GPIO_Port GPIOA
#define NTC_Interface_Pin GPIO_PIN_5
#define NTC_Interface_GPIO_Port GPIOA
#define U_Phase_2_Pin GPIO_PIN_7
#define U_Phase_2_GPIO_Port GPIOA
#define Temp_Motor_Pin GPIO_PIN_4
#define Temp_Motor_GPIO_Port GPIOC
#define U_Phase_3_Pin GPIO_PIN_5
#define U_Phase_3_GPIO_Port GPIOC
#define SD_Signal_Pin GPIO_PIN_11
#define SD_Signal_GPIO_Port GPIOF
#define U_Phase_1_Pin GPIO_PIN_12
#define U_Phase_1_GPIO_Port GPIOF
#define GD_RDY_Phase_1_Pin GPIO_PIN_0
#define GD_RDY_Phase_1_GPIO_Port GPIOG
#define OCD_Phase_2_Pin GPIO_PIN_1
#define OCD_Phase_2_GPIO_Port GPIOG
#define SPI_CS_Phase_1_Pin GPIO_PIN_12
#define SPI_CS_Phase_1_GPIO_Port GPIOB
#define AD2S_SPI_CS_Pin GPIO_PIN_10
#define AD2S_SPI_CS_GPIO_Port GPIOD
#define AD2S_FSYNC_Pin GPIO_PIN_2
#define AD2S_FSYNC_GPIO_Port GPIOG
#define AD2S_SAMPLE_Pin GPIO_PIN_8
#define AD2S_SAMPLE_GPIO_Port GPIOG
#define OCD_Phase_3_Pin GPIO_PIN_6
#define OCD_Phase_3_GPIO_Port GPIOC
#define GD_RDY_Phase_3_Pin GPIO_PIN_7
#define GD_RDY_Phase_3_GPIO_Port GPIOC
#define GD_RDY_Phase_2_Pin GPIO_PIN_9
#define GD_RDY_Phase_2_GPIO_Port GPIOC
#define SPI_CS_Phase_3_Pin GPIO_PIN_15
#define SPI_CS_Phase_3_GPIO_Port GPIOA
#define AD2S_RESET_Pin GPIO_PIN_12
#define AD2S_RESET_GPIO_Port GPIOC
#define SPI_CS_Phase_2_Pin GPIO_PIN_2
#define SPI_CS_Phase_2_GPIO_Port GPIOD
#define GD_FLT_Phase_1_Pin GPIO_PIN_10
#define GD_FLT_Phase_1_GPIO_Port GPIOG
#define GD_FLT_Phase_2_Pin GPIO_PIN_11
#define GD_FLT_Phase_2_GPIO_Port GPIOG
#define GD_FLT_Phase_3_Pin GPIO_PIN_12
#define GD_FLT_Phase_3_GPIO_Port GPIOG
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
