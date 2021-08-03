/* 
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * 
 * File: Subsystem_PumpAndFans.c
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


    

        #include "Subsystem_PumpAndFans.h"
          /* Include model header file for global data */
              #include "VCU.h"

            #include "VCU_private.h"





  


  


  


  


  


  


  


  


  


  


  


  


  


  


    
       
    
  

          /* Output and update for atomic system: '<Root>/Pump and Fans' */
      
              
  
        void FUNC_PumpAndFans(void)
  {
  
                      
      
      
      
  



                          
      
  



                                /* Switch: '<S120>/Switch' incorporates:
 *  Switch: '<S120>/Switch1'
 */
/*@>731e*/if (/*@>17d3f*/VCU_B./*@>17fd9*/Fans_dash_bit) {
    /* Saturate: '<S120>/Saturation' incorporates:
 *  Constant: '<S120>/Constant'
 */
    /*@>17d4b*/VCU_B./*@>17fdf*/Switch_j/*@>7316*/ = /*@>178a1*/1.0;
} else {
    /*@>734d*/if (/*@>17d45*/VCU_B./*@>17fdc*/TeleActiveBit/*@>733f*/ >= /*@>178a0*/1.0) {
        /* Switch: '<S120>/Switch1' */
        /*@>17d63*/VCU_B./*@>17feb*/Switch1_d/*@>7345*/ = /*@>17d69*/VCU_B./*@>17fee*/Add1_ik;
    } else {
        /* Lookup_n-D: '<S120>/2-D Lookup Table' incorporates:
 *  Switch: '<S120>/Switch1'
 */
        /*@>17d51*/VCU_B./*@>17fe2*/uDLookupTable/*@>a195*/ = /*@>17ae4*/look2_binlxpw(/*@>17d57*/VCU_B./*@>17fe5*/Add1_iu, /*@>17d5d*/VCU_B./*@>17fe8*/Gain4, /*@>17e02*/VCU_ConstP./*@>1800f*/uDLookupTable_bp01Data_h, /*@>17e08*/VCU_ConstP./*@>18012*/uDLookupTable_bp02Data, /*@>17e0e*/VCU_ConstP./*@>18015*/uDLookupTable_tableData, /*@>17e14*/VCU_ConstP./*@>18018*/uDLookupTable_maxIndex, /*@>17894*/7U);
        /* Switch: '<S120>/Switch1' */
        /*@>17d6f*/VCU_B./*@>17ff1*/Switch1_d/*@>734b*/ = /*@>17d75*/VCU_B./*@>17ff4*/uDLookupTable;
    }
    /* Saturate: '<S120>/Saturation' */
    /*@>17d81*/VCU_B./*@>17ffa*/Switch_j/*@>731c*/ = /*@>17d87*/VCU_B./*@>17ffd*/Switch1_d;
}
/* End of Switch: '<S120>/Switch' */

/* Saturate: '<S120>/Saturation' */
/*@>1797a*/if (/*@>17d7b*/VCU_B./*@>17ff7*/Switch_j/*@>17975*/ > /*@>17a04*/0.9999) {
    /*@>17d93*/VCU_B./*@>18003*/Saturation/*@>1797c*/ = /*@>17a0a*/0.9999;
} else /*@>1797d*/if (/*@>17d8d*/VCU_B./*@>18000*/Switch_j/*@>17972*/ < /*@>17a06*/0.0) {
    /*@>17da5*/VCU_B./*@>1800c*/Saturation/*@>1797f*/ = /*@>17a08*/0.0;
} else {
    /*@>17d99*/VCU_B./*@>18006*/Saturation/*@>17979*/ = /*@>17d9f*/VCU_B./*@>18009*/Switch_j;
}





      
  


        
    
      
          }
    
  



                








  


  


  


  

