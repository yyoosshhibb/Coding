/* 
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * 
 * File: Subsystem_Brakelight.c
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
/*@>c6e0*/VCU_B./*@>c876*/RelationalOperator_c/*@>6a7a*/ = (/*@>c6e6*/VCU_B./*@>c879*/Add1_m/*@>6a79*/ > /*@>c464*/5.0);
/* RelationalOperator: '<S1>/Relational Operator1' incorporates:
 *  Constant: '<S1>/Constant'
 */
/*@>c6ec*/VCU_B./*@>c87c*/RelationalOperator1_b/*@>6a7e*/ = (/*@>c465*/5.0/*@>6a7d*/ < /*@>c6f2*/VCU_B./*@>c87f*/Sensitivity1538mVbar);
/* Logic: '<S1>/Logical Operator' */
/*@>c6f8*/VCU_B./*@>c882*/Brakelight/*@>6a84*/ = (/*@>c6fe*/VCU_B./*@>c885*/RelationalOperator_c/*@>6a83*/ || /*@>c704*/VCU_B./*@>c888*/RelationalOperator1_b);





      
  


        
    
      
          }
    
  



                








  


  


  


  

