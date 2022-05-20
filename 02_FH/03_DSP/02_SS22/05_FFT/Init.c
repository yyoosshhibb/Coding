/*
 * Init.c
 *
 *  Created on: 18. Aug. 2016
 *      Author: komar
 */
#include "AudioCallback.h"
#include "SigmaStudio\export\export_IC_1.h"


/* Memory required for codec driver - must add PROGRAM_SIZE_IC_1 size for data transfer to codec */
uint8_t codecMem[ADI_ADAU1761_MEMORY_SIZE + PROGRAM_SIZE_IC_1];

/*
 * SPORT device memory
 */
#pragma align(4)
static uint8_t sportRxMem[ADI_SPORT_DMA_MEMORY_SIZE];

#pragma align(4)
static uint8_t sportTxMem[ADI_SPORT_DMA_MEMORY_SIZE];

//extern  uint8_t codecMem[];

/* codec driver configuration */
void CodecSetup(void)
{
	ADI_ADAU1761_RESULT result;

	/* Open the codec driver */
	result = adi_adau1761_Open(ADAU1761_DEV_NUM,
			codecMem,
			sizeof(codecMem),
			ADI_ADAU1761_COMM_DEV_TWI,
			&hADAU1761);
	CheckResult(result);

	/* Configure TWI - BF706 EZ-Kit MINI version 1.0 uses TWI */
	result = adi_adau1761_ConfigTWI(hADAU1761, TWI_DEV_NUM, ADI_ADAU1761_TWI_ADDR0);
	CheckResult(result);

	/* load Sigma Studio program exported from *_IC_1.h */
	result = adi_adau1761_SigmaStudioLoad(hADAU1761, default_download_IC_1);
	CheckResult(result);

	/* config SPORT for Rx data transfer */
	sportRxInfo.nDeviceNum = SPORT_RX_DEVICE;
	sportRxInfo.eChannel = ADI_HALF_SPORT_B;
	sportRxInfo.eMode = ADI_ADAU1761_SPORT_I2S;
	sportRxInfo.hDevice = NULL;
	sportRxInfo.pMemory = sportRxMem;
	sportRxInfo.bEnableDMA = true;
	sportRxInfo.eDataLen = ADI_ADAU1761_SPORT_DATA_24;
	sportRxInfo.bEnableStreaming = true;

	result = adi_adau1761_ConfigSPORT (hADAU1761,
			ADI_ADAU1761_SPORT_INPUT, &sportRxInfo);
	CheckResult(result);

	/* config SPORT for Tx data transfer */
	sportTxInfo.nDeviceNum = SPORT_TX_DEVICE;
	sportTxInfo.eChannel = ADI_HALF_SPORT_A;
	sportTxInfo.eMode = ADI_ADAU1761_SPORT_I2S;
	sportTxInfo.hDevice = NULL;
	sportTxInfo.pMemory = sportTxMem;
	sportTxInfo.bEnableDMA = true;
	sportTxInfo.eDataLen = ADI_ADAU1761_SPORT_DATA_24;
	sportTxInfo.bEnableStreaming = true;

	result = adi_adau1761_ConfigSPORT (hADAU1761,
			ADI_ADAU1761_SPORT_OUTPUT, &sportTxInfo);
	CheckResult(result);

	result = adi_adau1761_SelectInputSource(hADAU1761, ADI_ADAU1761_INPUT_ADC);
	CheckResult(result);

	/* disable mixer */
	MixerEnable(false);

	result = adi_adau1761_SetVolume (hADAU1761,
			ADI_ADAU1761_VOL_HEADPHONE,
			ADI_ADAU1761_VOL_CHAN_BOTH,
			true,
			57);  /* 0 dB */
	CheckResult(result);

	result = adi_adau1761_SetSampleRate (hADAU1761, SAMPLE_RATE);
	CheckResult(result);
}

/* push button setup */
void GpioSetup(void)
{
	uint32_t gpioMaxCallbacks;
	ADI_GPIO_RESULT gpioResult;
	static uint8_t gpioMemory[ADI_GPIO_CALLBACK_MEM_SIZE];

    /* initialize the GPIO service */
	gpioResult = adi_gpio_Init(
			(void*)gpioMemory,
			ADI_GPIO_CALLBACK_MEM_SIZE,
			&gpioMaxCallbacks);

	/*
	 * Setup Push Button 1
	 */

	/* set GPIO input */
	gpioResult = adi_gpio_SetDirection(
		PUSH_BUTTON1_PORT,
		PUSH_BUTTON1_PIN,
	    ADI_GPIO_DIRECTION_INPUT);

    /* set input edge sense */
	gpioResult = adi_gpio_SetPinIntEdgeSense(
		PUSH_BUTTON1_PINT,
		PUSH_BUTTON1_PIN,
	    ADI_GPIO_SENSE_RISING_EDGE);

    /* register gpio callback */
    gpioResult = adi_gpio_RegisterCallback(
    	PUSH_BUTTON1_PINT,
    	PUSH_BUTTON1_PIN,
    	gpioCallback,
   	    (void*)0);

	/* enable interrupt mask */
    gpioResult = adi_gpio_EnablePinInterruptMask(
		PUSH_BUTTON1_PINT,
		PUSH_BUTTON1_PIN,
	    true);
}

void Enable_AUDIO_Data(void)
{
	ADI_ADAU1761_RESULT result;
	/* register a Rx callback */
	result = adi_adau1761_RegisterRxCallback (hADAU1761,
			ADAU1761Callback, NULL);
	CheckResult(result);

	/* register a Tx callback */
	result = adi_adau1761_RegisterTxCallback (hADAU1761,
			ADAU1761Callback, NULL);
	CheckResult(result);

	/*
	 * submit buffers and enable audio
	 */

	/* stop current input */
	result = adi_adau1761_EnableInput (hADAU1761, false);
	CheckResult(result);

	/* stop current output */
	result = adi_adau1761_EnableOutput (hADAU1761, false);
	CheckResult(result);

	/* submit Rx buffer1 */
	result = adi_adau1761_SubmitRxBuffer(hADAU1761, RxBuffer1, BUFFER_SIZE);
	CheckResult(result);

	/* submit Rx buffer2 */
	result = adi_adau1761_SubmitRxBuffer(hADAU1761,	RxBuffer2, BUFFER_SIZE);
	CheckResult(result);

	/* submit Tx buffer1 */
	result = adi_adau1761_SubmitTxBuffer(hADAU1761, TxBuffer1, BUFFER_SIZE);
	CheckResult(result);

	/* submit Tx buffer2 */
	result = adi_adau1761_SubmitTxBuffer(hADAU1761,	TxBuffer2, BUFFER_SIZE);
	CheckResult(result);

	result = adi_adau1761_EnableInput (hADAU1761, true);
	CheckResult(result);

	result = adi_adau1761_EnableOutput (hADAU1761, true);
	CheckResult(result);

	/* enable record mixer */
	MixerEnable(true);

}

void Disable_AUDIO_Data(void){
	ADI_ADAU1761_RESULT result;
	/* disable audio */
	result = adi_adau1761_EnableInput (hADAU1761, false);
	CheckResult(result);

	result = adi_adau1761_EnableOutput (hADAU1761, false);
	CheckResult(result);

	result = adi_adau1761_Close(hADAU1761);
	CheckResult(result);

}

/* codec record mixer */
void MixerEnable(bool bEnable)
{
	ADI_ADAU1761_RESULT result;
	uint8_t value;

	if (bEnable)
	{
		/* enable the record mixer (left) */
		result = adi_adau1761_SetRegister (hADAU1761, REC_MIX_LEFT_REG, 0x0B); /* LINP mute, LINN 0 dB */
		CheckResult(result);

		/* enable the record mixer (right) */
		result = adi_adau1761_SetRegister (hADAU1761, REC_MIX_RIGHT_REG, 0x0B);  /* RINP mute, RINN 0 dB */
		CheckResult(result);
	}
	else
	{
		/* disable the record mixer (left) */
		result = adi_adau1761_GetRegister (hADAU1761, REC_MIX_LEFT_REG, &value);
		result = adi_adau1761_SetRegister (hADAU1761, REC_MIX_LEFT_REG, value & 0xFE);
		CheckResult(result);

		/* disable the record mixer (right) */
		result = adi_adau1761_GetRegister (hADAU1761, REC_MIX_RIGHT_REG, &value);
		result = adi_adau1761_SetRegister (hADAU1761, REC_MIX_RIGHT_REG, value & 0xFE);
		CheckResult(result);
	}
}

/*
 *   Function:    Init_LEDs
 *   Description: This function configures PORTx for LEDs.
 */
void Init_LEDs(void)
{
	adi_gpio_SetDirection(		//TP0 = pin 3 of connector P9
			TP0_PORT,
			TP0_PIN,
	    ADI_GPIO_DIRECTION_OUTPUT);

	adi_gpio_SetDirection(		//TP1 = pin 4 of connector P9
			TP1_PORT,
			TP1_PIN,
	    ADI_GPIO_DIRECTION_OUTPUT);

	adi_gpio_SetDirection(
	    ADI_GPIO_PORT_C,
	    ADI_GPIO_PIN_3,
	    ADI_GPIO_DIRECTION_OUTPUT);

    /* PB1 C2 PINT0 */
	adi_gpio_EnablePolar(
	    ADI_GPIO_PORT_C,
	    ADI_GPIO_PIN_3,
	    true);
}
/*
 *   Function:    ClearSet_LED
 *   Description: Clear or set a particular LED (NOT A GROUP).
 */
void ClearSet_LED(const int led, const int bState)
{

	/* if bState is 0 we clear the LED,
	   if bState is 1 we set the LED,
	   else we toggle the LED */
    /* LEDx_PORT and LEDx_PIN defined in pbled_test.h */

	if( led == LED0 )
	{
	   	if( 0 == bState )
		{
			adi_gpio_Clear(LED0_PORT, LED0_PIN);
		}
		else if( 1 == bState )
		{
			adi_gpio_Set(LED0_PORT, LED0_PIN);
		}
		else
		{
			adi_gpio_Toggle(LED0_PORT, LED0_PIN);
		}
	}
	if( led == TP0 )
	{
	   	if( 0 == bState )
		{
			adi_gpio_Clear(TP0_PORT, TP0_PIN);
		}
		else if( 1 == bState )
		{
			adi_gpio_Set(TP0_PORT, TP0_PIN);
		}
		else
		{
			adi_gpio_Toggle(TP0_PORT, TP0_PIN);
		}
	}
	if( led == TP1 )
	{
	   	if( 0 == bState )
		{
			adi_gpio_Clear(TP1_PORT, TP1_PIN);
		}
		else if( 1 == bState )
		{
			adi_gpio_Set(TP1_PORT, TP1_PIN);
		}
		else
		{
			adi_gpio_Toggle(TP1_PORT, TP1_PIN);
		}
	}
}
