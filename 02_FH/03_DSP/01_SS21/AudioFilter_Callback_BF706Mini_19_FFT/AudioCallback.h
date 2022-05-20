/*
 * TalkThrough_BF706Mini.h
 */

#ifndef TALKTHROUGH_H_
#define TALKTHROUGH_H_

#include <drivers/codec/adau1761/adi_adau1761.h>
#include <services/pwr/adi_pwr.h>
#include <services/gpio/adi_gpio.h>
#include <stdio.h>
#include <string.h>

/* SigmaStudio exported file */
//#include "SigmaStudio\export\export_IC_1.h"

/* ADI initialization header */
#include "system/adi_initialize.h"

/* SPORT device instance used for communicating with the codec device */
#define SPORT_TX_DEVICE  0
#define SPORT_RX_DEVICE  0

/* TWI device instance used for communicating with the codec device */
#define TWI_DEV_NUM      0

/* codec device instance to be tested */
#define ADAU1761_DEV_NUM   0

/* the ADAU1761 Rec Mixer Left 0 register */
#define REC_MIX_LEFT_REG    (0x400A)
/* the ADAU1761 Rec Mixer Right 0 register */
#define REC_MIX_RIGHT_REG   (0x400C)

#define MHZTOHZ       (1000000)
#define CLKIN         (25 * MHZTOHZ)
#define MSEL          (32)  /* 800 MHz PLL */
#define CSEL          (2)   /* 400 MHz core */
#define SYSSEL        (4)   /* 200 MHz sysclk */


/* User Macro - select the number of audio samples (stereo) for each buffer */
#define NUM_AUDIO_SAMPLES       2u  /* 32 left + 32 right */

/* User Macro - select sample rate */
#define SAMPLE_RATE  (ADI_ADAU1761_SAMPLE_RATE_48KHZ)

/* 32-bits per sample (24-bit audio) */
#define BUFFER_SIZE      (NUM_AUDIO_SAMPLES*sizeof(uint32_t))

/* used for exit timeout */
#define MAXCOUNT (0x100000000L)

typedef enum
{
	NO_FILTER = 0,
	LOW_PASS,
	HIGH_PASS
} FILTER_MODE;

/*
 * Push button 1 GPIO settings
 */

/* GPIO port to which push button 1 is connected to */
#define PUSH_BUTTON1_PORT           ADI_GPIO_PORT_C

/* GPIO pint to which push button 1 is connected to */
#define PUSH_BUTTON1_PINT           ADI_GPIO_PIN_INTERRUPT_1

/* GPIO pin within the port to which push button 1 is connected to */
#define PUSH_BUTTON1_PIN            ADI_GPIO_PIN_2

#define LED0 0x0000
#define TP0	0x100	//Testpoint 0 PortB 8
#define TP1	0x200	//Testpoint 1 PortB 9

#define TP0_PORT ADI_GPIO_PORT_B
#define TP0_PIN ADI_GPIO_PIN_8

#define TP1_PORT ADI_GPIO_PORT_B
#define TP1_PIN ADI_GPIO_PIN_9

#define LED0_PORT ADI_GPIO_PORT_C
#define LED0_PIN ADI_GPIO_PIN_3

#define LED_STATE_CLR	0
#define LED_STATE_SET	1
#define LED_STATE_TGL	2


#define FFT_LEN		1024
#define F_SAMPLE	48000
#define PI			3.1415
#define FFT_SIM 	1

/* function prototypes */
void Init_LEDs(void);
void ClearSet_LED(const int led, const int bState);

void FilterInit(FILTER_MODE mode);
void AudioFilter( fract32 dataIn[], fract32 dataOut[]);
void CodecSetup(void);
void GpioSetup(void);
void Enable_AUDIO_Data(void);
void Disable_AUDIO_Data(void);
void CheckResult(ADI_ADAU1761_RESULT);
void MixerEnable(bool bEnable);
void ADAU1761Callback(void *, uint32_t , void *);
void gpioCallback(ADI_GPIO_PIN_INTERRUPT , uint32_t , void *);
void butterfly(complex_fract16 A, complex_fract16 B, complex_fract16 twiddle);
void Scramble_data(complex_fract16* data, short len);
void FFT(complex_fract16* input_buffer, int fft_len);
void Get_Power_Spec(complex_fract16* input_buffer,complex_fract16* power_spec,int fft_len);

//----------------GLOBAL VARIABLES--------------------------------
extern  uint8_t sportRxMem[];

extern  uint8_t sportTxMem[];

extern  uint32_t RxBuffer1[];

extern  uint32_t RxBuffer2[];

extern  uint32_t TxBuffer1[];

extern  uint32_t TxBuffer2[];

extern  uint32_t filterOutput[];

extern  uint8_t *pRxBuffer;
extern  uint8_t *pTxBuffer;

/* SPORT info struct */
extern  ADI_ADAU1761_SPORT_INFO sportRxInfo;
extern  ADI_ADAU1761_SPORT_INFO sportTxInfo;

/* Memory required for codec driver - must add PROGRAM_SIZE_IC_1 size for data transfer to codec */
extern  uint8_t codecMem[];

/* adau1761 device handle */
extern  ADI_ADAU1761_HANDLE  hADAU1761;

//static FILTER_MODE mode = NO_FILTER;

extern  bool bError;

//static volatile uint64_t count = 0;

#endif /* TALKTHROUGH_H_ */
