/* 
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * 
 * File: Subsystem_PumpAndFans.c
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


    

        #include "Subsystem_PumpAndFans.h"
          /* Include model header file for global data */
              #include "VCU.h"

            #include "VCU_private.h"





  


  


  


  


  


  


  


  


  


  


  


  


  


  


    
       
    
  

          /* Output and update for atomic system: '<Root>/Pump and Fans' */
      
              
  
        void FUNC_PumpAndFans(void)
  {
  
                      
      
      
      
  



                          
      
  



                                /* Switch: '<S122>/Switch' incorporates:
 *  Switch: '<S122>/Switch1'
 */
/*@>7331*/if (/*@>17bfa*/VCU_B./*@>17e94*/Fans_dash_bit) {
    /* Saturate: '<S122>/Saturation' incorporates:
 *  Constant: '<S122>/Constant'
 */
    /*@>17c06*/VCU_B./*@>17e9a*/Switch_j/*@>7329*/ = /*@>1776c*/1.0;
} else {
    /*@>7360*/if (/*@>17c00*/VCU_B./*@>17e97*/TeleActiveBit/*@>7352*/ >= /*@>1776b*/1.0) {
        /* Switch: '<S122>/Switch1' */
        /*@>17c1e*/VCU_B./*@>17ea6*/Switch1_d/*@>7358*/ = /*@>17c24*/VCU_B./*@>17ea9*/Add1_ik;
    } else {
        /* Lookup_n-D: '<S122>/2-D Lookup Table' incorporates:
 *  Switch: '<S122>/Switch1'
 */
        /*@>17c0c*/VCU_B./*@>17e9d*/uDLookupTable/*@>a160*/ = /*@>179af*/look2_binlxpw(/*@>17c12*/VCU_B./*@>17ea0*/Add1_iu, /*@>17c18*/VCU_B./*@>17ea3*/Gain4, /*@>17cc4*/VCU_ConstP./*@>17eca*/uDLookupTable_bp01Data_h, /*@>17cca*/VCU_ConstP./*@>17ecd*/uDLookupTable_bp02Data, /*@>17cd0*/VCU_ConstP./*@>17ed0*/uDLookupTable_tableData, /*@>17cd6*/VCU_ConstP./*@>17ed3*/uDLookupTable_maxIndex, /*@>1775f*/7U);
        /* Switch: '<S122>/Switch1' */
        /*@>17c2a*/VCU_B./*@>17eac*/Switch1_d/*@>735e*/ = /*@>17c30*/VCU_B./*@>17eaf*/uDLookupTable;
    }
    /* Saturate: '<S122>/Saturation' */
    /*@>17c3c*/VCU_B./*@>17eb5*/Switch_j/*@>732f*/ = /*@>17c42*/VCU_B./*@>17eb8*/Switch1_d;
}
/* End of Switch: '<S122>/Switch' */

/* Saturate: '<S122>/Saturation' */
/*@>17845*/if (/*@>17c36*/VCU_B./*@>17eb2*/Switch_j/*@>17840*/ > /*@>178cf*/0.9999) {
    /*@>17c4e*/VCU_B./*@>17ebe*/Saturation_b/*@>17847*/ = /*@>178d5*/0.9999;
} else /*@>17848*/if (/*@>17c48*/VCU_B./*@>17ebb*/Switch_j/*@>1783d*/ < /*@>178d1*/0.0) {
    /*@>17c60*/VCU_B./*@>17ec7*/Saturation_b/*@>1784a*/ = /*@>178d3*/0.0;
} else {
    /*@>17c54*/VCU_B./*@>17ec1*/Saturation_b/*@>17844*/ = /*@>17c5a*/VCU_B./*@>17ec4*/Switch_j;
}





      
  


        
    
      
          }
    
  



                








  


  


  


  

