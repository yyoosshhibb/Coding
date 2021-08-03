/*
 * main.c
 *
 *  Created on: 2018 Jun 15 14:14:54
 *  Author: Lukas
 */

#include "Tele.h"                //Declarations from DAVE Code Generation (includes SFR declaration)

struct data_tele carData;
//static void delay(uint32_t cycles);
uint32_t delay_count;
uint8_t z = 0;
uint8_t id = 1;
uint8_t id_check = 2;
uint8_t sync = 77;
uint8_t ok = 1;
uint8_t buffer[6] ;

int main(void)
{
	carData.id = 1;
	carData.sync = '0x234';
  DAVE_STATUS_t status;

  status = DAVE_Init();           /* Initialization of DAVE APPs  */

  if(status != DAVE_STATUS_SUCCESS)
  {
    /* Placeholder for error handler code. The while loop below can be replaced with an user error handler. */
    XMC_DEBUG("DAVE APPs initialization failed\n");

    while(1U)
    {

    }
  }

  /* Placeholder for user application code. The while loop below can be replaced with user application code. */
  while(1U)
  {
	   CAN_1_Receive();
	   UART_Receive(&UART_0, buffer, sizeof(buffer));
	   CAN_2_Receive();
  }
}

// Interrupt Routine zum Empfangen der Daten
void uartreceive()
{
	ok = 0;
	UART_Receive(&UART_0, buffer, sizeof(buffer));
	// Empfangen der Daten von der Pitwall und ins struct schreiben zum prüfen
	if(buffer[0] == id && buffer[5]==sync)
	{
		//carData.Launch_1=buffer[1];
		//carData.Launch_2=buffer[2];
		//carData.Launch_3=buffer[3];
		//carData.Launch_4=buffer[4];

	}
	// wenn check ok sende Daten am CAN
	if(buffer[0] == id_check && buffer[1] == 19)
	{
		ok = 1;
	}
}

// interrupt zum seriellen senden der daten an den XBEE
void uart_isr(void)
{
	// CAN_1_Transmit(ok);
	 sendTlm();
}
// packen der daten
void sendTlm()
{
	carData.length = sizeof(carData);
	writeTlm(( char*)&carData,sizeof(carData));
}
// senden der Daten
void writeTlm(const char* pkt, int size)
		{
	for(int i=0;i<size;i++)
	{
	UART_TransmitWord(&UART_0,pkt[i]);
	}
		}
