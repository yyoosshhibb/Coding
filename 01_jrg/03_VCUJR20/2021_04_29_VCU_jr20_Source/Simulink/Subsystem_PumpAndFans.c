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
 * C/C++ source code generated on  : Thu Apr 29 19:26:38 2021
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
/*@>72e5*/if (/*@>17aac*/VCU_B./*@>17d46*/Fans_dash_bit) {
    /* Saturate: '<S122>/Saturation' incorporates:
 *  Constant: '<S122>/Constant'
 */
    /*@>17ab8*/VCU_B./*@>17d4c*/Switch_j/*@>72dd*/ = /*@>17620*/1.0;
} else {
    /*@>7314*/if (/*@>17ab2*/VCU_B./*@>17d49*/TeleActiveBit/*@>7306*/ >= /*@>1761f*/1.0) {
        /* Switch: '<S122>/Switch1' */
        /*@>17ad0*/VCU_B./*@>17d58*/Switch1_d/*@>730c*/ = /*@>17ad6*/VCU_B./*@>17d5b*/Add1_ik;
    } else {
        /* Lookup_n-D: '<S122>/2-D Lookup Table' incorporates:
 *  Switch: '<S122>/Switch1'
 */
        /*@>17abe*/VCU_B./*@>17d4f*/uDLookupTable/*@>a0ff*/ = /*@>17863*/look2_binlxpw(/*@>17ac4*/VCU_B./*@>17d52*/Add1_iu, /*@>17aca*/VCU_B./*@>17d55*/Gain4, /*@>17b76*/VCU_ConstP./*@>17d7c*/uDLookupTable_bp01Data_h, /*@>17b7c*/VCU_ConstP./*@>17d7f*/uDLookupTable_bp02Data, /*@>17b82*/VCU_ConstP./*@>17d82*/uDLookupTable_tableData, /*@>17b88*/VCU_ConstP./*@>17d85*/uDLookupTable_maxIndex, /*@>17613*/7U);
        /* Switch: '<S122>/Switch1' */
        /*@>17adc*/VCU_B./*@>17d5e*/Switch1_d/*@>7312*/ = /*@>17ae2*/VCU_B./*@>17d61*/uDLookupTable;
    }
    /* Saturate: '<S122>/Saturation' */
    /*@>17aee*/VCU_B./*@>17d67*/Switch_j/*@>72e3*/ = /*@>17af4*/VCU_B./*@>17d6a*/Switch1_d;
}
/* End of Switch: '<S122>/Switch' */

/* Saturate: '<S122>/Saturation' */
/*@>176f9*/if (/*@>17ae8*/VCU_B./*@>17d64*/Switch_j/*@>176f4*/ > /*@>17783*/0.9999) {
    /*@>17b00*/VCU_B./*@>17d70*/Saturation_b/*@>176fb*/ = /*@>17789*/0.9999;
} else /*@>176fc*/if (/*@>17afa*/VCU_B./*@>17d6d*/Switch_j/*@>176f1*/ < /*@>17785*/0.0) {
    /*@>17b12*/VCU_B./*@>17d79*/Saturation_b/*@>176fe*/ = /*@>17787*/0.0;
} else {
    /*@>17b06*/VCU_B./*@>17d73*/Saturation_b/*@>176f8*/ = /*@>17b0c*/VCU_B./*@>17d76*/Switch_j;
}





      
  


        
    
      
          }
    
  



                








  


  


  


  

