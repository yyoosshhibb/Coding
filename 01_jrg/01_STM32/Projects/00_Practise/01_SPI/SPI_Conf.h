#ifndef __SPI_Conf
#define __SPI_Conf

#include "Hardware_Def.h"

typedef enum{
	SPI1_inter=1,
	SPI2_inter=2,
	SPI3_inter=3
}SPI_line_t;


typedef struct{
	SPI_HandleTypeDef		*hSPI;
	GPIO_TypeDef 				*CS_PORT;
	uint16_t						CS_PIN;
}SPI_SLAVE_t;

//Ideal would be a pointer to the start of a data array
typedef struct{		
	uint16_t			Msg_length;	//Length of Message
	uint8_t				data[8];		//Data
	SPI_SLAVE_t		Slave;			//What slave should the message be sent to
	uint32_t			timeout;		//Timeout after transmission
}SPI_TX_MSG_t;


typedef struct{		
	uint16_t			Msg_length;	//Length of Message
	uint8_t				data[8];		//Data
	SPI_SLAVE_t		Slave;			//What slave is the Msg received from
	uint32_t			timeout;		//Timeout after receiving
}SPI_RX_MSG_t;

//define SPI Pins
#if USE_SPI1
	#define SPI1_MISO_PIN		GPIO_PIN_6			
	#define SPI1_MOSI_PIN		GPIO_PIN_7
	#define SPI1_CLK_PIN		GPIO_PIN_5
	
	#define SPI1_MISO_PORT	GPIOA
	#define SPI1_MOSI_PORT	GPIOA
	#define SPI1_CLK_PORT		GPIOA
	//Options for MISO: PA6, PB4
	//Options for MOSI: PA7, PB4, PB5
	//Options for CLK:	PA5, PB3, PB4, PB5
#endif

#if USE_SPI2
	#define SPI1_MISO_PIN		GPIO_PIN_14
	#define SPI1_MOSI_PIN		GPIO_PIN_15
	#define SPI1_CLK_PIN		GPIO_PIN_10
	
	#define SPI1_MISO_PORT	GPIOB
	#define SPI1_MOSI_PORT	GPIOB
	#define SPI1_CLK_PORT		GPIOB
	//Options for MISO: PC2, PB14
	//Options for MOSI: PC3, PB14, PB15
	//Options for CLK:	PB10. PB13
#endif

#if USE_SPI3
	#define SPI1_MISO_PIN		GPIO_PIN_11			
	#define SPI1_MOSI_PIN		GPIO_PIN_12
	#define SPI1_CLK_PIN		GPIO_PIN_10
	
	#define SPI1_MISO_PORT	GPIOC
	#define SPI1_MOSI_PORT	GPIOC
	#define SPI1_CLK_PORT		GPIOC
	//Options for MISO: PC11, PB4, PB5
	//Options for MOSI: PB5, PC11
	//Options for CLK:	PB3, PC10
#endif


//extern variables


//Prototypes

void SPI_Init(void);
void SPI_Slave_Init(void);
void SPI_Transmit(SPI_TX_MSG_t* Message);
void SPI_Receive(SPI_RX_MSG_t* Message);

#endif
