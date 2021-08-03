/* 
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * 
 * File: Subsystem_Transmission.c
 *  
 * Code generated for Simulink model : VCU.
 * Model version      : 1.313
 * Simulink Coder version    : 8.14 (R2018a) 06-Feb-2018
 * TLC version       : 8.14 (Feb 22 2018)
 * C/C++ source code generated on  : Sun Jul 25 17:15:57 2021
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
/* InitializeConditions for S-Function (sdspcount2): '<S146>/Counter1' */
/*@>26872*/VCU_DW./*@>28319*/Counter1_Count_k/*@>7433*/ = /*@>282ec*/0U;
/* InitializeConditions for S-Function (sdspcount2): '<S145>/Counter' */
/*@>26878*/VCU_DW./*@>2831c*/Counter_Count_m/*@>743f*/ = /*@>282ef*/0U;
/* InitializeConditions for S-Function (sdspcount2): '<S146>/Counter' */
/*@>2687e*/VCU_DW./*@>2831f*/Counter_Count_a/*@>744b*/ = /*@>282f2*/0U;
/* End of SystemInitialize for SubSystem: '<S7>/LC_jr19' */

/* SystemInitialize for Enabled SubSystem: '<S7>/semi_auto_jr18' */
/* InitializeConditions for S-Function (sdspcount2): '<S201>/Counter1' */
/*@>26884*/VCU_DW./*@>28322*/Counter1_Count/*@>7457*/ = /*@>282f5*/0U;
/* InitializeConditions for S-Function (sdspcount2): '<S200>/Counter' */
/*@>2688a*/VCU_DW./*@>28325*/Counter_Count/*@>7463*/ = /*@>282f8*/0U;
/* InitializeConditions for S-Function (sdspcount2): '<S201>/Counter' */
/*@>26890*/VCU_DW./*@>28328*/Counter_Count_i/*@>746f*/ = /*@>282fb*/0U;
/* End of SystemInitialize for SubSystem: '<S7>/semi_auto_jr18' */




    
  



          }
    
  



       
    
  

          /* Output and update for atomic system: '<Root>/Transmission' */
      
              
  
        void FUNC_Transmission(void)
  {
  
                      
      
int32_T rowIdx;
boolean_T tmp;
real_T tmp_0;

      
      
  



                          
      
  



                                /* DataTypeConversion: '<S7>/Data Type Conversion' */
/*@>21cf8*/tmp_0/*@>21cfa*/ = /*@>2422b*/floor(/*@>2560d*/VCU_B./*@>2939a*/STW_transmission_mode);
/*@>21d18*/if (/*@>2422d*/rtIsNaN(/*@>21cfc*/tmp_0)/*@>21d06*/ || /*@>2422f*/rtIsInf(/*@>21d01*/tmp_0)) {
    /*@>21d09*/tmp_0/*@>21d0b*/ = /*@>21d08*/0.0;
} else {
    /*@>21d14*/tmp_0/*@>21d16*/ = /*@>24231*/fmod(/*@>21d0d*/tmp_0, /*@>21d11*/256.0);
}
/*@>25613*/VCU_B./*@>2939d*/DataTypeConversion_cg/*@>747c*/ = /*@>21e96*/(int8_T)(/*@>21d1f*/tmp_0/*@>21d22*/ < /*@>21d1e*/0.0/*@>21d22*/ ? (int32_T)/*@>21d34*/(int8_T)-/*@<21d33*//*@>21d28*/(int8_T)/*@>21d36*/(uint8_T)-/*@<21d26*//*@>21d23*/tmp_0 : (int32_T)/*@>21d2e*/(int8_T)/*@>21d39*/(uint8_T)/*@>21d2a*/tmp_0);
/* End of DataTypeConversion: '<S7>/Data Type Conversion' */

/* RelationalOperator: '<S136>/Compare' incorporates:
 *  Constant: '<S136>/Constant'
 */
/*@>25619*/VCU_B./*@>293a0*/Compare/*@>7480*/ = (/*@>2561f*/VCU_B./*@>293a3*/DataTypeConversion_cg/*@>747f*/ == /*@>21760*/3);
/* Outputs for Enabled SubSystem: '<S7>/LC_jr19' incorporates:
 *  EnablePort: '<S137>/Enable'
 */
/*@>7482*/if (/*@>25625*/VCU_B./*@>293a6*/Compare) {
    /* Memory: '<S148>/Memory' */
    /*@>2562b*/VCU_B./*@>293a9*/Memory_dj/*@>761d*/ = /*@>26896*/VCU_DW./*@>29c58*/Memory_PreviousInput_g;
    /* CombinatorialLogic: '<S190>/Logic' incorporates:
 *  RelationalOperator: '<S148>/GreaterThan'
 */
    /*@>2563d*/VCU_B./*@>293b2*/GreaterThan_l/*@>7621*/ = (/*@>21ea4*/(int32_T)/*@>25643*/VCU_B./*@>293b5*/LC_dash_bit/*@>7620*/ > /*@>21ea6*/(int32_T)/*@>25649*/VCU_B./*@>293b8*/Memory_dj);
    /* Logic: '<S148>/Logical Operator2' */
    /*@>2565b*/VCU_B./*@>293c1*/LogicalOperator2_m/*@>7625*/ = !/*@<7624*//*@>25661*/VCU_B./*@>293c4*/LC_dash_bit;
    /* Memory: '<S148>/Memory1' */
    /*@>25679*/VCU_B./*@>293d0*/Memory1_a/*@>7627*/ = /*@>2689c*/VCU_DW./*@>29c5b*/Memory1_PreviousInput_p;
    /* RelationalOperator: '<S148>/Relational Operator' incorporates:
 *  Constant: '<S148>/Constant'
 */
    /*@>25685*/VCU_B./*@>293d6*/RelationalOperator_k/*@>762b*/ = (/*@>2568b*/VCU_B./*@>293d9*/Sensitivity1538mVbar/*@>762a*/ > /*@>21763*/3.0);
    /* RelationalOperator: '<S148>/Relational Operator1' incorporates:
 *  Constant: '<S148>/Constant'
 */
    /*@>25697*/VCU_B./*@>293df*/RelationalOperator1_d/*@>762f*/ = (/*@>21764*/3.0/*@>762e*/ < /*@>2569d*/VCU_B./*@>293e2*/Add1_m);
    /* Logic: '<S148>/Logical Operator' */
    /*@>256c1*/VCU_B./*@>293f4*/Brakelight_n/*@>7635*/ = (/*@>256c7*/VCU_B./*@>293f7*/RelationalOperator_k/*@>7634*/ || /*@>256cd*/VCU_B./*@>293fa*/RelationalOperator1_d);
    /* RelationalOperator: '<S148>/GreaterThan1' */
    /*@>256e5*/VCU_B./*@>29406*/GreaterThan1_d/*@>7639*/ = (/*@>21eca*/(int32_T)/*@>256eb*/VCU_B./*@>29409*/Memory1_a/*@>7638*/ > /*@>21ecc*/(int32_T)/*@>256f1*/VCU_B./*@>2940c*/Brakelight_n);
    /* CombinatorialLogic: '<S190>/Logic' incorporates:
 *  Logic: '<S148>/Logical Operator1'
 *  Memory: '<S190>/Memory'
 */
    /*@>25703*/VCU_B./*@>29415*/LogicalOperator1_o/*@>763f*/ = (/*@>25709*/VCU_B./*@>29418*/LogicalOperator2_m/*@>763e*/ || /*@>2570f*/VCU_B./*@>2941b*/GreaterThan1_d);
    /*@>25739*/VCU_B./*@>29430*/Memory_aw/*@>7641*/ = /*@>268ae*/VCU_DW./*@>29c64*/Memory_PreviousInput_gi;
    /*@>217f2*/rowIdx/*@>1ed0c*/ = /*@>2577b*/VCU_B./*@>29451*/GreaterThan_l;
    /*@>217f6*/rowIdx/*@>1ed33*/ = /*@>21f10*/(int32_T)((/*@>21f0d*/(uint32_T)/*@>217f8*/rowIdx/*@>21cf0*/ << /*@>217fa*/1)/*@>21cee*/ + /*@>2579f*/VCU_B./*@>29463*/LogicalOperator1_o);
    /*@>217fd*/rowIdx/*@>1ed5a*/ = /*@>21f23*/(int32_T)((/*@>21f20*/(uint32_T)/*@>217ff*/rowIdx/*@>21ce6*/ << /*@>21801*/1)/*@>21ce4*/ + /*@>257c9*/VCU_B./*@>29478*/Memory_aw);
    /*@>25823*/VCU_B./*@>294a5*/Logic_b/*@>1ed70*/[/*@>21806*/0U]/*@>1ed6f*/ = /*@>26720*/VCU_ConstP./*@>29bf8*/pooled37/*@>24e70*/[/*@>24e6b*/(uint32_T)/*@>24e6d*/rowIdx];
    /*@>2583b*/VCU_B./*@>294b1*/Logic_b/*@>1ed83*/[/*@>2180b*/1U]/*@>1ed82*/ = /*@>26726*/VCU_ConstP./*@>29bfb*/pooled37/*@>24e79*/[/*@>24e75*/rowIdx/*@>24e72*/ + /*@>24e76*/8U];
    /* Logic: '<S148>/Logical Operator3' */
    /*@>25859*/VCU_B./*@>294c0*/LogicalOperator3_f/*@>7648*/ = (/*@>2585f*/VCU_B./*@>294c3*/Logic_b/*@>24e7e*/[/*@>24e7b*/0]/*@>7647*/ && /*@>25865*/VCU_B./*@>294c6*/Brakelight_n);
    /* DataTypeConversion: '<S137>/Data Type Conversion10' */
    /*@>258b3*/VCU_B./*@>294ed*/LC_active_bit_a/*@>764b*/ = /*@>258b9*/VCU_B./*@>294f0*/LogicalOperator3_f;
    /* CombinatorialLogic: '<S175>/Logic' incorporates:
 *  Delay: '<S145>/Delay'
 *  Memory: '<S175>/Memory'
 *  UnitDelay: '<S145>/Unit Delay1'
 */
    /*@>258d1*/VCU_B./*@>294fc*/UnitDelay1_o/*@>7d6b*/ = /*@>268ba*/VCU_DW./*@>29c6a*/UnitDelay1_DSTATE_p;
    /*@>258e9*/VCU_B./*@>29508*/Delay_e/*@>7d79*/ = /*@>268c0*/VCU_DW./*@>29c6d*/Delay_DSTATE_j/*@>24e8a*/[/*@>24e87*/0];
    /*@>25931*/VCU_B./*@>2952c*/Memory_lj/*@>764f*/ = /*@>268c6*/VCU_DW./*@>29c70*/Memory_PreviousInput_pa;
    /*@>2182a*/rowIdx/*@>1ee5a*/ = /*@>25949*/VCU_B./*@>29538*/UnitDelay1_o;
    /*@>2182e*/rowIdx/*@>1ee81*/ = /*@>21fab*/(int32_T)((/*@>21fa8*/(uint32_T)/*@>21830*/rowIdx/*@>21cdb*/ << /*@>21832*/1)/*@>21cd9*/ + /*@>25973*/VCU_B./*@>2954d*/Delay_e);
    /*@>21835*/rowIdx/*@>1eea8*/ = /*@>21fc6*/(int32_T)((/*@>21fc3*/(uint32_T)/*@>21837*/rowIdx/*@>21cd1*/ << /*@>21839*/1)/*@>21ccf*/ + /*@>259bb*/VCU_B./*@>29571*/Memory_lj);
    /*@>259d3*/VCU_B./*@>2957d*/Logic_g/*@>1eebe*/[/*@>2183e*/0U]/*@>1eebd*/ = /*@>26744*/VCU_ConstP./*@>29c0a*/pooled37/*@>24ea4*/[/*@>24e9f*/(uint32_T)/*@>24ea1*/rowIdx];
    /*@>259f7*/VCU_B./*@>2958f*/Logic_g/*@>1eed1*/[/*@>21843*/1U]/*@>1eed0*/ = /*@>2674a*/VCU_ConstP./*@>29c0d*/pooled37/*@>24ead*/[/*@>24ea9*/rowIdx/*@>24ea6*/ + /*@>24eaa*/8U];
    /* DataTypeConversion: '<S137>/Data Type Conversion11' */
    /*@>25a3f*/VCU_B./*@>295b3*/VOVG_ShiftDown_a/*@>7653*/ = /*@>25a45*/VCU_B./*@>295b6*/Logic_g/*@>24eb2*/[/*@>24eaf*/0];
    /* UnitDelay: '<S172>/Delay Input1'
 *
 * Block description for '<S172>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>25a5d*/VCU_B./*@>295c2*/Uk1_o/*@>7dd5*/ = /*@>268de*/VCU_DW./*@>29c7c*/DelayInput1_DSTATE_j;
    /* CombinatorialLogic: '<S173>/Logic' incorporates:
 *  Delay: '<S145>/Delay1'
 *  Memory: '<S173>/Memory'
 *  RelationalOperator: '<S172>/FixPt Relational Operator'
 */
    /*@>25a7b*/VCU_B./*@>295d1*/FixPtRelationalOperator_p/*@>7658*/ = (/*@>25a81*/VCU_B./*@>295d4*/STW_shift_down_request/*@>7657*/ > /*@>25a87*/VCU_B./*@>295d7*/Uk1_o);
    /*@>25acf*/VCU_B./*@>295fb*/Delay1_p/*@>7de1*/ = /*@>268e4*/VCU_DW./*@>29c7f*/Delay1_DSTATE_p;
    /*@>25aed*/VCU_B./*@>2960a*/Memory_i/*@>765b*/ = /*@>268ea*/VCU_DW./*@>29c82*/Memory_PreviousInput_c;
    /*@>21862*/rowIdx/*@>1efa8*/ = /*@>25b11*/VCU_B./*@>2961c*/FixPtRelationalOperator_p;
    /*@>21866*/rowIdx/*@>1efcf*/ = /*@>22048*/(int32_T)((/*@>22045*/(uint32_T)/*@>21868*/rowIdx/*@>21cc6*/ << /*@>2186a*/1)/*@>21cc4*/ + /*@>25b59*/VCU_B./*@>29640*/Delay1_p);
    /*@>2186d*/rowIdx/*@>1eff6*/ = /*@>2205c*/(int32_T)((/*@>22059*/(uint32_T)/*@>2186f*/rowIdx/*@>21cbc*/ << /*@>21871*/1)/*@>21cba*/ + /*@>25b83*/VCU_B./*@>29655*/Memory_i);
    /*@>25ba1*/VCU_B./*@>29664*/Logic_c/*@>1f00c*/[/*@>21876*/0U]/*@>1f00b*/ = /*@>2675c*/VCU_ConstP./*@>29c16*/pooled37/*@>24ece*/[/*@>24ec9*/(uint32_T)/*@>24ecb*/rowIdx];
    /*@>25be3*/VCU_B./*@>29685*/Logic_c/*@>1f01f*/[/*@>2187b*/1U]/*@>1f01e*/ = /*@>26762*/VCU_ConstP./*@>29c19*/pooled37/*@>24ed7*/[/*@>24ed3*/rowIdx/*@>24ed0*/ + /*@>24ed4*/8U];
    /* UnitDelay: '<S145>/Unit Delay4' */
    /*@>25bf5*/VCU_B./*@>2968e*/UnitDelay4_h/*@>7e3d*/ = /*@>26902*/VCU_DW./*@>29c8e*/UnitDelay4_DSTATE_e;
    /* Gain: '<S176>/Gain' */
    /*@>25c0d*/VCU_B./*@>2969a*/Gain_i/*@>7665*/ = /*@>21777*/2.0/*@>21cb2*/ * /*@>25c13*/VCU_B./*@>2969d*/DataTypeConversion1;
    /* RelationalOperator: '<S176>/Relational Operator' incorporates:
 *  Constant: '<S176>/Constant'
 */
    /*@>25c55*/VCU_B./*@>296be*/RelationalOperator_a/*@>7669*/ = (/*@>25c5b*/VCU_B./*@>296c1*/Gain_i/*@>7668*/ > /*@>21778*/169.0);
    /* RelationalOperator: '<S176>/Relational Operator1' incorporates:
 *  Constant: '<S176>/Constant1'
 */
    /*@>25c67*/VCU_B./*@>296c7*/RelationalOperator1_g/*@>766d*/ = (/*@>25c6d*/VCU_B./*@>296ca*/Gain_i/*@>766c*/ > /*@>21779*/228.0);
    /* RelationalOperator: '<S176>/Relational Operator2' incorporates:
 *  Constant: '<S176>/Constant2'
 */
    /*@>25c7f*/VCU_B./*@>296d3*/RelationalOperator2_e/*@>7671*/ = (/*@>25c85*/VCU_B./*@>296d6*/Gain_i/*@>7670*/ > /*@>2177a*/325.0);
    /* Sum: '<S176>/Add' */
    /*@>25cbb*/VCU_B./*@>296f1*/Add_fn/*@>a801*/ = /*@>220a2*/(uint8_T)((/*@>2209c*/(uint32_T)/*@>25cc1*/VCU_B./*@>296f4*/RelationalOperator_a/*@>21ca2*/ + /*@>25cc7*/VCU_B./*@>296f7*/RelationalOperator1_g)/*@>21c95*/ + /*@>25ccd*/VCU_B./*@>296fa*/RelationalOperator2_e);
    /* RelationalOperator: '<S166>/Compare' incorporates:
 *  Constant: '<S166>/Constant'
 */
    /*@>25cdf*/VCU_B./*@>29703*/Compare_j1/*@>767b*/ = (/*@>25ce5*/VCU_B./*@>29706*/x_clutch_STW/*@>767a*/ >= /*@>2177c*/15.0);
    /* Switch: '<S145>/Switch' incorporates:
 *  Constant: '<S145>/Constant'
 *  Constant: '<S145>/Constant1'
 */
    /*@>1ec77*/if (/*@>25cfd*/VCU_B./*@>29712*/Compare_j1) {
        /*@>25d3f*/VCU_B./*@>29733*/Switch_m/*@>1ec7a*/ = /*@>2177e*/1.0;
    } else {
        /*@>25d39*/VCU_B./*@>29730*/Switch_m/*@>7e4d*/ = /*@>2177f*/2.0;
    }
    /* End of Switch: '<S145>/Switch' */

    /* RelationalOperator: '<S145>/Relational Operator' */
    /*@>25d69*/VCU_B./*@>29748*/LessthanNeutral_j/*@>7680*/ = (/*@>25d6f*/VCU_B./*@>2974b*/Add_fn/*@>21c8b*/ < /*@>25d75*/VCU_B./*@>2974e*/Switch_m);
    /* UnitDelay: '<S146>/Unit Delay' */
    /*@>25d87*/VCU_B./*@>29757*/UnitDelay_b/*@>7e5e*/ = /*@>2690e*/VCU_DW./*@>29c94*/UnitDelay_DSTATE_g;
    /* UnitDelay: '<S145>/Unit Delay2' */
    /*@>25d93*/VCU_B./*@>2975d*/Timeout_p/*@>7e6a*/ = /*@>26914*/VCU_DW./*@>29c97*/UnitDelay2_DSTATE_k;
    /* RelationalOperator: '<S167>/Compare' incorporates:
 *  Constant: '<S167>/Constant'
 */
    /*@>25da5*/VCU_B./*@>29766*/Compare_jn/*@>7686*/ = (/*@>25dab*/VCU_B./*@>29769*/DataTypeConversion2/*@>7685*/ > /*@>21783*/5000.0);
    /* RelationalOperator: '<S168>/Compare' incorporates:
 *  Constant: '<S168>/Constant'
 */
    /*@>25db1*/VCU_B./*@>2976c*/Compare_lh/*@>768a*/ = (/*@>25db7*/VCU_B./*@>2976f*/Add_fn/*@>7689*/ == /*@>21786*/2);
    /* Logic: '<S145>/Logical Operator1' */
    /*@>25dcf*/VCU_B./*@>2977b*/RPMcheckgear21_f/*@>7690*/ = (/*@>25dd5*/VCU_B./*@>2977e*/Compare_lh/*@>768f*/ && /*@>25ddb*/VCU_B./*@>29781*/Compare_jn);
    /* RelationalOperator: '<S169>/Compare' incorporates:
 *  Constant: '<S169>/Constant'
 */
    /*@>25de7*/VCU_B./*@>29787*/Compare_gw/*@>7694*/ = (/*@>25ded*/VCU_B./*@>2978a*/DataTypeConversion2/*@>7693*/ > /*@>21787*/5300.0);
    /* RelationalOperator: '<S170>/Compare' incorporates:
 *  Constant: '<S170>/Constant'
 */
    /*@>25df9*/VCU_B./*@>29790*/Compare_aq/*@>7698*/ = (/*@>25dff*/VCU_B./*@>29793*/Add_fn/*@>7697*/ == /*@>21788*/3);
    /* Logic: '<S145>/Logical Operator2' */
    /*@>25e11*/VCU_B./*@>2979c*/RPMcheckgear31_d/*@>769e*/ = (/*@>25e17*/VCU_B./*@>2979f*/Compare_gw/*@>769d*/ && /*@>25e1d*/VCU_B./*@>297a2*/Compare_aq);
    /* CombinatorialLogic: '<S174>/Logic' incorporates:
 *  Logic: '<S145>/Logical Operator'
 *  Memory: '<S174>/Memory'
 */
    /*@>25e2f*/VCU_B./*@>297ab*/LogicalOperator_n/*@>76b0*/ = (/*@>25e35*/VCU_B./*@>297ae*/UnitDelay4_h/*@>76a3*/ || /*@>25e3b*/VCU_B./*@>297b1*/LessthanNeutral_j/*@>76a6*/ || /*@>25e41*/VCU_B./*@>297b4*/UnitDelay_b/*@>76a9*/ || /*@>25e47*/VCU_B./*@>297b7*/Timeout_p/*@>76ac*/ || /*@>25e4d*/VCU_B./*@>297ba*/RPMcheckgear21_f/*@>76af*/ || /*@>25e53*/VCU_B./*@>297bd*/RPMcheckgear31_d);
    /*@>25e6b*/VCU_B./*@>297c9*/Memory_c5/*@>76b2*/ = /*@>26926*/VCU_DW./*@>29ca0*/Memory_PreviousInput_jz;
    /*@>219b9*/tmp/*@>1f0e1*/ = /*@>25e7d*/VCU_B./*@>297d2*/Logic_c/*@>24eec*/[/*@>24ee9*/0];
    /*@>2189b*/rowIdx/*@>1f0f8*/ = /*@>219bb*/tmp;
    /*@>2189f*/rowIdx/*@>1f121*/ = /*@>2210e*/(int32_T)((/*@>2210b*/(uint32_T)/*@>218a1*/rowIdx/*@>21c85*/ << /*@>218a3*/1)/*@>21c83*/ + /*@>25ea1*/VCU_B./*@>297e4*/LogicalOperator_n);
    /*@>218a6*/rowIdx/*@>1f14a*/ = /*@>2211a*/(int32_T)((/*@>22117*/(uint32_T)/*@>218a8*/rowIdx/*@>21c7b*/ << /*@>218aa*/1)/*@>21c79*/ + /*@>25ed1*/VCU_B./*@>297fc*/Memory_c5);
    /*@>25edd*/VCU_B./*@>29802*/Logic_j/*@>1f160*/[/*@>218af*/0U]/*@>1f15f*/ = /*@>26774*/VCU_ConstP./*@>29c22*/pooled37/*@>24ef3*/[/*@>24eee*/(uint32_T)/*@>24ef0*/rowIdx];
    /*@>25ee9*/VCU_B./*@>29808*/Logic_j/*@>1f173*/[/*@>218b4*/1U]/*@>1f172*/ = /*@>2677a*/VCU_ConstP./*@>29c25*/pooled37/*@>24f01*/[/*@>24efd*/rowIdx/*@>24efa*/ + /*@>24efe*/8U];
    /* Sum: '<S186>/Add' */
    /*@>25eef*/VCU_B./*@>2980b*/Add_b/*@>a806*/ = /*@>25ef5*/VCU_B./*@>2980e*/Add1_k/*@>a803*/ + /*@>25efb*/VCU_B./*@>29811*/Add1_de;
    /* Gain: '<S186>/Gain' */
    /*@>25f07*/VCU_B./*@>29817*/v_Veh/*@>76c0*/ = /*@>2178d*/0.5/*@>21c71*/ * /*@>25f0d*/VCU_B./*@>2981a*/Add_b;
    /* RelationalOperator: '<S186>/Relational Operator' incorporates:
 *  Constant: '<S186>/Const_vVeh_Threshold'
 */
    /*@>25f19*/VCU_B./*@>29820*/RelationalOperator_h/*@>76c4*/ = (/*@>25f1f*/VCU_B./*@>29823*/v_Veh/*@>76c3*/ > /*@>2178e*/15.0);
    /* Gain: '<S185>/Gain' */
    /*@>25f2b*/VCU_B./*@>29829*/Gain_a/*@>76cc*/ = /*@>2178f*/2.0/*@>21c6d*/ * /*@>25f31*/VCU_B./*@>2982c*/DataTypeConversion1;
    /* RelationalOperator: '<S185>/Relational Operator' incorporates:
 *  Constant: '<S185>/Constant'
 */
    /*@>25f3d*/VCU_B./*@>29832*/RelationalOperator_p/*@>76d0*/ = (/*@>25f43*/VCU_B./*@>29835*/Gain_a/*@>76cf*/ > /*@>21790*/169.0);
    /* RelationalOperator: '<S185>/Relational Operator1' incorporates:
 *  Constant: '<S185>/Constant1'
 */
    /*@>25f4f*/VCU_B./*@>2983b*/RelationalOperator1_l/*@>76d4*/ = (/*@>25f55*/VCU_B./*@>2983e*/Gain_a/*@>76d3*/ > /*@>21791*/269.0);
    /* RelationalOperator: '<S185>/Relational Operator2' incorporates:
 *  Constant: '<S185>/Constant2'
 */
    /*@>25f6d*/VCU_B./*@>2984a*/RelationalOperator2_l/*@>76d8*/ = (/*@>25f73*/VCU_B./*@>2984d*/Gain_a/*@>76d7*/ > /*@>21792*/360.0);
    /* Sum: '<S185>/Add' */
    /*@>25f85*/VCU_B./*@>29856*/Add_ax/*@>a80f*/ = /*@>22160*/(uint8_T)((/*@>2215a*/(uint32_T)/*@>25f8b*/VCU_B./*@>29859*/RelationalOperator_p/*@>21c5d*/ + /*@>25f91*/VCU_B./*@>2985c*/RelationalOperator1_l)/*@>21c50*/ + /*@>25f97*/VCU_B./*@>2985f*/RelationalOperator2_l);
    /* RelationalOperator: '<S187>/Compare' incorporates:
 *  Constant: '<S187>/Constant'
 */
    /*@>25fa9*/VCU_B./*@>29868*/Compare_k/*@>76e2*/ = (/*@>25faf*/VCU_B./*@>2986b*/Add_ax/*@>76e1*/ == /*@>21795*/2);
    /* Logic: '<S186>/Logical Operator3' */
    /*@>25fc1*/VCU_B./*@>29874*/LogicalOperator3_n/*@>76e8*/ = (/*@>25fc7*/VCU_B./*@>29877*/RelationalOperator_h/*@>76e7*/ && /*@>25fcd*/VCU_B./*@>2987a*/Compare_k);
    /* UnitDelay: '<S188>/Delay Input1'
 *
 * Block description for '<S188>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>25fdf*/VCU_B./*@>29883*/Uk1_ii/*@>7ec6*/ = /*@>26938*/VCU_DW./*@>29ca9*/DelayInput1_DSTATE_m5;
    /* CombinatorialLogic: '<S189>/Logic' incorporates:
 *  RelationalOperator: '<S188>/FixPt Relational Operator'
 */
    /*@>25ffd*/VCU_B./*@>29892*/FixPtRelationalOperator_dz/*@>76ed*/ = (/*@>2217b*/(int32_T)/*@>26003*/VCU_B./*@>29895*/LogicalOperator3_n/*@>76ec*/ > /*@>2217d*/(int32_T)/*@>26009*/VCU_B./*@>29898*/Uk1_ii);
    /* Logic: '<S186>/Logical Operator' */
    /*@>26015*/VCU_B./*@>2989e*/LogicalOperator_g/*@>76f1*/ = !/*@<76f0*//*@>2601b*/VCU_B./*@>298a1*/Compare_k;
    /* UnitDelay: '<S181>/Delay Input1'
 *
 * Block description for '<S181>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>26033*/VCU_B./*@>298ad*/Uk1_p/*@>7ed2*/ = /*@>26944*/VCU_DW./*@>29caf*/DelayInput1_DSTATE_m;
    /* RelationalOperator: '<S181>/FixPt Relational Operator' */
    /*@>26045*/VCU_B./*@>298b6*/FixPtRelationalOperator_j/*@>76f6*/ = (/*@>2604b*/VCU_B./*@>298b9*/Add_ax/*@>76f5*/ > /*@>26051*/VCU_B./*@>298bc*/Uk1_p);
    /* RelationalOperator: '<S177>/Compare' incorporates:
 *  Constant: '<S177>/Constant'
 */
    /*@>2605d*/VCU_B./*@>298c2*/Compare_j0/*@>76fa*/ = (/*@>26063*/VCU_B./*@>298c5*/Add_ax/*@>76f9*/ >= /*@>21799*/3);
    /* UnitDelay: '<S145>/Unit Delay' */
    /*@>2606f*/VCU_B./*@>298cb*/UnitDelay_g/*@>7ede*/ = /*@>26956*/VCU_DW./*@>29cb8*/UnitDelay_DSTATE_n;
    /* UnitDelay: '<S146>/Unit Delay1' */
    /*@>26081*/VCU_B./*@>298d4*/Timeout_px/*@>7eea*/ = /*@>2695c*/VCU_DW./*@>29cbb*/UnitDelay1_DSTATE_l;
    /* RelationalOperator: '<S179>/Compare' incorporates:
 *  Constant: '<S179>/Constant'
 */
    /*@>26093*/VCU_B./*@>298dd*/Compare_d/*@>7700*/ = (/*@>26099*/VCU_B./*@>298e0*/Add_ax/*@>76ff*/ == /*@>2179c*/0);
    /* RelationalOperator: '<S178>/Compare' incorporates:
 *  Constant: '<S178>/Constant'
 */
    /*@>260b1*/VCU_B./*@>298ec*/Compare_i/*@>7704*/ = (/*@>260b7*/VCU_B./*@>298ef*/x_clutch_STW/*@>7703*/ < /*@>2179d*/15.0);
    /* Logic: '<S146>/Logical Operator1' */
    /*@>260e1*/VCU_B./*@>29904*/FailSafefirstgear_n/*@>770a*/ = (/*@>260e7*/VCU_B./*@>29907*/Compare_d/*@>7709*/ && /*@>260ed*/VCU_B./*@>2990a*/Compare_i);
    /* CombinatorialLogic: '<S183>/Logic' incorporates:
 *  Logic: '<S146>/Logical Operator'
 */
    /*@>260f9*/VCU_B./*@>29910*/LogicalOperator_ny/*@>7719*/ = (/*@>260ff*/VCU_B./*@>29913*/FixPtRelationalOperator_j/*@>770f*/ || /*@>26105*/VCU_B./*@>29916*/Compare_j0/*@>7712*/ || /*@>2610b*/VCU_B./*@>29919*/UnitDelay_g/*@>7715*/ || /*@>26111*/VCU_B./*@>2991c*/Timeout_px/*@>7718*/ || /*@>26117*/VCU_B./*@>2991f*/FailSafefirstgear_n);
    /* CombinatorialLogic: '<S189>/Logic' incorporates:
 *  Logic: '<S186>/Logical Operator1'
 *  Memory: '<S189>/Memory'
 */
    /*@>26123*/VCU_B./*@>29925*/LogicalOperator1_b/*@>7722*/ = (/*@>26129*/VCU_B./*@>29928*/LogicalOperator_g/*@>771e*/ || (/*@>2612f*/VCU_B./*@>2992b*/STW_shift_up_request/*@>21c49*/ != /*@>21c47*/0.0)/*@>7721*/ || /*@>26135*/VCU_B./*@>2992e*/LogicalOperator_ny);
    /*@>26141*/VCU_B./*@>29934*/Memory_p/*@>7724*/ = /*@>26968*/VCU_DW./*@>29cc1*/Memory_PreviousInput_n;
    /*@>218f0*/rowIdx/*@>1f2f7*/ = /*@>2614d*/VCU_B./*@>2993a*/FixPtRelationalOperator_dz;
    /*@>218f4*/rowIdx/*@>1f31e*/ = /*@>221e5*/(int32_T)((/*@>221e2*/(uint32_T)/*@>218f6*/rowIdx/*@>21c43*/ << /*@>218f8*/1)/*@>21c41*/ + /*@>26159*/VCU_B./*@>29940*/LogicalOperator1_b);
    /*@>218fb*/rowIdx/*@>1f345*/ = /*@>221f7*/(int32_T)((/*@>221f4*/(uint32_T)/*@>218fd*/rowIdx/*@>21c39*/ << /*@>218ff*/1)/*@>21c37*/ + /*@>26165*/VCU_B./*@>29946*/Memory_p);
    /*@>26171*/VCU_B./*@>2994c*/Logic_gy/*@>1f35b*/[/*@>21904*/0U]/*@>1f35a*/ = /*@>26798*/VCU_ConstP./*@>29c34*/pooled37/*@>24f28*/[/*@>24f23*/(uint32_T)/*@>24f25*/rowIdx];
    /*@>2617d*/VCU_B./*@>29952*/Logic_gy/*@>1f36e*/[/*@>21909*/1U]/*@>1f36d*/ = /*@>2679e*/VCU_ConstP./*@>29c37*/pooled37/*@>24f31*/[/*@>24f2d*/rowIdx/*@>24f2a*/ + /*@>24f2e*/8U];
    /* Logic: '<S146>/Logical Operator3' */
    /*@>26183*/VCU_B./*@>29955*/LogicalOperator3_e/*@>772b*/ = ((/*@>26189*/VCU_B./*@>29958*/STW_shift_up_request/*@>21c30*/ != /*@>21c2e*/0.0)/*@>772a*/ || /*@>2618f*/VCU_B./*@>2995b*/Logic_gy/*@>24f36*/[/*@>24f33*/0]);
    /* UnitDelay: '<S180>/Delay Input1'
 *
 * Block description for '<S180>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>2619b*/VCU_B./*@>29961*/Uk1_d/*@>7f46*/ = /*@>26974*/VCU_DW./*@>29cc7*/DelayInput1_DSTATE_e;
    /* CombinatorialLogic: '<S183>/Logic' incorporates:
 *  Memory: '<S183>/Memory'
 *  RelationalOperator: '<S180>/FixPt Relational Operator'
 */
    /*@>261a1*/VCU_B./*@>29964*/FixPtRelationalOperator_i/*@>7730*/ = (/*@>22214*/(int32_T)/*@>261a7*/VCU_B./*@>29967*/LogicalOperator3_e/*@>772f*/ > /*@>22216*/(int32_T)/*@>261ad*/VCU_B./*@>2996a*/Uk1_d);
    /*@>261b3*/VCU_B./*@>2996d*/Memory_ig/*@>7732*/ = /*@>26998*/VCU_DW./*@>29cd6*/Memory_PreviousInput_e;
    /*@>2190c*/rowIdx/*@>1f39e*/ = /*@>261bf*/VCU_B./*@>29973*/FixPtRelationalOperator_i;
    /*@>21910*/rowIdx/*@>1f3c5*/ = /*@>22241*/(int32_T)((/*@>2223e*/(uint32_T)/*@>21912*/rowIdx/*@>21c2a*/ << /*@>21914*/1)/*@>21c28*/ + /*@>261cb*/VCU_B./*@>29979*/LogicalOperator_ny);
    /*@>21917*/rowIdx/*@>1f3ec*/ = /*@>22251*/(int32_T)((/*@>2224e*/(uint32_T)/*@>21919*/rowIdx/*@>21c20*/ << /*@>2191b*/1)/*@>21c1e*/ + /*@>261e3*/VCU_B./*@>29985*/Memory_ig);
    /*@>261fb*/VCU_B./*@>29991*/Logic_jv/*@>1f402*/[/*@>21920*/0U]/*@>1f401*/ = /*@>267a4*/VCU_ConstP./*@>29c3a*/pooled37/*@>24f42*/[/*@>24f3d*/(uint32_T)/*@>24f3f*/rowIdx];
    /*@>26207*/VCU_B./*@>29997*/Logic_jv/*@>1f415*/[/*@>21925*/1U]/*@>1f414*/ = /*@>267aa*/VCU_ConstP./*@>29c3d*/pooled37/*@>24f4b*/[/*@>24f47*/rowIdx/*@>24f44*/ + /*@>24f48*/8U];
    /* CombinatorialLogic: '<S184>/Logic' incorporates:
 *  S-Function (sdspcount2): '<S146>/Counter1'
 */
    /*@>26213*/VCU_B./*@>2999d*/Counter1_p/*@>7fa4*/ = /*@>21552*/false;
    /* S-Function (sdspcount2): '<S146>/Counter1' */
    /*@>7fa8*/if (/*@>2621f*/VCU_B./*@>299a3*/LogicalOperator_ny) {
        /*@>269aa*/VCU_DW./*@>29cdf*/Counter1_Count_k/*@>7fac*/ = /*@>28407*/0U;
    }
    /*@>7fc2*/if (/*@>26231*/VCU_B./*@>299ac*/Logic_jv/*@>24f57*/[/*@>24f54*/0]) {
        /*@>1ec86*/if (/*@>269b0*/VCU_DW./*@>29ce2*/Counter1_Count_k/*@>7fc7*/ < /*@>217a3*/60) {
            /*@>269c2*/VCU_DW./*@>29ceb*/Counter1_Count_k/*@>28454*/++;
        } else {
            /*@>269bc*/VCU_DW./*@>29ce8*/Counter1_Count_k/*@>7fce*/ = /*@>2840a*/0U;
        }
    }
    /*@>7fe0*/if (/*@>269b6*/VCU_DW./*@>29ce5*/Counter1_Count_k/*@>7fdf*/ == /*@>217a5*/1) {
        /* CombinatorialLogic: '<S184>/Logic' */
        /*@>2624f*/VCU_B./*@>299bb*/Counter1_p/*@>7fe4*/ = /*@>21561*/true;
    }
    /* UnitDelay: '<S182>/Delay Input1'
 *
 * Block description for '<S182>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>2625b*/VCU_B./*@>299c1*/Uk1_e/*@>8027*/ = /*@>269ce*/VCU_DW./*@>29cee*/DelayInput1_DSTATE_b;
    /* RelationalOperator: '<S182>/FixPt Relational Operator' */
    /*@>26261*/VCU_B./*@>299c4*/FixPtRelationalOperator_ia/*@>7739*/ = (/*@>26267*/VCU_B./*@>299c7*/Add_ax/*@>7738*/ > /*@>2626d*/VCU_B./*@>299ca*/Uk1_e);
    /* CombinatorialLogic: '<S184>/Logic' incorporates:
 *  Logic: '<S146>/Logical Operator2'
 *  Memory: '<S184>/Memory'
 */
    /*@>26279*/VCU_B./*@>299d0*/LogicalOperator2_c/*@>773f*/ = (/*@>2627f*/VCU_B./*@>299d3*/LogicalOperator_ny/*@>773e*/ || /*@>26285*/VCU_B./*@>299d6*/FixPtRelationalOperator_ia);
    /*@>2628b*/VCU_B./*@>299d9*/Memory_py/*@>7741*/ = /*@>269e0*/VCU_DW./*@>29cf7*/Memory_PreviousInput_ez;
    /*@>21944*/rowIdx/*@>1f4ec*/ = /*@>26291*/VCU_B./*@>299dc*/Counter1_p;
    /*@>21948*/rowIdx/*@>1f513*/ = /*@>222e4*/(int32_T)((/*@>222e1*/(uint32_T)/*@>2194a*/rowIdx/*@>21c06*/ << /*@>2194c*/1)/*@>21c04*/ + /*@>2629d*/VCU_B./*@>299e2*/LogicalOperator2_c);
    /*@>2194f*/rowIdx/*@>1f53a*/ = /*@>222ee*/(int32_T)((/*@>222eb*/(uint32_T)/*@>21951*/rowIdx/*@>21bfc*/ << /*@>21953*/1)/*@>21bfa*/ + /*@>262a9*/VCU_B./*@>299e8*/Memory_py);
    /*@>262b5*/VCU_B./*@>299ee*/Logic_p/*@>1f550*/[/*@>21958*/0U]/*@>1f54f*/ = /*@>267bc*/VCU_ConstP./*@>29c46*/pooled37/*@>24f71*/[/*@>24f6c*/(uint32_T)/*@>24f6e*/rowIdx];
    /*@>262bb*/VCU_B./*@>299f1*/Logic_p/*@>1f563*/[/*@>2195d*/1U]/*@>1f562*/ = /*@>267c2*/VCU_ConstP./*@>29c49*/pooled37/*@>24f7a*/[/*@>24f76*/rowIdx/*@>24f73*/ + /*@>24f77*/8U];
    /* DataTypeConversion: '<S137>/Data Type Conversion12' */
    /*@>262c7*/VCU_B./*@>299f7*/Ignition_Cut_d/*@>7745*/ = /*@>262cd*/VCU_B./*@>299fa*/Logic_p/*@>24f84*/[/*@>24f81*/0];
    /* S-Function (sdspcount2): '<S145>/Counter' */
    /*@>262d3*/VCU_B./*@>299fd*/Counter_f/*@>8085*/ = /*@>2156a*/false;
    /*@>8089*/if (/*@>262d9*/VCU_B./*@>29a00*/LogicalOperator_n) {
        /*@>26a22*/VCU_DW./*@>29d12*/Counter_Count_m/*@>808d*/ = /*@>28419*/0U;
    }
    /*@>80a3*/if (/*@>262f1*/VCU_B./*@>29a0c*/Logic_c/*@>24f8e*/[/*@>24f8b*/0]) {
        /*@>1ec90*/if (/*@>26a2e*/VCU_DW./*@>29d18*/Counter_Count_m/*@>80a8*/ < /*@>217b1*/500) {
            /*@>26a40*/VCU_DW./*@>29d21*/Counter_Count_m/*@>28457*/++;
        } else {
            /*@>26a3a*/VCU_DW./*@>29d1e*/Counter_Count_m/*@>80af*/ = /*@>2841c*/0U;
        }
    }
    /*@>80c1*/if (/*@>26a34*/VCU_DW./*@>29d1b*/Counter_Count_m/*@>80c0*/ == /*@>217b5*/500) {
        /*@>26315*/VCU_B./*@>29a1e*/Counter_f/*@>80c5*/ = /*@>21579*/true;
    }
    /* End of S-Function (sdspcount2): '<S145>/Counter' */

    /* S-Function (sdspcount2): '<S146>/Counter' */
    /*@>26327*/VCU_B./*@>29a27*/Counter_g/*@>810a*/ = /*@>2157e*/false;
    /*@>810e*/if (/*@>2632d*/VCU_B./*@>29a2a*/LogicalOperator_ny) {
        /*@>26a4c*/VCU_DW./*@>29d24*/Counter_Count_a/*@>8112*/ = /*@>2841f*/0U;
    }
    /*@>8128*/if (/*@>2635d*/VCU_B./*@>29a42*/Logic_jv/*@>24f98*/[/*@>24f95*/0]) {
        /*@>1ec9f*/if (/*@>26a52*/VCU_DW./*@>29d27*/Counter_Count_a/*@>812d*/ < /*@>217b8*/200) {
            /*@>26a64*/VCU_DW./*@>29d30*/Counter_Count_a/*@>28458*/++;
        } else {
            /*@>26a5e*/VCU_DW./*@>29d2d*/Counter_Count_a/*@>8134*/ = /*@>28422*/0U;
        }
    }
    /*@>8146*/if (/*@>26a58*/VCU_DW./*@>29d2a*/Counter_Count_a/*@>8145*/ == /*@>217bd*/180) {
        /*@>2636f*/VCU_B./*@>29a4b*/Counter_g/*@>814a*/ = /*@>2158d*/true;
    }
    /* End of S-Function (sdspcount2): '<S146>/Counter' */

    /* DataTypeConversion: '<S137>/Data Type Conversion21' */
    /*@>26381*/VCU_B./*@>29a54*/VOVG_ShiftUp_oi/*@>774a*/ = /*@>26387*/VCU_B./*@>29a57*/Logic_jv/*@>24f9d*/[/*@>24f9a*/0];
    /* UnitDelay: '<S171>/Delay Input1'
 *
 * Block description for '<S171>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>26399*/VCU_B./*@>29a60*/Uk1_m1/*@>818d*/ = /*@>26a70*/VCU_DW./*@>29d33*/DelayInput1_DSTATE_n;
    /* RelationalOperator: '<S171>/FixPt Relational Operator' */
    /*@>263b1*/VCU_B./*@>29a6c*/FixPtRelationalOperator_o/*@>774f*/ = (/*@>263b7*/VCU_B./*@>29a6f*/Add_fn/*@>774e*/ < /*@>263bd*/VCU_B./*@>29a72*/Uk1_m1);
    /* Switch: '<S140>/Switch' */
    /*@>1eca4*/if (/*@>263cf*/VCU_B./*@>29a7b*/Logic_c/*@>24fa2*/[/*@>24f9f*/0]) {
        /* MinMax: '<S140>/MinMax' incorporates:
 *  Constant: '<S140>/Constant'
 */
        /*@>263e7*/VCU_B./*@>29a87*/Switch_h/*@>1eca7*/ = /*@>217b6*/20.0;
    } else {
        /* MinMax: '<S140>/MinMax' incorporates:
 *  Constant: '<S140>/Constant1'
 */
        /*@>263e1*/VCU_B./*@>29a84*/Switch_h/*@>819d*/ = /*@>217b7*/0.0;
    }
    /* End of Switch: '<S140>/Switch' */

    /* MinMax: '<S140>/MinMax' */
    /*@>224df*/if ((/*@>2640b*/VCU_B./*@>29a99*/x_clutch_STW/*@>224d8*/ > /*@>26411*/VCU_B./*@>29a9c*/Switch_h)/*@>224db*/ || /*@>24233*/rtIsNaN(/*@>26417*/VCU_B./*@>29a9f*/Switch_h)) {
        /*@>2642f*/VCU_B./*@>29aab*/MinMax_n/*@>224e1*/ = /*@>26435*/VCU_B./*@>29aae*/x_clutch_STW;
    } else {
        /*@>26423*/VCU_B./*@>29aa5*/MinMax_n/*@>224de*/ = /*@>26429*/VCU_B./*@>29aa8*/Switch_h;
    }
    /*@>22517*/if (!/*@<2421b*/(/*@>26447*/VCU_B./*@>29ab7*/MinMax_n/*@>22510*/ > /*@>22756*/0.0)) {
        /*@>2645f*/VCU_B./*@>29ac3*/MinMax_n/*@>22516*/ = /*@>2275a*/0.0;
    }
    /* RelationalOperator: '<S149>/Compare' incorporates:
 *  Constant: '<S149>/Constant'
 */
    /*@>26471*/VCU_B./*@>29acc*/Compare_gr/*@>7755*/ = (/*@>26477*/VCU_B./*@>29acf*/MinMax_n/*@>7754*/ > /*@>217bc*/1.0);
    /* DataTypeConversion: '<S137>/Data Type Conversion13' */
    /*@>26489*/VCU_B./*@>29ad8*/VOVG_IN_g/*@>7758*/ = /*@>2648f*/VCU_B./*@>29adb*/Compare_gr;
    /* Sum: '<S140>/Add' */
    /*@>264a7*/VCU_B./*@>29ae7*/Add_g/*@>a814*/ = /*@>264ad*/VCU_B./*@>29aea*/MinMax_n/*@>a811*/ - /*@>264b3*/VCU_B./*@>29aed*/x_clutch_b;
    /* RelationalOperator: '<S151>/Compare' incorporates:
 *  Constant: '<S151>/Constant'
 */
    /*@>264c5*/VCU_B./*@>29af6*/Compare_gp/*@>7761*/ = (/*@>264cb*/VCU_B./*@>29af9*/Add_g/*@>7760*/ < /*@>217bf*/-0.5);
    /* Lookup_n-D: '<S140>/Duty Cycle MHJ1' */
    /*@>264dd*/VCU_B./*@>29b02*/DutyCycleMHJ1_n/*@>a8de*/ = /*@>24237*/look1_binlxpw(/*@>264e3*/VCU_B./*@>29b05*/Add_g, /*@>267d4*/VCU_ConstP./*@>29c52*/pooled29, /*@>267da*/VCU_ConstP./*@>29c55*/pooled28, /*@>216be*/14U);
    /* Product: '<S140>/Product1' */
    /*@>264f5*/VCU_B./*@>29b0e*/Product1_f/*@>776f*/ = /*@>264fb*/VCU_B./*@>29b11*/DutyCycleMHJ1_n/*@>21bd4*/ * /*@>223d8*/(real_T)/*@>26501*/VCU_B./*@>29b14*/Compare_gp;
    /* RelationalOperator: '<S150>/Compare' incorporates:
 *  Constant: '<S150>/Constant'
 */
    /*@>2650d*/VCU_B./*@>29b1a*/Compare_kk/*@>7773*/ = (/*@>26513*/VCU_B./*@>29b1d*/x_clutch_b/*@>7772*/ > /*@>217c2*/20.0);
    /* Switch: '<S140>/Switch1' incorporates:
 *  Constant: '<S140>/Constant2'
 *  Constant: '<S140>/Constant3'
 */
    /*@>1ecae*/if (/*@>2651f*/VCU_B./*@>29b23*/Compare_kk) {
        /*@>26531*/VCU_B./*@>29b2c*/Switch1_n/*@>1ecb1*/ = /*@>217c3*/2.0;
    } else {
        /*@>2652b*/VCU_B./*@>29b29*/Switch1_n/*@>81d8*/ = /*@>217c4*/1.0;
    }
    /* End of Switch: '<S140>/Switch1' */

    /* Product: '<S140>/Product2' */
    /*@>26543*/VCU_B./*@>29b35*/Product2_f/*@>777b*/ = /*@>26549*/VCU_B./*@>29b38*/Product1_f/*@>21bd0*/ * /*@>2654f*/VCU_B./*@>29b3b*/Switch1_n;
    /* DataTypeConversion: '<S137>/Data Type Conversion16' */
    /*@>2655b*/VCU_B./*@>29b41*/MHJ9_OUT_d5/*@>777e*/ = /*@>26561*/VCU_B./*@>29b44*/Product2_f;
    /* RelationalOperator: '<S152>/Compare' incorporates:
 *  Constant: '<S152>/Constant'
 */
    /*@>2656d*/VCU_B./*@>29b4a*/Compare_js/*@>7782*/ = (/*@>26573*/VCU_B./*@>29b4d*/Add_g/*@>7781*/ > /*@>217c5*/0.0);
    /* Product: '<S140>/Product3' */
    /*@>2657f*/VCU_B./*@>29b53*/Product3_n/*@>7789*/ = /*@>26585*/VCU_B./*@>29b56*/DutyCycleMHJ1_n/*@>21bcc*/ * /*@>223fa*/(real_T)/*@>2658b*/VCU_B./*@>29b59*/Compare_js;
    /* DataTypeConversion: '<S137>/Data Type Conversion15' */
    /*@>26591*/VCU_B./*@>29b5c*/MHJ9_IN_h/*@>778c*/ = /*@>26597*/VCU_B./*@>29b5f*/Product3_n;
    /* RelationalOperator: '<S153>/Compare' incorporates:
 *  Constant: '<S153>/Constant'
 */
    /*@>2659d*/VCU_B./*@>29b62*/Compare_hu/*@>7790*/ = (/*@>265a3*/VCU_B./*@>29b65*/Add_g/*@>778f*/ < /*@>217c6*/-20.0);
    /* DataTypeConversion: '<S137>/Data Type Conversion14' */
    /*@>265af*/VCU_B./*@>29b6b*/VOVG_OUT_b/*@>7793*/ = /*@>265b5*/VCU_B./*@>29b6e*/Compare_hu;
    /* DataTypeConversion: '<S137>/Data Type Conversion20' incorporates:
 *  Constant: '<S137>/Constant'
 */
    /*@>265c1*/VCU_B./*@>29b74*/LC_ready_bit_p/*@>7796*/ = /*@>2196e*/true;
    /* DataTypeConversion: '<S137>/Data Type Conversion17' */
    /*@>265cd*/VCU_B./*@>29b7a*/x_clutch_LC_bg/*@>7799*/ = /*@>217c7*/0.0;
    /* DataTypeConversion: '<S137>/Data Type Conversion18' */
    /*@>265d9*/VCU_B./*@>29b80*/LC_Mdes_o/*@>779c*/ = /*@>217c8*/0.0;
    /* DataTypeConversion: '<S137>/Data Type Conversion19' */
    /*@>265e5*/VCU_B./*@>29b86*/LC_Fnr_lv/*@>779f*/ = /*@>217c9*/0.0;
    /* Update for Memory: '<S148>/Memory' */
    /*@>26abe*/VCU_DW./*@>29d5a*/Memory_PreviousInput_g/*@>790c*/ = /*@>265f1*/VCU_B./*@>29b8c*/LC_dash_bit;
    /* Update for Memory: '<S148>/Memory1' */
    /*@>26aca*/VCU_DW./*@>29d60*/Memory1_PreviousInput_p/*@>790e*/ = /*@>265fd*/VCU_B./*@>29b92*/Brakelight_n;
    /* Update for Memory: '<S190>/Memory' */
    /*@>26ad6*/VCU_DW./*@>29d66*/Memory_PreviousInput_gi/*@>7910*/ = /*@>26609*/VCU_B./*@>29b98*/Logic_b/*@>24fc8*/[/*@>24fc5*/0];
    /* Update for UnitDelay: '<S145>/Unit Delay1' */
    /*@>26ae2*/VCU_DW./*@>29d6c*/UnitDelay1_DSTATE_p/*@>81e9*/ = /*@>26615*/VCU_B./*@>29b9e*/Logic_c/*@>24fd2*/[/*@>24fcf*/0];
    /* Update for Delay: '<S145>/Delay' */
/*@>1e4c4*/    for (/*@>28447*/rowIdx = /*@>217cf*/0; /*@>2844f*/rowIdx < /*@>217d0*/19; /*@>2844c*/rowIdx/*@>2845a*/++) {
        /*@>26b00*/VCU_DW./*@>29d7b*/Delay_DSTATE_j/*@>1ca78*/[/*@>21755*/rowIdx]/*@>8217*/ = /*@>26b06*/VCU_DW./*@>29d7e*/Delay_DSTATE_j/*@>24fdf*/[/*@>24fdb*/rowIdx/*@>24fd9*/ + /*@>24fdc*/1];
    }
    /*@>26afa*/VCU_DW./*@>29d78*/Delay_DSTATE_j/*@>822f*/[/*@>215ae*/19]/*@>8239*/ = /*@>2662d*/VCU_B./*@>29baa*/LogicalOperator_n;
    /* End of Update for Delay: '<S145>/Delay' */

    /* Update for Memory: '<S175>/Memory' */
    /*@>26b12*/VCU_DW./*@>29d84*/Memory_PreviousInput_pa/*@>7914*/ = /*@>26639*/VCU_B./*@>29bb0*/Logic_g/*@>24fe4*/[/*@>24fe1*/0];
    /* Update for UnitDelay: '<S172>/Delay Input1'
 *
 * Block description for '<S172>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>26b1e*/VCU_DW./*@>29d8a*/DelayInput1_DSTATE_j/*@>8245*/ = /*@>26645*/VCU_B./*@>29bb6*/STW_shift_down_request;
    /* Update for Delay: '<S145>/Delay1' */
    /*@>26b2a*/VCU_DW./*@>29d90*/Delay1_DSTATE_p/*@>8251*/ = /*@>26651*/VCU_B./*@>29bbc*/LogicalOperator_n;
    /* Update for Memory: '<S173>/Memory' */
    /*@>26b36*/VCU_DW./*@>29d96*/Memory_PreviousInput_c/*@>7918*/ = /*@>2665d*/VCU_B./*@>29bc2*/Logic_c/*@>24ff3*/[/*@>24ff0*/0];
    /* Update for UnitDelay: '<S145>/Unit Delay4' */
    /*@>26b42*/VCU_DW./*@>29d9c*/UnitDelay4_DSTATE_e/*@>825d*/ = /*@>26669*/VCU_B./*@>29bc8*/FixPtRelationalOperator_o;
    /* Update for UnitDelay: '<S146>/Unit Delay' */
    /*@>26b48*/VCU_DW./*@>29d9f*/UnitDelay_DSTATE_g/*@>8269*/ = /*@>2666f*/VCU_B./*@>29bcb*/Logic_jv/*@>24ff8*/[/*@>24ff5*/0];
    /* Update for UnitDelay: '<S145>/Unit Delay2' */
    /*@>26b4e*/VCU_DW./*@>29da2*/UnitDelay2_DSTATE_k/*@>8275*/ = /*@>26675*/VCU_B./*@>29bce*/Counter_f;
    /* Update for Memory: '<S174>/Memory' */
    /*@>26b54*/VCU_DW./*@>29da5*/Memory_PreviousInput_jz/*@>791d*/ = /*@>2667b*/VCU_B./*@>29bd1*/Logic_j/*@>24ffd*/[/*@>24ffa*/0];
    /* Update for UnitDelay: '<S188>/Delay Input1'
 *
 * Block description for '<S188>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>26b5a*/VCU_DW./*@>29da8*/DelayInput1_DSTATE_m5/*@>8281*/ = /*@>26681*/VCU_B./*@>29bd4*/LogicalOperator3_n;
    /* Update for UnitDelay: '<S181>/Delay Input1'
 *
 * Block description for '<S181>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>26b60*/VCU_DW./*@>29dab*/DelayInput1_DSTATE_m/*@>828d*/ = /*@>26687*/VCU_B./*@>29bd7*/Add_ax;
    /* Update for UnitDelay: '<S145>/Unit Delay' */
    /*@>26b66*/VCU_DW./*@>29dae*/UnitDelay_DSTATE_n/*@>8299*/ = /*@>2668d*/VCU_B./*@>29bda*/Logic_j/*@>25002*/[/*@>24fff*/0];
    /* Update for UnitDelay: '<S146>/Unit Delay1' */
    /*@>26b6c*/VCU_DW./*@>29db1*/UnitDelay1_DSTATE_l/*@>82a5*/ = /*@>26693*/VCU_B./*@>29bdd*/Counter_g;
    /* Update for Memory: '<S189>/Memory' */
    /*@>26b72*/VCU_DW./*@>29db4*/Memory_PreviousInput_n/*@>7923*/ = /*@>26699*/VCU_B./*@>29be0*/Logic_gy/*@>25007*/[/*@>25004*/0];
    /* Update for UnitDelay: '<S180>/Delay Input1'
 *
 * Block description for '<S180>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>26b78*/VCU_DW./*@>29db7*/DelayInput1_DSTATE_e/*@>82b1*/ = /*@>2669f*/VCU_B./*@>29be3*/LogicalOperator3_e;
    /* Update for Memory: '<S183>/Memory' */
    /*@>26b7e*/VCU_DW./*@>29dba*/Memory_PreviousInput_e/*@>7926*/ = /*@>266a5*/VCU_B./*@>29be6*/Logic_jv/*@>2500c*/[/*@>25009*/0];
    /* Update for UnitDelay: '<S182>/Delay Input1'
 *
 * Block description for '<S182>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>26b84*/VCU_DW./*@>29dbd*/DelayInput1_DSTATE_b/*@>82bd*/ = /*@>266ab*/VCU_B./*@>29be9*/Add_ax;
    /* Update for Memory: '<S184>/Memory' */
    /*@>26b8a*/VCU_DW./*@>29dc0*/Memory_PreviousInput_ez/*@>7929*/ = /*@>266b1*/VCU_B./*@>29bec*/Logic_p/*@>25011*/[/*@>2500e*/0];
    /* Update for UnitDelay: '<S171>/Delay Input1'
 *
 * Block description for '<S171>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>26b90*/VCU_DW./*@>29dc3*/DelayInput1_DSTATE_n/*@>82c9*/ = /*@>266b7*/VCU_B./*@>29bef*/Add_fn;
}
/* End of Outputs for SubSystem: '<S7>/LC_jr19' */

/* RelationalOperator: '<S133>/Compare' incorporates:
 *  Constant: '<S133>/Constant'
 */
/*@>25631*/VCU_B./*@>293ac*/Compare_c/*@>7489*/ = (/*@>25637*/VCU_B./*@>293af*/DataTypeConversion_cg/*@>7488*/ == /*@>21761*/1);
/* RelationalOperator: '<S134>/Compare' incorporates:
 *  Constant: '<S134>/Constant'
 */
/*@>2564f*/VCU_B./*@>293bb*/Compare_g/*@>748d*/ = (/*@>25655*/VCU_B./*@>293be*/DataTypeConversion_cg/*@>748c*/ > /*@>21762*/3);
/* Logic: '<S7>/Logical Operator' */
/*@>25667*/VCU_B./*@>293c7*/LogicalOperator/*@>7493*/ = (/*@>2566d*/VCU_B./*@>293ca*/Compare_c/*@>7492*/ || /*@>25673*/VCU_B./*@>293cd*/Compare_g);
/* Outputs for Enabled SubSystem: '<S7>/semi_auto_jr18' incorporates:
 *  EnablePort: '<S139>/Enable'
 */
/*@>7495*/if (/*@>2567f*/VCU_B./*@>293d3*/LogicalOperator) {
    /* Memory: '<S202>/Memory' */
    /*@>25691*/VCU_B./*@>293dc*/Memory/*@>796a*/ = /*@>268a2*/VCU_DW./*@>29c5e*/Memory_PreviousInput;
    /* CombinatorialLogic: '<S228>/Logic' incorporates:
 *  RelationalOperator: '<S202>/GreaterThan'
 */
    /*@>256af*/VCU_B./*@>293eb*/GreaterThan/*@>796e*/ = (/*@>21ebf*/(int32_T)/*@>256b5*/VCU_B./*@>293ee*/LC_dash_bit/*@>796d*/ > /*@>21ec1*/(int32_T)/*@>256bb*/VCU_B./*@>293f1*/Memory);
    /* Logic: '<S202>/Logical Operator2' */
    /*@>256d9*/VCU_B./*@>29400*/LogicalOperator2/*@>7972*/ = !/*@<7971*//*@>256df*/VCU_B./*@>29403*/LC_dash_bit;
    /* Memory: '<S202>/Memory1' */
    /*@>256fd*/VCU_B./*@>29412*/Memory1/*@>7974*/ = /*@>268a8*/VCU_DW./*@>29c61*/Memory1_PreviousInput;
    /* RelationalOperator: '<S202>/Relational Operator' incorporates:
 *  Constant: '<S202>/Constant'
 */
    /*@>2572d*/VCU_B./*@>2942a*/RelationalOperator/*@>7978*/ = (/*@>25733*/VCU_B./*@>2942d*/Sensitivity1538mVbar/*@>7977*/ > /*@>21768*/3.0);
    /* RelationalOperator: '<S202>/Relational Operator1' incorporates:
 *  Constant: '<S202>/Constant'
 */
    /*@>2576f*/VCU_B./*@>2944b*/RelationalOperator1/*@>797c*/ = (/*@>21769*/3.0/*@>797b*/ < /*@>25775*/VCU_B./*@>2944e*/Add1_m);
    /* Logic: '<S202>/Logical Operator' */
    /*@>2578d*/VCU_B./*@>2945a*/Brakelight/*@>7982*/ = (/*@>25793*/VCU_B./*@>2945d*/RelationalOperator/*@>7981*/ || /*@>25799*/VCU_B./*@>29460*/RelationalOperator1);
    /* RelationalOperator: '<S202>/GreaterThan1' */
    /*@>257b7*/VCU_B./*@>2946f*/GreaterThan1/*@>7986*/ = (/*@>21ef8*/(int32_T)/*@>257bd*/VCU_B./*@>29472*/Memory1/*@>7985*/ > /*@>21efa*/(int32_T)/*@>257c3*/VCU_B./*@>29475*/Brakelight);
    /* CombinatorialLogic: '<S228>/Logic' incorporates:
 *  Logic: '<S202>/Logical Operator1'
 *  Memory: '<S228>/Memory'
 */
    /*@>25811*/VCU_B./*@>2949c*/LogicalOperator1/*@>798c*/ = (/*@>25817*/VCU_B./*@>2949f*/LogicalOperator2/*@>798b*/ || /*@>2581d*/VCU_B./*@>294a2*/GreaterThan1);
    /*@>25835*/VCU_B./*@>294ae*/Memory_c/*@>798e*/ = /*@>268b4*/VCU_DW./*@>29c67*/Memory_PreviousInput_j;
    /*@>2180e*/rowIdx/*@>1edb3*/ = /*@>25853*/VCU_B./*@>294bd*/GreaterThan;
    /*@>21812*/rowIdx/*@>1edda*/ = /*@>21f4c*/(int32_T)((/*@>21f49*/(uint32_T)/*@>21814*/rowIdx/*@>21bc7*/ << /*@>21816*/1)/*@>21bc5*/ + /*@>258ad*/VCU_B./*@>294ea*/LogicalOperator1);
    /*@>21819*/rowIdx/*@>1ee01*/ = /*@>21f64*/(int32_T)((/*@>21f61*/(uint32_T)/*@>2181b*/rowIdx/*@>21bbd*/ << /*@>2181d*/1)/*@>21bbb*/ + /*@>258cb*/VCU_B./*@>294f9*/Memory_c);
    /*@>258e3*/VCU_B./*@>29505*/Logic/*@>1ee17*/[/*@>21822*/0U]/*@>1ee16*/ = /*@>26738*/VCU_ConstP./*@>29c04*/pooled37/*@>24e85*/[/*@>24e80*/(uint32_T)/*@>24e82*/rowIdx];
    /*@>2592b*/VCU_B./*@>29529*/Logic/*@>1ee2a*/[/*@>21827*/1U]/*@>1ee29*/ = /*@>2673e*/VCU_ConstP./*@>29c07*/pooled37/*@>24e93*/[/*@>24e8f*/rowIdx/*@>24e8c*/ + /*@>24e90*/8U];
    /* Logic: '<S202>/Logical Operator3' */
    /*@>25937*/VCU_B./*@>2952f*/LogicalOperator3/*@>7995*/ = (/*@>2593d*/VCU_B./*@>29532*/Logic/*@>24e98*/[/*@>24e95*/0]/*@>7994*/ && /*@>25943*/VCU_B./*@>29535*/Brakelight);
    /* DataTypeConversion: '<S139>/Data Type Conversion1' */
    /*@>25967*/VCU_B./*@>29547*/LC_active_bit_f/*@>7998*/ = /*@>2596d*/VCU_B./*@>2954a*/LogicalOperator3;
    /* CombinatorialLogic: '<S217>/Logic' incorporates:
 *  Delay: '<S200>/Delay'
 *  Memory: '<S217>/Memory'
 *  UnitDelay: '<S200>/Unit Delay1'
 */
    /*@>259b5*/VCU_B./*@>2956e*/UnitDelay1/*@>8325*/ = /*@>268cc*/VCU_DW./*@>29c73*/UnitDelay1_DSTATE;
    /*@>259cd*/VCU_B./*@>2957a*/Delay/*@>8333*/ = /*@>268d2*/VCU_DW./*@>29c76*/Delay_DSTATE/*@>24e9d*/[/*@>24e9a*/0];
    /*@>259f1*/VCU_B./*@>2958c*/Memory_g/*@>799c*/ = /*@>268d8*/VCU_DW./*@>29c79*/Memory_PreviousInput_p;
    /*@>21846*/rowIdx/*@>1ef01*/ = /*@>25a39*/VCU_B./*@>295b0*/UnitDelay1;
    /*@>2184a*/rowIdx/*@>1ef28*/ = /*@>21fed*/(int32_T)((/*@>21fea*/(uint32_T)/*@>2184c*/rowIdx/*@>21bb2*/ << /*@>2184e*/1)/*@>21bb0*/ + /*@>25a57*/VCU_B./*@>295bf*/Delay);
    /*@>21851*/rowIdx/*@>1ef4f*/ = /*@>22003*/(int32_T)((/*@>22000*/(uint32_T)/*@>21853*/rowIdx/*@>21ba8*/ << /*@>21855*/1)/*@>21ba6*/ + /*@>25a75*/VCU_B./*@>295ce*/Memory_g);
    /*@>25ac9*/VCU_B./*@>295f8*/Logic_o/*@>1ef65*/[/*@>2185a*/0U]/*@>1ef64*/ = /*@>26750*/VCU_ConstP./*@>29c10*/pooled37/*@>24eb9*/[/*@>24eb4*/(uint32_T)/*@>24eb6*/rowIdx];
    /*@>25ae7*/VCU_B./*@>29607*/Logic_o/*@>1ef78*/[/*@>2185f*/1U]/*@>1ef77*/ = /*@>26756*/VCU_ConstP./*@>29c13*/pooled37/*@>24ec2*/[/*@>24ebe*/rowIdx/*@>24ebb*/ + /*@>24ebf*/8U];
    /* DataTypeConversion: '<S139>/Data Type Conversion10' */
    /*@>25b05*/VCU_B./*@>29616*/VOVG_ShiftDown_m/*@>79a0*/ = /*@>25b0b*/VCU_B./*@>29619*/Logic_o/*@>24ec7*/[/*@>24ec4*/0];
    /* UnitDelay: '<S214>/Delay Input1'
 *
 * Block description for '<S214>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>25b53*/VCU_B./*@>2963d*/Uk1/*@>838f*/ = /*@>268f0*/VCU_DW./*@>29c85*/DelayInput1_DSTATE;
    /* CombinatorialLogic: '<S215>/Logic' incorporates:
 *  Delay: '<S200>/Delay1'
 *  Memory: '<S215>/Memory'
 *  RelationalOperator: '<S214>/FixPt Relational Operator'
 */
    /*@>25b71*/VCU_B./*@>2964c*/FixPtRelationalOperator/*@>79a5*/ = (/*@>25b77*/VCU_B./*@>2964f*/STW_shift_down_request/*@>79a4*/ > /*@>25b7d*/VCU_B./*@>29652*/Uk1);
    /*@>25b9b*/VCU_B./*@>29661*/Delay1/*@>839b*/ = /*@>268f6*/VCU_DW./*@>29c88*/Delay1_DSTATE;
    /*@>25bdd*/VCU_B./*@>29682*/Memory_d/*@>79a8*/ = /*@>268fc*/VCU_DW./*@>29c8b*/Memory_PreviousInput_l;
    /*@>2187e*/rowIdx/*@>1f04f*/ = /*@>25bef*/VCU_B./*@>2968b*/FixPtRelationalOperator;
    /*@>21882*/rowIdx/*@>1f076*/ = /*@>2207b*/(int32_T)((/*@>22078*/(uint32_T)/*@>21884*/rowIdx/*@>21b9d*/ << /*@>21886*/1)/*@>21b9b*/ + /*@>25c07*/VCU_B./*@>29697*/Delay1);
    /*@>21889*/rowIdx/*@>1f09d*/ = /*@>22087*/(int32_T)((/*@>22084*/(uint32_T)/*@>2188b*/rowIdx/*@>21b93*/ << /*@>2188d*/1)/*@>21b91*/ + /*@>25c4f*/VCU_B./*@>296bb*/Memory_d);
    /*@>25c61*/VCU_B./*@>296c4*/Logic_i/*@>1f0b3*/[/*@>21892*/0U]/*@>1f0b2*/ = /*@>26768*/VCU_ConstP./*@>29c1c*/pooled37/*@>24ede*/[/*@>24ed9*/(uint32_T)/*@>24edb*/rowIdx];
    /*@>25c79*/VCU_B./*@>296d0*/Logic_i/*@>1f0c6*/[/*@>21897*/1U]/*@>1f0c5*/ = /*@>2676e*/VCU_ConstP./*@>29c1f*/pooled37/*@>24ee7*/[/*@>24ee3*/rowIdx/*@>24ee0*/ + /*@>24ee4*/8U];
    /* UnitDelay: '<S200>/Unit Delay4' */
    /*@>25cb5*/VCU_B./*@>296ee*/UnitDelay4/*@>83f7*/ = /*@>26908*/VCU_DW./*@>29c91*/UnitDelay4_DSTATE;
    /* Gain: '<S218>/Gain' */
    /*@>25cd3*/VCU_B./*@>296fd*/Gain/*@>79b2*/ = /*@>2177b*/2.0/*@>21b89*/ * /*@>25cd9*/VCU_B./*@>29700*/DataTypeConversion1;
    /* RelationalOperator: '<S218>/Relational Operator' incorporates:
 *  Constant: '<S218>/Constant'
 */
    /*@>25cf1*/VCU_B./*@>2970c*/RelationalOperator_m/*@>79b6*/ = (/*@>25cf7*/VCU_B./*@>2970f*/Gain/*@>79b5*/ > /*@>2177d*/169.0);
    /* RelationalOperator: '<S218>/Relational Operator1' incorporates:
 *  Constant: '<S218>/Constant1'
 */
    /*@>25d2d*/VCU_B./*@>2972a*/RelationalOperator1_o/*@>79ba*/ = (/*@>25d33*/VCU_B./*@>2972d*/Gain/*@>79b9*/ > /*@>21780*/228.0);
    /* RelationalOperator: '<S218>/Relational Operator2' incorporates:
 *  Constant: '<S218>/Constant2'
 */
    /*@>25d45*/VCU_B./*@>29736*/RelationalOperator2/*@>79be*/ = (/*@>25d4b*/VCU_B./*@>29739*/Gain/*@>79bd*/ > /*@>21781*/325.0);
    /* Sum: '<S218>/Add' */
    /*@>25d51*/VCU_B./*@>2973c*/Add_c/*@>a831*/ = /*@>220b8*/(uint8_T)((/*@>220b2*/(uint32_T)/*@>25d57*/VCU_B./*@>2973f*/RelationalOperator_m/*@>21b79*/ + /*@>25d5d*/VCU_B./*@>29742*/RelationalOperator1_o)/*@>21b6c*/ + /*@>25d63*/VCU_B./*@>29745*/RelationalOperator2);
    /* RelationalOperator: '<S208>/Compare' incorporates:
 *  Constant: '<S208>/Constant'
 */
    /*@>25d7b*/VCU_B./*@>29751*/Compare_b/*@>79c8*/ = (/*@>25d81*/VCU_B./*@>29754*/x_clutch_STW/*@>79c7*/ >= /*@>21782*/15.0);
    /* Switch: '<S200>/Switch' incorporates:
 *  Constant: '<S200>/Constant'
 *  Constant: '<S200>/Constant1'
 */
    /*@>1ec7c*/if (/*@>25d8d*/VCU_B./*@>2975a*/Compare_b) {
        /*@>25d9f*/VCU_B./*@>29763*/Switch/*@>1ec7f*/ = /*@>21784*/1.0;
    } else {
        /*@>25d99*/VCU_B./*@>29760*/Switch/*@>8407*/ = /*@>21785*/2.0;
    }
    /* End of Switch: '<S200>/Switch' */

    /* RelationalOperator: '<S200>/Relational Operator' */
    /*@>25dbd*/VCU_B./*@>29772*/LessthanNeutral/*@>79cd*/ = (/*@>25dc3*/VCU_B./*@>29775*/Add_c/*@>21b62*/ < /*@>25dc9*/VCU_B./*@>29778*/Switch);
    /* UnitDelay: '<S201>/Unit Delay' */
    /*@>25de1*/VCU_B./*@>29784*/UnitDelay/*@>8418*/ = /*@>2691a*/VCU_DW./*@>29c9a*/UnitDelay_DSTATE;
    /* UnitDelay: '<S200>/Unit Delay2' */
    /*@>25df3*/VCU_B./*@>2978d*/Timeout/*@>8424*/ = /*@>26920*/VCU_DW./*@>29c9d*/UnitDelay2_DSTATE;
    /* RelationalOperator: '<S209>/Compare' incorporates:
 *  Constant: '<S209>/Constant'
 */
    /*@>25e05*/VCU_B./*@>29796*/Compare_f/*@>79d3*/ = (/*@>25e0b*/VCU_B./*@>29799*/DataTypeConversion2/*@>79d2*/ > /*@>21789*/5000.0);
    /* RelationalOperator: '<S210>/Compare' incorporates:
 *  Constant: '<S210>/Constant'
 */
    /*@>25e23*/VCU_B./*@>297a5*/Compare_n/*@>79d7*/ = (/*@>25e29*/VCU_B./*@>297a8*/Add_c/*@>79d6*/ == /*@>2178a*/2);
    /* Logic: '<S200>/Logical Operator1' */
    /*@>25e59*/VCU_B./*@>297c0*/RPMcheckgear21/*@>79dd*/ = (/*@>25e5f*/VCU_B./*@>297c3*/Compare_n/*@>79dc*/ && /*@>25e65*/VCU_B./*@>297c6*/Compare_f);
    /* RelationalOperator: '<S211>/Compare' incorporates:
 *  Constant: '<S211>/Constant'
 */
    /*@>25e71*/VCU_B./*@>297cc*/Compare_l/*@>79e1*/ = (/*@>25e77*/VCU_B./*@>297cf*/DataTypeConversion2/*@>79e0*/ > /*@>2178b*/5300.0);
    /* RelationalOperator: '<S212>/Compare' incorporates:
 *  Constant: '<S212>/Constant'
 */
    /*@>25e83*/VCU_B./*@>297d5*/Compare_h/*@>79e5*/ = (/*@>25e89*/VCU_B./*@>297d8*/Add_c/*@>79e4*/ == /*@>2178c*/3);
    /* Logic: '<S200>/Logical Operator2' */
    /*@>25e8f*/VCU_B./*@>297db*/RPMcheckgear31/*@>79eb*/ = (/*@>25e95*/VCU_B./*@>297de*/Compare_l/*@>79ea*/ && /*@>25e9b*/VCU_B./*@>297e1*/Compare_h);
    /* CombinatorialLogic: '<S216>/Logic' incorporates:
 *  Logic: '<S200>/Logical Operator'
 *  Memory: '<S216>/Memory'
 */
    /*@>25ea7*/VCU_B./*@>297e7*/LogicalOperator_d/*@>79fd*/ = (/*@>25ead*/VCU_B./*@>297ea*/UnitDelay4/*@>79f0*/ || /*@>25eb3*/VCU_B./*@>297ed*/LessthanNeutral/*@>79f3*/ || /*@>25eb9*/VCU_B./*@>297f0*/UnitDelay/*@>79f6*/ || /*@>25ebf*/VCU_B./*@>297f3*/Timeout/*@>79f9*/ || /*@>25ec5*/VCU_B./*@>297f6*/RPMcheckgear21/*@>79fc*/ || /*@>25ecb*/VCU_B./*@>297f9*/RPMcheckgear31);
    /*@>25ed7*/VCU_B./*@>297ff*/Memory_l/*@>79ff*/ = /*@>2692c*/VCU_DW./*@>29ca3*/Memory_PreviousInput_a;
    /*@>219c5*/tmp/*@>1f18e*/ = /*@>25ee3*/VCU_B./*@>29805*/Logic_i/*@>24ef8*/[/*@>24ef5*/0];
    /*@>218b8*/rowIdx/*@>1f1a5*/ = /*@>219c7*/tmp;
    /*@>218bc*/rowIdx/*@>1f1ce*/ = /*@>2212f*/(int32_T)((/*@>2212c*/(uint32_T)/*@>218be*/rowIdx/*@>21b5c*/ << /*@>218c0*/1)/*@>21b5a*/ + /*@>25f01*/VCU_B./*@>29814*/LogicalOperator_d);
    /*@>218c3*/rowIdx/*@>1f1f7*/ = /*@>2213c*/(int32_T)((/*@>22139*/(uint32_T)/*@>218c5*/rowIdx/*@>21b52*/ << /*@>218c7*/1)/*@>21b50*/ + /*@>25f13*/VCU_B./*@>2981d*/Memory_l);
    /*@>25f25*/VCU_B./*@>29826*/Logic_iy/*@>1f20d*/[/*@>218cc*/0U]/*@>1f20c*/ = /*@>26780*/VCU_ConstP./*@>29c28*/pooled37/*@>24f08*/[/*@>24f03*/(uint32_T)/*@>24f05*/rowIdx];
    /*@>25f37*/VCU_B./*@>2982f*/Logic_iy/*@>1f220*/[/*@>218d1*/1U]/*@>1f21f*/ = /*@>26786*/VCU_ConstP./*@>29c2b*/pooled37/*@>24f11*/[/*@>24f0d*/rowIdx/*@>24f0a*/ + /*@>24f0e*/8U];
    /* UnitDelay: '<S222>/Delay Input1'
 *
 * Block description for '<S222>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>25f49*/VCU_B./*@>29838*/Uk1_i/*@>8480*/ = /*@>26932*/VCU_DW./*@>29ca6*/DelayInput1_DSTATE_g;
    /* CombinatorialLogic: '<S225>/Logic' incorporates:
 *  RelationalOperator: '<S222>/FixPt Relational Operator'
 */
    /*@>25f5b*/VCU_B./*@>29841*/FixPtRelationalOperator_c/*@>7a05*/ = (/*@>25f61*/VCU_B./*@>29844*/STW_shift_up_request/*@>7a04*/ > /*@>25f67*/VCU_B./*@>29847*/Uk1_i);
    /* Gain: '<S227>/Gain' */
    /*@>25f79*/VCU_B./*@>29850*/Gain_m/*@>7a0d*/ = /*@>21793*/2.0/*@>21b48*/ * /*@>25f7f*/VCU_B./*@>29853*/DataTypeConversion1;
    /* RelationalOperator: '<S227>/Relational Operator' incorporates:
 *  Constant: '<S227>/Constant'
 */
    /*@>25f9d*/VCU_B./*@>29862*/RelationalOperator_d/*@>7a11*/ = (/*@>25fa3*/VCU_B./*@>29865*/Gain_m/*@>7a10*/ > /*@>21794*/169.0);
    /* RelationalOperator: '<S227>/Relational Operator1' incorporates:
 *  Constant: '<S227>/Constant1'
 */
    /*@>25fb5*/VCU_B./*@>2986e*/RelationalOperator1_a/*@>7a15*/ = (/*@>25fbb*/VCU_B./*@>29871*/Gain_m/*@>7a14*/ > /*@>21796*/269.0);
    /* RelationalOperator: '<S227>/Relational Operator2' incorporates:
 *  Constant: '<S227>/Constant2'
 */
    /*@>25fd3*/VCU_B./*@>2987d*/RelationalOperator2_d/*@>7a19*/ = (/*@>25fd9*/VCU_B./*@>29880*/Gain_m/*@>7a18*/ > /*@>21797*/360.0);
    /* Sum: '<S227>/Add' */
    /*@>25fe5*/VCU_B./*@>29886*/Add_j/*@>a83a*/ = /*@>22178*/(uint8_T)((/*@>22172*/(uint32_T)/*@>25feb*/VCU_B./*@>29889*/RelationalOperator_d/*@>21b38*/ + /*@>25ff1*/VCU_B./*@>2988c*/RelationalOperator1_a)/*@>21b2b*/ + /*@>25ff7*/VCU_B./*@>2988f*/RelationalOperator2_d);
    /* UnitDelay: '<S223>/Delay Input1'
 *
 * Block description for '<S223>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>2600f*/VCU_B./*@>2989b*/Uk1_b/*@>848c*/ = /*@>2693e*/VCU_DW./*@>29cac*/DelayInput1_DSTATE_ga;
    /* RelationalOperator: '<S223>/FixPt Relational Operator' */
    /*@>26021*/VCU_B./*@>298a4*/FixPtRelationalOperator_m/*@>7a24*/ = (/*@>26027*/VCU_B./*@>298a7*/Add_j/*@>7a23*/ > /*@>2602d*/VCU_B./*@>298aa*/Uk1_b);
    /* RelationalOperator: '<S219>/Compare' incorporates:
 *  Constant: '<S219>/Constant'
 */
    /*@>26039*/VCU_B./*@>298b0*/Compare_ha/*@>7a28*/ = (/*@>2603f*/VCU_B./*@>298b3*/Add_j/*@>7a27*/ >= /*@>21798*/3);
    /* UnitDelay: '<S200>/Unit Delay' */
    /*@>26057*/VCU_B./*@>298bf*/UnitDelay_p/*@>8498*/ = /*@>2694a*/VCU_DW./*@>29cb2*/UnitDelay_DSTATE_b;
    /* UnitDelay: '<S201>/Unit Delay1' */
    /*@>26069*/VCU_B./*@>298c8*/Timeout_i/*@>84a4*/ = /*@>26950*/VCU_DW./*@>29cb5*/UnitDelay1_DSTATE_k;
    /* RelationalOperator: '<S221>/Compare' incorporates:
 *  Constant: '<S221>/Constant'
 */
    /*@>26075*/VCU_B./*@>298ce*/Compare_e/*@>7a2e*/ = (/*@>2607b*/VCU_B./*@>298d1*/Add_j/*@>7a2d*/ == /*@>2179a*/0);
    /* RelationalOperator: '<S220>/Compare' incorporates:
 *  Constant: '<S220>/Constant'
 */
    /*@>26087*/VCU_B./*@>298d7*/Compare_a/*@>7a32*/ = (/*@>2608d*/VCU_B./*@>298da*/x_clutch_STW/*@>7a31*/ < /*@>2179b*/15.0);
    /* Logic: '<S201>/Logical Operator1' */
    /*@>2609f*/VCU_B./*@>298e3*/FailSafefirstgear/*@>7a38*/ = (/*@>260a5*/VCU_B./*@>298e6*/Compare_e/*@>7a37*/ && /*@>260ab*/VCU_B./*@>298e9*/Compare_a);
    /* CombinatorialLogic: '<S225>/Logic' incorporates:
 *  Logic: '<S201>/Logical Operator'
 *  Memory: '<S225>/Memory'
 */
    /*@>260bd*/VCU_B./*@>298f2*/LogicalOperator_i/*@>7a47*/ = (/*@>260c3*/VCU_B./*@>298f5*/FixPtRelationalOperator_m/*@>7a3d*/ || /*@>260c9*/VCU_B./*@>298f8*/Compare_ha/*@>7a40*/ || /*@>260cf*/VCU_B./*@>298fb*/UnitDelay_p/*@>7a43*/ || /*@>260d5*/VCU_B./*@>298fe*/Timeout_i/*@>7a46*/ || /*@>260db*/VCU_B./*@>29901*/FailSafefirstgear);
    /*@>260f3*/VCU_B./*@>2990d*/Memory_a/*@>7a49*/ = /*@>26962*/VCU_DW./*@>29cbe*/Memory_PreviousInput_al;
    /*@>218d4*/rowIdx/*@>1f250*/ = /*@>2611d*/VCU_B./*@>29922*/FixPtRelationalOperator_c;
    /*@>218d8*/rowIdx/*@>1f277*/ = /*@>221d2*/(int32_T)((/*@>221cf*/(uint32_T)/*@>218da*/rowIdx/*@>21b22*/ << /*@>218dc*/1)/*@>21b20*/ + /*@>2613b*/VCU_B./*@>29931*/LogicalOperator_i);
    /*@>218df*/rowIdx/*@>1f29e*/ = /*@>221df*/(int32_T)((/*@>221dc*/(uint32_T)/*@>218e1*/rowIdx/*@>21b18*/ << /*@>218e3*/1)/*@>21b16*/ + /*@>26147*/VCU_B./*@>29937*/Memory_a);
    /*@>26153*/VCU_B./*@>2993d*/Logic_iz/*@>1f2b4*/[/*@>218e8*/0U]/*@>1f2b3*/ = /*@>2678c*/VCU_ConstP./*@>29c2e*/pooled37/*@>24f18*/[/*@>24f13*/(uint32_T)/*@>24f15*/rowIdx];
    /*@>2615f*/VCU_B./*@>29943*/Logic_iz/*@>1f2c7*/[/*@>218ed*/1U]/*@>1f2c6*/ = /*@>26792*/VCU_ConstP./*@>29c31*/pooled37/*@>24f21*/[/*@>24f1d*/rowIdx/*@>24f1a*/ + /*@>24f1e*/8U];
    /* CombinatorialLogic: '<S226>/Logic' incorporates:
 *  S-Function (sdspcount2): '<S201>/Counter1'
 */
    /*@>2616b*/VCU_B./*@>29949*/Counter1/*@>8502*/ = /*@>2160d*/false;
    /* S-Function (sdspcount2): '<S201>/Counter1' */
    /*@>8506*/if (/*@>26177*/VCU_B./*@>2994f*/LogicalOperator_i) {
        /*@>2696e*/VCU_DW./*@>29cc4*/Counter1_Count/*@>850a*/ = /*@>28401*/0U;
    }
    /*@>8520*/if (/*@>26195*/VCU_B./*@>2995e*/Logic_iz/*@>24f3b*/[/*@>24f38*/0]) {
        /*@>1ec81*/if (/*@>2697a*/VCU_DW./*@>29cca*/Counter1_Count/*@>8525*/ < /*@>2179f*/60) {
            /*@>2698c*/VCU_DW./*@>29cd3*/Counter1_Count/*@>28453*/++;
        } else {
            /*@>26986*/VCU_DW./*@>29cd0*/Counter1_Count/*@>852c*/ = /*@>28404*/0U;
        }
    }
    /*@>853e*/if (/*@>26980*/VCU_DW./*@>29ccd*/Counter1_Count/*@>853d*/ == /*@>217a0*/1) {
        /* CombinatorialLogic: '<S226>/Logic' */
        /*@>261b9*/VCU_B./*@>29970*/Counter1/*@>8542*/ = /*@>2161c*/true;
    }
    /* UnitDelay: '<S224>/Delay Input1'
 *
 * Block description for '<S224>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>261c5*/VCU_B./*@>29976*/Uk1_m/*@>8585*/ = /*@>2699e*/VCU_DW./*@>29cd9*/DelayInput1_DSTATE_f;
    /* RelationalOperator: '<S224>/FixPt Relational Operator' */
    /*@>261d1*/VCU_B./*@>2997c*/FixPtRelationalOperator_b/*@>7a50*/ = (/*@>261d7*/VCU_B./*@>2997f*/Add_j/*@>7a4f*/ > /*@>261dd*/VCU_B./*@>29982*/Uk1_m);
    /* CombinatorialLogic: '<S226>/Logic' incorporates:
 *  Logic: '<S201>/Logical Operator2'
 *  Memory: '<S226>/Memory'
 */
    /*@>261e9*/VCU_B./*@>29988*/LogicalOperator2_h/*@>7a56*/ = (/*@>261ef*/VCU_B./*@>2998b*/LogicalOperator_i/*@>7a55*/ || /*@>261f5*/VCU_B./*@>2998e*/FixPtRelationalOperator_b);
    /*@>26201*/VCU_B./*@>29994*/Memory_gt/*@>7a58*/ = /*@>269a4*/VCU_DW./*@>29cdc*/Memory_PreviousInput_k;
    /*@>21928*/rowIdx/*@>1f445*/ = /*@>2620d*/VCU_B./*@>2999a*/Counter1;
    /*@>2192c*/rowIdx/*@>1f46c*/ = /*@>2226c*/(int32_T)((/*@>22269*/(uint32_T)/*@>2192e*/rowIdx/*@>21afe*/ << /*@>21930*/1)/*@>21afc*/ + /*@>26219*/VCU_B./*@>299a0*/LogicalOperator2_h);
    /*@>21933*/rowIdx/*@>1f493*/ = /*@>2227c*/(int32_T)((/*@>22279*/(uint32_T)/*@>21935*/rowIdx/*@>21af4*/ << /*@>21937*/1)/*@>21af2*/ + /*@>26225*/VCU_B./*@>299a6*/Memory_gt);
    /*@>2622b*/VCU_B./*@>299a9*/Logic_e/*@>1f4a9*/[/*@>2193c*/0U]/*@>1f4a8*/ = /*@>267b0*/VCU_ConstP./*@>29c40*/pooled37/*@>24f52*/[/*@>24f4d*/(uint32_T)/*@>24f4f*/rowIdx];
    /*@>26237*/VCU_B./*@>299af*/Logic_e/*@>1f4bc*/[/*@>21941*/1U]/*@>1f4bb*/ = /*@>267b6*/VCU_ConstP./*@>29c43*/pooled37/*@>24f60*/[/*@>24f5c*/rowIdx/*@>24f59*/ + /*@>24f5d*/8U];
    /* DataTypeConversion: '<S139>/Data Type Conversion11' */
    /*@>2623d*/VCU_B./*@>299b2*/Ignition_Cut_o/*@>7a5c*/ = /*@>26243*/VCU_B./*@>299b5*/Logic_e/*@>24f65*/[/*@>24f62*/0];
    /* S-Function (sdspcount2): '<S200>/Counter' */
    /*@>26249*/VCU_B./*@>299b8*/Counter/*@>85e3*/ = /*@>21625*/false;
    /*@>85e7*/if (/*@>26255*/VCU_B./*@>299be*/LogicalOperator_d) {
        /*@>269d4*/VCU_DW./*@>29cf1*/Counter_Count/*@>85eb*/ = /*@>2840d*/0U;
    }
    /*@>8601*/if (/*@>26273*/VCU_B./*@>299cd*/Logic_i/*@>24f6a*/[/*@>24f67*/0]) {
        /*@>1ec8b*/if (/*@>269da*/VCU_DW./*@>29cf4*/Counter_Count/*@>8606*/ < /*@>217a6*/500) {
            /*@>269f2*/VCU_DW./*@>29d00*/Counter_Count/*@>28455*/++;
        } else {
            /*@>269ec*/VCU_DW./*@>29cfd*/Counter_Count/*@>860d*/ = /*@>28410*/0U;
        }
    }
    /*@>861f*/if (/*@>269e6*/VCU_DW./*@>29cfa*/Counter_Count/*@>861e*/ == /*@>217a7*/500) {
        /*@>26297*/VCU_B./*@>299df*/Counter/*@>8623*/ = /*@>21634*/true;
    }
    /* End of S-Function (sdspcount2): '<S200>/Counter' */

    /* S-Function (sdspcount2): '<S201>/Counter' */
    /*@>262a3*/VCU_B./*@>299e5*/Counter_d/*@>8668*/ = /*@>21639*/false;
    /*@>866c*/if (/*@>262af*/VCU_B./*@>299eb*/LogicalOperator_i) {
        /*@>269fe*/VCU_DW./*@>29d03*/Counter_Count_i/*@>8670*/ = /*@>28413*/0U;
    }
    /*@>8686*/if (/*@>262c1*/VCU_B./*@>299f4*/Logic_iz/*@>24f7f*/[/*@>24f7c*/0]) {
        /*@>1ec95*/if (/*@>26a04*/VCU_DW./*@>29d06*/Counter_Count_i/*@>868b*/ < /*@>217ab*/200) {
            /*@>26a16*/VCU_DW./*@>29d0f*/Counter_Count_i/*@>28456*/++;
        } else {
            /*@>26a10*/VCU_DW./*@>29d0c*/Counter_Count_i/*@>8692*/ = /*@>28416*/0U;
        }
    }
    /*@>86a4*/if (/*@>26a0a*/VCU_DW./*@>29d09*/Counter_Count_i/*@>86a3*/ == /*@>217ae*/180) {
        /*@>262df*/VCU_B./*@>29a03*/Counter_d/*@>86a8*/ = /*@>21648*/true;
    }
    /* End of S-Function (sdspcount2): '<S201>/Counter' */

    /* DataTypeConversion: '<S139>/Data Type Conversion8' */
    /*@>262e5*/VCU_B./*@>29a06*/VOVG_ShiftUp_k/*@>7a61*/ = /*@>262eb*/VCU_B./*@>29a09*/Logic_iz/*@>24f89*/[/*@>24f86*/0];
    /* UnitDelay: '<S213>/Delay Input1'
 *
 * Block description for '<S213>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>262f7*/VCU_B./*@>29a0f*/Uk1_f/*@>86eb*/ = /*@>26a28*/VCU_DW./*@>29d15*/DelayInput1_DSTATE_p;
    /* RelationalOperator: '<S213>/FixPt Relational Operator' */
    /*@>262fd*/VCU_B./*@>29a12*/FixPtRelationalOperator_d/*@>7a66*/ = (/*@>26303*/VCU_B./*@>29a15*/Add_c/*@>7a65*/ < /*@>26309*/VCU_B./*@>29a18*/Uk1_f);
    /* Switch: '<S199>/Switch' */
    /*@>1ec9a*/if (/*@>2630f*/VCU_B./*@>29a1b*/Logic_i/*@>24f93*/[/*@>24f90*/0]) {
        /* MinMax: '<S199>/MinMax' incorporates:
 *  Constant: '<S199>/Constant'
 */
        /*@>26321*/VCU_B./*@>29a24*/Switch_g/*@>1ec9d*/ = /*@>217a8*/20.0;
    } else {
        /* MinMax: '<S199>/MinMax' incorporates:
 *  Constant: '<S199>/Constant1'
 */
        /*@>2631b*/VCU_B./*@>29a21*/Switch_g/*@>86fb*/ = /*@>217a9*/0.0;
    }
    /* End of Switch: '<S199>/Switch' */

    /* MinMax: '<S199>/MinMax' */
    /*@>2254f*/if ((/*@>26333*/VCU_B./*@>29a2d*/x_clutch_STW/*@>22548*/ > /*@>26339*/VCU_B./*@>29a30*/Switch_g)/*@>2254b*/ || /*@>24239*/rtIsNaN(/*@>2633f*/VCU_B./*@>29a33*/Switch_g)) {
        /*@>26351*/VCU_B./*@>29a3c*/MinMax/*@>22551*/ = /*@>26357*/VCU_B./*@>29a3f*/x_clutch_STW;
    } else {
        /*@>26345*/VCU_B./*@>29a36*/MinMax/*@>2254e*/ = /*@>2634b*/VCU_B./*@>29a39*/Switch_g;
    }
    /*@>22587*/if (!/*@<2421a*/(/*@>26363*/VCU_B./*@>29a45*/MinMax/*@>22580*/ > /*@>2275c*/0.0)) {
        /*@>26369*/VCU_B./*@>29a48*/MinMax/*@>22586*/ = /*@>22760*/0.0;
    }
    /* RelationalOperator: '<S203>/Compare' incorporates:
 *  Constant: '<S203>/Constant'
 */
    /*@>26375*/VCU_B./*@>29a4e*/Compare_ao/*@>7a6c*/ = (/*@>2637b*/VCU_B./*@>29a51*/MinMax/*@>7a6b*/ > /*@>217ad*/1.0);
    /* DataTypeConversion: '<S139>/Data Type Conversion12' */
    /*@>2638d*/VCU_B./*@>29a5a*/VOVG_IN_h/*@>7a6f*/ = /*@>26393*/VCU_B./*@>29a5d*/Compare_ao;
    /* Sum: '<S199>/Add' */
    /*@>2639f*/VCU_B./*@>29a63*/Add/*@>a83f*/ = /*@>263a5*/VCU_B./*@>29a66*/MinMax/*@>a83c*/ - /*@>263ab*/VCU_B./*@>29a69*/x_clutch_b;
    /* RelationalOperator: '<S205>/Compare' incorporates:
 *  Constant: '<S205>/Constant'
 */
    /*@>263c3*/VCU_B./*@>29a75*/Compare_gu/*@>7a78*/ = (/*@>263c9*/VCU_B./*@>29a78*/Add/*@>7a77*/ < /*@>217b0*/-0.5);
    /* Lookup_n-D: '<S199>/Duty Cycle MHJ1' */
    /*@>263d5*/VCU_B./*@>29a7e*/DutyCycleMHJ1/*@>a907*/ = /*@>2423d*/look1_binlxpw(/*@>263db*/VCU_B./*@>29a81*/Add, /*@>267c8*/VCU_ConstP./*@>29c4c*/pooled29, /*@>267ce*/VCU_ConstP./*@>29c4f*/pooled28, /*@>216c4*/14U);
    /* Product: '<S199>/Product1' */
    /*@>263ed*/VCU_B./*@>29a8a*/Product1/*@>7a86*/ = /*@>263f3*/VCU_B./*@>29a8d*/DutyCycleMHJ1/*@>21acc*/ * /*@>22399*/(real_T)/*@>263f9*/VCU_B./*@>29a90*/Compare_gu;
    /* RelationalOperator: '<S204>/Compare' incorporates:
 *  Constant: '<S204>/Constant'
 */
    /*@>263ff*/VCU_B./*@>29a93*/Compare_eh/*@>7a8a*/ = (/*@>26405*/VCU_B./*@>29a96*/x_clutch_b/*@>7a89*/ > /*@>217b2*/20.0);
    /* Switch: '<S199>/Switch1' incorporates:
 *  Constant: '<S199>/Constant2'
 *  Constant: '<S199>/Constant3'
 */
    /*@>1eca9*/if (/*@>2641d*/VCU_B./*@>29aa2*/Compare_eh) {
        /*@>26441*/VCU_B./*@>29ab4*/Switch1/*@>1ecac*/ = /*@>217b3*/2.0;
    } else {
        /*@>2643b*/VCU_B./*@>29ab1*/Switch1/*@>8736*/ = /*@>217b4*/1.0;
    }
    /* End of Switch: '<S199>/Switch1' */

    /* Product: '<S199>/Product2' */
    /*@>2644d*/VCU_B./*@>29aba*/Product2/*@>7a92*/ = /*@>26453*/VCU_B./*@>29abd*/Product1/*@>21ac8*/ * /*@>26459*/VCU_B./*@>29ac0*/Switch1;
    /* DataTypeConversion: '<S139>/Data Type Conversion15' */
    /*@>26465*/VCU_B./*@>29ac6*/MHJ9_OUT_d/*@>7a95*/ = /*@>2646b*/VCU_B./*@>29ac9*/Product2;
    /* RelationalOperator: '<S206>/Compare' incorporates:
 *  Constant: '<S206>/Constant'
 */
    /*@>2647d*/VCU_B./*@>29ad2*/Compare_m/*@>7a99*/ = (/*@>26483*/VCU_B./*@>29ad5*/Add/*@>7a98*/ > /*@>217b9*/0.0);
    /* Product: '<S199>/Product3' */
    /*@>26495*/VCU_B./*@>29ade*/Product3/*@>7aa0*/ = /*@>2649b*/VCU_B./*@>29ae1*/DutyCycleMHJ1/*@>21ac4*/ * /*@>223ba*/(real_T)/*@>264a1*/VCU_B./*@>29ae4*/Compare_m;
    /* DataTypeConversion: '<S139>/Data Type Conversion14' */
    /*@>264b9*/VCU_B./*@>29af0*/MHJ9_IN_e/*@>7aa3*/ = /*@>264bf*/VCU_B./*@>29af3*/Product3;
    /* RelationalOperator: '<S207>/Compare' incorporates:
 *  Constant: '<S207>/Constant'
 */
    /*@>264d1*/VCU_B./*@>29afc*/Compare_md/*@>7aa7*/ = (/*@>264d7*/VCU_B./*@>29aff*/Add/*@>7aa6*/ < /*@>217bb*/-20.0);
    /* DataTypeConversion: '<S139>/Data Type Conversion13' */
    /*@>264e9*/VCU_B./*@>29b08*/VOVG_OUT_j/*@>7aaa*/ = /*@>264ef*/VCU_B./*@>29b0b*/Compare_md;
    /* DataTypeConversion: '<S139>/Data Type Conversion2' incorporates:
 *  Constant: '<S139>/Constant'
 */
    /*@>26507*/VCU_B./*@>29b17*/LC_ready_bit_e/*@>7aad*/ = /*@>2196b*/true;
    /* DataTypeConversion: '<S139>/Data Type Conversion16' */
    /*@>26519*/VCU_B./*@>29b20*/x_clutch_LC_b/*@>7ab0*/ = /*@>217be*/0.0;
    /* DataTypeConversion: '<S139>/Data Type Conversion17' */
    /*@>26525*/VCU_B./*@>29b26*/LC_Mdes_b/*@>7ab3*/ = /*@>217c0*/0.0;
    /* DataTypeConversion: '<S139>/Data Type Conversion18' */
    /*@>26537*/VCU_B./*@>29b2f*/LC_Fnr_l/*@>7ab6*/ = /*@>217c1*/0.0;
    /* Update for Memory: '<S202>/Memory' */
    /*@>26a76*/VCU_DW./*@>29d36*/Memory_PreviousInput/*@>7bf8*/ = /*@>2653d*/VCU_B./*@>29b32*/LC_dash_bit;
    /* Update for Memory: '<S202>/Memory1' */
    /*@>26a7c*/VCU_DW./*@>29d39*/Memory1_PreviousInput/*@>7bfa*/ = /*@>26555*/VCU_B./*@>29b3e*/Brakelight;
    /* Update for Memory: '<S228>/Memory' */
    /*@>26a82*/VCU_DW./*@>29d3c*/Memory_PreviousInput_j/*@>7bfc*/ = /*@>26567*/VCU_B./*@>29b47*/Logic/*@>24fa7*/[/*@>24fa4*/0];
    /* Update for UnitDelay: '<S200>/Unit Delay1' */
    /*@>26a88*/VCU_DW./*@>29d3f*/UnitDelay1_DSTATE/*@>8747*/ = /*@>26579*/VCU_B./*@>29b50*/Logic_i/*@>24fac*/[/*@>24fa9*/0];
    /* Update for Delay: '<S200>/Delay' */
/*@>1e391*/    for (/*@>28439*/rowIdx = /*@>217ca*/0; /*@>28441*/rowIdx < /*@>217cb*/19; /*@>2843e*/rowIdx/*@>28459*/++) {
        /*@>26a94*/VCU_DW./*@>29d45*/Delay_DSTATE/*@>1c48a*/[/*@>21744*/rowIdx]/*@>8775*/ = /*@>26a9a*/VCU_DW./*@>29d48*/Delay_DSTATE/*@>24fb4*/[/*@>24fb0*/rowIdx/*@>24fae*/ + /*@>24fb1*/1];
    }
    /*@>26a8e*/VCU_DW./*@>29d42*/Delay_DSTATE/*@>878d*/[/*@>21669*/19]/*@>8797*/ = /*@>265a9*/VCU_B./*@>29b68*/LogicalOperator_d;
    /* End of Update for Delay: '<S200>/Delay' */

    /* Update for Memory: '<S217>/Memory' */
    /*@>26aa0*/VCU_DW./*@>29d4b*/Memory_PreviousInput_p/*@>7c00*/ = /*@>265bb*/VCU_B./*@>29b71*/Logic_o/*@>24fb9*/[/*@>24fb6*/0];
    /* Update for UnitDelay: '<S214>/Delay Input1'
 *
 * Block description for '<S214>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>26aa6*/VCU_DW./*@>29d4e*/DelayInput1_DSTATE/*@>87a3*/ = /*@>265c7*/VCU_B./*@>29b77*/STW_shift_down_request;
    /* Update for Delay: '<S200>/Delay1' */
    /*@>26aac*/VCU_DW./*@>29d51*/Delay1_DSTATE/*@>87af*/ = /*@>265d3*/VCU_B./*@>29b7d*/LogicalOperator_d;
    /* Update for Memory: '<S215>/Memory' */
    /*@>26ab2*/VCU_DW./*@>29d54*/Memory_PreviousInput_l/*@>7c04*/ = /*@>265df*/VCU_B./*@>29b83*/Logic_i/*@>24fbe*/[/*@>24fbb*/0];
    /* Update for UnitDelay: '<S200>/Unit Delay4' */
    /*@>26ab8*/VCU_DW./*@>29d57*/UnitDelay4_DSTATE/*@>87bb*/ = /*@>265eb*/VCU_B./*@>29b89*/FixPtRelationalOperator_d;
    /* Update for UnitDelay: '<S201>/Unit Delay' */
    /*@>26ac4*/VCU_DW./*@>29d5d*/UnitDelay_DSTATE/*@>87c7*/ = /*@>265f7*/VCU_B./*@>29b8f*/Logic_iz/*@>24fc3*/[/*@>24fc0*/0];
    /* Update for UnitDelay: '<S200>/Unit Delay2' */
    /*@>26ad0*/VCU_DW./*@>29d63*/UnitDelay2_DSTATE/*@>87d3*/ = /*@>26603*/VCU_B./*@>29b95*/Counter;
    /* Update for Memory: '<S216>/Memory' */
    /*@>26adc*/VCU_DW./*@>29d69*/Memory_PreviousInput_a/*@>7c09*/ = /*@>2660f*/VCU_B./*@>29b9b*/Logic_iy/*@>24fcd*/[/*@>24fca*/0];
    /* Update for UnitDelay: '<S222>/Delay Input1'
 *
 * Block description for '<S222>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>26ae8*/VCU_DW./*@>29d6f*/DelayInput1_DSTATE_g/*@>87df*/ = /*@>2661b*/VCU_B./*@>29ba1*/STW_shift_up_request;
    /* Update for UnitDelay: '<S223>/Delay Input1'
 *
 * Block description for '<S223>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>26aee*/VCU_DW./*@>29d72*/DelayInput1_DSTATE_ga/*@>87eb*/ = /*@>26621*/VCU_B./*@>29ba4*/Add_j;
    /* Update for UnitDelay: '<S200>/Unit Delay' */
    /*@>26af4*/VCU_DW./*@>29d75*/UnitDelay_DSTATE_b/*@>87f7*/ = /*@>26627*/VCU_B./*@>29ba7*/Logic_iy/*@>24fd7*/[/*@>24fd4*/0];
    /* Update for UnitDelay: '<S201>/Unit Delay1' */
    /*@>26b0c*/VCU_DW./*@>29d81*/UnitDelay1_DSTATE_k/*@>8803*/ = /*@>26633*/VCU_B./*@>29bad*/Counter_d;
    /* Update for Memory: '<S225>/Memory' */
    /*@>26b18*/VCU_DW./*@>29d87*/Memory_PreviousInput_al/*@>7c0f*/ = /*@>2663f*/VCU_B./*@>29bb3*/Logic_iz/*@>24fe9*/[/*@>24fe6*/0];
    /* Update for UnitDelay: '<S224>/Delay Input1'
 *
 * Block description for '<S224>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>26b24*/VCU_DW./*@>29d8d*/DelayInput1_DSTATE_f/*@>880f*/ = /*@>2664b*/VCU_B./*@>29bb9*/Add_j;
    /* Update for Memory: '<S226>/Memory' */
    /*@>26b30*/VCU_DW./*@>29d93*/Memory_PreviousInput_k/*@>7c12*/ = /*@>26657*/VCU_B./*@>29bbf*/Logic_e/*@>24fee*/[/*@>24feb*/0];
    /* Update for UnitDelay: '<S213>/Delay Input1'
 *
 * Block description for '<S213>/Delay Input1':
 *  
 *  Store in Global RAM
 */
    /*@>26b3c*/VCU_DW./*@>29d99*/DelayInput1_DSTATE_p/*@>881b*/ = /*@>26663*/VCU_B./*@>29bc5*/Add_c;
}
/* End of Outputs for SubSystem: '<S7>/semi_auto_jr18' */

/* RelationalOperator: '<S135>/Compare' incorporates:
 *  Constant: '<S135>/Constant'
 */
/*@>256a3*/VCU_B./*@>293e5*/Compare_j/*@>749c*/ = (/*@>256a9*/VCU_B./*@>293e8*/DataTypeConversion_cg/*@>749b*/ == /*@>21765*/2);
/* Outputs for Enabled SubSystem: '<S7>/driver_jr18' incorporates:
 *  EnablePort: '<S138>/Enable'
 */
/*@>749e*/if (/*@>256d3*/VCU_B./*@>293fd*/Compare_j) {
    /* MinMax: '<S191>/MinMax' */
    /*@>225bf*/if (/*@>256f7*/VCU_B./*@>2940f*/x_clutch_STW/*@>225b8*/ > /*@>22762*/0.0) {
        /*@>25721*/VCU_B./*@>29424*/MinMax_l/*@>225c1*/ = /*@>25727*/VCU_B./*@>29427*/x_clutch_STW;
    } else {
        /*@>2571b*/VCU_B./*@>29421*/MinMax_l/*@>225be*/ = /*@>22766*/0.0;
    }
    /* End of MinMax: '<S191>/MinMax' */

    /* RelationalOperator: '<S194>/Compare' incorporates:
 *  Constant: '<S194>/Constant'
 */
    /*@>25781*/VCU_B./*@>29454*/Compare_bd/*@>7c51*/ = (/*@>25787*/VCU_B./*@>29457*/MinMax_l/*@>7c50*/ > /*@>2176a*/1.0);
    /* DataTypeConversion: '<S138>/Data Type Conversion12' */
    /*@>257ab*/VCU_B./*@>29469*/VOVG_IN_c/*@>7c54*/ = /*@>257b1*/VCU_B./*@>2946c*/Compare_bd;
    /* Sum: '<S191>/Add' */
    /*@>257ff*/VCU_B./*@>29493*/Add_l/*@>a858*/ = /*@>25805*/VCU_B./*@>29496*/MinMax_l/*@>a855*/ - /*@>2580b*/VCU_B./*@>29499*/x_clutch_b;
    /* RelationalOperator: '<S196>/Compare' incorporates:
 *  Constant: '<S196>/Constant'
 */
    /*@>25829*/VCU_B./*@>294a8*/Compare_e5/*@>7c5d*/ = (/*@>2582f*/VCU_B./*@>294ab*/Add_l/*@>7c5c*/ < /*@>2176b*/-0.5);
    /* Lookup_n-D: '<S191>/Duty Cycle MHJ9' */
    /*@>25847*/VCU_B./*@>294b7*/DutyCycleMHJ9/*@>a930*/ = /*@>24241*/look1_binlxpw(/*@>2584d*/VCU_B./*@>294ba*/Add_l, /*@>2672c*/VCU_ConstP./*@>29bfe*/pooled29, /*@>26732*/VCU_ConstP./*@>29c01*/pooled28, /*@>216ca*/14U);
    /* Product: '<S191>/Product1' */
    /*@>2589b*/VCU_B./*@>294e1*/Product1_p/*@>7c6b*/ = /*@>258a1*/VCU_B./*@>294e4*/DutyCycleMHJ9/*@>21ac0*/ * /*@>21f3b*/(real_T)/*@>258a7*/VCU_B./*@>294e7*/Compare_e5;
    /* RelationalOperator: '<S195>/Compare' incorporates:
 *  Constant: '<S195>/Constant'
 */
    /*@>258bf*/VCU_B./*@>294f3*/Compare_p/*@>7c6f*/ = (/*@>258c5*/VCU_B./*@>294f6*/x_clutch_b/*@>7c6e*/ > /*@>2176c*/20.0);
    /* Switch: '<S191>/Switch1' incorporates:
 *  Constant: '<S191>/Constant2'
 *  Constant: '<S191>/Constant3'
 */
    /*@>1ec72*/if (/*@>258dd*/VCU_B./*@>29502*/Compare_p) {
        /*@>25925*/VCU_B./*@>29526*/Switch1_e/*@>1ec75*/ = /*@>2176d*/2.0;
    } else {
        /*@>2591f*/VCU_B./*@>29523*/Switch1_e/*@>8851*/ = /*@>2176e*/1.0;
    }
    /* End of Switch: '<S191>/Switch1' */

    /* Product: '<S191>/Product2' */
    /*@>25955*/VCU_B./*@>2953e*/Product2_p/*@>7c77*/ = /*@>2595b*/VCU_B./*@>29541*/Product1_p/*@>21abc*/ * /*@>25961*/VCU_B./*@>29544*/Switch1_e;
    /* DataTypeConversion: '<S138>/Data Type Conversion15' */
    /*@>259a9*/VCU_B./*@>29568*/MHJ9_OUT_k/*@>7c7a*/ = /*@>259af*/VCU_B./*@>2956b*/Product2_p;
    /* RelationalOperator: '<S197>/Compare' incorporates:
 *  Constant: '<S197>/Constant'
 */
    /*@>259c1*/VCU_B./*@>29574*/Compare_gz/*@>7c7e*/ = (/*@>259c7*/VCU_B./*@>29577*/Add_l/*@>7c7d*/ > /*@>2176f*/0.0);
    /* Product: '<S191>/Product3' */
    /*@>259df*/VCU_B./*@>29583*/Product3_d/*@>7c85*/ = /*@>259e5*/VCU_B./*@>29586*/DutyCycleMHJ9/*@>21ab8*/ * /*@>21f9d*/(real_T)/*@>259eb*/VCU_B./*@>29589*/Compare_gz;
    /* DataTypeConversion: '<S138>/Data Type Conversion14' */
    /*@>25a2d*/VCU_B./*@>295aa*/MHJ9_IN_p/*@>7c88*/ = /*@>25a33*/VCU_B./*@>295ad*/Product3_d;
    /* RelationalOperator: '<S198>/Compare' incorporates:
 *  Constant: '<S198>/Constant'
 */
    /*@>25a4b*/VCU_B./*@>295b9*/Compare_bh/*@>7c8c*/ = (/*@>25a51*/VCU_B./*@>295bc*/Add_l/*@>7c8b*/ < /*@>21770*/-20.0);
    /* DataTypeConversion: '<S138>/Data Type Conversion13' */
    /*@>25a69*/VCU_B./*@>295c8*/VOVG_OUT_o/*@>7c8f*/ = /*@>25a6f*/VCU_B./*@>295cb*/Compare_bh;
    /* RelationalOperator: '<S192>/Compare' incorporates:
 *  Constant: '<S192>/Constant'
 */
    /*@>25abd*/VCU_B./*@>295f2*/Compare_g5/*@>7c93*/ = (/*@>25ac3*/VCU_B./*@>295f5*/DataTypeConversion3/*@>7c92*/ < /*@>21771*/3.0);
    /* Logic: '<S138>/Logical Operator1' */
    /*@>25ad5*/VCU_B./*@>295fe*/LogicalOperator1_p/*@>7c99*/ = ((/*@>25adb*/VCU_B./*@>29601*/STW_shift_up_request/*@>21ab5*/ != /*@>21ab3*/0.0)/*@>7c98*/ && /*@>25ae1*/VCU_B./*@>29604*/Compare_g5);
    /* DataTypeConversion: '<S138>/Data Type Conversion8' */
    /*@>25af9*/VCU_B./*@>29610*/VOVG_ShiftUp_o/*@>7c9c*/ = /*@>25aff*/VCU_B./*@>29613*/LogicalOperator1_p;
    /* RelationalOperator: '<S193>/Compare' incorporates:
 *  Constant: '<S193>/Constant'
 */
    /*@>25b47*/VCU_B./*@>29637*/Compare_mz/*@>7ca0*/ = (/*@>25b4d*/VCU_B./*@>2963a*/DataTypeConversion3/*@>7c9f*/ >= /*@>21772*/0.0);
    /* Logic: '<S138>/Logical Operator' */
    /*@>25b5f*/VCU_B./*@>29643*/LogicalOperator_e/*@>7ca6*/ = (/*@>25b65*/VCU_B./*@>29646*/Compare_mz/*@>7ca5*/ && (/*@>25b6b*/VCU_B./*@>29649*/STW_shift_down_request/*@>21ab1*/ != /*@>21aaf*/0.0));
    /* DataTypeConversion: '<S138>/Data Type Conversion10' */
    /*@>25b8f*/VCU_B./*@>2965b*/VOVG_ShiftDown_f/*@>7ca9*/ = /*@>25b95*/VCU_B./*@>2965e*/LogicalOperator_e;
    /* DataTypeConversion: '<S138>/Data Type Conversion11' */
    /*@>25bd7*/VCU_B./*@>2967f*/Ignition_Cut_h/*@>7cac*/ = /*@>21773*/0.0;
    /* DataTypeConversion: '<S138>/Data Type Conversion16' */
    /*@>25be9*/VCU_B./*@>29688*/x_clutch_LC_i/*@>7caf*/ = /*@>21774*/0.0;
    /* DataTypeConversion: '<S138>/Data Type Conversion17' */
    /*@>25c01*/VCU_B./*@>29694*/LC_Mdes_f/*@>7cb2*/ = /*@>21775*/0.0;
    /* DataTypeConversion: '<S138>/Data Type Conversion18' */
    /*@>25c49*/VCU_B./*@>296b8*/LC_Fnr_f/*@>7cb5*/ = /*@>21776*/0.0;
}
/* End of Outputs for SubSystem: '<S7>/driver_jr18' */

/* MultiPortSwitch: '<S7>/Multiport Switch' */
/*@>74a3*/switch (/*@>25715*/VCU_B./*@>2941e*/DataTypeConversion_cg) {
  case /*@>210fe*/1:
    /*@>2574b*/VCU_B./*@>29439*/VOVG_ShiftUp/*@>74a7*/ = /*@>25751*/VCU_B./*@>2943c*/VOVG_ShiftUp_k;
    break;
  case /*@>210ff*/2:
    /*@>25757*/VCU_B./*@>2943f*/VOVG_ShiftUp/*@>74a9*/ = /*@>2575d*/VCU_B./*@>29442*/VOVG_ShiftUp_o;
    break;
  case /*@>21100*/3:
    /*@>25763*/VCU_B./*@>29445*/VOVG_ShiftUp/*@>74ab*/ = /*@>25769*/VCU_B./*@>29448*/VOVG_ShiftUp_oi;
    break;
  default:
    /*@>2573f*/VCU_B./*@>29433*/VOVG_ShiftUp/*@>74a5*/ = /*@>25745*/VCU_B./*@>29436*/VOVG_ShiftUp_k;
    break;
}
/*@>74ae*/switch (/*@>257a5*/VCU_B./*@>29466*/DataTypeConversion_cg) {
  case /*@>21113*/1:
    /*@>257db*/VCU_B./*@>29481*/LC_Fnr/*@>74b2*/ = /*@>257e1*/VCU_B./*@>29484*/LC_Fnr_l;
    break;
  case /*@>21114*/2:
    /*@>257e7*/VCU_B./*@>29487*/LC_Fnr/*@>74b4*/ = /*@>257ed*/VCU_B./*@>2948a*/LC_Fnr_f;
    break;
  case /*@>21115*/3:
    /*@>257f3*/VCU_B./*@>2948d*/LC_Fnr/*@>74b6*/ = /*@>257f9*/VCU_B./*@>29490*/LC_Fnr_lv;
    break;
  default:
    /*@>257cf*/VCU_B./*@>2947b*/LC_Fnr/*@>74b0*/ = /*@>257d5*/VCU_B./*@>2947e*/LC_Fnr_l;
    break;
}
/*@>74b9*/switch (/*@>25841*/VCU_B./*@>294b4*/DataTypeConversion_cg) {
  case /*@>21128*/1:
    /*@>25877*/VCU_B./*@>294cf*/VOVG_ShiftDown/*@>74bd*/ = /*@>2587d*/VCU_B./*@>294d2*/VOVG_ShiftDown_m;
    break;
  case /*@>21129*/2:
    /*@>25883*/VCU_B./*@>294d5*/VOVG_ShiftDown/*@>74bf*/ = /*@>25889*/VCU_B./*@>294d8*/VOVG_ShiftDown_f;
    break;
  case /*@>2112a*/3:
    /*@>2588f*/VCU_B./*@>294db*/VOVG_ShiftDown/*@>74c1*/ = /*@>25895*/VCU_B./*@>294de*/VOVG_ShiftDown_a;
    break;
  default:
    /*@>2586b*/VCU_B./*@>294c9*/VOVG_ShiftDown/*@>74bb*/ = /*@>25871*/VCU_B./*@>294cc*/VOVG_ShiftDown_m;
    break;
}
/*@>74c4*/switch (/*@>258d7*/VCU_B./*@>294ff*/DataTypeConversion_cg) {
  case /*@>2113d*/1:
    /*@>258fb*/VCU_B./*@>29511*/Ignition_Cut/*@>74c8*/ = /*@>25901*/VCU_B./*@>29514*/Ignition_Cut_o;
    break;
  case /*@>2113e*/2:
    /*@>25907*/VCU_B./*@>29517*/Ignition_Cut/*@>74ca*/ = /*@>2590d*/VCU_B./*@>2951a*/Ignition_Cut_h;
    break;
  case /*@>2113f*/3:
    /*@>25913*/VCU_B./*@>2951d*/Ignition_Cut/*@>74cc*/ = /*@>25919*/VCU_B./*@>29520*/Ignition_Cut_d;
    break;
  default:
    /*@>258ef*/VCU_B./*@>2950b*/Ignition_Cut/*@>74c6*/ = /*@>258f5*/VCU_B./*@>2950e*/Ignition_Cut_o;
    break;
}
/*@>74cf*/switch (/*@>2594f*/VCU_B./*@>2953b*/DataTypeConversion_cg) {
  case /*@>21152*/1:
    /*@>25985*/VCU_B./*@>29556*/VOVG_IN/*@>74d3*/ = /*@>2598b*/VCU_B./*@>29559*/VOVG_IN_h;
    break;
  case /*@>21153*/2:
    /*@>25991*/VCU_B./*@>2955c*/VOVG_IN/*@>74d5*/ = /*@>25997*/VCU_B./*@>2955f*/VOVG_IN_c;
    break;
  case /*@>21154*/3:
    /*@>2599d*/VCU_B./*@>29562*/VOVG_IN/*@>74d7*/ = /*@>259a3*/VCU_B./*@>29565*/VOVG_IN_g;
    break;
  default:
    /*@>25979*/VCU_B./*@>29550*/VOVG_IN/*@>74d1*/ = /*@>2597f*/VCU_B./*@>29553*/VOVG_IN_h;
    break;
}
/*@>74da*/switch (/*@>259d9*/VCU_B./*@>29580*/DataTypeConversion_cg) {
  case /*@>21167*/1:
    /*@>25a09*/VCU_B./*@>29598*/VOVG_OUT/*@>74de*/ = /*@>25a0f*/VCU_B./*@>2959b*/VOVG_OUT_j;
    break;
  case /*@>21168*/2:
    /*@>25a15*/VCU_B./*@>2959e*/VOVG_OUT/*@>74e0*/ = /*@>25a1b*/VCU_B./*@>295a1*/VOVG_OUT_o;
    break;
  case /*@>21169*/3:
    /*@>25a21*/VCU_B./*@>295a4*/VOVG_OUT/*@>74e2*/ = /*@>25a27*/VCU_B./*@>295a7*/VOVG_OUT_b;
    break;
  default:
    /*@>259fd*/VCU_B./*@>29592*/VOVG_OUT/*@>74dc*/ = /*@>25a03*/VCU_B./*@>29595*/VOVG_OUT_j;
    break;
}
/*@>74e5*/switch (/*@>25a63*/VCU_B./*@>295c5*/DataTypeConversion_cg) {
  case /*@>2117c*/1:
    /*@>25a99*/VCU_B./*@>295e0*/MHJ9_IN/*@>74e9*/ = /*@>25a9f*/VCU_B./*@>295e3*/MHJ9_IN_e;
    break;
  case /*@>2117d*/2:
    /*@>25aa5*/VCU_B./*@>295e6*/MHJ9_IN/*@>74eb*/ = /*@>25aab*/VCU_B./*@>295e9*/MHJ9_IN_p;
    break;
  case /*@>2117e*/3:
    /*@>25ab1*/VCU_B./*@>295ec*/MHJ9_IN/*@>74ed*/ = /*@>25ab7*/VCU_B./*@>295ef*/MHJ9_IN_h;
    break;
  default:
    /*@>25a8d*/VCU_B./*@>295da*/MHJ9_IN/*@>74e7*/ = /*@>25a93*/VCU_B./*@>295dd*/MHJ9_IN_e;
    break;
}
/*@>74f0*/switch (/*@>25af3*/VCU_B./*@>2960d*/DataTypeConversion_cg) {
  case /*@>21191*/1:
    /*@>25b23*/VCU_B./*@>29625*/MHJ9_OUT/*@>74f4*/ = /*@>25b29*/VCU_B./*@>29628*/MHJ9_OUT_d;
    break;
  case /*@>21192*/2:
    /*@>25b2f*/VCU_B./*@>2962b*/MHJ9_OUT/*@>74f6*/ = /*@>25b35*/VCU_B./*@>2962e*/MHJ9_OUT_k;
    break;
  case /*@>21193*/3:
    /*@>25b3b*/VCU_B./*@>29631*/MHJ9_OUT/*@>74f8*/ = /*@>25b41*/VCU_B./*@>29634*/MHJ9_OUT_d5;
    break;
  default:
    /*@>25b17*/VCU_B./*@>2961f*/MHJ9_OUT/*@>74f2*/ = /*@>25b1d*/VCU_B./*@>29622*/MHJ9_OUT_d;
    break;
}
/*@>74fb*/switch (/*@>25b89*/VCU_B./*@>29658*/DataTypeConversion_cg) {
  case /*@>211a6*/1:
    /*@>25bb3*/VCU_B./*@>2966d*/x_clutch_LC/*@>74ff*/ = /*@>25bb9*/VCU_B./*@>29670*/x_clutch_LC_b;
    break;
  case /*@>211a7*/2:
    /*@>25bbf*/VCU_B./*@>29673*/x_clutch_LC/*@>7501*/ = /*@>25bc5*/VCU_B./*@>29676*/x_clutch_LC_i;
    break;
  case /*@>211a8*/3:
    /*@>25bcb*/VCU_B./*@>29679*/x_clutch_LC/*@>7503*/ = /*@>25bd1*/VCU_B./*@>2967c*/x_clutch_LC_bg;
    break;
  default:
    /*@>25ba7*/VCU_B./*@>29667*/x_clutch_LC/*@>74fd*/ = /*@>25bad*/VCU_B./*@>2966a*/x_clutch_LC_b;
    break;
}
/*@>7506*/switch (/*@>25bfb*/VCU_B./*@>29691*/DataTypeConversion_cg) {
  case /*@>211bb*/1:
    /*@>25c25*/VCU_B./*@>296a6*/LC_Mdes/*@>750a*/ = /*@>25c2b*/VCU_B./*@>296a9*/LC_Mdes_b;
    break;
  case /*@>211bc*/2:
    /*@>25c31*/VCU_B./*@>296ac*/LC_Mdes/*@>750c*/ = /*@>25c37*/VCU_B./*@>296af*/LC_Mdes_f;
    break;
  case /*@>211bd*/3:
    /*@>25c3d*/VCU_B./*@>296b2*/LC_Mdes/*@>750e*/ = /*@>25c43*/VCU_B./*@>296b5*/LC_Mdes_o;
    break;
  default:
    /*@>25c19*/VCU_B./*@>296a0*/LC_Mdes/*@>7508*/ = /*@>25c1f*/VCU_B./*@>296a3*/LC_Mdes_b;
    break;
}
/* End of MultiPortSwitch: '<S7>/Multiport Switch' */

/* MultiPortSwitch: '<S7>/Multiport Switch1' */
/*@>7511*/switch (/*@>25c73*/VCU_B./*@>296cd*/DataTypeConversion_cg) {
  case /*@>211d0*/1:
    /*@>25c97*/VCU_B./*@>296df*/LC_active_bit/*@>7515*/ = /*@>25c9d*/VCU_B./*@>296e2*/LC_active_bit_f;
    break;
  case /*@>211d1*/2:
    /*@>25ca3*/VCU_B./*@>296e5*/LC_active_bit/*@>7517*/ = /*@>266c4*/VCU_ConstB./*@>29bf2*/LC_active_bit;
    break;
  case /*@>211d2*/3:
    /*@>25ca9*/VCU_B./*@>296e8*/LC_active_bit/*@>7519*/ = /*@>25caf*/VCU_B./*@>296eb*/LC_active_bit_a;
    break;
  default:
    /*@>25c8b*/VCU_B./*@>296d9*/LC_active_bit/*@>7513*/ = /*@>25c91*/VCU_B./*@>296dc*/LC_active_bit_f;
    break;
}
/*@>751c*/switch (/*@>25ceb*/VCU_B./*@>29709*/DataTypeConversion_cg) {
  case /*@>211e5*/1:
    /*@>25d0f*/VCU_B./*@>2971b*/LC_ready_bit/*@>7520*/ = /*@>25d15*/VCU_B./*@>2971e*/LC_ready_bit_e;
    break;
  case /*@>211e6*/2:
    /*@>25d1b*/VCU_B./*@>29721*/LC_ready_bit/*@>7522*/ = /*@>266ca*/VCU_ConstB./*@>29bf5*/LC_ready_bit;
    break;
  case /*@>211e7*/3:
    /*@>25d21*/VCU_B./*@>29724*/LC_ready_bit/*@>7524*/ = /*@>25d27*/VCU_B./*@>29727*/LC_ready_bit_p;
    break;
  default:
    /*@>25d03*/VCU_B./*@>29715*/LC_ready_bit/*@>751e*/ = /*@>25d09*/VCU_B./*@>29718*/LC_ready_bit_e;
    break;
}
/* End of MultiPortSwitch: '<S7>/Multiport Switch1' */





      
  


        
    
      
          }
    
  



                








  


  


  


  

