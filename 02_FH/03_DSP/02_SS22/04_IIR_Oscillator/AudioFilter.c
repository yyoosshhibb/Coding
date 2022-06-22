/*********************************************************************************

Copyright(c) 2015 Analog Devices, Inc. All Rights Reserved.

This software is proprietary and confidential.  By using this software you agree
to the terms of the associated Analog Devices License Agreement.

*********************************************************************************/

#include "AudioCallback.h"


/*--------------AudioFilter.c--------------------
 * The function AudioFilter() is called from ADAU1761Callback()
 * The CODEC is configured in that way, that every new sample (per channel) is generating an interrupt
 * now we are just copying the samples (left and right) from the input buffer to the output buffer
 * later your filter algorithms should be placed here
 */
#define SAMPLES_PER_CHAN   NUM_AUDIO_SAMPLES/2


fract16 coeff_OSC[2]={-16384, 30888};			//-1, 2cos(a)
fract16 delay[2]={-10310, -5469};				//yn-2, yn-1
fract16 delayB[2]={10186, 12355};				//yn-2, yn-1
fract32 outBuf;
int i;
int buffer_index = 0;
acc40 sum, sumB;

/* Compute filter response  */
void AudioFilter( fract32 dataIn[], fract32 dataOut[])
{
/*	ADC provides data in 24 bit width within a 32 bit format, so higher 8 bits are zero
	We wanna calculate our filter with 16bit input data width (and also 16 bit of coefficients)
	therefore we have to shift 8bits to the right and cast them to 16 bit
	buffer[i]=(fract16)(dataIn[0]>>8); //take only 16 bit

-- example for using circular buffering
	sample_buffer[buffer_index]=(fract16)(dataIn[0]>>8);
	buffer_index = circindex(buffer_index,1,NO_SAMPLES);	//ensures that buffer_index is always between border

*/
	outBuf = 0;
//slow loop
	/*
	for(i=0; i<2; i++)
	{
		outBuf += (fract32)delay[buffer_index]*coeff_OSC[i]<<1;
		buffer_index = circindex(buffer_index, 1, 2);
	}

	delay[buffer_index]=outBuf>>15;
	dataOut[0] = outBuf >> 7;

	buffer_index = circindex(buffer_index, 1, 2);

	//dataOut[1] = dataIn[1];		//using BLACK connector
*/
//builtins
	sum = 0;
	sumB = 0;
	for(i=0; i<2; i++)
	{
		sum = A_mac(sum, delay[buffer_index], coeff_OSC[i]);
		sumB = A_mac(sumB, delayB[buffer_index], coeff_OSC[i]);
		buffer_index = circindex(buffer_index, 1, 2);
	}

	sum = A_ashift(sum, 1);
	sumB = A_ashift(sumB, 1);
	delay[buffer_index]=(fract16)(A_mad(sum) >> 16);
	delayB[buffer_index]=(fract16)(A_mad(sumB) >> 16);
	dataOut[0] = (A_mad(sum)) >> 8;
	dataOut[1] = (A_mad(sumB)) >> 8;

	buffer_index = circindex(buffer_index, 1, 2);

/*	Store back to output buffer
	calculated result has datatype: 	fract32 out2=0;
	because of 24 bit format for DAC -> we shift 8 bit to rigth
	dataOut[1] = (out2)>>8;		//because of 24 bit format for DAC
 */

}
