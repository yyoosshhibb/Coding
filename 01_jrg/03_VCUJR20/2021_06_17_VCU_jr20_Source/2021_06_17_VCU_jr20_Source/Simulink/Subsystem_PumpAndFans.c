/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Subsystem_PumpAndFans.c
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

#include "Subsystem_PumpAndFans.h"

/* Include model header file for global data */
#include "VCU.h"
#include "VCU_private.h"

/* Output and update for atomic system: '<Root>/Pump and Fans' */
void FUNC_PumpAndFans(void)
{
  /* Switch: '<S122>/Switch' incorporates:
   *  Switch: '<S122>/Switch1'
   */
  if (VCU_B.Fans_dash_bit) {
    /* Saturate: '<S122>/Saturation' incorporates:
     *  Constant: '<S122>/Constant'
     */
    VCU_B.Switch_j = 1.0;
  } else {
    if (VCU_B.TeleActiveBit >= 1.0) {
      /* Switch: '<S122>/Switch1' */
      VCU_B.Switch1_d = VCU_B.Add1_ik;
    } else {
      /* Lookup_n-D: '<S122>/2-D Lookup Table' incorporates:
       *  Switch: '<S122>/Switch1'
       */
      VCU_B.uDLookupTable = look2_binlxpw(VCU_B.Add1_iu, VCU_B.Gain4,
        VCU_ConstP.uDLookupTable_bp01Data_h, VCU_ConstP.uDLookupTable_bp02Data,
        VCU_ConstP.uDLookupTable_tableData, VCU_ConstP.uDLookupTable_maxIndex,
        7U);

      /* Switch: '<S122>/Switch1' */
      VCU_B.Switch1_d = VCU_B.uDLookupTable;
    }

    /* Saturate: '<S122>/Saturation' */
    VCU_B.Switch_j = VCU_B.Switch1_d;
  }

  /* End of Switch: '<S122>/Switch' */

  /* Saturate: '<S122>/Saturation' */
  if (VCU_B.Switch_j > 0.9999) {
    VCU_B.Saturation_b = 0.9999;
  } else if (VCU_B.Switch_j < 0.0) {
    VCU_B.Saturation_b = 0.0;
  } else {
    VCU_B.Saturation_b = VCU_B.Switch_j;
  }
}
