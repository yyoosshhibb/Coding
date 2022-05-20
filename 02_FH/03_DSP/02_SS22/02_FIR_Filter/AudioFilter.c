/*********************************************************************************

Copyright(c) 2015 Analog Devices, Inc. All Rights Reserved.

This software is proprietary and confidential.  By using this software you agree
to the terms of the associated Analog Devices License Agreement.

*********************************************************************************/

#include "AudioCallback.h"
#include "fract.h"


/*--------------AudioFilter.c--------------------
 * The function AudioFilter() is called from ADAU1761Callback()
 * The CODEC is configured in that way, that every new sample (per channel) is generating an interrupt
 * now we are just copying the samples (left and right) from the input buffer to the output buffer
 * later your filter algorithms should be placed here
 */
#define SAMPLES_PER_CHAN   NUM_AUDIO_SAMPLES/2
#define no_coeff	59

fract16 coeff_ar[no_coeff]={
#include "tabs.h"
		};

int i, index=0;
fract16 delay[no_coeff];
fract32 out_buf;
acc40 sum;

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
	delay[index] = (fract16)(dataIn[0]>>8);
	sum = 0;

	for(i=0; i<no_coeff; i++)
	{
		sum = A_mac(sum, coeff_ar[i], delay[index]);
		index = circindex(index, -1, no_coeff);
	}

	index = circindex(index, -1, no_coeff);

	dataOut[0] = dataIn[0];					//feedthrough
	dataOut[1] = (A_mad(sum)) >> 8;			//filter

	/*
	out_buf = 0;

	for(i=0; i<no_coeff; i++)
	{
		//out_buf += (fract32)(coeff_ar[i] * delay[index]>>1);
		out_buf = add_fr1x32(out_buf, mult_fr1x32(coeff_ar[i], delay[index]));
		//out_buf = out_buf + mult_fr1x32(coeff_ar[i], delay[index]);
		index = circindex(index, -1, no_coeff);
	}

	index = circindex(index, 1, no_coeff);

	dataOut[0] = dataIn[0];					//feedthrough
	dataOut[1] = (fract32)(out_buf>>8);		//filter
/*

/*
	dataOut[0] = dataIn[0];		//using RED connector
	dataOut[1] = dataIn[1];		//using BLACK connector
*/

}
