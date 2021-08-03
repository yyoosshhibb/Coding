#include "AudioCallback.h"
#include "math.h"
#include "complex.h"


complex_fract16 twiddle[FFT_LEN]={
#include "twiddle.txt"
};

void FFT(complex_fract16* vector, int N)
{
	int stage, group, delta, no_groups, twiddleind, A, B;
	no_groups = N>>1;
	fract32 bufA, bufB;

	for(stage = 1; stage<(N); stage = stage << 1)
	{
		//groupsize = N>>(J-stage);		//now stage
		A = 0;
		B = stage;

		for(group = 0; group<no_groups; group++)
		{
			twiddleind = 0;
			for(int i = 0; i<stage; i++)
			{
				bufA = (twiddle[twiddleind].re * vector[B].re - twiddle[twiddleind].im * vector[B].im)>>15;
				bufB = (twiddle[twiddleind].re * vector[B].im + twiddle[twiddleind].im * vector[B].re)>>15;

				vector[B].re = (vector[A].re - bufA) >> 1;
				vector[B].im = (vector[A].im - bufB) >> 1;
				vector[A].re = (vector[A].re + bufA) >> 1;
				vector[A].im = (vector[A].im + bufB) >> 1;

				twiddleind += no_groups;
				A ++;
				B ++;
			}
			A+=stage;
			B+=stage;
		}
		no_groups = no_groups >> 1;
	}

}

void Get_Power_Spec(complex_fract16* input_buffer,complex_fract16* power_spec,int fft_len)
{
	for(int i=0; i<fft_len/2; i++)
	{
		power_spec[i].re = input_buffer[i].re * input_buffer[i].re >> 15;
		power_spec[i].im = input_buffer[i].im * input_buffer[i].im >> 15;
	}
}
/*
void butterfly(complex_fract16* A*, complex_fract16* B*, complex_fract16 twi)		//would be necessary to change to pointer operations
{
	fract32 bufA, bufB;

	bufA = (twi.re * B.re - twi.im * B.im) << 1;
	bufB = (twi.re * B.im + twi.im * B.re) << 1;

	B.re = (A.re - bufA) >> 16;
	B.im = (A.im - bufB) >> 16;
	A.re = (A.re + bufA) >> 16;
	A.im = (A.im + bufB) >> 16;
}
*/



