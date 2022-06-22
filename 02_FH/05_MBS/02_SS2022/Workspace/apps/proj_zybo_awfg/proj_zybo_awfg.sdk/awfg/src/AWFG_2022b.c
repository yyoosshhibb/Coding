/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: AWFG_2022b.c
 *
 * Code generated for Simulink model 'AWFG_2022b'.
 *
 * Model version                  : 9.30
 * Simulink Coder version         : 9.6 (R2021b) 14-May-2021
 * C/C++ source code generated on : Thu Jun  9 20:20:54 2022
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Intel->x86-64 (Windows64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "AWFG_2022b.h"
#include "AWFG_2022b_private.h"

/* user code (top of source file) */
/* System '<Root>' */
int32_T *frequency = 0x00002000;
int32_T *duty = 0x00002004;
int32_T *type = 0x00002008;
int32_T *nb = 0x0000200C;
int32_T *ref = 0x00002010;
int32_T *c0 = 0x00002020;
int32_T *c1 = 0x00002030;
int32_T *c2 = 0x00002040;
int32_T *c3 = 0x00002050;

/* Block signals (default storage) */
B_AWFG_2022b_T AWFG_2022b_B;

/* Block states (default storage) */
DW_AWFG_2022b_T AWFG_2022b_DW;

/* Real-time model */
static RT_MODEL_AWFG_2022b_T AWFG_2022b_M_;
RT_MODEL_AWFG_2022b_T *const AWFG_2022b_M = &AWFG_2022b_M_;
real32_T sMultiWord2Single(const uint32_T u1[], int32_T n1, int32_T e1)
{
  int32_T exp_0;
  int32_T i;
  real32_T y;
  y = 0.0F;
  exp_0 = e1;
  if ((u1[n1 - 1] & 2147483648U) != 0U) {
    uint32_T cb;
    cb = 1U;
    for (i = 0; i < n1; i++) {
      uint32_T u1i;
      u1i = ~u1[i];
      cb += u1i;
      y -= (real32_T)ldexp((real32_T)cb, exp_0);
      cb = (uint32_T)(cb < u1i);
      exp_0 += 32;
    }
  } else {
    for (i = 0; i < n1; i++) {
      y += (real32_T)ldexp((real32_T)u1[i], exp_0);
      exp_0 += 32;
    }
  }

  return y;
}

real32_T rt_powf_snf(real32_T u0, real32_T u1)
{
  real32_T y;
  if (rtIsNaNF(u0) || rtIsNaNF(u1)) {
    y = (rtNaNF);
  } else {
    real32_T tmp;
    real32_T tmp_0;
    tmp = fabsf(u0);
    tmp_0 = fabsf(u1);
    if (rtIsInfF(u1)) {
      if (tmp == 1.0F) {
        y = 1.0F;
      } else if (tmp > 1.0F) {
        if (u1 > 0.0F) {
          y = (rtInfF);
        } else {
          y = 0.0F;
        }
      } else if (u1 > 0.0F) {
        y = 0.0F;
      } else {
        y = (rtInfF);
      }
    } else if (tmp_0 == 0.0F) {
      y = 1.0F;
    } else if (tmp_0 == 1.0F) {
      if (u1 > 0.0F) {
        y = u0;
      } else {
        y = 1.0F / u0;
      }
    } else if (u1 == 2.0F) {
      y = u0 * u0;
    } else if ((u1 == 0.5F) && (u0 >= 0.0F)) {
      y = sqrtf(u0);
    } else if ((u0 < 0.0F) && (u1 > floorf(u1))) {
      y = (rtNaNF);
    } else {
      y = powf(u0, u1);
    }
  }

  return y;
}

/* Model step function */
void AWFG_2022b_step(void)
{
  int32_T n;
  int32_T nx;
  int32_T rtb_DataTypeConversion5;
  real32_T yy_data[265];
  real32_T y_data[259];
  real32_T ys[7];
  real32_T nb;
  boolean_T rtb_CC_Change;
  static const int64m_T rtb_Gain3_0 = { { 0U, 4096U }/* chunks */
  };

  static const real_T e[49] = { 0.0, 0.0, 0.0, 0.125, -0.16666666666666666, -0.5,
    1.0, 0.0, 0.083333333333333329, -0.083333333333333329, -1.0, 2.0, 2.0, -6.0,
    0.0, -0.66666666666666663, 1.3333333333333333, 1.625, -6.5, -2.5, 15.0, 1.0,
    0.0, -2.5, 0.0, 9.3333333333333339, 0.0, -20.0, 0.0, 0.66666666666666663,
    1.3333333333333333, -1.625, -6.5, 2.5, 15.0, 0.0, -0.083333333333333329,
    -0.083333333333333329, 1.0, 2.0, -2.0, -6.0, 0.0, 0.0, 0.0, -0.125,
    -0.16666666666666666, 0.5, 1.0 };

  static const real32_T g[34] = { 1.0F, 2.0F, 6.0F, 24.0F, 120.0F, 720.0F,
    5040.0F, 40320.0F, 362880.0F, 3.6288E+6F, 3.99168E+7F, 4.790016E+8F,
    6.2270208E+9F, 8.71782892E+10F, 1.30767428E+12F, 2.09227885E+13F,
    3.55687415E+14F, 6.40237353E+15F, 1.21645096E+17F, 2.43290202E+18F,
    5.10909408E+19F, 1.12400072E+21F, 2.58520174E+22F, 6.20448455E+23F,
    1.55112111E+25F, 4.032915E+26F, 1.08888704E+28F, 3.04888372E+29F,
    8.84176308E+30F, 2.6525289E+32F, 8.22283969E+33F, 2.6313087E+35F,
    8.68331851E+36F, 2.95232823E+38F };

  const real_T *cfd_0;

  /* Logic: '<S1>/CC_Calc_condition' incorporates:
   *  Constant: '<Root>/Duty'
   *  DataTypeConversion: '<Root>/Data Type Conversion21'
   *  DataTypeConversion: '<S1>/Data Type Conversion10'
   *  Gain: '<Root>/Gain1'
   *  Gain: '<S1>/Gain3'
   *  Memory: '<S1>/Memory4'
   *  Memory: '<S1>/Memory6'
   *  RelationalOperator: '<S1>/Relational Operator'
   *  RelationalOperator: '<S1>/Relational Operator1'
   */
  rtb_CC_Change = ((0.5F == AWFG_2022b_DW.Memory6_PreviousInput) && (0.0F ==
    AWFG_2022b_DW.Memory4_PreviousInput));

  /* MATLAB Function: '<S1>/RT CPU_fcn' incorporates:
   *  Constant: '<S1>/Breakpoints'
   *  DataTypeConversion: '<S1>/Data Type Conversion9'
   */
  if (!AWFG_2022b_DW.cc0_not_empty) {
    AWFG_2022b_DW.cc0.size[0] = 128;
    AWFG_2022b_DW.cc0.size[1] = 4;
    memset(&AWFG_2022b_DW.cc0.data[0], 0, sizeof(real32_T) << 9U);
    AWFG_2022b_DW.cc0_not_empty = (AWFG_2022b_DW.cc0.size[0] != 0);
    AWFG_2022b_DW.ready0 = false;
    AWFG_2022b_DW.nb0 = 0.0F;
  }

  if (rtb_CC_Change && (!AWFG_2022b_DW.ready0)) {
    real_T k;
    real32_T ind;
    AWFG_2022b_DW.SFunction_DIMS2[0] = 128;
    AWFG_2022b_DW.SFunction_DIMS2[1] = 4;
    memset(&AWFG_2022b_B.cc[0], 0, sizeof(real32_T) << 9U);
    nb = 128.0F;
    AWFG_2022b_DW.nb0 = 128.0F;
    y_data[128] = 0.02F;
    y_data[0] = 0.0F;
    for (nx = 0; nx < 127; nx++) {
      y_data[nx + 1] = ((real32_T)nx + 1.0F) * 0.00015625F;
    }

    for (rtb_DataTypeConversion5 = 0; rtb_DataTypeConversion5 < 129;
         rtb_DataTypeConversion5++) {
      y_data[rtb_DataTypeConversion5] *= 314.159271F;
    }

    for (rtb_DataTypeConversion5 = 0; rtb_DataTypeConversion5 < 129;
         rtb_DataTypeConversion5++) {
      y_data[rtb_DataTypeConversion5] = sinf(y_data[rtb_DataTypeConversion5]);
    }

    cfd_0 = &e[0];
    yy_data[0] = y_data[125];
    yy_data[1] = y_data[126];
    yy_data[2] = y_data[127];
    memcpy(&yy_data[3], &y_data[0], 129U * sizeof(real32_T));
    yy_data[132] = y_data[1];
    yy_data[133] = y_data[2];
    yy_data[134] = y_data[3];
    k = 1.0;
    for (n = 0; n < 128; n++) {
      ys[0] = yy_data[(int32_T)k - 1];
      ys[1] = yy_data[(int32_T)(k + 1.0) - 1];
      ys[2] = yy_data[(int32_T)(k + 2.0) - 1];
      ys[3] = yy_data[(int32_T)(k + 3.0) - 1];
      ys[4] = yy_data[(int32_T)(k + 4.0) - 1];
      ys[5] = yy_data[(int32_T)(k + 5.0) - 1];
      ys[6] = yy_data[(int32_T)(k + 6.0) - 1];
      for (nx = 0; nx < 4; nx++) {
        if ((fabsf(ys[4] - ys[3]) < 0.001) && (nx > 0)) {
          AWFG_2022b_B.cc[((int32_T)k + AWFG_2022b_DW.SFunction_DIMS2[0] * nx) -
            1] = 0.0F;
        } else {
          real32_T cfd;
          if (nx < 1) {
            ind = 1.0F;
          } else {
            ind = g[nx - 1];
          }

          cfd = 0.0F;
          for (rtb_DataTypeConversion5 = 0; rtb_DataTypeConversion5 < 7;
               rtb_DataTypeConversion5++) {
            cfd += (real32_T)cfd_0[7 * rtb_DataTypeConversion5 + nx] *
              ys[rtb_DataTypeConversion5];
          }

          AWFG_2022b_B.cc[((int32_T)k + AWFG_2022b_DW.SFunction_DIMS2[0] * nx) -
            1] = cfd / rt_powf_snf(0.00015625F, (real32_T)nx) / ind;
        }
      }

      k++;
    }

    for (rtb_DataTypeConversion5 = 0; rtb_DataTypeConversion5 < 128;
         rtb_DataTypeConversion5++) {
      ind = AWFG_2022b_B.cc[rtb_DataTypeConversion5];
      if (ind > 1.0F) {
        AWFG_2022b_B.cc[rtb_DataTypeConversion5] = 1.0F;
        AWFG_2022b_B.cc[rtb_DataTypeConversion5 + AWFG_2022b_DW.SFunction_DIMS2
          [0]] = 0.0F;
        AWFG_2022b_B.cc[rtb_DataTypeConversion5 +
          (AWFG_2022b_DW.SFunction_DIMS2[0] << 1)] = 0.0F;
        AWFG_2022b_B.cc[rtb_DataTypeConversion5 + AWFG_2022b_DW.SFunction_DIMS2
          [0] * 3] = 0.0F;
      } else if (ind < -1.0F) {
        AWFG_2022b_B.cc[rtb_DataTypeConversion5] = -1.0F;
        AWFG_2022b_B.cc[rtb_DataTypeConversion5 + AWFG_2022b_DW.SFunction_DIMS2
          [0]] = 0.0F;
        AWFG_2022b_B.cc[rtb_DataTypeConversion5 +
          (AWFG_2022b_DW.SFunction_DIMS2[0] << 1)] = 0.0F;
        AWFG_2022b_B.cc[rtb_DataTypeConversion5 + AWFG_2022b_DW.SFunction_DIMS2
          [0] * 3] = 0.0F;
      }
    }

    AWFG_2022b_DW.cc0.size[0] = AWFG_2022b_DW.SFunction_DIMS2[0];
    AWFG_2022b_DW.cc0.size[1] = 4;
    n = AWFG_2022b_DW.SFunction_DIMS2[0] * AWFG_2022b_DW.SFunction_DIMS2[1] - 1;
    if (0 <= n) {
      memcpy(&AWFG_2022b_DW.cc0.data[0], &AWFG_2022b_B.cc[0], (n + 1) * sizeof
             (real32_T));
    }

    AWFG_2022b_DW.cc0_not_empty = (AWFG_2022b_DW.cc0.size[0] != 0);
    AWFG_2022b_DW.ready0 = true;
  } else if (!rtb_CC_Change) {
    AWFG_2022b_DW.ready0 = false;
    AWFG_2022b_DW.SFunction_DIMS2[0] = AWFG_2022b_DW.cc0.size[0];
    AWFG_2022b_DW.SFunction_DIMS2[1] = 4;
    nb = AWFG_2022b_DW.nb0;
  } else {
    AWFG_2022b_DW.SFunction_DIMS2[0] = AWFG_2022b_DW.cc0.size[0];
    AWFG_2022b_DW.SFunction_DIMS2[1] = 4;
    nb = AWFG_2022b_DW.nb0;
  }

  /* MATLAB Function: '<S1>/Write_to_FPGA_CTRL' incorporates:
   *  MATLAB Function: '<S1>/RT CPU_fcn'
   */
  if (!AWFG_2022b_DW.we_addr0_not_empty) {
    AWFG_2022b_DW.we_addr0 = 0.0;
    AWFG_2022b_DW.we_addr0_not_empty = true;
    AWFG_2022b_DW.write_first = 0.0;
  } else if (rtb_CC_Change && AWFG_2022b_DW.ready0) {
    if (AWFG_2022b_DW.we_addr0 < nb - 1.0F) {
      if (AWFG_2022b_DW.write_first == 0.0) {
        AWFG_2022b_DW.we_addr0 = 0.0;
        AWFG_2022b_DW.write_first = 1.0;
      } else {
        AWFG_2022b_DW.we_addr0++;
      }
    }
  } else if (!rtb_CC_Change) {
    AWFG_2022b_DW.we_addr0 = 0.0;
    AWFG_2022b_DW.write_first = 0.0;
  }

  /* End of MATLAB Function: '<S1>/Write_to_FPGA_CTRL' */

  /* Update for Memory: '<S1>/Memory6' incorporates:
   *  Constant: '<Root>/Duty'
   *  DataTypeConversion: '<Root>/Data Type Conversion21'
   *  DataTypeConversion: '<S1>/Data Type Conversion10'
   *  Gain: '<Root>/Gain1'
   *  Gain: '<S1>/Gain3'
   */
  AWFG_2022b_DW.Memory6_PreviousInput = sMultiWord2Single(&rtb_Gain3_0.chunks[0U],
    2, 0) * 2.84217094E-14F;

  /* Update for Memory: '<S1>/Memory4' */
  AWFG_2022b_DW.Memory4_PreviousInput = 0.0F;
}

/* Model initialize function */
void AWFG_2022b_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));

  /* initialize error status */
  rtmSetErrorStatus(AWFG_2022b_M, (NULL));

  /* states (dwork) */
  (void) memset((void *)&AWFG_2022b_DW, 0,
                sizeof(DW_AWFG_2022b_T));

  /* InitializeConditions for Memory: '<S1>/Memory4' */
  AWFG_2022b_DW.Memory4_PreviousInput = -1.0F;

  /* SystemInitialize for MATLAB Function: '<S1>/RT CPU_fcn' */
  AWFG_2022b_DW.cc0_not_empty = false;

  /* SystemInitialize for MATLAB Function: '<S1>/Write_to_FPGA_CTRL' */
  AWFG_2022b_DW.we_addr0_not_empty = false;
}

/* Model terminate function */
void AWFG_2022b_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
