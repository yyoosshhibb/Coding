/* 
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * 
 * File: Subsystem_Brakelight.c
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


    

        #include "Subsystem_Brakelight.h"
          /* Include model header file for global data */
              #include "VCU.h"

            #include "VCU_private.h"





  


  


  


  


  


  


  


  


  


  


  


  


  


  


    
       
    
  

          /* Output and update for atomic system: '<Root>/Brakelight' */
      
              
  
        void FUNC_Brakelight(void)
  {
  
                      
      
      
      
  



                          
      
  



                                /* RelationalOperator: '<S1>/Relational Operator' incorporates:
 *  Constant: '<S1>/Constant'
 */
/*@>c966*/VCU_B./*@>cafc*/RelationalOperator_c/*@>6a8b*/ = (/*@>c96c*/VCU_B./*@>caff*/Add1_m/*@>6a8a*/ > /*@>c6da*/5.0);
/* RelationalOperator: '<S1>/Relational Operator1' incorporates:
 *  Constant: '<S1>/Constant'
 */
/*@>c972*/VCU_B./*@>cb02*/RelationalOperator1_b/*@>6a8f*/ = (/*@>c6db*/5.0/*@>6a8e*/ < /*@>c978*/VCU_B./*@>cb05*/Sensitivity1538mVbar);
/* Logic: '<S1>/Logical Operator' */
/*@>c97e*/VCU_B./*@>cb08*/Brakelight_f/*@>6a95*/ = (/*@>c984*/VCU_B./*@>cb0b*/RelationalOperator_c/*@>6a94*/ || /*@>c98a*/VCU_B./*@>cb0e*/RelationalOperator1_b);





      
  


        
    
      
          }
    
  



                








  


  


  


  

