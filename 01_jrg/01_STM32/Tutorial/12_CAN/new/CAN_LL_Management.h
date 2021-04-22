#ifndef __CAN_LL_MANAGEMENT
#define __CAN_LL_MANAGEMENT

#include "HWDef.h"

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

#endif