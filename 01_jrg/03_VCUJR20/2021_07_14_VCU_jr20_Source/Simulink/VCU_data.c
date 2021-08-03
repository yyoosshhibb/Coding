/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: VCU_data.c
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

#include "VCU.h"
#include "VCU_private.h"

/* Invariant block signals (default storage) */
const ConstB_VCU_T VCU_ConstB = {
  0.9999,                              /* '<S121>/Saturation' */
  0.9999,                              /* '<S107>/Add1' */
  65528U,                              /* '<S63>/Gain6' */
  0,                                   /* '<S7>/Data Type Conversion1' */
  0                                    /* '<S7>/Data Type Conversion2' */
};

/* Constant parameters (default storage) */
const ConstP_VCU_T VCU_ConstP = {
  /* Pooled Parameter (Expression: [25 0])
   * Referenced by:
   *   '<S13>/1-D Lookup Table'
   *   '<S14>/Clutch_Pos2'
   */
  { 25.0, 0.0 },

  /* Expression: [0 5]
   * Referenced by: '<S13>/1-D Lookup Table'
   */
  { 0.0, 5.0 },

  /* Pooled Parameter (Expression: [55 160])
   * Referenced by:
   *   '<S14>/1-D Lookup Table4'
   *   '<S14>/1-D Lookup Table5'
   *   '<S14>/1-D Lookup Table6'
   */
  { 55.0, 160.0 },

  /* Pooled Parameter (Expression: [0.08 3.12])
   * Referenced by:
   *   '<S14>/1-D Lookup Table4'
   *   '<S14>/1-D Lookup Table6'
   */
  { 0.08, 3.12 },

  /* Expression: [0.08 3.04]
   * Referenced by: '<S14>/1-D Lookup Table5'
   */
  { 0.08, 3.04 },

  /* Expression: [2.75 4.04]
   * Referenced by: '<S14>/Clutch_Pos2'
   */
  { 2.75, 4.04 },

  /* Expression: [-40 300]
   * Referenced by: '<S42>/1-D Lookup Table1'
   */
  { -40.0, 300.0 },

  /* Expression: [0.098 0.169]
   * Referenced by: '<S42>/1-D Lookup Table1'
   */
  { 0.098, 0.169 },

  /* Expression: [-40 378]
   * Referenced by: '<S43>/1-D Lookup Table1'
   */
  { -40.0, 378.0 },

  /* Expression: [0.462 0.519]
   * Referenced by: '<S43>/1-D Lookup Table1'
   */
  { 0.462, 0.519 },

  /* Expression: [1030 2005  3970 5940 7910]
   * Referenced by: '<S44>/1-D Lookup Table1'
   */
  { 1030.0, 2005.0, 3970.0, 5940.0, 7910.0 },

  /* Expression: [0.774 1.312 2.400 3.490 4.576]
   * Referenced by: '<S44>/1-D Lookup Table1'
   */
  { 0.774, 1.312, 2.4, 3.49, 4.576 },

  /* Expression: [1018 1990 3935 5875 7830]
   * Referenced by: '<S45>/1-D Lookup Table1'
   */
  { 1018.0, 1990.0, 3935.0, 5875.0, 7830.0 },

  /* Expression: [0.851 1.391 2.464 3.540 4.620]
   * Referenced by: '<S45>/1-D Lookup Table1'
   */
  { 0.851, 1.391, 2.464, 3.54, 4.62 },

  /* Expression: reshape([0,0,0,0,0.5,0.7,1,0,0,0,0,0.5,0.7,1,0,0,0,0,0.5,0.7,1],7,3)
   * Referenced by: '<S120>/2-D Lookup Table'
   */
  { 0.0, 0.0, 0.0, 0.0, 0.5, 0.7, 1.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.7, 1.0, 0.0,
    0.0, 0.0, 0.0, 0.5, 0.7, 1.0 },

  /* Expression: [0,60,70,74,75,80,85]
   * Referenced by: '<S120>/2-D Lookup Table'
   */
  { 0.0, 60.0, 70.0, 74.0, 75.0, 80.0, 85.0 },

  /* Expression: [0,10,90]
   * Referenced by: '<S120>/2-D Lookup Table'
   */
  { 0.0, 10.0, 90.0 },

  /* Pooled Parameter (Expression: [1,0.5,0.1,0.05,0.05,0.05,0.03,0,0,0.03,0.03,0.05,0.4,0.8,1])
   * Referenced by:
   *   '<S139>/Duty Cycle MHJ1'
   *   '<S190>/Duty Cycle MHJ9'
   *   '<S198>/Duty Cycle MHJ1'
   */
  { 1.0, 0.5, 0.1, 0.05, 0.05, 0.05, 0.03, 0.0, 0.0, 0.03, 0.03, 0.05, 0.4, 0.8,
    1.0 },

  /* Pooled Parameter (Expression: [-25,-5,-3,-2,-1,-0.5,-0.1,0,0.1,0.5,1,2,5,7,25])
   * Referenced by:
   *   '<S139>/Duty Cycle MHJ1'
   *   '<S190>/Duty Cycle MHJ9'
   *   '<S198>/Duty Cycle MHJ1'
   */
  { -25.0, -5.0, -3.0, -2.0, -1.0, -0.5, -0.1, 0.0, 0.1, 0.5, 1.0, 2.0, 5.0, 7.0,
    25.0 },

  /* Computed Parameter: uDLookupTable_maxIndex
   * Referenced by: '<S120>/2-D Lookup Table'
   */
  { 6U, 2U },

  /* Pooled Parameter (Expression: [0 1;1 0;0 1;0 1;1 0;1 0;0 0;0 0])
   * Referenced by:
   *   '<S172>/Logic'
   *   '<S173>/Logic'
   *   '<S174>/Logic'
   *   '<S182>/Logic'
   *   '<S183>/Logic'
   *   '<S189>/Logic'
   *   '<S214>/Logic'
   *   '<S215>/Logic'
   *   '<S216>/Logic'
   *   '<S224>/Logic'
   *   '<S225>/Logic'
   *   '<S227>/Logic'
   *   '<S188>/Logic'
   */
  { 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0 }
};
