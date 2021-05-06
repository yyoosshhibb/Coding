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
 * C/C++ source code generated on  : Thu Apr 29 19:26:38 2021
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
/*@>24ef9*/VCU_DW./*@>269b6*/Counter1_Count_m/*@>737a*/ = /*@>26982*/0U;
/* InitializeConditions for S-Function (sdspcount2): '<S143>/Counter' */
/*@>24eff*/VCU_DW./*@>269b9*/Counter_Count_b/*@>7386*/ = /*@>26985*/0U;
/* InitializeConditions for S-Function (sdspcount2): '<S144>/Counter' */
/*@>24f05*/VCU_DW./*@>269bc*/Counter_Count_n/*@>7392*/ = /*@>26988*/0U;
/* SystemInitialize for Enabled SubSystem: '<S142>/Clutch Pos calc' */
/* SystemInitialize for MinMax: '<S140>/MinMax' incorporates:
 *  Outport: '<S150>/x_clutch_LC'
 */
/*@>23cf4*/VCU_B./*@>269b3*/Memory1/*@>739e*/ = /*@>1f405*/12.5;
/* End of SystemInitialize for SubSystem: '<S142>/Clutch Pos calc' */
/* End of SystemInitialize for SubSystem: '<S7>/LC_jr19' */

/* SystemInitialize for Enabled SubSystem: '<S7>/semi_auto_jr18' */
/* InitializeConditions for S-Function (sdspcount2): '<S193>/Counter1' */
/*@>24f0b*/VCU_DW./*@>269bf*/Counter1_Count/*@>73aa*/ = /*@>2698b*/0U;
/* InitializeConditions for S-Function (sdspcount2): '<S192>/Counter' */
/*@>24f11*/VCU_DW./*@>269c2*/Counter_Count/*@>73b6*/ = /*@>2698e*/0U;
/* InitializeConditions for S-Function (sdspcount2): '<S193>/Counter' */
/*@>24f17*/VCU_DW./*@>269c5*/Counter_Count_i/*@>73c2*/ = /*@>26991*/0U;
/* End of SystemInitialize for SubSystem: '<S7>/semi_auto_jr18' */




    
  



          }
    
  



       
    
  

          /* Output and update for atomic system: '<Root>/Transmission' */
      
              
  
        void FUNC_Transmission(void)
  {
  
                      
      
int32_T rowIdx;
boolean_T tmp;
real_T tmp_0;

      
      
  



                          
      
  



                                /* DataTypeConversion: '<S7>/Data Type Conversion' */
/*@>200d0*/tmp_0/*@>200d2*/ = /*@>22818*/floor(/*@>23cfa*/VCU_B./*@>2798d*/STW_transmission_mode);
/*@>200f0*/if (/*@>2281a*/rtIsNaN(/*@>200d4*/tmp_0)/*@>200de*/ || /*@>2281c*/rtIsInf(/*@>200d9*/tmp_0)) {
    /*@>200e1*/tmp_0/*@>200e3*/ = /*@>200e0*/0.0;
} else {
    /*@>200ec*/tmp_0/*@>200ee*/ = /*@>2281e*/fmod(/*@>200e5*/tmp_0, /*@>200e9*/256.0);
}
/*@>23d00*/VCU_B./*@>27990*/DataTypeConversion_cg/*@>73cf*/ = /*@>202a5*/(int8_T)(/*@>200f7*/tmp_0/*@>200fa*/ < /*@>200f6*/0.0/*@>200fa*/ ? (int32_T)/*@>2010c*/(int8_T)-/*@<2010b*//*@>20100*/(int8_T)/*@>2010e*/(uint8_T)-/*@<200fe*//*@>200fb*/tmp_0 : (int32_T)/*@>20106*/(int8_T)/*@>20111*/(uint8_T)/*@>20102*/tmp_0);
/* End of DataTypeConversion: '<S7>/Data Type Conversion' */

/* RelationalOperator: '<S136>/Compare' incorporates:
 *  Constant: '<S136>/Constant'
 */
/*@>23d06*/VCU_B./*@>27993*/Compare/*@>73d3*/ = (/*@>23d0c*/VCU_B./*@>27996*/DataTypeConversion_cg/*@>73d2*/ == /*@>1fc24*/3);
/* Outputs for Enabled SubSystem: '<S7>/LC_jr19' incorporates:
 *  EnablePort: '<S137>/Enable'
 */
/*@>73d5*/if (/*@>23d12*/VCU_B./*@>27999*/Compare) {
    /*@>73d8*/if (!/*@<73d7*//*@>24f23*/VCU_DW./*@>2821b*/LC_jr19_MODE) {
        /*@>24f2f*/VCU_DW./*@>28221*/LC_jr19_MODE/*@>73da*/ = /*@>1f5c4*/true;
    }
    /* CombinatorialLogic: '<S174>/Logic' incorporates:
 *  Delay: '<S143>/Delay'
 *  Memory: '<S174>/Memory'
 *  UnitDelay: '<S143>/Unit Delay1'
 */
    /*@>23d1e*/VCU_B./*@>2799f*/UnitDelay1_h/*@>7bb7*/ = /*@>24f35*/VCU_DW./*@>28224*/UnitDelay1_DSTATE_d;
    /*@>23d30*/VCU_B./*@>279a8*/Delay_f/*@>7bc5*/ = /*@>24f47*/VCU_DW./*@>2822d*/Delay_DSTATE_i/*@>235ba*/[/*@>235b7*/0];
    /*@>23d42*/VCU_B./*@>279b1*/Memory_k/*@>756d*/ = /*@>24f4d*/VCU_DW./*@>28230*/Memory_PreviousInput_c;
    /*@>1fcc6*/rowIdx/*@>1d5f2*/ = /*@>23d5a*/VCU_B./*@>279bd*/UnitDelay1_h;
    /*@>1fcca*/rowIdx/*@>1d619*/ = /*@>202d8*/(int32_T)((/*@>202d5*/(uint32_T)/*@>1fccc*/rowIdx/*@>200c8*/ << /*@>1fcce*/1)/*@>200c6*/ + /*@>23d66*/VCU_B./*@>279c3*/Delay_f);
    /*@>1fcd1*/rowIdx/*@>1d640*/ = /*@>202e7*/(int32_T)((/*@>202e4*/(uint32_T)/*@>1fcd3*/rowIdx/*@>200be*/ << /*@>1fcd5*/1)/*@>200bc*/ + /*@>23d72*/VCU_B./*@>279c9*/Memory_k);
    /*@>23d8a*/VCU_B./*@>279d5*/Logic_a/*@>1d656*/[/*@>1fcda*/0U]/*@>1d655*/ = /*@>24dd2*/VCU_ConstP./*@>281ca*/pooled33/*@>235c6*/[/*@>235c1*/(uint32_T)/*@>235c3*/rowIdx];
    /*@>23d9c*/VCU_B./*@>279de*/Logic_a/*@>1d669*/[/*@>1fcdf*/1U]/*@>1d668*/ = /*@>24dd8*/VCU_ConstP./*@>281cd*/pooled33/*@>235cf*/[/*@>235cb*/rowIdx/*@>235c8*/ + /*@>235cc*/8U];
    /* DataTypeConversion: '<S137>/Data Type Conversion1' */
    /*@>23dae*/VCU_B./*@>279e7*/VOVG_ShiftDown_i/*@>7571*/ = /*@>23db4*/VCU_B./*@>279ea*/Logic_a/*@>235d4*/[/*@>235d1*/0];
    /* UnitDelay: '<S171>/Delay Input1'
 *
 * Block description for '<S171>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>23dd8*/VCU_B./*@>279fc*/Uk1_o/*@>7c21*/ = /*@>24f65*/VCU_DW./*@>2823c*/DelayInput1_DSTATE_a;
    /* CombinatorialLogic: '<S172>/Logic' incorporates:
 *  RelationalOperator: '<S171>/FixPt Relational Operator'
 */
    /*@>23e14*/VCU_B./*@>27a1a*/FixPtRelationalOperator_l/*@>7576*/ = (/*@>23e1a*/VCU_B./*@>27a1d*/STW_shift_down_request/*@>7575*/ > /*@>23e20*/VCU_B./*@>27a20*/Uk1_o);
    /* UnitDelay: '<S143>/Unit Delay4' */
    /*@>23e38*/VCU_B./*@>27a2c*/UnitDelay4_b/*@>7c2d*/ = /*@>24f6b*/VCU_DW./*@>2823f*/UnitDelay4_DSTATE_k;
    /* RelationalOperator: '<S165>/Compare' incorporates:
 *  Constant: '<S165>/Constant'
 */
    /*@>23e56*/VCU_B./*@>27a3b*/Compare_em/*@>757b*/ = (/*@>23e5c*/VCU_B./*@>27a3e*/x_clutch_STW/*@>757a*/ >= /*@>1fc2c*/15.0);
    /* Switch: '<S143>/Switch' incorporates:
 *  Constant: '<S143>/Constant'
 *  Constant: '<S143>/Constant1'
 */
    /*@>1d527*/if (/*@>23eb0*/VCU_B./*@>27a68*/Compare_em) {
        /*@>23ece*/VCU_B./*@>27a77*/Switch_e/*@>1d52a*/ = /*@>1fc2e*/1.0;
    } else {
        /*@>23ec8*/VCU_B./*@>27a74*/Switch_e/*@>7c3d*/ = /*@>1fc2f*/2.0;
    }
    /* End of Switch: '<S143>/Switch' */

    /* RelationalOperator: '<S143>/Relational Operator' */
    /*@>23f40*/VCU_B./*@>27ab0*/LessthanNeutral_m/*@>7580*/ = (/*@>23f46*/VCU_B./*@>27ab3*/DataTypeConversion3/*@>757f*/ < /*@>23f4c*/VCU_B./*@>27ab6*/Switch_e);
    /* UnitDelay: '<S144>/Unit Delay' */
    /*@>23f64*/VCU_B./*@>27ac2*/UnitDelay_j/*@>7c4e*/ = /*@>24f83*/VCU_DW./*@>2824b*/UnitDelay_DSTATE_m;
    /* UnitDelay: '<S143>/Unit Delay2' */
    /*@>23f7c*/VCU_B./*@>27ace*/Timeout_n/*@>7c5a*/ = /*@>24f89*/VCU_DW./*@>2824e*/UnitDelay2_DSTATE_n;
    /* RelationalOperator: '<S167>/Compare' incorporates:
 *  Constant: '<S167>/Constant'
 */
    /*@>23fc4*/VCU_B./*@>27af2*/Compare_nv/*@>7586*/ = (/*@>23fca*/VCU_B./*@>27af5*/DataTypeConversion3/*@>7585*/ == /*@>1fc33*/2.0);
    /* RelationalOperator: '<S166>/Compare' incorporates:
 *  Constant: '<S166>/Constant'
 */
    /*@>23fd6*/VCU_B./*@>27afb*/Compare_ad/*@>758a*/ = (/*@>23fdc*/VCU_B./*@>27afe*/DataTypeConversion2/*@>7589*/ > /*@>1fc34*/5550.0);
    /* Logic: '<S143>/Logical Operator1' */
    /*@>24000*/VCU_B./*@>27b10*/RPMcheckgear21_n/*@>7590*/ = (/*@>24006*/VCU_B./*@>27b13*/Compare_nv/*@>758f*/ && /*@>2400c*/VCU_B./*@>27b16*/Compare_ad);
    /* RelationalOperator: '<S168>/Compare' incorporates:
 *  Constant: '<S168>/Constant'
 */
    /*@>24054*/VCU_B./*@>27b3a*/Compare_ex/*@>7594*/ = (/*@>2405a*/VCU_B./*@>27b3d*/DataTypeConversion2/*@>7593*/ > /*@>1fc36*/6200.0);
    /* RelationalOperator: '<S169>/Compare' incorporates:
 *  Constant: '<S169>/Constant'
 */
    /*@>24072*/VCU_B./*@>27b49*/Compare_gl/*@>7598*/ = (/*@>24078*/VCU_B./*@>27b4c*/DataTypeConversion3/*@>7597*/ == /*@>1fc37*/3.0);
    /* Logic: '<S143>/Logical Operator2' */
    /*@>240a2*/VCU_B./*@>27b61*/RPMcheckgear31_g/*@>759e*/ = (/*@>240a8*/VCU_B./*@>27b64*/Compare_ex/*@>759d*/ && /*@>240ae*/VCU_B./*@>27b67*/Compare_gl);
    /* CombinatorialLogic: '<S172>/Logic' incorporates:
 *  Logic: '<S143>/Logical Operator'
 *  Memory: '<S172>/Memory'
 */
    /*@>240fc*/VCU_B./*@>27b8e*/LogicalOperator_c/*@>75b0*/ = (/*@>24102*/VCU_B./*@>27b91*/UnitDelay4_b/*@>75a3*/ || /*@>24108*/VCU_B./*@>27b94*/LessthanNeutral_m/*@>75a6*/ || /*@>2410e*/VCU_B./*@>27b97*/UnitDelay_j/*@>75a9*/ || /*@>24114*/VCU_B./*@>27b9a*/Timeout_n/*@>75ac*/ || /*@>2411a*/VCU_B./*@>27b9d*/RPMcheckgear21_n/*@>75af*/ || /*@>24120*/VCU_B./*@>27ba0*/RPMcheckgear31_g);
    /*@>2413e*/VCU_B./*@>27baf*/Memory_kz/*@>75b2*/ = /*@>24f95*/VCU_DW./*@>28254*/Memory_PreviousInput_ao;
    /*@>1fd1a*/rowIdx/*@>1d7e7*/ = /*@>24162*/VCU_B./*@>27bc1*/FixPtRelationalOperator_l;
    /*@>1fd1e*/rowIdx/*@>1d80e*/ = /*@>2040f*/(int32_T)((/*@>2040c*/(uint32_T)/*@>1fd20*/rowIdx/*@>200b3*/ << /*@>1fd22*/1)/*@>200b1*/ + /*@>241bc*/VCU_B./*@>27bee*/LogicalOperator_c);
    /*@>1fd25*/rowIdx/*@>1d835*/ = /*@>2042e*/(int32_T)((/*@>2042b*/(uint32_T)/*@>1fd27*/rowIdx/*@>200a9*/ << /*@>1fd29*/1)/*@>200a7*/ + /*@>241e0*/VCU_B./*@>27c00*/Memory_kz);
    /*@>241fe*/VCU_B./*@>27c0f*/Logic_il/*@>1d84b*/[/*@>1fd2e*/0U]/*@>1d84a*/ = /*@>24e02*/VCU_ConstP./*@>281e2*/pooled33/*@>23600*/[/*@>235fb*/(uint32_T)/*@>235fd*/rowIdx];
    /*@>2424c*/VCU_B./*@>27c36*/Logic_il/*@>1d85e*/[/*@>1fd33*/1U]/*@>1d85d*/ = /*@>24e08*/VCU_ConstP./*@>281e5*/pooled33/*@>23609*/[/*@>23605*/rowIdx/*@>23602*/ + /*@>23606*/8U];
    /* CombinatorialLogic: '<S173>/Logic' incorporates:
 *  Memory: '<S173>/Memory'
 */
    /*@>24264*/VCU_B./*@>27c42*/Memory_ac/*@>75b5*/ = /*@>24f9b*/VCU_DW./*@>28257*/Memory_PreviousInput_m;
    /*@>1fe1c*/tmp/*@>1d879*/ = /*@>2428e*/VCU_B./*@>27c57*/Logic_il/*@>2360e*/[/*@>2360b*/0];
    /*@>1fd37*/rowIdx/*@>1d890*/ = /*@>1fe1e*/tmp;
    /*@>1fd3b*/rowIdx/*@>1d8b9*/ = /*@>20479*/(int32_T)((/*@>20476*/(uint32_T)/*@>1fd3d*/rowIdx/*@>2009e*/ << /*@>1fd3f*/1)/*@>2009c*/ + /*@>242dc*/VCU_B./*@>27c7e*/LogicalOperator_c);
    /*@>1fd42*/rowIdx/*@>1d8e2*/ = /*@>2048a*/(int32_T)((/*@>20487*/(uint32_T)/*@>1fd44*/rowIdx/*@>20094*/ << /*@>1fd46*/1)/*@>20092*/ + /*@>242fa*/VCU_B./*@>27c8d*/Memory_ac);
    /*@>24342*/VCU_B./*@>27cb1*/Logic_l/*@>1d8f8*/[/*@>1fd4b*/0U]/*@>1d8f7*/ = /*@>24e0e*/VCU_ConstP./*@>281e8*/pooled33/*@>23615*/[/*@>23610*/(uint32_T)/*@>23612*/rowIdx];
    /*@>2435a*/VCU_B./*@>27cbd*/Logic_l/*@>1d90b*/[/*@>1fd50*/1U]/*@>1d90a*/ = /*@>24e14*/VCU_ConstP./*@>281eb*/pooled33/*@>2361e*/[/*@>2361a*/rowIdx/*@>23617*/ + /*@>2361b*/8U];
    /* Sum: '<S152>/Add1' incorporates:
 *  Constant: '<S152>/Constant13'
 */
    /*@>24372*/VCU_B./*@>27cc9*/Add1/*@>a683*/ = /*@>1fc4a*/2.0/*@>a680*/ - /*@>24378*/VCU_B./*@>27ccc*/DataTypeConversion3;
    /* Switch: '<S152>/Switch3' */
    /*@>2439c*/VCU_B./*@>27cde*/Switch3/*@>7d0d*/ = (/*@>243a2*/VCU_B./*@>27ce1*/Add1/*@>7d07*/ >= /*@>1fc4b*/0.0);
    /* Switch: '<S152>/Switch4' */
    /*@>243cc*/VCU_B./*@>27cf6*/Switch4/*@>7d25*/ = (/*@>243d2*/VCU_B./*@>27cf9*/Gain4/*@>7d1f*/ > /*@>1fc4c*/65.0);
    /* Logic: '<S152>/Logical Operator3' */
    /*@>24402*/VCU_B./*@>27d11*/LogicalOperator3/*@>75c3*/ = ((/*@>24408*/VCU_B./*@>27d14*/Switch3/*@>20087*/ != /*@>20085*/0.0)/*@>75c2*/ && (/*@>2440e*/VCU_B./*@>27d17*/Switch4/*@>2008b*/ != /*@>20089*/0.0));
    /* Logic: '<S152>/Logical Operator' */
    /*@>2441a*/VCU_B./*@>27d1d*/LogicalOperator_dn/*@>75c9*/ = /*@>24420*/VCU_B./*@>27d20*/LogicalOperator3;
    /* Product: '<S142>/Product' */
    /*@>2442c*/VCU_B./*@>27d26*/Product/*@>75d0*/ = /*@>204c4*/(uint16_T)(/*@>24432*/VCU_B./*@>27d29*/LogicalOperator_dn/*@>27d29*/ ? /*@>204c2*/(int32_T)/*@>24438*/VCU_B./*@>27d2c*/LC_dash_bit : /*@>20080*/0);
    /* UnitDelay: '<S141>/Delay Input1'
 *
 * Block description for '<S141>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>2443e*/VCU_B./*@>27d2f*/Uk1_ix/*@>7d36*/ = /*@>24fb3*/VCU_DW./*@>28263*/DelayInput1_DSTATE_d;
    /* RelationalOperator: '<S141>/FixPt Relational Operator' */
    /*@>2444a*/VCU_B./*@>27d35*/FixPtRelationalOperator_k/*@>75d5*/ = (/*@>24450*/VCU_B./*@>27d38*/Product/*@>75d4*/ > /*@>24456*/VCU_B./*@>27d3b*/Uk1_ix);
    /* Logic: '<S137>/Logical Operator' */
    /*@>24462*/VCU_B./*@>27d41*/LogicalOperator_k/*@>75db*/ = (/*@>24468*/VCU_B./*@>27d44*/FixPtRelationalOperator_k/*@>75da*/ || (/*@>2446e*/VCU_B./*@>27d47*/STW_shift_up_request/*@>2007e*/ != /*@>2007c*/0.0));
    /* UnitDelay: '<S178>/Delay Input1'
 *
 * Block description for '<S178>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>2447a*/VCU_B./*@>27d4d*/Uk1_fm/*@>7d42*/ = /*@>24fb9*/VCU_DW./*@>28266*/DelayInput1_DSTATE_fa;
    /* CombinatorialLogic: '<S181>/Logic' incorporates:
 *  RelationalOperator: '<S178>/FixPt Relational Operator'
 */
    /*@>24486*/VCU_B./*@>27d53*/FixPtRelationalOperator_o/*@>75e0*/ = (/*@>204eb*/(int32_T)/*@>2448c*/VCU_B./*@>27d56*/LogicalOperator_k/*@>75df*/ > /*@>204ed*/(int32_T)/*@>24492*/VCU_B./*@>27d59*/Uk1_fm);
    /* UnitDelay: '<S179>/Delay Input1'
 *
 * Block description for '<S179>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>2449e*/VCU_B./*@>27d5f*/Uk1_d/*@>7d4e*/ = /*@>24fc5*/VCU_DW./*@>2826c*/DelayInput1_DSTATE_l;
    /* RelationalOperator: '<S179>/FixPt Relational Operator' */
    /*@>244b6*/VCU_B./*@>27d6b*/FixPtRelationalOperator_cf/*@>75e5*/ = (/*@>244bc*/VCU_B./*@>27d6e*/DataTypeConversion3/*@>75e4*/ > /*@>244c2*/VCU_B./*@>27d71*/Uk1_d);
    /* RelationalOperator: '<S175>/Compare' incorporates:
 *  Constant: '<S175>/Constant'
 */
    /*@>244d4*/VCU_B./*@>27d7a*/Compare_np/*@>75e9*/ = (/*@>244da*/VCU_B./*@>27d7d*/DataTypeConversion3/*@>75e8*/ >= /*@>1fc4e*/3.0);
    /* UnitDelay: '<S143>/Unit Delay' */
    /*@>244ec*/VCU_B./*@>27d86*/UnitDelay_m/*@>7d5a*/ = /*@>24fcb*/VCU_DW./*@>2826f*/UnitDelay_DSTATE_f;
    /* UnitDelay: '<S144>/Unit Delay1' */
    /*@>244fe*/VCU_B./*@>27d8f*/Timeout_c/*@>7d66*/ = /*@>24fd1*/VCU_DW./*@>28272*/UnitDelay1_DSTATE_i;
    /* RelationalOperator: '<S177>/Compare' incorporates:
 *  Constant: '<S177>/Constant'
 */
    /*@>24510*/VCU_B./*@>27d98*/Compare_lz/*@>75ef*/ = (/*@>24516*/VCU_B./*@>27d9b*/DataTypeConversion3/*@>75ee*/ == /*@>1fc52*/0.0);
    /* RelationalOperator: '<S176>/Compare' incorporates:
 *  Constant: '<S176>/Constant'
 */
    /*@>24534*/VCU_B./*@>27daa*/Compare_ph/*@>75f3*/ = (/*@>2453a*/VCU_B./*@>27dad*/x_clutch_STW/*@>75f2*/ < /*@>1fc53*/15.0);
    /* Logic: '<S144>/Logical Operator1' */
    /*@>24546*/VCU_B./*@>27db3*/FailSafefirstgear_l/*@>75f9*/ = (/*@>2454c*/VCU_B./*@>27db6*/Compare_lz/*@>75f8*/ && /*@>24552*/VCU_B./*@>27db9*/Compare_ph);
    /* CombinatorialLogic: '<S181>/Logic' incorporates:
 *  Logic: '<S144>/Logical Operator'
 *  Memory: '<S181>/Memory'
 */
    /*@>2456a*/VCU_B./*@>27dc5*/LogicalOperator_d0/*@>7608*/ = (/*@>24570*/VCU_B./*@>27dc8*/FixPtRelationalOperator_cf/*@>75fe*/ || /*@>24576*/VCU_B./*@>27dcb*/Compare_np/*@>7601*/ || /*@>2457c*/VCU_B./*@>27dce*/UnitDelay_m/*@>7604*/ || /*@>24582*/VCU_B./*@>27dd1*/Timeout_c/*@>7607*/ || /*@>24588*/VCU_B./*@>27dd4*/FailSafefirstgear_l);
    /*@>2459a*/VCU_B./*@>27ddd*/Memory_o/*@>760a*/ = /*@>24fdd*/VCU_DW./*@>28278*/Memory_PreviousInput_e;
    /*@>1fd70*/rowIdx/*@>1d9e8*/ = /*@>245a6*/VCU_B./*@>27de3*/FixPtRelationalOperator_o;
    /*@>1fd74*/rowIdx/*@>1da0f*/ = /*@>2053f*/(int32_T)((/*@>2053c*/(uint32_T)/*@>1fd76*/rowIdx/*@>20078*/ << /*@>1fd78*/1)/*@>20076*/ + /*@>245b2*/VCU_B./*@>27de9*/LogicalOperator_d0);
    /*@>1fd7b*/rowIdx/*@>1da36*/ = /*@>20550*/(int32_T)((/*@>2054d*/(uint32_T)/*@>1fd7d*/rowIdx/*@>2006e*/ << /*@>1fd7f*/1)/*@>2006c*/ + /*@>245c4*/VCU_B./*@>27df2*/Memory_o);
    /*@>245d6*/VCU_B./*@>27dfb*/Logic_p/*@>1da4c*/[/*@>1fd84*/0U]/*@>1da4b*/ = /*@>24e26*/VCU_ConstP./*@>281f4*/pooled33/*@>2363a*/[/*@>23635*/(uint32_T)/*@>23637*/rowIdx];
    /*@>245ee*/VCU_B./*@>27e07*/Logic_p/*@>1da5f*/[/*@>1fd89*/1U]/*@>1da5e*/ = /*@>24e2c*/VCU_ConstP./*@>281f7*/pooled33/*@>23643*/[/*@>2363f*/rowIdx/*@>2363c*/ + /*@>23640*/8U];
    /* CombinatorialLogic: '<S182>/Logic' incorporates:
 *  S-Function (sdspcount2): '<S144>/Counter1'
 */
    /*@>24618*/VCU_B./*@>27e1c*/Counter1_a/*@>7dc4*/ = /*@>1f9af*/false;
    /* S-Function (sdspcount2): '<S144>/Counter1' */
    /*@>7dc8*/if (/*@>24624*/VCU_B./*@>27e22*/LogicalOperator_d0) {
        /*@>24ff5*/VCU_DW./*@>28284*/Counter1_Count_m/*@>7dcc*/ = /*@>26a7d*/0U;
    }
    /*@>7de2*/if (/*@>24636*/VCU_B./*@>27e2b*/Logic_p/*@>23648*/[/*@>23645*/0]) {
        /*@>1d536*/if (/*@>24ffb*/VCU_DW./*@>28287*/Counter1_Count_m/*@>7de7*/ < /*@>1fc59*/60) {
            /*@>2500d*/VCU_DW./*@>28290*/Counter1_Count_m/*@>26ade*/++;
        } else {
            /*@>25007*/VCU_DW./*@>2828d*/Counter1_Count_m/*@>7dee*/ = /*@>26a80*/0U;
        }
    }
    /*@>7e00*/if (/*@>25001*/VCU_DW./*@>2828a*/Counter1_Count_m/*@>7dff*/ == /*@>1fc5a*/1) {
        /* CombinatorialLogic: '<S182>/Logic' */
        /*@>2464e*/VCU_B./*@>27e37*/Counter1_a/*@>7e04*/ = /*@>1f9be*/true;
    }
    /* UnitDelay: '<S180>/Delay Input1'
 *
 * Block description for '<S180>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>2465a*/VCU_B./*@>27e3d*/Uk1_og/*@>7e47*/ = /*@>25019*/VCU_DW./*@>28293*/DelayInput1_DSTATE_b;
    /* RelationalOperator: '<S180>/FixPt Relational Operator' */
    /*@>24666*/VCU_B./*@>27e43*/FixPtRelationalOperator_p/*@>7611*/ = (/*@>2466c*/VCU_B./*@>27e46*/DataTypeConversion3/*@>7610*/ > /*@>24672*/VCU_B./*@>27e49*/Uk1_og);
    /* CombinatorialLogic: '<S182>/Logic' incorporates:
 *  Logic: '<S144>/Logical Operator2'
 *  Memory: '<S182>/Memory'
 */
    /*@>24678*/VCU_B./*@>27e4c*/LogicalOperator2_b/*@>7617*/ = (/*@>2467e*/VCU_B./*@>27e4f*/LogicalOperator_d0/*@>7616*/ || /*@>24684*/VCU_B./*@>27e52*/FixPtRelationalOperator_p);
    /*@>24690*/VCU_B./*@>27e58*/Memory_db/*@>7619*/ = /*@>25025*/VCU_DW./*@>28299*/Memory_PreviousInput_n;
    /*@>1fda8*/rowIdx/*@>1db36*/ = /*@>24696*/VCU_B./*@>27e5b*/Counter1_a;
    /*@>1fdac*/rowIdx/*@>1db5d*/ = /*@>205de*/(int32_T)((/*@>205db*/(uint32_T)/*@>1fdae*/rowIdx/*@>20054*/ << /*@>1fdb0*/1)/*@>20052*/ + /*@>2469c*/VCU_B./*@>27e5e*/LogicalOperator2_b);
    /*@>1fdb3*/rowIdx/*@>1db84*/ = /*@>205ee*/(int32_T)((/*@>205eb*/(uint32_T)/*@>1fdb5*/rowIdx/*@>2004a*/ << /*@>1fdb7*/1)/*@>20048*/ + /*@>246a8*/VCU_B./*@>27e64*/Memory_db);
    /*@>246b4*/VCU_B./*@>27e6a*/Logic_k/*@>1db9a*/[/*@>1fdbc*/0U]/*@>1db99*/ = /*@>24e3e*/VCU_ConstP./*@>28200*/pooled33/*@>23664*/[/*@>2365f*/(uint32_T)/*@>23661*/rowIdx];
    /*@>246cc*/VCU_B./*@>27e76*/Logic_k/*@>1dbad*/[/*@>1fdc1*/1U]/*@>1dbac*/ = /*@>24e44*/VCU_ConstP./*@>28203*/pooled33/*@>2366d*/[/*@>23669*/rowIdx/*@>23666*/ + /*@>2366a*/8U];
    /* DataTypeConversion: '<S137>/Data Type Conversion2' */
    /*@>246e4*/VCU_B./*@>27e82*/Ignition_Cut_g/*@>761d*/ = /*@>246ea*/VCU_B./*@>27e85*/Logic_k/*@>23672*/[/*@>2366f*/0];
    /* DataTypeConversion: '<S137>/Data Type Conversion8' */
    /*@>246f6*/VCU_B./*@>27e8b*/LC_Mdes_bl/*@>7620*/ = /*@>246fc*/VCU_B./*@>27e8e*/Logic_k/*@>23677*/[/*@>23674*/0];
    /* S-Function (sdspcount2): '<S143>/Counter' */
    /*@>24708*/VCU_B./*@>27e94*/Counter_j/*@>7ea5*/ = /*@>1f9c7*/false;
    /*@>7ea9*/if (/*@>24714*/VCU_B./*@>27e9a*/LogicalOperator_c) {
        /*@>25055*/VCU_DW./*@>282ae*/Counter_Count_b/*@>7ead*/ = /*@>26a89*/0U;
    }
    /*@>7ec3*/if (/*@>24726*/VCU_B./*@>27ea3*/Logic_il/*@>23683*/[/*@>23680*/0]) {
        /*@>1d540*/if (/*@>2505b*/VCU_DW./*@>282b1*/Counter_Count_b/*@>7ec8*/ < /*@>1fc60*/500) {
            /*@>2506d*/VCU_DW./*@>282ba*/Counter_Count_b/*@>26ae0*/++;
        } else {
            /*@>25067*/VCU_DW./*@>282b7*/Counter_Count_b/*@>7ecf*/ = /*@>26a8c*/0U;
        }
    }
    /*@>7ee1*/if (/*@>25061*/VCU_DW./*@>282b4*/Counter_Count_b/*@>7ee0*/ == /*@>1fc64*/500) {
        /*@>24744*/VCU_B./*@>27eb2*/Counter_j/*@>7ee5*/ = /*@>1f9d6*/true;
    }
    /* End of S-Function (sdspcount2): '<S143>/Counter' */

    /* S-Function (sdspcount2): '<S144>/Counter' */
    /*@>24750*/VCU_B./*@>27eb8*/Counter_a/*@>7f2a*/ = /*@>1f9db*/false;
    /*@>7f2e*/if (/*@>24756*/VCU_B./*@>27ebb*/LogicalOperator_d0) {
        /*@>2507f*/VCU_DW./*@>282c0*/Counter_Count_n/*@>7f32*/ = /*@>26a8f*/0U;
    }
    /*@>7f48*/if (/*@>24762*/VCU_B./*@>27ec1*/Logic_p/*@>2369b*/[/*@>23698*/0]) {
        /*@>1d54a*/if (/*@>250a3*/VCU_DW./*@>282cf*/Counter_Count_n/*@>7f4d*/ < /*@>1fc67*/200) {
            /*@>250b5*/VCU_DW./*@>282d8*/Counter_Count_n/*@>26ae1*/++;
        } else {
            /*@>250af*/VCU_DW./*@>282d5*/Counter_Count_n/*@>7f54*/ = /*@>26a95*/0U;
        }
    }
    /*@>7f66*/if (/*@>250a9*/VCU_DW./*@>282d2*/Counter_Count_n/*@>7f65*/ == /*@>1fc6b*/100) {
        /*@>24774*/VCU_B./*@>27eca*/Counter_a/*@>7f6a*/ = /*@>1f9ea*/true;
    }
    /* End of S-Function (sdspcount2): '<S144>/Counter' */

    /* DataTypeConversion: '<S137>/Data Type Conversion' */
    /*@>24780*/VCU_B./*@>27ed0*/VOVG_ShiftUp_d/*@>7625*/ = /*@>24786*/VCU_B./*@>27ed3*/Logic_p/*@>236a0*/[/*@>2369d*/0];
    /* Switch: '<S140>/Switch' */
    /*@>1d554*/if (/*@>2478c*/VCU_B./*@>27ed6*/Logic_il/*@>236a5*/[/*@>236a2*/0]) {
        /* MinMax: '<S140>/MinMax' incorporates:
 *  Constant: '<S140>/Constant'
 */
        /*@>2479e*/VCU_B./*@>27edf*/Switch_h/*@>1d557*/ = /*@>1fc61*/20.0;
    } else {
        /* MinMax: '<S140>/MinMax' incorporates:
 *  Constant: '<S140>/Constant1'
 */
        /*@>24798*/VCU_B./*@>27edc*/Switch_h/*@>7fb1*/ = /*@>1fc62*/0.0;
    }
    /* End of Switch: '<S140>/Switch' */

    /* Memory: '<S142>/Memory' */
    /*@>247a4*/VCU_B./*@>27ee2*/Memory_od/*@>7628*/ = /*@>250e5*/VCU_DW./*@>282ea*/Memory_PreviousInput_i;
    /* Sum: '<S153>/Add' */
    /*@>247b0*/VCU_B./*@>27ee8*/Add_o/*@>a688*/ = /*@>247b6*/VCU_B./*@>27eeb*/Add1_k/*@>a685*/ + /*@>247bc*/VCU_B./*@>27eee*/Add1_de;
    /* Gain: '<S153>/Gain' */
    /*@>247ce*/VCU_B./*@>27ef7*/Gain_g/*@>7635*/ = /*@>1fc66*/0.5/*@>20022*/ * /*@>247d4*/VCU_B./*@>27efa*/Add_o;
    /* Sum: '<S153>/Add1' */
    /*@>247e0*/VCU_B./*@>27f00*/Add1_f/*@>a68d*/ = /*@>247e6*/VCU_B./*@>27f03*/Add1_ks/*@>a68a*/ + /*@>247ec*/VCU_B./*@>27f06*/Add1_eq;
    /* MinMax: '<S153>/MinMax' incorporates:
 *  Gain: '<S153>/Gain1'
 */
    /*@>24804*/VCU_B./*@>27f12*/Gain1/*@>7642*/ = /*@>1fc68*/0.5/*@>2001e*/ * /*@>2480a*/VCU_B./*@>27f15*/Add1_f;
    /* Sum: '<S153>/Add2' */
    /*@>24816*/VCU_B./*@>27f1b*/Add2/*@>a692*/ = /*@>2481c*/VCU_B./*@>27f1e*/Gain1/*@>a68f*/ - /*@>24822*/VCU_B./*@>27f21*/Gain_g;
    /* MinMax: '<S153>/MinMax' */
    /*@>20944*/if ((/*@>20dca*/0.001/*@>2093d*/ > /*@>24834*/VCU_B./*@>27f2a*/Gain1)/*@>20940*/ || /*@>22820*/rtIsNaN(/*@>2483a*/VCU_B./*@>27f2d*/Gain1)) {
        /*@>2484c*/VCU_B./*@>27f36*/MinMax_o/*@>20946*/ = /*@>20dcc*/0.001;
    } else {
        /*@>24840*/VCU_B./*@>27f30*/MinMax_o/*@>20943*/ = /*@>24846*/VCU_B./*@>27f33*/Gain1;
    }
    /* Saturate: '<S153>/Saturation' incorporates:
 *  Product: '<S153>/Divide'
 */
    /*@>2487c*/VCU_B./*@>27f4e*/Divide/*@>764f*/ = /*@>24882*/VCU_B./*@>27f51*/Add2/*@>2001a*/ / /*@>24888*/VCU_B./*@>27f54*/MinMax_o;
    /*@>20903*/if (/*@>2488e*/VCU_B./*@>27f57*/Divide/*@>208fe*/ > /*@>20dce*/0.5) {
        /*@>248a0*/VCU_B./*@>27f60*/Saturation/*@>20905*/ = /*@>20dd4*/0.5;
    } else /*@>20906*/if (/*@>2489a*/VCU_B./*@>27f5d*/Divide/*@>208fb*/ < /*@>20dd0*/-0.5) {
        /*@>248b8*/VCU_B./*@>27f6c*/Saturation/*@>20908*/ = /*@>20dd2*/-0.5;
    } else {
        /*@>248ac*/VCU_B./*@>27f66*/Saturation/*@>20902*/ = /*@>248b2*/VCU_B./*@>27f69*/Divide;
    }
    /* End of Saturate: '<S153>/Saturation' */

    /* RelationalOperator: '<S142>/Relational Operator1' incorporates:
 *  Constant: '<S142>/Constant'
 */
    /*@>248ca*/VCU_B./*@>27f75*/RelationalOperator1_d/*@>7659*/ = (/*@>248d0*/VCU_B./*@>27f78*/x_clutch_STW/*@>7658*/ <= /*@>1fc72*/15.0);
    /* Outputs for Enabled SubSystem: '<S142>/Clutch Pos calc' incorporates:
 *  EnablePort: '<S150>/Enable'
 */
    /*@>765b*/if (/*@>248e2*/VCU_B./*@>27f81*/RelationalOperator1_d) {
        /*@>765e*/if (!/*@<765d*//*@>250f7*/VCU_DW./*@>282f3*/ClutchPoscalc_MODE) {
            /*@>250fd*/VCU_DW./*@>282f6*/ClutchPoscalc_MODE/*@>7660*/ = /*@>1f798*/true;
        }
        /* MinMax: '<S140>/MinMax' incorporates:
 *  Memory: '<S150>/Memory1'
 */
        /*@>24918*/VCU_B./*@>27f9c*/Memory1/*@>7fdc*/ = /*@>25109*/VCU_DW./*@>282fc*/Memory1_PreviousInput;
        /* If: '<S150>/If' incorporates:
 *  Constant: '<S150>/slip_R_Max'
 *  Constant: '<S150>/slip_R_Min'
 */
        /*@>1d55e*/if (/*@>24942*/VCU_B./*@>27fb1*/Saturation/*@>7fdf*/ < /*@>1fc77*/0.06) {
            /* Outputs for IfAction SubSystem: '<S150>/If Action Subsystem' incorporates:
 *  ActionPort: '<S156>/Action Port'
 */
            /* MinMax: '<S150>/MinMax' incorporates:
 *  Sum: '<S156>/Add'
 */
            /*@>24972*/VCU_B./*@>27fc9*/Merge/*@>1d561*/ = /*@>24978*/VCU_B./*@>27fcc*/Memory1/*@>a78e*/ - /*@>2497e*/VCU_B./*@>27fcf*/Add1_f1;
            /* End of Outputs for SubSystem: '<S150>/If Action Subsystem' */
        } else /*@>1d56d*/if (/*@>2496c*/VCU_B./*@>27fc6*/Saturation/*@>7fe4*/ > /*@>1fc78*/0.15) {
            /* Outputs for IfAction SubSystem: '<S150>/If Action Subsystem1' incorporates:
 *  ActionPort: '<S157>/Action Port'
 */
            /* MinMax: '<S150>/MinMax' incorporates:
 *  Sum: '<S157>/Add'
 */
            /*@>24996*/VCU_B./*@>27fdb*/Merge/*@>1d570*/ = /*@>2499c*/VCU_B./*@>27fde*/Add1_f1/*@>a793*/ + /*@>249a2*/VCU_B./*@>27fe1*/Memory1;
            /* End of Outputs for SubSystem: '<S150>/If Action Subsystem1' */
        } else {
            /* Outputs for IfAction SubSystem: '<S150>/If Action Subsystem2' incorporates:
 *  ActionPort: '<S158>/Action Port'
 */
            /* MinMax: '<S150>/MinMax' incorporates:
 *  Inport: '<S158>/x_clutch_in'
 */
            /*@>2498a*/VCU_B./*@>27fd5*/Merge/*@>a791*/ = /*@>24990*/VCU_B./*@>27fd8*/Memory1;
            /* End of Outputs for SubSystem: '<S150>/If Action Subsystem2' */
        }
        /* End of If: '<S150>/If' */

        /* RelationalOperator: '<S150>/Relational Operator3' incorporates:
 *  Constant: '<S150>/Clutch_Close_Speedlimit1'
 */
        /*@>249c6*/VCU_B./*@>27ff3*/RelationalOperator3/*@>7feb*/ = (/*@>249cc*/VCU_B./*@>27ff6*/Add1_f1/*@>7fea*/ <= /*@>1fc79*/0.01);
        /* Switch: '<S150>/Switch3' incorporates:
 *  Constant: '<S150>/Clutch_Close1'
 */
        /*@>86cb*/if (/*@>249de*/VCU_B./*@>27fff*/RelationalOperator3) {
            /*@>24a0e*/VCU_B./*@>28017*/Switch3_p/*@>86c3*/ = /*@>1fc7e*/0.0;
        } else {
            /* RelationalOperator: '<S150>/Relational Operator2' incorporates:
 *  Constant: '<S150>/Clutch_Close_Speedlimit'
 */
            /*@>24a02*/VCU_B./*@>28011*/RelationalOperator2_c/*@>86e1*/ = (/*@>24a08*/VCU_B./*@>28014*/Gain4/*@>86e0*/ >= /*@>1fc7d*/50.0);
            /* Switch: '<S150>/Switch2' incorporates:
 *  Constant: '<S150>/Clutch_Close'
 */
            /*@>86ff*/if (/*@>24a2c*/VCU_B./*@>28026*/RelationalOperator2_c) {
                /*@>24a5c*/VCU_B./*@>2803e*/Switch2/*@>86f7*/ = /*@>1fc81*/0.0;
            } else {
                /* RelationalOperator: '<S150>/Relational Operator1' incorporates:
 *  Constant: '<S150>/Clutch_Hold_Speedlimit'
 */
                /*@>24a50*/VCU_B./*@>28038*/RelationalOperator1_c/*@>8715*/ = (/*@>24a56*/VCU_B./*@>2803b*/Gain4/*@>8714*/ >= /*@>1fc80*/1.0);
                /* Logic: '<S150>/Logical Operator' */
                /*@>24a86*/VCU_B./*@>28053*/LogicalOperator_ej/*@>871b*/ = (/*@>24a8c*/VCU_B./*@>28056*/Memory_od/*@>871a*/ && /*@>24a92*/VCU_B./*@>28059*/RelationalOperator1_c);
                /* Switch: '<S150>/Switch1' incorporates:
 *  Constant: '<S150>/Init_pos_clutch'
 */
                /*@>873d*/if (/*@>24ab0*/VCU_B./*@>28068*/LogicalOperator_ej) {
                    /* Switch: '<S150>/Switch' */
                    /*@>877a*/if (/*@>24ae6*/VCU_B./*@>28083*/DataTypeConversion2/*@>876c*/ >= /*@>1fc85*/4000.0) {
                        /* MinMax: '<S150>/MinMax' incorporates:
 *  Constant: '<S150>/Constant Gradient'
 */
                        /*@>24b16*/VCU_B./*@>2809b*/Switch_i/*@>8772*/ = /*@>1fc87*/0.0;
                    } else {
                        /* Sum: '<S150>/Add' */
                        /*@>24b04*/VCU_B./*@>28092*/Add_e/*@>a79f*/ = /*@>24b0a*/VCU_B./*@>28095*/Add1_f1/*@>a79c*/ + /*@>24b10*/VCU_B./*@>28098*/Memory1;
                        /* MinMax: '<S150>/MinMax' */
                        /*@>24b34*/VCU_B./*@>280aa*/Switch_i/*@>8778*/ = /*@>24b3a*/VCU_B./*@>280ad*/Add_e;
                    }
                    /* End of Switch: '<S150>/Switch' */

                    /* MinMax: '<S150>/MinMax' */
                    /*@>20adf*/if ((/*@>24b52*/VCU_B./*@>280b9*/Merge/*@>20ad8*/ > /*@>24b58*/VCU_B./*@>280bc*/Switch_i)/*@>20adb*/ || /*@>22822*/rtIsNaN(/*@>24b5e*/VCU_B./*@>280bf*/Switch_i)) {
                        /*@>24b76*/VCU_B./*@>280cb*/MinMax_c/*@>20ae1*/ = /*@>24b7c*/VCU_B./*@>280ce*/Merge;
                    } else {
                        /*@>24b6a*/VCU_B./*@>280c5*/MinMax_c/*@>20ade*/ = /*@>24b70*/VCU_B./*@>280c8*/Switch_i;
                    }
                    /* Saturate: '<S150>/Saturation' */
                    /*@>20a9e*/if (/*@>24ba6*/VCU_B./*@>280e3*/MinMax_c/*@>20a99*/ > /*@>20dd6*/25.0) {
                        /*@>24bbe*/VCU_B./*@>280ef*/Saturation_f/*@>20aa0*/ = /*@>20ddc*/25.0;
                    } else /*@>20aa1*/if (/*@>24bb8*/VCU_B./*@>280ec*/MinMax_c/*@>20a96*/ < /*@>20dd8*/0.0) {
                        /*@>24be8*/VCU_B./*@>28104*/Saturation_f/*@>20aa3*/ = /*@>20dda*/0.0;
                    } else {
                        /*@>24bdc*/VCU_B./*@>280fe*/Saturation_f/*@>20a9d*/ = /*@>24be2*/VCU_B./*@>28101*/MinMax_c;
                    }
                    /* End of Saturate: '<S150>/Saturation' */
                    /*@>24c00*/VCU_B./*@>28110*/Switch1_j/*@>8738*/ = /*@>24c06*/VCU_B./*@>28113*/Saturation_f;
                } else {
                    /*@>24ae0*/VCU_B./*@>28080*/Switch1_j/*@>873b*/ = /*@>1fc84*/15.0;
                }
                /* End of Switch: '<S150>/Switch1' */
                /*@>24b28*/VCU_B./*@>280a4*/Switch2/*@>86fd*/ = /*@>24b2e*/VCU_B./*@>280a7*/Switch1_j;
            }
            /* End of Switch: '<S150>/Switch2' */
            /*@>24ab6*/VCU_B./*@>2806b*/Switch3_p/*@>86c9*/ = /*@>24abc*/VCU_B./*@>2806e*/Switch2;
        }
        /* End of Switch: '<S150>/Switch3' */

        /* Update for Memory: '<S150>/Memory1' */
        /*@>2510f*/VCU_DW./*@>282ff*/Memory1_PreviousInput/*@>8009*/ = /*@>24a62*/VCU_B./*@>28041*/Switch3_p;
    } else {
        /*@>7664*/if (/*@>250f1*/VCU_DW./*@>282f0*/ClutchPoscalc_MODE) {
            /* Disable for MinMax: '<S140>/MinMax' incorporates:
 *  Outport: '<S150>/x_clutch_LC'
 */
            /*@>24906*/VCU_B./*@>27f93*/Memory1/*@>8015*/ = /*@>1fc75*/12.5;
            /*@>25103*/VCU_DW./*@>282f9*/ClutchPoscalc_MODE/*@>7666*/ = /*@>1f79d*/false;
        }
    }
    /* End of Outputs for SubSystem: '<S142>/Clutch Pos calc' */

    /* MinMax: '<S140>/MinMax' */
    /*@>2097c*/if ((/*@>24930*/VCU_B./*@>27fa8*/x_clutch_STW/*@>20975*/ > /*@>24936*/VCU_B./*@>27fab*/Switch_h)/*@>20978*/ || /*@>22824*/rtIsNaN(/*@>2493c*/VCU_B./*@>27fae*/Switch_h)) {
        /*@>24960*/VCU_B./*@>27fc0*/MinMax_oo/*@>2097e*/ = /*@>24966*/VCU_B./*@>27fc3*/x_clutch_STW;
    } else {
        /*@>24954*/VCU_B./*@>27fba*/MinMax_oo/*@>2097b*/ = /*@>2495a*/VCU_B./*@>27fbd*/Switch_h;
    }
    /*@>209b4*/if (!/*@<22803*/((/*@>249b4*/VCU_B./*@>27fea*/MinMax_oo/*@>209ad*/ > /*@>249ba*/VCU_B./*@>27fed*/Memory1)/*@>209b0*/ || /*@>22826*/rtIsNaN(/*@>249c0*/VCU_B./*@>27ff0*/Memory1))) {
        /*@>249d2*/VCU_B./*@>27ff9*/MinMax_oo/*@>209b3*/ = /*@>249d8*/VCU_B./*@>27ffc*/Memory1;
    }
    /* RelationalOperator: '<S145>/Compare' incorporates:
 *  Constant: '<S145>/Constant'
 */
    /*@>249f6*/VCU_B./*@>2800b*/Compare_k/*@>766b*/ = (/*@>249fc*/VCU_B./*@>2800e*/MinMax_oo/*@>766a*/ > /*@>1fc7f*/1.0);
    /* DataTypeConversion: '<S137>/Data Type Conversion3' */
    /*@>24a20*/VCU_B./*@>28020*/VOVG_IN_b/*@>766e*/ = /*@>24a26*/VCU_B./*@>28023*/Compare_k;
    /* Sum: '<S140>/Add' */
    /*@>24a3e*/VCU_B./*@>2802f*/Add_od/*@>a6e3*/ = /*@>24a44*/VCU_B./*@>28032*/MinMax_oo/*@>a6e0*/ - /*@>24a4a*/VCU_B./*@>28035*/x_clutch_b;
    /* RelationalOperator: '<S147>/Compare' incorporates:
 *  Constant: '<S147>/Constant'
 */
    /*@>24a7a*/VCU_B./*@>2804d*/Compare_fm/*@>7677*/ = (/*@>24a80*/VCU_B./*@>28050*/Add_od/*@>7676*/ < /*@>1fc83*/-0.5);
    /* Lookup_n-D: '<S140>/Duty Cycle MHJ9' */
    /*@>24aa4*/VCU_B./*@>28062*/DutyCycleMHJ9_l/*@>a7c2*/ = /*@>2282a*/look1_binlxpw(/*@>24aaa*/VCU_B./*@>28065*/Add_od, /*@>24e62*/VCU_ConstP./*@>28212*/pooled24, /*@>24e68*/VCU_ConstP./*@>28215*/pooled23, /*@>1fb8d*/14U);
    /* Product: '<S140>/Product1' */
    /*@>24ace*/VCU_B./*@>28077*/Product1_l/*@>7685*/ = /*@>24ad4*/VCU_B./*@>2807a*/DutyCycleMHJ9_l/*@>20016*/ * /*@>20757*/(real_T)/*@>24ada*/VCU_B./*@>2807d*/Compare_fm;
    /* RelationalOperator: '<S146>/Compare' incorporates:
 *  Constant: '<S146>/Constant'
 */
    /*@>24af8*/VCU_B./*@>2808c*/Compare_i/*@>7689*/ = (/*@>24afe*/VCU_B./*@>2808f*/x_clutch_b/*@>7688*/ > /*@>1fc88*/20.0);
    /* Switch: '<S140>/Switch1' incorporates:
 *  Constant: '<S140>/Constant2'
 *  Constant: '<S140>/Constant3'
 */
    /*@>1d568*/if (/*@>24b22*/VCU_B./*@>280a1*/Compare_i) {
        /*@>24b4c*/VCU_B./*@>280b6*/Switch1_k/*@>1d56b*/ = /*@>1fc8a*/2.0;
    } else {
        /*@>24b46*/VCU_B./*@>280b3*/Switch1_k/*@>804d*/ = /*@>1fc8b*/1.0;
    }
    /* End of Switch: '<S140>/Switch1' */

    /* Product: '<S140>/Product2' */
    /*@>24b88*/VCU_B./*@>280d4*/Product2_a/*@>7691*/ = /*@>24b8e*/VCU_B./*@>280d7*/Product1_l/*@>20012*/ * /*@>24b94*/VCU_B./*@>280da*/Switch1_k;
    /* DataTypeConversion: '<S137>/Data Type Conversion6' */
    /*@>24b9a*/VCU_B./*@>280dd*/MHJ9_OUT_p/*@>7694*/ = /*@>24ba0*/VCU_B./*@>280e0*/Product2_a;
    /* RelationalOperator: '<S148>/Compare' incorporates:
 *  Constant: '<S148>/Constant'
 */
    /*@>24bac*/VCU_B./*@>280e6*/Compare_n3/*@>7698*/ = (/*@>24bb2*/VCU_B./*@>280e9*/Add_od/*@>7697*/ > /*@>1fc8e*/0.0);
    /* Product: '<S140>/Product3' */
    /*@>24bca*/VCU_B./*@>280f5*/Product3_n/*@>769f*/ = /*@>24bd0*/VCU_B./*@>280f8*/DutyCycleMHJ9_l/*@>2000e*/ * /*@>2078a*/(real_T)/*@>24bd6*/VCU_B./*@>280fb*/Compare_n3;
    /* DataTypeConversion: '<S137>/Data Type Conversion5' */
    /*@>24bf4*/VCU_B./*@>2810a*/MHJ9_IN_m/*@>76a2*/ = /*@>24bfa*/VCU_B./*@>2810d*/Product3_n;
    /* RelationalOperator: '<S149>/Compare' incorporates:
 *  Constant: '<S149>/Constant'
 */
    /*@>24c12*/VCU_B./*@>28119*/Compare_hz/*@>76a6*/ = (/*@>24c18*/VCU_B./*@>2811c*/Add_od/*@>76a5*/ < /*@>1fc91*/-20.0);
    /* DataTypeConversion: '<S137>/Data Type Conversion4' */
    /*@>24c24*/VCU_B./*@>28122*/VOVG_OUT_i/*@>76a9*/ = /*@>24c2a*/VCU_B./*@>28125*/Compare_hz;
    /* DataTypeConversion: '<S137>/Data Type Conversion7' */
    /*@>24c36*/VCU_B./*@>2812b*/x_clutch_LC_n/*@>76ac*/ = /*@>24c3c*/VCU_B./*@>2812e*/Memory1;
    /* RelationalOperator: '<S163>/Compare' */
    /*@>24c48*/VCU_B./*@>28134*/Compare_mq/*@>76b0*/ = /*@>24c4e*/VCU_B./*@>28137*/LC_dash_bit;
    /* RelationalOperator: '<S164>/Compare' incorporates:
 *  Constant: '<S164>/Constant'
 */
    /*@>24c5a*/VCU_B./*@>2813d*/Compare_d/*@>76b4*/ = (/*@>24c60*/VCU_B./*@>28140*/DataTypeConversion3/*@>76b3*/ <= /*@>1fc92*/2.0);
    /* Logic: '<S151>/LC Initialization' */
    /*@>24c6c*/VCU_B./*@>28146*/LCInitialization/*@>76ba*/ = (/*@>24c72*/VCU_B./*@>28149*/Compare_mq/*@>76b9*/ && /*@>24c78*/VCU_B./*@>2814c*/Compare_d);
    /* Logic: '<S142>/Logical Operator' */
    /*@>24c84*/VCU_B./*@>28152*/LogicalOperator_a/*@>76c0*/ = (/*@>24c8a*/VCU_B./*@>28155*/LCInitialization/*@>76bf*/ && /*@>24c90*/VCU_B./*@>28158*/RelationalOperator1_d);
    /* DataTypeConversion: '<S137>/Data Type Conversion9' incorporates:
 *  Constant: '<S142>/Constant1'
 */
    /*@>24c9c*/VCU_B./*@>2815e*/LC_Fnr_e/*@>76c3*/ = /*@>1fc93*/0.0;
    /* RelationalOperator: '<S142>/Relational Operator' */
    /*@>24ca8*/VCU_B./*@>28164*/RelationalOperator_l/*@>76c7*/ = (/*@>24cae*/VCU_B./*@>28167*/DataTypeConversion/*@>76c6*/ >= /*@>24cb4*/VCU_B./*@>2816a*/DataTypeConversion1);
    /* UnitDelay: '<S170>/Delay Input1'
 *
 * Block description for '<S170>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>24cc0*/VCU_B./*@>28170*/Uk1_h/*@>805e*/ = /*@>2516f*/VCU_DW./*@>2832f*/DelayInput1_DSTATE_n;
    /* RelationalOperator: '<S170>/FixPt Relational Operator' */
    /*@>24ccc*/VCU_B./*@>28176*/FixPtRelationalOperator_df/*@>76cc*/ = (/*@>24cd2*/VCU_B./*@>28179*/DataTypeConversion3/*@>76cb*/ < /*@>24cd8*/VCU_B./*@>2817c*/Uk1_h);
    /* Update for UnitDelay: '<S143>/Unit Delay1' */
    /*@>25181*/VCU_DW./*@>28338*/UnitDelay1_DSTATE_d/*@>806a*/ = /*@>24ce4*/VCU_B./*@>28182*/Logic_il/*@>236e4*/[/*@>236e1*/0];
    /* Update for Delay: '<S143>/Delay' */
/*@>1ce12*/    for (/*@>26ad2*/rowIdx = /*@>1fc99*/0; /*@>26ada*/rowIdx < /*@>1fc9a*/19; /*@>26ad7*/rowIdx/*@>26ae5*/++) {
        /*@>2519f*/VCU_DW./*@>28347*/Delay_DSTATE_i/*@>1b683*/[/*@>1fc19*/rowIdx]/*@>8098*/ = /*@>251a5*/VCU_DW./*@>2834a*/Delay_DSTATE_i/*@>236f1*/[/*@>236ed*/rowIdx/*@>236eb*/ + /*@>236ee*/1];
    }
    /*@>25199*/VCU_DW./*@>28344*/Delay_DSTATE_i/*@>80b0*/[/*@>1fa29*/19]/*@>80ba*/ = /*@>24cfc*/VCU_B./*@>2818e*/LogicalOperator_c;
    /* End of Update for Delay: '<S143>/Delay' */

    /* Update for Memory: '<S174>/Memory' */
    /*@>251ab*/VCU_DW./*@>2834d*/Memory_PreviousInput_c/*@>781c*/ = /*@>24d02*/VCU_B./*@>28191*/Logic_a/*@>236f6*/[/*@>236f3*/0];
    /* Update for UnitDelay: '<S171>/Delay Input1'
 *
 * Block description for '<S171>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>251b1*/VCU_DW./*@>28350*/DelayInput1_DSTATE_a/*@>80c6*/ = /*@>24d08*/VCU_B./*@>28194*/STW_shift_down_request;
    /* Update for UnitDelay: '<S143>/Unit Delay4' */
    /*@>251b7*/VCU_DW./*@>28353*/UnitDelay4_DSTATE_k/*@>80d2*/ = /*@>24d0e*/VCU_B./*@>28197*/FixPtRelationalOperator_df;
    /* Update for UnitDelay: '<S144>/Unit Delay' */
    /*@>251bd*/VCU_DW./*@>28356*/UnitDelay_DSTATE_m/*@>80de*/ = /*@>24d14*/VCU_B./*@>2819a*/Logic_p/*@>236fb*/[/*@>236f8*/0];
    /* Update for UnitDelay: '<S143>/Unit Delay2' */
    /*@>251c3*/VCU_DW./*@>28359*/UnitDelay2_DSTATE_n/*@>80ea*/ = /*@>24d1a*/VCU_B./*@>2819d*/Counter_j;
    /* Update for Memory: '<S172>/Memory' */
    /*@>251c9*/VCU_DW./*@>2835c*/Memory_PreviousInput_ao/*@>7822*/ = /*@>24d20*/VCU_B./*@>281a0*/Logic_il/*@>23700*/[/*@>236fd*/0];
    /* Update for Memory: '<S173>/Memory' */
    /*@>251cf*/VCU_DW./*@>2835f*/Memory_PreviousInput_m/*@>7824*/ = /*@>24d26*/VCU_B./*@>281a3*/Logic_l/*@>23705*/[/*@>23702*/0];
    /* Update for UnitDelay: '<S141>/Delay Input1'
 *
 * Block description for '<S141>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>251d5*/VCU_DW./*@>28362*/DelayInput1_DSTATE_d/*@>80f6*/ = /*@>24d2c*/VCU_B./*@>281a6*/Product;
    /* Update for UnitDelay: '<S178>/Delay Input1'
 *
 * Block description for '<S178>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>251db*/VCU_DW./*@>28365*/DelayInput1_DSTATE_fa/*@>8102*/ = /*@>24d32*/VCU_B./*@>281a9*/LogicalOperator_k;
    /* Update for UnitDelay: '<S179>/Delay Input1'
 *
 * Block description for '<S179>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>251e1*/VCU_DW./*@>28368*/DelayInput1_DSTATE_l/*@>810e*/ = /*@>24d38*/VCU_B./*@>281ac*/DataTypeConversion3;
    /* Update for UnitDelay: '<S143>/Unit Delay' */
    /*@>251e7*/VCU_DW./*@>2836b*/UnitDelay_DSTATE_f/*@>811a*/ = /*@>24d3e*/VCU_B./*@>281af*/Logic_l/*@>2370a*/[/*@>23707*/0];
    /* Update for UnitDelay: '<S144>/Unit Delay1' */
    /*@>251ed*/VCU_DW./*@>2836e*/UnitDelay1_DSTATE_i/*@>8126*/ = /*@>24d44*/VCU_B./*@>281b2*/Counter_a;
    /* Update for Memory: '<S181>/Memory' */
    /*@>251f3*/VCU_DW./*@>28371*/Memory_PreviousInput_e/*@>782b*/ = /*@>24d4a*/VCU_B./*@>281b5*/Logic_p/*@>2370f*/[/*@>2370c*/0];
    /* Update for UnitDelay: '<S180>/Delay Input1'
 *
 * Block description for '<S180>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>251f9*/VCU_DW./*@>28374*/DelayInput1_DSTATE_b/*@>8132*/ = /*@>24d50*/VCU_B./*@>281b8*/DataTypeConversion3;
    /* Update for Memory: '<S182>/Memory' */
    /*@>251ff*/VCU_DW./*@>28377*/Memory_PreviousInput_n/*@>782e*/ = /*@>24d56*/VCU_B./*@>281bb*/Logic_k/*@>23714*/[/*@>23711*/0];
    /* Update for Memory: '<S142>/Memory' */
    /*@>25205*/VCU_DW./*@>2837a*/Memory_PreviousInput_i/*@>7830*/ = /*@>24d5c*/VCU_B./*@>281be*/RelationalOperator1_d;
    /* Update for UnitDelay: '<S170>/Delay Input1'
 *
 * Block description for '<S170>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>2520b*/VCU_DW./*@>2837d*/DelayInput1_DSTATE_n/*@>813e*/ = /*@>24d62*/VCU_B./*@>281c1*/DataTypeConversion3;
} else {
    /*@>73de*/if (/*@>24f1d*/VCU_DW./*@>28218*/LC_jr19_MODE) {
        /* Disable for Enabled SubSystem: '<S142>/Clutch Pos calc' */
        /*@>7866*/if (/*@>24f29*/VCU_DW./*@>2821e*/ClutchPoscalc_MODE) {
            /* Disable for MinMax: '<S140>/MinMax' incorporates:
 *  Outport: '<S150>/x_clutch_LC'
 */
            /*@>23d18*/VCU_B./*@>2799c*/Memory1/*@>8148*/ = /*@>1fc25*/12.5;
            /*@>24f41*/VCU_DW./*@>2822a*/ClutchPoscalc_MODE/*@>7869*/ = /*@>1f810*/false;
        }
        /* End of Disable for SubSystem: '<S142>/Clutch Pos calc' */
        /*@>24f3b*/VCU_DW./*@>28227*/LC_jr19_MODE/*@>73e0*/ = /*@>1f5c9*/false;
    }
}
/* End of Outputs for SubSystem: '<S7>/LC_jr19' */

/* RelationalOperator: '<S133>/Compare' incorporates:
 *  Constant: '<S133>/Constant'
 */
/*@>23d24*/VCU_B./*@>279a2*/Compare_c/*@>73e4*/ = (/*@>23d2a*/VCU_B./*@>279a5*/DataTypeConversion_cg/*@>73e3*/ == /*@>1fc26*/1);
/* RelationalOperator: '<S134>/Compare' incorporates:
 *  Constant: '<S134>/Constant'
 */
/*@>23d36*/VCU_B./*@>279ab*/Compare_g/*@>73e8*/ = (/*@>23d3c*/VCU_B./*@>279ae*/DataTypeConversion_cg/*@>73e7*/ > /*@>1fc27*/3);
/* Logic: '<S7>/Logical Operator' */
/*@>23d48*/VCU_B./*@>279b4*/LogicalOperator/*@>73ee*/ = (/*@>23d4e*/VCU_B./*@>279b7*/Compare_c/*@>73ed*/ || /*@>23d54*/VCU_B./*@>279ba*/Compare_g);
/* Outputs for Enabled SubSystem: '<S7>/semi_auto_jr18' incorporates:
 *  EnablePort: '<S139>/Enable'
 */
/*@>73f0*/if (/*@>23d60*/VCU_B./*@>279c0*/LogicalOperator) {
    /* CombinatorialLogic: '<S208>/Logic' incorporates:
 *  Delay: '<S192>/Delay'
 *  Memory: '<S208>/Memory'
 *  UnitDelay: '<S192>/Unit Delay1'
 */
    /*@>23d6c*/VCU_B./*@>279c6*/UnitDelay1/*@>8156*/ = /*@>24f53*/VCU_DW./*@>28233*/UnitDelay1_DSTATE;
    /*@>23d84*/VCU_B./*@>279d2*/Delay/*@>8164*/ = /*@>24f59*/VCU_DW./*@>28236*/Delay_DSTATE/*@>235bf*/[/*@>235bc*/0];
    /*@>23d96*/VCU_B./*@>279db*/Memory/*@>787a*/ = /*@>24f5f*/VCU_DW./*@>28239*/Memory_PreviousInput;
    /*@>1fce2*/rowIdx/*@>1d699*/ = /*@>23da8*/VCU_B./*@>279e4*/UnitDelay1;
    /*@>1fce6*/rowIdx/*@>1d6c0*/ = /*@>2030c*/(int32_T)((/*@>20309*/(uint32_T)/*@>1fce8*/rowIdx/*@>20009*/ << /*@>1fcea*/1)/*@>20007*/ + /*@>23dd2*/VCU_B./*@>279f9*/Delay);
    /*@>1fced*/rowIdx/*@>1d6e7*/ = /*@>2032a*/(int32_T)((/*@>20327*/(uint32_T)/*@>1fcef*/rowIdx/*@>1ffff*/ << /*@>1fcf1*/1)/*@>1fffd*/ + /*@>23e0e*/VCU_B./*@>27a17*/Memory);
    /*@>23e32*/VCU_B./*@>27a29*/Logic/*@>1d6fd*/[/*@>1fcf6*/0U]/*@>1d6fc*/ = /*@>24dde*/VCU_ConstP./*@>281d0*/pooled33/*@>235db*/[/*@>235d6*/(uint32_T)/*@>235d8*/rowIdx];
    /*@>23e50*/VCU_B./*@>27a38*/Logic/*@>1d710*/[/*@>1fcfb*/1U]/*@>1d70f*/ = /*@>24de4*/VCU_ConstP./*@>281d3*/pooled33/*@>235e4*/[/*@>235e0*/rowIdx/*@>235dd*/ + /*@>235e1*/8U];
    /* DataTypeConversion: '<S139>/Data Type Conversion10' */
    /*@>23ea4*/VCU_B./*@>27a62*/VOVG_ShiftDown_m/*@>787e*/ = /*@>23eaa*/VCU_B./*@>27a65*/Logic/*@>235e9*/[/*@>235e6*/0];
    /* UnitDelay: '<S205>/Delay Input1'
 *
 * Block description for '<S205>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>23ec2*/VCU_B./*@>27a71*/Uk1/*@>81c0*/ = /*@>24f71*/VCU_DW./*@>28242*/DelayInput1_DSTATE;
    /* CombinatorialLogic: '<S206>/Logic' incorporates:
 *  Delay: '<S192>/Delay1'
 *  Memory: '<S206>/Memory'
 *  RelationalOperator: '<S205>/FixPt Relational Operator'
 */
    /*@>23ee6*/VCU_B./*@>27a83*/FixPtRelationalOperator/*@>7883*/ = (/*@>23eec*/VCU_B./*@>27a86*/STW_shift_down_request/*@>7882*/ > /*@>23ef2*/VCU_B./*@>27a89*/Uk1);
    /*@>23f3a*/VCU_B./*@>27aad*/Delay1/*@>81cc*/ = /*@>24f77*/VCU_DW./*@>28245*/Delay1_DSTATE;
    /*@>23f5e*/VCU_B./*@>27abf*/Memory_d/*@>7886*/ = /*@>24f7d*/VCU_DW./*@>28248*/Memory_PreviousInput_l;
    /*@>1fcfe*/rowIdx/*@>1d740*/ = /*@>23f76*/VCU_B./*@>27acb*/FixPtRelationalOperator;
    /*@>1fd02*/rowIdx/*@>1d767*/ = /*@>2039d*/(int32_T)((/*@>2039a*/(uint32_T)/*@>1fd04*/rowIdx/*@>1fff4*/ << /*@>1fd06*/1)/*@>1fff2*/ + /*@>23fbe*/VCU_B./*@>27aef*/Delay1);
    /*@>1fd09*/rowIdx/*@>1d78e*/ = /*@>203b8*/(int32_T)((/*@>203b5*/(uint32_T)/*@>1fd0b*/rowIdx/*@>1ffea*/ << /*@>1fd0d*/1)/*@>1ffe8*/ + /*@>23fd0*/VCU_B./*@>27af8*/Memory_d);
    /*@>23ffa*/VCU_B./*@>27b0d*/Logic_i/*@>1d7a4*/[/*@>1fd12*/0U]/*@>1d7a3*/ = /*@>24df6*/VCU_ConstP./*@>281dc*/pooled33/*@>235f0*/[/*@>235eb*/(uint32_T)/*@>235ed*/rowIdx];
    /*@>2404e*/VCU_B./*@>27b37*/Logic_i/*@>1d7b7*/[/*@>1fd17*/1U]/*@>1d7b6*/ = /*@>24dfc*/VCU_ConstP./*@>281df*/pooled33/*@>235f9*/[/*@>235f5*/rowIdx/*@>235f2*/ + /*@>235f6*/8U];
    /* UnitDelay: '<S192>/Unit Delay4' */
    /*@>2406c*/VCU_B./*@>27b46*/UnitDelay4/*@>8228*/ = /*@>24f8f*/VCU_DW./*@>28251*/UnitDelay4_DSTATE;
    /* Gain: '<S209>/Gain' */
    /*@>24096*/VCU_B./*@>27b5b*/Gain/*@>7890*/ = /*@>1fc3a*/2.0/*@>1ffe0*/ * /*@>2409c*/VCU_B./*@>27b5e*/DataTypeConversion1;
    /* RelationalOperator: '<S209>/Relational Operator' incorporates:
 *  Constant: '<S209>/Constant'
 */
    /*@>240f0*/VCU_B./*@>27b88*/RelationalOperator/*@>7894*/ = (/*@>240f6*/VCU_B./*@>27b8b*/Gain/*@>7893*/ > /*@>1fc3b*/169.0);
    /* RelationalOperator: '<S209>/Relational Operator1' incorporates:
 *  Constant: '<S209>/Constant1'
 */
    /*@>24132*/VCU_B./*@>27ba9*/RelationalOperator1/*@>7898*/ = (/*@>24138*/VCU_B./*@>27bac*/Gain/*@>7897*/ > /*@>1fc3d*/228.0);
    /* RelationalOperator: '<S209>/Relational Operator2' incorporates:
 *  Constant: '<S209>/Constant2'
 */
    /*@>24156*/VCU_B./*@>27bbb*/RelationalOperator2/*@>789c*/ = (/*@>2415c*/VCU_B./*@>27bbe*/Gain/*@>789b*/ > /*@>1fc3e*/325.0);
    /* Sum: '<S209>/Add' */
    /*@>241a4*/VCU_B./*@>27be2*/Add_c/*@>a700*/ = /*@>20423*/(uint8_T)((/*@>2041d*/(uint32_T)/*@>241aa*/VCU_B./*@>27be5*/RelationalOperator/*@>1ffd0*/ + /*@>241b0*/VCU_B./*@>27be8*/RelationalOperator1)/*@>1ffc3*/ + /*@>241b6*/VCU_B./*@>27beb*/RelationalOperator2);
    /* RelationalOperator: '<S199>/Compare' incorporates:
 *  Constant: '<S199>/Constant'
 */
    /*@>241d4*/VCU_B./*@>27bfa*/Compare_b/*@>78a6*/ = (/*@>241da*/VCU_B./*@>27bfd*/x_clutch_STW/*@>78a5*/ >= /*@>1fc40*/15.0);
    /* Switch: '<S192>/Switch' incorporates:
 *  Constant: '<S192>/Constant'
 *  Constant: '<S192>/Constant1'
 */
    /*@>1d531*/if (/*@>241f8*/VCU_B./*@>27c0c*/Compare_b) {
        /*@>24246*/VCU_B./*@>27c33*/Switch/*@>1d534*/ = /*@>1fc42*/1.0;
    } else {
        /*@>24240*/VCU_B./*@>27c30*/Switch/*@>8238*/ = /*@>1fc43*/2.0;
    }
    /* End of Switch: '<S192>/Switch' */

    /* RelationalOperator: '<S192>/Relational Operator' */
    /*@>2427c*/VCU_B./*@>27c4e*/LessthanNeutral/*@>78ab*/ = (/*@>24282*/VCU_B./*@>27c51*/Add_c/*@>1ffb9*/ < /*@>24288*/VCU_B./*@>27c54*/Switch);
    /* UnitDelay: '<S193>/Unit Delay' */
    /*@>242ca*/VCU_B./*@>27c75*/UnitDelay/*@>8249*/ = /*@>24fa1*/VCU_DW./*@>2825a*/UnitDelay_DSTATE;
    /* UnitDelay: '<S192>/Unit Delay2' */
    /*@>242d6*/VCU_B./*@>27c7b*/Timeout/*@>8255*/ = /*@>24fa7*/VCU_DW./*@>2825d*/UnitDelay2_DSTATE;
    /* RelationalOperator: '<S200>/Compare' incorporates:
 *  Constant: '<S200>/Constant'
 */
    /*@>242ee*/VCU_B./*@>27c87*/Compare_f/*@>78b1*/ = (/*@>242f4*/VCU_B./*@>27c8a*/DataTypeConversion2/*@>78b0*/ > /*@>1fc46*/5000.0);
    /* RelationalOperator: '<S201>/Compare' incorporates:
 *  Constant: '<S201>/Constant'
 */
    /*@>24336*/VCU_B./*@>27cab*/Compare_n/*@>78b5*/ = (/*@>2433c*/VCU_B./*@>27cae*/Add_c/*@>78b4*/ == /*@>1fc47*/2);
    /* Logic: '<S192>/Logical Operator1' */
    /*@>24348*/VCU_B./*@>27cb4*/RPMcheckgear21/*@>78bb*/ = (/*@>2434e*/VCU_B./*@>27cb7*/Compare_n/*@>78ba*/ && /*@>24354*/VCU_B./*@>27cba*/Compare_f);
    /* RelationalOperator: '<S202>/Compare' incorporates:
 *  Constant: '<S202>/Constant'
 */
    /*@>24366*/VCU_B./*@>27cc3*/Compare_l/*@>78bf*/ = (/*@>2436c*/VCU_B./*@>27cc6*/DataTypeConversion2/*@>78be*/ > /*@>1fc48*/5300.0);
    /* RelationalOperator: '<S203>/Compare' incorporates:
 *  Constant: '<S203>/Constant'
 */
    /*@>24390*/VCU_B./*@>27cd8*/Compare_h/*@>78c3*/ = (/*@>24396*/VCU_B./*@>27cdb*/Add_c/*@>78c2*/ == /*@>1fc49*/3);
    /* Logic: '<S192>/Logical Operator2' */
    /*@>243ba*/VCU_B./*@>27ced*/RPMcheckgear31/*@>78c9*/ = (/*@>243c0*/VCU_B./*@>27cf0*/Compare_l/*@>78c8*/ && /*@>243c6*/VCU_B./*@>27cf3*/Compare_h);
    /* CombinatorialLogic: '<S207>/Logic' incorporates:
 *  Logic: '<S192>/Logical Operator'
 *  Memory: '<S207>/Memory'
 */
    /*@>243d8*/VCU_B./*@>27cfc*/LogicalOperator_d/*@>78db*/ = (/*@>243de*/VCU_B./*@>27cff*/UnitDelay4/*@>78ce*/ || /*@>243e4*/VCU_B./*@>27d02*/LessthanNeutral/*@>78d1*/ || /*@>243ea*/VCU_B./*@>27d05*/UnitDelay/*@>78d4*/ || /*@>243f0*/VCU_B./*@>27d08*/Timeout/*@>78d7*/ || /*@>243f6*/VCU_B./*@>27d0b*/RPMcheckgear21/*@>78da*/ || /*@>243fc*/VCU_B./*@>27d0e*/RPMcheckgear31);
    /*@>24414*/VCU_B./*@>27d1a*/Memory_l/*@>78dd*/ = /*@>24fad*/VCU_DW./*@>28260*/Memory_PreviousInput_a;
    /*@>1fe28*/tmp/*@>1d926*/ = /*@>24426*/VCU_B./*@>27d23*/Logic_i/*@>23623*/[/*@>23620*/0];
    /*@>1fd54*/rowIdx/*@>1d93d*/ = /*@>1fe2a*/tmp;
    /*@>1fd58*/rowIdx/*@>1d966*/ = /*@>204ca*/(int32_T)((/*@>204c7*/(uint32_T)/*@>1fd5a*/rowIdx/*@>1ffb3*/ << /*@>1fd5c*/1)/*@>1ffb1*/ + /*@>24444*/VCU_B./*@>27d32*/LogicalOperator_d);
    /*@>1fd5f*/rowIdx/*@>1d98f*/ = /*@>204d9*/(int32_T)((/*@>204d6*/(uint32_T)/*@>1fd61*/rowIdx/*@>1ffa9*/ << /*@>1fd63*/1)/*@>1ffa7*/ + /*@>2445c*/VCU_B./*@>27d3e*/Memory_l);
    /*@>24474*/VCU_B./*@>27d4a*/Logic_iy/*@>1d9a5*/[/*@>1fd68*/0U]/*@>1d9a4*/ = /*@>24e1a*/VCU_ConstP./*@>281ee*/pooled33/*@>2362a*/[/*@>23625*/(uint32_T)/*@>23627*/rowIdx];
    /*@>24480*/VCU_B./*@>27d50*/Logic_iy/*@>1d9b8*/[/*@>1fd6d*/1U]/*@>1d9b7*/ = /*@>24e20*/VCU_ConstP./*@>281f1*/pooled33/*@>23633*/[/*@>2362f*/rowIdx/*@>2362c*/ + /*@>23630*/8U];
    /* UnitDelay: '<S213>/Delay Input1'
 *
 * Block description for '<S213>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>24498*/VCU_B./*@>27d5c*/Uk1_i/*@>82b1*/ = /*@>24fbf*/VCU_DW./*@>28269*/DelayInput1_DSTATE_g;
    /* CombinatorialLogic: '<S216>/Logic' incorporates:
 *  RelationalOperator: '<S213>/FixPt Relational Operator'
 */
    /*@>244a4*/VCU_B./*@>27d62*/FixPtRelationalOperator_c/*@>78e3*/ = (/*@>244aa*/VCU_B./*@>27d65*/STW_shift_up_request/*@>78e2*/ > /*@>244b0*/VCU_B./*@>27d68*/Uk1_i);
    /* Gain: '<S218>/Gain' */
    /*@>244c8*/VCU_B./*@>27d74*/Gain_m/*@>78eb*/ = /*@>1fc4d*/2.0/*@>1ff9f*/ * /*@>244ce*/VCU_B./*@>27d77*/DataTypeConversion1;
    /* RelationalOperator: '<S218>/Relational Operator' incorporates:
 *  Constant: '<S218>/Constant'
 */
    /*@>244e0*/VCU_B./*@>27d80*/RelationalOperator_d/*@>78ef*/ = (/*@>244e6*/VCU_B./*@>27d83*/Gain_m/*@>78ee*/ > /*@>1fc4f*/169.0);
    /* RelationalOperator: '<S218>/Relational Operator1' incorporates:
 *  Constant: '<S218>/Constant1'
 */
    /*@>244f2*/VCU_B./*@>27d89*/RelationalOperator1_a/*@>78f3*/ = (/*@>244f8*/VCU_B./*@>27d8c*/Gain_m/*@>78f2*/ > /*@>1fc50*/269.0);
    /* RelationalOperator: '<S218>/Relational Operator2' incorporates:
 *  Constant: '<S218>/Constant2'
 */
    /*@>24504*/VCU_B./*@>27d92*/RelationalOperator2_d/*@>78f7*/ = (/*@>2450a*/VCU_B./*@>27d95*/Gain_m/*@>78f6*/ > /*@>1fc51*/360.0);
    /* Sum: '<S218>/Add' */
    /*@>2451c*/VCU_B./*@>27d9e*/Add_j/*@>a709*/ = /*@>20510*/(uint8_T)((/*@>2050a*/(uint32_T)/*@>24522*/VCU_B./*@>27da1*/RelationalOperator_d/*@>1ff8f*/ + /*@>24528*/VCU_B./*@>27da4*/RelationalOperator1_a)/*@>1ff82*/ + /*@>2452e*/VCU_B./*@>27da7*/RelationalOperator2_d);
    /* UnitDelay: '<S214>/Delay Input1'
 *
 * Block description for '<S214>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>24540*/VCU_B./*@>27db0*/Uk1_b/*@>82bd*/ = /*@>24fd7*/VCU_DW./*@>28275*/DelayInput1_DSTATE_ga;
    /* RelationalOperator: '<S214>/FixPt Relational Operator' */
    /*@>24558*/VCU_B./*@>27dbc*/FixPtRelationalOperator_m/*@>7902*/ = (/*@>2455e*/VCU_B./*@>27dbf*/Add_j/*@>7901*/ > /*@>24564*/VCU_B./*@>27dc2*/Uk1_b);
    /* RelationalOperator: '<S210>/Compare' incorporates:
 *  Constant: '<S210>/Constant'
 */
    /*@>2458e*/VCU_B./*@>27dd7*/Compare_ha/*@>7906*/ = (/*@>24594*/VCU_B./*@>27dda*/Add_j/*@>7905*/ >= /*@>1fc54*/3);
    /* UnitDelay: '<S192>/Unit Delay' */
    /*@>245a0*/VCU_B./*@>27de0*/UnitDelay_p/*@>82c9*/ = /*@>24fe3*/VCU_DW./*@>2827b*/UnitDelay_DSTATE_b;
    /* UnitDelay: '<S193>/Unit Delay1' */
    /*@>245ac*/VCU_B./*@>27de6*/Timeout_i/*@>82d5*/ = /*@>24fe9*/VCU_DW./*@>2827e*/UnitDelay1_DSTATE_k;
    /* RelationalOperator: '<S212>/Compare' incorporates:
 *  Constant: '<S212>/Constant'
 */
    /*@>245b8*/VCU_B./*@>27dec*/Compare_e/*@>790c*/ = (/*@>245be*/VCU_B./*@>27def*/Add_j/*@>790b*/ == /*@>1fc55*/0);
    /* RelationalOperator: '<S211>/Compare' incorporates:
 *  Constant: '<S211>/Constant'
 */
    /*@>245ca*/VCU_B./*@>27df5*/Compare_a/*@>7910*/ = (/*@>245d0*/VCU_B./*@>27df8*/x_clutch_STW/*@>790f*/ < /*@>1fc56*/15.0);
    /* Logic: '<S193>/Logical Operator1' */
    /*@>245dc*/VCU_B./*@>27dfe*/FailSafefirstgear/*@>7916*/ = (/*@>245e2*/VCU_B./*@>27e01*/Compare_e/*@>7915*/ && /*@>245e8*/VCU_B./*@>27e04*/Compare_a);
    /* CombinatorialLogic: '<S216>/Logic' incorporates:
 *  Logic: '<S193>/Logical Operator'
 *  Memory: '<S216>/Memory'
 */
    /*@>245f4*/VCU_B./*@>27e0a*/LogicalOperator_i/*@>7925*/ = (/*@>245fa*/VCU_B./*@>27e0d*/FixPtRelationalOperator_m/*@>791b*/ || /*@>24600*/VCU_B./*@>27e10*/Compare_ha/*@>791e*/ || /*@>24606*/VCU_B./*@>27e13*/UnitDelay_p/*@>7921*/ || /*@>2460c*/VCU_B./*@>27e16*/Timeout_i/*@>7924*/ || /*@>24612*/VCU_B./*@>27e19*/FailSafefirstgear);
    /*@>2461e*/VCU_B./*@>27e1f*/Memory_a/*@>7927*/ = /*@>24fef*/VCU_DW./*@>28281*/Memory_PreviousInput_al;
    /*@>1fd8c*/rowIdx/*@>1da8f*/ = /*@>2462a*/VCU_B./*@>27e25*/FixPtRelationalOperator_c;
    /*@>1fd90*/rowIdx/*@>1dab6*/ = /*@>2056b*/(int32_T)((/*@>20568*/(uint32_T)/*@>1fd92*/rowIdx/*@>1ff79*/ << /*@>1fd94*/1)/*@>1ff77*/ + /*@>24630*/VCU_B./*@>27e28*/LogicalOperator_i);
    /*@>1fd97*/rowIdx/*@>1dadd*/ = /*@>2057b*/(int32_T)((/*@>20578*/(uint32_T)/*@>1fd99*/rowIdx/*@>1ff6f*/ << /*@>1fd9b*/1)/*@>1ff6d*/ + /*@>2463c*/VCU_B./*@>27e2e*/Memory_a);
    /*@>24642*/VCU_B./*@>27e31*/Logic_iz/*@>1daf3*/[/*@>1fda0*/0U]/*@>1daf2*/ = /*@>24e32*/VCU_ConstP./*@>281fa*/pooled33/*@>2364f*/[/*@>2364a*/(uint32_T)/*@>2364c*/rowIdx];
    /*@>24648*/VCU_B./*@>27e34*/Logic_iz/*@>1db06*/[/*@>1fda5*/1U]/*@>1db05*/ = /*@>24e38*/VCU_ConstP./*@>281fd*/pooled33/*@>23658*/[/*@>23654*/rowIdx/*@>23651*/ + /*@>23655*/8U];
    /* CombinatorialLogic: '<S217>/Logic' incorporates:
 *  S-Function (sdspcount2): '<S193>/Counter1'
 */
    /*@>24654*/VCU_B./*@>27e3a*/Counter1/*@>8333*/ = /*@>1fa84*/false;
    /* S-Function (sdspcount2): '<S193>/Counter1' */
    /*@>8337*/if (/*@>24660*/VCU_B./*@>27e40*/LogicalOperator_i) {
        /*@>2501f*/VCU_DW./*@>28296*/Counter1_Count/*@>833b*/ = /*@>26a83*/0U;
    }
    /*@>8351*/if (/*@>2468a*/VCU_B./*@>27e55*/Logic_iz/*@>2365d*/[/*@>2365a*/0]) {
        /*@>1d53b*/if (/*@>2502b*/VCU_DW./*@>2829c*/Counter1_Count/*@>8356*/ < /*@>1fc5b*/60) {
            /*@>2503d*/VCU_DW./*@>282a5*/Counter1_Count/*@>26adf*/++;
        } else {
            /*@>25037*/VCU_DW./*@>282a2*/Counter1_Count/*@>835d*/ = /*@>26a86*/0U;
        }
    }
    /*@>836f*/if (/*@>25031*/VCU_DW./*@>2829f*/Counter1_Count/*@>836e*/ == /*@>1fc5c*/1) {
        /* CombinatorialLogic: '<S217>/Logic' */
        /*@>246a2*/VCU_B./*@>27e61*/Counter1/*@>8373*/ = /*@>1fa93*/true;
    }
    /* UnitDelay: '<S215>/Delay Input1'
 *
 * Block description for '<S215>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>246ae*/VCU_B./*@>27e67*/Uk1_m/*@>83b6*/ = /*@>25049*/VCU_DW./*@>282a8*/DelayInput1_DSTATE_f;
    /* RelationalOperator: '<S215>/FixPt Relational Operator' */
    /*@>246ba*/VCU_B./*@>27e6d*/FixPtRelationalOperator_b/*@>792e*/ = (/*@>246c0*/VCU_B./*@>27e70*/Add_j/*@>792d*/ > /*@>246c6*/VCU_B./*@>27e73*/Uk1_m);
    /* CombinatorialLogic: '<S217>/Logic' incorporates:
 *  Logic: '<S193>/Logical Operator2'
 *  Memory: '<S217>/Memory'
 */
    /*@>246d2*/VCU_B./*@>27e79*/LogicalOperator2/*@>7934*/ = (/*@>246d8*/VCU_B./*@>27e7c*/LogicalOperator_i/*@>7933*/ || /*@>246de*/VCU_B./*@>27e7f*/FixPtRelationalOperator_b);
    /*@>246f0*/VCU_B./*@>27e88*/Memory_g/*@>7936*/ = /*@>2504f*/VCU_DW./*@>282ab*/Memory_PreviousInput_k;
    /*@>1fdc4*/rowIdx/*@>1dbdd*/ = /*@>24702*/VCU_B./*@>27e91*/Counter1;
    /*@>1fdc8*/rowIdx/*@>1dc04*/ = /*@>20611*/(int32_T)((/*@>2060e*/(uint32_T)/*@>1fdca*/rowIdx/*@>1ff55*/ << /*@>1fdcc*/1)/*@>1ff53*/ + /*@>2470e*/VCU_B./*@>27e97*/LogicalOperator2);
    /*@>1fdcf*/rowIdx/*@>1dc2b*/ = /*@>2061b*/(int32_T)((/*@>20618*/(uint32_T)/*@>1fdd1*/rowIdx/*@>1ff4b*/ << /*@>1fdd3*/1)/*@>1ff49*/ + /*@>2471a*/VCU_B./*@>27e9d*/Memory_g);
    /*@>24720*/VCU_B./*@>27ea0*/Logic_e/*@>1dc41*/[/*@>1fdd8*/0U]/*@>1dc40*/ = /*@>24e4a*/VCU_ConstP./*@>28206*/pooled33/*@>2367e*/[/*@>23679*/(uint32_T)/*@>2367b*/rowIdx];
    /*@>2472c*/VCU_B./*@>27ea6*/Logic_e/*@>1dc54*/[/*@>1fddd*/1U]/*@>1dc53*/ = /*@>24e50*/VCU_ConstP./*@>28209*/pooled33/*@>2368c*/[/*@>23688*/rowIdx/*@>23685*/ + /*@>23689*/8U];
    /* DataTypeConversion: '<S139>/Data Type Conversion11' */
    /*@>24732*/VCU_B./*@>27ea9*/Ignition_Cut_o/*@>793a*/ = /*@>24738*/VCU_B./*@>27eac*/Logic_e/*@>23691*/[/*@>2368e*/0];
    /* S-Function (sdspcount2): '<S192>/Counter' */
    /*@>2473e*/VCU_B./*@>27eaf*/Counter/*@>8414*/ = /*@>1fa9c*/false;
    /*@>8418*/if (/*@>2474a*/VCU_B./*@>27eb5*/LogicalOperator_d) {
        /*@>25079*/VCU_DW./*@>282bd*/Counter_Count/*@>841c*/ = /*@>26a92*/0U;
    }
    /*@>8432*/if (/*@>2475c*/VCU_B./*@>27ebe*/Logic_i/*@>23696*/[/*@>23693*/0]) {
        /*@>1d545*/if (/*@>25085*/VCU_DW./*@>282c3*/Counter_Count/*@>8437*/ < /*@>1fc65*/500) {
            /*@>25097*/VCU_DW./*@>282cc*/Counter_Count/*@>26ae2*/++;
        } else {
            /*@>25091*/VCU_DW./*@>282c9*/Counter_Count/*@>843e*/ = /*@>26a98*/0U;
        }
    }
    /*@>8450*/if (/*@>2508b*/VCU_DW./*@>282c6*/Counter_Count/*@>844f*/ == /*@>1fc69*/500) {
        /*@>24768*/VCU_B./*@>27ec4*/Counter/*@>8454*/ = /*@>1faab*/true;
    }
    /* End of S-Function (sdspcount2): '<S192>/Counter' */

    /* S-Function (sdspcount2): '<S193>/Counter' */
    /*@>2476e*/VCU_B./*@>27ec7*/Counter_d/*@>8499*/ = /*@>1fab0*/false;
    /*@>849d*/if (/*@>2477a*/VCU_B./*@>27ecd*/LogicalOperator_i) {
        /*@>250c1*/VCU_DW./*@>282db*/Counter_Count_i/*@>84a1*/ = /*@>26a9b*/0U;
    }
    /*@>84b7*/if (/*@>24792*/VCU_B./*@>27ed9*/Logic_iz/*@>236aa*/[/*@>236a7*/0]) {
        /*@>1d54f*/if (/*@>250c7*/VCU_DW./*@>282de*/Counter_Count_i/*@>84bc*/ < /*@>1fc6e*/200) {
            /*@>250d9*/VCU_DW./*@>282e7*/Counter_Count_i/*@>26ae3*/++;
        } else {
            /*@>250d3*/VCU_DW./*@>282e4*/Counter_Count_i/*@>84c3*/ = /*@>26a9e*/0U;
        }
    }
    /*@>84d5*/if (/*@>250cd*/VCU_DW./*@>282e1*/Counter_Count_i/*@>84d4*/ == /*@>1fc74*/180) {
        /*@>247aa*/VCU_B./*@>27ee5*/Counter_d/*@>84d9*/ = /*@>1fabf*/true;
    }
    /* End of S-Function (sdspcount2): '<S193>/Counter' */

    /* DataTypeConversion: '<S139>/Data Type Conversion8' */
    /*@>247c2*/VCU_B./*@>27ef1*/VOVG_ShiftUp_k/*@>793f*/ = /*@>247c8*/VCU_B./*@>27ef4*/Logic_iz/*@>236af*/[/*@>236ac*/0];
    /* UnitDelay: '<S204>/Delay Input1'
 *
 * Block description for '<S204>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>247da*/VCU_B./*@>27efd*/Uk1_f/*@>851c*/ = /*@>250eb*/VCU_DW./*@>282ed*/DelayInput1_DSTATE_p;
    /* RelationalOperator: '<S204>/FixPt Relational Operator' */
    /*@>247f2*/VCU_B./*@>27f09*/FixPtRelationalOperator_d/*@>7944*/ = (/*@>247f8*/VCU_B./*@>27f0c*/Add_c/*@>7943*/ < /*@>247fe*/VCU_B./*@>27f0f*/Uk1_f);
    /* Switch: '<S191>/Switch' */
    /*@>1d559*/if (/*@>24810*/VCU_B./*@>27f18*/Logic_i/*@>236b4*/[/*@>236b1*/0]) {
        /* MinMax: '<S191>/MinMax' incorporates:
 *  Constant: '<S191>/Constant'
 */
        /*@>2482e*/VCU_B./*@>27f27*/Switch_g/*@>1d55c*/ = /*@>1fc6c*/20.0;
    } else {
        /* MinMax: '<S191>/MinMax' incorporates:
 *  Constant: '<S191>/Constant1'
 */
        /*@>24828*/VCU_B./*@>27f24*/Switch_g/*@>852c*/ = /*@>1fc6d*/0.0;
    }
    /* End of Switch: '<S191>/Switch' */

    /* MinMax: '<S191>/MinMax' */
    /*@>209ec*/if ((/*@>24852*/VCU_B./*@>27f39*/x_clutch_STW/*@>209e5*/ > /*@>24858*/VCU_B./*@>27f3c*/Switch_g)/*@>209e8*/ || /*@>2282c*/rtIsNaN(/*@>2485e*/VCU_B./*@>27f3f*/Switch_g)) {
        /*@>24870*/VCU_B./*@>27f48*/MinMax/*@>209ee*/ = /*@>24876*/VCU_B./*@>27f4b*/x_clutch_STW;
    } else {
        /*@>24864*/VCU_B./*@>27f42*/MinMax/*@>209eb*/ = /*@>2486a*/VCU_B./*@>27f45*/Switch_g;
    }
    /*@>20a24*/if (!/*@<22802*/(/*@>24894*/VCU_B./*@>27f5a*/MinMax/*@>20a1d*/ > /*@>20dde*/0.0)) {
        /*@>248a6*/VCU_B./*@>27f63*/MinMax/*@>20a23*/ = /*@>20de2*/0.0;
    }
    /* RelationalOperator: '<S194>/Compare' incorporates:
 *  Constant: '<S194>/Constant'
 */
    /*@>248be*/VCU_B./*@>27f6f*/Compare_ao/*@>794a*/ = (/*@>248c4*/VCU_B./*@>27f72*/MinMax/*@>7949*/ > /*@>1fc73*/1.0);
    /* DataTypeConversion: '<S139>/Data Type Conversion12' */
    /*@>248d6*/VCU_B./*@>27f7b*/VOVG_IN_h/*@>794d*/ = /*@>248dc*/VCU_B./*@>27f7e*/Compare_ao;
    /* Sum: '<S191>/Add' */
    /*@>248e8*/VCU_B./*@>27f84*/Add/*@>a70e*/ = /*@>248ee*/VCU_B./*@>27f87*/MinMax/*@>a70b*/ - /*@>248f4*/VCU_B./*@>27f8a*/x_clutch_b;
    /* RelationalOperator: '<S196>/Compare' incorporates:
 *  Constant: '<S196>/Constant'
 */
    /*@>248fa*/VCU_B./*@>27f8d*/Compare_gu/*@>7956*/ = (/*@>24900*/VCU_B./*@>27f90*/Add/*@>7955*/ < /*@>1fc76*/-0.5);
    /* Lookup_n-D: '<S191>/Duty Cycle MHJ9' */
    /*@>2490c*/VCU_B./*@>27f96*/DutyCycleMHJ9/*@>a7eb*/ = /*@>22830*/look1_binlxpw(/*@>24912*/VCU_B./*@>27f99*/Add, /*@>24e56*/VCU_ConstP./*@>2820c*/pooled24, /*@>24e5c*/VCU_ConstP./*@>2820f*/pooled23, /*@>1fb93*/14U);
    /* Product: '<S191>/Product1' */
    /*@>2491e*/VCU_B./*@>27f9f*/Product1/*@>7964*/ = /*@>24924*/VCU_B./*@>27fa2*/DutyCycleMHJ9/*@>1ff23*/ * /*@>20716*/(real_T)/*@>2492a*/VCU_B./*@>27fa5*/Compare_gu;
    /* RelationalOperator: '<S195>/Compare' incorporates:
 *  Constant: '<S195>/Constant'
 */
    /*@>24948*/VCU_B./*@>27fb4*/Compare_eh/*@>7968*/ = (/*@>2494e*/VCU_B./*@>27fb7*/x_clutch_b/*@>7967*/ > /*@>1fc7a*/20.0);
    /* Switch: '<S191>/Switch1' incorporates:
 *  Constant: '<S191>/Constant2'
 *  Constant: '<S191>/Constant3'
 */
    /*@>1d563*/if (/*@>24984*/VCU_B./*@>27fd2*/Compare_eh) {
        /*@>249ae*/VCU_B./*@>27fe7*/Switch1/*@>1d566*/ = /*@>1fc7b*/2.0;
    } else {
        /*@>249a8*/VCU_B./*@>27fe4*/Switch1/*@>8567*/ = /*@>1fc7c*/1.0;
    }
    /* End of Switch: '<S191>/Switch1' */

    /* Product: '<S191>/Product2' */
    /*@>249e4*/VCU_B./*@>28002*/Product2/*@>7970*/ = /*@>249ea*/VCU_B./*@>28005*/Product1/*@>1ff1f*/ * /*@>249f0*/VCU_B./*@>28008*/Switch1;
    /* DataTypeConversion: '<S139>/Data Type Conversion15' */
    /*@>24a14*/VCU_B./*@>2801a*/MHJ9_OUT_d/*@>7973*/ = /*@>24a1a*/VCU_B./*@>2801d*/Product2;
    /* RelationalOperator: '<S197>/Compare' incorporates:
 *  Constant: '<S197>/Constant'
 */
    /*@>24a32*/VCU_B./*@>28029*/Compare_m/*@>7977*/ = (/*@>24a38*/VCU_B./*@>2802c*/Add/*@>7976*/ > /*@>1fc82*/0.0);
    /* Product: '<S191>/Product3' */
    /*@>24a68*/VCU_B./*@>28044*/Product3/*@>797e*/ = /*@>24a6e*/VCU_B./*@>28047*/DutyCycleMHJ9/*@>1ff1b*/ * /*@>20753*/(real_T)/*@>24a74*/VCU_B./*@>2804a*/Compare_m;
    /* DataTypeConversion: '<S139>/Data Type Conversion14' */
    /*@>24a98*/VCU_B./*@>2805c*/MHJ9_IN_e/*@>7981*/ = /*@>24a9e*/VCU_B./*@>2805f*/Product3;
    /* RelationalOperator: '<S198>/Compare' incorporates:
 *  Constant: '<S198>/Constant'
 */
    /*@>24ac2*/VCU_B./*@>28071*/Compare_md/*@>7985*/ = (/*@>24ac8*/VCU_B./*@>28074*/Add/*@>7984*/ < /*@>1fc86*/-20.0);
    /* DataTypeConversion: '<S139>/Data Type Conversion13' */
    /*@>24aec*/VCU_B./*@>28086*/VOVG_OUT_j/*@>7988*/ = /*@>24af2*/VCU_B./*@>28089*/Compare_md;
    /* DataTypeConversion: '<S139>/Data Type Conversion16' */
    /*@>24b1c*/VCU_B./*@>2809e*/x_clutch_LC_b/*@>798b*/ = /*@>1fc89*/0.0;
    /* DataTypeConversion: '<S139>/Data Type Conversion17' */
    /*@>24b40*/VCU_B./*@>280b0*/LC_Mdes_b/*@>798e*/ = /*@>1fc8c*/0.0;
    /* DataTypeConversion: '<S139>/Data Type Conversion18' */
    /*@>24b64*/VCU_B./*@>280c2*/LC_Fnr_l/*@>7991*/ = /*@>1fc8d*/0.0;
    /* Update for UnitDelay: '<S192>/Unit Delay1' */
    /*@>25115*/VCU_DW./*@>28302*/UnitDelay1_DSTATE/*@>8578*/ = /*@>24b82*/VCU_B./*@>280d1*/Logic_i/*@>236b9*/[/*@>236b6*/0];
    /* Update for Delay: '<S192>/Delay' */
/*@>1cd05*/    for (/*@>26ac4*/rowIdx = /*@>1fc94*/0; /*@>26acc*/rowIdx < /*@>1fc95*/19; /*@>26ac9*/rowIdx/*@>26ae4*/++) {
        /*@>25121*/VCU_DW./*@>28308*/Delay_DSTATE/*@>1b16e*/[/*@>1fc08*/rowIdx]/*@>85a6*/ = /*@>25127*/VCU_DW./*@>2830b*/Delay_DSTATE/*@>236c1*/[/*@>236bd*/rowIdx/*@>236bb*/ + /*@>236be*/1];
    }
    /*@>2511b*/VCU_DW./*@>28305*/Delay_DSTATE/*@>85be*/[/*@>1fae0*/19]/*@>85c8*/ = /*@>24bc4*/VCU_B./*@>280f2*/LogicalOperator_d;
    /* End of Update for Delay: '<S192>/Delay' */

    /* Update for Memory: '<S208>/Memory' */
    /*@>2512d*/VCU_DW./*@>2830e*/Memory_PreviousInput/*@>7aa5*/ = /*@>24bee*/VCU_B./*@>28107*/Logic/*@>236c6*/[/*@>236c3*/0];
    /* Update for UnitDelay: '<S205>/Delay Input1'
 *
 * Block description for '<S205>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>25133*/VCU_DW./*@>28311*/DelayInput1_DSTATE/*@>85d4*/ = /*@>24c0c*/VCU_B./*@>28116*/STW_shift_down_request;
    /* Update for Delay: '<S192>/Delay1' */
    /*@>25139*/VCU_DW./*@>28314*/Delay1_DSTATE/*@>85e0*/ = /*@>24c1e*/VCU_B./*@>2811f*/LogicalOperator_d;
    /* Update for Memory: '<S206>/Memory' */
    /*@>2513f*/VCU_DW./*@>28317*/Memory_PreviousInput_l/*@>7aa9*/ = /*@>24c30*/VCU_B./*@>28128*/Logic_i/*@>236cb*/[/*@>236c8*/0];
    /* Update for UnitDelay: '<S192>/Unit Delay4' */
    /*@>25145*/VCU_DW./*@>2831a*/UnitDelay4_DSTATE/*@>85ec*/ = /*@>24c42*/VCU_B./*@>28131*/FixPtRelationalOperator_d;
    /* Update for UnitDelay: '<S193>/Unit Delay' */
    /*@>2514b*/VCU_DW./*@>2831d*/UnitDelay_DSTATE/*@>85f8*/ = /*@>24c54*/VCU_B./*@>2813a*/Logic_iz/*@>236d0*/[/*@>236cd*/0];
    /* Update for UnitDelay: '<S192>/Unit Delay2' */
    /*@>25151*/VCU_DW./*@>28320*/UnitDelay2_DSTATE/*@>8604*/ = /*@>24c66*/VCU_B./*@>28143*/Counter;
    /* Update for Memory: '<S207>/Memory' */
    /*@>25157*/VCU_DW./*@>28323*/Memory_PreviousInput_a/*@>7aae*/ = /*@>24c7e*/VCU_B./*@>2814f*/Logic_iy/*@>236d5*/[/*@>236d2*/0];
    /* Update for UnitDelay: '<S213>/Delay Input1'
 *
 * Block description for '<S213>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>2515d*/VCU_DW./*@>28326*/DelayInput1_DSTATE_g/*@>8610*/ = /*@>24c96*/VCU_B./*@>2815b*/STW_shift_up_request;
    /* Update for UnitDelay: '<S214>/Delay Input1'
 *
 * Block description for '<S214>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>25163*/VCU_DW./*@>28329*/DelayInput1_DSTATE_ga/*@>861c*/ = /*@>24ca2*/VCU_B./*@>28161*/Add_j;
    /* Update for UnitDelay: '<S192>/Unit Delay' */
    /*@>25169*/VCU_DW./*@>2832c*/UnitDelay_DSTATE_b/*@>8628*/ = /*@>24cba*/VCU_B./*@>2816d*/Logic_iy/*@>236da*/[/*@>236d7*/0];
    /* Update for UnitDelay: '<S193>/Unit Delay1' */
    /*@>25175*/VCU_DW./*@>28332*/UnitDelay1_DSTATE_k/*@>8634*/ = /*@>24cc6*/VCU_B./*@>28173*/Counter_d;
    /* Update for Memory: '<S216>/Memory' */
    /*@>2517b*/VCU_DW./*@>28335*/Memory_PreviousInput_al/*@>7ab4*/ = /*@>24cde*/VCU_B./*@>2817f*/Logic_iz/*@>236df*/[/*@>236dc*/0];
    /* Update for UnitDelay: '<S215>/Delay Input1'
 *
 * Block description for '<S215>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>25187*/VCU_DW./*@>2833b*/DelayInput1_DSTATE_f/*@>8640*/ = /*@>24cea*/VCU_B./*@>28185*/Add_j;
    /* Update for Memory: '<S217>/Memory' */
    /*@>2518d*/VCU_DW./*@>2833e*/Memory_PreviousInput_k/*@>7ab7*/ = /*@>24cf0*/VCU_B./*@>28188*/Logic_e/*@>236e9*/[/*@>236e6*/0];
    /* Update for UnitDelay: '<S204>/Delay Input1'
 *
 * Block description for '<S204>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>25193*/VCU_DW./*@>28341*/DelayInput1_DSTATE_p/*@>864c*/ = /*@>24cf6*/VCU_B./*@>2818b*/Add_c;
}
/* End of Outputs for SubSystem: '<S7>/semi_auto_jr18' */

/* RelationalOperator: '<S135>/Compare' incorporates:
 *  Constant: '<S135>/Constant'
 */
/*@>23d78*/VCU_B./*@>279cc*/Compare_j/*@>73f7*/ = (/*@>23d7e*/VCU_B./*@>279cf*/DataTypeConversion_cg/*@>73f6*/ == /*@>1fc28*/2);
/* Outputs for Enabled SubSystem: '<S7>/driver_jr18' incorporates:
 *  EnablePort: '<S138>/Enable'
 */
/*@>73f9*/if (/*@>23d90*/VCU_B./*@>279d8*/Compare_j) {
    /* MinMax: '<S183>/MinMax' */
    /*@>20a5c*/if (/*@>23da2*/VCU_B./*@>279e1*/x_clutch_STW/*@>20a55*/ > /*@>20de4*/0.0) {
        /*@>23dc6*/VCU_B./*@>279f3*/MinMax_l/*@>20a5e*/ = /*@>23dcc*/VCU_B./*@>279f6*/x_clutch_STW;
    } else {
        /*@>23dc0*/VCU_B./*@>279f0*/MinMax_l/*@>20a5b*/ = /*@>20de8*/0.0;
    }
    /* End of MinMax: '<S183>/MinMax' */

    /* RelationalOperator: '<S186>/Compare' incorporates:
 *  Constant: '<S186>/Constant'
 */
    /*@>23e26*/VCU_B./*@>27a23*/Compare_bd/*@>7aed*/ = (/*@>23e2c*/VCU_B./*@>27a26*/MinMax_l/*@>7aec*/ > /*@>1fc2b*/1.0);
    /* DataTypeConversion: '<S138>/Data Type Conversion12' */
    /*@>23e44*/VCU_B./*@>27a32*/VOVG_IN_c/*@>7af0*/ = /*@>23e4a*/VCU_B./*@>27a35*/Compare_bd;
    /* Sum: '<S183>/Add' */
    /*@>23e92*/VCU_B./*@>27a59*/Add_l/*@>a727*/ = /*@>23e98*/VCU_B./*@>27a5c*/MinMax_l/*@>a724*/ - /*@>23e9e*/VCU_B./*@>27a5f*/x_clutch_b;
    /* RelationalOperator: '<S188>/Compare' incorporates:
 *  Constant: '<S188>/Constant'
 */
    /*@>23eb6*/VCU_B./*@>27a6b*/Compare_e5/*@>7af9*/ = (/*@>23ebc*/VCU_B./*@>27a6e*/Add_l/*@>7af8*/ < /*@>1fc2d*/-0.5);
    /* Lookup_n-D: '<S183>/Duty Cycle MHJ9' */
    /*@>23eda*/VCU_B./*@>27a7d*/DutyCycleMHJ9_d/*@>a814*/ = /*@>22834*/look1_binlxpw(/*@>23ee0*/VCU_B./*@>27a80*/Add_l, /*@>24dea*/VCU_ConstP./*@>281d6*/pooled24, /*@>24df0*/VCU_ConstP./*@>281d9*/pooled23, /*@>1fb99*/14U);
    /* Product: '<S183>/Product1' */
    /*@>23f28*/VCU_B./*@>27aa4*/Product1_p/*@>7b07*/ = /*@>23f2e*/VCU_B./*@>27aa7*/DutyCycleMHJ9_d/*@>1ff17*/ * /*@>20358*/(real_T)/*@>23f34*/VCU_B./*@>27aaa*/Compare_e5;
    /* RelationalOperator: '<S187>/Compare' incorporates:
 *  Constant: '<S187>/Constant'
 */
    /*@>23f52*/VCU_B./*@>27ab9*/Compare_p/*@>7b0b*/ = (/*@>23f58*/VCU_B./*@>27abc*/x_clutch_b/*@>7b0a*/ > /*@>1fc30*/20.0);
    /* Switch: '<S183>/Switch1' incorporates:
 *  Constant: '<S183>/Constant2'
 *  Constant: '<S183>/Constant3'
 */
    /*@>1d52c*/if (/*@>23f70*/VCU_B./*@>27ac8*/Compare_p) {
        /*@>23fb8*/VCU_B./*@>27aec*/Switch1_e/*@>1d52f*/ = /*@>1fc31*/2.0;
    } else {
        /*@>23fb2*/VCU_B./*@>27ae9*/Switch1_e/*@>8682*/ = /*@>1fc32*/1.0;
    }
    /* End of Switch: '<S183>/Switch1' */

    /* Product: '<S183>/Product2' */
    /*@>23fe8*/VCU_B./*@>27b04*/Product2_p/*@>7b13*/ = /*@>23fee*/VCU_B./*@>27b07*/Product1_p/*@>1ff13*/ * /*@>23ff4*/VCU_B./*@>27b0a*/Switch1_e;
    /* DataTypeConversion: '<S138>/Data Type Conversion15' */
    /*@>24042*/VCU_B./*@>27b31*/MHJ9_OUT_k/*@>7b16*/ = /*@>24048*/VCU_B./*@>27b34*/Product2_p;
    /* RelationalOperator: '<S189>/Compare' incorporates:
 *  Constant: '<S189>/Constant'
 */
    /*@>24060*/VCU_B./*@>27b40*/Compare_gz/*@>7b1a*/ = (/*@>24066*/VCU_B./*@>27b43*/Add_l/*@>7b19*/ > /*@>1fc35*/0.0);
    /* Product: '<S183>/Product3' */
    /*@>24084*/VCU_B./*@>27b52*/Product3_d/*@>7b21*/ = /*@>2408a*/VCU_B./*@>27b55*/DutyCycleMHJ9_d/*@>1ff0f*/ * /*@>203ac*/(real_T)/*@>24090*/VCU_B./*@>27b58*/Compare_gz;
    /* DataTypeConversion: '<S138>/Data Type Conversion14' */
    /*@>240e4*/VCU_B./*@>27b82*/MHJ9_IN_p/*@>7b24*/ = /*@>240ea*/VCU_B./*@>27b85*/Product3_d;
    /* RelationalOperator: '<S190>/Compare' incorporates:
 *  Constant: '<S190>/Constant'
 */
    /*@>24126*/VCU_B./*@>27ba3*/Compare_bh/*@>7b28*/ = (/*@>2412c*/VCU_B./*@>27ba6*/Add_l/*@>7b27*/ < /*@>1fc38*/-20.0);
    /* DataTypeConversion: '<S138>/Data Type Conversion13' */
    /*@>2414a*/VCU_B./*@>27bb5*/VOVG_OUT_o/*@>7b2b*/ = /*@>24150*/VCU_B./*@>27bb8*/Compare_bh;
    /* RelationalOperator: '<S184>/Compare' incorporates:
 *  Constant: '<S184>/Constant'
 */
    /*@>24198*/VCU_B./*@>27bdc*/Compare_g5/*@>7b2f*/ = (/*@>2419e*/VCU_B./*@>27bdf*/DataTypeConversion3/*@>7b2e*/ < /*@>1fc39*/3.0);
    /* Logic: '<S138>/Logical Operator1' */
    /*@>241c2*/VCU_B./*@>27bf1*/LogicalOperator1/*@>7b35*/ = ((/*@>241c8*/VCU_B./*@>27bf4*/STW_shift_up_request/*@>1ff0c*/ != /*@>1ff0a*/0.0)/*@>7b34*/ && /*@>241ce*/VCU_B./*@>27bf7*/Compare_g5);
    /* DataTypeConversion: '<S138>/Data Type Conversion8' */
    /*@>241ec*/VCU_B./*@>27c06*/VOVG_ShiftUp_o/*@>7b38*/ = /*@>241f2*/VCU_B./*@>27c09*/LogicalOperator1;
    /* RelationalOperator: '<S185>/Compare' incorporates:
 *  Constant: '<S185>/Constant'
 */
    /*@>24234*/VCU_B./*@>27c2a*/Compare_mz/*@>7b3c*/ = (/*@>2423a*/VCU_B./*@>27c2d*/DataTypeConversion3/*@>7b3b*/ >= /*@>1fc3c*/0.0);
    /* Logic: '<S138>/Logical Operator' */
    /*@>24252*/VCU_B./*@>27c39*/LogicalOperator_e/*@>7b42*/ = (/*@>24258*/VCU_B./*@>27c3c*/Compare_mz/*@>7b41*/ && (/*@>2425e*/VCU_B./*@>27c3f*/STW_shift_down_request/*@>1ff08*/ != /*@>1ff06*/0.0));
    /* DataTypeConversion: '<S138>/Data Type Conversion10' */
    /*@>24270*/VCU_B./*@>27c48*/VOVG_ShiftDown_f/*@>7b45*/ = /*@>24276*/VCU_B./*@>27c4b*/LogicalOperator_e;
    /* DataTypeConversion: '<S138>/Data Type Conversion11' */
    /*@>242c4*/VCU_B./*@>27c72*/Ignition_Cut_h/*@>7b48*/ = /*@>1fc3f*/0.0;
    /* DataTypeConversion: '<S138>/Data Type Conversion16' */
    /*@>242d0*/VCU_B./*@>27c78*/x_clutch_LC_i/*@>7b4b*/ = /*@>1fc41*/0.0;
    /* DataTypeConversion: '<S138>/Data Type Conversion17' */
    /*@>242e8*/VCU_B./*@>27c84*/LC_Mdes_f/*@>7b4e*/ = /*@>1fc44*/0.0;
    /* DataTypeConversion: '<S138>/Data Type Conversion18' */
    /*@>24330*/VCU_B./*@>27ca8*/LC_Fnr_f/*@>7b51*/ = /*@>1fc45*/0.0;
}
/* End of Outputs for SubSystem: '<S7>/driver_jr18' */

/* MultiPortSwitch: '<S7>/Multiport Switch' */
/*@>73fe*/switch (/*@>23dba*/VCU_B./*@>279ed*/DataTypeConversion_cg) {
  case /*@>1f5e2*/1:
    /*@>23dea*/VCU_B./*@>27a05*/VOVG_ShiftUp/*@>7402*/ = /*@>23df0*/VCU_B./*@>27a08*/VOVG_ShiftUp_k;
    break;
  case /*@>1f5e3*/2:
    /*@>23df6*/VCU_B./*@>27a0b*/VOVG_ShiftUp/*@>7404*/ = /*@>23dfc*/VCU_B./*@>27a0e*/VOVG_ShiftUp_o;
    break;
  case /*@>1f5e4*/3:
    /*@>23e02*/VCU_B./*@>27a11*/VOVG_ShiftUp/*@>7406*/ = /*@>23e08*/VCU_B./*@>27a14*/VOVG_ShiftUp_d;
    break;
  default:
    /*@>23dde*/VCU_B./*@>279ff*/VOVG_ShiftUp/*@>7400*/ = /*@>23de4*/VCU_B./*@>27a02*/VOVG_ShiftUp_k;
    break;
}
/*@>7409*/switch (/*@>23e3e*/VCU_B./*@>27a2f*/DataTypeConversion_cg) {
  case /*@>1f5f7*/1:
    /*@>23e6e*/VCU_B./*@>27a47*/LC_Fnr/*@>740d*/ = /*@>23e74*/VCU_B./*@>27a4a*/LC_Fnr_l;
    break;
  case /*@>1f5f8*/2:
    /*@>23e7a*/VCU_B./*@>27a4d*/LC_Fnr/*@>740f*/ = /*@>23e80*/VCU_B./*@>27a50*/LC_Fnr_f;
    break;
  case /*@>1f5f9*/3:
    /*@>23e86*/VCU_B./*@>27a53*/LC_Fnr/*@>7411*/ = /*@>23e8c*/VCU_B./*@>27a56*/LC_Fnr_e;
    break;
  default:
    /*@>23e62*/VCU_B./*@>27a41*/LC_Fnr/*@>740b*/ = /*@>23e68*/VCU_B./*@>27a44*/LC_Fnr_l;
    break;
}
/*@>7414*/switch (/*@>23ed4*/VCU_B./*@>27a7a*/DataTypeConversion_cg) {
  case /*@>1f60c*/1:
    /*@>23f04*/VCU_B./*@>27a92*/VOVG_ShiftDown/*@>7418*/ = /*@>23f0a*/VCU_B./*@>27a95*/VOVG_ShiftDown_m;
    break;
  case /*@>1f60d*/2:
    /*@>23f10*/VCU_B./*@>27a98*/VOVG_ShiftDown/*@>741a*/ = /*@>23f16*/VCU_B./*@>27a9b*/VOVG_ShiftDown_f;
    break;
  case /*@>1f60e*/3:
    /*@>23f1c*/VCU_B./*@>27a9e*/VOVG_ShiftDown/*@>741c*/ = /*@>23f22*/VCU_B./*@>27aa1*/VOVG_ShiftDown_i;
    break;
  default:
    /*@>23ef8*/VCU_B./*@>27a8c*/VOVG_ShiftDown/*@>7416*/ = /*@>23efe*/VCU_B./*@>27a8f*/VOVG_ShiftDown_m;
    break;
}
/*@>741f*/switch (/*@>23f6a*/VCU_B./*@>27ac5*/DataTypeConversion_cg) {
  case /*@>1f621*/1:
    /*@>23f8e*/VCU_B./*@>27ad7*/Ignition_Cut/*@>7423*/ = /*@>23f94*/VCU_B./*@>27ada*/Ignition_Cut_o;
    break;
  case /*@>1f622*/2:
    /*@>23f9a*/VCU_B./*@>27add*/Ignition_Cut/*@>7425*/ = /*@>23fa0*/VCU_B./*@>27ae0*/Ignition_Cut_h;
    break;
  case /*@>1f623*/3:
    /*@>23fa6*/VCU_B./*@>27ae3*/Ignition_Cut/*@>7427*/ = /*@>23fac*/VCU_B./*@>27ae6*/Ignition_Cut_g;
    break;
  default:
    /*@>23f82*/VCU_B./*@>27ad1*/Ignition_Cut/*@>7421*/ = /*@>23f88*/VCU_B./*@>27ad4*/Ignition_Cut_o;
    break;
}
/*@>742a*/switch (/*@>23fe2*/VCU_B./*@>27b01*/DataTypeConversion_cg) {
  case /*@>1f636*/1:
    /*@>2401e*/VCU_B./*@>27b1f*/VOVG_IN/*@>742e*/ = /*@>24024*/VCU_B./*@>27b22*/VOVG_IN_h;
    break;
  case /*@>1f637*/2:
    /*@>2402a*/VCU_B./*@>27b25*/VOVG_IN/*@>7430*/ = /*@>24030*/VCU_B./*@>27b28*/VOVG_IN_c;
    break;
  case /*@>1f638*/3:
    /*@>24036*/VCU_B./*@>27b2b*/VOVG_IN/*@>7432*/ = /*@>2403c*/VCU_B./*@>27b2e*/VOVG_IN_b;
    break;
  default:
    /*@>24012*/VCU_B./*@>27b19*/VOVG_IN/*@>742c*/ = /*@>24018*/VCU_B./*@>27b1c*/VOVG_IN_h;
    break;
}
/*@>7435*/switch (/*@>2407e*/VCU_B./*@>27b4f*/DataTypeConversion_cg) {
  case /*@>1f64b*/1:
    /*@>240c0*/VCU_B./*@>27b70*/VOVG_OUT/*@>7439*/ = /*@>240c6*/VCU_B./*@>27b73*/VOVG_OUT_j;
    break;
  case /*@>1f64c*/2:
    /*@>240cc*/VCU_B./*@>27b76*/VOVG_OUT/*@>743b*/ = /*@>240d2*/VCU_B./*@>27b79*/VOVG_OUT_o;
    break;
  case /*@>1f64d*/3:
    /*@>240d8*/VCU_B./*@>27b7c*/VOVG_OUT/*@>743d*/ = /*@>240de*/VCU_B./*@>27b7f*/VOVG_OUT_i;
    break;
  default:
    /*@>240b4*/VCU_B./*@>27b6a*/VOVG_OUT/*@>7437*/ = /*@>240ba*/VCU_B./*@>27b6d*/VOVG_OUT_j;
    break;
}
/*@>7440*/switch (/*@>24144*/VCU_B./*@>27bb2*/DataTypeConversion_cg) {
  case /*@>1f660*/1:
    /*@>24174*/VCU_B./*@>27bca*/MHJ9_IN/*@>7444*/ = /*@>2417a*/VCU_B./*@>27bcd*/MHJ9_IN_e;
    break;
  case /*@>1f661*/2:
    /*@>24180*/VCU_B./*@>27bd0*/MHJ9_IN/*@>7446*/ = /*@>24186*/VCU_B./*@>27bd3*/MHJ9_IN_p;
    break;
  case /*@>1f662*/3:
    /*@>2418c*/VCU_B./*@>27bd6*/MHJ9_IN/*@>7448*/ = /*@>24192*/VCU_B./*@>27bd9*/MHJ9_IN_m;
    break;
  default:
    /*@>24168*/VCU_B./*@>27bc4*/MHJ9_IN/*@>7442*/ = /*@>2416e*/VCU_B./*@>27bc7*/MHJ9_IN_e;
    break;
}
/*@>744b*/switch (/*@>241e6*/VCU_B./*@>27c03*/DataTypeConversion_cg) {
  case /*@>1f675*/1:
    /*@>24210*/VCU_B./*@>27c18*/MHJ9_OUT/*@>744f*/ = /*@>24216*/VCU_B./*@>27c1b*/MHJ9_OUT_d;
    break;
  case /*@>1f676*/2:
    /*@>2421c*/VCU_B./*@>27c1e*/MHJ9_OUT/*@>7451*/ = /*@>24222*/VCU_B./*@>27c21*/MHJ9_OUT_k;
    break;
  case /*@>1f677*/3:
    /*@>24228*/VCU_B./*@>27c24*/MHJ9_OUT/*@>7453*/ = /*@>2422e*/VCU_B./*@>27c27*/MHJ9_OUT_p;
    break;
  default:
    /*@>24204*/VCU_B./*@>27c12*/MHJ9_OUT/*@>744d*/ = /*@>2420a*/VCU_B./*@>27c15*/MHJ9_OUT_d;
    break;
}
/*@>7456*/switch (/*@>2426a*/VCU_B./*@>27c45*/DataTypeConversion_cg) {
  case /*@>1f68a*/1:
    /*@>242a0*/VCU_B./*@>27c60*/x_clutch_LC/*@>745a*/ = /*@>242a6*/VCU_B./*@>27c63*/x_clutch_LC_b;
    break;
  case /*@>1f68b*/2:
    /*@>242ac*/VCU_B./*@>27c66*/x_clutch_LC/*@>745c*/ = /*@>242b2*/VCU_B./*@>27c69*/x_clutch_LC_i;
    break;
  case /*@>1f68c*/3:
    /*@>242b8*/VCU_B./*@>27c6c*/x_clutch_LC/*@>745e*/ = /*@>242be*/VCU_B./*@>27c6f*/x_clutch_LC_n;
    break;
  default:
    /*@>24294*/VCU_B./*@>27c5a*/x_clutch_LC/*@>7458*/ = /*@>2429a*/VCU_B./*@>27c5d*/x_clutch_LC_b;
    break;
}
/*@>7461*/switch (/*@>242e2*/VCU_B./*@>27c81*/DataTypeConversion_cg) {
  case /*@>1f69f*/1:
    /*@>2430c*/VCU_B./*@>27c96*/LC_Mdes/*@>7465*/ = /*@>24312*/VCU_B./*@>27c99*/LC_Mdes_b;
    break;
  case /*@>1f6a0*/2:
    /*@>24318*/VCU_B./*@>27c9c*/LC_Mdes/*@>7467*/ = /*@>2431e*/VCU_B./*@>27c9f*/LC_Mdes_f;
    break;
  case /*@>1f6a1*/3:
    /*@>24324*/VCU_B./*@>27ca2*/LC_Mdes/*@>7469*/ = /*@>2432a*/VCU_B./*@>27ca5*/LC_Mdes_bl;
    break;
  default:
    /*@>24300*/VCU_B./*@>27c90*/LC_Mdes/*@>7463*/ = /*@>24306*/VCU_B./*@>27c93*/LC_Mdes_b;
    break;
}
/* End of MultiPortSwitch: '<S7>/Multiport Switch' */

/* MultiPortSwitch: '<S7>/Multiport Switch1' */
/*@>1d5ba*/if (/*@>24360*/VCU_B./*@>27cc0*/DataTypeConversion_cg/*@>1d5b9*/ == /*@>1fcc0*/1) {
    /*@>24384*/VCU_B./*@>27cd2*/LC_active_bit/*@>7470*/ = /*@>2438a*/VCU_B./*@>27cd5*/LogicalOperator_a;
    /*@>243ae*/VCU_B./*@>27ce7*/LC_ready_bit/*@>7477*/ = /*@>243b4*/VCU_B./*@>27cea*/RelationalOperator_l;
} else {
    /*@>2437e*/VCU_B./*@>27ccf*/LC_active_bit/*@>746e*/ = /*@>24d6f*/VCU_ConstB./*@>281c4*/LC_active_bit;
    /*@>243a8*/VCU_B./*@>27ce4*/LC_ready_bit/*@>7475*/ = /*@>24d75*/VCU_ConstB./*@>281c7*/LC_ready_bit;
}
/* End of MultiPortSwitch: '<S7>/Multiport Switch1' */





      
  


        
    
      
          }
    
  



                








  


  


  


  

