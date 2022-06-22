/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: StaticModel_cg.h
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

#ifndef RTW_HEADER_StaticModel_cg_h_
#define RTW_HEADER_StaticModel_cg_h_
#include <math.h>
#include <string.h>
#ifndef StaticModel_cg_COMMON_INCLUDES_
#define StaticModel_cg_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* StaticModel_cg_COMMON_INCLUDES_ */

#include "StaticModel_cg_types.h"
#include "rt_nonfinite.h"
#include "rtGetInf.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real_T calc_flag;                    /* '<S2>/MATLAB Function' */
  real32_T old_recalc;                 /* '<S2>/MATLAB Function' */
  real32_T old_BP[4];                  /* '<S2>/MATLAB Function' */
  real32_T calc_coeffs[32];            /* '<S2>/MATLAB Function' */
  uint8_T old_order;                   /* '<S2>/MATLAB Function' */
  boolean_T old_BP_not_empty;          /* '<S2>/MATLAB Function' */
  boolean_T old_order_not_empty;       /* '<S2>/MATLAB Function' */
  boolean_T calc_coeffs_not_empty;     /* '<S2>/MATLAB Function' */
} DW_StaticModel_cg_T;

/* Constant parameters (default storage) */
typedef struct {
  /* Computed Parameter: BP_Value
   * Referenced by: '<S1>/BP'
   */
  real32_T BP_Value[4];
} ConstP_StaticModel_cg_T;

/* Real-time Model Data Structure */
struct tag_RTM_StaticModel_cg_T {
  const char_T * volatile errorStatus;
};

/* Block states (default storage) */
extern DW_StaticModel_cg_T StaticModel_cg_DW;

/* Constant parameters (default storage) */
extern const ConstP_StaticModel_cg_T StaticModel_cg_ConstP;

/* Model entry point functions */
extern void StaticModel_cg_initialize(void);
extern void StaticModel_cg_step(void);
extern void StaticModel_cg_terminate(void);

/* Real-time Model object */
extern RT_MODEL_StaticModel_cg_T *const StaticModel_cg_M;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S1>/Display' : Unused code path elimination
 * Block '<S1>/Display3' : Unused code path elimination
 * Block '<S1>/Display8' : Unused code path elimination
 */

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Note that this particular code originates from a subsystem build,
 * and has its own system numbers different from the parent model.
 * Refer to the system hierarchy for this subsystem below, and use the
 * MATLAB hilite_system command to trace the generated code back
 * to the parent model.  For example,
 *
 * hilite_system('AWFG_staticModel_cg/StaticModel_cg')    - opens subsystem AWFG_staticModel_cg/StaticModel_cg
 * hilite_system('AWFG_staticModel_cg/StaticModel_cg/Kp') - opens and selects block Kp
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'AWFG_staticModel_cg'
 * '<S1>'   : 'AWFG_staticModel_cg/StaticModel_cg'
 * '<S2>'   : 'AWFG_staticModel_cg/StaticModel_cg/StaticModel'
 * '<S3>'   : 'AWFG_staticModel_cg/StaticModel_cg/StaticModel/MATLAB Function'
 */
#endif                                 /* RTW_HEADER_StaticModel_cg_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
