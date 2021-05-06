/* 
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * 
 * File: Subsystem_Transmission.c
 *  
 * Code generated for Simulink model : VCU.
 * Model version      : 1.300
 * Simulink Coder version    : 8.14 (R2018a) 06-Feb-2018
 * TLC version       : 8.14 (Feb 22 2018)
 * C/C++ source code generated on  : Thu Oct 22 19:30:55 2020
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
/* InitializeConditions for S-Function (sdspcount2): '<S144>/Counter1' */
/*@>25049*/VCU_DW./*@>26b06*/Counter1_Count_m/*@>73c6*/ = /*@>26ad2*/0U;
/* InitializeConditions for S-Function (sdspcount2): '<S143>/Counter' */
/*@>2504f*/VCU_DW./*@>26b09*/Counter_Count_b/*@>73d2*/ = /*@>26ad5*/0U;
/* InitializeConditions for S-Function (sdspcount2): '<S144>/Counter' */
/*@>25055*/VCU_DW./*@>26b0c*/Counter_Count_n/*@>73de*/ = /*@>26ad8*/0U;
/* SystemInitialize for Enabled SubSystem: '<S142>/Clutch Pos calc' */
/* SystemInitialize for MinMax: '<S140>/MinMax' incorporates:
 *  Outport: '<S150>/x_clutch_LC'
 */
/*@>23e44*/VCU_B./*@>26b03*/Memory1/*@>73ea*/ = /*@>1f553*/12.5;
/* End of SystemInitialize for SubSystem: '<S142>/Clutch Pos calc' */
/* End of SystemInitialize for SubSystem: '<S7>/LC_jr19' */

/* SystemInitialize for Enabled SubSystem: '<S7>/semi_auto_jr18' */
/* InitializeConditions for S-Function (sdspcount2): '<S193>/Counter1' */
/*@>2505b*/VCU_DW./*@>26b0f*/Counter1_Count/*@>73f6*/ = /*@>26adb*/0U;
/* InitializeConditions for S-Function (sdspcount2): '<S192>/Counter' */
/*@>25061*/VCU_DW./*@>26b12*/Counter_Count/*@>7402*/ = /*@>26ade*/0U;
/* InitializeConditions for S-Function (sdspcount2): '<S193>/Counter' */
/*@>25067*/VCU_DW./*@>26b15*/Counter_Count_i/*@>740e*/ = /*@>26ae1*/0U;
/* End of SystemInitialize for SubSystem: '<S7>/semi_auto_jr18' */




    
  



          }
    
  



       
    
  

          /* Output and update for atomic system: '<Root>/Transmission' */
      
              
  
        void FUNC_Transmission(void)
  {
  
                      
      
int32_T rowIdx;
boolean_T tmp;
real_T tmp_0;

      
      
  



                          
      
  



                                /* DataTypeConversion: '<S7>/Data Type Conversion' */
/*@>2021e*/tmp_0/*@>20220*/ = /*@>22966*/floor(/*@>23e4a*/VCU_B./*@>27add*/STW_transmission_mode);
/*@>2023e*/if (/*@>22968*/rtIsNaN(/*@>20222*/tmp_0)/*@>2022c*/ || /*@>2296a*/rtIsInf(/*@>20227*/tmp_0)) {
    /*@>2022f*/tmp_0/*@>20231*/ = /*@>2022e*/0.0;
} else {
    /*@>2023a*/tmp_0/*@>2023c*/ = /*@>2296c*/fmod(/*@>20233*/tmp_0, /*@>20237*/256.0);
}
/*@>23e50*/VCU_B./*@>27ae0*/DataTypeConversion_cg/*@>741b*/ = /*@>203f3*/(int8_T)(/*@>20245*/tmp_0/*@>20248*/ < /*@>20244*/0.0/*@>20248*/ ? (int32_T)/*@>2025a*/(int8_T)-/*@<20259*//*@>2024e*/(int8_T)/*@>2025c*/(uint8_T)-/*@<2024c*//*@>20249*/tmp_0 : (int32_T)/*@>20254*/(int8_T)/*@>2025f*/(uint8_T)/*@>20250*/tmp_0);
/* End of DataTypeConversion: '<S7>/Data Type Conversion' */

/* RelationalOperator: '<S136>/Compare' incorporates:
 *  Constant: '<S136>/Constant'
 */
/*@>23e56*/VCU_B./*@>27ae3*/Compare/*@>741f*/ = (/*@>23e5c*/VCU_B./*@>27ae6*/DataTypeConversion_cg/*@>741e*/ == /*@>1fd72*/3);
/* Outputs for Enabled SubSystem: '<S7>/LC_jr19' incorporates:
 *  EnablePort: '<S137>/Enable'
 */
/*@>7421*/if (/*@>23e62*/VCU_B./*@>27ae9*/Compare) {
    /*@>7424*/if (!/*@<7423*//*@>25073*/VCU_DW./*@>2836b*/LC_jr19_MODE) {
        /*@>2507f*/VCU_DW./*@>28371*/LC_jr19_MODE/*@>7426*/ = /*@>1f712*/true;
    }
    /* CombinatorialLogic: '<S174>/Logic' incorporates:
 *  Delay: '<S143>/Delay'
 *  Memory: '<S174>/Memory'
 *  UnitDelay: '<S143>/Unit Delay1'
 */
    /*@>23e6e*/VCU_B./*@>27aef*/UnitDelay1_h/*@>7c03*/ = /*@>25085*/VCU_DW./*@>28374*/UnitDelay1_DSTATE_d;
    /*@>23e80*/VCU_B./*@>27af8*/Delay_f/*@>7c11*/ = /*@>25097*/VCU_DW./*@>2837d*/Delay_DSTATE_i/*@>23708*/[/*@>23705*/0];
    /*@>23e92*/VCU_B./*@>27b01*/Memory_k/*@>75b9*/ = /*@>2509d*/VCU_DW./*@>28380*/Memory_PreviousInput_c;
    /*@>1fe14*/rowIdx/*@>1d740*/ = /*@>23eaa*/VCU_B./*@>27b0d*/UnitDelay1_h;
    /*@>1fe18*/rowIdx/*@>1d767*/ = /*@>20426*/(int32_T)((/*@>20423*/(uint32_T)/*@>1fe1a*/rowIdx/*@>20216*/ << /*@>1fe1c*/1)/*@>20214*/ + /*@>23eb6*/VCU_B./*@>27b13*/Delay_f);
    /*@>1fe1f*/rowIdx/*@>1d78e*/ = /*@>20435*/(int32_T)((/*@>20432*/(uint32_T)/*@>1fe21*/rowIdx/*@>2020c*/ << /*@>1fe23*/1)/*@>2020a*/ + /*@>23ec2*/VCU_B./*@>27b19*/Memory_k);
    /*@>23eda*/VCU_B./*@>27b25*/Logic_a/*@>1d7a4*/[/*@>1fe28*/0U]/*@>1d7a3*/ = /*@>24f22*/VCU_ConstP./*@>2831a*/pooled32/*@>23714*/[/*@>2370f*/(uint32_T)/*@>23711*/rowIdx];
    /*@>23eec*/VCU_B./*@>27b2e*/Logic_a/*@>1d7b7*/[/*@>1fe2d*/1U]/*@>1d7b6*/ = /*@>24f28*/VCU_ConstP./*@>2831d*/pooled32/*@>2371d*/[/*@>23719*/rowIdx/*@>23716*/ + /*@>2371a*/8U];
    /* DataTypeConversion: '<S137>/Data Type Conversion1' */
    /*@>23efe*/VCU_B./*@>27b37*/VOVG_ShiftDown_i/*@>75bd*/ = /*@>23f04*/VCU_B./*@>27b3a*/Logic_a/*@>23722*/[/*@>2371f*/0];
    /* UnitDelay: '<S171>/Delay Input1'
 *
 * Block description for '<S171>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>23f28*/VCU_B./*@>27b4c*/Uk1_o/*@>7c6d*/ = /*@>250b5*/VCU_DW./*@>2838c*/DelayInput1_DSTATE_a;
    /* CombinatorialLogic: '<S172>/Logic' incorporates:
 *  RelationalOperator: '<S171>/FixPt Relational Operator'
 */
    /*@>23f64*/VCU_B./*@>27b6a*/FixPtRelationalOperator_l/*@>75c2*/ = (/*@>23f6a*/VCU_B./*@>27b6d*/STW_shift_down_request/*@>75c1*/ > /*@>23f70*/VCU_B./*@>27b70*/Uk1_o);
    /* UnitDelay: '<S143>/Unit Delay4' */
    /*@>23f88*/VCU_B./*@>27b7c*/UnitDelay4_b/*@>7c79*/ = /*@>250bb*/VCU_DW./*@>2838f*/UnitDelay4_DSTATE_k;
    /* RelationalOperator: '<S165>/Compare' incorporates:
 *  Constant: '<S165>/Constant'
 */
    /*@>23fa6*/VCU_B./*@>27b8b*/Compare_em/*@>75c7*/ = (/*@>23fac*/VCU_B./*@>27b8e*/x_clutch_STW/*@>75c6*/ >= /*@>1fd7a*/15.0);
    /* Switch: '<S143>/Switch' incorporates:
 *  Constant: '<S143>/Constant'
 *  Constant: '<S143>/Constant1'
 */
    /*@>1d675*/if (/*@>24000*/VCU_B./*@>27bb8*/Compare_em) {
        /*@>2401e*/VCU_B./*@>27bc7*/Switch_e/*@>1d678*/ = /*@>1fd7c*/1.0;
    } else {
        /*@>24018*/VCU_B./*@>27bc4*/Switch_e/*@>7c89*/ = /*@>1fd7d*/2.0;
    }
    /* End of Switch: '<S143>/Switch' */

    /* RelationalOperator: '<S143>/Relational Operator' */
    /*@>24090*/VCU_B./*@>27c00*/LessthanNeutral_m/*@>75cc*/ = (/*@>24096*/VCU_B./*@>27c03*/DataTypeConversion3/*@>75cb*/ < /*@>2409c*/VCU_B./*@>27c06*/Switch_e);
    /* UnitDelay: '<S144>/Unit Delay' */
    /*@>240b4*/VCU_B./*@>27c12*/UnitDelay_j/*@>7c9a*/ = /*@>250d3*/VCU_DW./*@>2839b*/UnitDelay_DSTATE_m;
    /* UnitDelay: '<S143>/Unit Delay2' */
    /*@>240cc*/VCU_B./*@>27c1e*/Timeout_n/*@>7ca6*/ = /*@>250d9*/VCU_DW./*@>2839e*/UnitDelay2_DSTATE_n;
    /* RelationalOperator: '<S167>/Compare' incorporates:
 *  Constant: '<S167>/Constant'
 */
    /*@>24114*/VCU_B./*@>27c42*/Compare_nv/*@>75d2*/ = (/*@>2411a*/VCU_B./*@>27c45*/DataTypeConversion3/*@>75d1*/ == /*@>1fd81*/2.0);
    /* RelationalOperator: '<S166>/Compare' incorporates:
 *  Constant: '<S166>/Constant'
 */
    /*@>24126*/VCU_B./*@>27c4b*/Compare_ad/*@>75d6*/ = (/*@>2412c*/VCU_B./*@>27c4e*/DataTypeConversion2/*@>75d5*/ > /*@>1fd82*/5550.0);
    /* Logic: '<S143>/Logical Operator1' */
    /*@>24150*/VCU_B./*@>27c60*/RPMcheckgear21_n/*@>75dc*/ = (/*@>24156*/VCU_B./*@>27c63*/Compare_nv/*@>75db*/ && /*@>2415c*/VCU_B./*@>27c66*/Compare_ad);
    /* RelationalOperator: '<S168>/Compare' incorporates:
 *  Constant: '<S168>/Constant'
 */
    /*@>241a4*/VCU_B./*@>27c8a*/Compare_ex/*@>75e0*/ = (/*@>241aa*/VCU_B./*@>27c8d*/DataTypeConversion2/*@>75df*/ > /*@>1fd84*/6200.0);
    /* RelationalOperator: '<S169>/Compare' incorporates:
 *  Constant: '<S169>/Constant'
 */
    /*@>241c2*/VCU_B./*@>27c99*/Compare_gl/*@>75e4*/ = (/*@>241c8*/VCU_B./*@>27c9c*/DataTypeConversion3/*@>75e3*/ == /*@>1fd85*/3.0);
    /* Logic: '<S143>/Logical Operator2' */
    /*@>241f2*/VCU_B./*@>27cb1*/RPMcheckgear31_g/*@>75ea*/ = (/*@>241f8*/VCU_B./*@>27cb4*/Compare_ex/*@>75e9*/ && /*@>241fe*/VCU_B./*@>27cb7*/Compare_gl);
    /* CombinatorialLogic: '<S172>/Logic' incorporates:
 *  Logic: '<S143>/Logical Operator'
 *  Memory: '<S172>/Memory'
 */
    /*@>2424c*/VCU_B./*@>27cde*/LogicalOperator_c/*@>75fc*/ = (/*@>24252*/VCU_B./*@>27ce1*/UnitDelay4_b/*@>75ef*/ || /*@>24258*/VCU_B./*@>27ce4*/LessthanNeutral_m/*@>75f2*/ || /*@>2425e*/VCU_B./*@>27ce7*/UnitDelay_j/*@>75f5*/ || /*@>24264*/VCU_B./*@>27cea*/Timeout_n/*@>75f8*/ || /*@>2426a*/VCU_B./*@>27ced*/RPMcheckgear21_n/*@>75fb*/ || /*@>24270*/VCU_B./*@>27cf0*/RPMcheckgear31_g);
    /*@>2428e*/VCU_B./*@>27cff*/Memory_kz/*@>75fe*/ = /*@>250e5*/VCU_DW./*@>283a4*/Memory_PreviousInput_ao;
    /*@>1fe68*/rowIdx/*@>1d935*/ = /*@>242b2*/VCU_B./*@>27d11*/FixPtRelationalOperator_l;
    /*@>1fe6c*/rowIdx/*@>1d95c*/ = /*@>2055d*/(int32_T)((/*@>2055a*/(uint32_T)/*@>1fe6e*/rowIdx/*@>20201*/ << /*@>1fe70*/1)/*@>201ff*/ + /*@>2430c*/VCU_B./*@>27d3e*/LogicalOperator_c);
    /*@>1fe73*/rowIdx/*@>1d983*/ = /*@>2057c*/(int32_T)((/*@>20579*/(uint32_T)/*@>1fe75*/rowIdx/*@>201f7*/ << /*@>1fe77*/1)/*@>201f5*/ + /*@>24330*/VCU_B./*@>27d50*/Memory_kz);
    /*@>2434e*/VCU_B./*@>27d5f*/Logic_il/*@>1d999*/[/*@>1fe7c*/0U]/*@>1d998*/ = /*@>24f52*/VCU_ConstP./*@>28332*/pooled32/*@>2374e*/[/*@>23749*/(uint32_T)/*@>2374b*/rowIdx];
    /*@>2439c*/VCU_B./*@>27d86*/Logic_il/*@>1d9ac*/[/*@>1fe81*/1U]/*@>1d9ab*/ = /*@>24f58*/VCU_ConstP./*@>28335*/pooled32/*@>23757*/[/*@>23753*/rowIdx/*@>23750*/ + /*@>23754*/8U];
    /* CombinatorialLogic: '<S173>/Logic' incorporates:
 *  Memory: '<S173>/Memory'
 */
    /*@>243b4*/VCU_B./*@>27d92*/Memory_ac/*@>7601*/ = /*@>250eb*/VCU_DW./*@>283a7*/Memory_PreviousInput_m;
    /*@>1ff6a*/tmp/*@>1d9c7*/ = /*@>243de*/VCU_B./*@>27da7*/Logic_il/*@>2375c*/[/*@>23759*/0];
    /*@>1fe85*/rowIdx/*@>1d9de*/ = /*@>1ff6c*/tmp;
    /*@>1fe89*/rowIdx/*@>1da07*/ = /*@>205c7*/(int32_T)((/*@>205c4*/(uint32_T)/*@>1fe8b*/rowIdx/*@>201ec*/ << /*@>1fe8d*/1)/*@>201ea*/ + /*@>2442c*/VCU_B./*@>27dce*/LogicalOperator_c);
    /*@>1fe90*/rowIdx/*@>1da30*/ = /*@>205d8*/(int32_T)((/*@>205d5*/(uint32_T)/*@>1fe92*/rowIdx/*@>201e2*/ << /*@>1fe94*/1)/*@>201e0*/ + /*@>2444a*/VCU_B./*@>27ddd*/Memory_ac);
    /*@>24492*/VCU_B./*@>27e01*/Logic_l/*@>1da46*/[/*@>1fe99*/0U]/*@>1da45*/ = /*@>24f5e*/VCU_ConstP./*@>28338*/pooled32/*@>23763*/[/*@>2375e*/(uint32_T)/*@>23760*/rowIdx];
    /*@>244aa*/VCU_B./*@>27e0d*/Logic_l/*@>1da59*/[/*@>1fe9e*/1U]/*@>1da58*/ = /*@>24f64*/VCU_ConstP./*@>2833b*/pooled32/*@>2376c*/[/*@>23768*/rowIdx/*@>23765*/ + /*@>23769*/8U];
    /* Sum: '<S152>/Add1' incorporates:
 *  Constant: '<S152>/Constant13'
 */
    /*@>244c2*/VCU_B./*@>27e19*/Add1/*@>a6e4*/ = /*@>1fd98*/2.0/*@>a6e1*/ - /*@>244c8*/VCU_B./*@>27e1c*/DataTypeConversion3;
    /* Switch: '<S152>/Switch3' */
    /*@>244ec*/VCU_B./*@>27e2e*/Switch3/*@>7d59*/ = (/*@>244f2*/VCU_B./*@>27e31*/Add1/*@>7d53*/ >= /*@>1fd99*/0.0);
    /* Switch: '<S152>/Switch4' */
    /*@>2451c*/VCU_B./*@>27e46*/Switch4/*@>7d71*/ = (/*@>24522*/VCU_B./*@>27e49*/Gain4/*@>7d6b*/ > /*@>1fd9a*/65.0);
    /* Logic: '<S152>/Logical Operator3' */
    /*@>24552*/VCU_B./*@>27e61*/LogicalOperator3/*@>760f*/ = ((/*@>24558*/VCU_B./*@>27e64*/Switch3/*@>201d5*/ != /*@>201d3*/0.0)/*@>760e*/ && (/*@>2455e*/VCU_B./*@>27e67*/Switch4/*@>201d9*/ != /*@>201d7*/0.0));
    /* Logic: '<S152>/Logical Operator' */
    /*@>2456a*/VCU_B./*@>27e6d*/LogicalOperator_dn/*@>7615*/ = /*@>24570*/VCU_B./*@>27e70*/LogicalOperator3;
    /* Product: '<S142>/Product' */
    /*@>2457c*/VCU_B./*@>27e76*/Product/*@>761c*/ = /*@>20612*/(uint16_T)(/*@>24582*/VCU_B./*@>27e79*/LogicalOperator_dn/*@>27e79*/ ? /*@>20610*/(int32_T)/*@>24588*/VCU_B./*@>27e7c*/LC_dash_bit : /*@>201ce*/0);
    /* UnitDelay: '<S141>/Delay Input1'
 *
 * Block description for '<S141>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>2458e*/VCU_B./*@>27e7f*/Uk1_ix/*@>7d82*/ = /*@>25103*/VCU_DW./*@>283b3*/DelayInput1_DSTATE_d;
    /* RelationalOperator: '<S141>/FixPt Relational Operator' */
    /*@>2459a*/VCU_B./*@>27e85*/FixPtRelationalOperator_k/*@>7621*/ = (/*@>245a0*/VCU_B./*@>27e88*/Product/*@>7620*/ > /*@>245a6*/VCU_B./*@>27e8b*/Uk1_ix);
    /* Logic: '<S137>/Logical Operator' */
    /*@>245b2*/VCU_B./*@>27e91*/LogicalOperator_k/*@>7627*/ = (/*@>245b8*/VCU_B./*@>27e94*/FixPtRelationalOperator_k/*@>7626*/ || (/*@>245be*/VCU_B./*@>27e97*/STW_shift_up_request/*@>201cc*/ != /*@>201ca*/0.0));
    /* UnitDelay: '<S178>/Delay Input1'
 *
 * Block description for '<S178>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>245ca*/VCU_B./*@>27e9d*/Uk1_fm/*@>7d8e*/ = /*@>25109*/VCU_DW./*@>283b6*/DelayInput1_DSTATE_fa;
    /* CombinatorialLogic: '<S181>/Logic' incorporates:
 *  RelationalOperator: '<S178>/FixPt Relational Operator'
 */
    /*@>245d6*/VCU_B./*@>27ea3*/FixPtRelationalOperator_o/*@>762c*/ = (/*@>20639*/(int32_T)/*@>245dc*/VCU_B./*@>27ea6*/LogicalOperator_k/*@>762b*/ > /*@>2063b*/(int32_T)/*@>245e2*/VCU_B./*@>27ea9*/Uk1_fm);
    /* UnitDelay: '<S179>/Delay Input1'
 *
 * Block description for '<S179>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>245ee*/VCU_B./*@>27eaf*/Uk1_d/*@>7d9a*/ = /*@>25115*/VCU_DW./*@>283bc*/DelayInput1_DSTATE_l;
    /* RelationalOperator: '<S179>/FixPt Relational Operator' */
    /*@>24606*/VCU_B./*@>27ebb*/FixPtRelationalOperator_cf/*@>7631*/ = (/*@>2460c*/VCU_B./*@>27ebe*/DataTypeConversion3/*@>7630*/ > /*@>24612*/VCU_B./*@>27ec1*/Uk1_d);
    /* RelationalOperator: '<S175>/Compare' incorporates:
 *  Constant: '<S175>/Constant'
 */
    /*@>24624*/VCU_B./*@>27eca*/Compare_np/*@>7635*/ = (/*@>2462a*/VCU_B./*@>27ecd*/DataTypeConversion3/*@>7634*/ >= /*@>1fd9c*/3.0);
    /* UnitDelay: '<S143>/Unit Delay' */
    /*@>2463c*/VCU_B./*@>27ed6*/UnitDelay_m/*@>7da6*/ = /*@>2511b*/VCU_DW./*@>283bf*/UnitDelay_DSTATE_f;
    /* UnitDelay: '<S144>/Unit Delay1' */
    /*@>2464e*/VCU_B./*@>27edf*/Timeout_c/*@>7db2*/ = /*@>25121*/VCU_DW./*@>283c2*/UnitDelay1_DSTATE_i;
    /* RelationalOperator: '<S177>/Compare' incorporates:
 *  Constant: '<S177>/Constant'
 */
    /*@>24660*/VCU_B./*@>27ee8*/Compare_lz/*@>763b*/ = (/*@>24666*/VCU_B./*@>27eeb*/DataTypeConversion3/*@>763a*/ == /*@>1fda0*/0.0);
    /* RelationalOperator: '<S176>/Compare' incorporates:
 *  Constant: '<S176>/Constant'
 */
    /*@>24684*/VCU_B./*@>27efa*/Compare_ph/*@>763f*/ = (/*@>2468a*/VCU_B./*@>27efd*/x_clutch_STW/*@>763e*/ < /*@>1fda1*/15.0);
    /* Logic: '<S144>/Logical Operator1' */
    /*@>24696*/VCU_B./*@>27f03*/FailSafefirstgear_l/*@>7645*/ = (/*@>2469c*/VCU_B./*@>27f06*/Compare_lz/*@>7644*/ && /*@>246a2*/VCU_B./*@>27f09*/Compare_ph);
    /* CombinatorialLogic: '<S181>/Logic' incorporates:
 *  Logic: '<S144>/Logical Operator'
 *  Memory: '<S181>/Memory'
 */
    /*@>246ba*/VCU_B./*@>27f15*/LogicalOperator_d0/*@>7654*/ = (/*@>246c0*/VCU_B./*@>27f18*/FixPtRelationalOperator_cf/*@>764a*/ || /*@>246c6*/VCU_B./*@>27f1b*/Compare_np/*@>764d*/ || /*@>246cc*/VCU_B./*@>27f1e*/UnitDelay_m/*@>7650*/ || /*@>246d2*/VCU_B./*@>27f21*/Timeout_c/*@>7653*/ || /*@>246d8*/VCU_B./*@>27f24*/FailSafefirstgear_l);
    /*@>246ea*/VCU_B./*@>27f2d*/Memory_o/*@>7656*/ = /*@>2512d*/VCU_DW./*@>283c8*/Memory_PreviousInput_e;
    /*@>1febe*/rowIdx/*@>1db36*/ = /*@>246f6*/VCU_B./*@>27f33*/FixPtRelationalOperator_o;
    /*@>1fec2*/rowIdx/*@>1db5d*/ = /*@>2068d*/(int32_T)((/*@>2068a*/(uint32_T)/*@>1fec4*/rowIdx/*@>201c6*/ << /*@>1fec6*/1)/*@>201c4*/ + /*@>24702*/VCU_B./*@>27f39*/LogicalOperator_d0);
    /*@>1fec9*/rowIdx/*@>1db84*/ = /*@>2069e*/(int32_T)((/*@>2069b*/(uint32_T)/*@>1fecb*/rowIdx/*@>201bc*/ << /*@>1fecd*/1)/*@>201ba*/ + /*@>24714*/VCU_B./*@>27f42*/Memory_o);
    /*@>24726*/VCU_B./*@>27f4b*/Logic_p/*@>1db9a*/[/*@>1fed2*/0U]/*@>1db99*/ = /*@>24f76*/VCU_ConstP./*@>28344*/pooled32/*@>23788*/[/*@>23783*/(uint32_T)/*@>23785*/rowIdx];
    /*@>2473e*/VCU_B./*@>27f57*/Logic_p/*@>1dbad*/[/*@>1fed7*/1U]/*@>1dbac*/ = /*@>24f7c*/VCU_ConstP./*@>28347*/pooled32/*@>23791*/[/*@>2378d*/rowIdx/*@>2378a*/ + /*@>2378e*/8U];
    /* CombinatorialLogic: '<S182>/Logic' incorporates:
 *  S-Function (sdspcount2): '<S144>/Counter1'
 */
    /*@>24768*/VCU_B./*@>27f6c*/Counter1_a/*@>7e10*/ = /*@>1fafd*/false;
    /* S-Function (sdspcount2): '<S144>/Counter1' */
    /*@>7e14*/if (/*@>24774*/VCU_B./*@>27f72*/LogicalOperator_d0) {
        /*@>25145*/VCU_DW./*@>283d4*/Counter1_Count_m/*@>7e18*/ = /*@>26bcd*/0U;
    }
    /*@>7e2e*/if (/*@>24786*/VCU_B./*@>27f7b*/Logic_p/*@>23796*/[/*@>23793*/0]) {
        /*@>1d684*/if (/*@>2514b*/VCU_DW./*@>283d7*/Counter1_Count_m/*@>7e33*/ < /*@>1fda7*/60) {
            /*@>2515d*/VCU_DW./*@>283e0*/Counter1_Count_m/*@>26c2e*/++;
        } else {
            /*@>25157*/VCU_DW./*@>283dd*/Counter1_Count_m/*@>7e3a*/ = /*@>26bd0*/0U;
        }
    }
    /*@>7e4c*/if (/*@>25151*/VCU_DW./*@>283da*/Counter1_Count_m/*@>7e4b*/ == /*@>1fda8*/1) {
        /* CombinatorialLogic: '<S182>/Logic' */
        /*@>2479e*/VCU_B./*@>27f87*/Counter1_a/*@>7e50*/ = /*@>1fb0c*/true;
    }
    /* UnitDelay: '<S180>/Delay Input1'
 *
 * Block description for '<S180>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>247aa*/VCU_B./*@>27f8d*/Uk1_og/*@>7e93*/ = /*@>25169*/VCU_DW./*@>283e3*/DelayInput1_DSTATE_b;
    /* RelationalOperator: '<S180>/FixPt Relational Operator' */
    /*@>247b6*/VCU_B./*@>27f93*/FixPtRelationalOperator_p/*@>765d*/ = (/*@>247bc*/VCU_B./*@>27f96*/DataTypeConversion3/*@>765c*/ > /*@>247c2*/VCU_B./*@>27f99*/Uk1_og);
    /* CombinatorialLogic: '<S182>/Logic' incorporates:
 *  Logic: '<S144>/Logical Operator2'
 *  Memory: '<S182>/Memory'
 */
    /*@>247c8*/VCU_B./*@>27f9c*/LogicalOperator2_b/*@>7663*/ = (/*@>247ce*/VCU_B./*@>27f9f*/LogicalOperator_d0/*@>7662*/ || /*@>247d4*/VCU_B./*@>27fa2*/FixPtRelationalOperator_p);
    /*@>247e0*/VCU_B./*@>27fa8*/Memory_db/*@>7665*/ = /*@>25175*/VCU_DW./*@>283e9*/Memory_PreviousInput_n;
    /*@>1fef6*/rowIdx/*@>1dc84*/ = /*@>247e6*/VCU_B./*@>27fab*/Counter1_a;
    /*@>1fefa*/rowIdx/*@>1dcab*/ = /*@>2072c*/(int32_T)((/*@>20729*/(uint32_T)/*@>1fefc*/rowIdx/*@>201a2*/ << /*@>1fefe*/1)/*@>201a0*/ + /*@>247ec*/VCU_B./*@>27fae*/LogicalOperator2_b);
    /*@>1ff01*/rowIdx/*@>1dcd2*/ = /*@>2073c*/(int32_T)((/*@>20739*/(uint32_T)/*@>1ff03*/rowIdx/*@>20198*/ << /*@>1ff05*/1)/*@>20196*/ + /*@>247f8*/VCU_B./*@>27fb4*/Memory_db);
    /*@>24804*/VCU_B./*@>27fba*/Logic_k/*@>1dce8*/[/*@>1ff0a*/0U]/*@>1dce7*/ = /*@>24f8e*/VCU_ConstP./*@>28350*/pooled32/*@>237b2*/[/*@>237ad*/(uint32_T)/*@>237af*/rowIdx];
    /*@>2481c*/VCU_B./*@>27fc6*/Logic_k/*@>1dcfb*/[/*@>1ff0f*/1U]/*@>1dcfa*/ = /*@>24f94*/VCU_ConstP./*@>28353*/pooled32/*@>237bb*/[/*@>237b7*/rowIdx/*@>237b4*/ + /*@>237b8*/8U];
    /* DataTypeConversion: '<S137>/Data Type Conversion2' */
    /*@>24834*/VCU_B./*@>27fd2*/Ignition_Cut_g/*@>7669*/ = /*@>2483a*/VCU_B./*@>27fd5*/Logic_k/*@>237c0*/[/*@>237bd*/0];
    /* DataTypeConversion: '<S137>/Data Type Conversion8' */
    /*@>24846*/VCU_B./*@>27fdb*/LC_Mdes_bl/*@>766c*/ = /*@>2484c*/VCU_B./*@>27fde*/Logic_k/*@>237c5*/[/*@>237c2*/0];
    /* S-Function (sdspcount2): '<S143>/Counter' */
    /*@>24858*/VCU_B./*@>27fe4*/Counter_j/*@>7ef1*/ = /*@>1fb15*/false;
    /*@>7ef5*/if (/*@>24864*/VCU_B./*@>27fea*/LogicalOperator_c) {
        /*@>251a5*/VCU_DW./*@>283fe*/Counter_Count_b/*@>7ef9*/ = /*@>26bd9*/0U;
    }
    /*@>7f0f*/if (/*@>24876*/VCU_B./*@>27ff3*/Logic_il/*@>237d1*/[/*@>237ce*/0]) {
        /*@>1d68e*/if (/*@>251ab*/VCU_DW./*@>28401*/Counter_Count_b/*@>7f14*/ < /*@>1fdae*/500) {
            /*@>251bd*/VCU_DW./*@>2840a*/Counter_Count_b/*@>26c30*/++;
        } else {
            /*@>251b7*/VCU_DW./*@>28407*/Counter_Count_b/*@>7f1b*/ = /*@>26bdc*/0U;
        }
    }
    /*@>7f2d*/if (/*@>251b1*/VCU_DW./*@>28404*/Counter_Count_b/*@>7f2c*/ == /*@>1fdb2*/500) {
        /*@>24894*/VCU_B./*@>28002*/Counter_j/*@>7f31*/ = /*@>1fb24*/true;
    }
    /* End of S-Function (sdspcount2): '<S143>/Counter' */

    /* S-Function (sdspcount2): '<S144>/Counter' */
    /*@>248a0*/VCU_B./*@>28008*/Counter_a/*@>7f76*/ = /*@>1fb29*/false;
    /*@>7f7a*/if (/*@>248a6*/VCU_B./*@>2800b*/LogicalOperator_d0) {
        /*@>251cf*/VCU_DW./*@>28410*/Counter_Count_n/*@>7f7e*/ = /*@>26bdf*/0U;
    }
    /*@>7f94*/if (/*@>248b2*/VCU_B./*@>28011*/Logic_p/*@>237e9*/[/*@>237e6*/0]) {
        /*@>1d698*/if (/*@>251f3*/VCU_DW./*@>2841f*/Counter_Count_n/*@>7f99*/ < /*@>1fdb5*/200) {
            /*@>25205*/VCU_DW./*@>28428*/Counter_Count_n/*@>26c31*/++;
        } else {
            /*@>251ff*/VCU_DW./*@>28425*/Counter_Count_n/*@>7fa0*/ = /*@>26be5*/0U;
        }
    }
    /*@>7fb2*/if (/*@>251f9*/VCU_DW./*@>28422*/Counter_Count_n/*@>7fb1*/ == /*@>1fdb9*/100) {
        /*@>248c4*/VCU_B./*@>2801a*/Counter_a/*@>7fb6*/ = /*@>1fb38*/true;
    }
    /* End of S-Function (sdspcount2): '<S144>/Counter' */

    /* DataTypeConversion: '<S137>/Data Type Conversion' */
    /*@>248d0*/VCU_B./*@>28020*/VOVG_ShiftUp_d/*@>7671*/ = /*@>248d6*/VCU_B./*@>28023*/Logic_p/*@>237ee*/[/*@>237eb*/0];
    /* Switch: '<S140>/Switch' */
    /*@>1d6a2*/if (/*@>248dc*/VCU_B./*@>28026*/Logic_il/*@>237f3*/[/*@>237f0*/0]) {
        /* MinMax: '<S140>/MinMax' incorporates:
 *  Constant: '<S140>/Constant'
 */
        /*@>248ee*/VCU_B./*@>2802f*/Switch_h/*@>1d6a5*/ = /*@>1fdaf*/20.0;
    } else {
        /* MinMax: '<S140>/MinMax' incorporates:
 *  Constant: '<S140>/Constant1'
 */
        /*@>248e8*/VCU_B./*@>2802c*/Switch_h/*@>7ffd*/ = /*@>1fdb0*/0.0;
    }
    /* End of Switch: '<S140>/Switch' */

    /* Memory: '<S142>/Memory' */
    /*@>248f4*/VCU_B./*@>28032*/Memory_od/*@>7674*/ = /*@>25235*/VCU_DW./*@>2843a*/Memory_PreviousInput_i;
    /* Sum: '<S153>/Add' */
    /*@>24900*/VCU_B./*@>28038*/Add_o/*@>a6e9*/ = /*@>24906*/VCU_B./*@>2803b*/Add1_k/*@>a6e6*/ + /*@>2490c*/VCU_B./*@>2803e*/Add1_de;
    /* Gain: '<S153>/Gain' */
    /*@>2491e*/VCU_B./*@>28047*/Gain_g/*@>7681*/ = /*@>1fdb4*/0.5/*@>20170*/ * /*@>24924*/VCU_B./*@>2804a*/Add_o;
    /* Sum: '<S153>/Add1' */
    /*@>24930*/VCU_B./*@>28050*/Add1_f/*@>a6ee*/ = /*@>24936*/VCU_B./*@>28053*/Add1_ks/*@>a6eb*/ + /*@>2493c*/VCU_B./*@>28056*/Add1_eq;
    /* MinMax: '<S153>/MinMax' incorporates:
 *  Gain: '<S153>/Gain1'
 */
    /*@>24954*/VCU_B./*@>28062*/Gain1/*@>768e*/ = /*@>1fdb6*/0.5/*@>2016c*/ * /*@>2495a*/VCU_B./*@>28065*/Add1_f;
    /* Sum: '<S153>/Add2' */
    /*@>24966*/VCU_B./*@>2806b*/Add2/*@>a6f3*/ = /*@>2496c*/VCU_B./*@>2806e*/Gain1/*@>a6f0*/ - /*@>24972*/VCU_B./*@>28071*/Gain_g;
    /* MinMax: '<S153>/MinMax' */
    /*@>20a92*/if ((/*@>20f18*/0.001/*@>20a8b*/ > /*@>24984*/VCU_B./*@>2807a*/Gain1)/*@>20a8e*/ || /*@>2296e*/rtIsNaN(/*@>2498a*/VCU_B./*@>2807d*/Gain1)) {
        /*@>2499c*/VCU_B./*@>28086*/MinMax_o/*@>20a94*/ = /*@>20f1a*/0.001;
    } else {
        /*@>24990*/VCU_B./*@>28080*/MinMax_o/*@>20a91*/ = /*@>24996*/VCU_B./*@>28083*/Gain1;
    }
    /* Saturate: '<S153>/Saturation' incorporates:
 *  Product: '<S153>/Divide'
 */
    /*@>249cc*/VCU_B./*@>2809e*/Divide/*@>769b*/ = /*@>249d2*/VCU_B./*@>280a1*/Add2/*@>20168*/ / /*@>249d8*/VCU_B./*@>280a4*/MinMax_o;
    /*@>20a51*/if (/*@>249de*/VCU_B./*@>280a7*/Divide/*@>20a4c*/ > /*@>20f1c*/0.5) {
        /*@>249f0*/VCU_B./*@>280b0*/Saturation/*@>20a53*/ = /*@>20f22*/0.5;
    } else /*@>20a54*/if (/*@>249ea*/VCU_B./*@>280ad*/Divide/*@>20a49*/ < /*@>20f1e*/-0.5) {
        /*@>24a08*/VCU_B./*@>280bc*/Saturation/*@>20a56*/ = /*@>20f20*/-0.5;
    } else {
        /*@>249fc*/VCU_B./*@>280b6*/Saturation/*@>20a50*/ = /*@>24a02*/VCU_B./*@>280b9*/Divide;
    }
    /* End of Saturate: '<S153>/Saturation' */

    /* RelationalOperator: '<S142>/Relational Operator1' incorporates:
 *  Constant: '<S142>/Constant'
 */
    /*@>24a1a*/VCU_B./*@>280c5*/RelationalOperator1_d/*@>76a5*/ = (/*@>24a20*/VCU_B./*@>280c8*/x_clutch_STW/*@>76a4*/ <= /*@>1fdc0*/15.0);
    /* Outputs for Enabled SubSystem: '<S142>/Clutch Pos calc' incorporates:
 *  EnablePort: '<S150>/Enable'
 */
    /*@>76a7*/if (/*@>24a32*/VCU_B./*@>280d1*/RelationalOperator1_d) {
        /*@>76aa*/if (!/*@<76a9*//*@>25247*/VCU_DW./*@>28443*/ClutchPoscalc_MODE) {
            /*@>2524d*/VCU_DW./*@>28446*/ClutchPoscalc_MODE/*@>76ac*/ = /*@>1f8e6*/true;
        }
        /* MinMax: '<S140>/MinMax' incorporates:
 *  Memory: '<S150>/Memory1'
 */
        /*@>24a68*/VCU_B./*@>280ec*/Memory1/*@>8028*/ = /*@>25259*/VCU_DW./*@>2844c*/Memory1_PreviousInput;
        /* If: '<S150>/If' incorporates:
 *  Constant: '<S150>/slip_R_Max'
 *  Constant: '<S150>/slip_R_Min'
 */
        /*@>1d6ac*/if (/*@>24a92*/VCU_B./*@>28101*/Saturation/*@>802b*/ < /*@>1fdc5*/0.06) {
            /* Outputs for IfAction SubSystem: '<S150>/If Action Subsystem' incorporates:
 *  ActionPort: '<S156>/Action Port'
 */
            /* MinMax: '<S150>/MinMax' incorporates:
 *  Sum: '<S156>/Add'
 */
            /*@>24ac2*/VCU_B./*@>28119*/Merge/*@>1d6af*/ = /*@>24ac8*/VCU_B./*@>2811c*/Memory1/*@>a7ef*/ - /*@>24ace*/VCU_B./*@>2811f*/Add1_f1;
            /* End of Outputs for SubSystem: '<S150>/If Action Subsystem' */
        } else /*@>1d6bb*/if (/*@>24abc*/VCU_B./*@>28116*/Saturation/*@>8030*/ > /*@>1fdc6*/0.15) {
            /* Outputs for IfAction SubSystem: '<S150>/If Action Subsystem1' incorporates:
 *  ActionPort: '<S157>/Action Port'
 */
            /* MinMax: '<S150>/MinMax' incorporates:
 *  Sum: '<S157>/Add'
 */
            /*@>24ae6*/VCU_B./*@>2812b*/Merge/*@>1d6be*/ = /*@>24aec*/VCU_B./*@>2812e*/Add1_f1/*@>a7f4*/ + /*@>24af2*/VCU_B./*@>28131*/Memory1;
            /* End of Outputs for SubSystem: '<S150>/If Action Subsystem1' */
        } else {
            /* Outputs for IfAction SubSystem: '<S150>/If Action Subsystem2' incorporates:
 *  ActionPort: '<S158>/Action Port'
 */
            /* MinMax: '<S150>/MinMax' incorporates:
 *  Inport: '<S158>/x_clutch_in'
 */
            /*@>24ada*/VCU_B./*@>28125*/Merge/*@>a7f2*/ = /*@>24ae0*/VCU_B./*@>28128*/Memory1;
            /* End of Outputs for SubSystem: '<S150>/If Action Subsystem2' */
        }
        /* End of If: '<S150>/If' */

        /* RelationalOperator: '<S150>/Relational Operator3' incorporates:
 *  Constant: '<S150>/Clutch_Close_Speedlimit1'
 */
        /*@>24b16*/VCU_B./*@>28143*/RelationalOperator3/*@>8037*/ = (/*@>24b1c*/VCU_B./*@>28146*/Add1_f1/*@>8036*/ <= /*@>1fdc7*/0.01);
        /* Switch: '<S150>/Switch3' incorporates:
 *  Constant: '<S150>/Clutch_Close1'
 */
        /*@>8717*/if (/*@>24b2e*/VCU_B./*@>2814f*/RelationalOperator3) {
            /*@>24b5e*/VCU_B./*@>28167*/Switch3_p/*@>870f*/ = /*@>1fdcc*/0.0;
        } else {
            /* RelationalOperator: '<S150>/Relational Operator2' incorporates:
 *  Constant: '<S150>/Clutch_Close_Speedlimit'
 */
            /*@>24b52*/VCU_B./*@>28161*/RelationalOperator2_c/*@>872d*/ = (/*@>24b58*/VCU_B./*@>28164*/Gain4/*@>872c*/ >= /*@>1fdcb*/50.0);
            /* Switch: '<S150>/Switch2' incorporates:
 *  Constant: '<S150>/Clutch_Close'
 */
            /*@>874b*/if (/*@>24b7c*/VCU_B./*@>28176*/RelationalOperator2_c) {
                /*@>24bac*/VCU_B./*@>2818e*/Switch2/*@>8743*/ = /*@>1fdcf*/0.0;
            } else {
                /* RelationalOperator: '<S150>/Relational Operator1' incorporates:
 *  Constant: '<S150>/Clutch_Hold_Speedlimit'
 */
                /*@>24ba0*/VCU_B./*@>28188*/RelationalOperator1_c/*@>8761*/ = (/*@>24ba6*/VCU_B./*@>2818b*/Gain4/*@>8760*/ >= /*@>1fdce*/1.0);
                /* Logic: '<S150>/Logical Operator' */
                /*@>24bd6*/VCU_B./*@>281a3*/LogicalOperator_ej/*@>8767*/ = (/*@>24bdc*/VCU_B./*@>281a6*/Memory_od/*@>8766*/ && /*@>24be2*/VCU_B./*@>281a9*/RelationalOperator1_c);
                /* Switch: '<S150>/Switch1' incorporates:
 *  Constant: '<S150>/Init_pos_clutch'
 */
                /*@>8789*/if (/*@>24c00*/VCU_B./*@>281b8*/LogicalOperator_ej) {
                    /* Switch: '<S150>/Switch' */
                    /*@>87c6*/if (/*@>24c36*/VCU_B./*@>281d3*/DataTypeConversion2/*@>87b8*/ >= /*@>1fdd3*/4000.0) {
                        /* MinMax: '<S150>/MinMax' incorporates:
 *  Constant: '<S150>/Constant Gradient'
 */
                        /*@>24c66*/VCU_B./*@>281eb*/Switch_i/*@>87be*/ = /*@>1fdd5*/0.0;
                    } else {
                        /* Sum: '<S150>/Add' */
                        /*@>24c54*/VCU_B./*@>281e2*/Add_e/*@>a800*/ = /*@>24c5a*/VCU_B./*@>281e5*/Add1_f1/*@>a7fd*/ + /*@>24c60*/VCU_B./*@>281e8*/Memory1;
                        /* MinMax: '<S150>/MinMax' */
                        /*@>24c84*/VCU_B./*@>281fa*/Switch_i/*@>87c4*/ = /*@>24c8a*/VCU_B./*@>281fd*/Add_e;
                    }
                    /* End of Switch: '<S150>/Switch' */

                    /* MinMax: '<S150>/MinMax' */
                    /*@>20c2d*/if ((/*@>24ca2*/VCU_B./*@>28209*/Merge/*@>20c26*/ > /*@>24ca8*/VCU_B./*@>2820c*/Switch_i)/*@>20c29*/ || /*@>22970*/rtIsNaN(/*@>24cae*/VCU_B./*@>2820f*/Switch_i)) {
                        /*@>24cc6*/VCU_B./*@>2821b*/MinMax_c/*@>20c2f*/ = /*@>24ccc*/VCU_B./*@>2821e*/Merge;
                    } else {
                        /*@>24cba*/VCU_B./*@>28215*/MinMax_c/*@>20c2c*/ = /*@>24cc0*/VCU_B./*@>28218*/Switch_i;
                    }
                    /* Saturate: '<S150>/Saturation' */
                    /*@>20bec*/if (/*@>24cf6*/VCU_B./*@>28233*/MinMax_c/*@>20be7*/ > /*@>20f24*/25.0) {
                        /*@>24d0e*/VCU_B./*@>2823f*/Saturation_f/*@>20bee*/ = /*@>20f2a*/25.0;
                    } else /*@>20bef*/if (/*@>24d08*/VCU_B./*@>2823c*/MinMax_c/*@>20be4*/ < /*@>20f26*/0.0) {
                        /*@>24d38*/VCU_B./*@>28254*/Saturation_f/*@>20bf1*/ = /*@>20f28*/0.0;
                    } else {
                        /*@>24d2c*/VCU_B./*@>2824e*/Saturation_f/*@>20beb*/ = /*@>24d32*/VCU_B./*@>28251*/MinMax_c;
                    }
                    /* End of Saturate: '<S150>/Saturation' */
                    /*@>24d50*/VCU_B./*@>28260*/Switch1_j/*@>8784*/ = /*@>24d56*/VCU_B./*@>28263*/Saturation_f;
                } else {
                    /*@>24c30*/VCU_B./*@>281d0*/Switch1_j/*@>8787*/ = /*@>1fdd2*/15.0;
                }
                /* End of Switch: '<S150>/Switch1' */
                /*@>24c78*/VCU_B./*@>281f4*/Switch2/*@>8749*/ = /*@>24c7e*/VCU_B./*@>281f7*/Switch1_j;
            }
            /* End of Switch: '<S150>/Switch2' */
            /*@>24c06*/VCU_B./*@>281bb*/Switch3_p/*@>8715*/ = /*@>24c0c*/VCU_B./*@>281be*/Switch2;
        }
        /* End of Switch: '<S150>/Switch3' */

        /* Update for Memory: '<S150>/Memory1' */
        /*@>2525f*/VCU_DW./*@>2844f*/Memory1_PreviousInput/*@>8055*/ = /*@>24bb2*/VCU_B./*@>28191*/Switch3_p;
    } else {
        /*@>76b0*/if (/*@>25241*/VCU_DW./*@>28440*/ClutchPoscalc_MODE) {
            /* Disable for MinMax: '<S140>/MinMax' incorporates:
 *  Outport: '<S150>/x_clutch_LC'
 */
            /*@>24a56*/VCU_B./*@>280e3*/Memory1/*@>8061*/ = /*@>1fdc3*/12.5;
            /*@>25253*/VCU_DW./*@>28449*/ClutchPoscalc_MODE/*@>76b2*/ = /*@>1f8eb*/false;
        }
    }
    /* End of Outputs for SubSystem: '<S142>/Clutch Pos calc' */

    /* MinMax: '<S140>/MinMax' */
    /*@>20aca*/if ((/*@>24a80*/VCU_B./*@>280f8*/x_clutch_STW/*@>20ac3*/ > /*@>24a86*/VCU_B./*@>280fb*/Switch_h)/*@>20ac6*/ || /*@>22972*/rtIsNaN(/*@>24a8c*/VCU_B./*@>280fe*/Switch_h)) {
        /*@>24ab0*/VCU_B./*@>28110*/MinMax_oo/*@>20acc*/ = /*@>24ab6*/VCU_B./*@>28113*/x_clutch_STW;
    } else {
        /*@>24aa4*/VCU_B./*@>2810a*/MinMax_oo/*@>20ac9*/ = /*@>24aaa*/VCU_B./*@>2810d*/Switch_h;
    }
    /*@>20b02*/if (!/*@<22951*/((/*@>24b04*/VCU_B./*@>2813a*/MinMax_oo/*@>20afb*/ > /*@>24b0a*/VCU_B./*@>2813d*/Memory1)/*@>20afe*/ || /*@>22974*/rtIsNaN(/*@>24b10*/VCU_B./*@>28140*/Memory1))) {
        /*@>24b22*/VCU_B./*@>28149*/MinMax_oo/*@>20b01*/ = /*@>24b28*/VCU_B./*@>2814c*/Memory1;
    }
    /* RelationalOperator: '<S145>/Compare' incorporates:
 *  Constant: '<S145>/Constant'
 */
    /*@>24b46*/VCU_B./*@>2815b*/Compare_k/*@>76b7*/ = (/*@>24b4c*/VCU_B./*@>2815e*/MinMax_oo/*@>76b6*/ > /*@>1fdcd*/1.0);
    /* DataTypeConversion: '<S137>/Data Type Conversion3' */
    /*@>24b70*/VCU_B./*@>28170*/VOVG_IN_b/*@>76ba*/ = /*@>24b76*/VCU_B./*@>28173*/Compare_k;
    /* Sum: '<S140>/Add' */
    /*@>24b8e*/VCU_B./*@>2817f*/Add_od/*@>a744*/ = /*@>24b94*/VCU_B./*@>28182*/MinMax_oo/*@>a741*/ - /*@>24b9a*/VCU_B./*@>28185*/x_clutch_b;
    /* RelationalOperator: '<S147>/Compare' incorporates:
 *  Constant: '<S147>/Constant'
 */
    /*@>24bca*/VCU_B./*@>2819d*/Compare_fm/*@>76c3*/ = (/*@>24bd0*/VCU_B./*@>281a0*/Add_od/*@>76c2*/ < /*@>1fdd1*/-0.5);
    /* Lookup_n-D: '<S140>/Duty Cycle MHJ9' */
    /*@>24bf4*/VCU_B./*@>281b2*/DutyCycleMHJ9_l/*@>a823*/ = /*@>22978*/look1_binlxpw(/*@>24bfa*/VCU_B./*@>281b5*/Add_od, /*@>24fb2*/VCU_ConstP./*@>28362*/pooled23, /*@>24fb8*/VCU_ConstP./*@>28365*/pooled22, /*@>1fcdb*/14U);
    /* Product: '<S140>/Product1' */
    /*@>24c1e*/VCU_B./*@>281c7*/Product1_l/*@>76d1*/ = /*@>24c24*/VCU_B./*@>281ca*/DutyCycleMHJ9_l/*@>20164*/ * /*@>208a5*/(real_T)/*@>24c2a*/VCU_B./*@>281cd*/Compare_fm;
    /* RelationalOperator: '<S146>/Compare' incorporates:
 *  Constant: '<S146>/Constant'
 */
    /*@>24c48*/VCU_B./*@>281dc*/Compare_i/*@>76d5*/ = (/*@>24c4e*/VCU_B./*@>281df*/x_clutch_b/*@>76d4*/ > /*@>1fdd6*/20.0);
    /* Switch: '<S140>/Switch1' incorporates:
 *  Constant: '<S140>/Constant2'
 *  Constant: '<S140>/Constant3'
 */
    /*@>1d6b6*/if (/*@>24c72*/VCU_B./*@>281f1*/Compare_i) {
        /*@>24c9c*/VCU_B./*@>28206*/Switch1_k/*@>1d6b9*/ = /*@>1fdd8*/2.0;
    } else {
        /*@>24c96*/VCU_B./*@>28203*/Switch1_k/*@>8099*/ = /*@>1fdd9*/1.0;
    }
    /* End of Switch: '<S140>/Switch1' */

    /* Product: '<S140>/Product2' */
    /*@>24cd8*/VCU_B./*@>28224*/Product2_a/*@>76dd*/ = /*@>24cde*/VCU_B./*@>28227*/Product1_l/*@>20160*/ * /*@>24ce4*/VCU_B./*@>2822a*/Switch1_k;
    /* DataTypeConversion: '<S137>/Data Type Conversion6' */
    /*@>24cea*/VCU_B./*@>2822d*/MHJ9_OUT_p/*@>76e0*/ = /*@>24cf0*/VCU_B./*@>28230*/Product2_a;
    /* RelationalOperator: '<S148>/Compare' incorporates:
 *  Constant: '<S148>/Constant'
 */
    /*@>24cfc*/VCU_B./*@>28236*/Compare_n3/*@>76e4*/ = (/*@>24d02*/VCU_B./*@>28239*/Add_od/*@>76e3*/ > /*@>1fddc*/0.0);
    /* Product: '<S140>/Product3' */
    /*@>24d1a*/VCU_B./*@>28245*/Product3_n/*@>76eb*/ = /*@>24d20*/VCU_B./*@>28248*/DutyCycleMHJ9_l/*@>2015c*/ * /*@>208d8*/(real_T)/*@>24d26*/VCU_B./*@>2824b*/Compare_n3;
    /* DataTypeConversion: '<S137>/Data Type Conversion5' */
    /*@>24d44*/VCU_B./*@>2825a*/MHJ9_IN_m/*@>76ee*/ = /*@>24d4a*/VCU_B./*@>2825d*/Product3_n;
    /* RelationalOperator: '<S149>/Compare' incorporates:
 *  Constant: '<S149>/Constant'
 */
    /*@>24d62*/VCU_B./*@>28269*/Compare_hz/*@>76f2*/ = (/*@>24d68*/VCU_B./*@>2826c*/Add_od/*@>76f1*/ < /*@>1fddf*/-20.0);
    /* DataTypeConversion: '<S137>/Data Type Conversion4' */
    /*@>24d74*/VCU_B./*@>28272*/VOVG_OUT_i/*@>76f5*/ = /*@>24d7a*/VCU_B./*@>28275*/Compare_hz;
    /* DataTypeConversion: '<S137>/Data Type Conversion7' */
    /*@>24d86*/VCU_B./*@>2827b*/x_clutch_LC_n/*@>76f8*/ = /*@>24d8c*/VCU_B./*@>2827e*/Memory1;
    /* RelationalOperator: '<S163>/Compare' */
    /*@>24d98*/VCU_B./*@>28284*/Compare_mq/*@>76fc*/ = /*@>24d9e*/VCU_B./*@>28287*/LC_dash_bit;
    /* RelationalOperator: '<S164>/Compare' incorporates:
 *  Constant: '<S164>/Constant'
 */
    /*@>24daa*/VCU_B./*@>2828d*/Compare_d/*@>7700*/ = (/*@>24db0*/VCU_B./*@>28290*/DataTypeConversion3/*@>76ff*/ <= /*@>1fde0*/2.0);
    /* Logic: '<S151>/LC Initialization' */
    /*@>24dbc*/VCU_B./*@>28296*/LCInitialization/*@>7706*/ = (/*@>24dc2*/VCU_B./*@>28299*/Compare_mq/*@>7705*/ && /*@>24dc8*/VCU_B./*@>2829c*/Compare_d);
    /* Logic: '<S142>/Logical Operator' */
    /*@>24dd4*/VCU_B./*@>282a2*/LogicalOperator_a/*@>770c*/ = (/*@>24dda*/VCU_B./*@>282a5*/LCInitialization/*@>770b*/ && /*@>24de0*/VCU_B./*@>282a8*/RelationalOperator1_d);
    /* DataTypeConversion: '<S137>/Data Type Conversion9' incorporates:
 *  Constant: '<S142>/Constant1'
 */
    /*@>24dec*/VCU_B./*@>282ae*/LC_Fnr_e/*@>770f*/ = /*@>1fde1*/0.0;
    /* RelationalOperator: '<S142>/Relational Operator' */
    /*@>24df8*/VCU_B./*@>282b4*/RelationalOperator_l/*@>7713*/ = (/*@>24dfe*/VCU_B./*@>282b7*/DataTypeConversion/*@>7712*/ >= /*@>24e04*/VCU_B./*@>282ba*/DataTypeConversion1);
    /* UnitDelay: '<S170>/Delay Input1'
 *
 * Block description for '<S170>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>24e10*/VCU_B./*@>282c0*/Uk1_h/*@>80aa*/ = /*@>252bf*/VCU_DW./*@>2847f*/DelayInput1_DSTATE_n;
    /* RelationalOperator: '<S170>/FixPt Relational Operator' */
    /*@>24e1c*/VCU_B./*@>282c6*/FixPtRelationalOperator_df/*@>7718*/ = (/*@>24e22*/VCU_B./*@>282c9*/DataTypeConversion3/*@>7717*/ < /*@>24e28*/VCU_B./*@>282cc*/Uk1_h);
    /* Update for UnitDelay: '<S143>/Unit Delay1' */
    /*@>252d1*/VCU_DW./*@>28488*/UnitDelay1_DSTATE_d/*@>80b6*/ = /*@>24e34*/VCU_B./*@>282d2*/Logic_il/*@>23832*/[/*@>2382f*/0];
    /* Update for Delay: '<S143>/Delay' */
/*@>1cf60*/    for (/*@>26c22*/rowIdx = /*@>1fde7*/0; /*@>26c2a*/rowIdx < /*@>1fde8*/19; /*@>26c27*/rowIdx/*@>26c35*/++) {
        /*@>252ef*/VCU_DW./*@>28497*/Delay_DSTATE_i/*@>1b7d1*/[/*@>1fd67*/rowIdx]/*@>80e4*/ = /*@>252f5*/VCU_DW./*@>2849a*/Delay_DSTATE_i/*@>2383f*/[/*@>2383b*/rowIdx/*@>23839*/ + /*@>2383c*/1];
    }
    /*@>252e9*/VCU_DW./*@>28494*/Delay_DSTATE_i/*@>80fc*/[/*@>1fb77*/19]/*@>8106*/ = /*@>24e4c*/VCU_B./*@>282de*/LogicalOperator_c;
    /* End of Update for Delay: '<S143>/Delay' */

    /* Update for Memory: '<S174>/Memory' */
    /*@>252fb*/VCU_DW./*@>2849d*/Memory_PreviousInput_c/*@>7868*/ = /*@>24e52*/VCU_B./*@>282e1*/Logic_a/*@>23844*/[/*@>23841*/0];
    /* Update for UnitDelay: '<S171>/Delay Input1'
 *
 * Block description for '<S171>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>25301*/VCU_DW./*@>284a0*/DelayInput1_DSTATE_a/*@>8112*/ = /*@>24e58*/VCU_B./*@>282e4*/STW_shift_down_request;
    /* Update for UnitDelay: '<S143>/Unit Delay4' */
    /*@>25307*/VCU_DW./*@>284a3*/UnitDelay4_DSTATE_k/*@>811e*/ = /*@>24e5e*/VCU_B./*@>282e7*/FixPtRelationalOperator_df;
    /* Update for UnitDelay: '<S144>/Unit Delay' */
    /*@>2530d*/VCU_DW./*@>284a6*/UnitDelay_DSTATE_m/*@>812a*/ = /*@>24e64*/VCU_B./*@>282ea*/Logic_p/*@>23849*/[/*@>23846*/0];
    /* Update for UnitDelay: '<S143>/Unit Delay2' */
    /*@>25313*/VCU_DW./*@>284a9*/UnitDelay2_DSTATE_n/*@>8136*/ = /*@>24e6a*/VCU_B./*@>282ed*/Counter_j;
    /* Update for Memory: '<S172>/Memory' */
    /*@>25319*/VCU_DW./*@>284ac*/Memory_PreviousInput_ao/*@>786e*/ = /*@>24e70*/VCU_B./*@>282f0*/Logic_il/*@>2384e*/[/*@>2384b*/0];
    /* Update for Memory: '<S173>/Memory' */
    /*@>2531f*/VCU_DW./*@>284af*/Memory_PreviousInput_m/*@>7870*/ = /*@>24e76*/VCU_B./*@>282f3*/Logic_l/*@>23853*/[/*@>23850*/0];
    /* Update for UnitDelay: '<S141>/Delay Input1'
 *
 * Block description for '<S141>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>25325*/VCU_DW./*@>284b2*/DelayInput1_DSTATE_d/*@>8142*/ = /*@>24e7c*/VCU_B./*@>282f6*/Product;
    /* Update for UnitDelay: '<S178>/Delay Input1'
 *
 * Block description for '<S178>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>2532b*/VCU_DW./*@>284b5*/DelayInput1_DSTATE_fa/*@>814e*/ = /*@>24e82*/VCU_B./*@>282f9*/LogicalOperator_k;
    /* Update for UnitDelay: '<S179>/Delay Input1'
 *
 * Block description for '<S179>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>25331*/VCU_DW./*@>284b8*/DelayInput1_DSTATE_l/*@>815a*/ = /*@>24e88*/VCU_B./*@>282fc*/DataTypeConversion3;
    /* Update for UnitDelay: '<S143>/Unit Delay' */
    /*@>25337*/VCU_DW./*@>284bb*/UnitDelay_DSTATE_f/*@>8166*/ = /*@>24e8e*/VCU_B./*@>282ff*/Logic_l/*@>23858*/[/*@>23855*/0];
    /* Update for UnitDelay: '<S144>/Unit Delay1' */
    /*@>2533d*/VCU_DW./*@>284be*/UnitDelay1_DSTATE_i/*@>8172*/ = /*@>24e94*/VCU_B./*@>28302*/Counter_a;
    /* Update for Memory: '<S181>/Memory' */
    /*@>25343*/VCU_DW./*@>284c1*/Memory_PreviousInput_e/*@>7877*/ = /*@>24e9a*/VCU_B./*@>28305*/Logic_p/*@>2385d*/[/*@>2385a*/0];
    /* Update for UnitDelay: '<S180>/Delay Input1'
 *
 * Block description for '<S180>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>25349*/VCU_DW./*@>284c4*/DelayInput1_DSTATE_b/*@>817e*/ = /*@>24ea0*/VCU_B./*@>28308*/DataTypeConversion3;
    /* Update for Memory: '<S182>/Memory' */
    /*@>2534f*/VCU_DW./*@>284c7*/Memory_PreviousInput_n/*@>787a*/ = /*@>24ea6*/VCU_B./*@>2830b*/Logic_k/*@>23862*/[/*@>2385f*/0];
    /* Update for Memory: '<S142>/Memory' */
    /*@>25355*/VCU_DW./*@>284ca*/Memory_PreviousInput_i/*@>787c*/ = /*@>24eac*/VCU_B./*@>2830e*/RelationalOperator1_d;
    /* Update for UnitDelay: '<S170>/Delay Input1'
 *
 * Block description for '<S170>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>2535b*/VCU_DW./*@>284cd*/DelayInput1_DSTATE_n/*@>818a*/ = /*@>24eb2*/VCU_B./*@>28311*/DataTypeConversion3;
} else {
    /*@>742a*/if (/*@>2506d*/VCU_DW./*@>28368*/LC_jr19_MODE) {
        /* Disable for Enabled SubSystem: '<S142>/Clutch Pos calc' */
        /*@>78b2*/if (/*@>25079*/VCU_DW./*@>2836e*/ClutchPoscalc_MODE) {
            /* Disable for MinMax: '<S140>/MinMax' incorporates:
 *  Outport: '<S150>/x_clutch_LC'
 */
            /*@>23e68*/VCU_B./*@>27aec*/Memory1/*@>8194*/ = /*@>1fd73*/12.5;
            /*@>25091*/VCU_DW./*@>2837a*/ClutchPoscalc_MODE/*@>78b5*/ = /*@>1f95e*/false;
        }
        /* End of Disable for SubSystem: '<S142>/Clutch Pos calc' */
        /*@>2508b*/VCU_DW./*@>28377*/LC_jr19_MODE/*@>742c*/ = /*@>1f717*/false;
    }
}
/* End of Outputs for SubSystem: '<S7>/LC_jr19' */

/* RelationalOperator: '<S133>/Compare' incorporates:
 *  Constant: '<S133>/Constant'
 */
/*@>23e74*/VCU_B./*@>27af2*/Compare_c/*@>7430*/ = (/*@>23e7a*/VCU_B./*@>27af5*/DataTypeConversion_cg/*@>742f*/ == /*@>1fd74*/1);
/* RelationalOperator: '<S134>/Compare' incorporates:
 *  Constant: '<S134>/Constant'
 */
/*@>23e86*/VCU_B./*@>27afb*/Compare_g/*@>7434*/ = (/*@>23e8c*/VCU_B./*@>27afe*/DataTypeConversion_cg/*@>7433*/ > /*@>1fd75*/3);
/* Logic: '<S7>/Logical Operator' */
/*@>23e98*/VCU_B./*@>27b04*/LogicalOperator/*@>743a*/ = (/*@>23e9e*/VCU_B./*@>27b07*/Compare_c/*@>7439*/ || /*@>23ea4*/VCU_B./*@>27b0a*/Compare_g);
/* Outputs for Enabled SubSystem: '<S7>/semi_auto_jr18' incorporates:
 *  EnablePort: '<S139>/Enable'
 */
/*@>743c*/if (/*@>23eb0*/VCU_B./*@>27b10*/LogicalOperator) {
    /* CombinatorialLogic: '<S208>/Logic' incorporates:
 *  Delay: '<S192>/Delay'
 *  Memory: '<S208>/Memory'
 *  UnitDelay: '<S192>/Unit Delay1'
 */
    /*@>23ebc*/VCU_B./*@>27b16*/UnitDelay1/*@>81a2*/ = /*@>250a3*/VCU_DW./*@>28383*/UnitDelay1_DSTATE;
    /*@>23ed4*/VCU_B./*@>27b22*/Delay/*@>81b0*/ = /*@>250a9*/VCU_DW./*@>28386*/Delay_DSTATE/*@>2370d*/[/*@>2370a*/0];
    /*@>23ee6*/VCU_B./*@>27b2b*/Memory/*@>78c6*/ = /*@>250af*/VCU_DW./*@>28389*/Memory_PreviousInput;
    /*@>1fe30*/rowIdx/*@>1d7e7*/ = /*@>23ef8*/VCU_B./*@>27b34*/UnitDelay1;
    /*@>1fe34*/rowIdx/*@>1d80e*/ = /*@>2045a*/(int32_T)((/*@>20457*/(uint32_T)/*@>1fe36*/rowIdx/*@>20157*/ << /*@>1fe38*/1)/*@>20155*/ + /*@>23f22*/VCU_B./*@>27b49*/Delay);
    /*@>1fe3b*/rowIdx/*@>1d835*/ = /*@>20478*/(int32_T)((/*@>20475*/(uint32_T)/*@>1fe3d*/rowIdx/*@>2014d*/ << /*@>1fe3f*/1)/*@>2014b*/ + /*@>23f5e*/VCU_B./*@>27b67*/Memory);
    /*@>23f82*/VCU_B./*@>27b79*/Logic/*@>1d84b*/[/*@>1fe44*/0U]/*@>1d84a*/ = /*@>24f2e*/VCU_ConstP./*@>28320*/pooled32/*@>23729*/[/*@>23724*/(uint32_T)/*@>23726*/rowIdx];
    /*@>23fa0*/VCU_B./*@>27b88*/Logic/*@>1d85e*/[/*@>1fe49*/1U]/*@>1d85d*/ = /*@>24f34*/VCU_ConstP./*@>28323*/pooled32/*@>23732*/[/*@>2372e*/rowIdx/*@>2372b*/ + /*@>2372f*/8U];
    /* DataTypeConversion: '<S139>/Data Type Conversion10' */
    /*@>23ff4*/VCU_B./*@>27bb2*/VOVG_ShiftDown_m/*@>78ca*/ = /*@>23ffa*/VCU_B./*@>27bb5*/Logic/*@>23737*/[/*@>23734*/0];
    /* UnitDelay: '<S205>/Delay Input1'
 *
 * Block description for '<S205>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>24012*/VCU_B./*@>27bc1*/Uk1/*@>820c*/ = /*@>250c1*/VCU_DW./*@>28392*/DelayInput1_DSTATE;
    /* CombinatorialLogic: '<S206>/Logic' incorporates:
 *  Delay: '<S192>/Delay1'
 *  Memory: '<S206>/Memory'
 *  RelationalOperator: '<S205>/FixPt Relational Operator'
 */
    /*@>24036*/VCU_B./*@>27bd3*/FixPtRelationalOperator/*@>78cf*/ = (/*@>2403c*/VCU_B./*@>27bd6*/STW_shift_down_request/*@>78ce*/ > /*@>24042*/VCU_B./*@>27bd9*/Uk1);
    /*@>2408a*/VCU_B./*@>27bfd*/Delay1/*@>8218*/ = /*@>250c7*/VCU_DW./*@>28395*/Delay1_DSTATE;
    /*@>240ae*/VCU_B./*@>27c0f*/Memory_d/*@>78d2*/ = /*@>250cd*/VCU_DW./*@>28398*/Memory_PreviousInput_l;
    /*@>1fe4c*/rowIdx/*@>1d88e*/ = /*@>240c6*/VCU_B./*@>27c1b*/FixPtRelationalOperator;
    /*@>1fe50*/rowIdx/*@>1d8b5*/ = /*@>204eb*/(int32_T)((/*@>204e8*/(uint32_T)/*@>1fe52*/rowIdx/*@>20142*/ << /*@>1fe54*/1)/*@>20140*/ + /*@>2410e*/VCU_B./*@>27c3f*/Delay1);
    /*@>1fe57*/rowIdx/*@>1d8dc*/ = /*@>20506*/(int32_T)((/*@>20503*/(uint32_T)/*@>1fe59*/rowIdx/*@>20138*/ << /*@>1fe5b*/1)/*@>20136*/ + /*@>24120*/VCU_B./*@>27c48*/Memory_d);
    /*@>2414a*/VCU_B./*@>27c5d*/Logic_i/*@>1d8f2*/[/*@>1fe60*/0U]/*@>1d8f1*/ = /*@>24f46*/VCU_ConstP./*@>2832c*/pooled32/*@>2373e*/[/*@>23739*/(uint32_T)/*@>2373b*/rowIdx];
    /*@>2419e*/VCU_B./*@>27c87*/Logic_i/*@>1d905*/[/*@>1fe65*/1U]/*@>1d904*/ = /*@>24f4c*/VCU_ConstP./*@>2832f*/pooled32/*@>23747*/[/*@>23743*/rowIdx/*@>23740*/ + /*@>23744*/8U];
    /* UnitDelay: '<S192>/Unit Delay4' */
    /*@>241bc*/VCU_B./*@>27c96*/UnitDelay4/*@>8274*/ = /*@>250df*/VCU_DW./*@>283a1*/UnitDelay4_DSTATE;
    /* Gain: '<S209>/Gain' */
    /*@>241e6*/VCU_B./*@>27cab*/Gain/*@>78dc*/ = /*@>1fd88*/2.0/*@>2012e*/ * /*@>241ec*/VCU_B./*@>27cae*/DataTypeConversion1;
    /* RelationalOperator: '<S209>/Relational Operator' incorporates:
 *  Constant: '<S209>/Constant'
 */
    /*@>24240*/VCU_B./*@>27cd8*/RelationalOperator/*@>78e0*/ = (/*@>24246*/VCU_B./*@>27cdb*/Gain/*@>78df*/ > /*@>1fd89*/169.0);
    /* RelationalOperator: '<S209>/Relational Operator1' incorporates:
 *  Constant: '<S209>/Constant1'
 */
    /*@>24282*/VCU_B./*@>27cf9*/RelationalOperator1/*@>78e4*/ = (/*@>24288*/VCU_B./*@>27cfc*/Gain/*@>78e3*/ > /*@>1fd8b*/228.0);
    /* RelationalOperator: '<S209>/Relational Operator2' incorporates:
 *  Constant: '<S209>/Constant2'
 */
    /*@>242a6*/VCU_B./*@>27d0b*/RelationalOperator2/*@>78e8*/ = (/*@>242ac*/VCU_B./*@>27d0e*/Gain/*@>78e7*/ > /*@>1fd8c*/325.0);
    /* Sum: '<S209>/Add' */
    /*@>242f4*/VCU_B./*@>27d32*/Add_c/*@>a761*/ = /*@>20571*/(uint8_T)((/*@>2056b*/(uint32_T)/*@>242fa*/VCU_B./*@>27d35*/RelationalOperator/*@>2011e*/ + /*@>24300*/VCU_B./*@>27d38*/RelationalOperator1)/*@>20111*/ + /*@>24306*/VCU_B./*@>27d3b*/RelationalOperator2);
    /* RelationalOperator: '<S199>/Compare' incorporates:
 *  Constant: '<S199>/Constant'
 */
    /*@>24324*/VCU_B./*@>27d4a*/Compare_b/*@>78f2*/ = (/*@>2432a*/VCU_B./*@>27d4d*/x_clutch_STW/*@>78f1*/ >= /*@>1fd8e*/15.0);
    /* Switch: '<S192>/Switch' incorporates:
 *  Constant: '<S192>/Constant'
 *  Constant: '<S192>/Constant1'
 */
    /*@>1d67f*/if (/*@>24348*/VCU_B./*@>27d5c*/Compare_b) {
        /*@>24396*/VCU_B./*@>27d83*/Switch/*@>1d682*/ = /*@>1fd90*/1.0;
    } else {
        /*@>24390*/VCU_B./*@>27d80*/Switch/*@>8284*/ = /*@>1fd91*/2.0;
    }
    /* End of Switch: '<S192>/Switch' */

    /* RelationalOperator: '<S192>/Relational Operator' */
    /*@>243cc*/VCU_B./*@>27d9e*/LessthanNeutral/*@>78f7*/ = (/*@>243d2*/VCU_B./*@>27da1*/Add_c/*@>20107*/ < /*@>243d8*/VCU_B./*@>27da4*/Switch);
    /* UnitDelay: '<S193>/Unit Delay' */
    /*@>2441a*/VCU_B./*@>27dc5*/UnitDelay/*@>8295*/ = /*@>250f1*/VCU_DW./*@>283aa*/UnitDelay_DSTATE;
    /* UnitDelay: '<S192>/Unit Delay2' */
    /*@>24426*/VCU_B./*@>27dcb*/Timeout/*@>82a1*/ = /*@>250f7*/VCU_DW./*@>283ad*/UnitDelay2_DSTATE;
    /* RelationalOperator: '<S200>/Compare' incorporates:
 *  Constant: '<S200>/Constant'
 */
    /*@>2443e*/VCU_B./*@>27dd7*/Compare_f/*@>78fd*/ = (/*@>24444*/VCU_B./*@>27dda*/DataTypeConversion2/*@>78fc*/ > /*@>1fd94*/5000.0);
    /* RelationalOperator: '<S201>/Compare' incorporates:
 *  Constant: '<S201>/Constant'
 */
    /*@>24486*/VCU_B./*@>27dfb*/Compare_n/*@>7901*/ = (/*@>2448c*/VCU_B./*@>27dfe*/Add_c/*@>7900*/ == /*@>1fd95*/2);
    /* Logic: '<S192>/Logical Operator1' */
    /*@>24498*/VCU_B./*@>27e04*/RPMcheckgear21/*@>7907*/ = (/*@>2449e*/VCU_B./*@>27e07*/Compare_n/*@>7906*/ && /*@>244a4*/VCU_B./*@>27e0a*/Compare_f);
    /* RelationalOperator: '<S202>/Compare' incorporates:
 *  Constant: '<S202>/Constant'
 */
    /*@>244b6*/VCU_B./*@>27e13*/Compare_l/*@>790b*/ = (/*@>244bc*/VCU_B./*@>27e16*/DataTypeConversion2/*@>790a*/ > /*@>1fd96*/5300.0);
    /* RelationalOperator: '<S203>/Compare' incorporates:
 *  Constant: '<S203>/Constant'
 */
    /*@>244e0*/VCU_B./*@>27e28*/Compare_h/*@>790f*/ = (/*@>244e6*/VCU_B./*@>27e2b*/Add_c/*@>790e*/ == /*@>1fd97*/3);
    /* Logic: '<S192>/Logical Operator2' */
    /*@>2450a*/VCU_B./*@>27e3d*/RPMcheckgear31/*@>7915*/ = (/*@>24510*/VCU_B./*@>27e40*/Compare_l/*@>7914*/ && /*@>24516*/VCU_B./*@>27e43*/Compare_h);
    /* CombinatorialLogic: '<S207>/Logic' incorporates:
 *  Logic: '<S192>/Logical Operator'
 *  Memory: '<S207>/Memory'
 */
    /*@>24528*/VCU_B./*@>27e4c*/LogicalOperator_d/*@>7927*/ = (/*@>2452e*/VCU_B./*@>27e4f*/UnitDelay4/*@>791a*/ || /*@>24534*/VCU_B./*@>27e52*/LessthanNeutral/*@>791d*/ || /*@>2453a*/VCU_B./*@>27e55*/UnitDelay/*@>7920*/ || /*@>24540*/VCU_B./*@>27e58*/Timeout/*@>7923*/ || /*@>24546*/VCU_B./*@>27e5b*/RPMcheckgear21/*@>7926*/ || /*@>2454c*/VCU_B./*@>27e5e*/RPMcheckgear31);
    /*@>24564*/VCU_B./*@>27e6a*/Memory_l/*@>7929*/ = /*@>250fd*/VCU_DW./*@>283b0*/Memory_PreviousInput_a;
    /*@>1ff76*/tmp/*@>1da74*/ = /*@>24576*/VCU_B./*@>27e73*/Logic_i/*@>23771*/[/*@>2376e*/0];
    /*@>1fea2*/rowIdx/*@>1da8b*/ = /*@>1ff78*/tmp;
    /*@>1fea6*/rowIdx/*@>1dab4*/ = /*@>20618*/(int32_T)((/*@>20615*/(uint32_T)/*@>1fea8*/rowIdx/*@>20101*/ << /*@>1feaa*/1)/*@>200ff*/ + /*@>24594*/VCU_B./*@>27e82*/LogicalOperator_d);
    /*@>1fead*/rowIdx/*@>1dadd*/ = /*@>20627*/(int32_T)((/*@>20624*/(uint32_T)/*@>1feaf*/rowIdx/*@>200f7*/ << /*@>1feb1*/1)/*@>200f5*/ + /*@>245ac*/VCU_B./*@>27e8e*/Memory_l);
    /*@>245c4*/VCU_B./*@>27e9a*/Logic_iy/*@>1daf3*/[/*@>1feb6*/0U]/*@>1daf2*/ = /*@>24f6a*/VCU_ConstP./*@>2833e*/pooled32/*@>23778*/[/*@>23773*/(uint32_T)/*@>23775*/rowIdx];
    /*@>245d0*/VCU_B./*@>27ea0*/Logic_iy/*@>1db06*/[/*@>1febb*/1U]/*@>1db05*/ = /*@>24f70*/VCU_ConstP./*@>28341*/pooled32/*@>23781*/[/*@>2377d*/rowIdx/*@>2377a*/ + /*@>2377e*/8U];
    /* UnitDelay: '<S213>/Delay Input1'
 *
 * Block description for '<S213>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>245e8*/VCU_B./*@>27eac*/Uk1_i/*@>82fd*/ = /*@>2510f*/VCU_DW./*@>283b9*/DelayInput1_DSTATE_g;
    /* CombinatorialLogic: '<S216>/Logic' incorporates:
 *  RelationalOperator: '<S213>/FixPt Relational Operator'
 */
    /*@>245f4*/VCU_B./*@>27eb2*/FixPtRelationalOperator_c/*@>792f*/ = (/*@>245fa*/VCU_B./*@>27eb5*/STW_shift_up_request/*@>792e*/ > /*@>24600*/VCU_B./*@>27eb8*/Uk1_i);
    /* Gain: '<S218>/Gain' */
    /*@>24618*/VCU_B./*@>27ec4*/Gain_m/*@>7937*/ = /*@>1fd9b*/2.0/*@>200ed*/ * /*@>2461e*/VCU_B./*@>27ec7*/DataTypeConversion1;
    /* RelationalOperator: '<S218>/Relational Operator' incorporates:
 *  Constant: '<S218>/Constant'
 */
    /*@>24630*/VCU_B./*@>27ed0*/RelationalOperator_d/*@>793b*/ = (/*@>24636*/VCU_B./*@>27ed3*/Gain_m/*@>793a*/ > /*@>1fd9d*/169.0);
    /* RelationalOperator: '<S218>/Relational Operator1' incorporates:
 *  Constant: '<S218>/Constant1'
 */
    /*@>24642*/VCU_B./*@>27ed9*/RelationalOperator1_a/*@>793f*/ = (/*@>24648*/VCU_B./*@>27edc*/Gain_m/*@>793e*/ > /*@>1fd9e*/269.0);
    /* RelationalOperator: '<S218>/Relational Operator2' incorporates:
 *  Constant: '<S218>/Constant2'
 */
    /*@>24654*/VCU_B./*@>27ee2*/RelationalOperator2_d/*@>7943*/ = (/*@>2465a*/VCU_B./*@>27ee5*/Gain_m/*@>7942*/ > /*@>1fd9f*/360.0);
    /* Sum: '<S218>/Add' */
    /*@>2466c*/VCU_B./*@>27eee*/Add_j/*@>a76a*/ = /*@>2065e*/(uint8_T)((/*@>20658*/(uint32_T)/*@>24672*/VCU_B./*@>27ef1*/RelationalOperator_d/*@>200dd*/ + /*@>24678*/VCU_B./*@>27ef4*/RelationalOperator1_a)/*@>200d0*/ + /*@>2467e*/VCU_B./*@>27ef7*/RelationalOperator2_d);
    /* UnitDelay: '<S214>/Delay Input1'
 *
 * Block description for '<S214>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>24690*/VCU_B./*@>27f00*/Uk1_b/*@>8309*/ = /*@>25127*/VCU_DW./*@>283c5*/DelayInput1_DSTATE_ga;
    /* RelationalOperator: '<S214>/FixPt Relational Operator' */
    /*@>246a8*/VCU_B./*@>27f0c*/FixPtRelationalOperator_m/*@>794e*/ = (/*@>246ae*/VCU_B./*@>27f0f*/Add_j/*@>794d*/ > /*@>246b4*/VCU_B./*@>27f12*/Uk1_b);
    /* RelationalOperator: '<S210>/Compare' incorporates:
 *  Constant: '<S210>/Constant'
 */
    /*@>246de*/VCU_B./*@>27f27*/Compare_ha/*@>7952*/ = (/*@>246e4*/VCU_B./*@>27f2a*/Add_j/*@>7951*/ >= /*@>1fda2*/3);
    /* UnitDelay: '<S192>/Unit Delay' */
    /*@>246f0*/VCU_B./*@>27f30*/UnitDelay_p/*@>8315*/ = /*@>25133*/VCU_DW./*@>283cb*/UnitDelay_DSTATE_b;
    /* UnitDelay: '<S193>/Unit Delay1' */
    /*@>246fc*/VCU_B./*@>27f36*/Timeout_i/*@>8321*/ = /*@>25139*/VCU_DW./*@>283ce*/UnitDelay1_DSTATE_k;
    /* RelationalOperator: '<S212>/Compare' incorporates:
 *  Constant: '<S212>/Constant'
 */
    /*@>24708*/VCU_B./*@>27f3c*/Compare_e/*@>7958*/ = (/*@>2470e*/VCU_B./*@>27f3f*/Add_j/*@>7957*/ == /*@>1fda3*/0);
    /* RelationalOperator: '<S211>/Compare' incorporates:
 *  Constant: '<S211>/Constant'
 */
    /*@>2471a*/VCU_B./*@>27f45*/Compare_a/*@>795c*/ = (/*@>24720*/VCU_B./*@>27f48*/x_clutch_STW/*@>795b*/ < /*@>1fda4*/15.0);
    /* Logic: '<S193>/Logical Operator1' */
    /*@>2472c*/VCU_B./*@>27f4e*/FailSafefirstgear/*@>7962*/ = (/*@>24732*/VCU_B./*@>27f51*/Compare_e/*@>7961*/ && /*@>24738*/VCU_B./*@>27f54*/Compare_a);
    /* CombinatorialLogic: '<S216>/Logic' incorporates:
 *  Logic: '<S193>/Logical Operator'
 *  Memory: '<S216>/Memory'
 */
    /*@>24744*/VCU_B./*@>27f5a*/LogicalOperator_i/*@>7971*/ = (/*@>2474a*/VCU_B./*@>27f5d*/FixPtRelationalOperator_m/*@>7967*/ || /*@>24750*/VCU_B./*@>27f60*/Compare_ha/*@>796a*/ || /*@>24756*/VCU_B./*@>27f63*/UnitDelay_p/*@>796d*/ || /*@>2475c*/VCU_B./*@>27f66*/Timeout_i/*@>7970*/ || /*@>24762*/VCU_B./*@>27f69*/FailSafefirstgear);
    /*@>2476e*/VCU_B./*@>27f6f*/Memory_a/*@>7973*/ = /*@>2513f*/VCU_DW./*@>283d1*/Memory_PreviousInput_al;
    /*@>1feda*/rowIdx/*@>1dbdd*/ = /*@>2477a*/VCU_B./*@>27f75*/FixPtRelationalOperator_c;
    /*@>1fede*/rowIdx/*@>1dc04*/ = /*@>206b9*/(int32_T)((/*@>206b6*/(uint32_T)/*@>1fee0*/rowIdx/*@>200c7*/ << /*@>1fee2*/1)/*@>200c5*/ + /*@>24780*/VCU_B./*@>27f78*/LogicalOperator_i);
    /*@>1fee5*/rowIdx/*@>1dc2b*/ = /*@>206c9*/(int32_T)((/*@>206c6*/(uint32_T)/*@>1fee7*/rowIdx/*@>200bd*/ << /*@>1fee9*/1)/*@>200bb*/ + /*@>2478c*/VCU_B./*@>27f7e*/Memory_a);
    /*@>24792*/VCU_B./*@>27f81*/Logic_iz/*@>1dc41*/[/*@>1feee*/0U]/*@>1dc40*/ = /*@>24f82*/VCU_ConstP./*@>2834a*/pooled32/*@>2379d*/[/*@>23798*/(uint32_T)/*@>2379a*/rowIdx];
    /*@>24798*/VCU_B./*@>27f84*/Logic_iz/*@>1dc54*/[/*@>1fef3*/1U]/*@>1dc53*/ = /*@>24f88*/VCU_ConstP./*@>2834d*/pooled32/*@>237a6*/[/*@>237a2*/rowIdx/*@>2379f*/ + /*@>237a3*/8U];
    /* CombinatorialLogic: '<S217>/Logic' incorporates:
 *  S-Function (sdspcount2): '<S193>/Counter1'
 */
    /*@>247a4*/VCU_B./*@>27f8a*/Counter1/*@>837f*/ = /*@>1fbd2*/false;
    /* S-Function (sdspcount2): '<S193>/Counter1' */
    /*@>8383*/if (/*@>247b0*/VCU_B./*@>27f90*/LogicalOperator_i) {
        /*@>2516f*/VCU_DW./*@>283e6*/Counter1_Count/*@>8387*/ = /*@>26bd3*/0U;
    }
    /*@>839d*/if (/*@>247da*/VCU_B./*@>27fa5*/Logic_iz/*@>237ab*/[/*@>237a8*/0]) {
        /*@>1d689*/if (/*@>2517b*/VCU_DW./*@>283ec*/Counter1_Count/*@>83a2*/ < /*@>1fda9*/60) {
            /*@>2518d*/VCU_DW./*@>283f5*/Counter1_Count/*@>26c2f*/++;
        } else {
            /*@>25187*/VCU_DW./*@>283f2*/Counter1_Count/*@>83a9*/ = /*@>26bd6*/0U;
        }
    }
    /*@>83bb*/if (/*@>25181*/VCU_DW./*@>283ef*/Counter1_Count/*@>83ba*/ == /*@>1fdaa*/1) {
        /* CombinatorialLogic: '<S217>/Logic' */
        /*@>247f2*/VCU_B./*@>27fb1*/Counter1/*@>83bf*/ = /*@>1fbe1*/true;
    }
    /* UnitDelay: '<S215>/Delay Input1'
 *
 * Block description for '<S215>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>247fe*/VCU_B./*@>27fb7*/Uk1_m/*@>8402*/ = /*@>25199*/VCU_DW./*@>283f8*/DelayInput1_DSTATE_f;
    /* RelationalOperator: '<S215>/FixPt Relational Operator' */
    /*@>2480a*/VCU_B./*@>27fbd*/FixPtRelationalOperator_b/*@>797a*/ = (/*@>24810*/VCU_B./*@>27fc0*/Add_j/*@>7979*/ > /*@>24816*/VCU_B./*@>27fc3*/Uk1_m);
    /* CombinatorialLogic: '<S217>/Logic' incorporates:
 *  Logic: '<S193>/Logical Operator2'
 *  Memory: '<S217>/Memory'
 */
    /*@>24822*/VCU_B./*@>27fc9*/LogicalOperator2/*@>7980*/ = (/*@>24828*/VCU_B./*@>27fcc*/LogicalOperator_i/*@>797f*/ || /*@>2482e*/VCU_B./*@>27fcf*/FixPtRelationalOperator_b);
    /*@>24840*/VCU_B./*@>27fd8*/Memory_g/*@>7982*/ = /*@>2519f*/VCU_DW./*@>283fb*/Memory_PreviousInput_k;
    /*@>1ff12*/rowIdx/*@>1dd2b*/ = /*@>24852*/VCU_B./*@>27fe1*/Counter1;
    /*@>1ff16*/rowIdx/*@>1dd52*/ = /*@>2075f*/(int32_T)((/*@>2075c*/(uint32_T)/*@>1ff18*/rowIdx/*@>200a3*/ << /*@>1ff1a*/1)/*@>200a1*/ + /*@>2485e*/VCU_B./*@>27fe7*/LogicalOperator2);
    /*@>1ff1d*/rowIdx/*@>1dd79*/ = /*@>20769*/(int32_T)((/*@>20766*/(uint32_T)/*@>1ff1f*/rowIdx/*@>20099*/ << /*@>1ff21*/1)/*@>20097*/ + /*@>2486a*/VCU_B./*@>27fed*/Memory_g);
    /*@>24870*/VCU_B./*@>27ff0*/Logic_e/*@>1dd8f*/[/*@>1ff26*/0U]/*@>1dd8e*/ = /*@>24f9a*/VCU_ConstP./*@>28356*/pooled32/*@>237cc*/[/*@>237c7*/(uint32_T)/*@>237c9*/rowIdx];
    /*@>2487c*/VCU_B./*@>27ff6*/Logic_e/*@>1dda2*/[/*@>1ff2b*/1U]/*@>1dda1*/ = /*@>24fa0*/VCU_ConstP./*@>28359*/pooled32/*@>237da*/[/*@>237d6*/rowIdx/*@>237d3*/ + /*@>237d7*/8U];
    /* DataTypeConversion: '<S139>/Data Type Conversion11' */
    /*@>24882*/VCU_B./*@>27ff9*/Ignition_Cut_o/*@>7986*/ = /*@>24888*/VCU_B./*@>27ffc*/Logic_e/*@>237df*/[/*@>237dc*/0];
    /* S-Function (sdspcount2): '<S192>/Counter' */
    /*@>2488e*/VCU_B./*@>27fff*/Counter/*@>8460*/ = /*@>1fbea*/false;
    /*@>8464*/if (/*@>2489a*/VCU_B./*@>28005*/LogicalOperator_d) {
        /*@>251c9*/VCU_DW./*@>2840d*/Counter_Count/*@>8468*/ = /*@>26be2*/0U;
    }
    /*@>847e*/if (/*@>248ac*/VCU_B./*@>2800e*/Logic_i/*@>237e4*/[/*@>237e1*/0]) {
        /*@>1d693*/if (/*@>251d5*/VCU_DW./*@>28413*/Counter_Count/*@>8483*/ < /*@>1fdb3*/500) {
            /*@>251e7*/VCU_DW./*@>2841c*/Counter_Count/*@>26c32*/++;
        } else {
            /*@>251e1*/VCU_DW./*@>28419*/Counter_Count/*@>848a*/ = /*@>26be8*/0U;
        }
    }
    /*@>849c*/if (/*@>251db*/VCU_DW./*@>28416*/Counter_Count/*@>849b*/ == /*@>1fdb7*/500) {
        /*@>248b8*/VCU_B./*@>28014*/Counter/*@>84a0*/ = /*@>1fbf9*/true;
    }
    /* End of S-Function (sdspcount2): '<S192>/Counter' */

    /* S-Function (sdspcount2): '<S193>/Counter' */
    /*@>248be*/VCU_B./*@>28017*/Counter_d/*@>84e5*/ = /*@>1fbfe*/false;
    /*@>84e9*/if (/*@>248ca*/VCU_B./*@>2801d*/LogicalOperator_i) {
        /*@>25211*/VCU_DW./*@>2842b*/Counter_Count_i/*@>84ed*/ = /*@>26beb*/0U;
    }
    /*@>8503*/if (/*@>248e2*/VCU_B./*@>28029*/Logic_iz/*@>237f8*/[/*@>237f5*/0]) {
        /*@>1d69d*/if (/*@>25217*/VCU_DW./*@>2842e*/Counter_Count_i/*@>8508*/ < /*@>1fdbc*/200) {
            /*@>25229*/VCU_DW./*@>28437*/Counter_Count_i/*@>26c33*/++;
        } else {
            /*@>25223*/VCU_DW./*@>28434*/Counter_Count_i/*@>850f*/ = /*@>26bee*/0U;
        }
    }
    /*@>8521*/if (/*@>2521d*/VCU_DW./*@>28431*/Counter_Count_i/*@>8520*/ == /*@>1fdc2*/180) {
        /*@>248fa*/VCU_B./*@>28035*/Counter_d/*@>8525*/ = /*@>1fc0d*/true;
    }
    /* End of S-Function (sdspcount2): '<S193>/Counter' */

    /* DataTypeConversion: '<S139>/Data Type Conversion8' */
    /*@>24912*/VCU_B./*@>28041*/VOVG_ShiftUp_k/*@>798b*/ = /*@>24918*/VCU_B./*@>28044*/Logic_iz/*@>237fd*/[/*@>237fa*/0];
    /* UnitDelay: '<S204>/Delay Input1'
 *
 * Block description for '<S204>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>2492a*/VCU_B./*@>2804d*/Uk1_f/*@>8568*/ = /*@>2523b*/VCU_DW./*@>2843d*/DelayInput1_DSTATE_p;
    /* RelationalOperator: '<S204>/FixPt Relational Operator' */
    /*@>24942*/VCU_B./*@>28059*/FixPtRelationalOperator_d/*@>7990*/ = (/*@>24948*/VCU_B./*@>2805c*/Add_c/*@>798f*/ < /*@>2494e*/VCU_B./*@>2805f*/Uk1_f);
    /* Switch: '<S191>/Switch' */
    /*@>1d6a7*/if (/*@>24960*/VCU_B./*@>28068*/Logic_i/*@>23802*/[/*@>237ff*/0]) {
        /* MinMax: '<S191>/MinMax' incorporates:
 *  Constant: '<S191>/Constant'
 */
        /*@>2497e*/VCU_B./*@>28077*/Switch_g/*@>1d6aa*/ = /*@>1fdba*/20.0;
    } else {
        /* MinMax: '<S191>/MinMax' incorporates:
 *  Constant: '<S191>/Constant1'
 */
        /*@>24978*/VCU_B./*@>28074*/Switch_g/*@>8578*/ = /*@>1fdbb*/0.0;
    }
    /* End of Switch: '<S191>/Switch' */

    /* MinMax: '<S191>/MinMax' */
    /*@>20b3a*/if ((/*@>249a2*/VCU_B./*@>28089*/x_clutch_STW/*@>20b33*/ > /*@>249a8*/VCU_B./*@>2808c*/Switch_g)/*@>20b36*/ || /*@>2297a*/rtIsNaN(/*@>249ae*/VCU_B./*@>2808f*/Switch_g)) {
        /*@>249c0*/VCU_B./*@>28098*/MinMax/*@>20b3c*/ = /*@>249c6*/VCU_B./*@>2809b*/x_clutch_STW;
    } else {
        /*@>249b4*/VCU_B./*@>28092*/MinMax/*@>20b39*/ = /*@>249ba*/VCU_B./*@>28095*/Switch_g;
    }
    /*@>20b72*/if (!/*@<22950*/(/*@>249e4*/VCU_B./*@>280aa*/MinMax/*@>20b6b*/ > /*@>20f2c*/0.0)) {
        /*@>249f6*/VCU_B./*@>280b3*/MinMax/*@>20b71*/ = /*@>20f30*/0.0;
    }
    /* RelationalOperator: '<S194>/Compare' incorporates:
 *  Constant: '<S194>/Constant'
 */
    /*@>24a0e*/VCU_B./*@>280bf*/Compare_ao/*@>7996*/ = (/*@>24a14*/VCU_B./*@>280c2*/MinMax/*@>7995*/ > /*@>1fdc1*/1.0);
    /* DataTypeConversion: '<S139>/Data Type Conversion12' */
    /*@>24a26*/VCU_B./*@>280cb*/VOVG_IN_h/*@>7999*/ = /*@>24a2c*/VCU_B./*@>280ce*/Compare_ao;
    /* Sum: '<S191>/Add' */
    /*@>24a38*/VCU_B./*@>280d4*/Add/*@>a76f*/ = /*@>24a3e*/VCU_B./*@>280d7*/MinMax/*@>a76c*/ - /*@>24a44*/VCU_B./*@>280da*/x_clutch_b;
    /* RelationalOperator: '<S196>/Compare' incorporates:
 *  Constant: '<S196>/Constant'
 */
    /*@>24a4a*/VCU_B./*@>280dd*/Compare_gu/*@>79a2*/ = (/*@>24a50*/VCU_B./*@>280e0*/Add/*@>79a1*/ < /*@>1fdc4*/-0.5);
    /* Lookup_n-D: '<S191>/Duty Cycle MHJ9' */
    /*@>24a5c*/VCU_B./*@>280e6*/DutyCycleMHJ9/*@>a84c*/ = /*@>2297e*/look1_binlxpw(/*@>24a62*/VCU_B./*@>280e9*/Add, /*@>24fa6*/VCU_ConstP./*@>2835c*/pooled23, /*@>24fac*/VCU_ConstP./*@>2835f*/pooled22, /*@>1fce1*/14U);
    /* Product: '<S191>/Product1' */
    /*@>24a6e*/VCU_B./*@>280ef*/Product1/*@>79b0*/ = /*@>24a74*/VCU_B./*@>280f2*/DutyCycleMHJ9/*@>20071*/ * /*@>20864*/(real_T)/*@>24a7a*/VCU_B./*@>280f5*/Compare_gu;
    /* RelationalOperator: '<S195>/Compare' incorporates:
 *  Constant: '<S195>/Constant'
 */
    /*@>24a98*/VCU_B./*@>28104*/Compare_eh/*@>79b4*/ = (/*@>24a9e*/VCU_B./*@>28107*/x_clutch_b/*@>79b3*/ > /*@>1fdc8*/20.0);
    /* Switch: '<S191>/Switch1' incorporates:
 *  Constant: '<S191>/Constant2'
 *  Constant: '<S191>/Constant3'
 */
    /*@>1d6b1*/if (/*@>24ad4*/VCU_B./*@>28122*/Compare_eh) {
        /*@>24afe*/VCU_B./*@>28137*/Switch1/*@>1d6b4*/ = /*@>1fdc9*/2.0;
    } else {
        /*@>24af8*/VCU_B./*@>28134*/Switch1/*@>85b3*/ = /*@>1fdca*/1.0;
    }
    /* End of Switch: '<S191>/Switch1' */

    /* Product: '<S191>/Product2' */
    /*@>24b34*/VCU_B./*@>28152*/Product2/*@>79bc*/ = /*@>24b3a*/VCU_B./*@>28155*/Product1/*@>2006d*/ * /*@>24b40*/VCU_B./*@>28158*/Switch1;
    /* DataTypeConversion: '<S139>/Data Type Conversion15' */
    /*@>24b64*/VCU_B./*@>2816a*/MHJ9_OUT_d/*@>79bf*/ = /*@>24b6a*/VCU_B./*@>2816d*/Product2;
    /* RelationalOperator: '<S197>/Compare' incorporates:
 *  Constant: '<S197>/Constant'
 */
    /*@>24b82*/VCU_B./*@>28179*/Compare_m/*@>79c3*/ = (/*@>24b88*/VCU_B./*@>2817c*/Add/*@>79c2*/ > /*@>1fdd0*/0.0);
    /* Product: '<S191>/Product3' */
    /*@>24bb8*/VCU_B./*@>28194*/Product3/*@>79ca*/ = /*@>24bbe*/VCU_B./*@>28197*/DutyCycleMHJ9/*@>20069*/ * /*@>208a1*/(real_T)/*@>24bc4*/VCU_B./*@>2819a*/Compare_m;
    /* DataTypeConversion: '<S139>/Data Type Conversion14' */
    /*@>24be8*/VCU_B./*@>281ac*/MHJ9_IN_e/*@>79cd*/ = /*@>24bee*/VCU_B./*@>281af*/Product3;
    /* RelationalOperator: '<S198>/Compare' incorporates:
 *  Constant: '<S198>/Constant'
 */
    /*@>24c12*/VCU_B./*@>281c1*/Compare_md/*@>79d1*/ = (/*@>24c18*/VCU_B./*@>281c4*/Add/*@>79d0*/ < /*@>1fdd4*/-20.0);
    /* DataTypeConversion: '<S139>/Data Type Conversion13' */
    /*@>24c3c*/VCU_B./*@>281d6*/VOVG_OUT_j/*@>79d4*/ = /*@>24c42*/VCU_B./*@>281d9*/Compare_md;
    /* DataTypeConversion: '<S139>/Data Type Conversion16' */
    /*@>24c6c*/VCU_B./*@>281ee*/x_clutch_LC_b/*@>79d7*/ = /*@>1fdd7*/0.0;
    /* DataTypeConversion: '<S139>/Data Type Conversion17' */
    /*@>24c90*/VCU_B./*@>28200*/LC_Mdes_b/*@>79da*/ = /*@>1fdda*/0.0;
    /* DataTypeConversion: '<S139>/Data Type Conversion18' */
    /*@>24cb4*/VCU_B./*@>28212*/LC_Fnr_l/*@>79dd*/ = /*@>1fddb*/0.0;
    /* Update for UnitDelay: '<S192>/Unit Delay1' */
    /*@>25265*/VCU_DW./*@>28452*/UnitDelay1_DSTATE/*@>85c4*/ = /*@>24cd2*/VCU_B./*@>28221*/Logic_i/*@>23807*/[/*@>23804*/0];
    /* Update for Delay: '<S192>/Delay' */
/*@>1ce53*/    for (/*@>26c14*/rowIdx = /*@>1fde2*/0; /*@>26c1c*/rowIdx < /*@>1fde3*/19; /*@>26c19*/rowIdx/*@>26c34*/++) {
        /*@>25271*/VCU_DW./*@>28458*/Delay_DSTATE/*@>1b2bc*/[/*@>1fd56*/rowIdx]/*@>85f2*/ = /*@>25277*/VCU_DW./*@>2845b*/Delay_DSTATE/*@>2380f*/[/*@>2380b*/rowIdx/*@>23809*/ + /*@>2380c*/1];
    }
    /*@>2526b*/VCU_DW./*@>28455*/Delay_DSTATE/*@>860a*/[/*@>1fc2e*/19]/*@>8614*/ = /*@>24d14*/VCU_B./*@>28242*/LogicalOperator_d;
    /* End of Update for Delay: '<S192>/Delay' */

    /* Update for Memory: '<S208>/Memory' */
    /*@>2527d*/VCU_DW./*@>2845e*/Memory_PreviousInput/*@>7af1*/ = /*@>24d3e*/VCU_B./*@>28257*/Logic/*@>23814*/[/*@>23811*/0];
    /* Update for UnitDelay: '<S205>/Delay Input1'
 *
 * Block description for '<S205>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>25283*/VCU_DW./*@>28461*/DelayInput1_DSTATE/*@>8620*/ = /*@>24d5c*/VCU_B./*@>28266*/STW_shift_down_request;
    /* Update for Delay: '<S192>/Delay1' */
    /*@>25289*/VCU_DW./*@>28464*/Delay1_DSTATE/*@>862c*/ = /*@>24d6e*/VCU_B./*@>2826f*/LogicalOperator_d;
    /* Update for Memory: '<S206>/Memory' */
    /*@>2528f*/VCU_DW./*@>28467*/Memory_PreviousInput_l/*@>7af5*/ = /*@>24d80*/VCU_B./*@>28278*/Logic_i/*@>23819*/[/*@>23816*/0];
    /* Update for UnitDelay: '<S192>/Unit Delay4' */
    /*@>25295*/VCU_DW./*@>2846a*/UnitDelay4_DSTATE/*@>8638*/ = /*@>24d92*/VCU_B./*@>28281*/FixPtRelationalOperator_d;
    /* Update for UnitDelay: '<S193>/Unit Delay' */
    /*@>2529b*/VCU_DW./*@>2846d*/UnitDelay_DSTATE/*@>8644*/ = /*@>24da4*/VCU_B./*@>2828a*/Logic_iz/*@>2381e*/[/*@>2381b*/0];
    /* Update for UnitDelay: '<S192>/Unit Delay2' */
    /*@>252a1*/VCU_DW./*@>28470*/UnitDelay2_DSTATE/*@>8650*/ = /*@>24db6*/VCU_B./*@>28293*/Counter;
    /* Update for Memory: '<S207>/Memory' */
    /*@>252a7*/VCU_DW./*@>28473*/Memory_PreviousInput_a/*@>7afa*/ = /*@>24dce*/VCU_B./*@>2829f*/Logic_iy/*@>23823*/[/*@>23820*/0];
    /* Update for UnitDelay: '<S213>/Delay Input1'
 *
 * Block description for '<S213>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>252ad*/VCU_DW./*@>28476*/DelayInput1_DSTATE_g/*@>865c*/ = /*@>24de6*/VCU_B./*@>282ab*/STW_shift_up_request;
    /* Update for UnitDelay: '<S214>/Delay Input1'
 *
 * Block description for '<S214>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>252b3*/VCU_DW./*@>28479*/DelayInput1_DSTATE_ga/*@>8668*/ = /*@>24df2*/VCU_B./*@>282b1*/Add_j;
    /* Update for UnitDelay: '<S192>/Unit Delay' */
    /*@>252b9*/VCU_DW./*@>2847c*/UnitDelay_DSTATE_b/*@>8674*/ = /*@>24e0a*/VCU_B./*@>282bd*/Logic_iy/*@>23828*/[/*@>23825*/0];
    /* Update for UnitDelay: '<S193>/Unit Delay1' */
    /*@>252c5*/VCU_DW./*@>28482*/UnitDelay1_DSTATE_k/*@>8680*/ = /*@>24e16*/VCU_B./*@>282c3*/Counter_d;
    /* Update for Memory: '<S216>/Memory' */
    /*@>252cb*/VCU_DW./*@>28485*/Memory_PreviousInput_al/*@>7b00*/ = /*@>24e2e*/VCU_B./*@>282cf*/Logic_iz/*@>2382d*/[/*@>2382a*/0];
    /* Update for UnitDelay: '<S215>/Delay Input1'
 *
 * Block description for '<S215>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>252d7*/VCU_DW./*@>2848b*/DelayInput1_DSTATE_f/*@>868c*/ = /*@>24e3a*/VCU_B./*@>282d5*/Add_j;
    /* Update for Memory: '<S217>/Memory' */
    /*@>252dd*/VCU_DW./*@>2848e*/Memory_PreviousInput_k/*@>7b03*/ = /*@>24e40*/VCU_B./*@>282d8*/Logic_e/*@>23837*/[/*@>23834*/0];
    /* Update for UnitDelay: '<S204>/Delay Input1'
 *
 * Block description for '<S204>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>252e3*/VCU_DW./*@>28491*/DelayInput1_DSTATE_p/*@>8698*/ = /*@>24e46*/VCU_B./*@>282db*/Add_c;
}
/* End of Outputs for SubSystem: '<S7>/semi_auto_jr18' */

/* RelationalOperator: '<S135>/Compare' incorporates:
 *  Constant: '<S135>/Constant'
 */
/*@>23ec8*/VCU_B./*@>27b1c*/Compare_j/*@>7443*/ = (/*@>23ece*/VCU_B./*@>27b1f*/DataTypeConversion_cg/*@>7442*/ == /*@>1fd76*/2);
/* Outputs for Enabled SubSystem: '<S7>/driver_jr18' incorporates:
 *  EnablePort: '<S138>/Enable'
 */
/*@>7445*/if (/*@>23ee0*/VCU_B./*@>27b28*/Compare_j) {
    /* MinMax: '<S183>/MinMax' */
    /*@>20baa*/if (/*@>23ef2*/VCU_B./*@>27b31*/x_clutch_STW/*@>20ba3*/ > /*@>20f32*/0.0) {
        /*@>23f16*/VCU_B./*@>27b43*/MinMax_l/*@>20bac*/ = /*@>23f1c*/VCU_B./*@>27b46*/x_clutch_STW;
    } else {
        /*@>23f10*/VCU_B./*@>27b40*/MinMax_l/*@>20ba9*/ = /*@>20f36*/0.0;
    }
    /* End of MinMax: '<S183>/MinMax' */

    /* RelationalOperator: '<S186>/Compare' incorporates:
 *  Constant: '<S186>/Constant'
 */
    /*@>23f76*/VCU_B./*@>27b73*/Compare_bd/*@>7b39*/ = (/*@>23f7c*/VCU_B./*@>27b76*/MinMax_l/*@>7b38*/ > /*@>1fd79*/1.0);
    /* DataTypeConversion: '<S138>/Data Type Conversion12' */
    /*@>23f94*/VCU_B./*@>27b82*/VOVG_IN_c/*@>7b3c*/ = /*@>23f9a*/VCU_B./*@>27b85*/Compare_bd;
    /* Sum: '<S183>/Add' */
    /*@>23fe2*/VCU_B./*@>27ba9*/Add_l/*@>a788*/ = /*@>23fe8*/VCU_B./*@>27bac*/MinMax_l/*@>a785*/ - /*@>23fee*/VCU_B./*@>27baf*/x_clutch_b;
    /* RelationalOperator: '<S188>/Compare' incorporates:
 *  Constant: '<S188>/Constant'
 */
    /*@>24006*/VCU_B./*@>27bbb*/Compare_e5/*@>7b45*/ = (/*@>2400c*/VCU_B./*@>27bbe*/Add_l/*@>7b44*/ < /*@>1fd7b*/-0.5);
    /* Lookup_n-D: '<S183>/Duty Cycle MHJ9' */
    /*@>2402a*/VCU_B./*@>27bcd*/DutyCycleMHJ9_d/*@>a875*/ = /*@>22982*/look1_binlxpw(/*@>24030*/VCU_B./*@>27bd0*/Add_l, /*@>24f3a*/VCU_ConstP./*@>28326*/pooled23, /*@>24f40*/VCU_ConstP./*@>28329*/pooled22, /*@>1fce7*/14U);
    /* Product: '<S183>/Product1' */
    /*@>24078*/VCU_B./*@>27bf4*/Product1_p/*@>7b53*/ = /*@>2407e*/VCU_B./*@>27bf7*/DutyCycleMHJ9_d/*@>20065*/ * /*@>204a6*/(real_T)/*@>24084*/VCU_B./*@>27bfa*/Compare_e5;
    /* RelationalOperator: '<S187>/Compare' incorporates:
 *  Constant: '<S187>/Constant'
 */
    /*@>240a2*/VCU_B./*@>27c09*/Compare_p/*@>7b57*/ = (/*@>240a8*/VCU_B./*@>27c0c*/x_clutch_b/*@>7b56*/ > /*@>1fd7e*/20.0);
    /* Switch: '<S183>/Switch1' incorporates:
 *  Constant: '<S183>/Constant2'
 *  Constant: '<S183>/Constant3'
 */
    /*@>1d67a*/if (/*@>240c0*/VCU_B./*@>27c18*/Compare_p) {
        /*@>24108*/VCU_B./*@>27c3c*/Switch1_e/*@>1d67d*/ = /*@>1fd7f*/2.0;
    } else {
        /*@>24102*/VCU_B./*@>27c39*/Switch1_e/*@>86ce*/ = /*@>1fd80*/1.0;
    }
    /* End of Switch: '<S183>/Switch1' */

    /* Product: '<S183>/Product2' */
    /*@>24138*/VCU_B./*@>27c54*/Product2_p/*@>7b5f*/ = /*@>2413e*/VCU_B./*@>27c57*/Product1_p/*@>20061*/ * /*@>24144*/VCU_B./*@>27c5a*/Switch1_e;
    /* DataTypeConversion: '<S138>/Data Type Conversion15' */
    /*@>24192*/VCU_B./*@>27c81*/MHJ9_OUT_k/*@>7b62*/ = /*@>24198*/VCU_B./*@>27c84*/Product2_p;
    /* RelationalOperator: '<S189>/Compare' incorporates:
 *  Constant: '<S189>/Constant'
 */
    /*@>241b0*/VCU_B./*@>27c90*/Compare_gz/*@>7b66*/ = (/*@>241b6*/VCU_B./*@>27c93*/Add_l/*@>7b65*/ > /*@>1fd83*/0.0);
    /* Product: '<S183>/Product3' */
    /*@>241d4*/VCU_B./*@>27ca2*/Product3_d/*@>7b6d*/ = /*@>241da*/VCU_B./*@>27ca5*/DutyCycleMHJ9_d/*@>2005d*/ * /*@>204fa*/(real_T)/*@>241e0*/VCU_B./*@>27ca8*/Compare_gz;
    /* DataTypeConversion: '<S138>/Data Type Conversion14' */
    /*@>24234*/VCU_B./*@>27cd2*/MHJ9_IN_p/*@>7b70*/ = /*@>2423a*/VCU_B./*@>27cd5*/Product3_d;
    /* RelationalOperator: '<S190>/Compare' incorporates:
 *  Constant: '<S190>/Constant'
 */
    /*@>24276*/VCU_B./*@>27cf3*/Compare_bh/*@>7b74*/ = (/*@>2427c*/VCU_B./*@>27cf6*/Add_l/*@>7b73*/ < /*@>1fd86*/-20.0);
    /* DataTypeConversion: '<S138>/Data Type Conversion13' */
    /*@>2429a*/VCU_B./*@>27d05*/VOVG_OUT_o/*@>7b77*/ = /*@>242a0*/VCU_B./*@>27d08*/Compare_bh;
    /* RelationalOperator: '<S184>/Compare' incorporates:
 *  Constant: '<S184>/Constant'
 */
    /*@>242e8*/VCU_B./*@>27d2c*/Compare_g5/*@>7b7b*/ = (/*@>242ee*/VCU_B./*@>27d2f*/DataTypeConversion3/*@>7b7a*/ < /*@>1fd87*/3.0);
    /* Logic: '<S138>/Logical Operator1' */
    /*@>24312*/VCU_B./*@>27d41*/LogicalOperator1/*@>7b81*/ = ((/*@>24318*/VCU_B./*@>27d44*/STW_shift_up_request/*@>2005a*/ != /*@>20058*/0.0)/*@>7b80*/ && /*@>2431e*/VCU_B./*@>27d47*/Compare_g5);
    /* DataTypeConversion: '<S138>/Data Type Conversion8' */
    /*@>2433c*/VCU_B./*@>27d56*/VOVG_ShiftUp_o/*@>7b84*/ = /*@>24342*/VCU_B./*@>27d59*/LogicalOperator1;
    /* RelationalOperator: '<S185>/Compare' incorporates:
 *  Constant: '<S185>/Constant'
 */
    /*@>24384*/VCU_B./*@>27d7a*/Compare_mz/*@>7b88*/ = (/*@>2438a*/VCU_B./*@>27d7d*/DataTypeConversion3/*@>7b87*/ >= /*@>1fd8a*/0.0);
    /* Logic: '<S138>/Logical Operator' */
    /*@>243a2*/VCU_B./*@>27d89*/LogicalOperator_e/*@>7b8e*/ = (/*@>243a8*/VCU_B./*@>27d8c*/Compare_mz/*@>7b8d*/ && (/*@>243ae*/VCU_B./*@>27d8f*/STW_shift_down_request/*@>20056*/ != /*@>20054*/0.0));
    /* DataTypeConversion: '<S138>/Data Type Conversion10' */
    /*@>243c0*/VCU_B./*@>27d98*/VOVG_ShiftDown_f/*@>7b91*/ = /*@>243c6*/VCU_B./*@>27d9b*/LogicalOperator_e;
    /* DataTypeConversion: '<S138>/Data Type Conversion11' */
    /*@>24414*/VCU_B./*@>27dc2*/Ignition_Cut_h/*@>7b94*/ = /*@>1fd8d*/0.0;
    /* DataTypeConversion: '<S138>/Data Type Conversion16' */
    /*@>24420*/VCU_B./*@>27dc8*/x_clutch_LC_i/*@>7b97*/ = /*@>1fd8f*/0.0;
    /* DataTypeConversion: '<S138>/Data Type Conversion17' */
    /*@>24438*/VCU_B./*@>27dd4*/LC_Mdes_f/*@>7b9a*/ = /*@>1fd92*/0.0;
    /* DataTypeConversion: '<S138>/Data Type Conversion18' */
    /*@>24480*/VCU_B./*@>27df8*/LC_Fnr_f/*@>7b9d*/ = /*@>1fd93*/0.0;
}
/* End of Outputs for SubSystem: '<S7>/driver_jr18' */

/* MultiPortSwitch: '<S7>/Multiport Switch' */
/*@>744a*/switch (/*@>23f0a*/VCU_B./*@>27b3d*/DataTypeConversion_cg) {
  case /*@>1f730*/1:
    /*@>23f3a*/VCU_B./*@>27b55*/VOVG_ShiftUp/*@>744e*/ = /*@>23f40*/VCU_B./*@>27b58*/VOVG_ShiftUp_k;
    break;
  case /*@>1f731*/2:
    /*@>23f46*/VCU_B./*@>27b5b*/VOVG_ShiftUp/*@>7450*/ = /*@>23f4c*/VCU_B./*@>27b5e*/VOVG_ShiftUp_o;
    break;
  case /*@>1f732*/3:
    /*@>23f52*/VCU_B./*@>27b61*/VOVG_ShiftUp/*@>7452*/ = /*@>23f58*/VCU_B./*@>27b64*/VOVG_ShiftUp_d;
    break;
  default:
    /*@>23f2e*/VCU_B./*@>27b4f*/VOVG_ShiftUp/*@>744c*/ = /*@>23f34*/VCU_B./*@>27b52*/VOVG_ShiftUp_k;
    break;
}
/*@>7455*/switch (/*@>23f8e*/VCU_B./*@>27b7f*/DataTypeConversion_cg) {
  case /*@>1f745*/1:
    /*@>23fbe*/VCU_B./*@>27b97*/LC_Fnr/*@>7459*/ = /*@>23fc4*/VCU_B./*@>27b9a*/LC_Fnr_l;
    break;
  case /*@>1f746*/2:
    /*@>23fca*/VCU_B./*@>27b9d*/LC_Fnr/*@>745b*/ = /*@>23fd0*/VCU_B./*@>27ba0*/LC_Fnr_f;
    break;
  case /*@>1f747*/3:
    /*@>23fd6*/VCU_B./*@>27ba3*/LC_Fnr/*@>745d*/ = /*@>23fdc*/VCU_B./*@>27ba6*/LC_Fnr_e;
    break;
  default:
    /*@>23fb2*/VCU_B./*@>27b91*/LC_Fnr/*@>7457*/ = /*@>23fb8*/VCU_B./*@>27b94*/LC_Fnr_l;
    break;
}
/*@>7460*/switch (/*@>24024*/VCU_B./*@>27bca*/DataTypeConversion_cg) {
  case /*@>1f75a*/1:
    /*@>24054*/VCU_B./*@>27be2*/VOVG_ShiftDown/*@>7464*/ = /*@>2405a*/VCU_B./*@>27be5*/VOVG_ShiftDown_m;
    break;
  case /*@>1f75b*/2:
    /*@>24060*/VCU_B./*@>27be8*/VOVG_ShiftDown/*@>7466*/ = /*@>24066*/VCU_B./*@>27beb*/VOVG_ShiftDown_f;
    break;
  case /*@>1f75c*/3:
    /*@>2406c*/VCU_B./*@>27bee*/VOVG_ShiftDown/*@>7468*/ = /*@>24072*/VCU_B./*@>27bf1*/VOVG_ShiftDown_i;
    break;
  default:
    /*@>24048*/VCU_B./*@>27bdc*/VOVG_ShiftDown/*@>7462*/ = /*@>2404e*/VCU_B./*@>27bdf*/VOVG_ShiftDown_m;
    break;
}
/*@>746b*/switch (/*@>240ba*/VCU_B./*@>27c15*/DataTypeConversion_cg) {
  case /*@>1f76f*/1:
    /*@>240de*/VCU_B./*@>27c27*/Ignition_Cut/*@>746f*/ = /*@>240e4*/VCU_B./*@>27c2a*/Ignition_Cut_o;
    break;
  case /*@>1f770*/2:
    /*@>240ea*/VCU_B./*@>27c2d*/Ignition_Cut/*@>7471*/ = /*@>240f0*/VCU_B./*@>27c30*/Ignition_Cut_h;
    break;
  case /*@>1f771*/3:
    /*@>240f6*/VCU_B./*@>27c33*/Ignition_Cut/*@>7473*/ = /*@>240fc*/VCU_B./*@>27c36*/Ignition_Cut_g;
    break;
  default:
    /*@>240d2*/VCU_B./*@>27c21*/Ignition_Cut/*@>746d*/ = /*@>240d8*/VCU_B./*@>27c24*/Ignition_Cut_o;
    break;
}
/*@>7476*/switch (/*@>24132*/VCU_B./*@>27c51*/DataTypeConversion_cg) {
  case /*@>1f784*/1:
    /*@>2416e*/VCU_B./*@>27c6f*/VOVG_IN/*@>747a*/ = /*@>24174*/VCU_B./*@>27c72*/VOVG_IN_h;
    break;
  case /*@>1f785*/2:
    /*@>2417a*/VCU_B./*@>27c75*/VOVG_IN/*@>747c*/ = /*@>24180*/VCU_B./*@>27c78*/VOVG_IN_c;
    break;
  case /*@>1f786*/3:
    /*@>24186*/VCU_B./*@>27c7b*/VOVG_IN/*@>747e*/ = /*@>2418c*/VCU_B./*@>27c7e*/VOVG_IN_b;
    break;
  default:
    /*@>24162*/VCU_B./*@>27c69*/VOVG_IN/*@>7478*/ = /*@>24168*/VCU_B./*@>27c6c*/VOVG_IN_h;
    break;
}
/*@>7481*/switch (/*@>241ce*/VCU_B./*@>27c9f*/DataTypeConversion_cg) {
  case /*@>1f799*/1:
    /*@>24210*/VCU_B./*@>27cc0*/VOVG_OUT/*@>7485*/ = /*@>24216*/VCU_B./*@>27cc3*/VOVG_OUT_j;
    break;
  case /*@>1f79a*/2:
    /*@>2421c*/VCU_B./*@>27cc6*/VOVG_OUT/*@>7487*/ = /*@>24222*/VCU_B./*@>27cc9*/VOVG_OUT_o;
    break;
  case /*@>1f79b*/3:
    /*@>24228*/VCU_B./*@>27ccc*/VOVG_OUT/*@>7489*/ = /*@>2422e*/VCU_B./*@>27ccf*/VOVG_OUT_i;
    break;
  default:
    /*@>24204*/VCU_B./*@>27cba*/VOVG_OUT/*@>7483*/ = /*@>2420a*/VCU_B./*@>27cbd*/VOVG_OUT_j;
    break;
}
/*@>748c*/switch (/*@>24294*/VCU_B./*@>27d02*/DataTypeConversion_cg) {
  case /*@>1f7ae*/1:
    /*@>242c4*/VCU_B./*@>27d1a*/MHJ9_IN/*@>7490*/ = /*@>242ca*/VCU_B./*@>27d1d*/MHJ9_IN_e;
    break;
  case /*@>1f7af*/2:
    /*@>242d0*/VCU_B./*@>27d20*/MHJ9_IN/*@>7492*/ = /*@>242d6*/VCU_B./*@>27d23*/MHJ9_IN_p;
    break;
  case /*@>1f7b0*/3:
    /*@>242dc*/VCU_B./*@>27d26*/MHJ9_IN/*@>7494*/ = /*@>242e2*/VCU_B./*@>27d29*/MHJ9_IN_m;
    break;
  default:
    /*@>242b8*/VCU_B./*@>27d14*/MHJ9_IN/*@>748e*/ = /*@>242be*/VCU_B./*@>27d17*/MHJ9_IN_e;
    break;
}
/*@>7497*/switch (/*@>24336*/VCU_B./*@>27d53*/DataTypeConversion_cg) {
  case /*@>1f7c3*/1:
    /*@>24360*/VCU_B./*@>27d68*/MHJ9_OUT/*@>749b*/ = /*@>24366*/VCU_B./*@>27d6b*/MHJ9_OUT_d;
    break;
  case /*@>1f7c4*/2:
    /*@>2436c*/VCU_B./*@>27d6e*/MHJ9_OUT/*@>749d*/ = /*@>24372*/VCU_B./*@>27d71*/MHJ9_OUT_k;
    break;
  case /*@>1f7c5*/3:
    /*@>24378*/VCU_B./*@>27d74*/MHJ9_OUT/*@>749f*/ = /*@>2437e*/VCU_B./*@>27d77*/MHJ9_OUT_p;
    break;
  default:
    /*@>24354*/VCU_B./*@>27d62*/MHJ9_OUT/*@>7499*/ = /*@>2435a*/VCU_B./*@>27d65*/MHJ9_OUT_d;
    break;
}
/*@>74a2*/switch (/*@>243ba*/VCU_B./*@>27d95*/DataTypeConversion_cg) {
  case /*@>1f7d8*/1:
    /*@>243f0*/VCU_B./*@>27db0*/x_clutch_LC/*@>74a6*/ = /*@>243f6*/VCU_B./*@>27db3*/x_clutch_LC_b;
    break;
  case /*@>1f7d9*/2:
    /*@>243fc*/VCU_B./*@>27db6*/x_clutch_LC/*@>74a8*/ = /*@>24402*/VCU_B./*@>27db9*/x_clutch_LC_i;
    break;
  case /*@>1f7da*/3:
    /*@>24408*/VCU_B./*@>27dbc*/x_clutch_LC/*@>74aa*/ = /*@>2440e*/VCU_B./*@>27dbf*/x_clutch_LC_n;
    break;
  default:
    /*@>243e4*/VCU_B./*@>27daa*/x_clutch_LC/*@>74a4*/ = /*@>243ea*/VCU_B./*@>27dad*/x_clutch_LC_b;
    break;
}
/*@>74ad*/switch (/*@>24432*/VCU_B./*@>27dd1*/DataTypeConversion_cg) {
  case /*@>1f7ed*/1:
    /*@>2445c*/VCU_B./*@>27de6*/LC_Mdes/*@>74b1*/ = /*@>24462*/VCU_B./*@>27de9*/LC_Mdes_b;
    break;
  case /*@>1f7ee*/2:
    /*@>24468*/VCU_B./*@>27dec*/LC_Mdes/*@>74b3*/ = /*@>2446e*/VCU_B./*@>27def*/LC_Mdes_f;
    break;
  case /*@>1f7ef*/3:
    /*@>24474*/VCU_B./*@>27df2*/LC_Mdes/*@>74b5*/ = /*@>2447a*/VCU_B./*@>27df5*/LC_Mdes_bl;
    break;
  default:
    /*@>24450*/VCU_B./*@>27de0*/LC_Mdes/*@>74af*/ = /*@>24456*/VCU_B./*@>27de3*/LC_Mdes_b;
    break;
}
/* End of MultiPortSwitch: '<S7>/Multiport Switch' */

/* MultiPortSwitch: '<S7>/Multiport Switch1' */
/*@>1d708*/if (/*@>244b0*/VCU_B./*@>27e10*/DataTypeConversion_cg/*@>1d707*/ == /*@>1fe0e*/1) {
    /*@>244d4*/VCU_B./*@>27e22*/LC_active_bit/*@>74bc*/ = /*@>244da*/VCU_B./*@>27e25*/LogicalOperator_a;
    /*@>244fe*/VCU_B./*@>27e37*/LC_ready_bit/*@>74c3*/ = /*@>24504*/VCU_B./*@>27e3a*/RelationalOperator_l;
} else {
    /*@>244ce*/VCU_B./*@>27e1f*/LC_active_bit/*@>74ba*/ = /*@>24ebf*/VCU_ConstB./*@>28314*/LC_active_bit;
    /*@>244f8*/VCU_B./*@>27e34*/LC_ready_bit/*@>74c1*/ = /*@>24ec5*/VCU_ConstB./*@>28317*/LC_ready_bit;
}
/* End of MultiPortSwitch: '<S7>/Multiport Switch1' */





      
  


        
    
      
          }
    
  



                








  


  


  


  

