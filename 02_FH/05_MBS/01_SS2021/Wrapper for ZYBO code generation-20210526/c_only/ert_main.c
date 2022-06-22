/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: ert_main.c
 *
 * Code generated for Simulink model 'c_zybo'.
 *
 * Model version                  : 1.34
 * Simulink Coder version         : 8.10 (R2016a) 10-Feb-2016
 * C/C++ source code generated on : Thu Feb 08 14:27:01 2018
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include <stddef.h>
#include <stdio.h>                     /* This ert_main.c example uses printf/fflush */
#include "generate_c.h"                    /* Model's header file */
#include "rtwtypes.h"
#include <stdio.h>
#include "xil_printf.h"
#include "xscugic.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xuartlite_l.h"
#include "xuartps.h"
#include "xuartps_hw.h"

#define AXI_DMA0_ADDR XPAR_AXI_DMA_0_BASEADDR
#define FPGA_INT XPAR_FABRIC_IRQ_CTRL_0_INT_OUT_INTR
#define UART_BASEADDR		XPAR_XUARTPS_0_BASEADDR
#define UART_CLOCK_HZ		XPAR_XUARTPS_1_CLOCK_HZ
#define XGPIO_DEV0 XPAR_GPIO_0_DEVICE_ID
#define UARTLITE0_BASEADDR	   XPAR_UARTLITE_0_BASEADDR //send data either to UART0 or
#define DATA_BYTES 172
#define OCM_base 0x00000000

XScuGic InterruptController;
static XScuGic_Config *GicConfig;
unsigned OCM_buffer_low = 0;
unsigned OCM_buffer_high = 0x1000;
static unsigned int tmpVal;

/*
 * Associating rt_OneStep with a real-time clock or interrupt service routine
 * is what makes the generated code "real-time".  The function rt_OneStep is
 * always associated with the base rate of the model.  Subrates are managed
 * by the base rate from inside the generated code.  Enabling/disabling
 * interrupts and floating point context switches are target specific.  This
 * example code indicates where these should take place relative to executing
 * the generated code step function.  Overrun behavior should be tailored to
 * your application needs.  This example simply sets an error status in the
 * real-time model and returns from rt_OneStep.
 */

void InitializeAXIDma(void);
void InterruptHandler(void);
int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr);
int InitializeInterruptSystem (int deviceID, int interrupt_ID, Xil_ExceptionHandler IntHandler);
int UartPsEchoExample(u32 UartBaseAddress);
int UART_feedthrough(void);


void rt_OneStep(void);
void rt_OneStep(void)
{
  /* Disable interrupts here */


  /* Save FPU context here (if necessary) */
  /* Re-enable timer or interrupt here */
  /* Set model inputs here */

  /* Step the model */
  generate_c_step();

  /* Get model outputs here */

  /* Disable interrupts here */
  /* Restore FPU context here (if necessary) */
  /* Enable interrupts here */
}

/*
 * The example "main" function illustrates what is required by your
 * application code to initialize, execute, and terminate the generated code.
 * Attaching rt_OneStep to a real-time clock is target specific.  This example
 * illustrates how you do this relative to initializing the model.
 */
int_T main(int_T argc, const char *argv[])
{
	int Status;
  /* Unused arguments */
  (void)(argc);
  (void)(argv);


  /* Initialize model */
  generate_c_initialize();
  Xil_SetTlbAttributes(OCM_buffer_low, 0x14de2);
  Xil_SetTlbAttributes(OCM_buffer_high, 0x14de2);

  for(int x=0; x<8184; x++){
  Xil_Out32(x, 0);
  }

  /* Attach rt_OneStep to a timer or interrupt service routine with
   * period 1.0E-7 seconds (the model's base sample time) here.  The
   * call syntax for rt_OneStep is
   *
   *  rt_OneStep();
  /* Disable rt_OneStep() here */

  /* 	Initialize PS UART	*/
     Status = UartPsEchoExample(UART_BASEADDR);
     InitializeAXIDma();

  /* 	Initialize Interrupts	*/
     InitializeInterruptSystem(XPAR_PS7_SCUGIC_0_DEVICE_ID, FPGA_INT, (Xil_ExceptionHandler)InterruptHandler);

  while(1){
	  UART_feedthrough();
  }
  /* Terminate model */
  generate_c_terminate();
  return 0;
}

//----------------------------------------------------------------------//
//		Interrupt functions: Initialize, Setup and Connect
//----------------------------------------------------------------------//
int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr){
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, XScuGicInstancePtr);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}


int InitializeInterruptSystem (int deviceID, int interrupt_ID, Xil_ExceptionHandler IntHandler){
	int Status;

	GicConfig = XScuGic_LookupConfig(deviceID);
	if(NULL == GicConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize( &InterruptController, GicConfig, GicConfig -> CpuBaseAddress);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = SetUpInterruptSystem( &InterruptController);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XScuGic_Connect (&InterruptController,
			interrupt_ID,
			(Xil_ExceptionHandler)IntHandler,
			NULL);
	if(Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XScuGic_Enable(&InterruptController, interrupt_ID);
	return XST_SUCCESS;
}

void InitializeAXIDma(void){

	unsigned int tmpVal;
	// S2_MMDMACR.RS = 1
	tmpVal = Xil_In32( AXI_DMA0_ADDR + 0x30);	//Tx
	tmpVal = tmpVal| 0x1001;
	Xil_Out32 (AXI_DMA0_ADDR + 0x30, tmpVal);
	xil_printf("value for the S2MM DMA register: %x\n\r", tmpVal);
	// MM2S_DMACR = 1
	tmpVal = Xil_In32( AXI_DMA0_ADDR + 0x00);	//Rx
	tmpVal = tmpVal| 0x1001;
	Xil_Out32 (AXI_DMA0_ADDR + 0x00, tmpVal);
	xil_printf("value for the MM2S DMA register: %x\n\r", tmpVal);
	
	// Specify DMA addresses
	Xil_Out32 (AXI_DMA0_ADDR + 0x48, OCM_buffer_low);	// writing to OCM from FPGA
	Xil_Out32 (AXI_DMA0_ADDR + 0x18, OCM_buffer_high);	// reading from OCM from FPGA
}


int UartPsEchoExample(u32 UartBaseAddress)
{
	u32 CntrlRegister;
    print("startUART echo\n\r");

	CntrlRegister = XUartPs_ReadReg(UartBaseAddress, XUARTPS_CR_OFFSET);

	/* Enable TX and RX for the device */
	XUartPs_WriteReg(UartBaseAddress, XUARTPS_CR_OFFSET, ((CntrlRegister & ~XUARTPS_CR_EN_DIS_MASK) | XUARTPS_CR_TX_EN | XUARTPS_CR_RX_EN));

	return XST_SUCCESS;
}

int UART_feedthrough()
{
    u8 RecvChar;

	 /* Wait until there is data on any of the RX channels (PS UART, AXI UART 0) */
	while ((!XUartPs_IsReceiveData(UART_BASEADDR)) && XUartLite_IsReceiveEmpty(UARTLITE0_BASEADDR) );
	// if data was received on PS side, TX it on AXI side
	if (XUartPs_IsReceiveData(UART_BASEADDR))
	{
		//receive char
		RecvChar = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
		//relay to slave 0
		XUartLite_SendByte(UARTLITE0_BASEADDR, RecvChar);
	}
	//if data was received on AXI side 0 then TX it on PS side
	else if (!XUartLite_IsReceiveEmpty(UARTLITE0_BASEADDR))
	{
		//receive char
		RecvChar = XUartLite_ReadReg(UARTLITE0_BASEADDR, XUL_RX_FIFO_OFFSET);
		//echo to PS side
		XUartPs_SendByte(UART_BASEADDR, RecvChar);
	}
	else
	{
		//if non of the prev. conditons are true smth. is wrong
		return XST_FAILURE;
	}

	return XST_SUCCESS;

}


void InterruptHandler(void) {
	int dma_done;
	
	Xil_Out32 (AXI_DMA0_ADDR + 0x58, DATA_BYTES);
	Xil_Out32 (AXI_DMA0_ADDR + 0x28, DATA_BYTES);

	while(1){
			dma_done = Xil_In32(0x41210000);
			if(dma_done){
				Xil_Out32(AXI_DMA0_ADDR + 0x34, tmpVal | 0x1000);
				Xil_Out32(AXI_DMA0_ADDR + 0x04, tmpVal | 0x1000);
				rt_OneStep();
				break;
			}
		}

	// Resetting FPGA interrupt
	Xil_Out32(0x41200000, 1);
	Xil_Out32(0x41200000, 0);

}
