/*
 * Header.h
 *
 *  Created on: 29 Nov 2019
 *      Author: Valentin Keck
 */

#include <DAVE.h>

#ifndef HEADER_H_
#define HEADER_H_

//---------------------------------CAN-------------------------------------------------

typedef enum
{
	ENABLED,
	DISABLED,
};


//-----------------Circular Buffer Timer and Index for Filtering----------------------
uint32_t time;


//-----------------------------------Sensor Struct---------------------------------
typedef struct
{
	uint16_t Value;					// Value from ADC conversion, new Value every 1 micro second (983 nano seconds, see desired sample time from ADC)
	float FilteredValue;			// Filtered Value from ADC conversion
	uint32_t FilteredValue_old;
	uint16_t Buffer_Average_Filter[5];
	uint16_t UnitValue;				// Filtered Value converted into physical unit
	uint8_t CAN_Data[2];				// Filtered Value converted into physical unit transformed into CAN sendable data
	ADC_MEASUREMENT_CHANNEL_t *Channel;   	// ADC Channel from DAVE
	uint8_t Type;							// 0: Linear, 1: Ride Height, 2: NTC, 3: Pressure
	uint8_t FilterType;						// desired filter type: weighted average: 0 or low pass: 1
	uint16_t Offset;						// Offset for Calibration
	float k;								// XX / mV
	uint8_t InputVoltage;					// 5, 10, 12 V

} Analog_Sensor_t;

	//------Sensors------			// adc_measurement_conf.c
	Analog_Sensor_t T_Oil;			// Channel A, ANALOG_IO_0, XMC 14.0,	Deutsch 5
	Analog_Sensor_t T_Water;		// Channel B, ANALOG_IO_1, XMC 14.1,	Deutsch 6
	Analog_Sensor_t p_Oil;			// Channel C, ANALOG_IO_2, XMC 14.2,	Deutsch 7
	Analog_Sensor_t p_Pneu;			// Channel D, ANALOG_IO_3, XMC 14.3,	Deutsch 8
	Analog_Sensor_t x_DP_RL;		// Channel E, ANALOG_IO_4, XMC 14.4, 	Deutsch 9
	Analog_Sensor_t x_DP_RR;		// Channel F, ANALOG_IO_5, XMC 14.5, 	Deutsch 10
	Analog_Sensor_t x_RH_RL;		// Channel G, ANALOG_IO_6, XMC 14.6, 	Deutsch 11
	Analog_Sensor_t x_RH_RR;		// Channel H, ANALOG_IO_7, XMC 14.7, 	Deutsch 12
	Analog_Sensor_t f_LC_RL;		// Channel I, ANALOG_IO_8, XMC 14.15, 	Deutsch 13
	Analog_Sensor_t f_LC_RR;		// Channel J, ANALOG_IO_9, XMC 15.2, 	Deutsch 14

	//------Board Monitoring------
	Analog_Sensor_t T_Board; 		// Channel L, ANALOG_IO_11, XMC 14.14, 	on board
	Analog_Sensor_t u_12V_Meas; 	// Channel M, ANALOG_IO_12, XMC 14.8, 	on board
	Analog_Sensor_t u_5V_ANA_Meas;	// Channel N, ANALOG_IO_13, XMC 14.9, 	on board
	Analog_Sensor_t u_OUT1_Meas;	// Channel O, ANALOG_IO_14, XMC 14.12, 	on board
	Analog_Sensor_t u_OUT2_Meas;	// Channel P, ANALOG_IO_15, XMC 14.13, 	on board

	//------not used Inputs------
	Analog_Sensor_t NTC1;			// Channel K, ANALOG_IO_10, XMC 15.3,	Deutsch 15



//----------------------Introduction of Functions-----------------------

	void ANA_Init();
	void Average_Filter (Analog_Sensor_t *Value);
	void ANA_Read(Analog_Sensor_t *Sensor);
	void Low_Pass_Filter(Analog_Sensor_t *Value);
	void Powercycle_Calibration(Analog_Sensor_t *Sensor);
	void UnitConversion(Analog_Sensor_t *Sensor);
	void Task_ANA_Read();
	void Task_CAN_2_Receive();
	void Task_CAN_2_Transmit();
	void CAN2_INIT();
	void Task_CAN_1_Receive();
	void Task_CAN_1_Transmit();
	void CAN1_INIT();



#endif /* HEADER_H_ */
