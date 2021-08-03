/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Subsystem_Safety.c
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

#include "Subsystem_Safety.h"

/* Include model header file for global data */
#include "VCU.h"
#include "VCU_private.h"

/* Output and update for atomic system: '<Root>/Safety ' */
void FUNC_Safety(void)
{
  /* RelationalOperator: '<S129>/Compare' incorporates:
   *  Constant: '<S129>/Constant'
   */
  VCU_B.Compare_dm = (VCU_B.DataStoreRead3_a == 2);

  /* RelationalOperator: '<S5>/Relational Operator3' incorporates:
   *  Constant: '<S5>/Constant5'
   */
  VCU_B.RelationalOperator3_a = (VCU_B.Sensitivity1538mVbar > 200.0);

  /* Logic: '<S5>/Logical Operator1' */
  VCU_B.LogicalOperator1_a = (VCU_B.RelationalOperator3_a || VCU_B.Compare_dm);
}
