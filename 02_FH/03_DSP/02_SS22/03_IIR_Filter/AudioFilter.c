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

fract16 delay[5];
fract32 out_buf;
acc40 sum;
fract16 coeff_IIR[5]={612, 22673, 1224, -8737, 612};			//A0, B1, A1, B2, A2	change sign of backwards coeffs because they get subtracted in the sum
int i;
int buffer_index = 0;


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
	delay[buffer_index] = (fract16)(dataIn[0]>>8);



	sum = 0;
	for(i=0; i<5; i++)
	{
		sum = A_mac(sum, delay[buffer_index], coeff_IIR[i]);
		buffer_index = circindex(buffer_index,-1, 5);
	}

	sum = A_ashift(sum, 1);
	buffer_index = circindex(buffer_index,1, 5);			//Increase delay line index by one
	delay[buffer_index] = (fract16)(A_mad(sum) >> 16);				//safe yn on top of xn
	buffer_index = circindex(buffer_index,1, 5);			//increase to safe xn+1 on top of yn
	dataOut[0] = dataIn[0];		//using RED connector
	dataOut[1] = (A_mad(sum)) >> 8;

/*
	out_buf = 0;

	for(i = 0; i<5; i++)
	{
		out_buf = add_fr1x32(out_buf, mult_fr1x32(delay[buffer_index], coeff_IIR[i]));
		buffer_index = circindex(buffer_index,-1, 5);
	}


	buffer_index = circindex(buffer_index,1, 5);			//Increase delay line index by one
	delay[buffer_index] = (fract16)(out_buf >> 15);				//safe yn on top of xn
	buffer_index = circindex(buffer_index,1, 5);			//increase to safe xn+1 on top of yn

*/

/*	Store back to output buffer
	calculated result has datatype: 	fract32 out2=0;
	because of 24 bit format for DAC -> we shift 8 bit to rigth
	dataOut[1] = (out2)>>8;		//because of 24 bit format for DAC
 */

}
