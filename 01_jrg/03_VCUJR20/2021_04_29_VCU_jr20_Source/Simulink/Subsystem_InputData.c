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
 * C/C++ source code generated on  : Thu Apr 29 19:26:38 2021
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
/*@>f7d2*/VCU_B./*@>10d04*/DataStoreRead1_d/*@>6a4d*/ = /*@>fef1*/VCU_DW./*@>1101f*/VAR_IN_p_brake_F_LSB;
/* DataStoreRead: '<S8>/Data Store Read4' */
/*@>f7d8*/VCU_B./*@>10d07*/DataStoreRead4_p/*@>6a4f*/ = /*@>fef7*/VCU_DW./*@>11022*/VAR_IN_p_brake_F_MSB;
/* Gain: '<S16>/Gain' */
/*@>f7de*/VCU_B./*@>10d0a*/Gain_d/*@>6a57*/ = /*@>e430*/(uint16_T)(/*@>f7e4*/VCU_B./*@>10d0d*/DataStoreRead4_p/*@>e414*/ << /*@>e413*/7);
/* Sum: '<S16>/Add' */
/*@>f7ea*/VCU_B./*@>10d10*/Add_a/*@>8810*/ = /*@>e404*/(uint16_T)(((/*@>e435*/(uint32_T)/*@>f7f0*/VCU_B./*@>10d13*/Gain_d/*@>e40b*/ << /*@>e40a*/1)/*@>880c*/ + /*@>f7f6*/VCU_B./*@>10d16*/DataStoreRead1_d)/*@>e402*/ >> /*@>e401*/1);
/* DataTypeConversion: '<S16>/Data Type Conversion' */
/*@>f7fc*/VCU_B./*@>10d19*/DataTypeConversion_h/*@>6a5f*/ = /*@>f326*/(uint16_T)(/*@>f802*/VCU_B./*@>10d1c*/Add_a/*@>e3f8*/ << /*@>ef29*/1);
/* Gain: '<S15>/Factor' */
/*@>f808*/VCU_B./*@>10d1f*/Factor_g/*@>6a67*/ = /*@>e420*/64173U/*@>e3f1*/ * /*@>f80e*/VCU_B./*@>10d22*/DataTypeConversion_h;
/* Sum: '<S15>/Add1' incorporates:
 *  Constant: '<S15>/Offset'
 */
/*@>f814*/VCU_B./*@>10d25*/Add1_m/*@>8817*/ = /*@>e442*/(real_T)/*@>f81a*/VCU_B./*@>10d28*/Factor_g/*@>e3ea*/ * /*@>e3e9*/2.384185791015625E-7/*@>8814*/ + /*@>e250*/-20.0;
/* DataStoreRead: '<S8>/Data Store Read2' */
/*@>f820*/VCU_B./*@>10d2b*/DataStoreRead2/*@>6a6e*/ = /*@>fefd*/VCU_DW./*@>11025*/VAR_IN_ABS_BL_switch;
/* DataTypeConversion: '<S8>/Data Type Conversion2' */
/*@>f826*/VCU_B./*@>10d2e*/ABS_BL_switch/*@>6a71*/ = /*@>f82c*/VCU_B./*@>10d31*/DataStoreRead2;
/* DataStoreRead: '<S8>/Data Store Read3' */
/*@>f832*/VCU_B./*@>10d34*/DataStoreRead3_l/*@>6a73*/ = /*@>ff03*/VCU_DW./*@>11028*/VAR_IN_ABS_switchstate;
/* DataTypeConversion: '<S8>/Data Type Conversion' */
/*@>f838*/VCU_B./*@>10d37*/ABS_switchstate/*@>6a76*/ = /*@>f83e*/VCU_B./*@>10d3a*/DataStoreRead3_l;
/* DataStoreRead: '<S8>/Data Store Read5' */
/*@>f844*/VCU_B./*@>10d3d*/DataStoreRead5_d/*@>6a78*/ = /*@>ff09*/VCU_DW./*@>1102b*/VAR_IN_ABS_EBD_Lamp;
/* DataTypeConversion: '<S8>/Data Type Conversion4' */
/*@>f84a*/VCU_B./*@>10d40*/ABS_EBD_Lamp/*@>6a7b*/ = /*@>f850*/VCU_B./*@>10d43*/DataStoreRead5_d;
/* DataStoreRead: '<S8>/Data Store Read6' */
/*@>f856*/VCU_B./*@>10d46*/DataStoreRead6_j/*@>6a7d*/ = /*@>ff0f*/VCU_DW./*@>1102e*/VAR_IN_ABS_active;
/* DataTypeConversion: '<S8>/Data Type Conversion3' */
/*@>f85c*/VCU_B./*@>10d49*/ABS_active/*@>6a80*/ = /*@>f862*/VCU_B./*@>10d4c*/DataStoreRead6_j;
/* DataStoreRead: '<S8>/Data Store Read7' */
/*@>f868*/VCU_B./*@>10d4f*/DataStoreRead7_l/*@>6a82*/ = /*@>ff15*/VCU_DW./*@>11031*/VAR_IN_ABS_Lamp;
/* DataTypeConversion: '<S8>/Data Type Conversion5' */
/*@>f86e*/VCU_B./*@>10d52*/ABS_Lamp/*@>6a85*/ = /*@>f874*/VCU_B./*@>10d55*/DataStoreRead7_l;
/* DataStoreRead: '<S9>/Data Store Read5' */
/*@>f87a*/VCU_B./*@>10d58*/DataStoreRead5_n/*@>6a87*/ = /*@>ff1b*/VCU_DW./*@>11034*/VAR_IN_n_wheel_FL_mpros_LSB;
/* DataStoreRead: '<S9>/Data Store Read1' */
/*@>f880*/VCU_B./*@>10d5b*/DataStoreRead1_k/*@>6a89*/ = /*@>ff21*/VCU_DW./*@>11037*/VAR_IN_n_wheel_FL_mpros_MSB;
/* Gain: '<S21>/Gain' */
/*@>f886*/VCU_B./*@>10d5e*/Gain_i/*@>6a91*/ = /*@>e464*/(uint16_T)(/*@>f88c*/VCU_B./*@>10d61*/DataStoreRead1_k/*@>e3e5*/ << /*@>e3e4*/7);
/* Sum: '<S21>/Add' */
/*@>f892*/VCU_B./*@>10d64*/Add_li/*@>8820*/ = /*@>e3d5*/(uint16_T)(((/*@>e469*/(uint32_T)/*@>f898*/VCU_B./*@>10d67*/Gain_i/*@>e3dc*/ << /*@>e3db*/1)/*@>881c*/ + /*@>f89e*/VCU_B./*@>10d6a*/DataStoreRead5_n)/*@>e3d3*/ >> /*@>e3d2*/1);
/* DataTypeConversion: '<S21>/Data Type Conversion' */
/*@>f8a4*/VCU_B./*@>10d6d*/DataTypeConversion_a/*@>6a99*/ = /*@>f325*/(uint16_T)(/*@>f8aa*/VCU_B./*@>10d70*/Add_li/*@>e3c9*/ << /*@>ef2b*/1);
/* Gain: '<S17>/Factor' */
/*@>f8b0*/VCU_B./*@>10d73*/Factor_br/*@>6aa1*/ = /*@>e473*/(uint32_T)/*@>f8b6*/VCU_B./*@>10d76*/DataTypeConversion_a/*@>e3c4*/ << /*@>e3c3*/15;
/* Sum: '<S17>/Add1' */
/*@>f8bc*/VCU_B./*@>10d79*/Add1_k/*@>8827*/ = /*@>e477*/(real_T)/*@>f8c2*/VCU_B./*@>10d7c*/Factor_br/*@>e3b9*/ * /*@>e3b8*/4.76837158203125E-7;
/* DataStoreRead: '<S9>/Data Store Read2' */
/*@>f8c8*/VCU_B./*@>10d7f*/DataStoreRead2_n/*@>6aa8*/ = /*@>ff27*/VCU_DW./*@>1103a*/VAR_IN_n_wheel_FR_mpros_LSB;
/* DataStoreRead: '<S9>/Data Store Read3' */
/*@>f8ce*/VCU_B./*@>10d82*/DataStoreRead3_k/*@>6aaa*/ = /*@>ff2d*/VCU_DW./*@>1103d*/VAR_IN_n_wheel_FR_mpros_MSB;
/* Gain: '<S22>/Gain' */
/*@>f8d4*/VCU_B./*@>10d85*/Gain_e/*@>6ab2*/ = /*@>e480*/(uint16_T)(/*@>f8da*/VCU_B./*@>10d88*/DataStoreRead3_k/*@>e3b4*/ << /*@>e3b3*/7);
/* Sum: '<S22>/Add' */
/*@>f8e0*/VCU_B./*@>10d8b*/Add_f/*@>8830*/ = /*@>e3a4*/(uint16_T)(((/*@>e485*/(uint32_T)/*@>f8e6*/VCU_B./*@>10d8e*/Gain_e/*@>e3ab*/ << /*@>e3aa*/1)/*@>882c*/ + /*@>f8ec*/VCU_B./*@>10d91*/DataStoreRead2_n)/*@>e3a2*/ >> /*@>e3a1*/1);
/* DataTypeConversion: '<S22>/Data Type Conversion' */
/*@>f8f2*/VCU_B./*@>10d94*/DataTypeConversion_l/*@>6aba*/ = /*@>f324*/(uint16_T)(/*@>f8f8*/VCU_B./*@>10d97*/Add_f/*@>e398*/ << /*@>ef2d*/1);
/* Gain: '<S18>/Factor' */
/*@>f8fe*/VCU_B./*@>10d9a*/Factor_gm/*@>6ac2*/ = /*@>e48f*/(uint32_T)/*@>f904*/VCU_B./*@>10d9d*/DataTypeConversion_l/*@>e393*/ << /*@>e392*/15;
/* Sum: '<S18>/Add1' */
/*@>f90a*/VCU_B./*@>10da0*/Add1_de/*@>8837*/ = /*@>e493*/(real_T)/*@>f910*/VCU_B./*@>10da3*/Factor_gm/*@>e388*/ * /*@>e387*/4.76837158203125E-7;
/* Sum: '<S9>/Add' */
/*@>f916*/VCU_B./*@>10da6*/Add_l1/*@>883c*/ = /*@>f91c*/VCU_B./*@>10da9*/Add1_k/*@>8839*/ + /*@>f922*/VCU_B./*@>10dac*/Add1_de;
/* Gain: '<S9>/Gain4' */
/*@>f928*/VCU_B./*@>10daf*/Gain4/*@>6ad4*/ = /*@>e251*/0.9/*@>e382*/ * /*@>f92e*/VCU_B./*@>10db2*/Add_l1;
/* DataStoreRead: '<S9>/Data Store Read4' */
/*@>f934*/VCU_B./*@>10db5*/DataStoreRead4_o/*@>6ad6*/ = /*@>ff33*/VCU_DW./*@>11040*/VAR_IN_n_wheel_RL_mpros_LSB;
/* DataStoreRead: '<S9>/Data Store Read6' */
/*@>f93a*/VCU_B./*@>10db8*/DataStoreRead6_f/*@>6ad8*/ = /*@>ff39*/VCU_DW./*@>11043*/VAR_IN_n_wheel_RL_mpros_MSB;
/* Gain: '<S23>/Gain' */
/*@>f940*/VCU_B./*@>10dbb*/Gain_me/*@>6ae0*/ = /*@>e4a1*/(uint16_T)(/*@>f946*/VCU_B./*@>10dbe*/DataStoreRead6_f/*@>e37f*/ << /*@>e37e*/7);
/* Sum: '<S23>/Add' */
/*@>f94c*/VCU_B./*@>10dc1*/Add_o4/*@>8845*/ = /*@>e36f*/(uint16_T)(((/*@>e4a6*/(uint32_T)/*@>f952*/VCU_B./*@>10dc4*/Gain_me/*@>e376*/ << /*@>e375*/1)/*@>8841*/ + /*@>f958*/VCU_B./*@>10dc7*/DataStoreRead4_o)/*@>e36d*/ >> /*@>e36c*/1);
/* DataTypeConversion: '<S23>/Data Type Conversion' */
/*@>f95e*/VCU_B./*@>10dca*/DataTypeConversion_j/*@>6ae8*/ = /*@>f323*/(uint16_T)(/*@>f964*/VCU_B./*@>10dcd*/Add_o4/*@>e363*/ << /*@>ef2f*/1);
/* Gain: '<S19>/Factor' */
/*@>f96a*/VCU_B./*@>10dd0*/Factor_d5/*@>6af0*/ = /*@>e4b0*/(uint32_T)/*@>f970*/VCU_B./*@>10dd3*/DataTypeConversion_j/*@>e35e*/ << /*@>e35d*/15;
/* Sum: '<S19>/Add1' */
/*@>f976*/VCU_B./*@>10dd6*/Add1_ks/*@>884c*/ = /*@>e4b4*/(real_T)/*@>f97c*/VCU_B./*@>10dd9*/Factor_d5/*@>e353*/ * /*@>e352*/4.76837158203125E-7;
/* DataStoreRead: '<S9>/Data Store Read7' */
/*@>f982*/VCU_B./*@>10ddc*/DataStoreRead7_h/*@>6af7*/ = /*@>ff3f*/VCU_DW./*@>11046*/VAR_IN_n_wheel_RR_mpros_LSB;
/* DataStoreRead: '<S9>/Data Store Read8' */
/*@>f988*/VCU_B./*@>10ddf*/DataStoreRead8_e/*@>6af9*/ = /*@>ff45*/VCU_DW./*@>11049*/VAR_IN_n_wheel_RR_mpros_MSB;
/* Gain: '<S24>/Gain' */
/*@>f98e*/VCU_B./*@>10de2*/Gain_c/*@>6b01*/ = /*@>e4bd*/(uint16_T)(/*@>f994*/VCU_B./*@>10de5*/DataStoreRead8_e/*@>e34e*/ << /*@>e34d*/7);
/* Sum: '<S24>/Add' */
/*@>f99a*/VCU_B./*@>10de8*/Add_fb/*@>8855*/ = /*@>e33e*/(uint16_T)(((/*@>e4c2*/(uint32_T)/*@>f9a0*/VCU_B./*@>10deb*/Gain_c/*@>e345*/ << /*@>e344*/1)/*@>8851*/ + /*@>f9a6*/VCU_B./*@>10dee*/DataStoreRead7_h)/*@>e33c*/ >> /*@>e33b*/1);
/* DataTypeConversion: '<S24>/Data Type Conversion' */
/*@>f9ac*/VCU_B./*@>10df1*/DataTypeConversion_c/*@>6b09*/ = /*@>f322*/(uint16_T)(/*@>f9b2*/VCU_B./*@>10df4*/Add_fb/*@>e332*/ << /*@>ef31*/1);
/* Gain: '<S20>/Factor' */
/*@>f9b8*/VCU_B./*@>10df7*/Factor_jp/*@>6b11*/ = /*@>e4cc*/(uint32_T)/*@>f9be*/VCU_B./*@>10dfa*/DataTypeConversion_c/*@>e32d*/ << /*@>e32c*/15;
/* Sum: '<S20>/Add1' */
/*@>f9c4*/VCU_B./*@>10dfd*/Add1_eq/*@>885c*/ = /*@>e4d0*/(real_T)/*@>f9ca*/VCU_B./*@>10e00*/Factor_jp/*@>e322*/ * /*@>e321*/4.76837158203125E-7;
/* DataStoreRead: '<S25>/Data Store Read1' */
/*@>f9d0*/VCU_B./*@>10e03*/DataStoreRead1_g/*@>6b18*/ = /*@>ff4b*/VCU_DW./*@>1104c*/VAR_IN_u_TPS;
/* DataStoreRead: '<S26>/Data Store Read5' */
/*@>f9d6*/VCU_B./*@>10e06*/DataStoreRead5_i/*@>6b1a*/ = /*@>ff51*/VCU_DW./*@>1104f*/VAR_IN_p_air_22;
/* DataTypeConversion: '<S26>/Data Type Conversion' */
/*@>f9dc*/VCU_B./*@>10e09*/DataTypeConversion/*@>6b1d*/ = /*@>f9e2*/VCU_B./*@>10e0c*/DataStoreRead5_i;
/* DataStoreRead: '<S26>/Data Store Read4' */
/*@>f9e8*/VCU_B./*@>10e0f*/DataStoreRead4_k/*@>6b1f*/ = /*@>ff57*/VCU_DW./*@>11052*/VAR_IN_p_air_22_des;
/* DataTypeConversion: '<S26>/Data Type Conversion1' */
/*@>f9ee*/VCU_B./*@>10e12*/DataTypeConversion1/*@>6b22*/ = /*@>f9f4*/VCU_B./*@>10e15*/DataStoreRead4_k;
/* DataStoreRead: '<S26>/Data Store Read1' */
/*@>f9fa*/VCU_B./*@>10e18*/DataStoreRead1_m/*@>6b24*/ = /*@>ff5d*/VCU_DW./*@>11055*/VAR_IN_n_engine_MSB;
/* Gain: '<S29>/Gain' */
/*@>fa00*/VCU_B./*@>10e1b*/Gain_cv/*@>6b2c*/ = /*@>e4e3*/(uint16_T)(/*@>fa06*/VCU_B./*@>10e1e*/DataStoreRead1_m/*@>e31d*/ << /*@>e31c*/7);
/* DataStoreRead: '<S26>/Data Store Read2' */
/*@>fa0c*/VCU_B./*@>10e21*/DataStoreRead2_o/*@>6b2e*/ = /*@>ff63*/VCU_DW./*@>11058*/VAR_IN_n_engine_LSB;
/* Sum: '<S29>/Add' */
/*@>fa12*/VCU_B./*@>10e24*/Add_d/*@>8865*/ = /*@>e30d*/(uint16_T)(((/*@>e4ea*/(uint32_T)/*@>fa18*/VCU_B./*@>10e27*/Gain_cv/*@>e314*/ << /*@>e313*/1)/*@>8861*/ + /*@>fa1e*/VCU_B./*@>10e2a*/DataStoreRead2_o)/*@>e30b*/ >> /*@>e30a*/1);
/* DataTypeConversion: '<S29>/Data Type Conversion' */
/*@>fa24*/VCU_B./*@>10e2d*/DataTypeConversion_o/*@>6b36*/ = /*@>f321*/(uint16_T)(/*@>fa2a*/VCU_B./*@>10e30*/Add_d/*@>e301*/ << /*@>ef33*/1);
/* DataTypeConversion: '<S26>/Data Type Conversion2' */
/*@>fa30*/VCU_B./*@>10e33*/DataTypeConversion2/*@>6b39*/ = /*@>fa36*/VCU_B./*@>10e36*/DataTypeConversion_o;
/* DataStoreRead: '<S26>/Data Store Read' */
/*@>fa3c*/VCU_B./*@>10e39*/DataStoreRead_h/*@>6b3b*/ = /*@>ff69*/VCU_DW./*@>1105b*/VAR_IN_gear;
/* ArithShift: '<S26>/Shift Arithmetic' */
/*@>fa42*/VCU_B./*@>10e3c*/ShiftArithmetic/*@>8807*/ = /*@>e4fb*/(uint8_T)(/*@>e4f9*/(uint32_T)/*@>fa48*/VCU_B./*@>10e3f*/DataStoreRead_h/*@>e2fc*/ >> /*@>e2f8*/3);
/* DataTypeConversion: '<S26>/Data Type Conversion3' */
/*@>fa4e*/VCU_B./*@>10e42*/DataTypeConversion3/*@>6b3f*/ = /*@>fa54*/VCU_B./*@>10e45*/ShiftArithmetic;
/* DataStoreRead: '<S27>/Data Store Read1' */
/*@>fa5a*/VCU_B./*@>10e48*/DataStoreRead1_g5/*@>6b41*/ = /*@>ff6f*/VCU_DW./*@>1105e*/VAR_IN_t_water_engine;
/* Gain: '<S30>/Factor' */
/*@>fa60*/VCU_B./*@>10e4b*/Factor_ba/*@>6b49*/ = /*@>e505*/(uint16_T)(/*@>fa66*/VCU_B./*@>10e4e*/DataStoreRead1_g5/*@>e2f4*/ << /*@>e2f3*/7);
/* Sum: '<S30>/Add1' incorporates:
 *  Constant: '<S30>/Offset'
 */
/*@>fa6c*/VCU_B./*@>10e51*/Add1_iu/*@>886c*/ = /*@>e508*/(real_T)/*@>fa72*/VCU_B./*@>10e54*/Factor_ba/*@>e2e8*/ * /*@>e2e7*/0.0078125/*@>8869*/ + /*@>e252*/-50.0;
/* DataStoreRead: '<S11>/Data Store Read1' */
/*@>fa78*/VCU_B./*@>10e57*/TeleFansDC_h/*@>6b50*/ = /*@>ff75*/VCU_DW./*@>11061*/VAR_IN_TeleFansDC;
/* DataTypeConversion: '<S11>/Data Type Conversion1' */
/*@>fa7e*/VCU_B./*@>10e5a*/TeleFansDC/*@>6b53*/ = /*@>fa84*/VCU_B./*@>10e5d*/TeleFansDC_h;
/* Gain: '<S31>/Factor' */
/*@>fa8a*/VCU_B./*@>10e60*/Factor_kk/*@>6b5b*/ = /*@>e253*/0.01/*@>e2e2*/ * /*@>fa90*/VCU_B./*@>10e63*/TeleFansDC;
/* Sum: '<S31>/Add1' */
/*@>fa96*/VCU_B./*@>10e66*/Add1_ik/*@>8871*/ = /*@>fa9c*/VCU_B./*@>10e69*/Factor_kk;
/* DataStoreRead: '<S11>/Data Store Read8' */
/*@>faa2*/VCU_B./*@>10e6c*/TeleActiveBit_p/*@>6b62*/ = /*@>ff7b*/VCU_DW./*@>11064*/VAR_IN_TeleActiveBit;
/* DataTypeConversion: '<S11>/Data Type Conversion' */
/*@>faa8*/VCU_B./*@>10e6f*/TeleActiveBit/*@>6b65*/ = /*@>faae*/VCU_B./*@>10e72*/TeleActiveBit_p;
/* DataStoreRead: '<S12>/Data Store Read1' */
/*@>fab4*/VCU_B./*@>10e75*/DataStoreRead1_f/*@>6b67*/ = /*@>ff81*/VCU_DW./*@>11067*/VAR_IN_g_yaw_ABS_MSB;
/* DataStoreRead: '<S12>/Data Store Read3' */
/*@>faba*/VCU_B./*@>10e78*/DataStoreRead3_o/*@>6b69*/ = /*@>ff87*/VCU_DW./*@>1106a*/VAR_IN_g_yaw_ABS_LSB;
/* DataStoreRead: '<S12>/Data Store Read2' */
/*@>fac0*/VCU_B./*@>10e7b*/DataStoreRead2_h/*@>6b6b*/ = /*@>ff8d*/VCU_DW./*@>1106d*/VAR_IN_g_long_ABS_MSB;
/* DataStoreRead: '<S12>/Data Store Read4' */
/*@>fac6*/VCU_B./*@>10e7e*/DataStoreRead4_l/*@>6b6d*/ = /*@>ff93*/VCU_DW./*@>11070*/VAR_IN_g_long_ABS_LSB;
/* DataStoreRead: '<S13>/Data Store Read9' */
/*@>facc*/VCU_B./*@>10e81*/DataStoreRead9/*@>6b6f*/ = /*@>ff99*/VCU_DW./*@>11073*/VAR_IN_x_clutch_STW;
/* Saturate: '<S13>/Saturation' incorporates:
 *  Gain: '<S13>/mV//V'
 */
/*@>fad2*/VCU_B./*@>10e84*/mVV/*@>6b77*/ = /*@>e254*/0.001/*@>e2de*/ * /*@>fad8*/VCU_B./*@>10e87*/DataStoreRead9;
/*@>e64a*/if (/*@>fade*/VCU_B./*@>10e8a*/mVV/*@>e645*/ > /*@>eaee*/5.0) {
    /*@>faea*/VCU_B./*@>10e90*/Saturation_e/*@>e64c*/ = /*@>eaf4*/5.0;
} else /*@>e64d*/if (/*@>fae4*/VCU_B./*@>10e8d*/mVV/*@>e642*/ < /*@>eaf0*/0.0) {
    /*@>fafc*/VCU_B./*@>10e99*/Saturation_e/*@>e64f*/ = /*@>eaf2*/0.0;
} else {
    /*@>faf0*/VCU_B./*@>10e93*/Saturation_e/*@>e649*/ = /*@>faf6*/VCU_B./*@>10e96*/mVV;
}
/* End of Saturate: '<S13>/Saturation' */

/* Lookup_n-D: '<S13>/1-D Lookup Table' */
/*@>fb02*/VCU_B./*@>10e9c*/x_clutch_STW/*@>8a14*/ = /*@>f1c2*/look1_binlxpw(/*@>fb08*/VCU_B./*@>10e9f*/Saturation_e, /*@>fdfa*/VCU_ConstP./*@>10fe9*/uDLookupTable_bp01Data, /*@>fe00*/VCU_ConstP./*@>10fec*/pooled6, /*@>e1aa*/1U);
/* DataStoreRead: '<S13>/Data Store Read10' */
/*@>fb0e*/VCU_B./*@>10ea2*/DataStoreRead10_b/*@>6b86*/ = /*@>ff9f*/VCU_DW./*@>11076*/VAR_IN_STW_mue_tyre;
/* Gain: '<S36>/Factor' */
/*@>fb14*/VCU_B./*@>10ea5*/Factor_oq/*@>6b8e*/ = /*@>e52e*/(uint16_T)(/*@>e422*/164U/*@>e2d9*/ * /*@>fb1a*/VCU_B./*@>10ea8*/DataStoreRead10_b);
/* Sum: '<S36>/Add1' */
/*@>fb20*/VCU_B./*@>10eab*/Add1_f1/*@>88d8*/ = /*@>e531*/(real_T)/*@>fb26*/VCU_B./*@>10eae*/Factor_oq/*@>e2d2*/ * /*@>e2d1*/6.103515625E-5;
/* DataStoreRead: '<S13>/Data Store Read' */
/*@>fb2c*/VCU_B./*@>10eb1*/DataStoreRead_c/*@>6b95*/ = /*@>ffa5*/VCU_DW./*@>11079*/VAR_IN_STW_shift_up_request;
/* DataTypeConversion: '<S13>/Data Type Conversion' */
/*@>fb32*/VCU_B./*@>10eb4*/STW_shift_up_request/*@>6b98*/ = /*@>fb38*/VCU_B./*@>10eb7*/DataStoreRead_c;
/* DataStoreRead: '<S13>/Data Store Read1' */
/*@>fb3e*/VCU_B./*@>10eba*/DataStoreRead1_j/*@>6b9a*/ = /*@>ffab*/VCU_DW./*@>1107c*/VAR_IN_STW_shift_down_request;
/* DataTypeConversion: '<S13>/Data Type Conversion1' */
/*@>fb44*/VCU_B./*@>10ebd*/STW_shift_down_request/*@>6b9d*/ = /*@>fb4a*/VCU_B./*@>10ec0*/DataStoreRead1_j;
/* DataStoreRead: '<S13>/Data Store Read2' */
/*@>fb50*/VCU_B./*@>10ec3*/DataStoreRead2_i/*@>6b9f*/ = /*@>ffb1*/VCU_DW./*@>1107f*/VAR_IN_STW_transmission_mode;
/* DataTypeConversion: '<S13>/Data Type Conversion6' */
/*@>fb56*/VCU_B./*@>10ec6*/STW_transmission_mode/*@>6ba2*/ = /*@>fb5c*/VCU_B./*@>10ec9*/DataStoreRead2_i;
/* DataStoreRead: '<S14>/Data Store Read9' */
/*@>fb62*/VCU_B./*@>10ecc*/DataStoreRead9_m/*@>6ba4*/ = /*@>ffb7*/VCU_DW./*@>11082*/VAR_IN_x_RH_F;
/* Gain: '<S14>/mV//V19' */
/*@>fb68*/VCU_B./*@>10ecf*/mVV19/*@>6bac*/ = /*@>e257*/0.001/*@>e2cc*/ * /*@>fb6e*/VCU_B./*@>10ed2*/DataStoreRead9_m;
/* Lookup_n-D: '<S14>/1-D Lookup Table4' */
/*@>fb74*/VCU_B./*@>10ed5*/x_RH_F/*@>8a3d*/ = /*@>f1c6*/look1_binlxpw(/*@>fb7a*/VCU_B./*@>10ed8*/mVV19, /*@>fe06*/VCU_ConstP./*@>10fef*/pooled8, /*@>fe0c*/VCU_ConstP./*@>10ff2*/pooled7, /*@>e1b0*/1U);
/* DataStoreRead: '<S14>/Data Store Read10' */
/*@>fb80*/VCU_B./*@>10edb*/DataStoreRead10/*@>6bb5*/ = /*@>ffbd*/VCU_DW./*@>11085*/VAR_IN_x_RH_RL;
/* Gain: '<S14>/mV//V20' */
/*@>fb86*/VCU_B./*@>10ede*/mVV20/*@>6bbd*/ = /*@>e258*/0.001/*@>e2c8*/ * /*@>fb8c*/VCU_B./*@>10ee1*/DataStoreRead10;
/* Lookup_n-D: '<S14>/1-D Lookup Table5' */
/*@>fb92*/VCU_B./*@>10ee4*/x_RH_RL/*@>8a66*/ = /*@>f1ca*/look1_binlxpw(/*@>fb98*/VCU_B./*@>10ee7*/mVV20, /*@>fe12*/VCU_ConstP./*@>10ff5*/uDLookupTable5_bp01Data, /*@>fe18*/VCU_ConstP./*@>10ff8*/pooled7, /*@>e1b6*/1U);
/* DataStoreRead: '<S14>/Data Store Read11' */
/*@>fb9e*/VCU_B./*@>10eea*/DataStoreRead11/*@>6bc6*/ = /*@>ffc3*/VCU_DW./*@>11088*/VAR_IN_x_RH_RR;
/* Gain: '<S14>/mV//V21' */
/*@>fba4*/VCU_B./*@>10eed*/mVV21/*@>6bce*/ = /*@>e259*/0.001/*@>e2c4*/ * /*@>fbaa*/VCU_B./*@>10ef0*/DataStoreRead11;
/* Lookup_n-D: '<S14>/1-D Lookup Table6' */
/*@>fbb0*/VCU_B./*@>10ef3*/x_RH_RR/*@>8a8f*/ = /*@>f1ce*/look1_binlxpw(/*@>fbb6*/VCU_B./*@>10ef6*/mVV21, /*@>fe1e*/VCU_ConstP./*@>10ffb*/pooled8, /*@>fe24*/VCU_ConstP./*@>10ffe*/pooled7, /*@>e1bc*/1U);
/* DataStoreRead: '<S14>/Data Store Read2' */
/*@>fbbc*/VCU_B./*@>10ef9*/DataStoreRead2_k/*@>6bd7*/ = /*@>ffc9*/VCU_DW./*@>1108b*/VAR_IN_p_pneum;
/* Gain: '<S14>/CAN to bar' */
/*@>fbc2*/VCU_B./*@>10efc*/p_pneum/*@>6bdf*/ = /*@>e55e*/(uint16_T)(/*@>e424*/164U/*@>e2bf*/ * /*@>fbc8*/VCU_B./*@>10eff*/DataStoreRead2_k);
/* DataStoreRead: '<S14>/Data Store Read3' */
/*@>fbce*/VCU_B./*@>10f02*/DataStoreRead3/*@>6be1*/ = /*@>ffcf*/VCU_DW./*@>1108e*/VAR_IN_x_clutch;
/* Gain: '<S14>/mV//V14' */
/*@>fbd4*/VCU_B./*@>10f05*/mVV14/*@>6be9*/ = /*@>e25a*/0.001/*@>e2b9*/ * /*@>fbda*/VCU_B./*@>10f08*/DataStoreRead3;
/* Saturate: '<S14>/Saturation' incorporates:
 *  Lookup_n-D: '<S14>/Clutch_Pos2'
 */
/*@>fbe0*/VCU_B./*@>10f0b*/x_clutch/*@>8ab8*/ = /*@>f1d2*/look1_binlxpw(/*@>fbe6*/VCU_B./*@>10f0e*/mVV14, /*@>fe2a*/VCU_ConstP./*@>11001*/Clutch_Pos2_bp01Data, /*@>fe30*/VCU_ConstP./*@>11004*/pooled6, /*@>e1c2*/1U);
/*@>e695*/if (/*@>fbec*/VCU_B./*@>10f11*/x_clutch/*@>e690*/ > /*@>eaf6*/25.0) {
    /*@>fbf8*/VCU_B./*@>10f17*/x_clutch_b/*@>e697*/ = /*@>eafc*/25.0;
} else /*@>e698*/if (/*@>fbf2*/VCU_B./*@>10f14*/x_clutch/*@>e68d*/ < /*@>eaf8*/0.0) {
    /*@>fc0a*/VCU_B./*@>10f20*/x_clutch_b/*@>e69a*/ = /*@>eafa*/0.0;
} else {
    /*@>fbfe*/VCU_B./*@>10f1a*/x_clutch_b/*@>e694*/ = /*@>fc04*/VCU_B./*@>10f1d*/x_clutch;
}
/* End of Saturate: '<S14>/Saturation' */

/* DataStoreRead: '<S14>/Data Store Read' */
/*@>fc10*/VCU_B./*@>10f23*/DataStoreRead/*@>6bf8*/ = /*@>ffd5*/VCU_DW./*@>11091*/VAR_IN_Fans_dash_bit;
/* DataTypeConversion: '<S14>/Data Type Conversion10' */
/*@>fc16*/VCU_B./*@>10f26*/Fans_dash_bit/*@>6bfb*/ = (/*@>fc1c*/VCU_B./*@>10f29*/DataStoreRead/*@>e2b6*/ != /*@>e2b4*/0.0);
/* DataStoreRead: '<S14>/Data Store Read1' */
/*@>fc22*/VCU_B./*@>10f2c*/DataStoreRead1/*@>6bfd*/ = /*@>ffdb*/VCU_DW./*@>11094*/VAR_IN_p_brake_R;
/* Saturate: '<S41>/Saturation' incorporates:
 *  Gain: '<S14>/mV//V11'
 */
/*@>fc28*/VCU_B./*@>10f2f*/mVV11/*@>6c05*/ = /*@>e25d*/0.001/*@>e2b1*/ * /*@>fc2e*/VCU_B./*@>10f32*/DataStoreRead1;
/*@>e6e0*/if (/*@>fc34*/VCU_B./*@>10f35*/mVV11/*@>e6db*/ > /*@>eafe*/4.8) {
    /*@>fc40*/VCU_B./*@>10f3b*/Saturation_i/*@>e6e2*/ = /*@>eb04*/4.8;
} else /*@>e6e3*/if (/*@>fc3a*/VCU_B./*@>10f38*/mVV11/*@>e6d8*/ < /*@>eb00*/0.5) {
    /*@>fc52*/VCU_B./*@>10f44*/Saturation_i/*@>e6e5*/ = /*@>eb02*/0.5;
} else {
    /*@>fc46*/VCU_B./*@>10f3e*/Saturation_i/*@>e6df*/ = /*@>fc4c*/VCU_B./*@>10f41*/mVV11;
}
/* End of Saturate: '<S41>/Saturation' */

/* Sum: '<S41>/Add' incorporates:
 *  Constant: '<S41>/Offset'
 */
/*@>fc58*/VCU_B./*@>10f47*/Add_ps/*@>8931*/ = /*@>fc5e*/VCU_B./*@>10f4a*/Saturation_i/*@>892e*/ - /*@>e260*/0.5;
/* Gain: '<S41>/Sensitivity: 15,38 mV // bar' */
/*@>fc64*/VCU_B./*@>10f4d*/Sensitivity1538mVbar/*@>6c18*/ = /*@>e261*/65.019505851755525/*@>e2ad*/ * /*@>fc6a*/VCU_B./*@>10f50*/Add_ps;
/* DataStoreRead: '<S14>/Data Store Read12' */
/*@>fc70*/VCU_B./*@>10f53*/DataStoreRead12/*@>6c1a*/ = /*@>ffe1*/VCU_DW./*@>11097*/VAR_IN_U_Bat;
/* Gain: '<S14>/mV//V13' */
/*@>fc76*/VCU_B./*@>10f56*/U_Bat/*@>6c22*/ = /*@>e262*/0.001/*@>e2a9*/ * /*@>fc7c*/VCU_B./*@>10f59*/DataStoreRead12;
/* DataStoreRead: '<S14>/Data Store Read4' */
/*@>fc82*/VCU_B./*@>10f5c*/DataStoreRead4/*@>6c24*/ = /*@>ffe7*/VCU_DW./*@>1109a*/VAR_IN_f_FL;
/* Gain: '<S14>/mV//V15' */
/*@>fc88*/VCU_B./*@>10f5f*/mVV15/*@>6c2c*/ = /*@>e263*/0.001/*@>e2a5*/ * /*@>fc8e*/VCU_B./*@>10f62*/DataStoreRead4;
/* Saturate: '<S42>/Saturation1' incorporates:
 *  Lookup_n-D: '<S42>/1-D Lookup Table1'
 */
/*@>fc94*/VCU_B./*@>10f65*/uDLookupTable1/*@>8ae1*/ = /*@>f1d6*/look1_binlxpw(/*@>fc9a*/VCU_B./*@>10f68*/mVV15, /*@>fe36*/VCU_ConstP./*@>11007*/uDLookupTable1_bp01Data, /*@>fe3c*/VCU_ConstP./*@>1100a*/uDLookupTable1_tableData, /*@>e1c8*/1U);
/*@>e72b*/if (/*@>fca0*/VCU_B./*@>10f6b*/uDLookupTable1/*@>e726*/ > /*@>eb06*/9000.0) {
    /*@>fcac*/VCU_B./*@>10f71*/Saturation1_e/*@>e72d*/ = /*@>eb0c*/9000.0;
} else /*@>e72e*/if (/*@>fca6*/VCU_B./*@>10f6e*/uDLookupTable1/*@>e723*/ < /*@>eb08*/0.0) {
    /*@>fcbe*/VCU_B./*@>10f7a*/Saturation1_e/*@>e730*/ = /*@>eb0a*/0.0;
} else {
    /*@>fcb2*/VCU_B./*@>10f74*/Saturation1_e/*@>e72a*/ = /*@>fcb8*/VCU_B./*@>10f77*/uDLookupTable1;
}
/* End of Saturate: '<S42>/Saturation1' */

/* DataStoreRead: '<S14>/Data Store Read5' */
/*@>fcc4*/VCU_B./*@>10f7d*/DataStoreRead5/*@>6c3b*/ = /*@>ffed*/VCU_DW./*@>1109d*/VAR_IN_f_FR;
/* Gain: '<S14>/mV//V16' */
/*@>fcca*/VCU_B./*@>10f80*/mVV16/*@>6c43*/ = /*@>e266*/0.001/*@>e2a1*/ * /*@>fcd0*/VCU_B./*@>10f83*/DataStoreRead5;
/* Saturate: '<S43>/Saturation1' incorporates:
 *  Lookup_n-D: '<S43>/1-D Lookup Table1'
 */
/*@>fcd6*/VCU_B./*@>10f86*/uDLookupTable1_k/*@>8b0a*/ = /*@>f1da*/look1_binlxpw(/*@>fcdc*/VCU_B./*@>10f89*/mVV16, /*@>fe42*/VCU_ConstP./*@>1100d*/uDLookupTable1_bp01Data_d, /*@>fe48*/VCU_ConstP./*@>11010*/uDLookupTable1_tableData_o, /*@>e1ce*/1U);
/*@>e776*/if (/*@>fce2*/VCU_B./*@>10f8c*/uDLookupTable1_k/*@>e771*/ > /*@>eb0e*/9000.0) {
    /*@>fcee*/VCU_B./*@>10f92*/Saturation1_n/*@>e778*/ = /*@>eb14*/9000.0;
} else /*@>e779*/if (/*@>fce8*/VCU_B./*@>10f8f*/uDLookupTable1_k/*@>e76e*/ < /*@>eb10*/0.0) {
    /*@>fd00*/VCU_B./*@>10f9b*/Saturation1_n/*@>e77b*/ = /*@>eb12*/0.0;
} else {
    /*@>fcf4*/VCU_B./*@>10f95*/Saturation1_n/*@>e775*/ = /*@>fcfa*/VCU_B./*@>10f98*/uDLookupTable1_k;
}
/* End of Saturate: '<S43>/Saturation1' */

/* DataStoreRead: '<S14>/Data Store Read6' */
/*@>fd06*/VCU_B./*@>10f9e*/DataStoreRead6/*@>6c52*/ = /*@>fff3*/VCU_DW./*@>110a0*/VAR_IN_f_RL;
/* Gain: '<S14>/mV//V17' */
/*@>fd0c*/VCU_B./*@>10fa1*/mVV17/*@>6c5a*/ = /*@>e269*/0.001/*@>e29d*/ * /*@>fd12*/VCU_B./*@>10fa4*/DataStoreRead6;
/* Saturate: '<S44>/Saturation1' incorporates:
 *  Lookup_n-D: '<S44>/1-D Lookup Table1'
 */
/*@>fd18*/VCU_B./*@>10fa7*/uDLookupTable1_p/*@>8b33*/ = /*@>f1de*/look1_binlxpw(/*@>fd1e*/VCU_B./*@>10faa*/mVV17, /*@>fe4e*/VCU_ConstP./*@>11013*/uDLookupTable1_bp01Data_o, /*@>fe54*/VCU_ConstP./*@>11016*/uDLookupTable1_tableData_d, /*@>e1d4*/4U);
/*@>e7c1*/if (/*@>fd24*/VCU_B./*@>10fad*/uDLookupTable1_p/*@>e7bc*/ > /*@>eb16*/9000.0) {
    /*@>fd30*/VCU_B./*@>10fb3*/Saturation1_o/*@>e7c3*/ = /*@>eb1c*/9000.0;
} else /*@>e7c4*/if (/*@>fd2a*/VCU_B./*@>10fb0*/uDLookupTable1_p/*@>e7b9*/ < /*@>eb18*/0.0) {
    /*@>fd42*/VCU_B./*@>10fbc*/Saturation1_o/*@>e7c6*/ = /*@>eb1a*/0.0;
} else {
    /*@>fd36*/VCU_B./*@>10fb6*/Saturation1_o/*@>e7c0*/ = /*@>fd3c*/VCU_B./*@>10fb9*/uDLookupTable1_p;
}
/* End of Saturate: '<S44>/Saturation1' */

/* DataStoreRead: '<S14>/Data Store Read7' */
/*@>fd48*/VCU_B./*@>10fbf*/DataStoreRead7/*@>6c69*/ = /*@>fff9*/VCU_DW./*@>110a3*/VAR_IN_f_RR;
/* Gain: '<S14>/mV//V18' */
/*@>fd4e*/VCU_B./*@>10fc2*/mVV18/*@>6c71*/ = /*@>e26c*/0.001/*@>e299*/ * /*@>fd54*/VCU_B./*@>10fc5*/DataStoreRead7;
/* Saturate: '<S45>/Saturation1' incorporates:
 *  Lookup_n-D: '<S45>/1-D Lookup Table1'
 */
/*@>fd5a*/VCU_B./*@>10fc8*/uDLookupTable1_kb/*@>8b5c*/ = /*@>f1e2*/look1_binlxpw(/*@>fd60*/VCU_B./*@>10fcb*/mVV18, /*@>fe5a*/VCU_ConstP./*@>11019*/uDLookupTable1_bp01Data_n, /*@>fe60*/VCU_ConstP./*@>1101c*/uDLookupTable1_tableData_l, /*@>e1da*/4U);
/*@>e80c*/if (/*@>fd66*/VCU_B./*@>10fce*/uDLookupTable1_kb/*@>e807*/ > /*@>eb1e*/9000.0) {
    /*@>fd72*/VCU_B./*@>10fd4*/Saturation1_h/*@>e80e*/ = /*@>eb24*/9000.0;
} else /*@>e80f*/if (/*@>fd6c*/VCU_B./*@>10fd1*/uDLookupTable1_kb/*@>e804*/ < /*@>eb20*/0.0) {
    /*@>fd84*/VCU_B./*@>10fdd*/Saturation1_h/*@>e811*/ = /*@>eb22*/0.0;
} else {
    /*@>fd78*/VCU_B./*@>10fd7*/Saturation1_h/*@>e80b*/ = /*@>fd7e*/VCU_B./*@>10fda*/uDLookupTable1_kb;
}
/* End of Saturate: '<S45>/Saturation1' */

/* DataStoreRead: '<S14>/Data Store Read8' */
/*@>fd8a*/VCU_B./*@>10fe0*/DataStoreRead8/*@>6c80*/ = /*@>ffff*/VCU_DW./*@>110a6*/VAR_IN_LC_dash_bit;
/* DataTypeConversion: '<S14>/Data Type Conversion11' */
/*@>fd90*/VCU_B./*@>10fe3*/LC_dash_bit/*@>6c83*/ = (/*@>fd96*/VCU_B./*@>10fe6*/DataStoreRead8/*@>e296*/ != /*@>e294*/0.0);





      
  


        
    
      
          }
    
  



                








  


  


  


  

