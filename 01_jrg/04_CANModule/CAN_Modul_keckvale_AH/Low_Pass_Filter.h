/*
 * Low_Pass_Filter.h
 *
 *  Created on: 4 Dec 2019
 *      Author: Valentin Keck
 */
#include <DAVE.h>


#ifndef LOW_PASS_FILTER_H_
#define LOW_PASS_FILTER_H_

#define alpha 0.9			 // alpha for low pass filter
uint16_t FilteredValue_old;  // Buffer for old value for filter //https://en.wikipedia.org/wiki/Low-pass_filter#Simple_infinite_impulse_response_filter

#endif /* LOW_PASS_FILTER_H_ */
