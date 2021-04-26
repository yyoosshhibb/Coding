#ifndef __ANA_MANAGEMENT
#define __ANA_MANAGEMENT

#include "Hardware_Def.h"

#define FLAG_ANA_CONFIG_READY  0x11

#define PT100X_NB_PT 12		//number of values taken for the PT sensor lookup table
#define Filter_AV_NB 50		//number of value taken in the average filter calculation


typedef enum{
	Linear,
	PT100X,
	BTS50010,						//Engine Lower box Transistor sensing value
}Sensor_type_t;

typedef struct{
	
	uint16_t 						*ADC_Value;				//Value given by the ADC in real time
	int16_t 						Value_mV;					//Value converted in mV
	int16_t							Real_Value;				//value converted to real value with unit
	uint16_t 						Pin;							//input pin nB
	GPIO_TypeDef 				*Port;						//input port
	uint32_t 						ADC_channel;			//corresponding channel of the ADC
	Sensor_type_t 			Sensor_type;			//Sensor type referin to sensor_type_t defined in the header file
	float								Factor;						//conversion factor from mV to real value in XX/mV
	int16_t							offset_mV;				//offset of the function /!\ IN MV !!!!
	uint16_t 						Range_mV;					//range in mv BEFORE voltage divider
	uint16_t						*Filtered_Value;	//Value in bits after filtering
	
}ADC_input_t;


#define ADCNb 1			//Define number of input Channels

extern  ADC_input_t ADC_1;
//extern 	ADC_input_t ADC_2;
//extern 	ADC_input_t ADC_3;
//extern 	ADC_input_t ADC_4;
//extern 	ADC_input_t ADC_5;
//extern 	ADC_input_t ADC_6;



/* Definition for ADC1's DMA */
#define ADC1_DMA_CHANNEL                DMA_CHANNEL_0
#define ADC1_DMA_STREAM                 DMA2_Stream0         

/* Definition for ADCx's NVIC */
#define ADC1_DMA_IRQn                   DMA2_Stream0_IRQn
#define ADC1_DMA_IRQHandler             DMA2_Stream0_IRQHandler

extern osThreadId_t id_task_Filtering;

void ADC1_DMA_IRQHandler(void);
void Analog_init(void);
void ADC_factor(void);
void TASK_Filtering(void* argument);
void real_conversion(ADC_input_t *ADC_in);
void mV_conversion(ADC_input_t *ADC_in);

#endif

