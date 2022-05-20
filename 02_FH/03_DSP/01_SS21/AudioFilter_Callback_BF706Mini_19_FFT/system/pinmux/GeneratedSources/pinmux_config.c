/*
 **
 ** Source file generated on Juni 10, 2021 at 08:50:51.	
 **
 ** Copyright (C) 2011-2021 Analog Devices Inc., All Rights Reserved.
 **
 ** This file is generated automatically based upon the options selected in 
 ** the Pin Multiplexing configuration editor. Changes to the Pin Multiplexing
 ** configuration should be made by changing the appropriate options rather
 ** than editing this file.
 **
 ** Selected Peripherals
 ** --------------------
 ** SPT0 (ACLK, AFS, AD0, BCLK, BFS, BD0)
 **
 ** GPIO (unavailable)
 ** ------------------
 ** PC04, PC05, PC06, PC07, PC08, PC09
 */

#include <sys/platform.h>
#include <stdint.h>

#define SPT0_ACLK_PORTC_MUX  ((uint32_t) ((uint32_t) 0<<18))
#define SPT0_AFS_PORTC_MUX  ((uint16_t) ((uint16_t) 0<<10))
#define SPT0_AD0_PORTC_MUX  ((uint32_t) ((uint32_t) 0<<16))
#define SPT0_BCLK_PORTC_MUX  ((uint16_t) ((uint16_t) 0<<8))
#define SPT0_BFS_PORTC_MUX  ((uint16_t) ((uint16_t) 0<<14))
#define SPT0_BD0_PORTC_MUX  ((uint16_t) ((uint16_t) 0<<12))

#define SPT0_ACLK_PORTC_FER  ((uint32_t) ((uint32_t) 1<<9))
#define SPT0_AFS_PORTC_FER  ((uint16_t) ((uint16_t) 1<<5))
#define SPT0_AD0_PORTC_FER  ((uint32_t) ((uint32_t) 1<<8))
#define SPT0_BCLK_PORTC_FER  ((uint16_t) ((uint16_t) 1<<4))
#define SPT0_BFS_PORTC_FER  ((uint16_t) ((uint16_t) 1<<7))
#define SPT0_BD0_PORTC_FER  ((uint16_t) ((uint16_t) 1<<6))

int32_t adi_initpinmux(void);

/*
 * Initialize the Port Control MUX and FER Registers
 */
int32_t adi_initpinmux(void) {
    /* PORTx_MUX registers */
    *pREG_PORTC_MUX = SPT0_ACLK_PORTC_MUX | SPT0_AFS_PORTC_MUX
     | SPT0_AD0_PORTC_MUX | SPT0_BCLK_PORTC_MUX | SPT0_BFS_PORTC_MUX
     | SPT0_BD0_PORTC_MUX;

    /* PORTx_FER registers */
    *pREG_PORTC_FER = SPT0_ACLK_PORTC_FER | SPT0_AFS_PORTC_FER
     | SPT0_AD0_PORTC_FER | SPT0_BCLK_PORTC_FER | SPT0_BFS_PORTC_FER
     | SPT0_BD0_PORTC_FER;
    return 0;
}

