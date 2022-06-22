/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: StaticModel_cg.c
 *
 * Code generated for Simulink model 'StaticModel_cg'.
 *
 * Model version                  : 6.43
 * Simulink Coder version         : 9.6 (R2021b) 14-May-2021
 * C/C++ source code generated on : Thu Jun  9 13:24:46 2022
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: 32-bit Generic
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "StaticModel_cg.h"
#include "StaticModel_cg_private.h"

/* user code (top of source file) */
/* System '<Root>' */
int32_T *bp_i = 0x00002000;
int32_T *c0 = 0x00002004;
int32_T *c1 = 0x00002008;
int32_T *c2 = 0x0000200C;
int32_T *c3 = 0x00002010;
int32_T *m_points = 0x00002014;
int32_T *n_order = 0x00002018;

/* Block states (default storage) */
DW_StaticModel_cg_T StaticModel_cg_DW;

/* Real-time model */
static RT_MODEL_StaticModel_cg_T StaticModel_cg_M_;
RT_MODEL_StaticModel_cg_T *const StaticModel_cg_M = &StaticModel_cg_M_;

/* Model step function */
void StaticModel_cg_step(void)
{
  real_T aux_m[64];
  int32_T aux_m_tmp;
  int32_T c;
  int32_T calc_coeffs_tmp;
  int32_T i;
  int32_T tmp_0;
  real32_T rtb_coeffs_sca[32];
  real32_T tmp;
  uint8_T n;
  boolean_T b_p;
  boolean_T p;
  static const uint8_T e[5] = { 1U, 2U, 6U, 24U, 120U };

  boolean_T exitg1;

  /* MATLAB Function: '<S2>/MATLAB Function' incorporates:
   *  Constant: '<S1>/BP'
   *  Constant: '<S1>/polynomialOrder'
   *  Constant: '<S1>/recalc'
   */
  if (!StaticModel_cg_DW.old_BP_not_empty) {
    StaticModel_cg_DW.old_BP[0] = 0.0F;
    StaticModel_cg_DW.old_BP[1] = 1.0F;
    StaticModel_cg_DW.old_BP[2] = 0.0F;
    StaticModel_cg_DW.old_BP[3] = 1.0F;
    StaticModel_cg_DW.old_BP_not_empty = true;
  }

  if (!StaticModel_cg_DW.old_order_not_empty) {
    StaticModel_cg_DW.old_order = 3U;
    StaticModel_cg_DW.old_order_not_empty = true;
  }

  if (3 != StaticModel_cg_DW.old_order) {
    StaticModel_cg_DW.calc_flag = 0.0;
  } else {
    p = false;
    b_p = true;
    i = 0;
    exitg1 = false;
    while ((!exitg1) && (i < 4)) {
      if (!(StaticModel_cg_ConstP.BP_Value[i] == StaticModel_cg_DW.old_BP[i])) {
        b_p = false;
        exitg1 = true;
      } else {
        i++;
      }
    }

    if (b_p) {
      p = true;
    }

    if (!p) {
      StaticModel_cg_DW.calc_flag = 0.0;
    }
  }

  if ((!StaticModel_cg_DW.calc_coeffs_not_empty) ||
      (!(StaticModel_cg_DW.calc_flag != 0.0))) {
    memset(&StaticModel_cg_DW.calc_coeffs[0], 0, sizeof(real32_T) << 5U);
    StaticModel_cg_DW.calc_coeffs_not_empty = true;
  }

  if (!(StaticModel_cg_DW.calc_flag != 0.0)) {
    memset(&aux_m[0], 0, sizeof(real_T) << 6U);
    aux_m[0] = 0.0;
    aux_m[4] = 0.0;
    aux_m[1] = 1.0;
    aux_m[5] = 1.0;
    aux_m[2] = 0.0;
    aux_m[6] = 0.0;
    aux_m[3] = 1.0;
    aux_m[7] = 1.0;
    for (c = 1; c - 1 < 3; c++) {
      for (calc_coeffs_tmp = 1; calc_coeffs_tmp - 1 < 7; calc_coeffs_tmp++) {
        i = (int32_T)((uint8_T)c + 1U);
        if ((uint8_T)c + 1U > 255U) {
          i = 255;
        }

        tmp_0 = (int32_T)((uint8_T)calc_coeffs_tmp + 1U);
        if ((uint8_T)calc_coeffs_tmp + 1U > 255U) {
          tmp_0 = 255;
        }

        aux_m_tmp = ((uint8_T)c - 1) << 4;
        aux_m[((uint8_T)calc_coeffs_tmp + ((i - 1) << 4)) - 1] = (real32_T)
          (aux_m[(aux_m_tmp + tmp_0) - 1] - aux_m[(aux_m_tmp + (uint8_T)
            calc_coeffs_tmp) - 1]) / 0.25F;
      }
    }

    for (i = 1; i - 1 < 4; i++) {
      if ((uint8_T)((uint8_T)i - 1) > 5) {
        n = MAX_uint8_T;
      } else if ((uint8_T)((uint8_T)i - 1) < 1) {
        n = 1U;
      } else {
        n = e[(uint8_T)((uint8_T)i - 1) - 1];
      }

      c = ((uint8_T)i - 1) << 4;
      calc_coeffs_tmp = ((uint8_T)i - 1) << 3;
      StaticModel_cg_DW.calc_coeffs[calc_coeffs_tmp] = (real32_T)aux_m[c] /
        (real32_T)n;
      StaticModel_cg_DW.calc_coeffs[calc_coeffs_tmp + 1] = (real32_T)aux_m[c + 1]
        / (real32_T)n;
      StaticModel_cg_DW.calc_coeffs[calc_coeffs_tmp + 2] = (real32_T)aux_m[c + 2]
        / (real32_T)n;
      StaticModel_cg_DW.calc_coeffs[calc_coeffs_tmp + 3] = (real32_T)aux_m[c + 3]
        / (real32_T)n;
    }

    StaticModel_cg_DW.calc_flag = 1.0;
  }

  StaticModel_cg_DW.old_order = 3U;
  StaticModel_cg_DW.old_BP[0] = 0.0F;
  StaticModel_cg_DW.old_BP[1] = 1.0F;
  StaticModel_cg_DW.old_BP[2] = 0.0F;
  StaticModel_cg_DW.old_BP[3] = 1.0F;
  StaticModel_cg_DW.old_recalc = 0.0F;

  /* Gain: '<S1>/Gain' incorporates:
   *  MATLAB Function: '<S2>/MATLAB Function'
   */
  for (i = 0; i < 32; i++) {
    rtb_coeffs_sca[i] = 65536.0F * StaticModel_cg_DW.calc_coeffs[i];
  }

  /* End of Gain: '<S1>/Gain' */

  /* DataTypeConversion: '<S1>/Cast' incorporates:
   *  Gain: '<S1>/Gain'
   *  Inport: '<Root>/bp_i'
   *  Selector: '<S1>/Selector'
   */
  tmp = (real32_T)floor(rtb_coeffs_sca[*bp_i]);
  if (rtIsNaNF(tmp) || rtIsInfF(tmp)) {
    tmp = 0.0F;
  } else {
    tmp = (real32_T)fmod(tmp, 4.294967296E+9);
  }

  /* DataTypeConversion: '<S1>/Cast' */
  *c0 = tmp < 0.0F ? -(int32_T)(uint32_T)-tmp : (int32_T)(uint32_T)tmp;

  /* DataTypeConversion: '<S1>/Cast1' incorporates:
   *  Constant: '<S1>/offset'
   *  Gain: '<S1>/Gain'
   *  Inport: '<Root>/bp_i'
   *  Selector: '<S1>/Selector'
   */
  tmp = (real32_T)floor(rtb_coeffs_sca[*bp_i + 8]);
  if (rtIsNaNF(tmp) || rtIsInfF(tmp)) {
    tmp = 0.0F;
  } else {
    tmp = (real32_T)fmod(tmp, 4.294967296E+9);
  }

  /* DataTypeConversion: '<S1>/Cast1' */
  *c1 = tmp < 0.0F ? -(int32_T)(uint32_T)-tmp : (int32_T)(uint32_T)tmp;

  /* DataTypeConversion: '<S1>/Cast2' incorporates:
   *  Constant: '<S1>/offset'
   *  Gain: '<S1>/Gain'
   *  Inport: '<Root>/bp_i'
   *  Selector: '<S1>/Selector'
   */
  tmp = (real32_T)floor(rtb_coeffs_sca[*bp_i + 16]);
  if (rtIsNaNF(tmp) || rtIsInfF(tmp)) {
    tmp = 0.0F;
  } else {
    tmp = (real32_T)fmod(tmp, 4.294967296E+9);
  }

  /* DataTypeConversion: '<S1>/Cast2' */
  *c2 = tmp < 0.0F ? -(int32_T)(uint32_T)-tmp : (int32_T)(uint32_T)tmp;

  /* DataTypeConversion: '<S1>/Cast3' incorporates:
   *  Constant: '<S1>/offset'
   *  Gain: '<S1>/Gain'
   *  Inport: '<Root>/bp_i'
   *  Selector: '<S1>/Selector'
   */
  tmp = (real32_T)floor(rtb_coeffs_sca[*bp_i + 24]);
  if (rtIsNaNF(tmp) || rtIsInfF(tmp)) {
    tmp = 0.0F;
  } else {
    tmp = (real32_T)fmod(tmp, 4.294967296E+9);
  }

  /* DataTypeConversion: '<S1>/Cast3' */
  *c3 = tmp < 0.0F ? -(int32_T)(uint32_T)-tmp : (int32_T)(uint32_T)tmp;

  /* DataTypeConversion: '<S1>/Cast5' incorporates:
   *  MATLAB Function: '<S2>/MATLAB Function'
   */
  *m_points = 4;

  /* DataTypeConversion: '<S1>/Cast4' incorporates:
   *  Constant: '<S1>/polynomialOrder'
   *  MATLAB Function: '<S2>/MATLAB Function'
   */
  *n_order = 3;
}

/* Model initialize function */
void StaticModel_cg_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));
}

/* Model terminate function */
void StaticModel_cg_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
