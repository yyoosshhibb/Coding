/* 
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * 
 * File: Subsystem_Safety.c
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


    

        #include "Subsystem_Safety.h"
          /* Include model header file for global data */
              #include "VCU.h"

            #include "VCU_private.h"





  


  


  


  


  


  


  


  


  


  


  


  


  


  


    
       
    
  

          /* Output and update for atomic system: '<Root>/Safety ' */
      
              
  
        void FUNC_Safety(void)
  {
  
                      
      
int32_T rowIdx;

      
      
  



                          
      
  



                                /* CombinatorialLogic: '<S129>/Logic' incorporates:
 *  Constant: '<S5>/Constant5'
 *  Constant: '<S5>/Constant6'
 *  Memory: '<S129>/Memory'
 *  RelationalOperator: '<S5>/Relational Operator3'
 *  RelationalOperator: '<S5>/Relational Operator4'
 */
/*@>18a1c*/VCU_B./*@>18ca7*/RelationalOperator3/*@>737b*/ = (/*@>18a22*/VCU_B./*@>18caa*/Sensitivity1538mVbar/*@>737a*/ > /*@>18660*/200.0);
/*@>18a28*/VCU_B./*@>18cad*/RelationalOperator4/*@>737f*/ = (/*@>18661*/30.0/*@>737e*/ > /*@>18a2e*/VCU_B./*@>18cb0*/Sensitivity1538mVbar);
/*@>18a34*/VCU_B./*@>18cb3*/Memory_dt/*@>7381*/ = /*@>18b71*/VCU_DW./*@>18cdd*/Memory_PreviousInput_kv;
/*@>18665*/rowIdx/*@>184a4*/ = /*@>18a3a*/VCU_B./*@>18cb6*/RelationalOperator3;
/*@>18669*/rowIdx/*@>184cb*/ = /*@>186c4*/(int32_T)((/*@>186c1*/(uint32_T)/*@>1866b*/rowIdx/*@>186a6*/ << /*@>1866d*/1)/*@>186a4*/ + /*@>18a40*/VCU_B./*@>18cb9*/RelationalOperator4);
/*@>18670*/rowIdx/*@>184f2*/ = /*@>186cc*/(int32_T)((/*@>186c9*/(uint32_T)/*@>18672*/rowIdx/*@>1869c*/ << /*@>18674*/1)/*@>1869a*/ + /*@>18a46*/VCU_B./*@>18cbc*/Memory_dt);
/*@>18a4c*/VCU_B./*@>18cbf*/Logic_d/*@>18508*/[/*@>18679*/0U]/*@>18507*/ = /*@>18ad3*/VCU_ConstP./*@>18cd7*/pooled37/*@>18805*/[/*@>18800*/(uint32_T)/*@>18802*/rowIdx];
/*@>18a52*/VCU_B./*@>18cc2*/Logic_d/*@>1851b*/[/*@>1867e*/1U]/*@>1851a*/ = /*@>18ad9*/VCU_ConstP./*@>18cda*/pooled37/*@>1880e*/[/*@>1880a*/rowIdx/*@>18807*/ + /*@>1880b*/8U];
/* RelationalOperator: '<S127>/Compare' incorporates:
 *  Constant: '<S127>/Constant'
 */
/*@>18a58*/VCU_B./*@>18cc5*/Compare_dm/*@>7386*/ = (/*@>18a5e*/VCU_B./*@>18cc8*/DataStoreRead3_a/*@>7385*/ == /*@>18662*/2);
/* Logic: '<S5>/Logical Operator1' */
/*@>18a64*/VCU_B./*@>18ccb*/LogicalOperator1_a/*@>738c*/ = (/*@>18a6a*/VCU_B./*@>18cce*/Logic_d/*@>18813*/[/*@>18810*/0]/*@>738b*/ || /*@>18a70*/VCU_B./*@>18cd1*/Compare_dm);
/* Update for Memory: '<S129>/Memory' */
/*@>18b77*/VCU_DW./*@>18ce0*/Memory_PreviousInput_kv/*@>73aa*/ = /*@>18a76*/VCU_B./*@>18cd4*/Logic_d/*@>18818*/[/*@>18815*/0];





      
  


        
    
      
          }
    
  



                








  


  


  


  

