/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: AWFG_2022b.h
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

#ifndef RTW_HEADER_AWFG_2022b_h_
#define RTW_HEADER_AWFG_2022b_h_
#include <math.h>
#include <string.h>
#include <stddef.h>
#ifndef AWFG_2022b_COMMON_INCLUDES_
#define AWFG_2022b_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* AWFG_2022b_COMMON_INCLUDES_ */

#include "AWFG_2022b_types.h"

/* Shared type includes */
#include "multiword_types.h"
#include "rt_nonfinite.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

/* Block signals (default storage) */
typedef struct {
  real32_T cc[1032];                   /* '<S1>/RT CPU_fcn' */
} B_AWFG_2022b_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  emxArray_real32_T_258x4_AWFG__T cc0; /* '<S1>/RT CPU_fcn' */
  real_T we_addr0;                     /* '<S1>/Write_to_FPGA_CTRL' */
  real_T write_first;                  /* '<S1>/Write_to_FPGA_CTRL' */
  real32_T Memory6_PreviousInput;      /* '<S1>/Memory6' */
  real32_T Memory4_PreviousInput;      /* '<S1>/Memory4' */
  real32_T nb0;                        /* '<S1>/RT CPU_fcn' */
  int32_T SFunction_DIMS2[2];          /* '<S1>/RT CPU_fcn' */
  boolean_T we_addr0_not_empty;        /* '<S1>/Write_to_FPGA_CTRL' */
  boolean_T cc0_not_empty;             /* '<S1>/RT CPU_fcn' */
  boolean_T ready0;                    /* '<S1>/RT CPU_fcn' */
} DW_AWFG_2022b_T;

/* Real-time Model Data Structure */
struct tag_RTM_AWFG_2022b_T {
  const char_T * volatile errorStatus;
};

/* Block signals (default storage) */
extern B_AWFG_2022b_T AWFG_2022b_B;

/* Block states (default storage) */
extern DW_AWFG_2022b_T AWFG_2022b_DW;

/* Model entry point functions */
extern void AWFG_2022b_initialize(void);
extern void AWFG_2022b_step(void);
extern void AWFG_2022b_terminate(void);

/* Real-time Model object */
extern RT_MODEL_AWFG_2022b_T *const AWFG_2022b_M;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S1>/Coeffs' : Unused code path elimination
 * Block '<S1>/Coeffs(nb)' : Unused code path elimination
 * Block '<S1>/Data Type Conversion' : Unused code path elimination
 * Block '<S1>/Data Type Conversion1' : Unused code path elimination
 * Block '<S1>/Data Type Conversion2' : Unused code path elimination
 * Block '<S1>/Data Type Conversion3' : Unused code path elimination
 * Block '<S1>/Data Type Conversion4' : Unused code path elimination
 * Block '<S1>/Data Type Conversion5' : Unused code path elimination
 * Block '<S1>/Data Type Conversion7' : Unused code path elimination
 * Block '<S1>/Display4' : Unused code path elimination
 * Block '<S1>/Display7' : Unused code path elimination
 * Block '<S3>/2' : Unused code path elimination
 * Block '<S3>/Display' : Unused code path elimination
 * Block '<S3>/Display1' : Unused code path elimination
 * Block '<S3>/Display2' : Unused code path elimination
 * Block '<S3>/Display3' : Unused code path elimination
 * Block '<S3>/Display4' : Unused code path elimination
 * Block '<S3>/Display6' : Unused code path elimination
 * Block '<S3>/Display7' : Unused code path elimination
 * Block '<S3>/Divide1' : Unused code path elimination
 * Block '<S3>/Math Function1' : Unused code path elimination
 * Block '<S3>/f//fclk' : Unused code path elimination
 * Block '<S3>/n' : Unused code path elimination
 * Block '<S3>/tper' : Unused code path elimination
 * Block '<S1>/Gain' : Unused code path elimination
 * Block '<S1>/Gain1' : Unused code path elimination
 * Block '<S1>/Gain2' : Unused code path elimination
 * Block '<S1>/Offset1' : Unused code path elimination
 * Block '<S1>/Selector' : Unused code path elimination
 * Block '<S1>/fb' : Unused code path elimination
 * Block '<S1>/nb1' : Unused code path elimination
 * Block '<Root>/Data Type Conversion10' : Unused code path elimination
 * Block '<Root>/Data Type Conversion9' : Unused code path elimination
 * Block '<S2>/Add1' : Unused code path elimination
 * Block '<S6>/DTProp1' : Unused code path elimination
 * Block '<S8>/DTProp1' : Unused code path elimination
 * Block '<S8>/DTProp2' : Unused code path elimination
 * Block '<S8>/Extract Desired Bits' : Unused code path elimination
 * Block '<S8>/Modify Scaling Only' : Unused code path elimination
 * Block '<S6>/Reinterp_As_Unsigned_Integer' : Unused code path elimination
 * Block '<S2>/C0_dt' : Unused code path elimination
 * Block '<S2>/C1_dt^2' : Unused code path elimination
 * Block '<S2>/C2_dt^3' : Unused code path elimination
 * Block '<S7>/Scope4' : Unused code path elimination
 * Block '<S7>/Scope5' : Unused code path elimination
 * Block '<S9>/And' : Unused code path elimination
 * Block '<S9>/Switch1' : Unused code path elimination
 * Block '<S9>/convert' : Unused code path elimination
 * Block '<S9>/din_d' : Unused code path elimination
 * Block '<S9>/dout_type' : Unused code path elimination
 * Block '<S13>/Compare' : Unused code path elimination
 * Block '<S13>/Constant' : Unused code path elimination
 * Block '<S9>/ram' : Unused code path elimination
 * Block '<S9>/ram_data' : Unused code path elimination
 * Block '<S9>/select' : Unused code path elimination
 * Block '<S9>/switch' : Unused code path elimination
 * Block '<S9>/we_d' : Unused code path elimination
 * Block '<S9>/wr_port' : Unused code path elimination
 * Block '<S10>/And' : Unused code path elimination
 * Block '<S10>/Switch1' : Unused code path elimination
 * Block '<S10>/convert' : Unused code path elimination
 * Block '<S10>/din_d' : Unused code path elimination
 * Block '<S10>/dout_type' : Unused code path elimination
 * Block '<S14>/Compare' : Unused code path elimination
 * Block '<S14>/Constant' : Unused code path elimination
 * Block '<S10>/ram' : Unused code path elimination
 * Block '<S10>/ram_data' : Unused code path elimination
 * Block '<S10>/select' : Unused code path elimination
 * Block '<S10>/switch' : Unused code path elimination
 * Block '<S10>/we_d' : Unused code path elimination
 * Block '<S10>/wr_port' : Unused code path elimination
 * Block '<S11>/And' : Unused code path elimination
 * Block '<S11>/Switch1' : Unused code path elimination
 * Block '<S11>/convert' : Unused code path elimination
 * Block '<S11>/din_d' : Unused code path elimination
 * Block '<S11>/dout_type' : Unused code path elimination
 * Block '<S15>/Compare' : Unused code path elimination
 * Block '<S15>/Constant' : Unused code path elimination
 * Block '<S11>/ram' : Unused code path elimination
 * Block '<S11>/ram_data' : Unused code path elimination
 * Block '<S11>/select' : Unused code path elimination
 * Block '<S11>/switch' : Unused code path elimination
 * Block '<S11>/we_d' : Unused code path elimination
 * Block '<S11>/wr_port' : Unused code path elimination
 * Block '<S12>/And' : Unused code path elimination
 * Block '<S12>/Switch1' : Unused code path elimination
 * Block '<S12>/convert' : Unused code path elimination
 * Block '<S12>/din_d' : Unused code path elimination
 * Block '<S12>/dout_type' : Unused code path elimination
 * Block '<S16>/Compare' : Unused code path elimination
 * Block '<S16>/Constant' : Unused code path elimination
 * Block '<S12>/ram' : Unused code path elimination
 * Block '<S12>/ram_data' : Unused code path elimination
 * Block '<S12>/select' : Unused code path elimination
 * Block '<S12>/switch' : Unused code path elimination
 * Block '<S12>/we_d' : Unused code path elimination
 * Block '<S12>/wr_port' : Unused code path elimination
 * Block '<S7>/Switch1' : Unused code path elimination
 * Block '<S2>/Constant1' : Unused code path elimination
 * Block '<S2>/Constant2' : Unused code path elimination
 * Block '<S2>/Data Type Conversion1' : Unused code path elimination
 * Block '<S2>/Data Type Conversion10' : Unused code path elimination
 * Block '<S2>/Data Type Conversion11' : Unused code path elimination
 * Block '<S2>/Data Type Conversion9' : Unused code path elimination
 * Block '<S2>/Delay1' : Unused code path elimination
 * Block '<S2>/Delay10' : Unused code path elimination
 * Block '<S2>/Delay11' : Unused code path elimination
 * Block '<S2>/Delay12' : Unused code path elimination
 * Block '<S2>/Delay13' : Unused code path elimination
 * Block '<S2>/Delay14' : Unused code path elimination
 * Block '<S2>/Delay15' : Unused code path elimination
 * Block '<S2>/Delay16' : Unused code path elimination
 * Block '<S2>/Delay17' : Unused code path elimination
 * Block '<S2>/Delay18' : Unused code path elimination
 * Block '<S2>/Delay19' : Unused code path elimination
 * Block '<S2>/Delay2' : Unused code path elimination
 * Block '<S2>/Delay20' : Unused code path elimination
 * Block '<S2>/Delay21' : Unused code path elimination
 * Block '<S2>/Delay22' : Unused code path elimination
 * Block '<S2>/Delay23' : Unused code path elimination
 * Block '<S2>/Delay24' : Unused code path elimination
 * Block '<S2>/Delay25' : Unused code path elimination
 * Block '<S2>/Delay26' : Unused code path elimination
 * Block '<S2>/Delay27' : Unused code path elimination
 * Block '<S2>/Delay28' : Unused code path elimination
 * Block '<S2>/Delay29' : Unused code path elimination
 * Block '<S2>/Delay3' : Unused code path elimination
 * Block '<S2>/Delay30' : Unused code path elimination
 * Block '<S2>/Delay31' : Unused code path elimination
 * Block '<S2>/Delay32' : Unused code path elimination
 * Block '<S2>/Delay33' : Unused code path elimination
 * Block '<S2>/Delay34' : Unused code path elimination
 * Block '<S2>/Delay35' : Unused code path elimination
 * Block '<S2>/Delay36' : Unused code path elimination
 * Block '<S2>/Delay37' : Unused code path elimination
 * Block '<S2>/Delay38' : Unused code path elimination
 * Block '<S2>/Delay39' : Unused code path elimination
 * Block '<S2>/Delay4' : Unused code path elimination
 * Block '<S2>/Delay5' : Unused code path elimination
 * Block '<S2>/Delay6' : Unused code path elimination
 * Block '<S2>/Delay7' : Unused code path elimination
 * Block '<S2>/Delay8' : Unused code path elimination
 * Block '<S2>/Delay9' : Unused code path elimination
 * Block '<S2>/Display1' : Unused code path elimination
 * Block '<S2>/Display2' : Unused code path elimination
 * Block '<S2>/Display3' : Unused code path elimination
 * Block '<S2>/Gain3' : Unused code path elimination
 * Block '<S2>/Gain4' : Unused code path elimination
 * Block '<S2>/Gain5' : Unused code path elimination
 * Block '<S2>/Logical Operator' : Unused code path elimination
 * Block '<S2>/Product1' : Unused code path elimination
 * Block '<S2>/Product9' : Unused code path elimination
 * Block '<S2>/Relational Operator1' : Unused code path elimination
 * Block '<S2>/Scope6' : Unused code path elimination
 * Block '<S2>/Sum2' : Unused code path elimination
 * Block '<S2>/Switch1' : Unused code path elimination
 * Block '<S2>/Switch3' : Unused code path elimination
 * Block '<S2>/dt1' : Unused code path elimination
 * Block '<S2>/dt^2' : Unused code path elimination
 * Block '<S2>/dt^3' : Unused code path elimination
 * Block '<Root>/Reset' : Unused code path elimination
 * Block '<Root>/Scope' : Unused code path elimination
 * Block '<Root>/Scope1' : Unused code path elimination
 * Block '<Root>/Scope2' : Unused code path elimination
 * Block '<Root>/Scope3' : Unused code path elimination
 * Block '<Root>/Scope4' : Unused code path elimination
 * Block '<Root>/f_clk' : Unused code path elimination
 */

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'AWFG_2022b'
 * '<S1>'   : 'AWFG_2022b/CPU'
 * '<S2>'   : 'AWFG_2022b/FPGA'
 * '<S3>'   : 'AWFG_2022b/CPU/FPGA_Precalculations'
 * '<S4>'   : 'AWFG_2022b/CPU/RT CPU_fcn'
 * '<S5>'   : 'AWFG_2022b/CPU/Write_to_FPGA_CTRL'
 * '<S6>'   : 'AWFG_2022b/FPGA/Bit Slice1'
 * '<S7>'   : 'AWFG_2022b/FPGA/Coeff_Memory'
 * '<S8>'   : 'AWFG_2022b/FPGA/Bit Slice1/Extract Bits'
 * '<S9>'   : 'AWFG_2022b/FPGA/Coeff_Memory/Single Port RAM'
 * '<S10>'  : 'AWFG_2022b/FPGA/Coeff_Memory/Single Port RAM1'
 * '<S11>'  : 'AWFG_2022b/FPGA/Coeff_Memory/Single Port RAM2'
 * '<S12>'  : 'AWFG_2022b/FPGA/Coeff_Memory/Single Port RAM3'
 * '<S13>'  : 'AWFG_2022b/FPGA/Coeff_Memory/Single Port RAM/is_new'
 * '<S14>'  : 'AWFG_2022b/FPGA/Coeff_Memory/Single Port RAM1/is_new'
 * '<S15>'  : 'AWFG_2022b/FPGA/Coeff_Memory/Single Port RAM2/is_new'
 * '<S16>'  : 'AWFG_2022b/FPGA/Coeff_Memory/Single Port RAM3/is_new'
 */
#endif                                 /* RTW_HEADER_AWFG_2022b_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
