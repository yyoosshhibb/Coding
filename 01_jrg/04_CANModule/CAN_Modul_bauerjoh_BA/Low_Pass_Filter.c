#include <Low_Pass_Filter.h>
#include "Header.h"

//-------------exponentially weighted moving average------------------
//---------------------(digital low pass)-----------------------------
//https://en.wikipedia.org/wiki/Low-pass_filter#Simple_infinite_impulse_response_filter



void Low_Pass_Filter(Analog_Sensor_t *const Sensor)
{

	Sensor->FilteredValue = alpha * Sensor->Value + (1-alpha) * Sensor->FilteredValue_old;

	Sensor->FilteredValue_old = Sensor->FilteredValue;

}
