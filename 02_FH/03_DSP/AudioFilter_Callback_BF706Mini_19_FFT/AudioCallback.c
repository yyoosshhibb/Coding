/*********************************************************************************

Copyright(c) 2015 Analog Devices, Inc. All Rights Reserved.

This software is proprietary and confidential.  By using this software you agree
to the terms of the associated Analog Devices License Agreement.

*********************************************************************************/

/*
 * This example demonstrates how to use the ADAU1761 codec driver to receive audio
 * samples from the Line Input, apply a audio processing algorithm then transmit
 * the processed data to the Headphone (HP) Output.
 *
 * On the ADSP-BF706 EZ-KIT Mini™:
 * Connect an audio source to the LINE IN jack (J1)
 * Connect headphones to the HP jack (J2).
 */


#include "AudioCallback.h"
#include "math.h"
#include "complex.h"

/* ADI initialization header */
#include "system/adi_initialize.h"

#define RUN_ENDLESS	1

/*
 * Audio buffers
 */
#pragma align(4)
 uint32_t RxBuffer1[NUM_AUDIO_SAMPLES];

#pragma align(4)
 uint32_t RxBuffer2[NUM_AUDIO_SAMPLES];

#pragma align(4)
 uint32_t TxBuffer1[NUM_AUDIO_SAMPLES];

#pragma align(4)
 uint32_t TxBuffer2[NUM_AUDIO_SAMPLES];

//#pragma align(4)
 uint32_t filterOutput[NUM_AUDIO_SAMPLES];

 uint8_t *pRxBuffer;
 uint8_t *pTxBuffer;

/* SPORT info struct */
 ADI_ADAU1761_SPORT_INFO sportRxInfo;
 ADI_ADAU1761_SPORT_INFO sportTxInfo;

/* Memory required for codec driver - must add PROGRAM_SIZE_IC_1 size for data transfer to codec */
//uint8_t codecMem[ADI_ADAU1761_MEMORY_SIZE + PROGRAM_SIZE_IC_1];

/* adau1761 device handle */
 ADI_ADAU1761_HANDLE  hADAU1761;


 bool bError = false;


/* error check */
 void CheckResult(ADI_ADAU1761_RESULT result)
{
	if (result != ADI_ADAU1761_SUCCESS) {
		printf("Codec failure\n");
		bError = true;
	}
}

/* codec callback */
void ADAU1761Callback(void *pCBParam, uint32_t Event, void *pArg)
{
	ADI_ADAU1761_RESULT result;

    switch(Event)
    {
    	case (uint32_t)ADI_ADAU1761_EVENT_RX_BUFFER_PROCESSED:
   			pRxBuffer = pArg;

			/* re-sumbit the buffer for processing */
	    	result = adi_adau1761_SubmitRxBuffer(hADAU1761, pRxBuffer, BUFFER_SIZE);
			CheckResult(result);

			/* filter the signal - audio processing */
			AudioFilter((fract32*)pRxBuffer, (fract32*)&filterOutput[0]);

            break;

    	case (uint32_t)ADI_ADAU1761_EVENT_TX_BUFFER_PROCESSED:
       		pTxBuffer = pArg;

    	    /*
    	     * transmit the audio
    	     */
    		if ((pRxBuffer != NULL) && (pTxBuffer != NULL))
    		{
				/* copy the filtered audio data from Rx to Tx */
				memcpy(&pTxBuffer[0], &filterOutput[0], BUFFER_SIZE);

    		}

       		/* re-sumbit the buffer for processing */
	    	result = adi_adau1761_SubmitTxBuffer(hADAU1761, pTxBuffer, BUFFER_SIZE);
			CheckResult(result);

            break;

    	default:
            break;
    }
}

/* use the push button to set the filter type */
void gpioCallback(ADI_GPIO_PIN_INTERRUPT ePinInt, uint32_t Data, void *pCBParam)
{
    if (ePinInt == PUSH_BUTTON1_PINT)
    {
    	ClearSet_LED(LED0, LED_STATE_TGL);	//toggle user LED (LED2)
    }
}



complex_fract16  input_buffer[FFT_LEN*2];		//2 times of FFT_LEN; 1 buffer for calculation, 1 buffer for sampling
complex_fract16 spectral_power[FFT_LEN/2];


int main(void)
{
	ADI_ADAU1761_RESULT result;
	ADI_PWR_RESULT pwrResult;

	/* setup processor mode and frequency */
	pwrResult = adi_pwr_Init(0, CLKIN);
	pwrResult = adi_pwr_SetPowerMode(0,	ADI_PWR_MODE_FULL_ON);
	pwrResult = adi_pwr_SetClkControlRegister(0, ADI_PWR_CLK_CTL_MSEL, MSEL);
	pwrResult = adi_pwr_SetClkDivideRegister(0, ADI_PWR_CLK_DIV_CSEL, CSEL);
	pwrResult = adi_pwr_SetClkDivideRegister(0, ADI_PWR_CLK_DIV_SYSSEL, SYSSEL);

    adi_initComponents(); /* auto-generated code */

    printf("\n\nPress push button 1 (PB1) on the ADSP-BF706 EZ-Kit Mini to start sampling\n");

    /* push button setup */
    GpioSetup();
    Init_LEDs();


#if FFT_SIM
    int i,j;

	for(j=500;j<12000;j+=500){		//Stimulate input_buffer with different sine waves
		for(i=0;i<FFT_LEN;i++){
			//input_buffer[i].re=i;	//to test the scrambling
			input_buffer[i].re=32767*sinf(2*PI*j*i/F_SAMPLE);	//stimulate input with sinus
			input_buffer[i].im=0;

		}

	//zero padded input data
    /*
	for(j=500;j<12000;j+=500){		//Stimulate input_buffer with different sine waves
		for(i=0;i<FFT_LEN;i++){
			//input_buffer[i].re=i;	//to test the scrambling
			if(i<FFT_LEN/4)
			{
				input_buffer[i].re=32767*sinf(2*PI*j*i/F_SAMPLE);	//stimulate input with sinus
				input_buffer[i].im=0;
			}
			else
			{
				input_buffer[i].re=0;	//stimulate input with sinus
				input_buffer[i].im=0;
			}
		}
		*/

		Scramble_data(input_buffer,FFT_LEN);
		FFT(input_buffer,FFT_LEN);
		Get_Power_Spec(input_buffer, spectral_power, FFT_LEN);
		i = 0;
		//max_power = Get_Max(power_spec, &frequ_pos, FFT_LEN);		//show Veff
	}
#endif

    /* configure the codec driver */
    CodecSetup();

    Enable_AUDIO_Data();

	/* process audio in the callback
	 *     		ClearSet_LED(TP0, LED_STATE_TGL);	//toggle pin 3 of connector P9
	 *     		ClearSet_LED(TP1, LED_STATE_TGL);	//toggle pin 4 of connector P9
	 *     		ClearSet_LED(LED0, LED_STATE_TGL);	//toggle user LED (LED2)
	 *     		*/

	while(bError == false)
	{
#if !RUN_ENDLESS
		count++;
		/* exit the loop after a few minutes */
		if (count > MAXCOUNT)
		{
			break;
		}
#endif
	}

	Disable_AUDIO_Data();


	if (!bError) {
		printf("All done\n");
	} else {
		printf("Audio error\n");
	}

	return 0;
}
