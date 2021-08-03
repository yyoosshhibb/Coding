/*
 * getbits.c
 *
 *  Created on: 15 Jun 2018
 *      Author: Lukas
 */

/*
get n bits from position n ____ Position(p) 0 = right_end of x.
x >> (p+1-n) moves the desired field to the right end of the word. ~0 is all 1-bits; shifting it left n bit positions with ~0<<n places zeros
in the right most n bits; complementing that with ~ makes a mask with ones in the rightmost n bits.
vgl. "THE C PROGRAMMING LANGUGE" Brian W. KERNIGHAN PAGE 49
ACHTUNG!!! das ganz rechte bit des Wortes is bit 0. BSP getbis(x,4,3) gibt bit 4,3,2 bit von rechts gezählt zurück.
*/
unsigned getbits(unsigned x,int p, int n)
{
	return(x >> (p+1-n)) & ~(~0 << n);
}

unsigned char reverse(unsigned int b) {
   b = (b & 0xF0) >> 4 | (b & 0x0F) << 4;
   b = (b & 0xCC) >> 2 | (b & 0x33) << 2;
   b = (b & 0xAA) >> 1 | (b & 0x55) << 1;
   return b;
}

unsigned shift(unsigned MSB ,unsigned LSB)
{
	return (MSB<<8)|LSB;
}
