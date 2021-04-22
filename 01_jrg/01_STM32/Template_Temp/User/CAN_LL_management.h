#ifndef __CAN_LL_MANAGEMENT
#define __CAN_LL_MANAGEMENT

#include "Hardware_Def.h"

#define FLAG_CAN_TX2_OK 0x01
#define FLAG_CANRX_CONFIG_READY 0x02
#define FLAG_CANTX_CONFIG_READY 0x04
#define FLAG_CAN1_INIT_OK 0x08
#define FLAG_CANTX_TRANSMIT 0x10

typedef enum{
 	S_1Mb=0,
	S_500kb,
	S_250kb,
}CAN_Speed_t;

typedef enum{
	CAN_LED_Standard,
	CAN_LED_Compact,
}CAN_LED_mode_t;

typedef struct{
	uint32_t rx_success_cnt;
	uint32_t tx_success_cnt;
	uint32_t err_stuff_cnt;
	uint32_t err_form_cnt;
	uint32_t err_ack_cnt;
	uint32_t err_br_cnt;
	uint32_t err_bd_cnt;
	uint32_t err_crc_cnt;
	
	uint32_t last_error_code;
	uint32_t reset_cnt;
	

	uint32_t tx_rate;
	uint32_t tx_last_cnt;
	uint32_t rx_rate;
	uint32_t rx_last_cnt;
	
  uint32_t CAN_ID_SEEN_FLAGS;
	uint32_t CAN_ID_ERROR_FLAGS;
	
}CAN_BusInfo_t;

typedef struct{
	
	uint8_t factor;
	uint16_t offset;
	
}Math_factors_t;

#ifdef ELB_CPU
//CAN1
#define CAN1_RX_PORT		GPIOA
#define CAN1_RX_PIN			GPIO_PIN_11

#define CAN1_TX_PORT		GPIOA
#define CAN1_TX_PIN			GPIO_PIN_12

//CAN2
#define CAN2_RX_PORT		GPIOB
#define CAN2_RX_PIN			GPIO_PIN_12

#define CAN2_TX_PORT		GPIOB
#define CAN2_TX_PIN			GPIO_PIN_13
#endif

#define TX_Delay				10

#define CAN1_RX_ID_NB_MAX 46
#define CAN2_RX_ID_NB_MAX 10

extern CAN_BusInfo_t CAN1_BusInfo;
extern osMessageQueueId_t CAN1_Q;
extern osMessageQueueId_t CAN1_RX_Q;
extern osThreadId_t id_task_CAN1_TX;
extern osThreadId_t id_task_CAN1_RX;
extern osMutexId_t CAN1_mutex;

extern CAN_BusInfo_t CAN2_BusInfo;
extern osMessageQueueId_t CAN2_Q;
extern osMessageQueueId_t CAN2_RX_Q;
extern osThreadId_t id_task_CAN2_TX;
extern osThreadId_t id_task_CAN2_RX;
extern osMutexId_t CAN2_mutex;

/* init */
void CAN_Config(void);
void CAN_RX_Init(void); //initialisation des filtres
void CAN_Disable_RX(void);

void Error_Handler(void);

/*tache*/
void TASK_CAN1_TX(void *argument);
void TASK_CAN2_TX(void *argument);
void TASK_CAN1_RX(void *argument);
void TASK_CAN2_RX(void *argument);
	
extern CAN_HandleTypeDef hCAN1;
extern CAN_HandleTypeDef hCAN2;
extern uint8_t RxData[];

extern CAN_TxHeaderTypeDef TxHeader;
extern CAN_RxHeaderTypeDef RxHeader;

void CAN_Transmit(CAN_HandleTypeDef* hCAN, uint32_t CAN_ID);

#if USE_CONTROLLED_CAN_RESISTOR
void CAN1_set_TerminationResistor(uint8_t state);
void CAN2_set_TerminationResistor(uint8_t state);
#endif

#endif






