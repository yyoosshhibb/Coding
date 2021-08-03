/* 
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * 
 * File: Subsystem_InputData.c
 *  
 * Code generated for Simulink model : VCU.
 * Model version      : 1.313
 * Simulink Coder version    : 8.14 (R2018a) 06-Feb-2018
 * TLC version       : 8.14 (Feb 22 2018)
 * C/C++ source code generated on  : Sun Jul 25 17:15:57 2021
 * 
 * Target selection: Infineon_XMC_Family.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */


    

        #include "Subsystem_InputData.h"
          /* Include model header file for global data */
              #include "VCU.h"

            #include "VCU_private.h"





  


  


  


  


  


  


  


  


  


  


  


  


  


  


    
       
    
  

          /* Output and update for atomic system: '<Root>/Input Data' */
      
              
  
        void FUNC_InputData(void)
  {
  
                      
      
      
      
  



                          
      
  



                                /* DataStoreRead: '<S8>/Data Store Read1' */
/*@>fbb1*/VCU_B./*@>110e3*/DataStoreRead1_d/*@>6aaa*/ = /*@>102ca*/VCU_DW./*@>113fb*/VAR_IN_p_brake_F_LSB;
/* DataStoreRead: '<S8>/Data Store Read4' */
/*@>fbb7*/VCU_B./*@>110e6*/DataStoreRead4_p/*@>6aac*/ = /*@>102d0*/VCU_DW./*@>113fe*/VAR_IN_p_brake_F_MSB;
/* Gain: '<S16>/Gain' */
/*@>fbbd*/VCU_B./*@>110e9*/Gain_d/*@>6ab4*/ = /*@>e7fe*/(uint16_T)(/*@>fbc3*/VCU_B./*@>110ec*/DataStoreRead4_p/*@>e7e2*/ << /*@>e7e1*/7);
/* Sum: '<S16>/Add' */
/*@>fbc9*/VCU_B./*@>110ef*/Add_a/*@>88ce*/ = /*@>e7d2*/(uint16_T)(((/*@>e803*/(uint32_T)/*@>fbcf*/VCU_B./*@>110f2*/Gain_d/*@>e7d9*/ << /*@>e7d8*/1)/*@>88ca*/ + /*@>fbd5*/VCU_B./*@>110f5*/DataStoreRead1_d)/*@>e7d0*/ >> /*@>e7cf*/1);
/* DataTypeConversion: '<S16>/Data Type Conversion' */
/*@>fbdb*/VCU_B./*@>110f8*/DataTypeConversion/*@>6abc*/ = /*@>f6f3*/(uint16_T)(/*@>fbe1*/VCU_B./*@>110fb*/Add_a/*@>e7c6*/ << /*@>f2f6*/1);
/* Gain: '<S15>/Factor' */
/*@>fbe7*/VCU_B./*@>110fe*/Factor_g/*@>6ac4*/ = /*@>e7ee*/64173U/*@>e7bf*/ * /*@>fbed*/VCU_B./*@>11101*/DataTypeConversion;
/* Sum: '<S15>/Add1' incorporates:
 *  Constant: '<S15>/Offset'
 */
/*@>fbf3*/VCU_B./*@>11104*/Add1_m/*@>88d5*/ = /*@>e810*/(real_T)/*@>fbf9*/VCU_B./*@>11107*/Factor_g/*@>e7b8*/ * /*@>e7b7*/2.384185791015625E-7/*@>88d2*/ + /*@>e61e*/-20.0;
/* DataStoreRead: '<S8>/Data Store Read2' */
/*@>fbff*/VCU_B./*@>1110a*/DataStoreRead2/*@>6acb*/ = /*@>102d6*/VCU_DW./*@>11401*/VAR_IN_ABS_BL_switch;
/* DataTypeConversion: '<S8>/Data Type Conversion2' */
/*@>fc05*/VCU_B./*@>1110d*/ABS_BL_switch/*@>6ace*/ = /*@>fc0b*/VCU_B./*@>11110*/DataStoreRead2;
/* DataStoreRead: '<S8>/Data Store Read3' */
/*@>fc11*/VCU_B./*@>11113*/DataStoreRead3_l/*@>6ad0*/ = /*@>102dc*/VCU_DW./*@>11404*/VAR_IN_ABS_switchstate;
/* DataTypeConversion: '<S8>/Data Type Conversion' */
/*@>fc17*/VCU_B./*@>11116*/ABS_switchstate/*@>6ad3*/ = /*@>fc1d*/VCU_B./*@>11119*/DataStoreRead3_l;
/* DataStoreRead: '<S8>/Data Store Read5' */
/*@>fc23*/VCU_B./*@>1111c*/DataStoreRead5_d/*@>6ad5*/ = /*@>102e2*/VCU_DW./*@>11407*/VAR_IN_ABS_EBD_Lamp;
/* DataTypeConversion: '<S8>/Data Type Conversion4' */
/*@>fc29*/VCU_B./*@>1111f*/ABS_EBD_Lamp/*@>6ad8*/ = /*@>fc2f*/VCU_B./*@>11122*/DataStoreRead5_d;
/* DataStoreRead: '<S8>/Data Store Read6' */
/*@>fc35*/VCU_B./*@>11125*/DataStoreRead6_j/*@>6ada*/ = /*@>102e8*/VCU_DW./*@>1140a*/VAR_IN_ABS_active;
/* DataTypeConversion: '<S8>/Data Type Conversion3' */
/*@>fc3b*/VCU_B./*@>11128*/ABS_active/*@>6add*/ = /*@>fc41*/VCU_B./*@>1112b*/DataStoreRead6_j;
/* DataStoreRead: '<S8>/Data Store Read7' */
/*@>fc47*/VCU_B./*@>1112e*/DataStoreRead7_l/*@>6adf*/ = /*@>102ee*/VCU_DW./*@>1140d*/VAR_IN_ABS_Lamp;
/* DataTypeConversion: '<S8>/Data Type Conversion5' */
/*@>fc4d*/VCU_B./*@>11131*/ABS_Lamp/*@>6ae2*/ = /*@>fc53*/VCU_B./*@>11134*/DataStoreRead7_l;
/* DataStoreRead: '<S9>/Data Store Read5' */
/*@>fc59*/VCU_B./*@>11137*/DataStoreRead5_n/*@>6ae4*/ = /*@>102f4*/VCU_DW./*@>11410*/VAR_IN_n_wheel_FL_mpros_LSB;
/* DataStoreRead: '<S9>/Data Store Read1' */
/*@>fc5f*/VCU_B./*@>1113a*/DataStoreRead1_k/*@>6ae6*/ = /*@>102fa*/VCU_DW./*@>11413*/VAR_IN_n_wheel_FL_mpros_MSB;
/* Gain: '<S21>/Gain' */
/*@>fc65*/VCU_B./*@>1113d*/Gain_i2/*@>6aee*/ = /*@>e832*/(uint16_T)(/*@>fc6b*/VCU_B./*@>11140*/DataStoreRead1_k/*@>e7b3*/ << /*@>e7b2*/7);
/* Sum: '<S21>/Add' */
/*@>fc71*/VCU_B./*@>11143*/Add_li/*@>88de*/ = /*@>e7a3*/(uint16_T)(((/*@>e837*/(uint32_T)/*@>fc77*/VCU_B./*@>11146*/Gain_i2/*@>e7aa*/ << /*@>e7a9*/1)/*@>88da*/ + /*@>fc7d*/VCU_B./*@>11149*/DataStoreRead5_n)/*@>e7a1*/ >> /*@>e7a0*/1);
/* DataTypeConversion: '<S21>/Data Type Conversion' */
/*@>fc83*/VCU_B./*@>1114c*/DataTypeConversion_a/*@>6af6*/ = /*@>f6f2*/(uint16_T)(/*@>fc89*/VCU_B./*@>1114f*/Add_li/*@>e797*/ << /*@>f2f8*/1);
/* Gain: '<S17>/Factor' */
/*@>fc8f*/VCU_B./*@>11152*/Factor_br/*@>6afe*/ = /*@>e841*/(uint32_T)/*@>fc95*/VCU_B./*@>11155*/DataTypeConversion_a/*@>e792*/ << /*@>e791*/15;
/* Sum: '<S17>/Add1' */
/*@>fc9b*/VCU_B./*@>11158*/Add1_k/*@>88e5*/ = /*@>e845*/(real_T)/*@>fca1*/VCU_B./*@>1115b*/Factor_br/*@>e787*/ * /*@>e786*/4.76837158203125E-7;
/* DataStoreRead: '<S9>/Data Store Read2' */
/*@>fca7*/VCU_B./*@>1115e*/DataStoreRead2_n/*@>6b05*/ = /*@>10300*/VCU_DW./*@>11416*/VAR_IN_n_wheel_FR_mpros_LSB;
/* DataStoreRead: '<S9>/Data Store Read3' */
/*@>fcad*/VCU_B./*@>11161*/DataStoreRead3_k/*@>6b07*/ = /*@>10306*/VCU_DW./*@>11419*/VAR_IN_n_wheel_FR_mpros_MSB;
/* Gain: '<S22>/Gain' */
/*@>fcb3*/VCU_B./*@>11164*/Gain_e/*@>6b0f*/ = /*@>e84e*/(uint16_T)(/*@>fcb9*/VCU_B./*@>11167*/DataStoreRead3_k/*@>e782*/ << /*@>e781*/7);
/* Sum: '<S22>/Add' */
/*@>fcbf*/VCU_B./*@>1116a*/Add_f/*@>88ee*/ = /*@>e772*/(uint16_T)(((/*@>e853*/(uint32_T)/*@>fcc5*/VCU_B./*@>1116d*/Gain_e/*@>e779*/ << /*@>e778*/1)/*@>88ea*/ + /*@>fccb*/VCU_B./*@>11170*/DataStoreRead2_n)/*@>e770*/ >> /*@>e76f*/1);
/* DataTypeConversion: '<S22>/Data Type Conversion' */
/*@>fcd1*/VCU_B./*@>11173*/DataTypeConversion_l/*@>6b17*/ = /*@>f6f1*/(uint16_T)(/*@>fcd7*/VCU_B./*@>11176*/Add_f/*@>e766*/ << /*@>f2fa*/1);
/* Gain: '<S18>/Factor' */
/*@>fcdd*/VCU_B./*@>11179*/Factor_gm/*@>6b1f*/ = /*@>e85d*/(uint32_T)/*@>fce3*/VCU_B./*@>1117c*/DataTypeConversion_l/*@>e761*/ << /*@>e760*/15;
/* Sum: '<S18>/Add1' */
/*@>fce9*/VCU_B./*@>1117f*/Add1_de/*@>88f5*/ = /*@>e861*/(real_T)/*@>fcef*/VCU_B./*@>11182*/Factor_gm/*@>e756*/ * /*@>e755*/4.76837158203125E-7;
/* Sum: '<S9>/Add' */
/*@>fcf5*/VCU_B./*@>11185*/Add_l1/*@>88fa*/ = /*@>fcfb*/VCU_B./*@>11188*/Add1_k/*@>88f7*/ + /*@>fd01*/VCU_B./*@>1118b*/Add1_de;
/* Gain: '<S9>/Gain4' */
/*@>fd07*/VCU_B./*@>1118e*/Gain4/*@>6b31*/ = /*@>e61f*/0.9/*@>e750*/ * /*@>fd0d*/VCU_B./*@>11191*/Add_l1;
/* DataStoreRead: '<S9>/Data Store Read4' */
/*@>fd13*/VCU_B./*@>11194*/DataStoreRead4_o/*@>6b33*/ = /*@>1030c*/VCU_DW./*@>1141c*/VAR_IN_n_wheel_RL_mpros_LSB;
/* DataStoreRead: '<S9>/Data Store Read6' */
/*@>fd19*/VCU_B./*@>11197*/DataStoreRead6_f/*@>6b35*/ = /*@>10312*/VCU_DW./*@>1141f*/VAR_IN_n_wheel_RL_mpros_MSB;
/* Gain: '<S23>/Gain' */
/*@>fd1f*/VCU_B./*@>1119a*/Gain_me/*@>6b3d*/ = /*@>e86f*/(uint16_T)(/*@>fd25*/VCU_B./*@>1119d*/DataStoreRead6_f/*@>e74d*/ << /*@>e74c*/7);
/* Sum: '<S23>/Add' */
/*@>fd2b*/VCU_B./*@>111a0*/Add_o/*@>8903*/ = /*@>e73d*/(uint16_T)(((/*@>e874*/(uint32_T)/*@>fd31*/VCU_B./*@>111a3*/Gain_me/*@>e744*/ << /*@>e743*/1)/*@>88ff*/ + /*@>fd37*/VCU_B./*@>111a6*/DataStoreRead4_o)/*@>e73b*/ >> /*@>e73a*/1);
/* DataTypeConversion: '<S23>/Data Type Conversion' */
/*@>fd3d*/VCU_B./*@>111a9*/DataTypeConversion_j/*@>6b45*/ = /*@>f6f0*/(uint16_T)(/*@>fd43*/VCU_B./*@>111ac*/Add_o/*@>e731*/ << /*@>f2fc*/1);
/* Gain: '<S19>/Factor' */
/*@>fd49*/VCU_B./*@>111af*/Factor_d5/*@>6b4d*/ = /*@>e87e*/(uint32_T)/*@>fd4f*/VCU_B./*@>111b2*/DataTypeConversion_j/*@>e72c*/ << /*@>e72b*/15;
/* Sum: '<S19>/Add1' */
/*@>fd55*/VCU_B./*@>111b5*/Add1_ks/*@>890a*/ = /*@>e882*/(real_T)/*@>fd5b*/VCU_B./*@>111b8*/Factor_d5/*@>e721*/ * /*@>e720*/4.76837158203125E-7;
/* DataStoreRead: '<S9>/Data Store Read7' */
/*@>fd61*/VCU_B./*@>111bb*/DataStoreRead7_h/*@>6b54*/ = /*@>10318*/VCU_DW./*@>11422*/VAR_IN_n_wheel_RR_mpros_LSB;
/* DataStoreRead: '<S9>/Data Store Read8' */
/*@>fd67*/VCU_B./*@>111be*/DataStoreRead8_e/*@>6b56*/ = /*@>1031e*/VCU_DW./*@>11425*/VAR_IN_n_wheel_RR_mpros_MSB;
/* Gain: '<S24>/Gain' */
/*@>fd6d*/VCU_B./*@>111c1*/Gain_c/*@>6b5e*/ = /*@>e88b*/(uint16_T)(/*@>fd73*/VCU_B./*@>111c4*/DataStoreRead8_e/*@>e71c*/ << /*@>e71b*/7);
/* Sum: '<S24>/Add' */
/*@>fd79*/VCU_B./*@>111c7*/Add_fb/*@>8913*/ = /*@>e70c*/(uint16_T)(((/*@>e890*/(uint32_T)/*@>fd7f*/VCU_B./*@>111ca*/Gain_c/*@>e713*/ << /*@>e712*/1)/*@>890f*/ + /*@>fd85*/VCU_B./*@>111cd*/DataStoreRead7_h)/*@>e70a*/ >> /*@>e709*/1);
/* DataTypeConversion: '<S24>/Data Type Conversion' */
/*@>fd8b*/VCU_B./*@>111d0*/DataTypeConversion_c/*@>6b66*/ = /*@>f6ef*/(uint16_T)(/*@>fd91*/VCU_B./*@>111d3*/Add_fb/*@>e700*/ << /*@>f2fe*/1);
/* Gain: '<S20>/Factor' */
/*@>fd97*/VCU_B./*@>111d6*/Factor_jp/*@>6b6e*/ = /*@>e89a*/(uint32_T)/*@>fd9d*/VCU_B./*@>111d9*/DataTypeConversion_c/*@>e6fb*/ << /*@>e6fa*/15;
/* Sum: '<S20>/Add1' */
/*@>fda3*/VCU_B./*@>111dc*/Add1_eq/*@>891a*/ = /*@>e89e*/(real_T)/*@>fda9*/VCU_B./*@>111df*/Factor_jp/*@>e6f0*/ * /*@>e6ef*/4.76837158203125E-7;
/* DataStoreRead: '<S25>/Data Store Read1' */
/*@>fdaf*/VCU_B./*@>111e2*/DataStoreRead1_g/*@>6b75*/ = /*@>10324*/VCU_DW./*@>11428*/VAR_IN_u_TPS;
/* DataStoreRead: '<S26>/Data Store Read4' */
/*@>fdb5*/VCU_B./*@>111e5*/DataStoreRead4_k/*@>6b77*/ = /*@>1032a*/VCU_DW./*@>1142b*/VAR_IN_p_air_22_des;
/* DataTypeConversion: '<S26>/Data Type Conversion1' */
/*@>fdbb*/VCU_B./*@>111e8*/DataTypeConversion1/*@>6b7a*/ = /*@>fdc1*/VCU_B./*@>111eb*/DataStoreRead4_k;
/* DataStoreRead: '<S26>/Data Store Read1' */
/*@>fdc7*/VCU_B./*@>111ee*/DataStoreRead1_m/*@>6b7c*/ = /*@>10330*/VCU_DW./*@>1142e*/VAR_IN_n_engine_MSB;
/* Gain: '<S29>/Gain' */
/*@>fdcd*/VCU_B./*@>111f1*/Gain_cv/*@>6b84*/ = /*@>e8ac*/(uint16_T)(/*@>fdd3*/VCU_B./*@>111f4*/DataStoreRead1_m/*@>e6eb*/ << /*@>e6ea*/7);
/* DataStoreRead: '<S26>/Data Store Read2' */
/*@>fdd9*/VCU_B./*@>111f7*/DataStoreRead2_o/*@>6b86*/ = /*@>10336*/VCU_DW./*@>11431*/VAR_IN_n_engine_LSB;
/* Sum: '<S29>/Add' */
/*@>fddf*/VCU_B./*@>111fa*/Add_d/*@>8923*/ = /*@>e6db*/(uint16_T)(((/*@>e8b3*/(uint32_T)/*@>fde5*/VCU_B./*@>111fd*/Gain_cv/*@>e6e2*/ << /*@>e6e1*/1)/*@>891f*/ + /*@>fdeb*/VCU_B./*@>11200*/DataStoreRead2_o)/*@>e6d9*/ >> /*@>e6d8*/1);
/* DataTypeConversion: '<S29>/Data Type Conversion' */
/*@>fdf1*/VCU_B./*@>11203*/DataTypeConversion_o/*@>6b8e*/ = /*@>f6ee*/(uint16_T)(/*@>fdf7*/VCU_B./*@>11206*/Add_d/*@>e6cf*/ << /*@>f300*/1);
/* DataTypeConversion: '<S26>/Data Type Conversion2' */
/*@>fdfd*/VCU_B./*@>11209*/DataTypeConversion2/*@>6b91*/ = /*@>fe03*/VCU_B./*@>1120c*/DataTypeConversion_o;
/* DataStoreRead: '<S26>/Data Store Read' */
/*@>fe09*/VCU_B./*@>1120f*/DataStoreRead_h/*@>6b93*/ = /*@>1033c*/VCU_DW./*@>11434*/VAR_IN_gear;
/* ArithShift: '<S26>/Shift Arithmetic' */
/*@>fe0f*/VCU_B./*@>11212*/ShiftArithmetic/*@>88c5*/ = /*@>e8c4*/(uint8_T)(/*@>e8c2*/(uint32_T)/*@>fe15*/VCU_B./*@>11215*/DataStoreRead_h/*@>e6ca*/ >> /*@>e6c6*/3);
/* DataTypeConversion: '<S26>/Data Type Conversion3' */
/*@>fe1b*/VCU_B./*@>11218*/DataTypeConversion3/*@>6b97*/ = /*@>fe21*/VCU_B./*@>1121b*/ShiftArithmetic;
/* DataStoreRead: '<S26>/Data Store Read3' */
/*@>fe27*/VCU_B./*@>1121e*/DataStoreRead3_a/*@>6b99*/ = /*@>10342*/VCU_DW./*@>11437*/VAR_IN_TPS_Plausi;
/* DataStoreRead: '<S26>/Data Store Read5' */
/*@>fe2d*/VCU_B./*@>11221*/DataStoreRead5_i/*@>6b9b*/ = /*@>10348*/VCU_DW./*@>1143a*/VAR_IN_p_air_22;
/* DataStoreRead: '<S27>/Data Store Read1' */
/*@>fe33*/VCU_B./*@>11224*/DataStoreRead1_g5/*@>6b9d*/ = /*@>1034e*/VCU_DW./*@>1143d*/VAR_IN_t_water_engine;
/* Gain: '<S30>/Factor' */
/*@>fe39*/VCU_B./*@>11227*/Factor_ba/*@>6ba5*/ = /*@>e8d2*/(uint16_T)(/*@>fe3f*/VCU_B./*@>1122a*/DataStoreRead1_g5/*@>e6c2*/ << /*@>e6c1*/7);
/* Sum: '<S30>/Add1' incorporates:
 *  Constant: '<S30>/Offset'
 */
/*@>fe45*/VCU_B./*@>1122d*/Add1_iu/*@>892a*/ = /*@>e8d5*/(real_T)/*@>fe4b*/VCU_B./*@>11230*/Factor_ba/*@>e6b6*/ * /*@>e6b5*/0.0078125/*@>8927*/ + /*@>e620*/-50.0;
/* DataStoreRead: '<S11>/Data Store Read1' */
/*@>fe51*/VCU_B./*@>11233*/TeleFansDC_h/*@>6bac*/ = /*@>10354*/VCU_DW./*@>11440*/VAR_IN_TeleFansDC;
/* DataTypeConversion: '<S11>/Data Type Conversion1' */
/*@>fe57*/VCU_B./*@>11236*/TeleFansDC/*@>6baf*/ = /*@>fe5d*/VCU_B./*@>11239*/TeleFansDC_h;
/* Gain: '<S31>/Factor' */
/*@>fe63*/VCU_B./*@>1123c*/Factor_kk/*@>6bb7*/ = /*@>e621*/0.01/*@>e6b0*/ * /*@>fe69*/VCU_B./*@>1123f*/TeleFansDC;
/* Sum: '<S31>/Add1' */
/*@>fe6f*/VCU_B./*@>11242*/Add1_ik/*@>892f*/ = /*@>fe75*/VCU_B./*@>11245*/Factor_kk;
/* DataStoreRead: '<S11>/Data Store Read8' */
/*@>fe7b*/VCU_B./*@>11248*/TeleActiveBit_p/*@>6bbe*/ = /*@>1035a*/VCU_DW./*@>11443*/VAR_IN_TeleActiveBit;
/* DataTypeConversion: '<S11>/Data Type Conversion' */
/*@>fe81*/VCU_B./*@>1124b*/TeleActiveBit/*@>6bc1*/ = /*@>fe87*/VCU_B./*@>1124e*/TeleActiveBit_p;
/* DataStoreRead: '<S12>/Data Store Read1' */
/*@>fe8d*/VCU_B./*@>11251*/DataStoreRead1_f/*@>6bc3*/ = /*@>10360*/VCU_DW./*@>11446*/VAR_IN_g_yaw_ABS_MSB;
/* DataStoreRead: '<S12>/Data Store Read3' */
/*@>fe93*/VCU_B./*@>11254*/DataStoreRead3_o/*@>6bc5*/ = /*@>10366*/VCU_DW./*@>11449*/VAR_IN_g_yaw_ABS_LSB;
/* DataStoreRead: '<S12>/Data Store Read2' */
/*@>fe99*/VCU_B./*@>11257*/DataStoreRead2_h/*@>6bc7*/ = /*@>1036c*/VCU_DW./*@>1144c*/VAR_IN_g_long_ABS_MSB;
/* DataStoreRead: '<S12>/Data Store Read4' */
/*@>fe9f*/VCU_B./*@>1125a*/DataStoreRead4_l/*@>6bc9*/ = /*@>10372*/VCU_DW./*@>1144f*/VAR_IN_g_long_ABS_LSB;
/* DataStoreRead: '<S13>/Data Store Read9' */
/*@>fea5*/VCU_B./*@>1125d*/DataStoreRead9/*@>6bcb*/ = /*@>10378*/VCU_DW./*@>11452*/VAR_IN_x_clutch_STW;
/* Saturate: '<S13>/Saturation' incorporates:
 *  Gain: '<S13>/mV//V'
 */
/*@>feab*/VCU_B./*@>11260*/mVV/*@>6bd3*/ = /*@>e622*/0.001/*@>e6ac*/ * /*@>feb1*/VCU_B./*@>11263*/DataStoreRead9;
/*@>ea17*/if (/*@>feb7*/VCU_B./*@>11266*/mVV/*@>ea12*/ > /*@>eebb*/5.0) {
    /*@>fec3*/VCU_B./*@>1126c*/Saturation_e/*@>ea19*/ = /*@>eec1*/5.0;
} else /*@>ea1a*/if (/*@>febd*/VCU_B./*@>11269*/mVV/*@>ea0f*/ < /*@>eebd*/0.0) {
    /*@>fed5*/VCU_B./*@>11275*/Saturation_e/*@>ea1c*/ = /*@>eebf*/0.0;
} else {
    /*@>fec9*/VCU_B./*@>1126f*/Saturation_e/*@>ea16*/ = /*@>fecf*/VCU_B./*@>11272*/mVV;
}
/* End of Saturate: '<S13>/Saturation' */

/* Lookup_n-D: '<S13>/1-D Lookup Table' */
/*@>fedb*/VCU_B./*@>11278*/x_clutch_STW/*@>8ad2*/ = /*@>f58f*/look1_binlxpw(/*@>fee1*/VCU_B./*@>1127b*/Saturation_e, /*@>101cc*/VCU_ConstP./*@>113c5*/uDLookupTable_bp01Data, /*@>101d2*/VCU_ConstP./*@>113c8*/pooled5, /*@>e578*/1U);
/* DataStoreRead: '<S13>/Data Store Read10' */
/*@>fee7*/VCU_B./*@>1127e*/DataStoreRead10_b/*@>6be2*/ = /*@>1037e*/VCU_DW./*@>11455*/VAR_IN_STW_mue_tyre;
/* Gain: '<S36>/Factor' */
/*@>feed*/VCU_B./*@>11281*/Factor_oq/*@>6bea*/ = /*@>e8fb*/(uint16_T)(/*@>e7f0*/164U/*@>e6a7*/ * /*@>fef3*/VCU_B./*@>11284*/DataStoreRead10_b);
/* Sum: '<S36>/Add1' */
/*@>fef9*/VCU_B./*@>11287*/Add1_f/*@>8996*/ = /*@>e8fe*/(real_T)/*@>feff*/VCU_B./*@>1128a*/Factor_oq/*@>e6a0*/ * /*@>e69f*/6.103515625E-5;
/* DataStoreRead: '<S13>/Data Store Read' */
/*@>ff05*/VCU_B./*@>1128d*/DataStoreRead_c/*@>6bf1*/ = /*@>10384*/VCU_DW./*@>11458*/VAR_IN_STW_shift_up_request;
/* DataTypeConversion: '<S13>/Data Type Conversion' */
/*@>ff0b*/VCU_B./*@>11290*/STW_shift_up_request/*@>6bf4*/ = /*@>ff11*/VCU_B./*@>11293*/DataStoreRead_c;
/* DataStoreRead: '<S13>/Data Store Read1' */
/*@>ff17*/VCU_B./*@>11296*/DataStoreRead1_j/*@>6bf6*/ = /*@>1038a*/VCU_DW./*@>1145b*/VAR_IN_STW_shift_down_request;
/* DataTypeConversion: '<S13>/Data Type Conversion1' */
/*@>ff1d*/VCU_B./*@>11299*/STW_shift_down_request/*@>6bf9*/ = /*@>ff23*/VCU_B./*@>1129c*/DataStoreRead1_j;
/* DataStoreRead: '<S13>/Data Store Read2' */
/*@>ff29*/VCU_B./*@>1129f*/DataStoreRead2_i/*@>6bfb*/ = /*@>10390*/VCU_DW./*@>1145e*/VAR_IN_STW_transmission_mode;
/* DataTypeConversion: '<S13>/Data Type Conversion6' */
/*@>ff2f*/VCU_B./*@>112a2*/STW_transmission_mode/*@>6bfe*/ = /*@>ff35*/VCU_B./*@>112a5*/DataStoreRead2_i;
/* DataStoreRead: '<S14>/Data Store Read9' */
/*@>ff3b*/VCU_B./*@>112a8*/DataStoreRead9_m/*@>6c00*/ = /*@>10396*/VCU_DW./*@>11461*/VAR_IN_x_RH_F;
/* Gain: '<S14>/mV//V19' */
/*@>ff41*/VCU_B./*@>112ab*/mVV19/*@>6c08*/ = /*@>e625*/0.001/*@>e69a*/ * /*@>ff47*/VCU_B./*@>112ae*/DataStoreRead9_m;
/* Lookup_n-D: '<S14>/1-D Lookup Table4' */
/*@>ff4d*/VCU_B./*@>112b1*/x_RH_F/*@>8afb*/ = /*@>f593*/look1_binlxpw(/*@>ff53*/VCU_B./*@>112b4*/mVV19, /*@>101d8*/VCU_ConstP./*@>113cb*/pooled7, /*@>101de*/VCU_ConstP./*@>113ce*/pooled6, /*@>e57e*/1U);
/* DataStoreRead: '<S14>/Data Store Read10' */
/*@>ff59*/VCU_B./*@>112b7*/DataStoreRead10/*@>6c11*/ = /*@>1039c*/VCU_DW./*@>11464*/VAR_IN_x_RH_RL;
/* Gain: '<S14>/mV//V20' */
/*@>ff5f*/VCU_B./*@>112ba*/mVV20/*@>6c19*/ = /*@>e626*/0.001/*@>e696*/ * /*@>ff65*/VCU_B./*@>112bd*/DataStoreRead10;
/* Lookup_n-D: '<S14>/1-D Lookup Table5' */
/*@>ff6b*/VCU_B./*@>112c0*/x_RH_RL/*@>8b24*/ = /*@>f597*/look1_binlxpw(/*@>ff71*/VCU_B./*@>112c3*/mVV20, /*@>101e4*/VCU_ConstP./*@>113d1*/uDLookupTable5_bp01Data, /*@>101ea*/VCU_ConstP./*@>113d4*/pooled6, /*@>e584*/1U);
/* DataStoreRead: '<S14>/Data Store Read11' */
/*@>ff77*/VCU_B./*@>112c6*/DataStoreRead11/*@>6c22*/ = /*@>103a2*/VCU_DW./*@>11467*/VAR_IN_x_RH_RR;
/* Gain: '<S14>/mV//V21' */
/*@>ff7d*/VCU_B./*@>112c9*/mVV21/*@>6c2a*/ = /*@>e627*/0.001/*@>e692*/ * /*@>ff83*/VCU_B./*@>112cc*/DataStoreRead11;
/* Lookup_n-D: '<S14>/1-D Lookup Table6' */
/*@>ff89*/VCU_B./*@>112cf*/x_RH_RR/*@>8b4d*/ = /*@>f59b*/look1_binlxpw(/*@>ff8f*/VCU_B./*@>112d2*/mVV21, /*@>101f0*/VCU_ConstP./*@>113d7*/pooled7, /*@>101f6*/VCU_ConstP./*@>113da*/pooled6, /*@>e58a*/1U);
/* DataStoreRead: '<S14>/Data Store Read2' */
/*@>ff95*/VCU_B./*@>112d5*/DataStoreRead2_k/*@>6c33*/ = /*@>103a8*/VCU_DW./*@>1146a*/VAR_IN_p_pneum;
/* Gain: '<S14>/CAN to bar' */
/*@>ff9b*/VCU_B./*@>112d8*/p_pneum/*@>6c3b*/ = /*@>e92b*/(uint16_T)(/*@>e7f2*/164U/*@>e68d*/ * /*@>ffa1*/VCU_B./*@>112db*/DataStoreRead2_k);
/* DataStoreRead: '<S14>/Data Store Read3' */
/*@>ffa7*/VCU_B./*@>112de*/DataStoreRead3/*@>6c3d*/ = /*@>103ae*/VCU_DW./*@>1146d*/VAR_IN_x_clutch;
/* Gain: '<S14>/mV//V14' */
/*@>ffad*/VCU_B./*@>112e1*/mVV14/*@>6c45*/ = /*@>e628*/0.001/*@>e687*/ * /*@>ffb3*/VCU_B./*@>112e4*/DataStoreRead3;
/* Saturate: '<S14>/Saturation' incorporates:
 *  Lookup_n-D: '<S14>/Clutch_Pos2'
 */
/*@>ffb9*/VCU_B./*@>112e7*/x_clutch/*@>8b76*/ = /*@>f59f*/look1_binlxpw(/*@>ffbf*/VCU_B./*@>112ea*/mVV14, /*@>101fc*/VCU_ConstP./*@>113dd*/Clutch_Pos2_bp01Data, /*@>10202*/VCU_ConstP./*@>113e0*/pooled5, /*@>e590*/1U);
/*@>ea62*/if (/*@>ffc5*/VCU_B./*@>112ed*/x_clutch/*@>ea5d*/ > /*@>eec3*/25.0) {
    /*@>ffd1*/VCU_B./*@>112f3*/x_clutch_b/*@>ea64*/ = /*@>eec9*/25.0;
} else /*@>ea65*/if (/*@>ffcb*/VCU_B./*@>112f0*/x_clutch/*@>ea5a*/ < /*@>eec5*/0.0) {
    /*@>ffe3*/VCU_B./*@>112fc*/x_clutch_b/*@>ea67*/ = /*@>eec7*/0.0;
} else {
    /*@>ffd7*/VCU_B./*@>112f6*/x_clutch_b/*@>ea61*/ = /*@>ffdd*/VCU_B./*@>112f9*/x_clutch;
}
/* End of Saturate: '<S14>/Saturation' */

/* DataStoreRead: '<S14>/Data Store Read' */
/*@>ffe9*/VCU_B./*@>112ff*/DataStoreRead/*@>6c54*/ = /*@>103b4*/VCU_DW./*@>11470*/VAR_IN_Fans_dash_bit;
/* DataTypeConversion: '<S14>/Data Type Conversion10' */
/*@>ffef*/VCU_B./*@>11302*/Fans_dash_bit/*@>6c57*/ = (/*@>fff5*/VCU_B./*@>11305*/DataStoreRead/*@>e684*/ != /*@>e682*/0.0);
/* DataStoreRead: '<S14>/Data Store Read1' */
/*@>fffb*/VCU_B./*@>11308*/DataStoreRead1/*@>6c59*/ = /*@>103ba*/VCU_DW./*@>11473*/VAR_IN_p_brake_R;
/* Saturate: '<S41>/Saturation' incorporates:
 *  Gain: '<S14>/mV//V11'
 */
/*@>10001*/VCU_B./*@>1130b*/mVV11/*@>6c61*/ = /*@>e62b*/0.001/*@>e67f*/ * /*@>10007*/VCU_B./*@>1130e*/DataStoreRead1;
/*@>eaad*/if (/*@>1000d*/VCU_B./*@>11311*/mVV11/*@>eaa8*/ > /*@>eecb*/4.8) {
    /*@>10019*/VCU_B./*@>11317*/Saturation_i/*@>eaaf*/ = /*@>eed1*/4.8;
} else /*@>eab0*/if (/*@>10013*/VCU_B./*@>11314*/mVV11/*@>eaa5*/ < /*@>eecd*/0.5) {
    /*@>1002b*/VCU_B./*@>11320*/Saturation_i/*@>eab2*/ = /*@>eecf*/0.5;
} else {
    /*@>1001f*/VCU_B./*@>1131a*/Saturation_i/*@>eaac*/ = /*@>10025*/VCU_B./*@>1131d*/mVV11;
}
/* End of Saturate: '<S41>/Saturation' */

/* Sum: '<S41>/Add' incorporates:
 *  Constant: '<S41>/Offset'
 */
/*@>10031*/VCU_B./*@>11323*/Add_p/*@>89ef*/ = /*@>10037*/VCU_B./*@>11326*/Saturation_i/*@>89ec*/ - /*@>e62e*/0.5;
/* Gain: '<S41>/Sensitivity: 15,38 mV // bar' */
/*@>1003d*/VCU_B./*@>11329*/Sensitivity1538mVbar/*@>6c74*/ = /*@>e62f*/65.019505851755525/*@>e67b*/ * /*@>10043*/VCU_B./*@>1132c*/Add_p;
/* DataStoreRead: '<S14>/Data Store Read12' */
/*@>10049*/VCU_B./*@>1132f*/DataStoreRead12/*@>6c76*/ = /*@>103c0*/VCU_DW./*@>11476*/VAR_IN_U_Bat;
/* Gain: '<S14>/mV//V13' */
/*@>1004f*/VCU_B./*@>11332*/U_Bat/*@>6c7e*/ = /*@>e630*/0.001/*@>e677*/ * /*@>10055*/VCU_B./*@>11335*/DataStoreRead12;
/* DataStoreRead: '<S14>/Data Store Read4' */
/*@>1005b*/VCU_B./*@>11338*/DataStoreRead4/*@>6c80*/ = /*@>103c6*/VCU_DW./*@>11479*/VAR_IN_f_FL;
/* Gain: '<S14>/mV//V15' */
/*@>10061*/VCU_B./*@>1133b*/mVV15/*@>6c88*/ = /*@>e631*/0.001/*@>e673*/ * /*@>10067*/VCU_B./*@>1133e*/DataStoreRead4;
/* Saturate: '<S42>/Saturation1' incorporates:
 *  Lookup_n-D: '<S42>/1-D Lookup Table1'
 */
/*@>1006d*/VCU_B./*@>11341*/uDLookupTable1/*@>8b9f*/ = /*@>f5a3*/look1_binlxpw(/*@>10073*/VCU_B./*@>11344*/mVV15, /*@>10208*/VCU_ConstP./*@>113e3*/uDLookupTable1_bp01Data, /*@>1020e*/VCU_ConstP./*@>113e6*/uDLookupTable1_tableData, /*@>e596*/1U);
/*@>eaf8*/if (/*@>10079*/VCU_B./*@>11347*/uDLookupTable1/*@>eaf3*/ > /*@>eed3*/9000.0) {
    /*@>10085*/VCU_B./*@>1134d*/Saturation1_e/*@>eafa*/ = /*@>eed9*/9000.0;
} else /*@>eafb*/if (/*@>1007f*/VCU_B./*@>1134a*/uDLookupTable1/*@>eaf0*/ < /*@>eed5*/0.0) {
    /*@>10097*/VCU_B./*@>11356*/Saturation1_e/*@>eafd*/ = /*@>eed7*/0.0;
} else {
    /*@>1008b*/VCU_B./*@>11350*/Saturation1_e/*@>eaf7*/ = /*@>10091*/VCU_B./*@>11353*/uDLookupTable1;
}
/* End of Saturate: '<S42>/Saturation1' */

/* DataStoreRead: '<S14>/Data Store Read5' */
/*@>1009d*/VCU_B./*@>11359*/DataStoreRead5/*@>6c97*/ = /*@>103cc*/VCU_DW./*@>1147c*/VAR_IN_f_FR;
/* Gain: '<S14>/mV//V16' */
/*@>100a3*/VCU_B./*@>1135c*/mVV16/*@>6c9f*/ = /*@>e634*/0.001/*@>e66f*/ * /*@>100a9*/VCU_B./*@>1135f*/DataStoreRead5;
/* Saturate: '<S43>/Saturation1' incorporates:
 *  Lookup_n-D: '<S43>/1-D Lookup Table1'
 */
/*@>100af*/VCU_B./*@>11362*/uDLookupTable1_k/*@>8bc8*/ = /*@>f5a7*/look1_binlxpw(/*@>100b5*/VCU_B./*@>11365*/mVV16, /*@>10214*/VCU_ConstP./*@>113e9*/uDLookupTable1_bp01Data_d, /*@>1021a*/VCU_ConstP./*@>113ec*/uDLookupTable1_tableData_o, /*@>e59c*/1U);
/*@>eb43*/if (/*@>100bb*/VCU_B./*@>11368*/uDLookupTable1_k/*@>eb3e*/ > /*@>eedb*/9000.0) {
    /*@>100c7*/VCU_B./*@>1136e*/Saturation1_n/*@>eb45*/ = /*@>eee1*/9000.0;
} else /*@>eb46*/if (/*@>100c1*/VCU_B./*@>1136b*/uDLookupTable1_k/*@>eb3b*/ < /*@>eedd*/0.0) {
    /*@>100d9*/VCU_B./*@>11377*/Saturation1_n/*@>eb48*/ = /*@>eedf*/0.0;
} else {
    /*@>100cd*/VCU_B./*@>11371*/Saturation1_n/*@>eb42*/ = /*@>100d3*/VCU_B./*@>11374*/uDLookupTable1_k;
}
/* End of Saturate: '<S43>/Saturation1' */

/* DataStoreRead: '<S14>/Data Store Read6' */
/*@>100df*/VCU_B./*@>1137a*/DataStoreRead6/*@>6cae*/ = /*@>103d2*/VCU_DW./*@>1147f*/VAR_IN_f_RL;
/* Gain: '<S14>/mV//V17' */
/*@>100e5*/VCU_B./*@>1137d*/mVV17/*@>6cb6*/ = /*@>e637*/0.001/*@>e66b*/ * /*@>100eb*/VCU_B./*@>11380*/DataStoreRead6;
/* Saturate: '<S44>/Saturation1' incorporates:
 *  Lookup_n-D: '<S44>/1-D Lookup Table1'
 */
/*@>100f1*/VCU_B./*@>11383*/uDLookupTable1_p/*@>8bf1*/ = /*@>f5ab*/look1_binlxpw(/*@>100f7*/VCU_B./*@>11386*/mVV17, /*@>10220*/VCU_ConstP./*@>113ef*/uDLookupTable1_bp01Data_o, /*@>10226*/VCU_ConstP./*@>113f2*/uDLookupTable1_tableData_d, /*@>e5a2*/4U);
/*@>eb8e*/if (/*@>100fd*/VCU_B./*@>11389*/uDLookupTable1_p/*@>eb89*/ > /*@>eee3*/9000.0) {
    /*@>10109*/VCU_B./*@>1138f*/Saturation1_o/*@>eb90*/ = /*@>eee9*/9000.0;
} else /*@>eb91*/if (/*@>10103*/VCU_B./*@>1138c*/uDLookupTable1_p/*@>eb86*/ < /*@>eee5*/0.0) {
    /*@>1011b*/VCU_B./*@>11398*/Saturation1_o/*@>eb93*/ = /*@>eee7*/0.0;
} else {
    /*@>1010f*/VCU_B./*@>11392*/Saturation1_o/*@>eb8d*/ = /*@>10115*/VCU_B./*@>11395*/uDLookupTable1_p;
}
/* End of Saturate: '<S44>/Saturation1' */

/* DataStoreRead: '<S14>/Data Store Read7' */
/*@>10121*/VCU_B./*@>1139b*/DataStoreRead7/*@>6cc5*/ = /*@>103d8*/VCU_DW./*@>11482*/VAR_IN_f_RR;
/* Gain: '<S14>/mV//V18' */
/*@>10127*/VCU_B./*@>1139e*/mVV18/*@>6ccd*/ = /*@>e63a*/0.001/*@>e667*/ * /*@>1012d*/VCU_B./*@>113a1*/DataStoreRead7;
/* Saturate: '<S45>/Saturation1' incorporates:
 *  Lookup_n-D: '<S45>/1-D Lookup Table1'
 */
/*@>10133*/VCU_B./*@>113a4*/uDLookupTable1_kb/*@>8c1a*/ = /*@>f5af*/look1_binlxpw(/*@>10139*/VCU_B./*@>113a7*/mVV18, /*@>1022c*/VCU_ConstP./*@>113f5*/uDLookupTable1_bp01Data_n, /*@>10232*/VCU_ConstP./*@>113f8*/uDLookupTable1_tableData_l, /*@>e5a8*/4U);
/*@>ebd9*/if (/*@>1013f*/VCU_B./*@>113aa*/uDLookupTable1_kb/*@>ebd4*/ > /*@>eeeb*/9000.0) {
    /*@>1014b*/VCU_B./*@>113b0*/Saturation1_h/*@>ebdb*/ = /*@>eef1*/9000.0;
} else /*@>ebdc*/if (/*@>10145*/VCU_B./*@>113ad*/uDLookupTable1_kb/*@>ebd1*/ < /*@>eeed*/0.0) {
    /*@>1015d*/VCU_B./*@>113b9*/Saturation1_h/*@>ebde*/ = /*@>eeef*/0.0;
} else {
    /*@>10151*/VCU_B./*@>113b3*/Saturation1_h/*@>ebd8*/ = /*@>10157*/VCU_B./*@>113b6*/uDLookupTable1_kb;
}
/* End of Saturate: '<S45>/Saturation1' */

/* DataStoreRead: '<S14>/Data Store Read8' */
/*@>10163*/VCU_B./*@>113bc*/DataStoreRead8/*@>6cdc*/ = /*@>103de*/VCU_DW./*@>11485*/VAR_IN_LC_dash_bit;
/* DataTypeConversion: '<S14>/Data Type Conversion11' */
/*@>10169*/VCU_B./*@>113bf*/LC_dash_bit/*@>6cdf*/ = (/*@>1016f*/VCU_B./*@>113c2*/DataStoreRead8/*@>e664*/ != /*@>e662*/0.0);





      
  


        
    
      
          }
    
  



                








  


  


  


  

