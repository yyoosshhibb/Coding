/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: Subsystem_Transmission.c
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

#include "Subsystem_Transmission.h"

/* Include model header file for global data */
#include "VCU.h"
#include "VCU_private.h"

/* System initialize for atomic system: '<Root>/Transmission' */
void FUNC_Transmission_Init(void)
{
  /* SystemInitialize for Enabled SubSystem: '<S7>/LC_jr19' */
  /* InitializeConditions for S-Function (sdspcount2): '<S145>/Counter1' */
  VCU_DW.Counter1_Count_m = 0U;

  /* InitializeConditions for S-Function (sdspcount2): '<S144>/Counter' */
  VCU_DW.Counter_Count_b = 0U;

  /* InitializeConditions for S-Function (sdspcount2): '<S145>/Counter' */
  VCU_DW.Counter_Count_n = 0U;

  /* SystemInitialize for Enabled SubSystem: '<S143>/Clutch Pos calc' */
  /* SystemInitialize for MinMax: '<S141>/MinMax' incorporates:
   *  Outport: '<S151>/x_clutch_LC'
   */
  VCU_B.Memory1 = 12.5;

  /* End of SystemInitialize for SubSystem: '<S143>/Clutch Pos calc' */
  /* End of SystemInitialize for SubSystem: '<S7>/LC_jr19' */

  /* SystemInitialize for Enabled SubSystem: '<S7>/semi_auto_jr18' */
  /* InitializeConditions for S-Function (sdspcount2): '<S194>/Counter1' */
  VCU_DW.Counter1_Count = 0U;

  /* InitializeConditions for S-Function (sdspcount2): '<S193>/Counter' */
  VCU_DW.Counter_Count = 0U;

  /* InitializeConditions for S-Function (sdspcount2): '<S194>/Counter' */
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

  /* RelationalOperator: '<S137>/Compare' incorporates:
   *  Constant: '<S137>/Constant'
   */
  VCU_B.Compare = (VCU_B.DataTypeConversion_cg == 3);

  /* Outputs for Enabled SubSystem: '<S7>/LC_jr19' incorporates:
   *  EnablePort: '<S138>/Enable'
   */
  if (VCU_B.Compare) {
    if (!VCU_DW.LC_jr19_MODE) {
      VCU_DW.LC_jr19_MODE = true;
    }

    /* CombinatorialLogic: '<S175>/Logic' incorporates:
     *  Delay: '<S144>/Delay'
     *  Memory: '<S175>/Memory'
     *  UnitDelay: '<S144>/Unit Delay1'
     */
    VCU_B.UnitDelay1_h = VCU_DW.UnitDelay1_DSTATE_d;
    VCU_B.Delay_f = VCU_DW.Delay_DSTATE_i[0];
    VCU_B.Memory_k = VCU_DW.Memory_PreviousInput_c;
    rowIdx = VCU_B.UnitDelay1_h;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Delay_f);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_k);
    VCU_B.Logic_a[0U] = VCU_ConstP.pooled33[(uint32_T)rowIdx];
    VCU_B.Logic_a[1U] = VCU_ConstP.pooled33[rowIdx + 8U];

    /* DataTypeConversion: '<S138>/Data Type Conversion1' */
    VCU_B.VOVG_ShiftDown_i = VCU_B.Logic_a[0];

    /* UnitDelay: '<S172>/Delay Input1'
     *
     * Block description for '<S172>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_o = VCU_DW.DelayInput1_DSTATE_a;

    /* CombinatorialLogic: '<S173>/Logic' incorporates:
     *  RelationalOperator: '<S172>/FixPt Relational Operator'
     */
    VCU_B.FixPtRelationalOperator_l = (VCU_B.STW_shift_down_request >
      VCU_B.Uk1_o);

    /* UnitDelay: '<S144>/Unit Delay4' */
    VCU_B.UnitDelay4_b = VCU_DW.UnitDelay4_DSTATE_k;

    /* RelationalOperator: '<S166>/Compare' incorporates:
     *  Constant: '<S166>/Constant'
     */
    VCU_B.Compare_em = (VCU_B.x_clutch_STW >= 15.0);

    /* Switch: '<S144>/Switch' incorporates:
     *  Constant: '<S144>/Constant'
     *  Constant: '<S144>/Constant1'
     */
    if (VCU_B.Compare_em) {
      VCU_B.Switch_e = 1.0;
    } else {
      VCU_B.Switch_e = 2.0;
    }

    /* End of Switch: '<S144>/Switch' */

    /* RelationalOperator: '<S144>/Relational Operator' */
    VCU_B.LessthanNeutral_m = (VCU_B.DataTypeConversion3 < VCU_B.Switch_e);

    /* UnitDelay: '<S145>/Unit Delay' */
    VCU_B.UnitDelay_j = VCU_DW.UnitDelay_DSTATE_m;

    /* UnitDelay: '<S144>/Unit Delay2' */
    VCU_B.Timeout_n = VCU_DW.UnitDelay2_DSTATE_n;

    /* RelationalOperator: '<S168>/Compare' incorporates:
     *  Constant: '<S168>/Constant'
     */
    VCU_B.Compare_nv = (VCU_B.DataTypeConversion3 == 2.0);

    /* RelationalOperator: '<S167>/Compare' incorporates:
     *  Constant: '<S167>/Constant'
     */
    VCU_B.Compare_ad = (VCU_B.DataTypeConversion2 > 5550.0);

    /* Logic: '<S144>/Logical Operator1' */
    VCU_B.RPMcheckgear21_n = (VCU_B.Compare_nv && VCU_B.Compare_ad);

    /* RelationalOperator: '<S169>/Compare' incorporates:
     *  Constant: '<S169>/Constant'
     */
    VCU_B.Compare_ex = (VCU_B.DataTypeConversion2 > 6200.0);

    /* RelationalOperator: '<S170>/Compare' incorporates:
     *  Constant: '<S170>/Constant'
     */
    VCU_B.Compare_gl = (VCU_B.DataTypeConversion3 == 3.0);

    /* Logic: '<S144>/Logical Operator2' */
    VCU_B.RPMcheckgear31_g = (VCU_B.Compare_ex && VCU_B.Compare_gl);

    /* CombinatorialLogic: '<S173>/Logic' incorporates:
     *  Logic: '<S144>/Logical Operator'
     *  Memory: '<S173>/Memory'
     */
    VCU_B.LogicalOperator_c = (VCU_B.UnitDelay4_b || VCU_B.LessthanNeutral_m ||
      VCU_B.UnitDelay_j || VCU_B.Timeout_n || VCU_B.RPMcheckgear21_n ||
      VCU_B.RPMcheckgear31_g);
    VCU_B.Memory_kz = VCU_DW.Memory_PreviousInput_ao;
    rowIdx = VCU_B.FixPtRelationalOperator_l;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator_c);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_kz);
    VCU_B.Logic_il[0U] = VCU_ConstP.pooled33[(uint32_T)rowIdx];
    VCU_B.Logic_il[1U] = VCU_ConstP.pooled33[rowIdx + 8U];

    /* CombinatorialLogic: '<S174>/Logic' incorporates:
     *  Memory: '<S174>/Memory'
     */
    VCU_B.Memory_ac = VCU_DW.Memory_PreviousInput_m;
    tmp = VCU_B.Logic_il[0];
    rowIdx = tmp;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator_c);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_ac);
    VCU_B.Logic_l[0U] = VCU_ConstP.pooled33[(uint32_T)rowIdx];
    VCU_B.Logic_l[1U] = VCU_ConstP.pooled33[rowIdx + 8U];

    /* Sum: '<S153>/Add1' incorporates:
     *  Constant: '<S153>/Constant13'
     */
    VCU_B.Add1 = 2.0 - VCU_B.DataTypeConversion3;

    /* Switch: '<S153>/Switch3' */
    VCU_B.Switch3 = (VCU_B.Add1 >= 0.0);

    /* Switch: '<S153>/Switch4' */
    VCU_B.Switch4 = (VCU_B.Gain4 > 65.0);

    /* Logic: '<S153>/Logical Operator3' */
    VCU_B.LogicalOperator3 = ((VCU_B.Switch3 != 0.0) && (VCU_B.Switch4 != 0.0));

    /* Logic: '<S153>/Logical Operator' */
    VCU_B.LogicalOperator_dn = VCU_B.LogicalOperator3;

    /* Product: '<S143>/Product' */
    VCU_B.Product = (uint16_T)(VCU_B.LogicalOperator_dn ? (int32_T)
      VCU_B.LC_dash_bit : 0);

    /* UnitDelay: '<S142>/Delay Input1'
     *
     * Block description for '<S142>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_ix = VCU_DW.DelayInput1_DSTATE_d;

    /* RelationalOperator: '<S142>/FixPt Relational Operator' */
    VCU_B.FixPtRelationalOperator_k = (VCU_B.Product > VCU_B.Uk1_ix);

    /* Logic: '<S138>/Logical Operator' */
    VCU_B.LogicalOperator_k = (VCU_B.FixPtRelationalOperator_k ||
      (VCU_B.STW_shift_up_request != 0.0));

    /* UnitDelay: '<S179>/Delay Input1'
     *
     * Block description for '<S179>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_fm = VCU_DW.DelayInput1_DSTATE_fa;

    /* CombinatorialLogic: '<S182>/Logic' incorporates:
     *  RelationalOperator: '<S179>/FixPt Relational Operator'
     */
    VCU_B.FixPtRelationalOperator_o = ((int32_T)VCU_B.LogicalOperator_k >
      (int32_T)VCU_B.Uk1_fm);

    /* UnitDelay: '<S180>/Delay Input1'
     *
     * Block description for '<S180>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_d = VCU_DW.DelayInput1_DSTATE_l;

    /* RelationalOperator: '<S180>/FixPt Relational Operator' */
    VCU_B.FixPtRelationalOperator_cf = (VCU_B.DataTypeConversion3 > VCU_B.Uk1_d);

    /* RelationalOperator: '<S176>/Compare' incorporates:
     *  Constant: '<S176>/Constant'
     */
    VCU_B.Compare_np = (VCU_B.DataTypeConversion3 >= 3.0);

    /* UnitDelay: '<S144>/Unit Delay' */
    VCU_B.UnitDelay_m = VCU_DW.UnitDelay_DSTATE_f;

    /* UnitDelay: '<S145>/Unit Delay1' */
    VCU_B.Timeout_c = VCU_DW.UnitDelay1_DSTATE_i;

    /* RelationalOperator: '<S178>/Compare' incorporates:
     *  Constant: '<S178>/Constant'
     */
    VCU_B.Compare_lz = (VCU_B.DataTypeConversion3 == 0.0);

    /* RelationalOperator: '<S177>/Compare' incorporates:
     *  Constant: '<S177>/Constant'
     */
    VCU_B.Compare_ph = (VCU_B.x_clutch_STW < 15.0);

    /* Logic: '<S145>/Logical Operator1' */
    VCU_B.FailSafefirstgear_l = (VCU_B.Compare_lz && VCU_B.Compare_ph);

    /* CombinatorialLogic: '<S182>/Logic' incorporates:
     *  Logic: '<S145>/Logical Operator'
     *  Memory: '<S182>/Memory'
     */
    VCU_B.LogicalOperator_d0 = (VCU_B.FixPtRelationalOperator_cf ||
      VCU_B.Compare_np || VCU_B.UnitDelay_m || VCU_B.Timeout_c ||
      VCU_B.FailSafefirstgear_l);
    VCU_B.Memory_o = VCU_DW.Memory_PreviousInput_e;
    rowIdx = VCU_B.FixPtRelationalOperator_o;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator_d0);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_o);
    VCU_B.Logic_p[0U] = VCU_ConstP.pooled33[(uint32_T)rowIdx];
    VCU_B.Logic_p[1U] = VCU_ConstP.pooled33[rowIdx + 8U];

    /* CombinatorialLogic: '<S183>/Logic' incorporates:
     *  S-Function (sdspcount2): '<S145>/Counter1'
     */
    VCU_B.Counter1_a = false;

    /* S-Function (sdspcount2): '<S145>/Counter1' */
    if (VCU_B.LogicalOperator_d0) {
      VCU_DW.Counter1_Count_m = 0U;
    }

    if (VCU_B.Logic_p[0]) {
      if (VCU_DW.Counter1_Count_m < 60) {
        VCU_DW.Counter1_Count_m++;
      } else {
        VCU_DW.Counter1_Count_m = 0U;
      }
    }

    if (VCU_DW.Counter1_Count_m == 1) {
      /* CombinatorialLogic: '<S183>/Logic' */
      VCU_B.Counter1_a = true;
    }

    /* UnitDelay: '<S181>/Delay Input1'
     *
     * Block description for '<S181>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_og = VCU_DW.DelayInput1_DSTATE_b;

    /* RelationalOperator: '<S181>/FixPt Relational Operator' */
    VCU_B.FixPtRelationalOperator_p = (VCU_B.DataTypeConversion3 > VCU_B.Uk1_og);

    /* CombinatorialLogic: '<S183>/Logic' incorporates:
     *  Logic: '<S145>/Logical Operator2'
     *  Memory: '<S183>/Memory'
     */
    VCU_B.LogicalOperator2_b = (VCU_B.LogicalOperator_d0 ||
      VCU_B.FixPtRelationalOperator_p);
    VCU_B.Memory_db = VCU_DW.Memory_PreviousInput_n;
    rowIdx = VCU_B.Counter1_a;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator2_b);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_db);
    VCU_B.Logic_k[0U] = VCU_ConstP.pooled33[(uint32_T)rowIdx];
    VCU_B.Logic_k[1U] = VCU_ConstP.pooled33[rowIdx + 8U];

    /* DataTypeConversion: '<S138>/Data Type Conversion2' */
    VCU_B.Ignition_Cut_g = VCU_B.Logic_k[0];

    /* DataTypeConversion: '<S138>/Data Type Conversion8' */
    VCU_B.LC_Mdes_bl = VCU_B.Logic_k[0];

    /* S-Function (sdspcount2): '<S144>/Counter' */
    VCU_B.Counter_j = false;
    if (VCU_B.LogicalOperator_c) {
      VCU_DW.Counter_Count_b = 0U;
    }

    if (VCU_B.Logic_il[0]) {
      if (VCU_DW.Counter_Count_b < 500) {
        VCU_DW.Counter_Count_b++;
      } else {
        VCU_DW.Counter_Count_b = 0U;
      }
    }

    if (VCU_DW.Counter_Count_b == 500) {
      VCU_B.Counter_j = true;
    }

    /* End of S-Function (sdspcount2): '<S144>/Counter' */

    /* S-Function (sdspcount2): '<S145>/Counter' */
    VCU_B.Counter_a = false;
    if (VCU_B.LogicalOperator_d0) {
      VCU_DW.Counter_Count_n = 0U;
    }

    if (VCU_B.Logic_p[0]) {
      if (VCU_DW.Counter_Count_n < 200) {
        VCU_DW.Counter_Count_n++;
      } else {
        VCU_DW.Counter_Count_n = 0U;
      }
    }

    if (VCU_DW.Counter_Count_n == 100) {
      VCU_B.Counter_a = true;
    }

    /* End of S-Function (sdspcount2): '<S145>/Counter' */

    /* DataTypeConversion: '<S138>/Data Type Conversion' */
    VCU_B.VOVG_ShiftUp_d = VCU_B.Logic_p[0];

    /* Switch: '<S141>/Switch' */
    if (VCU_B.Logic_il[0]) {
      /* MinMax: '<S141>/MinMax' incorporates:
       *  Constant: '<S141>/Constant'
       */
      VCU_B.Switch_h = 20.0;
    } else {
      /* MinMax: '<S141>/MinMax' incorporates:
       *  Constant: '<S141>/Constant1'
       */
      VCU_B.Switch_h = 0.0;
    }

    /* End of Switch: '<S141>/Switch' */

    /* Memory: '<S143>/Memory' */
    VCU_B.Memory_od = VCU_DW.Memory_PreviousInput_i;

    /* Sum: '<S154>/Add' */
    VCU_B.Add_o = VCU_B.Add1_k + VCU_B.Add1_de;

    /* Gain: '<S154>/Gain' */
    VCU_B.Gain_g = 0.5 * VCU_B.Add_o;

    /* Sum: '<S154>/Add1' */
    VCU_B.Add1_f = VCU_B.Add1_ks + VCU_B.Add1_eq;

    /* MinMax: '<S154>/MinMax' incorporates:
     *  Gain: '<S154>/Gain1'
     */
    VCU_B.Gain1 = 0.5 * VCU_B.Add1_f;

    /* Sum: '<S154>/Add2' */
    VCU_B.Add2 = VCU_B.Gain1 - VCU_B.Gain_g;

    /* MinMax: '<S154>/MinMax' */
    if ((0.001 > VCU_B.Gain1) || rtIsNaN(VCU_B.Gain1)) {
      VCU_B.MinMax_o = 0.001;
    } else {
      VCU_B.MinMax_o = VCU_B.Gain1;
    }

    /* Saturate: '<S154>/Saturation' incorporates:
     *  Product: '<S154>/Divide'
     */
    VCU_B.Divide = VCU_B.Add2 / VCU_B.MinMax_o;
    if (VCU_B.Divide > 0.5) {
      VCU_B.Saturation = 0.5;
    } else if (VCU_B.Divide < -0.5) {
      VCU_B.Saturation = -0.5;
    } else {
      VCU_B.Saturation = VCU_B.Divide;
    }

    /* End of Saturate: '<S154>/Saturation' */

    /* RelationalOperator: '<S143>/Relational Operator1' incorporates:
     *  Constant: '<S143>/Constant'
     */
    VCU_B.RelationalOperator1_d = (VCU_B.x_clutch_STW <= 15.0);

    /* Outputs for Enabled SubSystem: '<S143>/Clutch Pos calc' incorporates:
     *  EnablePort: '<S151>/Enable'
     */
    if (VCU_B.RelationalOperator1_d) {
      if (!VCU_DW.ClutchPoscalc_MODE) {
        VCU_DW.ClutchPoscalc_MODE = true;
      }

      /* MinMax: '<S141>/MinMax' incorporates:
       *  Memory: '<S151>/Memory1'
       */
      VCU_B.Memory1 = VCU_DW.Memory1_PreviousInput;

      /* If: '<S151>/If' incorporates:
       *  Constant: '<S151>/slip_R_Max'
       *  Constant: '<S151>/slip_R_Min'
       */
      if (VCU_B.Saturation < 0.06) {
        /* Outputs for IfAction SubSystem: '<S151>/If Action Subsystem' incorporates:
         *  ActionPort: '<S157>/Action Port'
         */
        /* MinMax: '<S151>/MinMax' incorporates:
         *  Sum: '<S157>/Add'
         */
        VCU_B.Merge = VCU_B.Memory1 - VCU_B.Add1_f1;

        /* End of Outputs for SubSystem: '<S151>/If Action Subsystem' */
      } else if (VCU_B.Saturation > 0.15) {
        /* Outputs for IfAction SubSystem: '<S151>/If Action Subsystem1' incorporates:
         *  ActionPort: '<S158>/Action Port'
         */
        /* MinMax: '<S151>/MinMax' incorporates:
         *  Sum: '<S158>/Add'
         */
        VCU_B.Merge = VCU_B.Add1_f1 + VCU_B.Memory1;

        /* End of Outputs for SubSystem: '<S151>/If Action Subsystem1' */
      } else {
        /* Outputs for IfAction SubSystem: '<S151>/If Action Subsystem2' incorporates:
         *  ActionPort: '<S159>/Action Port'
         */
        /* MinMax: '<S151>/MinMax' incorporates:
         *  Inport: '<S159>/x_clutch_in'
         */
        VCU_B.Merge = VCU_B.Memory1;

        /* End of Outputs for SubSystem: '<S151>/If Action Subsystem2' */
      }

      /* End of If: '<S151>/If' */

      /* RelationalOperator: '<S151>/Relational Operator3' incorporates:
       *  Constant: '<S151>/Clutch_Close_Speedlimit1'
       */
      VCU_B.RelationalOperator3 = (VCU_B.Add1_f1 <= 0.01);

      /* Switch: '<S151>/Switch3' incorporates:
       *  Constant: '<S151>/Clutch_Close1'
       */
      if (VCU_B.RelationalOperator3) {
        VCU_B.Switch3_p = 0.0;
      } else {
        /* RelationalOperator: '<S151>/Relational Operator2' incorporates:
         *  Constant: '<S151>/Clutch_Close_Speedlimit'
         */
        VCU_B.RelationalOperator2_c = (VCU_B.Gain4 >= 50.0);

        /* Switch: '<S151>/Switch2' incorporates:
         *  Constant: '<S151>/Clutch_Close'
         */
        if (VCU_B.RelationalOperator2_c) {
          VCU_B.Switch2 = 0.0;
        } else {
          /* RelationalOperator: '<S151>/Relational Operator1' incorporates:
           *  Constant: '<S151>/Clutch_Hold_Speedlimit'
           */
          VCU_B.RelationalOperator1_c = (VCU_B.Gain4 >= 1.0);

          /* Logic: '<S151>/Logical Operator' */
          VCU_B.LogicalOperator_ej = (VCU_B.Memory_od &&
            VCU_B.RelationalOperator1_c);

          /* Switch: '<S151>/Switch1' incorporates:
           *  Constant: '<S151>/Init_pos_clutch'
           */
          if (VCU_B.LogicalOperator_ej) {
            /* Switch: '<S151>/Switch' */
            if (VCU_B.DataTypeConversion2 >= 4000.0) {
              /* MinMax: '<S151>/MinMax' incorporates:
               *  Constant: '<S151>/Constant Gradient'
               */
              VCU_B.Switch_i = 0.0;
            } else {
              /* Sum: '<S151>/Add' */
              VCU_B.Add_e = VCU_B.Add1_f1 + VCU_B.Memory1;

              /* MinMax: '<S151>/MinMax' */
              VCU_B.Switch_i = VCU_B.Add_e;
            }

            /* End of Switch: '<S151>/Switch' */

            /* MinMax: '<S151>/MinMax' */
            if ((VCU_B.Merge > VCU_B.Switch_i) || rtIsNaN(VCU_B.Switch_i)) {
              VCU_B.MinMax_c = VCU_B.Merge;
            } else {
              VCU_B.MinMax_c = VCU_B.Switch_i;
            }

            /* Saturate: '<S151>/Saturation' */
            if (VCU_B.MinMax_c > 25.0) {
              VCU_B.Saturation_f = 25.0;
            } else if (VCU_B.MinMax_c < 0.0) {
              VCU_B.Saturation_f = 0.0;
            } else {
              VCU_B.Saturation_f = VCU_B.MinMax_c;
            }

            /* End of Saturate: '<S151>/Saturation' */
            VCU_B.Switch1_j = VCU_B.Saturation_f;
          } else {
            VCU_B.Switch1_j = 15.0;
          }

          /* End of Switch: '<S151>/Switch1' */
          VCU_B.Switch2 = VCU_B.Switch1_j;
        }

        /* End of Switch: '<S151>/Switch2' */
        VCU_B.Switch3_p = VCU_B.Switch2;
      }

      /* End of Switch: '<S151>/Switch3' */

      /* Update for Memory: '<S151>/Memory1' */
      VCU_DW.Memory1_PreviousInput = VCU_B.Switch3_p;
    } else {
      if (VCU_DW.ClutchPoscalc_MODE) {
        /* Disable for MinMax: '<S141>/MinMax' incorporates:
         *  Outport: '<S151>/x_clutch_LC'
         */
        VCU_B.Memory1 = 12.5;
        VCU_DW.ClutchPoscalc_MODE = false;
      }
    }

    /* End of Outputs for SubSystem: '<S143>/Clutch Pos calc' */

    /* MinMax: '<S141>/MinMax' */
    if ((VCU_B.x_clutch_STW > VCU_B.Switch_h) || rtIsNaN(VCU_B.Switch_h)) {
      VCU_B.MinMax_oo = VCU_B.x_clutch_STW;
    } else {
      VCU_B.MinMax_oo = VCU_B.Switch_h;
    }

    if (!((VCU_B.MinMax_oo > VCU_B.Memory1) || rtIsNaN(VCU_B.Memory1))) {
      VCU_B.MinMax_oo = VCU_B.Memory1;
    }

    /* RelationalOperator: '<S146>/Compare' incorporates:
     *  Constant: '<S146>/Constant'
     */
    VCU_B.Compare_k = (VCU_B.MinMax_oo > 1.0);

    /* DataTypeConversion: '<S138>/Data Type Conversion3' */
    VCU_B.VOVG_IN_b = VCU_B.Compare_k;

    /* Sum: '<S141>/Add' */
    VCU_B.Add_od = VCU_B.MinMax_oo - VCU_B.x_clutch_b;

    /* RelationalOperator: '<S148>/Compare' incorporates:
     *  Constant: '<S148>/Constant'
     */
    VCU_B.Compare_fm = (VCU_B.Add_od < -0.5);

    /* Lookup_n-D: '<S141>/Duty Cycle MHJ9' */
    VCU_B.DutyCycleMHJ9_l = look1_binlxpw(VCU_B.Add_od, VCU_ConstP.pooled24,
      VCU_ConstP.pooled23, 14U);

    /* Product: '<S141>/Product1' */
    VCU_B.Product1_l = VCU_B.DutyCycleMHJ9_l * (real_T)VCU_B.Compare_fm;

    /* RelationalOperator: '<S147>/Compare' incorporates:
     *  Constant: '<S147>/Constant'
     */
    VCU_B.Compare_i = (VCU_B.x_clutch_b > 20.0);

    /* Switch: '<S141>/Switch1' incorporates:
     *  Constant: '<S141>/Constant2'
     *  Constant: '<S141>/Constant3'
     */
    if (VCU_B.Compare_i) {
      VCU_B.Switch1_k = 2.0;
    } else {
      VCU_B.Switch1_k = 1.0;
    }

    /* End of Switch: '<S141>/Switch1' */

    /* Product: '<S141>/Product2' */
    VCU_B.Product2_a = VCU_B.Product1_l * VCU_B.Switch1_k;

    /* DataTypeConversion: '<S138>/Data Type Conversion6' */
    VCU_B.MHJ9_OUT_p = VCU_B.Product2_a;

    /* RelationalOperator: '<S149>/Compare' incorporates:
     *  Constant: '<S149>/Constant'
     */
    VCU_B.Compare_n3 = (VCU_B.Add_od > 0.0);

    /* Product: '<S141>/Product3' */
    VCU_B.Product3_n = VCU_B.DutyCycleMHJ9_l * (real_T)VCU_B.Compare_n3;

    /* DataTypeConversion: '<S138>/Data Type Conversion5' */
    VCU_B.MHJ9_IN_m = VCU_B.Product3_n;

    /* RelationalOperator: '<S150>/Compare' incorporates:
     *  Constant: '<S150>/Constant'
     */
    VCU_B.Compare_hz = (VCU_B.Add_od < -20.0);

    /* DataTypeConversion: '<S138>/Data Type Conversion4' */
    VCU_B.VOVG_OUT_i = VCU_B.Compare_hz;

    /* DataTypeConversion: '<S138>/Data Type Conversion7' */
    VCU_B.x_clutch_LC_n = VCU_B.Memory1;

    /* RelationalOperator: '<S164>/Compare' */
    VCU_B.Compare_mq = VCU_B.LC_dash_bit;

    /* RelationalOperator: '<S165>/Compare' incorporates:
     *  Constant: '<S165>/Constant'
     */
    VCU_B.Compare_d = (VCU_B.DataTypeConversion3 <= 2.0);

    /* Logic: '<S152>/LC Initialization' */
    VCU_B.LCInitialization = (VCU_B.Compare_mq && VCU_B.Compare_d);

    /* Logic: '<S143>/Logical Operator' */
    VCU_B.LogicalOperator_a = (VCU_B.LCInitialization &&
      VCU_B.RelationalOperator1_d);

    /* DataTypeConversion: '<S138>/Data Type Conversion9' incorporates:
     *  Constant: '<S143>/Constant1'
     */
    VCU_B.LC_Fnr_e = 0.0;

    /* RelationalOperator: '<S143>/Relational Operator' */
    VCU_B.RelationalOperator_l = (VCU_B.DataTypeConversion >=
      VCU_B.DataTypeConversion1);

    /* UnitDelay: '<S171>/Delay Input1'
     *
     * Block description for '<S171>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_h = VCU_DW.DelayInput1_DSTATE_n;

    /* RelationalOperator: '<S171>/FixPt Relational Operator' */
    VCU_B.FixPtRelationalOperator_df = (VCU_B.DataTypeConversion3 < VCU_B.Uk1_h);

    /* Update for UnitDelay: '<S144>/Unit Delay1' */
    VCU_DW.UnitDelay1_DSTATE_d = VCU_B.Logic_il[0];

    /* Update for Delay: '<S144>/Delay' */
    for (rowIdx = 0; rowIdx < 19; rowIdx++) {
      VCU_DW.Delay_DSTATE_i[rowIdx] = VCU_DW.Delay_DSTATE_i[rowIdx + 1];
    }

    VCU_DW.Delay_DSTATE_i[19] = VCU_B.LogicalOperator_c;

    /* End of Update for Delay: '<S144>/Delay' */

    /* Update for Memory: '<S175>/Memory' */
    VCU_DW.Memory_PreviousInput_c = VCU_B.Logic_a[0];

    /* Update for UnitDelay: '<S172>/Delay Input1'
     *
     * Block description for '<S172>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_a = VCU_B.STW_shift_down_request;

    /* Update for UnitDelay: '<S144>/Unit Delay4' */
    VCU_DW.UnitDelay4_DSTATE_k = VCU_B.FixPtRelationalOperator_df;

    /* Update for UnitDelay: '<S145>/Unit Delay' */
    VCU_DW.UnitDelay_DSTATE_m = VCU_B.Logic_p[0];

    /* Update for UnitDelay: '<S144>/Unit Delay2' */
    VCU_DW.UnitDelay2_DSTATE_n = VCU_B.Counter_j;

    /* Update for Memory: '<S173>/Memory' */
    VCU_DW.Memory_PreviousInput_ao = VCU_B.Logic_il[0];

    /* Update for Memory: '<S174>/Memory' */
    VCU_DW.Memory_PreviousInput_m = VCU_B.Logic_l[0];

    /* Update for UnitDelay: '<S142>/Delay Input1'
     *
     * Block description for '<S142>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_d = VCU_B.Product;

    /* Update for UnitDelay: '<S179>/Delay Input1'
     *
     * Block description for '<S179>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_fa = VCU_B.LogicalOperator_k;

    /* Update for UnitDelay: '<S180>/Delay Input1'
     *
     * Block description for '<S180>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_l = VCU_B.DataTypeConversion3;

    /* Update for UnitDelay: '<S144>/Unit Delay' */
    VCU_DW.UnitDelay_DSTATE_f = VCU_B.Logic_l[0];

    /* Update for UnitDelay: '<S145>/Unit Delay1' */
    VCU_DW.UnitDelay1_DSTATE_i = VCU_B.Counter_a;

    /* Update for Memory: '<S182>/Memory' */
    VCU_DW.Memory_PreviousInput_e = VCU_B.Logic_p[0];

    /* Update for UnitDelay: '<S181>/Delay Input1'
     *
     * Block description for '<S181>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_b = VCU_B.DataTypeConversion3;

    /* Update for Memory: '<S183>/Memory' */
    VCU_DW.Memory_PreviousInput_n = VCU_B.Logic_k[0];

    /* Update for Memory: '<S143>/Memory' */
    VCU_DW.Memory_PreviousInput_i = VCU_B.RelationalOperator1_d;

    /* Update for UnitDelay: '<S171>/Delay Input1'
     *
     * Block description for '<S171>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_n = VCU_B.DataTypeConversion3;
  } else {
    if (VCU_DW.LC_jr19_MODE) {
      /* Disable for Enabled SubSystem: '<S143>/Clutch Pos calc' */
      if (VCU_DW.ClutchPoscalc_MODE) {
        /* Disable for MinMax: '<S141>/MinMax' incorporates:
         *  Outport: '<S151>/x_clutch_LC'
         */
        VCU_B.Memory1 = 12.5;
        VCU_DW.ClutchPoscalc_MODE = false;
      }

      /* End of Disable for SubSystem: '<S143>/Clutch Pos calc' */
      VCU_DW.LC_jr19_MODE = false;
    }
  }

  /* End of Outputs for SubSystem: '<S7>/LC_jr19' */

  /* RelationalOperator: '<S134>/Compare' incorporates:
   *  Constant: '<S134>/Constant'
   */
  VCU_B.Compare_c = (VCU_B.DataTypeConversion_cg == 1);

  /* RelationalOperator: '<S135>/Compare' incorporates:
   *  Constant: '<S135>/Constant'
   */
  VCU_B.Compare_g = (VCU_B.DataTypeConversion_cg > 3);

  /* Logic: '<S7>/Logical Operator' */
  VCU_B.LogicalOperator = (VCU_B.Compare_c || VCU_B.Compare_g);

  /* Outputs for Enabled SubSystem: '<S7>/semi_auto_jr18' incorporates:
   *  EnablePort: '<S140>/Enable'
   */
  if (VCU_B.LogicalOperator) {
    /* CombinatorialLogic: '<S209>/Logic' incorporates:
     *  Delay: '<S193>/Delay'
     *  Memory: '<S209>/Memory'
     *  UnitDelay: '<S193>/Unit Delay1'
     */
    VCU_B.UnitDelay1 = VCU_DW.UnitDelay1_DSTATE;
    VCU_B.Delay = VCU_DW.Delay_DSTATE[0];
    VCU_B.Memory = VCU_DW.Memory_PreviousInput;
    rowIdx = VCU_B.UnitDelay1;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Delay);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory);
    VCU_B.Logic[0U] = VCU_ConstP.pooled33[(uint32_T)rowIdx];
    VCU_B.Logic[1U] = VCU_ConstP.pooled33[rowIdx + 8U];

    /* DataTypeConversion: '<S140>/Data Type Conversion10' */
    VCU_B.VOVG_ShiftDown_m = VCU_B.Logic[0];

    /* UnitDelay: '<S206>/Delay Input1'
     *
     * Block description for '<S206>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1 = VCU_DW.DelayInput1_DSTATE;

    /* CombinatorialLogic: '<S207>/Logic' incorporates:
     *  Delay: '<S193>/Delay1'
     *  Memory: '<S207>/Memory'
     *  RelationalOperator: '<S206>/FixPt Relational Operator'
     */
    VCU_B.FixPtRelationalOperator = (VCU_B.STW_shift_down_request > VCU_B.Uk1);
    VCU_B.Delay1 = VCU_DW.Delay1_DSTATE;
    VCU_B.Memory_d = VCU_DW.Memory_PreviousInput_l;
    rowIdx = VCU_B.FixPtRelationalOperator;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Delay1);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_d);
    VCU_B.Logic_i[0U] = VCU_ConstP.pooled33[(uint32_T)rowIdx];
    VCU_B.Logic_i[1U] = VCU_ConstP.pooled33[rowIdx + 8U];

    /* UnitDelay: '<S193>/Unit Delay4' */
    VCU_B.UnitDelay4 = VCU_DW.UnitDelay4_DSTATE;

    /* Gain: '<S210>/Gain' */
    VCU_B.Gain = 2.0 * VCU_B.DataTypeConversion1;

    /* RelationalOperator: '<S210>/Relational Operator' incorporates:
     *  Constant: '<S210>/Constant'
     */
    VCU_B.RelationalOperator = (VCU_B.Gain > 169.0);

    /* RelationalOperator: '<S210>/Relational Operator1' incorporates:
     *  Constant: '<S210>/Constant1'
     */
    VCU_B.RelationalOperator1 = (VCU_B.Gain > 228.0);

    /* RelationalOperator: '<S210>/Relational Operator2' incorporates:
     *  Constant: '<S210>/Constant2'
     */
    VCU_B.RelationalOperator2 = (VCU_B.Gain > 325.0);

    /* Sum: '<S210>/Add' */
    VCU_B.Add_c = (uint8_T)(((uint32_T)VCU_B.RelationalOperator +
      VCU_B.RelationalOperator1) + VCU_B.RelationalOperator2);

    /* RelationalOperator: '<S200>/Compare' incorporates:
     *  Constant: '<S200>/Constant'
     */
    VCU_B.Compare_b = (VCU_B.x_clutch_STW >= 15.0);

    /* Switch: '<S193>/Switch' incorporates:
     *  Constant: '<S193>/Constant'
     *  Constant: '<S193>/Constant1'
     */
    if (VCU_B.Compare_b) {
      VCU_B.Switch = 1.0;
    } else {
      VCU_B.Switch = 2.0;
    }

    /* End of Switch: '<S193>/Switch' */

    /* RelationalOperator: '<S193>/Relational Operator' */
    VCU_B.LessthanNeutral = (VCU_B.Add_c < VCU_B.Switch);

    /* UnitDelay: '<S194>/Unit Delay' */
    VCU_B.UnitDelay = VCU_DW.UnitDelay_DSTATE;

    /* UnitDelay: '<S193>/Unit Delay2' */
    VCU_B.Timeout = VCU_DW.UnitDelay2_DSTATE;

    /* RelationalOperator: '<S201>/Compare' incorporates:
     *  Constant: '<S201>/Constant'
     */
    VCU_B.Compare_f = (VCU_B.DataTypeConversion2 > 5000.0);

    /* RelationalOperator: '<S202>/Compare' incorporates:
     *  Constant: '<S202>/Constant'
     */
    VCU_B.Compare_n = (VCU_B.Add_c == 2);

    /* Logic: '<S193>/Logical Operator1' */
    VCU_B.RPMcheckgear21 = (VCU_B.Compare_n && VCU_B.Compare_f);

    /* RelationalOperator: '<S203>/Compare' incorporates:
     *  Constant: '<S203>/Constant'
     */
    VCU_B.Compare_l = (VCU_B.DataTypeConversion2 > 5300.0);

    /* RelationalOperator: '<S204>/Compare' incorporates:
     *  Constant: '<S204>/Constant'
     */
    VCU_B.Compare_h = (VCU_B.Add_c == 3);

    /* Logic: '<S193>/Logical Operator2' */
    VCU_B.RPMcheckgear31 = (VCU_B.Compare_l && VCU_B.Compare_h);

    /* CombinatorialLogic: '<S208>/Logic' incorporates:
     *  Logic: '<S193>/Logical Operator'
     *  Memory: '<S208>/Memory'
     */
    VCU_B.LogicalOperator_d = (VCU_B.UnitDelay4 || VCU_B.LessthanNeutral ||
      VCU_B.UnitDelay || VCU_B.Timeout || VCU_B.RPMcheckgear21 ||
      VCU_B.RPMcheckgear31);
    VCU_B.Memory_l = VCU_DW.Memory_PreviousInput_a;
    tmp = VCU_B.Logic_i[0];
    rowIdx = tmp;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator_d);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_l);
    VCU_B.Logic_iy[0U] = VCU_ConstP.pooled33[(uint32_T)rowIdx];
    VCU_B.Logic_iy[1U] = VCU_ConstP.pooled33[rowIdx + 8U];

    /* UnitDelay: '<S214>/Delay Input1'
     *
     * Block description for '<S214>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_i = VCU_DW.DelayInput1_DSTATE_g;

    /* CombinatorialLogic: '<S217>/Logic' incorporates:
     *  RelationalOperator: '<S214>/FixPt Relational Operator'
     */
    VCU_B.FixPtRelationalOperator_c = (VCU_B.STW_shift_up_request > VCU_B.Uk1_i);

    /* Gain: '<S219>/Gain' */
    VCU_B.Gain_m = 2.0 * VCU_B.DataTypeConversion1;

    /* RelationalOperator: '<S219>/Relational Operator' incorporates:
     *  Constant: '<S219>/Constant'
     */
    VCU_B.RelationalOperator_d = (VCU_B.Gain_m > 169.0);

    /* RelationalOperator: '<S219>/Relational Operator1' incorporates:
     *  Constant: '<S219>/Constant1'
     */
    VCU_B.RelationalOperator1_a = (VCU_B.Gain_m > 269.0);

    /* RelationalOperator: '<S219>/Relational Operator2' incorporates:
     *  Constant: '<S219>/Constant2'
     */
    VCU_B.RelationalOperator2_d = (VCU_B.Gain_m > 360.0);

    /* Sum: '<S219>/Add' */
    VCU_B.Add_j = (uint8_T)(((uint32_T)VCU_B.RelationalOperator_d +
      VCU_B.RelationalOperator1_a) + VCU_B.RelationalOperator2_d);

    /* UnitDelay: '<S215>/Delay Input1'
     *
     * Block description for '<S215>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_b = VCU_DW.DelayInput1_DSTATE_ga;

    /* RelationalOperator: '<S215>/FixPt Relational Operator' */
    VCU_B.FixPtRelationalOperator_m = (VCU_B.Add_j > VCU_B.Uk1_b);

    /* RelationalOperator: '<S211>/Compare' incorporates:
     *  Constant: '<S211>/Constant'
     */
    VCU_B.Compare_ha = (VCU_B.Add_j >= 3);

    /* UnitDelay: '<S193>/Unit Delay' */
    VCU_B.UnitDelay_p = VCU_DW.UnitDelay_DSTATE_b;

    /* UnitDelay: '<S194>/Unit Delay1' */
    VCU_B.Timeout_i = VCU_DW.UnitDelay1_DSTATE_k;

    /* RelationalOperator: '<S213>/Compare' incorporates:
     *  Constant: '<S213>/Constant'
     */
    VCU_B.Compare_e = (VCU_B.Add_j == 0);

    /* RelationalOperator: '<S212>/Compare' incorporates:
     *  Constant: '<S212>/Constant'
     */
    VCU_B.Compare_a = (VCU_B.x_clutch_STW < 15.0);

    /* Logic: '<S194>/Logical Operator1' */
    VCU_B.FailSafefirstgear = (VCU_B.Compare_e && VCU_B.Compare_a);

    /* CombinatorialLogic: '<S217>/Logic' incorporates:
     *  Logic: '<S194>/Logical Operator'
     *  Memory: '<S217>/Memory'
     */
    VCU_B.LogicalOperator_i = (VCU_B.FixPtRelationalOperator_m ||
      VCU_B.Compare_ha || VCU_B.UnitDelay_p || VCU_B.Timeout_i ||
      VCU_B.FailSafefirstgear);
    VCU_B.Memory_a = VCU_DW.Memory_PreviousInput_al;
    rowIdx = VCU_B.FixPtRelationalOperator_c;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator_i);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_a);
    VCU_B.Logic_iz[0U] = VCU_ConstP.pooled33[(uint32_T)rowIdx];
    VCU_B.Logic_iz[1U] = VCU_ConstP.pooled33[rowIdx + 8U];

    /* CombinatorialLogic: '<S218>/Logic' incorporates:
     *  S-Function (sdspcount2): '<S194>/Counter1'
     */
    VCU_B.Counter1 = false;

    /* S-Function (sdspcount2): '<S194>/Counter1' */
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
      /* CombinatorialLogic: '<S218>/Logic' */
      VCU_B.Counter1 = true;
    }

    /* UnitDelay: '<S216>/Delay Input1'
     *
     * Block description for '<S216>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_m = VCU_DW.DelayInput1_DSTATE_f;

    /* RelationalOperator: '<S216>/FixPt Relational Operator' */
    VCU_B.FixPtRelationalOperator_b = (VCU_B.Add_j > VCU_B.Uk1_m);

    /* CombinatorialLogic: '<S218>/Logic' incorporates:
     *  Logic: '<S194>/Logical Operator2'
     *  Memory: '<S218>/Memory'
     */
    VCU_B.LogicalOperator2 = (VCU_B.LogicalOperator_i ||
      VCU_B.FixPtRelationalOperator_b);
    VCU_B.Memory_g = VCU_DW.Memory_PreviousInput_k;
    rowIdx = VCU_B.Counter1;
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.LogicalOperator2);
    rowIdx = (int32_T)(((uint32_T)rowIdx << 1) + VCU_B.Memory_g);
    VCU_B.Logic_e[0U] = VCU_ConstP.pooled33[(uint32_T)rowIdx];
    VCU_B.Logic_e[1U] = VCU_ConstP.pooled33[rowIdx + 8U];

    /* DataTypeConversion: '<S140>/Data Type Conversion11' */
    VCU_B.Ignition_Cut_o = VCU_B.Logic_e[0];

    /* S-Function (sdspcount2): '<S193>/Counter' */
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

    /* End of S-Function (sdspcount2): '<S193>/Counter' */

    /* S-Function (sdspcount2): '<S194>/Counter' */
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

    /* End of S-Function (sdspcount2): '<S194>/Counter' */

    /* DataTypeConversion: '<S140>/Data Type Conversion8' */
    VCU_B.VOVG_ShiftUp_k = VCU_B.Logic_iz[0];

    /* UnitDelay: '<S205>/Delay Input1'
     *
     * Block description for '<S205>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_B.Uk1_f = VCU_DW.DelayInput1_DSTATE_p;

    /* RelationalOperator: '<S205>/FixPt Relational Operator' */
    VCU_B.FixPtRelationalOperator_d = (VCU_B.Add_c < VCU_B.Uk1_f);

    /* Switch: '<S192>/Switch' */
    if (VCU_B.Logic_i[0]) {
      /* MinMax: '<S192>/MinMax' incorporates:
       *  Constant: '<S192>/Constant'
       */
      VCU_B.Switch_g = 20.0;
    } else {
      /* MinMax: '<S192>/MinMax' incorporates:
       *  Constant: '<S192>/Constant1'
       */
      VCU_B.Switch_g = 0.0;
    }

    /* End of Switch: '<S192>/Switch' */

    /* MinMax: '<S192>/MinMax' */
    if ((VCU_B.x_clutch_STW > VCU_B.Switch_g) || rtIsNaN(VCU_B.Switch_g)) {
      VCU_B.MinMax = VCU_B.x_clutch_STW;
    } else {
      VCU_B.MinMax = VCU_B.Switch_g;
    }

    if (!(VCU_B.MinMax > 0.0)) {
      VCU_B.MinMax = 0.0;
    }

    /* RelationalOperator: '<S195>/Compare' incorporates:
     *  Constant: '<S195>/Constant'
     */
    VCU_B.Compare_ao = (VCU_B.MinMax > 1.0);

    /* DataTypeConversion: '<S140>/Data Type Conversion12' */
    VCU_B.VOVG_IN_h = VCU_B.Compare_ao;

    /* Sum: '<S192>/Add' */
    VCU_B.Add = VCU_B.MinMax - VCU_B.x_clutch_b;

    /* RelationalOperator: '<S197>/Compare' incorporates:
     *  Constant: '<S197>/Constant'
     */
    VCU_B.Compare_gu = (VCU_B.Add < -0.5);

    /* Lookup_n-D: '<S192>/Duty Cycle MHJ9' */
    VCU_B.DutyCycleMHJ9 = look1_binlxpw(VCU_B.Add, VCU_ConstP.pooled24,
      VCU_ConstP.pooled23, 14U);

    /* Product: '<S192>/Product1' */
    VCU_B.Product1 = VCU_B.DutyCycleMHJ9 * (real_T)VCU_B.Compare_gu;

    /* RelationalOperator: '<S196>/Compare' incorporates:
     *  Constant: '<S196>/Constant'
     */
    VCU_B.Compare_eh = (VCU_B.x_clutch_b > 20.0);

    /* Switch: '<S192>/Switch1' incorporates:
     *  Constant: '<S192>/Constant2'
     *  Constant: '<S192>/Constant3'
     */
    if (VCU_B.Compare_eh) {
      VCU_B.Switch1 = 2.0;
    } else {
      VCU_B.Switch1 = 1.0;
    }

    /* End of Switch: '<S192>/Switch1' */

    /* Product: '<S192>/Product2' */
    VCU_B.Product2 = VCU_B.Product1 * VCU_B.Switch1;

    /* DataTypeConversion: '<S140>/Data Type Conversion15' */
    VCU_B.MHJ9_OUT_d = VCU_B.Product2;

    /* RelationalOperator: '<S198>/Compare' incorporates:
     *  Constant: '<S198>/Constant'
     */
    VCU_B.Compare_m = (VCU_B.Add > 0.0);

    /* Product: '<S192>/Product3' */
    VCU_B.Product3 = VCU_B.DutyCycleMHJ9 * (real_T)VCU_B.Compare_m;

    /* DataTypeConversion: '<S140>/Data Type Conversion14' */
    VCU_B.MHJ9_IN_e = VCU_B.Product3;

    /* RelationalOperator: '<S199>/Compare' incorporates:
     *  Constant: '<S199>/Constant'
     */
    VCU_B.Compare_md = (VCU_B.Add < -20.0);

    /* DataTypeConversion: '<S140>/Data Type Conversion13' */
    VCU_B.VOVG_OUT_j = VCU_B.Compare_md;

    /* DataTypeConversion: '<S140>/Data Type Conversion16' */
    VCU_B.x_clutch_LC_b = 0.0;

    /* DataTypeConversion: '<S140>/Data Type Conversion17' */
    VCU_B.LC_Mdes_b = 0.0;

    /* DataTypeConversion: '<S140>/Data Type Conversion18' */
    VCU_B.LC_Fnr_l = 0.0;

    /* Update for UnitDelay: '<S193>/Unit Delay1' */
    VCU_DW.UnitDelay1_DSTATE = VCU_B.Logic_i[0];

    /* Update for Delay: '<S193>/Delay' */
    for (rowIdx = 0; rowIdx < 19; rowIdx++) {
      VCU_DW.Delay_DSTATE[rowIdx] = VCU_DW.Delay_DSTATE[rowIdx + 1];
    }

    VCU_DW.Delay_DSTATE[19] = VCU_B.LogicalOperator_d;

    /* End of Update for Delay: '<S193>/Delay' */

    /* Update for Memory: '<S209>/Memory' */
    VCU_DW.Memory_PreviousInput = VCU_B.Logic[0];

    /* Update for UnitDelay: '<S206>/Delay Input1'
     *
     * Block description for '<S206>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE = VCU_B.STW_shift_down_request;

    /* Update for Delay: '<S193>/Delay1' */
    VCU_DW.Delay1_DSTATE = VCU_B.LogicalOperator_d;

    /* Update for Memory: '<S207>/Memory' */
    VCU_DW.Memory_PreviousInput_l = VCU_B.Logic_i[0];

    /* Update for UnitDelay: '<S193>/Unit Delay4' */
    VCU_DW.UnitDelay4_DSTATE = VCU_B.FixPtRelationalOperator_d;

    /* Update for UnitDelay: '<S194>/Unit Delay' */
    VCU_DW.UnitDelay_DSTATE = VCU_B.Logic_iz[0];

    /* Update for UnitDelay: '<S193>/Unit Delay2' */
    VCU_DW.UnitDelay2_DSTATE = VCU_B.Counter;

    /* Update for Memory: '<S208>/Memory' */
    VCU_DW.Memory_PreviousInput_a = VCU_B.Logic_iy[0];

    /* Update for UnitDelay: '<S214>/Delay Input1'
     *
     * Block description for '<S214>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_g = VCU_B.STW_shift_up_request;

    /* Update for UnitDelay: '<S215>/Delay Input1'
     *
     * Block description for '<S215>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_ga = VCU_B.Add_j;

    /* Update for UnitDelay: '<S193>/Unit Delay' */
    VCU_DW.UnitDelay_DSTATE_b = VCU_B.Logic_iy[0];

    /* Update for UnitDelay: '<S194>/Unit Delay1' */
    VCU_DW.UnitDelay1_DSTATE_k = VCU_B.Counter_d;

    /* Update for Memory: '<S217>/Memory' */
    VCU_DW.Memory_PreviousInput_al = VCU_B.Logic_iz[0];

    /* Update for UnitDelay: '<S216>/Delay Input1'
     *
     * Block description for '<S216>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_f = VCU_B.Add_j;

    /* Update for Memory: '<S218>/Memory' */
    VCU_DW.Memory_PreviousInput_k = VCU_B.Logic_e[0];

    /* Update for UnitDelay: '<S205>/Delay Input1'
     *
     * Block description for '<S205>/Delay Input1':
     *
     *  Store in Global RAM
     */
    VCU_DW.DelayInput1_DSTATE_p = VCU_B.Add_c;
  }

  /* End of Outputs for SubSystem: '<S7>/semi_auto_jr18' */

  /* RelationalOperator: '<S136>/Compare' incorporates:
   *  Constant: '<S136>/Constant'
   */
  VCU_B.Compare_j = (VCU_B.DataTypeConversion_cg == 2);

  /* Outputs for Enabled SubSystem: '<S7>/driver_jr18' incorporates:
   *  EnablePort: '<S139>/Enable'
   */
  if (VCU_B.Compare_j) {
    /* MinMax: '<S184>/MinMax' */
    if (VCU_B.x_clutch_STW > 0.0) {
      VCU_B.MinMax_l = VCU_B.x_clutch_STW;
    } else {
      VCU_B.MinMax_l = 0.0;
    }

    /* End of MinMax: '<S184>/MinMax' */

    /* RelationalOperator: '<S187>/Compare' incorporates:
     *  Constant: '<S187>/Constant'
     */
    VCU_B.Compare_bd = (VCU_B.MinMax_l > 1.0);

    /* DataTypeConversion: '<S139>/Data Type Conversion12' */
    VCU_B.VOVG_IN_c = VCU_B.Compare_bd;

    /* Sum: '<S184>/Add' */
    VCU_B.Add_l = VCU_B.MinMax_l - VCU_B.x_clutch_b;

    /* RelationalOperator: '<S189>/Compare' incorporates:
     *  Constant: '<S189>/Constant'
     */
    VCU_B.Compare_e5 = (VCU_B.Add_l < -0.5);

    /* Lookup_n-D: '<S184>/Duty Cycle MHJ9' */
    VCU_B.DutyCycleMHJ9_d = look1_binlxpw(VCU_B.Add_l, VCU_ConstP.pooled24,
      VCU_ConstP.pooled23, 14U);

    /* Product: '<S184>/Product1' */
    VCU_B.Product1_p = VCU_B.DutyCycleMHJ9_d * (real_T)VCU_B.Compare_e5;

    /* RelationalOperator: '<S188>/Compare' incorporates:
     *  Constant: '<S188>/Constant'
     */
    VCU_B.Compare_p = (VCU_B.x_clutch_b > 20.0);

    /* Switch: '<S184>/Switch1' incorporates:
     *  Constant: '<S184>/Constant2'
     *  Constant: '<S184>/Constant3'
     */
    if (VCU_B.Compare_p) {
      VCU_B.Switch1_e = 2.0;
    } else {
      VCU_B.Switch1_e = 1.0;
    }

    /* End of Switch: '<S184>/Switch1' */

    /* Product: '<S184>/Product2' */
    VCU_B.Product2_p = VCU_B.Product1_p * VCU_B.Switch1_e;

    /* DataTypeConversion: '<S139>/Data Type Conversion15' */
    VCU_B.MHJ9_OUT_k = VCU_B.Product2_p;

    /* RelationalOperator: '<S190>/Compare' incorporates:
     *  Constant: '<S190>/Constant'
     */
    VCU_B.Compare_gz = (VCU_B.Add_l > 0.0);

    /* Product: '<S184>/Product3' */
    VCU_B.Product3_d = VCU_B.DutyCycleMHJ9_d * (real_T)VCU_B.Compare_gz;

    /* DataTypeConversion: '<S139>/Data Type Conversion14' */
    VCU_B.MHJ9_IN_p = VCU_B.Product3_d;

    /* RelationalOperator: '<S191>/Compare' incorporates:
     *  Constant: '<S191>/Constant'
     */
    VCU_B.Compare_bh = (VCU_B.Add_l < -20.0);

    /* DataTypeConversion: '<S139>/Data Type Conversion13' */
    VCU_B.VOVG_OUT_o = VCU_B.Compare_bh;

    /* RelationalOperator: '<S185>/Compare' incorporates:
     *  Constant: '<S185>/Constant'
     */
    VCU_B.Compare_g5 = (VCU_B.DataTypeConversion3 < 3.0);

    /* Logic: '<S139>/Logical Operator1' */
    VCU_B.LogicalOperator1 = ((VCU_B.STW_shift_up_request != 0.0) &&
      VCU_B.Compare_g5);

    /* DataTypeConversion: '<S139>/Data Type Conversion8' */
    VCU_B.VOVG_ShiftUp_o = VCU_B.LogicalOperator1;

    /* RelationalOperator: '<S186>/Compare' incorporates:
     *  Constant: '<S186>/Constant'
     */
    VCU_B.Compare_mz = (VCU_B.DataTypeConversion3 >= 0.0);

    /* Logic: '<S139>/Logical Operator' */
    VCU_B.LogicalOperator_e = (VCU_B.Compare_mz && (VCU_B.STW_shift_down_request
      != 0.0));

    /* DataTypeConversion: '<S139>/Data Type Conversion10' */
    VCU_B.VOVG_ShiftDown_f = VCU_B.LogicalOperator_e;

    /* DataTypeConversion: '<S139>/Data Type Conversion11' */
    VCU_B.Ignition_Cut_h = 0.0;

    /* DataTypeConversion: '<S139>/Data Type Conversion16' */
    VCU_B.x_clutch_LC_i = 0.0;

    /* DataTypeConversion: '<S139>/Data Type Conversion17' */
    VCU_B.LC_Mdes_f = 0.0;

    /* DataTypeConversion: '<S139>/Data Type Conversion18' */
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
    VCU_B.VOVG_ShiftUp = VCU_B.VOVG_ShiftUp_d;
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
    VCU_B.LC_Fnr = VCU_B.LC_Fnr_e;
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
    VCU_B.VOVG_ShiftDown = VCU_B.VOVG_ShiftDown_i;
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
    VCU_B.Ignition_Cut = VCU_B.Ignition_Cut_g;
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
    VCU_B.VOVG_IN = VCU_B.VOVG_IN_b;
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
    VCU_B.VOVG_OUT = VCU_B.VOVG_OUT_i;
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
    VCU_B.MHJ9_IN = VCU_B.MHJ9_IN_m;
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
    VCU_B.MHJ9_OUT = VCU_B.MHJ9_OUT_p;
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
    VCU_B.x_clutch_LC = VCU_B.x_clutch_LC_n;
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
    VCU_B.LC_Mdes = VCU_B.LC_Mdes_bl;
    break;

   default:
    VCU_B.LC_Mdes = VCU_B.LC_Mdes_b;
    break;
  }

  /* End of MultiPortSwitch: '<S7>/Multiport Switch' */

  /* MultiPortSwitch: '<S7>/Multiport Switch1' */
  if (VCU_B.DataTypeConversion_cg == 1) {
    VCU_B.LC_active_bit = VCU_B.LogicalOperator_a;
    VCU_B.LC_ready_bit = VCU_B.RelationalOperator_l;
  } else {
    VCU_B.LC_active_bit = VCU_ConstB.LC_active_bit;
    VCU_B.LC_ready_bit = VCU_ConstB.LC_ready_bit;
  }

  /* End of MultiPortSwitch: '<S7>/Multiport Switch1' */
}
