/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Subsystem_InputData.c
 *
 * Code generated for Simulink model : VCU.
 * Model version      : 1.302
 * Simulink Coder version    : 8.14 (R2018a) 06-Feb-2018
 * TLC version       : 8.14 (Feb 22 2018)
 * C/C++ source code generated on  : Thu Jun 17 19:22:06 2021
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
  VCU_B.DataStoreRead1_d = VCU_DW.VAR_IN_p_brake_F_LSB;

  /* DataStoreRead: '<S8>/Data Store Read4' */
  VCU_B.DataStoreRead4_p = VCU_DW.VAR_IN_p_brake_F_MSB;

  /* Gain: '<S16>/Gain' */
  VCU_B.Gain_d = (uint16_T)(VCU_B.DataStoreRead4_p << 7);

  /* Sum: '<S16>/Add' */
  VCU_B.Add_a = (uint16_T)((((uint32_T)VCU_B.Gain_d << 1) +
    VCU_B.DataStoreRead1_d) >> 1);

  /* DataTypeConversion: '<S16>/Data Type Conversion' */
  VCU_B.DataTypeConversion_h = (uint16_T)(VCU_B.Add_a << 1);

  /* Gain: '<S15>/Factor' */
  VCU_B.Factor_g = 64173U * VCU_B.DataTypeConversion_h;

  /* Sum: '<S15>/Add1' incorporates:
   *  Constant: '<S15>/Offset'
   */
  VCU_B.Add1_m = (real_T)VCU_B.Factor_g * 2.384185791015625E-7 + -20.0;

  /* DataStoreRead: '<S8>/Data Store Read2' */
  VCU_B.DataStoreRead2 = VCU_DW.VAR_IN_ABS_BL_switch;

  /* DataTypeConversion: '<S8>/Data Type Conversion2' */
  VCU_B.ABS_BL_switch = VCU_B.DataStoreRead2;

  /* DataStoreRead: '<S8>/Data Store Read3' */
  VCU_B.DataStoreRead3_l = VCU_DW.VAR_IN_ABS_switchstate;

  /* DataTypeConversion: '<S8>/Data Type Conversion' */
  VCU_B.ABS_switchstate = VCU_B.DataStoreRead3_l;

  /* DataStoreRead: '<S8>/Data Store Read5' */
  VCU_B.DataStoreRead5_d = VCU_DW.VAR_IN_ABS_EBD_Lamp;

  /* DataTypeConversion: '<S8>/Data Type Conversion4' */
  VCU_B.ABS_EBD_Lamp = VCU_B.DataStoreRead5_d;

  /* DataStoreRead: '<S8>/Data Store Read6' */
  VCU_B.DataStoreRead6_j = VCU_DW.VAR_IN_ABS_active;

  /* DataTypeConversion: '<S8>/Data Type Conversion3' */
  VCU_B.ABS_active = VCU_B.DataStoreRead6_j;

  /* DataStoreRead: '<S8>/Data Store Read7' */
  VCU_B.DataStoreRead7_l = VCU_DW.VAR_IN_ABS_Lamp;

  /* DataTypeConversion: '<S8>/Data Type Conversion5' */
  VCU_B.ABS_Lamp = VCU_B.DataStoreRead7_l;

  /* DataStoreRead: '<S9>/Data Store Read5' */
  VCU_B.DataStoreRead5_n = VCU_DW.VAR_IN_n_wheel_FL_mpros_LSB;

  /* DataStoreRead: '<S9>/Data Store Read1' */
  VCU_B.DataStoreRead1_k = VCU_DW.VAR_IN_n_wheel_FL_mpros_MSB;

  /* Gain: '<S21>/Gain' */
  VCU_B.Gain_i = (uint16_T)(VCU_B.DataStoreRead1_k << 7);

  /* Sum: '<S21>/Add' */
  VCU_B.Add_li = (uint16_T)((((uint32_T)VCU_B.Gain_i << 1) +
    VCU_B.DataStoreRead5_n) >> 1);

  /* DataTypeConversion: '<S21>/Data Type Conversion' */
  VCU_B.DataTypeConversion_a = (uint16_T)(VCU_B.Add_li << 1);

  /* Gain: '<S17>/Factor' */
  VCU_B.Factor_br = (uint32_T)VCU_B.DataTypeConversion_a << 15;

  /* Sum: '<S17>/Add1' */
  VCU_B.Add1_k = (real_T)VCU_B.Factor_br * 4.76837158203125E-7;

  /* DataStoreRead: '<S9>/Data Store Read2' */
  VCU_B.DataStoreRead2_n = VCU_DW.VAR_IN_n_wheel_FR_mpros_LSB;

  /* DataStoreRead: '<S9>/Data Store Read3' */
  VCU_B.DataStoreRead3_k = VCU_DW.VAR_IN_n_wheel_FR_mpros_MSB;

  /* Gain: '<S22>/Gain' */
  VCU_B.Gain_e = (uint16_T)(VCU_B.DataStoreRead3_k << 7);

  /* Sum: '<S22>/Add' */
  VCU_B.Add_f = (uint16_T)((((uint32_T)VCU_B.Gain_e << 1) +
    VCU_B.DataStoreRead2_n) >> 1);

  /* DataTypeConversion: '<S22>/Data Type Conversion' */
  VCU_B.DataTypeConversion_l = (uint16_T)(VCU_B.Add_f << 1);

  /* Gain: '<S18>/Factor' */
  VCU_B.Factor_gm = (uint32_T)VCU_B.DataTypeConversion_l << 15;

  /* Sum: '<S18>/Add1' */
  VCU_B.Add1_de = (real_T)VCU_B.Factor_gm * 4.76837158203125E-7;

  /* Sum: '<S9>/Add' */
  VCU_B.Add_l1 = VCU_B.Add1_k + VCU_B.Add1_de;

  /* Gain: '<S9>/Gain4' */
  VCU_B.Gain4 = 0.9 * VCU_B.Add_l1;

  /* DataStoreRead: '<S9>/Data Store Read4' */
  VCU_B.DataStoreRead4_o = VCU_DW.VAR_IN_n_wheel_RL_mpros_LSB;

  /* DataStoreRead: '<S9>/Data Store Read6' */
  VCU_B.DataStoreRead6_f = VCU_DW.VAR_IN_n_wheel_RL_mpros_MSB;

  /* Gain: '<S23>/Gain' */
  VCU_B.Gain_me = (uint16_T)(VCU_B.DataStoreRead6_f << 7);

  /* Sum: '<S23>/Add' */
  VCU_B.Add_o4 = (uint16_T)((((uint32_T)VCU_B.Gain_me << 1) +
    VCU_B.DataStoreRead4_o) >> 1);

  /* DataTypeConversion: '<S23>/Data Type Conversion' */
  VCU_B.DataTypeConversion_j = (uint16_T)(VCU_B.Add_o4 << 1);

  /* Gain: '<S19>/Factor' */
  VCU_B.Factor_d5 = (uint32_T)VCU_B.DataTypeConversion_j << 15;

  /* Sum: '<S19>/Add1' */
  VCU_B.Add1_ks = (real_T)VCU_B.Factor_d5 * 4.76837158203125E-7;

  /* DataStoreRead: '<S9>/Data Store Read7' */
  VCU_B.DataStoreRead7_h = VCU_DW.VAR_IN_n_wheel_RR_mpros_LSB;

  /* DataStoreRead: '<S9>/Data Store Read8' */
  VCU_B.DataStoreRead8_e = VCU_DW.VAR_IN_n_wheel_RR_mpros_MSB;

  /* Gain: '<S24>/Gain' */
  VCU_B.Gain_c = (uint16_T)(VCU_B.DataStoreRead8_e << 7);

  /* Sum: '<S24>/Add' */
  VCU_B.Add_fb = (uint16_T)((((uint32_T)VCU_B.Gain_c << 1) +
    VCU_B.DataStoreRead7_h) >> 1);

  /* DataTypeConversion: '<S24>/Data Type Conversion' */
  VCU_B.DataTypeConversion_c = (uint16_T)(VCU_B.Add_fb << 1);

  /* Gain: '<S20>/Factor' */
  VCU_B.Factor_jp = (uint32_T)VCU_B.DataTypeConversion_c << 15;

  /* Sum: '<S20>/Add1' */
  VCU_B.Add1_eq = (real_T)VCU_B.Factor_jp * 4.76837158203125E-7;

  /* DataStoreRead: '<S25>/Data Store Read1' */
  VCU_B.DataStoreRead1_g = VCU_DW.VAR_IN_u_TPS;

  /* DataStoreRead: '<S26>/Data Store Read5' */
  VCU_B.DataStoreRead5_i = VCU_DW.VAR_IN_p_air_22;

  /* DataTypeConversion: '<S26>/Data Type Conversion' */
  VCU_B.DataTypeConversion = VCU_B.DataStoreRead5_i;

  /* DataStoreRead: '<S26>/Data Store Read4' */
  VCU_B.DataStoreRead4_k = VCU_DW.VAR_IN_p_air_22_des;

  /* DataTypeConversion: '<S26>/Data Type Conversion1' */
  VCU_B.DataTypeConversion1 = VCU_B.DataStoreRead4_k;

  /* DataStoreRead: '<S26>/Data Store Read1' */
  VCU_B.DataStoreRead1_m = VCU_DW.VAR_IN_n_engine_MSB;

  /* Gain: '<S29>/Gain' */
  VCU_B.Gain_cv = (uint16_T)(VCU_B.DataStoreRead1_m << 7);

  /* DataStoreRead: '<S26>/Data Store Read2' */
  VCU_B.DataStoreRead2_o = VCU_DW.VAR_IN_n_engine_LSB;

  /* Sum: '<S29>/Add' */
  VCU_B.Add_d = (uint16_T)((((uint32_T)VCU_B.Gain_cv << 1) +
    VCU_B.DataStoreRead2_o) >> 1);

  /* DataTypeConversion: '<S29>/Data Type Conversion' */
  VCU_B.DataTypeConversion_o = (uint16_T)(VCU_B.Add_d << 1);

  /* DataTypeConversion: '<S26>/Data Type Conversion2' */
  VCU_B.DataTypeConversion2 = VCU_B.DataTypeConversion_o;

  /* DataStoreRead: '<S26>/Data Store Read' */
  VCU_B.DataStoreRead_h = VCU_DW.VAR_IN_gear;

  /* ArithShift: '<S26>/Shift Arithmetic' */
  VCU_B.ShiftArithmetic = (uint8_T)((uint32_T)VCU_B.DataStoreRead_h >> 3);

  /* DataTypeConversion: '<S26>/Data Type Conversion3' */
  VCU_B.DataTypeConversion3 = VCU_B.ShiftArithmetic;

  /* DataStoreRead: '<S26>/Data Store Read3' */
  VCU_B.DataStoreRead3_a = VCU_DW.VAR_IN_TPS_Plausi;

  /* DataStoreRead: '<S27>/Data Store Read1' */
  VCU_B.DataStoreRead1_g5 = VCU_DW.VAR_IN_t_water_engine;

  /* Gain: '<S30>/Factor' */
  VCU_B.Factor_ba = (uint16_T)(VCU_B.DataStoreRead1_g5 << 7);

  /* Sum: '<S30>/Add1' incorporates:
   *  Constant: '<S30>/Offset'
   */
  VCU_B.Add1_iu = (real_T)VCU_B.Factor_ba * 0.0078125 + -50.0;

  /* DataStoreRead: '<S11>/Data Store Read1' */
  VCU_B.TeleFansDC_h = VCU_DW.VAR_IN_TeleFansDC;

  /* DataTypeConversion: '<S11>/Data Type Conversion1' */
  VCU_B.TeleFansDC = VCU_B.TeleFansDC_h;

  /* Gain: '<S31>/Factor' */
  VCU_B.Factor_kk = 0.01 * VCU_B.TeleFansDC;

  /* Sum: '<S31>/Add1' */
  VCU_B.Add1_ik = VCU_B.Factor_kk;

  /* DataStoreRead: '<S11>/Data Store Read8' */
  VCU_B.TeleActiveBit_p = VCU_DW.VAR_IN_TeleActiveBit;

  /* DataTypeConversion: '<S11>/Data Type Conversion' */
  VCU_B.TeleActiveBit = VCU_B.TeleActiveBit_p;

  /* DataStoreRead: '<S12>/Data Store Read1' */
  VCU_B.DataStoreRead1_f = VCU_DW.VAR_IN_g_yaw_ABS_MSB;

  /* DataStoreRead: '<S12>/Data Store Read3' */
  VCU_B.DataStoreRead3_o = VCU_DW.VAR_IN_g_yaw_ABS_LSB;

  /* DataStoreRead: '<S12>/Data Store Read2' */
  VCU_B.DataStoreRead2_h = VCU_DW.VAR_IN_g_long_ABS_MSB;

  /* DataStoreRead: '<S12>/Data Store Read4' */
  VCU_B.DataStoreRead4_l = VCU_DW.VAR_IN_g_long_ABS_LSB;

  /* DataStoreRead: '<S13>/Data Store Read9' */
  VCU_B.DataStoreRead9 = VCU_DW.VAR_IN_x_clutch_STW;

  /* Saturate: '<S13>/Saturation' incorporates:
   *  Gain: '<S13>/mV//V'
   */
  VCU_B.mVV = 0.001 * VCU_B.DataStoreRead9;
  if (VCU_B.mVV > 5.0) {
    VCU_B.Saturation_e = 5.0;
  } else if (VCU_B.mVV < 0.0) {
    VCU_B.Saturation_e = 0.0;
  } else {
    VCU_B.Saturation_e = VCU_B.mVV;
  }

  /* End of Saturate: '<S13>/Saturation' */

  /* Lookup_n-D: '<S13>/1-D Lookup Table' */
  VCU_B.x_clutch_STW = look1_binlxpw(VCU_B.Saturation_e,
    VCU_ConstP.uDLookupTable_bp01Data, VCU_ConstP.pooled6, 1U);

  /* DataStoreRead: '<S13>/Data Store Read10' */
  VCU_B.DataStoreRead10_b = VCU_DW.VAR_IN_STW_mue_tyre;

  /* Gain: '<S36>/Factor' */
  VCU_B.Factor_oq = (uint16_T)(164U * VCU_B.DataStoreRead10_b);

  /* Sum: '<S36>/Add1' */
  VCU_B.Add1_f1 = (real_T)VCU_B.Factor_oq * 6.103515625E-5;

  /* DataStoreRead: '<S13>/Data Store Read' */
  VCU_B.DataStoreRead_c = VCU_DW.VAR_IN_STW_shift_up_request;

  /* DataTypeConversion: '<S13>/Data Type Conversion' */
  VCU_B.STW_shift_up_request = VCU_B.DataStoreRead_c;

  /* DataStoreRead: '<S13>/Data Store Read1' */
  VCU_B.DataStoreRead1_j = VCU_DW.VAR_IN_STW_shift_down_request;

  /* DataTypeConversion: '<S13>/Data Type Conversion1' */
  VCU_B.STW_shift_down_request = VCU_B.DataStoreRead1_j;

  /* DataStoreRead: '<S13>/Data Store Read2' */
  VCU_B.DataStoreRead2_i = VCU_DW.VAR_IN_STW_transmission_mode;

  /* DataTypeConversion: '<S13>/Data Type Conversion6' */
  VCU_B.STW_transmission_mode = VCU_B.DataStoreRead2_i;

  /* DataStoreRead: '<S14>/Data Store Read9' */
  VCU_B.DataStoreRead9_m = VCU_DW.VAR_IN_x_RH_F;

  /* Gain: '<S14>/mV//V19' */
  VCU_B.mVV19 = 0.001 * VCU_B.DataStoreRead9_m;

  /* Lookup_n-D: '<S14>/1-D Lookup Table4' */
  VCU_B.x_RH_F = look1_binlxpw(VCU_B.mVV19, VCU_ConstP.pooled8,
    VCU_ConstP.pooled7, 1U);

  /* DataStoreRead: '<S14>/Data Store Read10' */
  VCU_B.DataStoreRead10 = VCU_DW.VAR_IN_x_RH_RL;

  /* Gain: '<S14>/mV//V20' */
  VCU_B.mVV20 = 0.001 * VCU_B.DataStoreRead10;

  /* Lookup_n-D: '<S14>/1-D Lookup Table5' */
  VCU_B.x_RH_RL = look1_binlxpw(VCU_B.mVV20, VCU_ConstP.uDLookupTable5_bp01Data,
    VCU_ConstP.pooled7, 1U);

  /* DataStoreRead: '<S14>/Data Store Read11' */
  VCU_B.DataStoreRead11 = VCU_DW.VAR_IN_x_RH_RR;

  /* Gain: '<S14>/mV//V21' */
  VCU_B.mVV21 = 0.001 * VCU_B.DataStoreRead11;

  /* Lookup_n-D: '<S14>/1-D Lookup Table6' */
  VCU_B.x_RH_RR = look1_binlxpw(VCU_B.mVV21, VCU_ConstP.pooled8,
    VCU_ConstP.pooled7, 1U);

  /* DataStoreRead: '<S14>/Data Store Read2' */
  VCU_B.DataStoreRead2_k = VCU_DW.VAR_IN_p_pneum;

  /* Gain: '<S14>/CAN to bar' */
  VCU_B.p_pneum = (uint16_T)(164U * VCU_B.DataStoreRead2_k);

  /* DataStoreRead: '<S14>/Data Store Read3' */
  VCU_B.DataStoreRead3 = VCU_DW.VAR_IN_x_clutch;

  /* Gain: '<S14>/mV//V14' */
  VCU_B.mVV14 = 0.001 * VCU_B.DataStoreRead3;

  /* Saturate: '<S14>/Saturation' incorporates:
   *  Lookup_n-D: '<S14>/Clutch_Pos2'
   */
  VCU_B.x_clutch = look1_binlxpw(VCU_B.mVV14, VCU_ConstP.Clutch_Pos2_bp01Data,
    VCU_ConstP.pooled6, 1U);
  if (VCU_B.x_clutch > 25.0) {
    VCU_B.x_clutch_b = 25.0;
  } else if (VCU_B.x_clutch < 0.0) {
    VCU_B.x_clutch_b = 0.0;
  } else {
    VCU_B.x_clutch_b = VCU_B.x_clutch;
  }

  /* End of Saturate: '<S14>/Saturation' */

  /* DataStoreRead: '<S14>/Data Store Read' */
  VCU_B.DataStoreRead = VCU_DW.VAR_IN_Fans_dash_bit;

  /* DataTypeConversion: '<S14>/Data Type Conversion10' */
  VCU_B.Fans_dash_bit = (VCU_B.DataStoreRead != 0.0);

  /* DataStoreRead: '<S14>/Data Store Read1' */
  VCU_B.DataStoreRead1 = VCU_DW.VAR_IN_p_brake_R;

  /* Saturate: '<S41>/Saturation' incorporates:
   *  Gain: '<S14>/mV//V11'
   */
  VCU_B.mVV11 = 0.001 * VCU_B.DataStoreRead1;
  if (VCU_B.mVV11 > 4.8) {
    VCU_B.Saturation_i = 4.8;
  } else if (VCU_B.mVV11 < 0.5) {
    VCU_B.Saturation_i = 0.5;
  } else {
    VCU_B.Saturation_i = VCU_B.mVV11;
  }

  /* End of Saturate: '<S41>/Saturation' */

  /* Sum: '<S41>/Add' incorporates:
   *  Constant: '<S41>/Offset'
   */
  VCU_B.Add_ps = VCU_B.Saturation_i - 0.5;

  /* Gain: '<S41>/Sensitivity: 15,38 mV // bar' */
  VCU_B.Sensitivity1538mVbar = 65.019505851755525 * VCU_B.Add_ps;

  /* DataStoreRead: '<S14>/Data Store Read12' */
  VCU_B.DataStoreRead12 = VCU_DW.VAR_IN_U_Bat;

  /* Gain: '<S14>/mV//V13' */
  VCU_B.U_Bat = 0.001 * VCU_B.DataStoreRead12;

  /* DataStoreRead: '<S14>/Data Store Read4' */
  VCU_B.DataStoreRead4 = VCU_DW.VAR_IN_f_FL;

  /* Gain: '<S14>/mV//V15' */
  VCU_B.mVV15 = 0.001 * VCU_B.DataStoreRead4;

  /* Saturate: '<S42>/Saturation1' incorporates:
   *  Lookup_n-D: '<S42>/1-D Lookup Table1'
   */
  VCU_B.uDLookupTable1 = look1_binlxpw(VCU_B.mVV15,
    VCU_ConstP.uDLookupTable1_bp01Data, VCU_ConstP.uDLookupTable1_tableData, 1U);
  if (VCU_B.uDLookupTable1 > 9000.0) {
    VCU_B.Saturation1_e = 9000.0;
  } else if (VCU_B.uDLookupTable1 < 0.0) {
    VCU_B.Saturation1_e = 0.0;
  } else {
    VCU_B.Saturation1_e = VCU_B.uDLookupTable1;
  }

  /* End of Saturate: '<S42>/Saturation1' */

  /* DataStoreRead: '<S14>/Data Store Read5' */
  VCU_B.DataStoreRead5 = VCU_DW.VAR_IN_f_FR;

  /* Gain: '<S14>/mV//V16' */
  VCU_B.mVV16 = 0.001 * VCU_B.DataStoreRead5;

  /* Saturate: '<S43>/Saturation1' incorporates:
   *  Lookup_n-D: '<S43>/1-D Lookup Table1'
   */
  VCU_B.uDLookupTable1_k = look1_binlxpw(VCU_B.mVV16,
    VCU_ConstP.uDLookupTable1_bp01Data_d, VCU_ConstP.uDLookupTable1_tableData_o,
    1U);
  if (VCU_B.uDLookupTable1_k > 9000.0) {
    VCU_B.Saturation1_n = 9000.0;
  } else if (VCU_B.uDLookupTable1_k < 0.0) {
    VCU_B.Saturation1_n = 0.0;
  } else {
    VCU_B.Saturation1_n = VCU_B.uDLookupTable1_k;
  }

  /* End of Saturate: '<S43>/Saturation1' */

  /* DataStoreRead: '<S14>/Data Store Read6' */
  VCU_B.DataStoreRead6 = VCU_DW.VAR_IN_f_RL;

  /* Gain: '<S14>/mV//V17' */
  VCU_B.mVV17 = 0.001 * VCU_B.DataStoreRead6;

  /* Saturate: '<S44>/Saturation1' incorporates:
   *  Lookup_n-D: '<S44>/1-D Lookup Table1'
   */
  VCU_B.uDLookupTable1_p = look1_binlxpw(VCU_B.mVV17,
    VCU_ConstP.uDLookupTable1_bp01Data_o, VCU_ConstP.uDLookupTable1_tableData_d,
    4U);
  if (VCU_B.uDLookupTable1_p > 9000.0) {
    VCU_B.Saturation1_o = 9000.0;
  } else if (VCU_B.uDLookupTable1_p < 0.0) {
    VCU_B.Saturation1_o = 0.0;
  } else {
    VCU_B.Saturation1_o = VCU_B.uDLookupTable1_p;
  }

  /* End of Saturate: '<S44>/Saturation1' */

  /* DataStoreRead: '<S14>/Data Store Read7' */
  VCU_B.DataStoreRead7 = VCU_DW.VAR_IN_f_RR;

  /* Gain: '<S14>/mV//V18' */
  VCU_B.mVV18 = 0.001 * VCU_B.DataStoreRead7;

  /* Saturate: '<S45>/Saturation1' incorporates:
   *  Lookup_n-D: '<S45>/1-D Lookup Table1'
   */
  VCU_B.uDLookupTable1_kb = look1_binlxpw(VCU_B.mVV18,
    VCU_ConstP.uDLookupTable1_bp01Data_n, VCU_ConstP.uDLookupTable1_tableData_l,
    4U);
  if (VCU_B.uDLookupTable1_kb > 9000.0) {
    VCU_B.Saturation1_h = 9000.0;
  } else if (VCU_B.uDLookupTable1_kb < 0.0) {
    VCU_B.Saturation1_h = 0.0;
  } else {
    VCU_B.Saturation1_h = VCU_B.uDLookupTable1_kb;
  }

  /* End of Saturate: '<S45>/Saturation1' */

  /* DataStoreRead: '<S14>/Data Store Read8' */
  VCU_B.DataStoreRead8 = VCU_DW.VAR_IN_LC_dash_bit;

  /* DataTypeConversion: '<S14>/Data Type Conversion11' */
  VCU_B.LC_dash_bit = (VCU_B.DataStoreRead8 != 0.0);
}
