#include "AudioCallback.h"
#include "complex.h"


void Scramble_data(complex_fract16* data, short len){
	
	complex_fract16 temp; // temporary storage complex variable swaps
	short i; // current sample index
	short j; // bit reversed index
	short k; // used to propagate carryovers

	short N2 = len/2; // N2 = N >> 1

	// Bit-reversing algorithm. Since 0 -> 0 and N-1 -> N-1
	// under bit-reversal,these two reversals are skipped.

	j = 0;
	for(i=1; i<(len-1); i++)
	{
		k = N2; // k is 1 in msb, 0 elsewhere
		while(k<=j) // Propagate carry to the right if bit is 1
		{
			j = j - k; // Bit tested is 1, so clear it.
			k = k>>1; // Carryover binary 1to right one bit.
		}
		j = j+k; // current bit tested is 0, add 1 to that bit
		// Swap samples if current index is less than bit reversed index.
		if(i<j)
		{
			temp=data[j];
			data[j]=data[i];
			data[i]=temp;			
		}	
	}
}
