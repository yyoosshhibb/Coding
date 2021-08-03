/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Subsystem_Transmission.c
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

#include "Subsystem_Transmission.h"

/* Include model header file for global data */
#include "VCU.h"
#include "VCU_private.h"

/* System initialize for atomic system: '<Root>/Transmission' */
void FUNC_Transmission_Init(void)
{
  /* SystemInitialize for Enabled SubSystem: '<S7>/LC_jr19' */
  /* InitializeConditions for S-Function (sdspcount2): '<S145>/Counter1' */
  VCU_DW.Counter1_Count_k = 0U;

  /* InitializeConditions for S-Function (sdspcount2): '<S144>/Counter' */
  VCU_DW.Counter_Count_m = 0U;

  /* InitializeConditions for S-Function (sdspcount2): '<S145>/Counter' */
  VCU_DW.Counter_Count_a = 0U;

  /* End of SystemInitialize for SubSystem: '<S7>/LC_jr19' */

  /* SystemInitialize for Enabled SubSystem: '<S7>/semi_auto_jr18' */
  /* InitializeConditions for S-Function (sdspcount2): '<S200>/Counter1' */
  VCU_DW.Counter1_Count = 0U;

  /* InitializeConditions for S-Function (sdspcount2): '<S199>/Counter' */
  VCU_DW.Counter_Count = 0U;

  /* InitializeConditions for S-Function (sdspcount2): '<S200>/Counter' */
  VCU_DW.Counter_Count_i = 0U;

  /* End of SystemInitialize for SubSystem: '<S7>/semi_auto_jr18' */
}

/* Output and update for atomic system: '<Root>/Transmission' */
void FUNC_Transmission(void)
{
  int32_T rowIdx;
  boolean_T tmp;
  real_T tmp_0;

  /* DataTypeConversion: '<S7>/Data Type Conversion' */
  tmp_0 = floor(VCU_B.STW_transmission_mode);
  if (rtIsNaN(tmp_0) || rtIsInf(tmp_0)) {
    tmp_0 = 0.0;
  } else {
    tmp_0 = fmod(tmp_0, 256.0);
  }

  VCU_B.DataTypeConversion_cg = (int8_T)(tmp_0 < 0.0 ? (int32_T)(int8_T)-(int8_T)
    (uint8_T)-tmp_0 : (int32_T)(int8_T)(uint8_T)tmp_0);

  /* End of DataTypeConversion: '<S7>/Data Type Conversion' */

  /* RelationalOperator: '<S135>/Compare' incorporates:
   *  Constant: '<S135>/Constant'
   */
  VCU_B.Compare = (VCU_B.DataTypeConversion_cg == 3);

  /* Outputs for Enabled SubSystem: '<S7>/LC_jr19' incorporates:
   *  EnablePort: '<S136>/Enable'
   */
  if (VCU_B.Compare) {
    /* Memory: '<S147>/Memory' */
    VCU_B.Memory_dj = VCU_DW.Memory_PreviousInput_g;

    /* CombinatorialLogic: '<S189>/Logic' incorporates:
     *  RelationalOperator: '<S147>/GreaterThan'
     */
    VCU_B.GreaterThan_l = ((int32_T)VCU_B.LC_dash_bit > (int32_T)VCU_B.Memory_dj);

    /* Logic: '<S147>/Logical Operator2' */
    VCU_B.LogicalOperator2_m = !VCU_B.LC_dash_bit;

    /* Memory: '<S147>/Memory1' */
    VCU_B.Memory1_a = VCU_DW.Memory1_PreviousInput_p;

    /* RelationalOperator: '<S147>/Relational Operator' incorporates:
     *  Constant: '<S147>/Constant'
     */
    VCU_B.RelationalOperator_k = (VCU_B.Sensitivity1538mVbar > 3.0);

    /* RelationalOperator: '<S147>/Relational Operator1' incorporates:
     *  Constant: '<S147>/Constant'
     */
    VCU_B.RelationalOperator1_d = (3.0 < VCU_B.Add1_m);

    /* Logic: '<S147>/Logical Operator' */
    VCU_B.Brakelight_n = (VCU_B.RelationalOperator_k ||
                          VCU_B.RelationalOperator1_d);

    /* RelationalOperator: '<S147>/GreaterThan1' */
    VCU_B.GreaterThan1_d = ((int32_T)VCU_B.Memory1_a > (int32_T)
      VCU_B.Brakelight_n);

    /* CombinatorialLogic: '<S189>/Logic' incorporates:
     *  Logic: '<S147>/Logical Operator1'
     *  Memory: '<S189>/Memory'
     */
    VCU_B.LogicalOperator1_o = (VCU_B.LogicalOperator2_m || VCU_B.GreaterThan1_d);
    VCU_B.Memory_aw = VCU_DW.Memory_PreviousInput_gi;
    rowIdx = VCU_B.GreaterThan_l;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator1_o);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_aw);
    VCU_B.Logic_b[0U] = VCU_ConstP.pooled37[(uint32_T)rowIdx];
    VCU_B.Logic_b[1U] = VCU_ConstP.pooled37[rowIdx + 8U];

    /* Logic: '<S147>/Logical Operator3' */
    VCU_B.LogicalOperator3_f = (VCU_B.Logic_b[0] && VCU_B.Brakelight_n);

    /* DataTypeConversion: '<S136>/Data Type Conversion10' */
    VCU_B.LC_active_bit_a = VCU_B.LogicalOperator3_f;

    /* CombinatorialLogic: '<S174>/Logic' incorporates:
     *  Delay: '<S144>/Delay'
     *  Memory: '<S174>/Memory'
     *  UnitDelay: '<S144>/Unit Delay1'
     */
    VCU_B.UnitDelay1_o = VCU_DW.UnitDelay1_DSTATE_p;
    VCU_B.Delay_e = VCU_DW.Delay_DSTATE_j[0];
    VCU_B.Memory_lj = VCU_DW.Memory_PreviousInput_pa;
    rowIdx = VCU_B.UnitDelay1_o;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Delay_e);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_lj);
    VCU_B.Logic_g[0U] = VCU_ConstP.pooled37[(uint32_T)rowIdx];
    VCU_B.Logic_g[1U] = VCU_ConstP.pooled37[rowIdx + 8U];

    /* DataTypeConversion: '<S136>/Data Type Conversion11' */
    VCU_B.VOVG_ShiftDown_a = VCU_B.Logic_g[0];

    /* UnitDelay: '<S171>/Delay Input1'
     *
     * Block description for '<S171>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_o = VCU_DW.DelayInput1_DSTATE_j;

    /* CombinatorialLogic: '<S172>/Logic' incorporates:
     *  Delay: '<S144>/Delay1'
     *  Memory: '<S172>/Memory'
     *  RelationalOperator: '<S171>/FixPt Relational Operator'
     */
    VCU_B.FixPtRelationalOperator_p = (VCU_B.STW_shift_down_request >
      VCU_B.Uk1_o);
    VCU_B.Delay1_p = VCU_DW.Delay1_DSTATE_p;
    VCU_B.Memory_i = VCU_DW.Memory_PreviousInput_c;
    rowIdx = VCU_B.FixPtRelationalOperator_p;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Delay1_p);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_i);
    VCU_B.Logic_c[0U] = VCU_ConstP.pooled37[(uint32_T)rowIdx];
    VCU_B.Logic_c[1U] = VCU_ConstP.pooled37[rowIdx + 8U];

    /* UnitDelay: '<S144>/Unit Delay4' */
    VCU_B.UnitDelay4_h = VCU_DW.UnitDelay4_DSTATE_e;

    /* Gain: '<S175>/Gain' */
    VCU_B.Gain_i = 2.0 * VCU_B.DataTypeConversion1;

    /* RelationalOperator: '<S175>/Relational Operator' incorporates:
     *  Constant: '<S175>/Constant'
     */
    VCU_B.RelationalOperator_a = (VCU_B.Gain_i > 169.0);

    /* RelationalOperator: '<S175>/Relational Operator1' incorporates:
     *  Constant: '<S175>/Constant1'
     */
    VCU_B.RelationalOperator1_g = (VCU_B.Gain_i > 228.0);

    /* RelationalOperator: '<S175>/Relational Operator2' incorporates:
     *  Constant: '<S175>/Constant2'
     */
    VCU_B.RelationalOperator2_e = (VCU_B.Gain_i > 325.0);

    /* Sum: '<S175>/Add' */
    VCU_B.Add_fn = (uint8_T)(((uint32_T)VCU_B.RelationalOperator_a +
      VCU_B.RelationalOperator1_g) + VCU_B.RelationalOperator2_e);

    /* RelationalOperator: '<S165>/Compare' incorporates:
     *  Constant: '<S165>/Constant'
     */
    VCU_B.Compare_j1 = (VCU_B.x_clutch_STW >= 15.0);

    /* Switch: '<S144>/Switch' incorporates:
     *  Constant: '<S144>/Constant'
     *  Constant: '<S144>/Constant1'
     */
    if (VCU_B.Compare_j1) {
      VCU_B.Switch_m = 1.0;
    } else {
      VCU_B.Switch_m = 2.0;
    }

    /* End of Switch: '<S144>/Switch' */

    /* RelationalOperator: '<S144>/Relational Operator' */
    VCU_B.LessthanNeutral_j = (VCU_B.Add_fn < VCU_B.Switch_m);

    /* UnitDelay: '<S145>/Unit Delay' */
    VCU_B.UnitDelay_b = VCU_DW.UnitDelay_DSTATE_g;

    /* UnitDelay: '<S144>/Unit Delay2' */
    VCU_B.Timeout_p = VCU_DW.UnitDelay2_DSTATE_k;

    /* RelationalOperator: '<S166>/Compare' incorporates:
     *  Constant: '<S166>/Constant'
     */
    VCU_B.Compare_jn = (VCU_B.DataTypeConversion2 > 5000.0);

    /* RelationalOperator: '<S167>/Compare' incorporates:
     *  Constant: '<S167>/Constant'
     */
    VCU_B.Compare_lh = (VCU_B.Add_fn == 2);

    /* Logic: '<S144>/Logical Operator1' */
    VCU_B.RPMcheckgear21_f = (VCU_B.Compare_lh && VCU_B.Compare_jn);

    /* RelationalOperator: '<S168>/Compare' incorporates:
     *  Constant: '<S168>/Constant'
     */
    VCU_B.Compare_gw = (VCU_B.DataTypeConversion2 > 5300.0);

    /* RelationalOperator: '<S169>/Compare' incorporates:
     *  Constant: '<S169>/Constant'
     */
    VCU_B.Compare_aq = (VCU_B.Add_fn == 3);

    /* Logic: '<S144>/Logical Operator2' */
    VCU_B.RPMcheckgear31_d = (VCU_B.Compare_gw && VCU_B.Compare_aq);

    /* CombinatorialLogic: '<S173>/Logic' incorporates:
     *  Logic: '<S144>/Logical Operator'
     *  Memory: '<S173>/Memory'
     */
    VCU_B.LogicalOperator_n = (VCU_B.UnitDelay4_h || VCU_B.LessthanNeutral_j ||
      VCU_B.UnitDelay_b || VCU_B.Timeout_p || VCU_B.RPMcheckgear21_f ||
      VCU_B.RPMcheckgear31_d);
    VCU_B.Memory_c5 = VCU_DW.Memory_PreviousInput_jz;
    tmp = VCU_B.Logic_c[0];
    rowIdx = tmp;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator_n);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_c5);
    VCU_B.Logic_j[0U] = VCU_ConstP.pooled37[(uint32_T)rowIdx];
    VCU_B.Logic_j[1U] = VCU_ConstP.pooled37[rowIdx + 8U];

    /* Sum: '<S185>/Add' */
    VCU_B.Add_b = VCU_B.Add1_k + VCU_B.Add1_de;

    /* Gain: '<S185>/Gain' */
    VCU_B.v_Veh = 0.5 * VCU_B.Add_b;

    /* RelationalOperator: '<S185>/Relational Operator' incorporates:
     *  Constant: '<S185>/Const_vVeh_Threshold'
     */
    VCU_B.RelationalOperator_h = (VCU_B.v_Veh > 63.69);

    /* Gain: '<S184>/Gain' */
    VCU_B.Gain_a = 2.0 * VCU_B.DataTypeConversion1;

    /* RelationalOperator: '<S184>/Relational Operator' incorporates:
     *  Constant: '<S184>/Constant'
     */
    VCU_B.RelationalOperator_p = (VCU_B.Gain_a > 169.0);

    /* RelationalOperator: '<S184>/Relational Operator1' incorporates:
     *  Constant: '<S184>/Constant1'
     */
    VCU_B.RelationalOperator1_l = (VCU_B.Gain_a > 269.0);

    /* RelationalOperator: '<S184>/Relational Operator2' incorporates:
     *  Constant: '<S184>/Constant2'
     */
    VCU_B.RelationalOperator2_l = (VCU_B.Gain_a > 360.0);

    /* Sum: '<S184>/Add' */
    VCU_B.Add_ax = (uint8_T)(((uint32_T)VCU_B.RelationalOperator_p +
      VCU_B.RelationalOperator1_l) + VCU_B.RelationalOperator2_l);

    /* RelationalOperator: '<S186>/Compare' incorporates:
     *  Constant: '<S186>/Constant'
     */
    VCU_B.Compare_k = (VCU_B.Add_ax == 2);

    /* Logic: '<S185>/Logical Operator3' */
    VCU_B.LogicalOperator3_n = (VCU_B.RelationalOperator_h && VCU_B.Compare_k);

    /* UnitDelay: '<S187>/Delay Input1'
     *
     * Block description for '<S187>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_ii = VCU_DW.DelayInput1_DSTATE_m5;

    /* CombinatorialLogic: '<S188>/Logic' incorporates:
     *  RelationalOperator: '<S187>/FixPt Relational Operator'
     */
    VCU_B.FixPtRelationalOperator_dz = ((int32_T)VCU_B.LogicalOperator3_n >
      (int32_T)VCU_B.Uk1_ii);

    /* Logic: '<S185>/Logical Operator' */
    VCU_B.LogicalOperator_g = !VCU_B.Compare_k;

    /* UnitDelay: '<S180>/Delay Input1'
     *
     * Block description for '<S180>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_p = VCU_DW.DelayInput1_DSTATE_m;

    /* RelationalOperator: '<S180>/FixPt Relational Operator' */
    VCU_B.FixPtRelationalOperator_j = (VCU_B.Add_ax > VCU_B.Uk1_p);

    /* RelationalOperator: '<S176>/Compare' incorporates:
     *  Constant: '<S176>/Constant'
     */
    VCU_B.Compare_j0 = (VCU_B.Add_ax >= 3);

    /* UnitDelay: '<S144>/Unit Delay' */
    VCU_B.UnitDelay_g = VCU_DW.UnitDelay_DSTATE_n;

    /* UnitDelay: '<S145>/Unit Delay1' */
    VCU_B.Timeout_px = VCU_DW.UnitDelay1_DSTATE_l;

    /* RelationalOperator: '<S178>/Compare' incorporates:
     *  Constant: '<S178>/Constant'
     */
    VCU_B.Compare_d = (VCU_B.Add_ax == 0);

    /* RelationalOperator: '<S177>/Compare' incorporates:
     *  Constant: '<S177>/Constant'
     */
    VCU_B.Compare_i = (VCU_B.x_clutch_STW < 15.0);

    /* Logic: '<S145>/Logical Operator1' */
    VCU_B.FailSafefirstgear_n = (VCU_B.Compare_d && VCU_B.Compare_i);

    /* CombinatorialLogic: '<S182>/Logic' incorporates:
     *  Logic: '<S145>/Logical Operator'
     */
    VCU_B.LogicalOperator_ny = (VCU_B.FixPtRelationalOperator_j ||
      VCU_B.Compare_j0 || VCU_B.UnitDelay_g || VCU_B.Timeout_px ||
      VCU_B.FailSafefirstgear_n);

    /* CombinatorialLogic: '<S188>/Logic' incorporates:
     *  Logic: '<S185>/Logical Operator1'
     *  Memory: '<S188>/Memory'
     */
    VCU_B.LogicalOperator1_b = (VCU_B.LogicalOperator_g ||
      (VCU_B.STW_shift_up_request != 0.0) || VCU_B.LogicalOperator_ny);
    VCU_B.Memory_p = VCU_DW.Memory_PreviousInput_n;
    rowIdx = VCU_B.FixPtRelationalOperator_dz;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator1_b);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_p);
    VCU_B.Logic_gy[0U] = VCU_ConstP.pooled37[(uint32_T)rowIdx];
    VCU_B.Logic_gy[1U] = VCU_ConstP.pooled37[rowIdx + 8U];

    /* Logic: '<S145>/Logical Operator3' */
    VCU_B.LogicalOperator3_e = ((VCU_B.STW_shift_up_request != 0.0) ||
      VCU_B.Logic_gy[0]);

    /* UnitDelay: '<S179>/Delay Input1'
     *
     * Block description for '<S179>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_d = VCU_DW.DelayInput1_DSTATE_e;

    /* CombinatorialLogic: '<S182>/Logic' incorporates:
     *  Memory: '<S182>/Memory'
     *  RelationalOperator: '<S179>/FixPt Relational Operator'
     */
    VCU_B.FixPtRelationalOperator_i = ((int32_T)VCU_B.LogicalOperator3_e >
      (int32_T)VCU_B.Uk1_d);
    VCU_B.Memory_ig = VCU_DW.Memory_PreviousInput_e;
    rowIdx = VCU_B.FixPtRelationalOperator_i;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator_ny);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_ig);
    VCU_B.Logic_jv[0U] = VCU_ConstP.pooled37[(uint32_T)rowIdx];
    VCU_B.Logic_jv[1U] = VCU_ConstP.pooled37[rowIdx + 8U];

    /* CombinatorialLogic: '<S183>/Logic' incorporates:
     *  S-Function (sdspcount2): '<S145>/Counter1'
     */
    VCU_B.Counter1_p = false;

    /* S-Function (sdspcount2): '<S145>/Counter1' */
    if (VCU_B.LogicalOperator_ny) {
      VCU_DW.Counter1_Count_k = 0U;
    }

    if (VCU_B.Logic_jv[0]) {
      if (VCU_DW.Counter1_Count_k < 60) {
        VCU_DW.Counter1_Count_k++;
      } else {
        VCU_DW.Counter1_Count_k = 0U;
      }
    }

    if (VCU_DW.Counter1_Count_k == 1) {
      /* CombinatorialLogic: '<S183>/Logic' */
      VCU_B.Counter1_p = true;
    }

    /* UnitDelay: '<S181>/Delay Input1'
     *
     * Block description for '<S181>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_e = VCU_DW.DelayInput1_DSTATE_b;

    /* RelationalOperator: '<S181>/FixPt Relational Operator' */
    VCU_B.FixPtRelationalOperator_ia = (VCU_B.Add_ax > VCU_B.Uk1_e);

    /* CombinatorialLogic: '<S183>/Logic' incorporates:
     *  Logic: '<S145>/Logical Operator2'
     *  Memory: '<S183>/Memory'
     */
    VCU_B.LogicalOperator2_c = (VCU_B.LogicalOperator_ny ||
      VCU_B.FixPtRelationalOperator_ia);
    VCU_B.Memory_py = VCU_DW.Memory_PreviousInput_ez;
    rowIdx = VCU_B.Counter1_p;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator2_c);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_py);
    VCU_B.Logic_p[0U] = VCU_ConstP.pooled37[(uint32_T)rowIdx];
    VCU_B.Logic_p[1U] = VCU_ConstP.pooled37[rowIdx + 8U];

    /* DataTypeConversion: '<S136>/Data Type Conversion12' */
    VCU_B.Ignition_Cut_d = VCU_B.Logic_p[0];

    /* S-Function (sdspcount2): '<S144>/Counter' */
    VCU_B.Counter_f = false;
    if (VCU_B.LogicalOperator_n) {
      VCU_DW.Counter_Count_m = 0U;
    }

    if (VCU_B.Logic_c[0]) {
      if (VCU_DW.Counter_Count_m < 500) {
        VCU_DW.Counter_Count_m++;
      } else {
        VCU_DW.Counter_Count_m = 0U;
      }
    }

    if (VCU_DW.Counter_Count_m == 500) {
      VCU_B.Counter_f = true;
    }

    /* End of S-Function (sdspcount2): '<S144>/Counter' */

    /* S-Function (sdspcount2): '<S145>/Counter' */
    VCU_B.Counter_g = false;
    if (VCU_B.LogicalOperator_ny) {
      VCU_DW.Counter_Count_a = 0U;
    }

    if (VCU_B.Logic_jv[0]) {
      if (VCU_DW.Counter_Count_a < 200) {
        VCU_DW.Counter_Count_a++;
      } else {
        VCU_DW.Counter_Count_a = 0U;
      }
    }

    if (VCU_DW.Counter_Count_a == 180) {
      VCU_B.Counter_g = true;
    }

    /* End of S-Function (sdspcount2): '<S145>/Counter' */

    /* DataTypeConversion: '<S136>/Data Type Conversion21' */
    VCU_B.VOVG_ShiftUp_oi = VCU_B.Logic_jv[0];

    /* UnitDelay: '<S170>/Delay Input1'
     *
     * Block description for '<S170>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_m1 = VCU_DW.DelayInput1_DSTATE_n;

    /* RelationalOperator: '<S170>/FixPt Relational Operator' */
    VCU_B.FixPtRelationalOperator_o = (VCU_B.Add_fn < VCU_B.Uk1_m1);

    /* Switch: '<S139>/Switch' */
    if (VCU_B.Logic_c[0]) {
      /* MinMax: '<S139>/MinMax' incorporates:
       *  Constant: '<S139>/Constant'
       */
      VCU_B.Switch_h = 20.0;
    } else {
      /* MinMax: '<S139>/MinMax' incorporates:
       *  Constant: '<S139>/Constant1'
       */
      VCU_B.Switch_h = 0.0;
    }

    /* End of Switch: '<S139>/Switch' */

    /* MinMax: '<S139>/MinMax' */
    if ((VCU_B.x_clutch_STW > VCU_B.Switch_h) || rtIsNaN(VCU_B.Switch_h)) {
      VCU_B.MinMax_n = VCU_B.x_clutch_STW;
    } else {
      VCU_B.MinMax_n = VCU_B.Switch_h;
    }

    if (!(VCU_B.MinMax_n > 0.0)) {
      VCU_B.MinMax_n = 0.0;
    }

    /* RelationalOperator: '<S148>/Compare' incorporates:
     *  Constant: '<S148>/Constant'
     */
    VCU_B.Compare_gr = (VCU_B.MinMax_n > 1.0);

    /* DataTypeConversion: '<S136>/Data Type Conversion13' */
    VCU_B.VOVG_IN_g = VCU_B.Compare_gr;

    /* Sum: '<S139>/Add' */
    VCU_B.Add_g = VCU_B.MinMax_n - VCU_B.x_clutch_b;

    /* RelationalOperator: '<S150>/Compare' incorporates:
     *  Constant: '<S150>/Constant'
     */
    VCU_B.Compare_gp = (VCU_B.Add_g < -0.5);

    /* Lookup_n-D: '<S139>/Duty Cycle MHJ1' */
    VCU_B.DutyCycleMHJ1_n = look1_binlxpw(VCU_B.Add_g, VCU_ConstP.pooled29,
      VCU_ConstP.pooled28, 14U);

    /* Product: '<S139>/Product1' */
    VCU_B.Product1_f = VCU_B.DutyCycleMHJ1_n * (real_T)VCU_B.Compare_gp;

    /* RelationalOperator: '<S149>/Compare' incorporates:
     *  Constant: '<S149>/Constant'
     */
    VCU_B.Compare_kk = (VCU_B.x_clutch_b > 20.0);

    /* Switch: '<S139>/Switch1' incorporates:
     *  Constant: '<S139>/Constant2'
     *  Constant: '<S139>/Constant3'
     */
    if (VCU_B.Compare_kk) {
      VCU_B.Switch1_n = 2.0;
    } else {
      VCU_B.Switch1_n = 1.0;
    }

    /* End of Switch: '<S139>/Switch1' */

    /* Product: '<S139>/Product2' */
    VCU_B.Product2_f = VCU_B.Product1_f * VCU_B.Switch1_n;

    /* DataTypeConversion: '<S136>/Data Type Conversion16' */
    VCU_B.MHJ9_OUT_d5 = VCU_B.Product2_f;

    /* RelationalOperator: '<S151>/Compare' incorporates:
     *  Constant: '<S151>/Constant'
     */
    VCU_B.Compare_js = (VCU_B.Add_g > 0.0);

    /* Product: '<S139>/Product3' */
    VCU_B.Product3_n = VCU_B.DutyCycleMHJ1_n * (real_T)VCU_B.Compare_js;

    /* DataTypeConversion: '<S136>/Data Type Conversion15' */
    VCU_B.MHJ9_IN_h = VCU_B.Product3_n;

    /* RelationalOperator: '<S152>/Compare' incorporates:
     *  Constant: '<S152>/Constant'
     */
    VCU_B.Compare_hu = (VCU_B.Add_g < -20.0);

    /* DataTypeConversion: '<S136>/Data Type Conversion14' */
    VCU_B.VOVG_OUT_b = VCU_B.Compare_hu;

    /* DataTypeConversion: '<S136>/Data Type Conversion20' incorporates:
     *  Constant: '<S136>/Constant'
     */
    VCU_B.LC_ready_bit_p = true;

    /* DataTypeConversion: '<S136>/Data Type Conversion17' */
    VCU_B.x_clutch_LC_bg = 0.0;

    /* DataTypeConversion: '<S136>/Data Type Conversion18' */
    VCU_B.LC_Mdes_o = 0.0;

    /* DataTypeConversion: '<S136>/Data Type Conversion19' */
    VCU_B.LC_Fnr_lv = 0.0;

    /* Update for Memory: '<S147>/Memory' */
    VCU_DW.Memory_PreviousInput_g = VCU_B.LC_dash_bit;

    /* Update for Memory: '<S147>/Memory1' */
    VCU_DW.Memory1_PreviousInput_p = VCU_B.Brakelight_n;

    /* Update for Memory: '<S189>/Memory' */
    VCU_DW.Memory_PreviousInput_gi = VCU_B.Logic_b[0];

    /* Update for UnitDelay: '<S144>/Unit Delay1' */
    VCU_DW.UnitDelay1_DSTATE_p = VCU_B.Logic_c[0];

    /* Update for Delay: '<S144>/Delay' */
    for (rowIdx = 0; rowIdx < 19; rowIdx++) {
      VCU_DW.Delay_DSTATE_j[rowIdx] = VCU_DW.Delay_DSTATE_j[rowIdx + 1];
    }

    VCU_DW.Delay_DSTATE_j[19] = VCU_B.LogicalOperator_n;

    /* End of Update for Delay: '<S144>/Delay' */

    /* Update for Memory: '<S174>/Memory' */
    VCU_DW.Memory_PreviousInput_pa = VCU_B.Logic_g[0];

    /* Update for UnitDelay: '<S171>/Delay Input1'
     *
     * Block description for '<S171>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_j = VCU_B.STW_shift_down_request;

    /* Update for Delay: '<S144>/Delay1' */
    VCU_DW.Delay1_DSTATE_p = VCU_B.LogicalOperator_n;

    /* Update for Memory: '<S172>/Memory' */
    VCU_DW.Memory_PreviousInput_c = VCU_B.Logic_c[0];

    /* Update for UnitDelay: '<S144>/Unit Delay4' */
    VCU_DW.UnitDelay4_DSTATE_e = VCU_B.FixPtRelationalOperator_o;

    /* Update for UnitDelay: '<S145>/Unit Delay' */
    VCU_DW.UnitDelay_DSTATE_g = VCU_B.Logic_jv[0];

    /* Update for UnitDelay: '<S144>/Unit Delay2' */
    VCU_DW.UnitDelay2_DSTATE_k = VCU_B.Counter_f;

    /* Update for Memory: '<S173>/Memory' */
    VCU_DW.Memory_PreviousInput_jz = VCU_B.Logic_j[0];

    /* Update for UnitDelay: '<S187>/Delay Input1'
     *
     * Block description for '<S187>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_m5 = VCU_B.LogicalOperator3_n;

    /* Update for UnitDelay: '<S180>/Delay Input1'
     *
     * Block description for '<S180>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_m = VCU_B.Add_ax;

    /* Update for UnitDelay: '<S144>/Unit Delay' */
    VCU_DW.UnitDelay_DSTATE_n = VCU_B.Logic_j[0];

    /* Update for UnitDelay: '<S145>/Unit Delay1' */
    VCU_DW.UnitDelay1_DSTATE_l = VCU_B.Counter_g;

    /* Update for Memory: '<S188>/Memory' */
    VCU_DW.Memory_PreviousInput_n = VCU_B.Logic_gy[0];

    /* Update for UnitDelay: '<S179>/Delay Input1'
     *
     * Block description for '<S179>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_e = VCU_B.LogicalOperator3_e;

    /* Update for Memory: '<S182>/Memory' */
    VCU_DW.Memory_PreviousInput_e = VCU_B.Logic_jv[0];

    /* Update for UnitDelay: '<S181>/Delay Input1'
     *
     * Block description for '<S181>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_b = VCU_B.Add_ax;

    /* Update for Memory: '<S183>/Memory' */
    VCU_DW.Memory_PreviousInput_ez = VCU_B.Logic_p[0];

    /* Update for UnitDelay: '<S170>/Delay Input1'
     *
     * Block description for '<S170>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_n = VCU_B.Add_fn;
  }

  /* End of Outputs for SubSystem: '<S7>/LC_jr19' */

  /* RelationalOperator: '<S132>/Compare' incorporates:
   *  Constant: '<S132>/Constant'
   */
  VCU_B.Compare_c = (VCU_B.DataTypeConversion_cg == 1);

  /* RelationalOperator: '<S133>/Compare' incorporates:
   *  Constant: '<S133>/Constant'
   */
  VCU_B.Compare_g = (VCU_B.DataTypeConversion_cg > 3);

  /* Logic: '<S7>/Logical Operator' */
  VCU_B.LogicalOperator = (VCU_B.Compare_c || VCU_B.Compare_g);

  /* Outputs for Enabled SubSystem: '<S7>/semi_auto_jr18' incorporates:
   *  EnablePort: '<S138>/Enable'
   */
  if (VCU_B.LogicalOperator) {
    /* Memory: '<S201>/Memory' */
    VCU_B.Memory = VCU_DW.Memory_PreviousInput;

    /* CombinatorialLogic: '<S227>/Logic' incorporates:
     *  RelationalOperator: '<S201>/GreaterThan'
     */
    VCU_B.GreaterThan = ((int32_T)VCU_B.LC_dash_bit > (int32_T)VCU_B.Memory);

    /* Logic: '<S201>/Logical Operator2' */
    VCU_B.LogicalOperator2 = !VCU_B.LC_dash_bit;

    /* Memory: '<S201>/Memory1' */
    VCU_B.Memory1 = VCU_DW.Memory1_PreviousInput;

    /* RelationalOperator: '<S201>/Relational Operator' incorporates:
     *  Constant: '<S201>/Constant'
     */
    VCU_B.RelationalOperator = (VCU_B.Sensitivity1538mVbar > 3.0);

    /* RelationalOperator: '<S201>/Relational Operator1' incorporates:
     *  Constant: '<S201>/Constant'
     */
    VCU_B.RelationalOperator1 = (3.0 < VCU_B.Add1_m);

    /* Logic: '<S201>/Logical Operator' */
    VCU_B.Brakelight = (VCU_B.RelationalOperator || VCU_B.RelationalOperator1);

    /* RelationalOperator: '<S201>/GreaterThan1' */
    VCU_B.GreaterThan1 = ((int32_T)VCU_B.Memory1 > (int32_T)VCU_B.Brakelight);

    /* CombinatorialLogic: '<S227>/Logic' incorporates:
     *  Logic: '<S201>/Logical Operator1'
     *  Memory: '<S227>/Memory'
     */
    VCU_B.LogicalOperator1 = (VCU_B.LogicalOperator2 || VCU_B.GreaterThan1);
    VCU_B.Memory_c = VCU_DW.Memory_PreviousInput_j;
    rowIdx = VCU_B.GreaterThan;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator1);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_c);
    VCU_B.Logic[0U] = VCU_ConstP.pooled37[(uint32_T)rowIdx];
    VCU_B.Logic[1U] = VCU_ConstP.pooled37[rowIdx + 8U];

    /* Logic: '<S201>/Logical Operator3' */
    VCU_B.LogicalOperator3 = (VCU_B.Logic[0] && VCU_B.Brakelight);

    /* DataTypeConversion: '<S138>/Data Type Conversion1' */
    VCU_B.LC_active_bit_f = VCU_B.LogicalOperator3;

    /* CombinatorialLogic: '<S216>/Logic' incorporates:
     *  Delay: '<S199>/Delay'
     *  Memory: '<S216>/Memory'
     *  UnitDelay: '<S199>/Unit Delay1'
     */
    VCU_B.UnitDelay1 = VCU_DW.UnitDelay1_DSTATE;
    VCU_B.Delay = VCU_DW.Delay_DSTATE[0];
    VCU_B.Memory_g = VCU_DW.Memory_PreviousInput_p;
    rowIdx = VCU_B.UnitDelay1;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Delay);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_g);
    VCU_B.Logic_o[0U] = VCU_ConstP.pooled37[(uint32_T)rowIdx];
    VCU_B.Logic_o[1U] = VCU_ConstP.pooled37[rowIdx + 8U];

    /* DataTypeConversion: '<S138>/Data Type Conversion10' */
    VCU_B.VOVG_ShiftDown_m = VCU_B.Logic_o[0];

    /* UnitDelay: '<S213>/Delay Input1'
     *
     * Block description for '<S213>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1 = VCU_DW.DelayInput1_DSTATE;

    /* CombinatorialLogic: '<S214>/Logic' incorporates:
     *  Delay: '<S199>/Delay1'
     *  Memory: '<S214>/Memory'
     *  RelationalOperator: '<S213>/FixPt Relational Operator'
     */
    VCU_B.FixPtRelationalOperator = (VCU_B.STW_shift_down_request > VCU_B.Uk1);
    VCU_B.Delay1 = VCU_DW.Delay1_DSTATE;
    VCU_B.Memory_d = VCU_DW.Memory_PreviousInput_l;
    rowIdx = VCU_B.FixPtRelationalOperator;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Delay1);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_d);
    VCU_B.Logic_i[0U] = VCU_ConstP.pooled37[(uint32_T)rowIdx];
    VCU_B.Logic_i[1U] = VCU_ConstP.pooled37[rowIdx + 8U];

    /* UnitDelay: '<S199>/Unit Delay4' */
    VCU_B.UnitDelay4 = VCU_DW.UnitDelay4_DSTATE;

    /* Gain: '<S217>/Gain' */
    VCU_B.Gain = 2.0 * VCU_B.DataTypeConversion1;

    /* RelationalOperator: '<S217>/Relational Operator' incorporates:
     *  Constant: '<S217>/Constant'
     */
    VCU_B.RelationalOperator_m = (VCU_B.Gain > 169.0);

    /* RelationalOperator: '<S217>/Relational Operator1' incorporates:
     *  Constant: '<S217>/Constant1'
     */
    VCU_B.RelationalOperator1_o = (VCU_B.Gain > 228.0);

    /* RelationalOperator: '<S217>/Relational Operator2' incorporates:
     *  Constant: '<S217>/Constant2'
     */
    VCU_B.RelationalOperator2 = (VCU_B.Gain > 325.0);

    /* Sum: '<S217>/Add' */
    VCU_B.Add_c = (uint8_T)(((uint32_T)VCU_B.RelationalOperator_m +
      VCU_B.RelationalOperator1_o) + VCU_B.RelationalOperator2);

    /* RelationalOperator: '<S207>/Compare' incorporates:
     *  Constant: '<S207>/Constant'
     */
    VCU_B.Compare_b = (VCU_B.x_clutch_STW >= 15.0);

    /* Switch: '<S199>/Switch' incorporates:
     *  Constant: '<S199>/Constant'
     *  Constant: '<S199>/Constant1'
     */
    if (VCU_B.Compare_b) {
      VCU_B.Switch = 1.0;
    } else {
      VCU_B.Switch = 2.0;
    }

    /* End of Switch: '<S199>/Switch' */

    /* RelationalOperator: '<S199>/Relational Operator' */
    VCU_B.LessthanNeutral = (VCU_B.Add_c < VCU_B.Switch);

    /* UnitDelay: '<S200>/Unit Delay' */
    VCU_B.UnitDelay = VCU_DW.UnitDelay_DSTATE;

    /* UnitDelay: '<S199>/Unit Delay2' */
    VCU_B.Timeout = VCU_DW.UnitDelay2_DSTATE;

    /* RelationalOperator: '<S208>/Compare' incorporates:
     *  Constant: '<S208>/Constant'
     */
    VCU_B.Compare_f = (VCU_B.DataTypeConversion2 > 5000.0);

    /* RelationalOperator: '<S209>/Compare' incorporates:
     *  Constant: '<S209>/Constant'
     */
    VCU_B.Compare_n = (VCU_B.Add_c == 2);

    /* Logic: '<S199>/Logical Operator1' */
    VCU_B.RPMcheckgear21 = (VCU_B.Compare_n && VCU_B.Compare_f);

    /* RelationalOperator: '<S210>/Compare' incorporates:
     *  Constant: '<S210>/Constant'
     */
    VCU_B.Compare_l = (VCU_B.DataTypeConversion2 > 5300.0);

    /* RelationalOperator: '<S211>/Compare' incorporates:
     *  Constant: '<S211>/Constant'
     */
    VCU_B.Compare_h = (VCU_B.Add_c == 3);

    /* Logic: '<S199>/Logical Operator2' */
    VCU_B.RPMcheckgear31 = (VCU_B.Compare_l && VCU_B.Compare_h);

    /* CombinatorialLogic: '<S215>/Logic' incorporates:
     *  Logic: '<S199>/Logical Operator'
     *  Memory: '<S215>/Memory'
     */
    VCU_B.LogicalOperator_d = (VCU_B.UnitDelay4 || VCU_B.LessthanNeutral ||
      VCU_B.UnitDelay || VCU_B.Timeout || VCU_B.RPMcheckgear21 ||
      VCU_B.RPMcheckgear31);
    VCU_B.Memory_l = VCU_DW.Memory_PreviousInput_a;
    tmp = VCU_B.Logic_i[0];
    rowIdx = tmp;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator_d);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_l);
    VCU_B.Logic_iy[0U] = VCU_ConstP.pooled37[(uint32_T)rowIdx];
    VCU_B.Logic_iy[1U] = VCU_ConstP.pooled37[rowIdx + 8U];

    /* UnitDelay: '<S221>/Delay Input1'
     *
     * Block description for '<S221>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_i = VCU_DW.DelayInput1_DSTATE_g;

    /* CombinatorialLogic: '<S224>/Logic' incorporates:
     *  RelationalOperator: '<S221>/FixPt Relational Operator'
     */
    VCU_B.FixPtRelationalOperator_c = (VCU_B.STW_shift_up_request > VCU_B.Uk1_i);

    /* Gain: '<S226>/Gain' */
    VCU_B.Gain_m = 2.0 * VCU_B.DataTypeConversion1;

    /* RelationalOperator: '<S226>/Relational Operator' incorporates:
     *  Constant: '<S226>/Constant'
     */
    VCU_B.RelationalOperator_d = (VCU_B.Gain_m > 169.0);

    /* RelationalOperator: '<S226>/Relational Operator1' incorporates:
     *  Constant: '<S226>/Constant1'
     */
    VCU_B.RelationalOperator1_a = (VCU_B.Gain_m > 269.0);

    /* RelationalOperator: '<S226>/Relational Operator2' incorporates:
     *  Constant: '<S226>/Constant2'
     */
    VCU_B.RelationalOperator2_d = (VCU_B.Gain_m > 360.0);

    /* Sum: '<S226>/Add' */
    VCU_B.Add_j = (uint8_T)(((uint32_T)VCU_B.RelationalOperator_d +
      VCU_B.RelationalOperator1_a) + VCU_B.RelationalOperator2_d);

    /* UnitDelay: '<S222>/Delay Input1'
     *
     * Block description for '<S222>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_b = VCU_DW.DelayInput1_DSTATE_ga;

    /* RelationalOperator: '<S222>/FixPt Relational Operator' */
    VCU_B.FixPtRelationalOperator_m = (VCU_B.Add_j > VCU_B.Uk1_b);

    /* RelationalOperator: '<S218>/Compare' incorporates:
     *  Constant: '<S218>/Constant'
     */
    VCU_B.Compare_ha = (VCU_B.Add_j >= 3);

    /* UnitDelay: '<S199>/Unit Delay' */
    VCU_B.UnitDelay_p = VCU_DW.UnitDelay_DSTATE_b;

    /* UnitDelay: '<S200>/Unit Delay1' */
    VCU_B.Timeout_i = VCU_DW.UnitDelay1_DSTATE_k;

    /* RelationalOperator: '<S220>/Compare' incorporates:
     *  Constant: '<S220>/Constant'
     */
    VCU_B.Compare_e = (VCU_B.Add_j == 0);

    /* RelationalOperator: '<S219>/Compare' incorporates:
     *  Constant: '<S219>/Constant'
     */
    VCU_B.Compare_a = (VCU_B.x_clutch_STW < 15.0);

    /* Logic: '<S200>/Logical Operator1' */
    VCU_B.FailSafefirstgear = (VCU_B.Compare_e && VCU_B.Compare_a);

    /* CombinatorialLogic: '<S224>/Logic' incorporates:
     *  Logic: '<S200>/Logical Operator'
     *  Memory: '<S224>/Memory'
     */
    VCU_B.LogicalOperator_i = (VCU_B.FixPtRelationalOperator_m ||
      VCU_B.Compare_ha || VCU_B.UnitDelay_p || VCU_B.Timeout_i ||
      VCU_B.FailSafefirstgear);
    VCU_B.Memory_a = VCU_DW.Memory_PreviousInput_al;
    rowIdx = VCU_B.FixPtRelationalOperator_c;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator_i);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_a);
    VCU_B.Logic_iz[0U] = VCU_ConstP.pooled37[(uint32_T)rowIdx];
    VCU_B.Logic_iz[1U] = VCU_ConstP.pooled37[rowIdx + 8U];

    /* CombinatorialLogic: '<S225>/Logic' incorporates:
     *  S-Function (sdspcount2): '<S200>/Counter1'
     */
    VCU_B.Counter1 = false;

    /* S-Function (sdspcount2): '<S200>/Counter1' */
    if (VCU_B.LogicalOperator_i) {
      VCU_DW.Counter1_Count = 0U;
    }

    if (VCU_B.Logic_iz[0]) {
      if (VCU_DW.Counter1_Count < 60) {
        VCU_DW.Counter1_Count++;
      } else {
        VCU_DW.Counter1_Count = 0U;
      }
    }

    if (VCU_DW.Counter1_Count == 1) {
      /* CombinatorialLogic: '<S225>/Logic' */
      VCU_B.Counter1 = true;
    }

    /* UnitDelay: '<S223>/Delay Input1'
     *
     * Block description for '<S223>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_m = VCU_DW.DelayInput1_DSTATE_f;

    /* RelationalOperator: '<S223>/FixPt Relational Operator' */
    VCU_B.FixPtRelationalOperator_b = (VCU_B.Add_j > VCU_B.Uk1_m);

    /* CombinatorialLogic: '<S225>/Logic' incorporates:
     *  Logic: '<S200>/Logical Operator2'
     *  Memory: '<S225>/Memory'
     */
    VCU_B.LogicalOperator2_h = (VCU_B.LogicalOperator_i ||
      VCU_B.FixPtRelationalOperator_b);
    VCU_B.Memory_gt = VCU_DW.Memory_PreviousInput_k;
    rowIdx = VCU_B.Counter1;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator2_h);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_gt);
    VCU_B.Logic_e[0U] = VCU_ConstP.pooled37[(uint32_T)rowIdx];
    VCU_B.Logic_e[1U] = VCU_ConstP.pooled37[rowIdx + 8U];

    /* DataTypeConversion: '<S138>/Data Type Conversion11' */
    VCU_B.Ignition_Cut_o = VCU_B.Logic_e[0];

    /* S-Function (sdspcount2): '<S199>/Counter' */
    VCU_B.Counter = false;
    if (VCU_B.LogicalOperator_d) {
      VCU_DW.Counter_Count = 0U;
    }

    if (VCU_B.Logic_i[0]) {
      if (VCU_DW.Counter_Count < 500) {
        VCU_DW.Counter_Count++;
      } else {
        VCU_DW.Counter_Count = 0U;
      }
    }

    if (VCU_DW.Counter_Count == 500) {
      VCU_B.Counter = true;
    }

    /* End of S-Function (sdspcount2): '<S199>/Counter' */

    /* S-Function (sdspcount2): '<S200>/Counter' */
    VCU_B.Counter_d = false;
    if (VCU_B.LogicalOperator_i) {
      VCU_DW.Counter_Count_i = 0U;
    }

    if (VCU_B.Logic_iz[0]) {
      if (VCU_DW.Counter_Count_i < 200) {
        VCU_DW.Counter_Count_i++;
      } else {
        VCU_DW.Counter_Count_i = 0U;
      }
    }

    if (VCU_DW.Counter_Count_i == 180) {
      VCU_B.Counter_d = true;
    }

    /* End of S-Function (sdspcount2): '<S200>/Counter' */

    /* DataTypeConversion: '<S138>/Data Type Conversion8' */
    VCU_B.VOVG_ShiftUp_k = VCU_B.Logic_iz[0];

    /* UnitDelay: '<S212>/Delay Input1'
     *
     * Block description for '<S212>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_f = VCU_DW.DelayInput1_DSTATE_p;

    /* RelationalOperator: '<S212>/FixPt Relational Operator' */
    VCU_B.FixPtRelationalOperator_d = (VCU_B.Add_c < VCU_B.Uk1_f);

    /* Switch: '<S198>/Switch' */
    if (VCU_B.Logic_i[0]) {
      /* MinMax: '<S198>/MinMax' incorporates:
       *  Constant: '<S198>/Constant'
       */
      VCU_B.Switch_g = 20.0;
    } else {
      /* MinMax: '<S198>/MinMax' incorporates:
       *  Constant: '<S198>/Constant1'
       */
      VCU_B.Switch_g = 0.0;
    }

    /* End of Switch: '<S198>/Switch' */

    /* MinMax: '<S198>/MinMax' */
    if ((VCU_B.x_clutch_STW > VCU_B.Switch_g) || rtIsNaN(VCU_B.Switch_g)) {
      VCU_B.MinMax = VCU_B.x_clutch_STW;
    } else {
      VCU_B.MinMax = VCU_B.Switch_g;
    }

    if (!(VCU_B.MinMax > 0.0)) {
      VCU_B.MinMax = 0.0;
    }

    /* RelationalOperator: '<S202>/Compare' incorporates:
     *  Constant: '<S202>/Constant'
     */
    VCU_B.Compare_ao = (VCU_B.MinMax > 1.0);

    /* DataTypeConversion: '<S138>/Data Type Conversion12' */
    VCU_B.VOVG_IN_h = VCU_B.Compare_ao;

    /* Sum: '<S198>/Add' */
    VCU_B.Add = VCU_B.MinMax - VCU_B.x_clutch_b;

    /* RelationalOperator: '<S204>/Compare' incorporates:
     *  Constant: '<S204>/Constant'
     */
    VCU_B.Compare_gu = (VCU_B.Add < -0.5);

    /* Lookup_n-D: '<S198>/Duty Cycle MHJ1' */
    VCU_B.DutyCycleMHJ1 = look1_binlxpw(VCU_B.Add, VCU_ConstP.pooled29,
      VCU_ConstP.pooled28, 14U);

    /* Product: '<S198>/Product1' */
    VCU_B.Product1 = VCU_B.DutyCycleMHJ1 * (real_T)VCU_B.Compare_gu;

    /* RelationalOperator: '<S203>/Compare' incorporates:
     *  Constant: '<S203>/Constant'
     */
    VCU_B.Compare_eh = (VCU_B.x_clutch_b > 20.0);

    /* Switch: '<S198>/Switch1' incorporates:
     *  Constant: '<S198>/Constant2'
     *  Constant: '<S198>/Constant3'
     */
    if (VCU_B.Compare_eh) {
      VCU_B.Switch1 = 2.0;
    } else {
      VCU_B.Switch1 = 1.0;
    }

    /* End of Switch: '<S198>/Switch1' */

    /* Product: '<S198>/Product2' */
    VCU_B.Product2 = VCU_B.Product1 * VCU_B.Switch1;

    /* DataTypeConversion: '<S138>/Data Type Conversion15' */
    VCU_B.MHJ9_OUT_d = VCU_B.Product2;

    /* RelationalOperator: '<S205>/Compare' incorporates:
     *  Constant: '<S205>/Constant'
     */
    VCU_B.Compare_m = (VCU_B.Add > 0.0);

    /* Product: '<S198>/Product3' */
    VCU_B.Product3 = VCU_B.DutyCycleMHJ1 * (real_T)VCU_B.Compare_m;

    /* DataTypeConversion: '<S138>/Data Type Conversion14' */
    VCU_B.MHJ9_IN_e = VCU_B.Product3;

    /* RelationalOperator: '<S206>/Compare' incorporates:
     *  Constant: '<S206>/Constant'
     */
    VCU_B.Compare_md = (VCU_B.Add < -20.0);

    /* DataTypeConversion: '<S138>/Data Type Conversion13' */
    VCU_B.VOVG_OUT_j = VCU_B.Compare_md;

    /* DataTypeConversion: '<S138>/Data Type Conversion2' incorporates:
     *  Constant: '<S138>/Constant'
     */
    VCU_B.LC_ready_bit_e = true;

    /* DataTypeConversion: '<S138>/Data Type Conversion16' */
    VCU_B.x_clutch_LC_b = 0.0;

    /* DataTypeConversion: '<S138>/Data Type Conversion17' */
    VCU_B.LC_Mdes_b = 0.0;

    /* DataTypeConversion: '<S138>/Data Type Conversion18' */
    VCU_B.LC_Fnr_l = 0.0;

    /* Update for Memory: '<S201>/Memory' */
    VCU_DW.Memory_PreviousInput = VCU_B.LC_dash_bit;

    /* Update for Memory: '<S201>/Memory1' */
    VCU_DW.Memory1_PreviousInput = VCU_B.Brakelight;

    /* Update for Memory: '<S227>/Memory' */
    VCU_DW.Memory_PreviousInput_j = VCU_B.Logic[0];

    /* Update for UnitDelay: '<S199>/Unit Delay1' */
    VCU_DW.UnitDelay1_DSTATE = VCU_B.Logic_i[0];

    /* Update for Delay: '<S199>/Delay' */
    for (rowIdx = 0; rowIdx < 19; rowIdx++) {
      VCU_DW.Delay_DSTATE[rowIdx] = VCU_DW.Delay_DSTATE[rowIdx + 1];
    }

    VCU_DW.Delay_DSTATE[19] = VCU_B.LogicalOperator_d;

    /* End of Update for Delay: '<S199>/Delay' */

    /* Update for Memory: '<S216>/Memory' */
    VCU_DW.Memory_PreviousInput_p = VCU_B.Logic_o[0];

    /* Update for UnitDelay: '<S213>/Delay Input1'
     *
     * Block description for '<S213>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE = VCU_B.STW_shift_down_request;

    /* Update for Delay: '<S199>/Delay1' */
    VCU_DW.Delay1_DSTATE = VCU_B.LogicalOperator_d;

    /* Update for Memory: '<S214>/Memory' */
    VCU_DW.Memory_PreviousInput_l = VCU_B.Logic_i[0];

    /* Update for UnitDelay: '<S199>/Unit Delay4' */
    VCU_DW.UnitDelay4_DSTATE = VCU_B.FixPtRelationalOperator_d;

    /* Update for UnitDelay: '<S200>/Unit Delay' */
    VCU_DW.UnitDelay_DSTATE = VCU_B.Logic_iz[0];

    /* Update for UnitDelay: '<S199>/Unit Delay2' */
    VCU_DW.UnitDelay2_DSTATE = VCU_B.Counter;

    /* Update for Memory: '<S215>/Memory' */
    VCU_DW.Memory_PreviousInput_a = VCU_B.Logic_iy[0];

    /* Update for UnitDelay: '<S221>/Delay Input1'
     *
     * Block description for '<S221>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_g = VCU_B.STW_shift_up_request;

    /* Update for UnitDelay: '<S222>/Delay Input1'
     *
     * Block description for '<S222>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_ga = VCU_B.Add_j;

    /* Update for UnitDelay: '<S199>/Unit Delay' */
    VCU_DW.UnitDelay_DSTATE_b = VCU_B.Logic_iy[0];

    /* Update for UnitDelay: '<S200>/Unit Delay1' */
    VCU_DW.UnitDelay1_DSTATE_k = VCU_B.Counter_d;

    /* Update for Memory: '<S224>/Memory' */
    VCU_DW.Memory_PreviousInput_al = VCU_B.Logic_iz[0];

    /* Update for UnitDelay: '<S223>/Delay Input1'
     *
     * Block description for '<S223>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_f = VCU_B.Add_j;

    /* Update for Memory: '<S225>/Memory' */
    VCU_DW.Memory_PreviousInput_k = VCU_B.Logic_e[0];

    /* Update for UnitDelay: '<S212>/Delay Input1'
     *
     * Block description for '<S212>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_p = VCU_B.Add_c;
  }

  /* End of Outputs for SubSystem: '<S7>/semi_auto_jr18' */

  /* RelationalOperator: '<S134>/Compare' incorporates:
   *  Constant: '<S134>/Constant'
   */
  VCU_B.Compare_j = (VCU_B.DataTypeConversion_cg == 2);

  /* Outputs for Enabled SubSystem: '<S7>/driver_jr18' incorporates:
   *  EnablePort: '<S137>/Enable'
   */
  if (VCU_B.Compare_j) {
    /* MinMax: '<S190>/MinMax' */
    if (VCU_B.x_clutch_STW > 0.0) {
      VCU_B.MinMax_l = VCU_B.x_clutch_STW;
    } else {
      VCU_B.MinMax_l = 0.0;
    }

    /* End of MinMax: '<S190>/MinMax' */

    /* RelationalOperator: '<S193>/Compare' incorporates:
     *  Constant: '<S193>/Constant'
     */
    VCU_B.Compare_bd = (VCU_B.MinMax_l > 1.0);

    /* DataTypeConversion: '<S137>/Data Type Conversion12' */
    VCU_B.VOVG_IN_c = VCU_B.Compare_bd;

    /* Sum: '<S190>/Add' */
    VCU_B.Add_l = VCU_B.MinMax_l - VCU_B.x_clutch_b;

    /* RelationalOperator: '<S195>/Compare' incorporates:
     *  Constant: '<S195>/Constant'
     */
    VCU_B.Compare_e5 = (VCU_B.Add_l < -0.5);

    /* Lookup_n-D: '<S190>/Duty Cycle MHJ9' */
    VCU_B.DutyCycleMHJ9 = look1_binlxpw(VCU_B.Add_l, VCU_ConstP.pooled29,
      VCU_ConstP.pooled28, 14U);

    /* Product: '<S190>/Product1' */
    VCU_B.Product1_p = VCU_B.DutyCycleMHJ9 * (real_T)VCU_B.Compare_e5;

    /* RelationalOperator: '<S194>/Compare' incorporates:
     *  Constant: '<S194>/Constant'
     */
    VCU_B.Compare_p = (VCU_B.x_clutch_b > 20.0);

    /* Switch: '<S190>/Switch1' incorporates:
     *  Constant: '<S190>/Constant2'
     *  Constant: '<S190>/Constant3'
     */
    if (VCU_B.Compare_p) {
      VCU_B.Switch1_e = 2.0;
    } else {
      VCU_B.Switch1_e = 1.0;
    }

    /* End of Switch: '<S190>/Switch1' */

    /* Product: '<S190>/Product2' */
    VCU_B.Product2_p = VCU_B.Product1_p * VCU_B.Switch1_e;

    /* DataTypeConversion: '<S137>/Data Type Conversion15' */
    VCU_B.MHJ9_OUT_k = VCU_B.Product2_p;

    /* RelationalOperator: '<S196>/Compare' incorporates:
     *  Constant: '<S196>/Constant'
     */
    VCU_B.Compare_gz = (VCU_B.Add_l > 0.0);

    /* Product: '<S190>/Product3' */
    VCU_B.Product3_d = VCU_B.DutyCycleMHJ9 * (real_T)VCU_B.Compare_gz;

    /* DataTypeConversion: '<S137>/Data Type Conversion14' */
    VCU_B.MHJ9_IN_p = VCU_B.Product3_d;

    /* RelationalOperator: '<S197>/Compare' incorporates:
     *  Constant: '<S197>/Constant'
     */
    VCU_B.Compare_bh = (VCU_B.Add_l < -20.0);

    /* DataTypeConversion: '<S137>/Data Type Conversion13' */
    VCU_B.VOVG_OUT_o = VCU_B.Compare_bh;

    /* RelationalOperator: '<S191>/Compare' incorporates:
     *  Constant: '<S191>/Constant'
     */
    VCU_B.Compare_g5 = (VCU_B.DataTypeConversion3 < 3.0);

    /* Logic: '<S137>/Logical Operator1' */
    VCU_B.LogicalOperator1_p = ((VCU_B.STW_shift_up_request != 0.0) &&
      VCU_B.Compare_g5);

    /* DataTypeConversion: '<S137>/Data Type Conversion8' */
    VCU_B.VOVG_ShiftUp_o = VCU_B.LogicalOperator1_p;

    /* RelationalOperator: '<S192>/Compare' incorporates:
     *  Constant: '<S192>/Constant'
     */
    VCU_B.Compare_mz = (VCU_B.DataTypeConversion3 >= 0.0);

    /* Logic: '<S137>/Logical Operator' */
    VCU_B.LogicalOperator_e = (VCU_B.Compare_mz && (VCU_B.STW_shift_down_request
      != 0.0));

    /* DataTypeConversion: '<S137>/Data Type Conversion10' */
    VCU_B.VOVG_ShiftDown_f = VCU_B.LogicalOperator_e;

    /* DataTypeConversion: '<S137>/Data Type Conversion11' */
    VCU_B.Ignition_Cut_h = 0.0;

    /* DataTypeConversion: '<S137>/Data Type Conversion16' */
    VCU_B.x_clutch_LC_i = 0.0;

    /* DataTypeConversion: '<S137>/Data Type Conversion17' */
    VCU_B.LC_Mdes_f = 0.0;

    /* DataTypeConversion: '<S137>/Data Type Conversion18' */
    VCU_B.LC_Fnr_f = 0.0;
  }

  /* End of Outputs for SubSystem: '<S7>/driver_jr18' */

  /* MultiPortSwitch: '<S7>/Multiport Switch' */
  switch (VCU_B.DataTypeConversion_cg) {
   case 1:
    VCU_B.VOVG_ShiftUp = VCU_B.VOVG_ShiftUp_k;
    break;

   case 2:
    VCU_B.VOVG_ShiftUp = VCU_B.VOVG_ShiftUp_o;
    break;

   case 3:
    VCU_B.VOVG_ShiftUp = VCU_B.VOVG_ShiftUp_oi;
    break;

   default:
    VCU_B.VOVG_ShiftUp = VCU_B.VOVG_ShiftUp_k;
    break;
  }

  switch (VCU_B.DataTypeConversion_cg) {
   case 1:
    VCU_B.LC_Fnr = VCU_B.LC_Fnr_l;
    break;

   case 2:
    VCU_B.LC_Fnr = VCU_B.LC_Fnr_f;
    break;

   case 3:
    VCU_B.LC_Fnr = VCU_B.LC_Fnr_lv;
    break;

   default:
    VCU_B.LC_Fnr = VCU_B.LC_Fnr_l;
    break;
  }

  switch (VCU_B.DataTypeConversion_cg) {
   case 1:
    VCU_B.VOVG_ShiftDown = VCU_B.VOVG_ShiftDown_m;
    break;

   case 2:
    VCU_B.VOVG_ShiftDown = VCU_B.VOVG_ShiftDown_f;
    break;

   case 3:
    VCU_B.VOVG_ShiftDown = VCU_B.VOVG_ShiftDown_a;
    break;

   default:
    VCU_B.VOVG_ShiftDown = VCU_B.VOVG_ShiftDown_m;
    break;
  }

  switch (VCU_B.DataTypeConversion_cg) {
   case 1:
    VCU_B.Ignition_Cut = VCU_B.Ignition_Cut_o;
    break;

   case 2:
    VCU_B.Ignition_Cut = VCU_B.Ignition_Cut_h;
    break;

   case 3:
    VCU_B.Ignition_Cut = VCU_B.Ignition_Cut_d;
    break;

   default:
    VCU_B.Ignition_Cut = VCU_B.Ignition_Cut_o;
    break;
  }

  switch (VCU_B.DataTypeConversion_cg) {
   case 1:
    VCU_B.VOVG_IN = VCU_B.VOVG_IN_h;
    break;

   case 2:
    VCU_B.VOVG_IN = VCU_B.VOVG_IN_c;
    break;

   case 3:
    VCU_B.VOVG_IN = VCU_B.VOVG_IN_g;
    break;

   default:
    VCU_B.VOVG_IN = VCU_B.VOVG_IN_h;
    break;
  }

  switch (VCU_B.DataTypeConversion_cg) {
   case 1:
    VCU_B.VOVG_OUT = VCU_B.VOVG_OUT_j;
    break;

   case 2:
    VCU_B.VOVG_OUT = VCU_B.VOVG_OUT_o;
    break;

   case 3:
    VCU_B.VOVG_OUT = VCU_B.VOVG_OUT_b;
    break;

   default:
    VCU_B.VOVG_OUT = VCU_B.VOVG_OUT_j;
    break;
  }

  switch (VCU_B.DataTypeConversion_cg) {
   case 1:
    VCU_B.MHJ9_IN = VCU_B.MHJ9_IN_e;
    break;

   case 2:
    VCU_B.MHJ9_IN = VCU_B.MHJ9_IN_p;
    break;

   case 3:
    VCU_B.MHJ9_IN = VCU_B.MHJ9_IN_h;
    break;

   default:
    VCU_B.MHJ9_IN = VCU_B.MHJ9_IN_e;
    break;
  }

  switch (VCU_B.DataTypeConversion_cg) {
   case 1:
    VCU_B.MHJ9_OUT = VCU_B.MHJ9_OUT_d;
    break;

   case 2:
    VCU_B.MHJ9_OUT = VCU_B.MHJ9_OUT_k;
    break;

   case 3:
    VCU_B.MHJ9_OUT = VCU_B.MHJ9_OUT_d5;
    break;

   default:
    VCU_B.MHJ9_OUT = VCU_B.MHJ9_OUT_d;
    break;
  }

  switch (VCU_B.DataTypeConversion_cg) {
   case 1:
    VCU_B.x_clutch_LC = VCU_B.x_clutch_LC_b;
    break;

   case 2:
    VCU_B.x_clutch_LC = VCU_B.x_clutch_LC_i;
    break;

   case 3:
    VCU_B.x_clutch_LC = VCU_B.x_clutch_LC_bg;
    break;

   default:
    VCU_B.x_clutch_LC = VCU_B.x_clutch_LC_b;
    break;
  }

  switch (VCU_B.DataTypeConversion_cg) {
   case 1:
    VCU_B.LC_Mdes = VCU_B.LC_Mdes_b;
    break;

   case 2:
    VCU_B.LC_Mdes = VCU_B.LC_Mdes_f;
    break;

   case 3:
    VCU_B.LC_Mdes = VCU_B.LC_Mdes_o;
    break;

   default:
    VCU_B.LC_Mdes = VCU_B.LC_Mdes_b;
    break;
  }

  /* End of MultiPortSwitch: '<S7>/Multiport Switch' */

  /* MultiPortSwitch: '<S7>/Multiport Switch1' */
  switch (VCU_B.DataTypeConversion_cg) {
   case 1:
    VCU_B.LC_active_bit = VCU_B.LC_active_bit_f;
    break;

   case 2:
    VCU_B.LC_active_bit = VCU_ConstB.LC_active_bit;
    break;

   case 3:
    VCU_B.LC_active_bit = VCU_B.LC_active_bit_a;
    break;

   default:
    VCU_B.LC_active_bit = VCU_B.LC_active_bit_f;
    break;
  }

  switch (VCU_B.DataTypeConversion_cg) {
   case 1:
    VCU_B.LC_ready_bit = VCU_B.LC_ready_bit_e;
    break;

   case 2:
    VCU_B.LC_ready_bit = VCU_ConstB.LC_ready_bit;
    break;

   case 3:
    VCU_B.LC_ready_bit = VCU_B.LC_ready_bit_p;
    break;

   default:
    VCU_B.LC_ready_bit = VCU_B.LC_ready_bit_e;
    break;
  }

  /* End of MultiPortSwitch: '<S7>/Multiport Switch1' */
}
