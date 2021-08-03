/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Subsystem_OutputData.c
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

#include "Subsystem_OutputData.h"

/* Include model header file for global data */
#include "VCU.h"
#include "VCU_private.h"

/* Output and update for atomic system: '<Root>/Output Data' */
void FUNC_OutputData(void)
{
  real_T tmp;

  /* Gain: '<S63>/Gain' */
  VCU_B.n_wheel_FL_kmh = 3.6 * VCU_B.Add1_k;

  /* Gain: '<S70>/Factor' */
  VCU_B.Factor = 10.0 * VCU_B.n_wheel_FL_kmh;

  /* Sum: '<S70>/Add1' */
  VCU_B.Add1_g = VCU_B.Factor;

  /* DataTypeConversion: '<S70>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_g);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 65536.0);
  }

  VCU_B.DataTypeConversion10 = (uint16_T)(tmp < 0.0 ? (int32_T)(uint16_T)
    -(int16_T)(uint16_T)-tmp : (int32_T)(uint16_T)tmp);

  /* End of DataTypeConversion: '<S70>/Data Type Conversion10' */

  /* DataStoreWrite: '<S64>/Data Store Write' */
  VCU_DW.VAR_OUT_n_wheel_FL_kmproh = VCU_B.DataTypeConversion10;

  /* Gain: '<S63>/Gain1' */
  VCU_B.n_wheel_FR_kmh = 3.6 * VCU_B.Add1_de;

  /* Gain: '<S71>/Factor' */
  VCU_B.Factor_c = 10.0 * VCU_B.n_wheel_FR_kmh;

  /* Sum: '<S71>/Add1' */
  VCU_B.Add1_i = VCU_B.Factor_c;

  /* DataTypeConversion: '<S71>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_i);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 65536.0);
  }

  VCU_B.DataTypeConversion10_b = (uint16_T)(tmp < 0.0 ? (int32_T)(uint16_T)
    -(int16_T)(uint16_T)-tmp : (int32_T)(uint16_T)tmp);

  /* End of DataTypeConversion: '<S71>/Data Type Conversion10' */

  /* DataStoreWrite: '<S64>/Data Store Write1' */
  VCU_DW.VAR_OUT_n_wheel_FR_kmproh = VCU_B.DataTypeConversion10_b;

  /* Gain: '<S63>/Gain2' */
  VCU_B.n_wheel_RL_kmh = 3.6 * VCU_B.Add1_ks;

  /* Gain: '<S72>/Factor' */
  VCU_B.Factor_j = 10.0 * VCU_B.n_wheel_RL_kmh;

  /* Sum: '<S72>/Add1' */
  VCU_B.Add1_a = VCU_B.Factor_j;

  /* DataTypeConversion: '<S72>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_a);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 65536.0);
  }

  VCU_B.DataTypeConversion10_be = (uint16_T)(tmp < 0.0 ? (int32_T)(uint16_T)
    -(int16_T)(uint16_T)-tmp : (int32_T)(uint16_T)tmp);

  /* End of DataTypeConversion: '<S72>/Data Type Conversion10' */

  /* DataStoreWrite: '<S64>/Data Store Write2' */
  VCU_DW.VAR_OUT_n_wheel_RL_kmproh = VCU_B.DataTypeConversion10_be;

  /* Gain: '<S63>/Gain3' */
  VCU_B.n_wheel_RR_kmh = 3.6 * VCU_B.Add1_eq;

  /* Gain: '<S73>/Factor' */
  VCU_B.Factor_h = 10.0 * VCU_B.n_wheel_RR_kmh;

  /* Sum: '<S73>/Add1' */
  VCU_B.Add1_e = VCU_B.Factor_h;

  /* DataTypeConversion: '<S73>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_e);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 65536.0);
  }

  VCU_B.DataTypeConversion10_o = (uint16_T)(tmp < 0.0 ? (int32_T)(uint16_T)
    -(int16_T)(uint16_T)-tmp : (int32_T)(uint16_T)tmp);

  /* End of DataTypeConversion: '<S73>/Data Type Conversion10' */

  /* DataStoreWrite: '<S64>/Data Store Write3' */
  VCU_DW.VAR_OUT_n_wheel_RR_kmproh = VCU_B.DataTypeConversion10_o;

  /* Sum: '<S80>/Add1' */
  VCU_B.Add1_j = VCU_B.Sensitivity1538mVbar;

  /* DataTypeConversion: '<S80>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_j);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_ho = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S80>/Data Type Conversion10' */

  /* DataStoreWrite: '<S66>/Data Store Write' */
  VCU_DW.VAR_OUT_p_brake_R = VCU_B.DataTypeConversion10_ho;

  /* Gain: '<S81>/Factor' */
  VCU_B.Factor_d = 100.0 * VCU_B.Add1_f1;

  /* Sum: '<S81>/Add1' */
  VCU_B.Add1_l = VCU_B.Factor_d;

  /* DataTypeConversion: '<S81>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_l);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_fx = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S81>/Data Type Conversion10' */

  /* DataStoreWrite: '<S66>/Data Store Write1' */
  VCU_DW.VAR_OUT_STW_mue_tyre = VCU_B.DataTypeConversion10_fx;

  /* Gain: '<S82>/Factor' */
  VCU_B.Factor_b = 10.0 * VCU_B.x_clutch_LC;

  /* Sum: '<S82>/Add1' */
  VCU_B.Add1_ll = VCU_B.Factor_b;

  /* DataTypeConversion: '<S82>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_ll);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_ae = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S82>/Data Type Conversion10' */

  /* DataStoreWrite: '<S66>/Data Store Write2' */
  VCU_DW.VAR_OUT_x_clutch_LC = VCU_B.DataTypeConversion10_ae;

  /* Sum: '<S115>/Add' */
  VCU_B.Add_p = VCU_B.Add1_k + VCU_B.Add1_de;

  /* Gain: '<S115>/Gain' */
  VCU_B.Gain_g2 = 0.5 * VCU_B.Add_p;

  /* RelationalOperator: '<S120>/Compare' incorporates:
   *  Constant: '<S120>/Constant'
   */
  VCU_B.Compare_in = (VCU_B.Gain_g2 <= 1.0);

  /* Product: '<S115>/Product' */
  VCU_B.Product_o = (uint16_T)(VCU_B.LC_dash_bit ? (int32_T)VCU_B.Compare_in : 0);

  /* Gain: '<S83>/Factor' */
  VCU_B.Factor_ii = (uint32_T)VCU_B.Product_o << 15;

  /* Sum: '<S83>/Add1' */
  VCU_B.Add1_b = (real_T)VCU_B.Factor_ii * 3.0517578125E-5;

  /* DataTypeConversion: '<S83>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_b);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_c = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S83>/Data Type Conversion10' */

  /* DataStoreWrite: '<S66>/Data Store Write3' */
  VCU_DW.VAR_OUT_LC_dash_Bit = VCU_B.DataTypeConversion10_c;

  /* RelationalOperator: '<S108>/Compare' */
  VCU_B.Compare_k5 = VCU_B.LC_active_bit;

  /* Gain: '<S84>/Factor' */
  VCU_B.Factor_c0 = (uint8_T)(VCU_B.Compare_k5 << 7);

  /* Sum: '<S84>/Add1' */
  VCU_B.Add1_n = (real_T)VCU_B.Factor_c0 * 0.0078125;

  /* DataTypeConversion: '<S84>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_n);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_ou = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S84>/Data Type Conversion10' */

  /* DataStoreWrite: '<S66>/Data Store Write4' */
  VCU_DW.VAR_OUT_LC_active_bit = VCU_B.DataTypeConversion10_ou;

  /* Gain: '<S85>/Factor' */
  VCU_B.Factor_b4 = (uint8_T)(VCU_B.LC_ready_bit << 7);

  /* Sum: '<S85>/Add1' */
  VCU_B.Add1_jg = (real_T)VCU_B.Factor_b4 * 0.0078125;

  /* DataTypeConversion: '<S85>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_jg);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_p = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S85>/Data Type Conversion10' */

  /* DataStoreWrite: '<S66>/Data Store Write5' */
  VCU_DW.VAR_OUT_LC_ready_bit = VCU_B.DataTypeConversion10_p;

  /* Sum: '<S86>/Add1' */
  VCU_B.Add1_bq = VCU_B.LC_Mdes;

  /* DataTypeConversion: '<S86>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_bq);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_ci = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S86>/Data Type Conversion10' */

  /* DataStoreWrite: '<S66>/Data Store Write6' */
  VCU_DW.VAR_OUT_LC_Mdes = VCU_B.DataTypeConversion10_ci;

  /* Gain: '<S87>/Factor' */
  VCU_B.Factor_n = 0.1 * VCU_B.LC_Fnr;

  /* Sum: '<S87>/Add1' */
  VCU_B.Add1_io = VCU_B.Factor_n;

  /* DataTypeConversion: '<S87>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_io);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_j = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S87>/Data Type Conversion10' */

  /* DataStoreWrite: '<S66>/Data Store Write7' */
  VCU_DW.VAR_OUT_LC_Fnr = VCU_B.DataTypeConversion10_j;

  /* Sum: '<S74>/Add1' */
  VCU_B.Add1_p = VCU_B.ABS_switchstate;

  /* DataTypeConversion: '<S74>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_p);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_o3 = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S74>/Data Type Conversion10' */

  /* DataStoreWrite: '<S65>/Data Store Write' */
  VCU_DW.VAR_OUT_ABS_switchstate = VCU_B.DataTypeConversion10_o3;

  /* Sum: '<S75>/Add1' */
  VCU_B.Add1_c = VCU_B.Add1_m;

  /* DataTypeConversion: '<S75>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_c);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 65536.0);
  }

  VCU_B.DataTypeConversion10_h = (uint16_T)(tmp < 0.0 ? (int32_T)(uint16_T)
    -(int16_T)(uint16_T)-tmp : (int32_T)(uint16_T)tmp);

  /* End of DataTypeConversion: '<S75>/Data Type Conversion10' */

  /* DataStoreWrite: '<S65>/Data Store Write1' */
  VCU_DW.VAR_OUT_p_brake_F = VCU_B.DataTypeConversion10_h;

  /* Sum: '<S76>/Add1' */
  VCU_B.Add1_js = VCU_B.ABS_BL_switch;

  /* DataTypeConversion: '<S76>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_js);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_ok = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S76>/Data Type Conversion10' */

  /* DataStoreWrite: '<S65>/Data Store Write2' */
  VCU_DW.VAR_OUT_ABS_BL_switch = VCU_B.DataTypeConversion10_ok;

  /* Sum: '<S77>/Add1' */
  VCU_B.Add1_ak = VCU_B.ABS_active;

  /* DataTypeConversion: '<S77>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_ak);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_ah = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S77>/Data Type Conversion10' */

  /* DataStoreWrite: '<S65>/Data Store Write3' */
  VCU_DW.VAR_OUT_ABS_active = VCU_B.DataTypeConversion10_ah;

  /* Sum: '<S78>/Add1' */
  VCU_B.Add1_n4 = VCU_B.ABS_EBD_Lamp;

  /* DataTypeConversion: '<S78>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_n4);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_d = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S78>/Data Type Conversion10' */

  /* DataStoreWrite: '<S65>/Data Store Write4' */
  VCU_DW.VAR_OUT_ABS_EBD_Lamp = VCU_B.DataTypeConversion10_d;

  /* Sum: '<S79>/Add1' */
  VCU_B.Add1_h = VCU_B.ABS_Lamp;

  /* DataTypeConversion: '<S79>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_h);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_bd = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S79>/Data Type Conversion10' */

  /* DataStoreWrite: '<S65>/Data Store Write5' */
  VCU_DW.VAR_OUT_ABS_Lamp = VCU_B.DataTypeConversion10_bd;

  /* Gain: '<S88>/Factor' */
  VCU_B.Factor_a = 10.0 * VCU_B.Saturation1_e;

  /* Sum: '<S88>/Add1' */
  VCU_B.Add1_lh = VCU_B.Factor_a;

  /* DataTypeConversion: '<S88>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_lh);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 65536.0);
  }

  VCU_B.DataTypeConversion10_m = (uint16_T)(tmp < 0.0 ? (int32_T)(uint16_T)
    -(int16_T)(uint16_T)-tmp : (int32_T)(uint16_T)tmp);

  /* End of DataTypeConversion: '<S88>/Data Type Conversion10' */

  /* DataStoreWrite: '<S67>/Data Store Write' */
  VCU_DW.VAR_OUT_f_FL = VCU_B.DataTypeConversion10_m;

  /* Gain: '<S89>/Factor' */
  VCU_B.Factor_i = 10.0 * VCU_B.Saturation1_n;

  /* Sum: '<S89>/Add1' */
  VCU_B.Add1_bqm = VCU_B.Factor_i;

  /* DataTypeConversion: '<S89>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_bqm);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 65536.0);
  }

  VCU_B.DataTypeConversion10_f = (uint16_T)(tmp < 0.0 ? (int32_T)(uint16_T)
    -(int16_T)(uint16_T)-tmp : (int32_T)(uint16_T)tmp);

  /* End of DataTypeConversion: '<S89>/Data Type Conversion10' */

  /* DataStoreWrite: '<S67>/Data Store Write1' */
  VCU_DW.VAR_OUT_f_FR = VCU_B.DataTypeConversion10_f;

  /* Gain: '<S90>/Factor' */
  VCU_B.Factor_jn = 10.0 * VCU_B.Saturation1_o;

  /* Sum: '<S90>/Add1' */
  VCU_B.Add1_iv = VCU_B.Factor_jn;

  /* DataTypeConversion: '<S90>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_iv);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 65536.0);
  }

  VCU_B.DataTypeConversion10_a = (uint16_T)(tmp < 0.0 ? (int32_T)(uint16_T)
    -(int16_T)(uint16_T)-tmp : (int32_T)(uint16_T)tmp);

  /* End of DataTypeConversion: '<S90>/Data Type Conversion10' */

  /* DataStoreWrite: '<S67>/Data Store Write2' */
  VCU_DW.VAR_OUT_f_RL = VCU_B.DataTypeConversion10_a;

  /* Gain: '<S91>/Factor' */
  VCU_B.Factor_h0 = 10.0 * VCU_B.Saturation1_h;

  /* Sum: '<S91>/Add1' */
  VCU_B.Add1_i1 = VCU_B.Factor_h0;

  /* DataTypeConversion: '<S91>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_i1);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 65536.0);
  }

  VCU_B.DataTypeConversion10_n = (uint16_T)(tmp < 0.0 ? (int32_T)(uint16_T)
    -(int16_T)(uint16_T)-tmp : (int32_T)(uint16_T)tmp);

  /* End of DataTypeConversion: '<S91>/Data Type Conversion10' */

  /* DataStoreWrite: '<S67>/Data Store Write3' */
  VCU_DW.VAR_OUT_f_RR = VCU_B.DataTypeConversion10_n;

  /* Gain: '<S92>/Factor' */
  VCU_B.Factor_dd = 1.3 * VCU_B.x_RH_RL;

  /* Sum: '<S92>/Add1' */
  VCU_B.Add1_ai = VCU_B.Factor_dd;

  /* DataTypeConversion: '<S92>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_ai);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_px = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S92>/Data Type Conversion10' */

  /* DataStoreWrite: '<S68>/Data Store Write' */
  VCU_DW.VAR_OUT_x_RH_RL = VCU_B.DataTypeConversion10_px;

  /* Gain: '<S93>/Factor' */
  VCU_B.Factor_bc = 1.3 * VCU_B.x_RH_RR;

  /* Sum: '<S93>/Add1' */
  VCU_B.Add1_o = VCU_B.Factor_bc;

  /* DataTypeConversion: '<S93>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_o);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_ab = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S93>/Data Type Conversion10' */

  /* DataStoreWrite: '<S68>/Data Store Write1' */
  VCU_DW.VAR_OUT_x_RH_RR = VCU_B.DataTypeConversion10_ab;

  /* Gain: '<S94>/Factor' */
  VCU_B.Factor_f = 1.3 * VCU_B.x_RH_F;

  /* Sum: '<S94>/Add1' */
  VCU_B.Add1_ge = VCU_B.Factor_f;

  /* DataTypeConversion: '<S94>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_ge);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_e = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S94>/Data Type Conversion10' */

  /* DataStoreWrite: '<S68>/Data Store Write2' */
  VCU_DW.VAR_OUT_x_RH_F = VCU_B.DataTypeConversion10_e;

  /* Gain: '<S95>/Factor' */
  VCU_B.Factor_o = 10.0 * VCU_B.x_clutch_b;

  /* Sum: '<S95>/Add1' */
  VCU_B.Add1_id = VCU_B.Factor_o;

  /* DataTypeConversion: '<S95>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_id);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_g = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S95>/Data Type Conversion10' */

  /* DataStoreWrite: '<S68>/Data Store Write3' */
  VCU_DW.VAR_OUT_x_clutch = VCU_B.DataTypeConversion10_g;

  /* Gain: '<S96>/Factor' */
  VCU_B.Factor_k = 10.0 * VCU_B.x_clutch_STW;

  /* Sum: '<S96>/Add1' */
  VCU_B.Add1_d = VCU_B.Factor_k;

  /* DataTypeConversion: '<S96>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_d);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_k = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S96>/Data Type Conversion10' */

  /* DataStoreWrite: '<S68>/Data Store Write4' */
  VCU_DW.VAR_OUT_x_clutch_STW = VCU_B.DataTypeConversion10_k;

  /* Gain: '<S97>/Factor' */
  VCU_B.Factor_cv = 40960U * VCU_B.p_pneum;

  /* Sum: '<S97>/Add1' */
  VCU_B.Add1_a5 = (real_T)VCU_B.Factor_cv * 5.9604644775390625E-8;

  /* DataTypeConversion: '<S97>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_a5);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_p5 = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S97>/Data Type Conversion10' */

  /* DataStoreWrite: '<S68>/Data Store Write5' */
  VCU_DW.VAR_OUT_p_pneum = VCU_B.DataTypeConversion10_p5;

  /* Gain: '<S98>/Factor' */
  VCU_B.Factor_nt = 10.0 * VCU_B.U_Bat;

  /* Sum: '<S98>/Add1' */
  VCU_B.Add1_ph = VCU_B.Factor_nt;

  /* DataTypeConversion: '<S98>/Data Type Conversion10' */
  tmp = floor(VCU_B.Add1_ph);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 256.0);
  }

  VCU_B.DataTypeConversion10_bm = (uint8_T)(tmp < 0.0 ? (int32_T)(uint8_T)
    -(int8_T)(uint8_T)-tmp : (int32_T)(uint8_T)tmp);

  /* End of DataTypeConversion: '<S98>/Data Type Conversion10' */

  /* DataStoreWrite: '<S68>/Data Store Write6' */
  VCU_DW.VAR_OUT_U_Bat = VCU_B.DataTypeConversion10_bm;

  /* Sum: '<S106>/Add1' */
  VCU_B.Add1_jp = VCU_B.Saturation_b;

  /* DataStoreWrite: '<S69>/Data Store Write' */
  VCU_DW.VAR_OUT_Fans_active = VCU_B.Add1_jp;

  /* DataStoreWrite: '<S69>/Data Store Write1' */
  VCU_DW.VAR_OUT_Waterpump_active = VCU_ConstB.Add1;

  /* RelationalOperator: '<S109>/Compare' incorporates:
   *  Constant: '<S109>/Constant'
   */
  VCU_B.Compare_mi = (VCU_B.VOVG_ShiftUp > 0.0);

  /* DataStoreWrite: '<S63>/Data Store Write' */
  VCU_DW.VAR_OUT_VOVG_ShiftUp = VCU_B.Compare_mi;

  /* RelationalOperator: '<S110>/Compare' incorporates:
   *  Constant: '<S110>/Constant'
   */
  VCU_B.Compare_ek = (VCU_B.VOVG_ShiftDown > 0.0);

  /* DataStoreWrite: '<S63>/Data Store Write1' */
  VCU_DW.VAR_OUT_VOVG_ShiftDown = VCU_B.Compare_ek;

  /* Gain: '<S63>/Gain4' */
  tmp = floor(65535.0 * VCU_B.Saturation_b);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 65536.0);
  }

  VCU_B.Gain4_f = (uint16_T)(tmp < 0.0 ? (int32_T)(uint16_T)-(int16_T)(uint16_T)
    -tmp : (int32_T)(uint16_T)tmp);

  /* End of Gain: '<S63>/Gain4' */

  /* DataStoreWrite: '<S63>/Data Store Write10' */
  VCU_DW.VAR_OUT_Fans2_PWM_active = VCU_B.Gain4_f;

  /* RelationalOperator: '<S113>/Compare' incorporates:
   *  Constant: '<S113>/Constant'
   */
  VCU_B.Compare_pr = (VCU_B.Ignition_Cut > 0.0);

  /* DataStoreWrite: '<S63>/Data Store Write2' */
  VCU_DW.VAR_OUT_Ignition_Cut = VCU_B.Compare_pr;

  /* RelationalOperator: '<S111>/Compare' incorporates:
   *  Constant: '<S111>/Constant'
   */
  VCU_B.Compare_d3 = (VCU_B.VOVG_IN > 0.0);

  /* DataStoreWrite: '<S63>/Data Store Write3' */
  VCU_DW.VAR_OUT_VOVG_IN = VCU_B.Compare_d3;

  /* RelationalOperator: '<S112>/Compare' incorporates:
   *  Constant: '<S112>/Constant'
   */
  VCU_B.Compare_bb = (VCU_B.VOVG_OUT > 0.0);

  /* DataStoreWrite: '<S63>/Data Store Write4' */
  VCU_DW.VAR_OUT_VOVG_OUT = VCU_B.Compare_bb;

  /* Saturate: '<S63>/Saturation1' */
  if (VCU_B.MHJ9_IN > 1.0) {
    VCU_B.Saturation1 = 1.0;
  } else if (VCU_B.MHJ9_IN < 0.0) {
    VCU_B.Saturation1 = 0.0;
  } else {
    VCU_B.Saturation1 = VCU_B.MHJ9_IN;
  }

  /* End of Saturate: '<S63>/Saturation1' */

  /* Gain: '<S63>/uint16 ' */
  tmp = floor(65535.0 * VCU_B.Saturation1);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 65536.0);
  }

  VCU_B.uint16 = (uint16_T)(tmp < 0.0 ? (int32_T)(uint16_T)-(int16_T)(uint16_T)
    -tmp : (int32_T)(uint16_T)tmp);

  /* End of Gain: '<S63>/uint16 ' */

  /* DataStoreWrite: '<S63>/Data Store Write5' */
  VCU_DW.VAR_OUT_MHJ9_IN = VCU_B.uint16;

  /* Saturate: '<S63>/Saturation2' */
  if (VCU_B.MHJ9_OUT > 1.0) {
    VCU_B.Saturation2 = 1.0;
  } else if (VCU_B.MHJ9_OUT < 0.0) {
    VCU_B.Saturation2 = 0.0;
  } else {
    VCU_B.Saturation2 = VCU_B.MHJ9_OUT;
  }

  /* End of Saturate: '<S63>/Saturation2' */

  /* Gain: '<S63>/uint16_1 ' */
  tmp = floor(65535.0 * VCU_B.Saturation2);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 65536.0);
  }

  VCU_B.uint16_1 = (uint16_T)(tmp < 0.0 ? (int32_T)(uint16_T)-(int16_T)(uint16_T)
    -tmp : (int32_T)(uint16_T)tmp);

  /* End of Gain: '<S63>/uint16_1 ' */

  /* DataStoreWrite: '<S63>/Data Store Write6' */
  VCU_DW.VAR_OUT_MHJ9_OUT = VCU_B.uint16_1;

  /* DataStoreWrite: '<S63>/Data Store Write8' */
  VCU_DW.VAR_OUT_Waterpump_PWM_active = VCU_ConstB.Gain6;

  /* Gain: '<S63>/Gain5' */
  tmp = floor(65535.0 * VCU_B.Saturation_b);
  if (rtIsNaN(tmp) || rtIsInf(tmp)) {
    tmp = 0.0;
  } else {
    tmp = fmod(tmp, 65536.0);
  }

  VCU_B.Gain5 = (uint16_T)(tmp < 0.0 ? (int32_T)(uint16_T)-(int16_T)(uint16_T)
    -tmp : (int32_T)(uint16_T)tmp);

  /* End of Gain: '<S63>/Gain5' */

  /* DataStoreWrite: '<S63>/Data Store Write9' */
  VCU_DW.VAR_OUT_Fans1_PWM_active = VCU_B.Gain5;

  /* DataStoreWrite: '<S63>/Data Store Write11' */
  VCU_DW.VAR_OUT_BSD = VCU_B.LogicalOperator1_a;

  /* DataStoreWrite: '<S63>/Data Store Write7' */
  VCU_DW.VAR_OUT_Brakelight = VCU_B.Brakelight;
}
