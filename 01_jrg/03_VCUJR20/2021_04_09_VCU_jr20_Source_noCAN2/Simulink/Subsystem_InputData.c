/* 
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * 
 * File: Subsystem_InputData.c
 *  
 * Code generated for Simulink model : VCU.
 * Model version      : 1.300
 * Simulink Coder version    : 8.14 (R2018a) 06-Feb-2018
 * TLC version       : 8.14 (Feb 22 2018)
 * C/C++ source code generated on  : Thu Oct 22 19:30:55 2020
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
/*@>f91c*/VCU_B./*@>10e4e*/DataStoreRead1_d/*@>6a99*/ = /*@>1003b*/VCU_DW./*@>11169*/VAR_IN_p_brake_F_LSB;
/* DataStoreRead: '<S8>/Data Store Read4' */
/*@>f922*/VCU_B./*@>10e51*/DataStoreRead4_p/*@>6a9b*/ = /*@>10041*/VCU_DW./*@>1116c*/VAR_IN_p_brake_F_MSB;
/* Gain: '<S16>/Gain' */
/*@>f928*/VCU_B./*@>10e54*/Gain_d/*@>6aa3*/ = /*@>e578*/(uint16_T)(/*@>f92e*/VCU_B./*@>10e57*/DataStoreRead4_p/*@>e55c*/ << /*@>e55b*/7);
/* Sum: '<S16>/Add' */
/*@>f934*/VCU_B./*@>10e5a*/Add_a/*@>8871*/ = /*@>e54c*/(uint16_T)(((/*@>e57d*/(uint32_T)/*@>f93a*/VCU_B./*@>10e5d*/Gain_d/*@>e553*/ << /*@>e552*/1)/*@>886d*/ + /*@>f940*/VCU_B./*@>10e60*/DataStoreRead1_d)/*@>e54a*/ >> /*@>e549*/1);
/* DataTypeConversion: '<S16>/Data Type Conversion' */
/*@>f946*/VCU_B./*@>10e63*/DataTypeConversion_h/*@>6aab*/ = /*@>f46e*/(uint16_T)(/*@>f94c*/VCU_B./*@>10e66*/Add_a/*@>e540*/ << /*@>f071*/1);
/* Gain: '<S15>/Factor' */
/*@>f952*/VCU_B./*@>10e69*/Factor_g/*@>6ab3*/ = /*@>e568*/64173U/*@>e539*/ * /*@>f958*/VCU_B./*@>10e6c*/DataTypeConversion_h;
/* Sum: '<S15>/Add1' incorporates:
 *  Constant: '<S15>/Offset'
 */
/*@>f95e*/VCU_B./*@>10e6f*/Add1_m/*@>8878*/ = /*@>e58a*/(real_T)/*@>f964*/VCU_B./*@>10e72*/Factor_g/*@>e532*/ * /*@>e531*/2.384185791015625E-7/*@>8875*/ + /*@>e398*/-20.0;
/* DataStoreRead: '<S8>/Data Store Read2' */
/*@>f96a*/VCU_B./*@>10e75*/DataStoreRead2/*@>6aba*/ = /*@>10047*/VCU_DW./*@>1116f*/VAR_IN_ABS_BL_switch;
/* DataTypeConversion: '<S8>/Data Type Conversion2' */
/*@>f970*/VCU_B./*@>10e78*/ABS_BL_switch/*@>6abd*/ = /*@>f976*/VCU_B./*@>10e7b*/DataStoreRead2;
/* DataStoreRead: '<S8>/Data Store Read3' */
/*@>f97c*/VCU_B./*@>10e7e*/DataStoreRead3_l/*@>6abf*/ = /*@>1004d*/VCU_DW./*@>11172*/VAR_IN_ABS_switchstate;
/* DataTypeConversion: '<S8>/Data Type Conversion' */
/*@>f982*/VCU_B./*@>10e81*/ABS_switchstate/*@>6ac2*/ = /*@>f988*/VCU_B./*@>10e84*/DataStoreRead3_l;
/* DataStoreRead: '<S8>/Data Store Read5' */
/*@>f98e*/VCU_B./*@>10e87*/DataStoreRead5_d/*@>6ac4*/ = /*@>10053*/VCU_DW./*@>11175*/VAR_IN_ABS_EBD_Lamp;
/* DataTypeConversion: '<S8>/Data Type Conversion4' */
/*@>f994*/VCU_B./*@>10e8a*/ABS_EBD_Lamp/*@>6ac7*/ = /*@>f99a*/VCU_B./*@>10e8d*/DataStoreRead5_d;
/* DataStoreRead: '<S8>/Data Store Read6' */
/*@>f9a0*/VCU_B./*@>10e90*/DataStoreRead6_j/*@>6ac9*/ = /*@>10059*/VCU_DW./*@>11178*/VAR_IN_ABS_active;
/* DataTypeConversion: '<S8>/Data Type Conversion3' */
/*@>f9a6*/VCU_B./*@>10e93*/ABS_active/*@>6acc*/ = /*@>f9ac*/VCU_B./*@>10e96*/DataStoreRead6_j;
/* DataStoreRead: '<S8>/Data Store Read7' */
/*@>f9b2*/VCU_B./*@>10e99*/DataStoreRead7_l/*@>6ace*/ = /*@>1005f*/VCU_DW./*@>1117b*/VAR_IN_ABS_Lamp;
/* DataTypeConversion: '<S8>/Data Type Conversion5' */
/*@>f9b8*/VCU_B./*@>10e9c*/ABS_Lamp/*@>6ad1*/ = /*@>f9be*/VCU_B./*@>10e9f*/DataStoreRead7_l;
/* DataStoreRead: '<S9>/Data Store Read5' */
/*@>f9c4*/VCU_B./*@>10ea2*/DataStoreRead5_n/*@>6ad3*/ = /*@>10065*/VCU_DW./*@>1117e*/VAR_IN_n_wheel_FL_mpros_LSB;
/* DataStoreRead: '<S9>/Data Store Read1' */
/*@>f9ca*/VCU_B./*@>10ea5*/DataStoreRead1_k/*@>6ad5*/ = /*@>1006b*/VCU_DW./*@>11181*/VAR_IN_n_wheel_FL_mpros_MSB;
/* Gain: '<S21>/Gain' */
/*@>f9d0*/VCU_B./*@>10ea8*/Gain_i/*@>6add*/ = /*@>e5ac*/(uint16_T)(/*@>f9d6*/VCU_B./*@>10eab*/DataStoreRead1_k/*@>e52d*/ << /*@>e52c*/7);
/* Sum: '<S21>/Add' */
/*@>f9dc*/VCU_B./*@>10eae*/Add_li/*@>8881*/ = /*@>e51d*/(uint16_T)(((/*@>e5b1*/(uint32_T)/*@>f9e2*/VCU_B./*@>10eb1*/Gain_i/*@>e524*/ << /*@>e523*/1)/*@>887d*/ + /*@>f9e8*/VCU_B./*@>10eb4*/DataStoreRead5_n)/*@>e51b*/ >> /*@>e51a*/1);
/* DataTypeConversion: '<S21>/Data Type Conversion' */
/*@>f9ee*/VCU_B./*@>10eb7*/DataTypeConversion_a/*@>6ae5*/ = /*@>f46d*/(uint16_T)(/*@>f9f4*/VCU_B./*@>10eba*/Add_li/*@>e511*/ << /*@>f073*/1);
/* Gain: '<S17>/Factor' */
/*@>f9fa*/VCU_B./*@>10ebd*/Factor_br/*@>6aed*/ = /*@>e5bb*/(uint32_T)/*@>fa00*/VCU_B./*@>10ec0*/DataTypeConversion_a/*@>e50c*/ << /*@>e50b*/15;
/* Sum: '<S17>/Add1' */
/*@>fa06*/VCU_B./*@>10ec3*/Add1_k/*@>8888*/ = /*@>e5bf*/(real_T)/*@>fa0c*/VCU_B./*@>10ec6*/Factor_br/*@>e501*/ * /*@>e500*/4.76837158203125E-7;
/* DataStoreRead: '<S9>/Data Store Read2' */
/*@>fa12*/VCU_B./*@>10ec9*/DataStoreRead2_n/*@>6af4*/ = /*@>10071*/VCU_DW./*@>11184*/VAR_IN_n_wheel_FR_mpros_LSB;
/* DataStoreRead: '<S9>/Data Store Read3' */
/*@>fa18*/VCU_B./*@>10ecc*/DataStoreRead3_k/*@>6af6*/ = /*@>10077*/VCU_DW./*@>11187*/VAR_IN_n_wheel_FR_mpros_MSB;
/* Gain: '<S22>/Gain' */
/*@>fa1e*/VCU_B./*@>10ecf*/Gain_e/*@>6afe*/ = /*@>e5c8*/(uint16_T)(/*@>fa24*/VCU_B./*@>10ed2*/DataStoreRead3_k/*@>e4fc*/ << /*@>e4fb*/7);
/* Sum: '<S22>/Add' */
/*@>fa2a*/VCU_B./*@>10ed5*/Add_f/*@>8891*/ = /*@>e4ec*/(uint16_T)(((/*@>e5cd*/(uint32_T)/*@>fa30*/VCU_B./*@>10ed8*/Gain_e/*@>e4f3*/ << /*@>e4f2*/1)/*@>888d*/ + /*@>fa36*/VCU_B./*@>10edb*/DataStoreRead2_n)/*@>e4ea*/ >> /*@>e4e9*/1);
/* DataTypeConversion: '<S22>/Data Type Conversion' */
/*@>fa3c*/VCU_B./*@>10ede*/DataTypeConversion_l/*@>6b06*/ = /*@>f46c*/(uint16_T)(/*@>fa42*/VCU_B./*@>10ee1*/Add_f/*@>e4e0*/ << /*@>f075*/1);
/* Gain: '<S18>/Factor' */
/*@>fa48*/VCU_B./*@>10ee4*/Factor_gm/*@>6b0e*/ = /*@>e5d7*/(uint32_T)/*@>fa4e*/VCU_B./*@>10ee7*/DataTypeConversion_l/*@>e4db*/ << /*@>e4da*/15;
/* Sum: '<S18>/Add1' */
/*@>fa54*/VCU_B./*@>10eea*/Add1_de/*@>8898*/ = /*@>e5db*/(real_T)/*@>fa5a*/VCU_B./*@>10eed*/Factor_gm/*@>e4d0*/ * /*@>e4cf*/4.76837158203125E-7;
/* Sum: '<S9>/Add' */
/*@>fa60*/VCU_B./*@>10ef0*/Add_l1/*@>889d*/ = /*@>fa66*/VCU_B./*@>10ef3*/Add1_k/*@>889a*/ + /*@>fa6c*/VCU_B./*@>10ef6*/Add1_de;
/* Gain: '<S9>/Gain4' */
/*@>fa72*/VCU_B./*@>10ef9*/Gain4/*@>6b20*/ = /*@>e399*/0.9/*@>e4ca*/ * /*@>fa78*/VCU_B./*@>10efc*/Add_l1;
/* DataStoreRead: '<S9>/Data Store Read4' */
/*@>fa7e*/VCU_B./*@>10eff*/DataStoreRead4_o/*@>6b22*/ = /*@>1007d*/VCU_DW./*@>1118a*/VAR_IN_n_wheel_RL_mpros_LSB;
/* DataStoreRead: '<S9>/Data Store Read6' */
/*@>fa84*/VCU_B./*@>10f02*/DataStoreRead6_f/*@>6b24*/ = /*@>10083*/VCU_DW./*@>1118d*/VAR_IN_n_wheel_RL_mpros_MSB;
/* Gain: '<S23>/Gain' */
/*@>fa8a*/VCU_B./*@>10f05*/Gain_me/*@>6b2c*/ = /*@>e5e9*/(uint16_T)(/*@>fa90*/VCU_B./*@>10f08*/DataStoreRead6_f/*@>e4c7*/ << /*@>e4c6*/7);
/* Sum: '<S23>/Add' */
/*@>fa96*/VCU_B./*@>10f0b*/Add_o4/*@>88a6*/ = /*@>e4b7*/(uint16_T)(((/*@>e5ee*/(uint32_T)/*@>fa9c*/VCU_B./*@>10f0e*/Gain_me/*@>e4be*/ << /*@>e4bd*/1)/*@>88a2*/ + /*@>faa2*/VCU_B./*@>10f11*/DataStoreRead4_o)/*@>e4b5*/ >> /*@>e4b4*/1);
/* DataTypeConversion: '<S23>/Data Type Conversion' */
/*@>faa8*/VCU_B./*@>10f14*/DataTypeConversion_j/*@>6b34*/ = /*@>f46b*/(uint16_T)(/*@>faae*/VCU_B./*@>10f17*/Add_o4/*@>e4ab*/ << /*@>f077*/1);
/* Gain: '<S19>/Factor' */
/*@>fab4*/VCU_B./*@>10f1a*/Factor_d5/*@>6b3c*/ = /*@>e5f8*/(uint32_T)/*@>faba*/VCU_B./*@>10f1d*/DataTypeConversion_j/*@>e4a6*/ << /*@>e4a5*/15;
/* Sum: '<S19>/Add1' */
/*@>fac0*/VCU_B./*@>10f20*/Add1_ks/*@>88ad*/ = /*@>e5fc*/(real_T)/*@>fac6*/VCU_B./*@>10f23*/Factor_d5/*@>e49b*/ * /*@>e49a*/4.76837158203125E-7;
/* DataStoreRead: '<S9>/Data Store Read7' */
/*@>facc*/VCU_B./*@>10f26*/DataStoreRead7_h/*@>6b43*/ = /*@>10089*/VCU_DW./*@>11190*/VAR_IN_n_wheel_RR_mpros_LSB;
/* DataStoreRead: '<S9>/Data Store Read8' */
/*@>fad2*/VCU_B./*@>10f29*/DataStoreRead8_e/*@>6b45*/ = /*@>1008f*/VCU_DW./*@>11193*/VAR_IN_n_wheel_RR_mpros_MSB;
/* Gain: '<S24>/Gain' */
/*@>fad8*/VCU_B./*@>10f2c*/Gain_c/*@>6b4d*/ = /*@>e605*/(uint16_T)(/*@>fade*/VCU_B./*@>10f2f*/DataStoreRead8_e/*@>e496*/ << /*@>e495*/7);
/* Sum: '<S24>/Add' */
/*@>fae4*/VCU_B./*@>10f32*/Add_fb/*@>88b6*/ = /*@>e486*/(uint16_T)(((/*@>e60a*/(uint32_T)/*@>faea*/VCU_B./*@>10f35*/Gain_c/*@>e48d*/ << /*@>e48c*/1)/*@>88b2*/ + /*@>faf0*/VCU_B./*@>10f38*/DataStoreRead7_h)/*@>e484*/ >> /*@>e483*/1);
/* DataTypeConversion: '<S24>/Data Type Conversion' */
/*@>faf6*/VCU_B./*@>10f3b*/DataTypeConversion_c/*@>6b55*/ = /*@>f46a*/(uint16_T)(/*@>fafc*/VCU_B./*@>10f3e*/Add_fb/*@>e47a*/ << /*@>f079*/1);
/* Gain: '<S20>/Factor' */
/*@>fb02*/VCU_B./*@>10f41*/Factor_jp/*@>6b5d*/ = /*@>e614*/(uint32_T)/*@>fb08*/VCU_B./*@>10f44*/DataTypeConversion_c/*@>e475*/ << /*@>e474*/15;
/* Sum: '<S20>/Add1' */
/*@>fb0e*/VCU_B./*@>10f47*/Add1_eq/*@>88bd*/ = /*@>e618*/(real_T)/*@>fb14*/VCU_B./*@>10f4a*/Factor_jp/*@>e46a*/ * /*@>e469*/4.76837158203125E-7;
/* DataStoreRead: '<S25>/Data Store Read1' */
/*@>fb1a*/VCU_B./*@>10f4d*/DataStoreRead1_g/*@>6b64*/ = /*@>10095*/VCU_DW./*@>11196*/VAR_IN_u_TPS;
/* DataStoreRead: '<S26>/Data Store Read5' */
/*@>fb20*/VCU_B./*@>10f50*/DataStoreRead5_i/*@>6b66*/ = /*@>1009b*/VCU_DW./*@>11199*/VAR_IN_p_air_22;
/* DataTypeConversion: '<S26>/Data Type Conversion' */
/*@>fb26*/VCU_B./*@>10f53*/DataTypeConversion/*@>6b69*/ = /*@>fb2c*/VCU_B./*@>10f56*/DataStoreRead5_i;
/* DataStoreRead: '<S26>/Data Store Read4' */
/*@>fb32*/VCU_B./*@>10f59*/DataStoreRead4_k/*@>6b6b*/ = /*@>100a1*/VCU_DW./*@>1119c*/VAR_IN_p_air_22_des;
/* DataTypeConversion: '<S26>/Data Type Conversion1' */
/*@>fb38*/VCU_B./*@>10f5c*/DataTypeConversion1/*@>6b6e*/ = /*@>fb3e*/VCU_B./*@>10f5f*/DataStoreRead4_k;
/* DataStoreRead: '<S26>/Data Store Read1' */
/*@>fb44*/VCU_B./*@>10f62*/DataStoreRead1_m/*@>6b70*/ = /*@>100a7*/VCU_DW./*@>1119f*/VAR_IN_n_engine_MSB;
/* Gain: '<S29>/Gain' */
/*@>fb4a*/VCU_B./*@>10f65*/Gain_cv/*@>6b78*/ = /*@>e62b*/(uint16_T)(/*@>fb50*/VCU_B./*@>10f68*/DataStoreRead1_m/*@>e465*/ << /*@>e464*/7);
/* DataStoreRead: '<S26>/Data Store Read2' */
/*@>fb56*/VCU_B./*@>10f6b*/DataStoreRead2_o/*@>6b7a*/ = /*@>100ad*/VCU_DW./*@>111a2*/VAR_IN_n_engine_LSB;
/* Sum: '<S29>/Add' */
/*@>fb5c*/VCU_B./*@>10f6e*/Add_d/*@>88c6*/ = /*@>e455*/(uint16_T)(((/*@>e632*/(uint32_T)/*@>fb62*/VCU_B./*@>10f71*/Gain_cv/*@>e45c*/ << /*@>e45b*/1)/*@>88c2*/ + /*@>fb68*/VCU_B./*@>10f74*/DataStoreRead2_o)/*@>e453*/ >> /*@>e452*/1);
/* DataTypeConversion: '<S29>/Data Type Conversion' */
/*@>fb6e*/VCU_B./*@>10f77*/DataTypeConversion_o/*@>6b82*/ = /*@>f469*/(uint16_T)(/*@>fb74*/VCU_B./*@>10f7a*/Add_d/*@>e449*/ << /*@>f07b*/1);
/* DataTypeConversion: '<S26>/Data Type Conversion2' */
/*@>fb7a*/VCU_B./*@>10f7d*/DataTypeConversion2/*@>6b85*/ = /*@>fb80*/VCU_B./*@>10f80*/DataTypeConversion_o;
/* DataStoreRead: '<S26>/Data Store Read' */
/*@>fb86*/VCU_B./*@>10f83*/DataStoreRead_h/*@>6b87*/ = /*@>100b3*/VCU_DW./*@>111a5*/VAR_IN_gear;
/* ArithShift: '<S26>/Shift Arithmetic' */
/*@>fb8c*/VCU_B./*@>10f86*/ShiftArithmetic/*@>8868*/ = /*@>e643*/(uint8_T)(/*@>e641*/(uint32_T)/*@>fb92*/VCU_B./*@>10f89*/DataStoreRead_h/*@>e444*/ >> /*@>e440*/3);
/* DataTypeConversion: '<S26>/Data Type Conversion3' */
/*@>fb98*/VCU_B./*@>10f8c*/DataTypeConversion3/*@>6b8b*/ = /*@>fb9e*/VCU_B./*@>10f8f*/ShiftArithmetic;
/* DataStoreRead: '<S27>/Data Store Read1' */
/*@>fba4*/VCU_B./*@>10f92*/DataStoreRead1_g5/*@>6b8d*/ = /*@>100b9*/VCU_DW./*@>111a8*/VAR_IN_t_water_engine;
/* Gain: '<S30>/Factor' */
/*@>fbaa*/VCU_B./*@>10f95*/Factor_ba/*@>6b95*/ = /*@>e64d*/(uint16_T)(/*@>fbb0*/VCU_B./*@>10f98*/DataStoreRead1_g5/*@>e43c*/ << /*@>e43b*/7);
/* Sum: '<S30>/Add1' incorporates:
 *  Constant: '<S30>/Offset'
 */
/*@>fbb6*/VCU_B./*@>10f9b*/Add1_iu/*@>88cd*/ = /*@>e650*/(real_T)/*@>fbbc*/VCU_B./*@>10f9e*/Factor_ba/*@>e430*/ * /*@>e42f*/0.0078125/*@>88ca*/ + /*@>e39a*/-50.0;
/* DataStoreRead: '<S11>/Data Store Read1' */
/*@>fbc2*/VCU_B./*@>10fa1*/TeleFansDC_h/*@>6b9c*/ = /*@>100bf*/VCU_DW./*@>111ab*/VAR_IN_TeleFansDC;
/* DataTypeConversion: '<S11>/Data Type Conversion1' */
/*@>fbc8*/VCU_B./*@>10fa4*/TeleFansDC/*@>6b9f*/ = /*@>fbce*/VCU_B./*@>10fa7*/TeleFansDC_h;
/* Gain: '<S31>/Factor' */
/*@>fbd4*/VCU_B./*@>10faa*/Factor_kk/*@>6ba7*/ = /*@>e39b*/0.01/*@>e42a*/ * /*@>fbda*/VCU_B./*@>10fad*/TeleFansDC;
/* Sum: '<S31>/Add1' */
/*@>fbe0*/VCU_B./*@>10fb0*/Add1_ik/*@>88d2*/ = /*@>fbe6*/VCU_B./*@>10fb3*/Factor_kk;
/* DataStoreRead: '<S11>/Data Store Read8' */
/*@>fbec*/VCU_B./*@>10fb6*/TeleActiveBit_p/*@>6bae*/ = /*@>100c5*/VCU_DW./*@>111ae*/VAR_IN_TeleActiveBit;
/* DataTypeConversion: '<S11>/Data Type Conversion' */
/*@>fbf2*/VCU_B./*@>10fb9*/TeleActiveBit/*@>6bb1*/ = /*@>fbf8*/VCU_B./*@>10fbc*/TeleActiveBit_p;
/* DataStoreRead: '<S12>/Data Store Read1' */
/*@>fbfe*/VCU_B./*@>10fbf*/DataStoreRead1_f/*@>6bb3*/ = /*@>100cb*/VCU_DW./*@>111b1*/VAR_IN_g_yaw_ABS_MSB;
/* DataStoreRead: '<S12>/Data Store Read3' */
/*@>fc04*/VCU_B./*@>10fc2*/DataStoreRead3_o/*@>6bb5*/ = /*@>100d1*/VCU_DW./*@>111b4*/VAR_IN_g_yaw_ABS_LSB;
/* DataStoreRead: '<S12>/Data Store Read2' */
/*@>fc0a*/VCU_B./*@>10fc5*/DataStoreRead2_h/*@>6bb7*/ = /*@>100d7*/VCU_DW./*@>111b7*/VAR_IN_g_long_ABS_MSB;
/* DataStoreRead: '<S12>/Data Store Read4' */
/*@>fc10*/VCU_B./*@>10fc8*/DataStoreRead4_l/*@>6bb9*/ = /*@>100dd*/VCU_DW./*@>111ba*/VAR_IN_g_long_ABS_LSB;
/* DataStoreRead: '<S13>/Data Store Read9' */
/*@>fc16*/VCU_B./*@>10fcb*/DataStoreRead9/*@>6bbb*/ = /*@>100e3*/VCU_DW./*@>111bd*/VAR_IN_x_clutch_STW;
/* Saturate: '<S13>/Saturation' incorporates:
 *  Gain: '<S13>/mV//V'
 */
/*@>fc1c*/VCU_B./*@>10fce*/mVV/*@>6bc3*/ = /*@>e39c*/0.001/*@>e426*/ * /*@>fc22*/VCU_B./*@>10fd1*/DataStoreRead9;
/*@>e792*/if (/*@>fc28*/VCU_B./*@>10fd4*/mVV/*@>e78d*/ > /*@>ec36*/5.0) {
    /*@>fc34*/VCU_B./*@>10fda*/Saturation_e/*@>e794*/ = /*@>ec3c*/5.0;
} else /*@>e795*/if (/*@>fc2e*/VCU_B./*@>10fd7*/mVV/*@>e78a*/ < /*@>ec38*/0.0) {
    /*@>fc46*/VCU_B./*@>10fe3*/Saturation_e/*@>e797*/ = /*@>ec3a*/0.0;
} else {
    /*@>fc3a*/VCU_B./*@>10fdd*/Saturation_e/*@>e791*/ = /*@>fc40*/VCU_B./*@>10fe0*/mVV;
}
/* End of Saturate: '<S13>/Saturation' */

/* Lookup_n-D: '<S13>/1-D Lookup Table' */
/*@>fc4c*/VCU_B./*@>10fe6*/x_clutch_STW/*@>8a75*/ = /*@>f30a*/look1_binlxpw(/*@>fc52*/VCU_B./*@>10fe9*/Saturation_e, /*@>ff44*/VCU_ConstP./*@>11133*/uDLookupTable_bp01Data, /*@>ff4a*/VCU_ConstP./*@>11136*/pooled6, /*@>e2f2*/1U);
/* DataStoreRead: '<S13>/Data Store Read10' */
/*@>fc58*/VCU_B./*@>10fec*/DataStoreRead10_b/*@>6bd2*/ = /*@>100e9*/VCU_DW./*@>111c0*/VAR_IN_STW_mue_tyre;
/* Gain: '<S36>/Factor' */
/*@>fc5e*/VCU_B./*@>10fef*/Factor_oq/*@>6bda*/ = /*@>e676*/(uint16_T)(/*@>e56a*/164U/*@>e421*/ * /*@>fc64*/VCU_B./*@>10ff2*/DataStoreRead10_b);
/* Sum: '<S36>/Add1' */
/*@>fc6a*/VCU_B./*@>10ff5*/Add1_f1/*@>8939*/ = /*@>e679*/(real_T)/*@>fc70*/VCU_B./*@>10ff8*/Factor_oq/*@>e41a*/ * /*@>e419*/6.103515625E-5;
/* DataStoreRead: '<S13>/Data Store Read' */
/*@>fc76*/VCU_B./*@>10ffb*/DataStoreRead_c/*@>6be1*/ = /*@>100ef*/VCU_DW./*@>111c3*/VAR_IN_STW_shift_up_request;
/* DataTypeConversion: '<S13>/Data Type Conversion' */
/*@>fc7c*/VCU_B./*@>10ffe*/STW_shift_up_request/*@>6be4*/ = /*@>fc82*/VCU_B./*@>11001*/DataStoreRead_c;
/* DataStoreRead: '<S13>/Data Store Read1' */
/*@>fc88*/VCU_B./*@>11004*/DataStoreRead1_j/*@>6be6*/ = /*@>100f5*/VCU_DW./*@>111c6*/VAR_IN_STW_shift_down_request;
/* DataTypeConversion: '<S13>/Data Type Conversion1' */
/*@>fc8e*/VCU_B./*@>11007*/STW_shift_down_request/*@>6be9*/ = /*@>fc94*/VCU_B./*@>1100a*/DataStoreRead1_j;
/* DataStoreRead: '<S13>/Data Store Read2' */
/*@>fc9a*/VCU_B./*@>1100d*/DataStoreRead2_i/*@>6beb*/ = /*@>100fb*/VCU_DW./*@>111c9*/VAR_IN_STW_transmission_mode;
/* DataTypeConversion: '<S13>/Data Type Conversion6' */
/*@>fca0*/VCU_B./*@>11010*/STW_transmission_mode/*@>6bee*/ = /*@>fca6*/VCU_B./*@>11013*/DataStoreRead2_i;
/* DataStoreRead: '<S14>/Data Store Read9' */
/*@>fcac*/VCU_B./*@>11016*/DataStoreRead9_m/*@>6bf0*/ = /*@>10101*/VCU_DW./*@>111cc*/VAR_IN_x_RH_F;
/* Gain: '<S14>/mV//V19' */
/*@>fcb2*/VCU_B./*@>11019*/mVV19/*@>6bf8*/ = /*@>e39f*/0.001/*@>e414*/ * /*@>fcb8*/VCU_B./*@>1101c*/DataStoreRead9_m;
/* Lookup_n-D: '<S14>/1-D Lookup Table4' */
/*@>fcbe*/VCU_B./*@>1101f*/x_RH_F/*@>8a9e*/ = /*@>f30e*/look1_binlxpw(/*@>fcc4*/VCU_B./*@>11022*/mVV19, /*@>ff50*/VCU_ConstP./*@>11139*/pooled8, /*@>ff56*/VCU_ConstP./*@>1113c*/pooled7, /*@>e2f8*/1U);
/* DataStoreRead: '<S14>/Data Store Read10' */
/*@>fcca*/VCU_B./*@>11025*/DataStoreRead10/*@>6c01*/ = /*@>10107*/VCU_DW./*@>111cf*/VAR_IN_x_RH_RL;
/* Gain: '<S14>/mV//V20' */
/*@>fcd0*/VCU_B./*@>11028*/mVV20/*@>6c09*/ = /*@>e3a0*/0.001/*@>e410*/ * /*@>fcd6*/VCU_B./*@>1102b*/DataStoreRead10;
/* Lookup_n-D: '<S14>/1-D Lookup Table5' */
/*@>fcdc*/VCU_B./*@>1102e*/x_RH_RL/*@>8ac7*/ = /*@>f312*/look1_binlxpw(/*@>fce2*/VCU_B./*@>11031*/mVV20, /*@>ff5c*/VCU_ConstP./*@>1113f*/uDLookupTable5_bp01Data, /*@>ff62*/VCU_ConstP./*@>11142*/pooled7, /*@>e2fe*/1U);
/* DataStoreRead: '<S14>/Data Store Read11' */
/*@>fce8*/VCU_B./*@>11034*/DataStoreRead11/*@>6c12*/ = /*@>1010d*/VCU_DW./*@>111d2*/VAR_IN_x_RH_RR;
/* Gain: '<S14>/mV//V21' */
/*@>fcee*/VCU_B./*@>11037*/mVV21/*@>6c1a*/ = /*@>e3a1*/0.001/*@>e40c*/ * /*@>fcf4*/VCU_B./*@>1103a*/DataStoreRead11;
/* Lookup_n-D: '<S14>/1-D Lookup Table6' */
/*@>fcfa*/VCU_B./*@>1103d*/x_RH_RR/*@>8af0*/ = /*@>f316*/look1_binlxpw(/*@>fd00*/VCU_B./*@>11040*/mVV21, /*@>ff68*/VCU_ConstP./*@>11145*/pooled8, /*@>ff6e*/VCU_ConstP./*@>11148*/pooled7, /*@>e304*/1U);
/* DataStoreRead: '<S14>/Data Store Read2' */
/*@>fd06*/VCU_B./*@>11043*/DataStoreRead2_k/*@>6c23*/ = /*@>10113*/VCU_DW./*@>111d5*/VAR_IN_p_pneum;
/* Gain: '<S14>/CAN to bar' */
/*@>fd0c*/VCU_B./*@>11046*/p_pneum/*@>6c2b*/ = /*@>e6a6*/(uint16_T)(/*@>e56c*/164U/*@>e407*/ * /*@>fd12*/VCU_B./*@>11049*/DataStoreRead2_k);
/* DataStoreRead: '<S14>/Data Store Read3' */
/*@>fd18*/VCU_B./*@>1104c*/DataStoreRead3/*@>6c2d*/ = /*@>10119*/VCU_DW./*@>111d8*/VAR_IN_x_clutch;
/* Gain: '<S14>/mV//V14' */
/*@>fd1e*/VCU_B./*@>1104f*/mVV14/*@>6c35*/ = /*@>e3a2*/0.001/*@>e401*/ * /*@>fd24*/VCU_B./*@>11052*/DataStoreRead3;
/* Saturate: '<S14>/Saturation' incorporates:
 *  Lookup_n-D: '<S14>/Clutch_Pos2'
 */
/*@>fd2a*/VCU_B./*@>11055*/x_clutch/*@>8b19*/ = /*@>f31a*/look1_binlxpw(/*@>fd30*/VCU_B./*@>11058*/mVV14, /*@>ff74*/VCU_ConstP./*@>1114b*/Clutch_Pos2_bp01Data, /*@>ff7a*/VCU_ConstP./*@>1114e*/pooled6, /*@>e30a*/1U);
/*@>e7dd*/if (/*@>fd36*/VCU_B./*@>1105b*/x_clutch/*@>e7d8*/ > /*@>ec3e*/25.0) {
    /*@>fd42*/VCU_B./*@>11061*/x_clutch_b/*@>e7df*/ = /*@>ec44*/25.0;
} else /*@>e7e0*/if (/*@>fd3c*/VCU_B./*@>1105e*/x_clutch/*@>e7d5*/ < /*@>ec40*/0.0) {
    /*@>fd54*/VCU_B./*@>1106a*/x_clutch_b/*@>e7e2*/ = /*@>ec42*/0.0;
} else {
    /*@>fd48*/VCU_B./*@>11064*/x_clutch_b/*@>e7dc*/ = /*@>fd4e*/VCU_B./*@>11067*/x_clutch;
}
/* End of Saturate: '<S14>/Saturation' */

/* DataStoreRead: '<S14>/Data Store Read' */
/*@>fd5a*/VCU_B./*@>1106d*/DataStoreRead/*@>6c44*/ = /*@>1011f*/VCU_DW./*@>111db*/VAR_IN_Fans_dash_bit;
/* DataTypeConversion: '<S14>/Data Type Conversion10' */
/*@>fd60*/VCU_B./*@>11070*/Fans_dash_bit/*@>6c47*/ = (/*@>fd66*/VCU_B./*@>11073*/DataStoreRead/*@>e3fe*/ != /*@>e3fc*/0.0);
/* DataStoreRead: '<S14>/Data Store Read1' */
/*@>fd6c*/VCU_B./*@>11076*/DataStoreRead1/*@>6c49*/ = /*@>10125*/VCU_DW./*@>111de*/VAR_IN_p_brake_R;
/* Saturate: '<S41>/Saturation' incorporates:
 *  Gain: '<S14>/mV//V11'
 */
/*@>fd72*/VCU_B./*@>11079*/mVV11/*@>6c51*/ = /*@>e3a5*/0.001/*@>e3f9*/ * /*@>fd78*/VCU_B./*@>1107c*/DataStoreRead1;
/*@>e828*/if (/*@>fd7e*/VCU_B./*@>1107f*/mVV11/*@>e823*/ > /*@>ec46*/4.8) {
    /*@>fd8a*/VCU_B./*@>11085*/Saturation_i/*@>e82a*/ = /*@>ec4c*/4.8;
} else /*@>e82b*/if (/*@>fd84*/VCU_B./*@>11082*/mVV11/*@>e820*/ < /*@>ec48*/0.5) {
    /*@>fd9c*/VCU_B./*@>1108e*/Saturation_i/*@>e82d*/ = /*@>ec4a*/0.5;
} else {
    /*@>fd90*/VCU_B./*@>11088*/Saturation_i/*@>e827*/ = /*@>fd96*/VCU_B./*@>1108b*/mVV11;
}
/* End of Saturate: '<S41>/Saturation' */

/* Sum: '<S41>/Add' incorporates:
 *  Constant: '<S41>/Offset'
 */
/*@>fda2*/VCU_B./*@>11091*/Add_ps/*@>8992*/ = /*@>fda8*/VCU_B./*@>11094*/Saturation_i/*@>898f*/ - /*@>e3a8*/0.5;
/* Gain: '<S41>/Sensitivity: 15,38 mV // bar' */
/*@>fdae*/VCU_B./*@>11097*/Sensitivity1538mVbar/*@>6c64*/ = /*@>e3a9*/65.019505851755525/*@>e3f5*/ * /*@>fdb4*/VCU_B./*@>1109a*/Add_ps;
/* DataStoreRead: '<S14>/Data Store Read12' */
/*@>fdba*/VCU_B./*@>1109d*/DataStoreRead12/*@>6c66*/ = /*@>1012b*/VCU_DW./*@>111e1*/VAR_IN_U_Bat;
/* Gain: '<S14>/mV//V13' */
/*@>fdc0*/VCU_B./*@>110a0*/U_Bat/*@>6c6e*/ = /*@>e3aa*/0.001/*@>e3f1*/ * /*@>fdc6*/VCU_B./*@>110a3*/DataStoreRead12;
/* DataStoreRead: '<S14>/Data Store Read4' */
/*@>fdcc*/VCU_B./*@>110a6*/DataStoreRead4/*@>6c70*/ = /*@>10131*/VCU_DW./*@>111e4*/VAR_IN_f_FL;
/* Gain: '<S14>/mV//V15' */
/*@>fdd2*/VCU_B./*@>110a9*/mVV15/*@>6c78*/ = /*@>e3ab*/0.001/*@>e3ed*/ * /*@>fdd8*/VCU_B./*@>110ac*/DataStoreRead4;
/* Saturate: '<S42>/Saturation1' incorporates:
 *  Lookup_n-D: '<S42>/1-D Lookup Table1'
 */
/*@>fdde*/VCU_B./*@>110af*/uDLookupTable1/*@>8b42*/ = /*@>f31e*/look1_binlxpw(/*@>fde4*/VCU_B./*@>110b2*/mVV15, /*@>ff80*/VCU_ConstP./*@>11151*/uDLookupTable1_bp01Data, /*@>ff86*/VCU_ConstP./*@>11154*/uDLookupTable1_tableData, /*@>e310*/1U);
/*@>e873*/if (/*@>fdea*/VCU_B./*@>110b5*/uDLookupTable1/*@>e86e*/ > /*@>ec4e*/9000.0) {
    /*@>fdf6*/VCU_B./*@>110bb*/Saturation1_e/*@>e875*/ = /*@>ec54*/9000.0;
} else /*@>e876*/if (/*@>fdf0*/VCU_B./*@>110b8*/uDLookupTable1/*@>e86b*/ < /*@>ec50*/0.0) {
    /*@>fe08*/VCU_B./*@>110c4*/Saturation1_e/*@>e878*/ = /*@>ec52*/0.0;
} else {
    /*@>fdfc*/VCU_B./*@>110be*/Saturation1_e/*@>e872*/ = /*@>fe02*/VCU_B./*@>110c1*/uDLookupTable1;
}
/* End of Saturate: '<S42>/Saturation1' */

/* DataStoreRead: '<S14>/Data Store Read5' */
/*@>fe0e*/VCU_B./*@>110c7*/DataStoreRead5/*@>6c87*/ = /*@>10137*/VCU_DW./*@>111e7*/VAR_IN_f_FR;
/* Gain: '<S14>/mV//V16' */
/*@>fe14*/VCU_B./*@>110ca*/mVV16/*@>6c8f*/ = /*@>e3ae*/0.001/*@>e3e9*/ * /*@>fe1a*/VCU_B./*@>110cd*/DataStoreRead5;
/* Saturate: '<S43>/Saturation1' incorporates:
 *  Lookup_n-D: '<S43>/1-D Lookup Table1'
 */
/*@>fe20*/VCU_B./*@>110d0*/uDLookupTable1_k/*@>8b6b*/ = /*@>f322*/look1_binlxpw(/*@>fe26*/VCU_B./*@>110d3*/mVV16, /*@>ff8c*/VCU_ConstP./*@>11157*/uDLookupTable1_bp01Data_d, /*@>ff92*/VCU_ConstP./*@>1115a*/uDLookupTable1_tableData_o, /*@>e316*/1U);
/*@>e8be*/if (/*@>fe2c*/VCU_B./*@>110d6*/uDLookupTable1_k/*@>e8b9*/ > /*@>ec56*/9000.0) {
    /*@>fe38*/VCU_B./*@>110dc*/Saturation1_n/*@>e8c0*/ = /*@>ec5c*/9000.0;
} else /*@>e8c1*/if (/*@>fe32*/VCU_B./*@>110d9*/uDLookupTable1_k/*@>e8b6*/ < /*@>ec58*/0.0) {
    /*@>fe4a*/VCU_B./*@>110e5*/Saturation1_n/*@>e8c3*/ = /*@>ec5a*/0.0;
} else {
    /*@>fe3e*/VCU_B./*@>110df*/Saturation1_n/*@>e8bd*/ = /*@>fe44*/VCU_B./*@>110e2*/uDLookupTable1_k;
}
/* End of Saturate: '<S43>/Saturation1' */

/* DataStoreRead: '<S14>/Data Store Read6' */
/*@>fe50*/VCU_B./*@>110e8*/DataStoreRead6/*@>6c9e*/ = /*@>1013d*/VCU_DW./*@>111ea*/VAR_IN_f_RL;
/* Gain: '<S14>/mV//V17' */
/*@>fe56*/VCU_B./*@>110eb*/mVV17/*@>6ca6*/ = /*@>e3b1*/0.001/*@>e3e5*/ * /*@>fe5c*/VCU_B./*@>110ee*/DataStoreRead6;
/* Saturate: '<S44>/Saturation1' incorporates:
 *  Lookup_n-D: '<S44>/1-D Lookup Table1'
 */
/*@>fe62*/VCU_B./*@>110f1*/uDLookupTable1_p/*@>8b94*/ = /*@>f326*/look1_binlxpw(/*@>fe68*/VCU_B./*@>110f4*/mVV17, /*@>ff98*/VCU_ConstP./*@>1115d*/uDLookupTable1_bp01Data_o, /*@>ff9e*/VCU_ConstP./*@>11160*/uDLookupTable1_tableData_d, /*@>e31c*/4U);
/*@>e909*/if (/*@>fe6e*/VCU_B./*@>110f7*/uDLookupTable1_p/*@>e904*/ > /*@>ec5e*/9000.0) {
    /*@>fe7a*/VCU_B./*@>110fd*/Saturation1_o/*@>e90b*/ = /*@>ec64*/9000.0;
} else /*@>e90c*/if (/*@>fe74*/VCU_B./*@>110fa*/uDLookupTable1_p/*@>e901*/ < /*@>ec60*/0.0) {
    /*@>fe8c*/VCU_B./*@>11106*/Saturation1_o/*@>e90e*/ = /*@>ec62*/0.0;
} else {
    /*@>fe80*/VCU_B./*@>11100*/Saturation1_o/*@>e908*/ = /*@>fe86*/VCU_B./*@>11103*/uDLookupTable1_p;
}
/* End of Saturate: '<S44>/Saturation1' */

/* DataStoreRead: '<S14>/Data Store Read7' */
/*@>fe92*/VCU_B./*@>11109*/DataStoreRead7/*@>6cb5*/ = /*@>10143*/VCU_DW./*@>111ed*/VAR_IN_f_RR;
/* Gain: '<S14>/mV//V18' */
/*@>fe98*/VCU_B./*@>1110c*/mVV18/*@>6cbd*/ = /*@>e3b4*/0.001/*@>e3e1*/ * /*@>fe9e*/VCU_B./*@>1110f*/DataStoreRead7;
/* Saturate: '<S45>/Saturation1' incorporates:
 *  Lookup_n-D: '<S45>/1-D Lookup Table1'
 */
/*@>fea4*/VCU_B./*@>11112*/uDLookupTable1_kb/*@>8bbd*/ = /*@>f32a*/look1_binlxpw(/*@>feaa*/VCU_B./*@>11115*/mVV18, /*@>ffa4*/VCU_ConstP./*@>11163*/uDLookupTable1_bp01Data_n, /*@>ffaa*/VCU_ConstP./*@>11166*/uDLookupTable1_tableData_l, /*@>e322*/4U);
/*@>e954*/if (/*@>feb0*/VCU_B./*@>11118*/uDLookupTable1_kb/*@>e94f*/ > /*@>ec66*/9000.0) {
    /*@>febc*/VCU_B./*@>1111e*/Saturation1_h/*@>e956*/ = /*@>ec6c*/9000.0;
} else /*@>e957*/if (/*@>feb6*/VCU_B./*@>1111b*/uDLookupTable1_kb/*@>e94c*/ < /*@>ec68*/0.0) {
    /*@>fece*/VCU_B./*@>11127*/Saturation1_h/*@>e959*/ = /*@>ec6a*/0.0;
} else {
    /*@>fec2*/VCU_B./*@>11121*/Saturation1_h/*@>e953*/ = /*@>fec8*/VCU_B./*@>11124*/uDLookupTable1_kb;
}
/* End of Saturate: '<S45>/Saturation1' */

/* DataStoreRead: '<S14>/Data Store Read8' */
/*@>fed4*/VCU_B./*@>1112a*/DataStoreRead8/*@>6ccc*/ = /*@>10149*/VCU_DW./*@>111f0*/VAR_IN_LC_dash_bit;
/* DataTypeConversion: '<S14>/Data Type Conversion11' */
/*@>feda*/VCU_B./*@>1112d*/LC_dash_bit/*@>6ccf*/ = (/*@>fee0*/VCU_B./*@>11130*/DataStoreRead8/*@>e3de*/ != /*@>e3dc*/0.0);





      
  


        
    
      
          }
    
  



                








  


  


  


  

