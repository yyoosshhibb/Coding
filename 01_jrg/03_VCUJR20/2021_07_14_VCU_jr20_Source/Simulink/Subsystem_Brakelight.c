/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Subsystem_Brakelight.c
 *
 * Code generated for Simulink model : VCU.
 * Model version      : 1.312
 * Simulink Coder version    : 8.14 (R2018a) 06-Feb-2018
 * TLC version       : 8.14 (Feb 22 2018)
 * C/C++ source code generated on  : Wed Jul 14 18:29:54 2021
 *
 * Target selection: Infineon_XMC_Family.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "Subsystem_Brakelight.h"

/* Include model header file for global data */
#include "VCU.h"
#include "VCU_private.h"

/* Output and update for atomic system: '<Root>/Brakelight' */
void FUNC_Brakelight(void)
{
  /* RelationalOperator: '<S1>/Relational Operator' incorporates:
   *  Constant: '<S1>/Constant'
   */
  VCU_B.RelationalOperator_c = (VCU_B.Add1_m > 5.0);

  /* RelationalOperator: '<S1>/Relational Operator1' incorporates:
   *  Constant: '<S1>/Constant'
   */
  VCU_B.RelationalOperator1_b = (5.0 < VCU_B.Sensitivity1538mVbar);

  /* Logic: '<S1>/Logical Operator' */
  VCU_B.Brakelight_f = (VCU_B.RelationalOperator_c ||
                        VCU_B.RelationalOperator1_b);
}
