/*
 * IO_Port.c
 *
 *  Created on: 26 Oct 2019
 *      Author: Paul
 */

#include "Header.h"

int output_pins;
extern struct data_IOPort IOportData;
extern struct data_can canData;
uint16_t busio_read;
extern boolean_T shiftDownInterrupt;
extern boolean_T shiftUpInterrupt;

void IOPort_ini()
{
	//Inputs
	IOportData.Fans_dash_bit = (boolean_T*)&VCU_DW.VAR_IN_Fans_dash_bit;
	IOportData.p_brake_R = &VCU_DW.VAR_IN_p_brake_R;
	//IOportData.p_pneum = &VCU_DW.VAR_IN_p_pneum;
	IOportData.x_clutch = &VCU_DW.VAR_IN_x_clutch;
	IOportData.f_FL = &VCU_DW.VAR_IN_f_FL;
	IOportData.f_FR = &VCU_DW.VAR_IN_f_FR;
	IOportData.f_RL = &VCU_DW.VAR_IN_f_RL;
	IOportData.f_RR = &VCU_DW.VAR_IN_f_RR;
	IOportData.LC_dash_bit = (boolean_T*)&VCU_DW.VAR_IN_LC_dash_bit;
	IOportData.x_RH_F = &VCU_DW.VAR_IN_x_RH_F;
	IOportData.x_RH_RL = &VCU_DW.VAR_IN_x_RH_RL;
	IOportData.x_RH_RR = &VCU_DW.VAR_IN_x_RH_RR;
	IOportData.U_Bat = &VCU_DW.VAR_IN_U_Bat;
	IOportData.x_clutch_STW = &VCU_DW.VAR_IN_x_clutch_STW;
	VAR_boardTemp = 0; IOportData.boardTemp = &VAR_boardTemp;
	VAR_TR1_VSense_WP = 0; IOportData.TR1_VSense_WP = &VAR_TR1_VSense_WP;
	VAR_TR2_VSense_FAN1 = 0; IOportData.TR2_VSense_FAN1 = &VAR_TR2_VSense_FAN1;
	VAR_TR3_VSense_FAN2 = 0; IOportData.TR3_VSense_FAN2 = &VAR_TR3_VSense_FAN2;

	//Outputs
	IOportData.VOVG_ShiftUp = &VCU_DW.VAR_OUT_VOVG_ShiftUp;
	IOportData.VOVG_ShiftDown = &VCU_DW.VAR_OUT_VOVG_ShiftDown;
	IOportData.Ignition_Cut = &VCU_DW.VAR_OUT_Ignition_Cut;
	IOportData.VOVG_IN = &VCU_DW.VAR_OUT_VOVG_IN;
	IOportData.VOVG_OUT = &VCU_DW.VAR_OUT_VOVG_OUT;
	IOportData.MHJ9_IN = (uint16_t*)&VCU_DW.VAR_OUT_MHJ9_IN; //PWM
	IOportData.MHJ9_OUT = (uint16_t*)&VCU_DW.VAR_OUT_MHJ9_OUT; //PWM
	IOportData.Brakelight = &VCU_DW.VAR_OUT_Brakelight;
	IOportData.Waterpump_PWM_active = &VCU_DW.VAR_OUT_Waterpump_PWM_active;
	IOportData.Fans1_PWM_active = &VCU_DW.VAR_OUT_Fans1_PWM_active;
	IOportData.Fans2_PWM_active = &VCU_DW.VAR_OUT_Fans2_PWM_active;

	output_pins = 0;
	busio_read = 0;
}

void IOPort_setDOUTS()
{
	if(canData.ManualControl_Active) //set manual values if controlled by CANoe
	{
		ManualControl_setDOUTS();
	}
	//set calculated values if controlled by VCU
	  output_pins =	*IOportData.VOVG_ShiftUp |
			  	  	(*IOportData.VOVG_ShiftDown << 1) |
					(*IOportData.Ignition_Cut << 2) |
					(*IOportData.VOVG_IN << 3) |
					(*IOportData.VOVG_OUT << 4);

	  BUS_IO_Write(&BUS_IO, (uint8_t) output_pins);
}

void IOPort_readDINS()
{
	busio_read = BUS_IO_Read(&BUS_IO_Input);
	*IOportData.Fans_dash_bit = checkRangePlausi(getbits(busio_read, 1, 1),ERR_FANS_DASH_BIT);
	*IOportData.LC_dash_bit = checkRangePlausi(getbits(busio_read, 0, 1),ERR_LC_DASH_BIT);
}

void IOPort_setPWMOUTS()
{
	if(canData.ManualControl_Active) //set manual values if controlled by CANoe
	{
		ManualControl_setPWMOUTS();
	}
	//set calculated values if controlled by VCU
	//setMHJ9Freq();
	PWM_SetDutyCycle(&PWM_MHJ9_IN, (float)*IOportData.MHJ9_IN/65536*10000);//100% = 10000, var_max = 65536
	PWM_SetDutyCycle(&PWM_MHJ9_OUT, (float)*IOportData.MHJ9_OUT/65536*10000);
	PWM_SetDutyCycle(&PWM_Waterpump, (float)*IOportData.Waterpump_PWM_active/65536*10000);
	PWM_SetDutyCycle(&PWM_Fans1, (float)*IOportData.Fans1_PWM_active/65536*10000);
	PWM_SetDutyCycle(&PWM_Fans2, (float)*IOportData.Fans2_PWM_active/65536*10000);
	//PWM_SetFreq(&PWM_Fans1, 1000);//TEST
	//PWM_SetDutyCycle(&PWM_Fans1, 5000);//TEST
}

void IOPort_readAINS()
{
	*IOportData.x_clutch_STW = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_A)/4095.0*5*1000; //5V = 4095
	*IOportData.U_Bat = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_B)/4095.0*14.8*1000;
	*IOportData.x_RH_F = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_C)/4095.0*12*1000;
	*IOportData.f_FR = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_D)/4095.0*5*1000;
	*IOportData.f_FL = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_E)/4095.0*5*1000;
	*IOportData.x_clutch = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_F)/4095.0*5*1000;
	*IOportData.p_brake_R = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_G)/4095.0*5*1000;
	*IOportData.boardTemp = NTC_Calc(ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_H));
	*IOportData.TR1_VSense_WP = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_I)/4095.0*3.3*1000;
	*IOportData.TR2_VSense_FAN1 = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_J)/4095.0*3.3*1000;
	*IOportData.TR3_VSense_FAN2 = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_K)/4095.0*3.3*1000;
	//int test2 = ADC_MEASUREMENT_GetResult(&ADC_MEASUREMENT_Channel_H);
  }

void Interrupt_Shifting(void)
{
	shiftUpInterrupt = DIGITAL_IO_GetInput(&Signal_UpShift);
	shiftDownInterrupt = DIGITAL_IO_GetInput(&Signal_DownShift);
}

void ManualControl_setDOUTS()
{
	if(canData.ManConOn_VOVGShiftUp)
	  *IOportData.VOVG_ShiftUp = canData.ManConVar_VOVGShiftUp;

	if(canData.ManConOn_VOVGShiftDown)
	  *IOportData.VOVG_ShiftDown = canData.ManConVar_VOVGShiftDown;

	if(canData.ManConOn_IgnCut)
	  *IOportData.Ignition_Cut = canData.ManConVar_IgnCut;

	if(canData.ManConOn_VOVG_IN)
	  *IOportData.VOVG_IN = canData.ManConVar_VOVG_IN;

	if(canData.ManConOn_VOVG_OUT)
	  *IOportData.VOVG_OUT = canData.ManConVar_VOVG_OUT;
}

void ManualControl_setPWMOUTS()
{
	if(canData.ManConOn_MHJ9_IN)
	  *IOportData.MHJ9_IN = (float)canData.ManConVar_MHJ9_IN/100*65536;

	if(canData.ManConOn_MHJ9_OUT)
	  *IOportData.MHJ9_OUT = (float)canData.ManConVar_MHJ9_OUT/100*65536;

	if(canData.ManConOn_Waterpump)
	  *IOportData.Waterpump_PWM_active = (float)canData.ManConVar_Waterpump/100*65536;

	if(canData.ManConOn_Fans1)
	  *IOportData.Fans1_PWM_active = (float)canData.ManConVar_Fans1/100*65536;

	if(canData.ManConOn_Fans2)
	  *IOportData.Fans2_PWM_active = (float)canData.ManConVar_Fans2/100*65536;
}

double NTC_Calc(double Temp)
{
			int NTC_LUT_NB_POINT = 6;
			int i;
			uint16_t Temp_Val;
			float x0,y0,x1,y1,a,b;
			uint32_t LUT_NTC_V[6]={0};
			float LUT_NTC[6]={0};

			LUT_NTC_V[0] = 140;
			LUT_NTC_V[1] = 283;
			LUT_NTC_V[2] = 602;
			LUT_NTC_V[3] = 1288;
			LUT_NTC_V[4] = 2500;
			LUT_NTC_V[5] = 3850;

		    LUT_NTC[0] = 125;
			LUT_NTC[1] = 100;
			LUT_NTC[2] = 75;
			LUT_NTC[3] = 50;
			LUT_NTC[4] = 25;
			LUT_NTC[5] = 0;

			i=0;
			Temp_Val = ((Temp)*5000/4095);
			while(i<NTC_LUT_NB_POINT && LUT_NTC_V[i]<=Temp_Val) i++;
			if(i==0){
				x0 = LUT_NTC_V[0];
				y0 = LUT_NTC[0];
				x1 = LUT_NTC_V[1];
				y1 = LUT_NTC[1];
			}
			else if(i==NTC_LUT_NB_POINT){
				x0 = LUT_NTC_V[NTC_LUT_NB_POINT-2];
				y0 = LUT_NTC[NTC_LUT_NB_POINT-2];
				x1 = LUT_NTC_V[NTC_LUT_NB_POINT-1];
				y1 = LUT_NTC[NTC_LUT_NB_POINT-1];
			}
			else{
				x0 = LUT_NTC_V[i-1];
				y0 = LUT_NTC[i-1];
				x1 = LUT_NTC_V[i];
				y1 = LUT_NTC[i];
			}

			a = (y1-y0)/(x1-x0);
			b = y0 - a*x0;
			return a*(Temp_Val) + b;

}

void setMHJ9Freq()
{
	if(*IOportData.MHJ9_IN < 7000)
	{
		PWM_SetFreq(&PWM_MHJ9_IN, (*IOportData.MHJ9_IN)/7000.0*100.0 );

		if(*IOportData.MHJ9_IN < 3000)
		{
			PWM_SetFreq(&PWM_MHJ9_IN, 15);
		}

	}
	else
	{
		PWM_SetFreq(&PWM_MHJ9_IN, 100);
	}



	if(*IOportData.MHJ9_OUT < 7000)
	{
		PWM_SetFreq(&PWM_MHJ9_OUT, (*IOportData.MHJ9_OUT)/7000.0*100.0);
		/*
		if(*IOportData.MHJ9_OUT < 6000)
		{
			PWM_SetFreq(&PWM_MHJ9_OUT, 30);
			if(*IOportData.MHJ9_OUT < 3000)
			{
				PWM_SetFreq(&PWM_MHJ9_OUT, 15);
			}
		}
		*/
	}
	else
	{
		PWM_SetFreq(&PWM_MHJ9_OUT, 100);
	}

	/*
	if(*canData.STW_clutch_mode == 5)
	{
		PWM_SetFreq(&PWM_MHJ9_IN, 80);
		PWM_SetFreq(&PWM_MHJ9_OUT, 80);
	}
	else {
		if(*canData.STW_clutch_mode == 6)
		{
		PWM_SetFreq(&PWM_MHJ9_IN, 50);
		PWM_SetFreq(&PWM_MHJ9_OUT, 50);
		}
		else
		{
			if(*canData.STW_clutch_mode == 7)
			{
			PWM_SetFreq(&PWM_MHJ9_IN, 30);
			PWM_SetFreq(&PWM_MHJ9_OUT, 30);
			}
			else
			{
				PWM_SetFreq(&PWM_MHJ9_IN, 100);
				PWM_SetFreq(&PWM_MHJ9_OUT, 100);
			}
		}
	}
	*/
}
