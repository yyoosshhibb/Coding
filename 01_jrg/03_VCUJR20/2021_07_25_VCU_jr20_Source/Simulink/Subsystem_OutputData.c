/* 
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * 
 * File: Subsystem_OutputData.c
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


    

        #include "Subsystem_OutputData.h"
          /* Include model header file for global data */
              #include "VCU.h"

            #include "VCU_private.h"





  


  


  


  


  


  


  


  


  


  


  


  


  


  


    
       
    
  

          /* Output and update for atomic system: '<Root>/Output Data' */
      
              
  
        void FUNC_OutputData(void)
  {
  
                      
      
real_T tmp;

      
      
  



                          
      
  



                                /* Gain: '<S63>/Gain' */
/*@>15539*/VCU_B./*@>171d9*/n_wheel_FL_kmh/*@>6ec5*/ = /*@>12e10*/3.6/*@>13863*/ * /*@>1553f*/VCU_B./*@>171dc*/Add1_k;
/* Gain: '<S70>/Factor' */
/*@>15545*/VCU_B./*@>171df*/Factor/*@>6ecd*/ = /*@>12e11*/10.0/*@>1385f*/ * /*@>1554b*/VCU_B./*@>171e2*/n_wheel_FL_kmh;
/* Sum: '<S70>/Add1' */
/*@>15551*/VCU_B./*@>171e5*/Add1/*@>9919*/ = /*@>15557*/VCU_B./*@>171e8*/Factor;
/* DataTypeConversion: '<S70>/Data Type Conversion10' */
/*@>1381a*/tmp/*@>1381c*/ = /*@>14b19*/floor(/*@>1555d*/VCU_B./*@>171eb*/Add1);
/*@>1383a*/if (/*@>14b1b*/rtIsNaN(/*@>1381e*/tmp)/*@>13828*/ || /*@>14b1d*/rtIsInf(/*@>13823*/tmp)) {
    /*@>1382b*/tmp/*@>1382d*/ = /*@>1382a*/0.0;
} else {
    /*@>13836*/tmp/*@>13838*/ = /*@>14b1f*/fmod(/*@>1382f*/tmp, /*@>13833*/65536.0);
}
/*@>15563*/VCU_B./*@>171ee*/DataTypeConversion10/*@>6ed5*/ = /*@>13a97*/(uint16_T)(/*@>13841*/tmp/*@>13844*/ < /*@>13840*/0.0/*@>13844*/ ? (int32_T)/*@>1384c*/(uint16_T)-/*@<13855*//*@>1384a*/(int16_T)/*@>13858*/(uint16_T)-/*@<13848*//*@>13845*/tmp : (int32_T)/*@>1385b*/(uint16_T)/*@>1384d*/tmp);
/* End of DataTypeConversion: '<S70>/Data Type Conversion10' */

/* DataStoreWrite: '<S64>/Data Store Write' */
/*@>15bd4*/VCU_DW./*@>174b2*/VAR_OUT_n_wheel_FL_kmproh/*@>6ed7*/ = /*@>15569*/VCU_B./*@>171f1*/DataTypeConversion10;
/* Gain: '<S63>/Gain1' */
/*@>1556f*/VCU_B./*@>171f4*/n_wheel_FR_kmh/*@>6edf*/ = /*@>12e12*/3.6/*@>13813*/ * /*@>15575*/VCU_B./*@>171f7*/Add1_de;
/* Gain: '<S71>/Factor' */
/*@>1557b*/VCU_B./*@>171fa*/Factor_c/*@>6ee7*/ = /*@>12e13*/10.0/*@>1380f*/ * /*@>15581*/VCU_B./*@>171fd*/n_wheel_FR_kmh;
/* Sum: '<S71>/Add1' */
/*@>15587*/VCU_B./*@>17200*/Add1_i/*@>991e*/ = /*@>1558d*/VCU_B./*@>17203*/Factor_c;
/* DataTypeConversion: '<S71>/Data Type Conversion10' */
/*@>137ca*/tmp/*@>137cc*/ = /*@>14b21*/floor(/*@>15593*/VCU_B./*@>17206*/Add1_i);
/*@>137ea*/if (/*@>14b23*/rtIsNaN(/*@>137ce*/tmp)/*@>137d8*/ || /*@>14b25*/rtIsInf(/*@>137d3*/tmp)) {
    /*@>137db*/tmp/*@>137dd*/ = /*@>137da*/0.0;
} else {
    /*@>137e6*/tmp/*@>137e8*/ = /*@>14b27*/fmod(/*@>137df*/tmp, /*@>137e3*/65536.0);
}
/*@>15599*/VCU_B./*@>17209*/DataTypeConversion10_b/*@>6eef*/ = /*@>13aae*/(uint16_T)(/*@>137f1*/tmp/*@>137f4*/ < /*@>137f0*/0.0/*@>137f4*/ ? (int32_T)/*@>137fc*/(uint16_T)-/*@<13805*//*@>137fa*/(int16_T)/*@>13808*/(uint16_T)-/*@<137f8*//*@>137f5*/tmp : (int32_T)/*@>1380b*/(uint16_T)/*@>137fd*/tmp);
/* End of DataTypeConversion: '<S71>/Data Type Conversion10' */

/* DataStoreWrite: '<S64>/Data Store Write1' */
/*@>15bda*/VCU_DW./*@>174b5*/VAR_OUT_n_wheel_FR_kmproh/*@>6ef1*/ = /*@>1559f*/VCU_B./*@>1720c*/DataTypeConversion10_b;
/* Gain: '<S63>/Gain2' */
/*@>155a5*/VCU_B./*@>1720f*/n_wheel_RL_kmh/*@>6ef9*/ = /*@>12e14*/3.6/*@>137c3*/ * /*@>155ab*/VCU_B./*@>17212*/Add1_ks;
/* Gain: '<S72>/Factor' */
/*@>155b1*/VCU_B./*@>17215*/Factor_j/*@>6f01*/ = /*@>12e15*/10.0/*@>137bf*/ * /*@>155b7*/VCU_B./*@>17218*/n_wheel_RL_kmh;
/* Sum: '<S72>/Add1' */
/*@>155bd*/VCU_B./*@>1721b*/Add1_a/*@>9923*/ = /*@>155c3*/VCU_B./*@>1721e*/Factor_j;
/* DataTypeConversion: '<S72>/Data Type Conversion10' */
/*@>1377a*/tmp/*@>1377c*/ = /*@>14b29*/floor(/*@>155c9*/VCU_B./*@>17221*/Add1_a);
/*@>1379a*/if (/*@>14b2b*/rtIsNaN(/*@>1377e*/tmp)/*@>13788*/ || /*@>14b2d*/rtIsInf(/*@>13783*/tmp)) {
    /*@>1378b*/tmp/*@>1378d*/ = /*@>1378a*/0.0;
} else {
    /*@>13796*/tmp/*@>13798*/ = /*@>14b2f*/fmod(/*@>1378f*/tmp, /*@>13793*/65536.0);
}
/*@>155cf*/VCU_B./*@>17224*/DataTypeConversion10_be/*@>6f09*/ = /*@>13ac5*/(uint16_T)(/*@>137a1*/tmp/*@>137a4*/ < /*@>137a0*/0.0/*@>137a4*/ ? (int32_T)/*@>137ac*/(uint16_T)-/*@<137b5*//*@>137aa*/(int16_T)/*@>137b8*/(uint16_T)-/*@<137a8*//*@>137a5*/tmp : (int32_T)/*@>137bb*/(uint16_T)/*@>137ad*/tmp);
/* End of DataTypeConversion: '<S72>/Data Type Conversion10' */

/* DataStoreWrite: '<S64>/Data Store Write2' */
/*@>15be0*/VCU_DW./*@>174b8*/VAR_OUT_n_wheel_RL_kmproh/*@>6f0b*/ = /*@>155d5*/VCU_B./*@>17227*/DataTypeConversion10_be;
/* Gain: '<S63>/Gain3' */
/*@>155db*/VCU_B./*@>1722a*/n_wheel_RR_kmh/*@>6f13*/ = /*@>12e16*/3.6/*@>13773*/ * /*@>155e1*/VCU_B./*@>1722d*/Add1_eq;
/* Gain: '<S73>/Factor' */
/*@>155e7*/VCU_B./*@>17230*/Factor_h/*@>6f1b*/ = /*@>12e17*/10.0/*@>1376f*/ * /*@>155ed*/VCU_B./*@>17233*/n_wheel_RR_kmh;
/* Sum: '<S73>/Add1' */
/*@>155f3*/VCU_B./*@>17236*/Add1_e/*@>9928*/ = /*@>155f9*/VCU_B./*@>17239*/Factor_h;
/* DataTypeConversion: '<S73>/Data Type Conversion10' */
/*@>1372a*/tmp/*@>1372c*/ = /*@>14b31*/floor(/*@>155ff*/VCU_B./*@>1723c*/Add1_e);
/*@>1374a*/if (/*@>14b33*/rtIsNaN(/*@>1372e*/tmp)/*@>13738*/ || /*@>14b35*/rtIsInf(/*@>13733*/tmp)) {
    /*@>1373b*/tmp/*@>1373d*/ = /*@>1373a*/0.0;
} else {
    /*@>13746*/tmp/*@>13748*/ = /*@>14b37*/fmod(/*@>1373f*/tmp, /*@>13743*/65536.0);
}
/*@>15605*/VCU_B./*@>1723f*/DataTypeConversion10_o/*@>6f23*/ = /*@>13adc*/(uint16_T)(/*@>13751*/tmp/*@>13754*/ < /*@>13750*/0.0/*@>13754*/ ? (int32_T)/*@>1375c*/(uint16_T)-/*@<13765*//*@>1375a*/(int16_T)/*@>13768*/(uint16_T)-/*@<13758*//*@>13755*/tmp : (int32_T)/*@>1376b*/(uint16_T)/*@>1375d*/tmp);
/* End of DataTypeConversion: '<S73>/Data Type Conversion10' */

/* DataStoreWrite: '<S64>/Data Store Write3' */
/*@>15be6*/VCU_DW./*@>174bb*/VAR_OUT_n_wheel_RR_kmproh/*@>6f25*/ = /*@>1560b*/VCU_B./*@>17242*/DataTypeConversion10_o;
/* Sum: '<S80>/Add1' */
/*@>15611*/VCU_B./*@>17245*/Add1_j/*@>992d*/ = /*@>15617*/VCU_B./*@>17248*/Sensitivity1538mVbar;
/* DataTypeConversion: '<S80>/Data Type Conversion10' */
/*@>136e2*/tmp/*@>136e4*/ = /*@>14b39*/floor(/*@>1561d*/VCU_B./*@>1724b*/Add1_j);
/*@>13702*/if (/*@>14b3b*/rtIsNaN(/*@>136e6*/tmp)/*@>136f0*/ || /*@>14b3d*/rtIsInf(/*@>136eb*/tmp)) {
    /*@>136f3*/tmp/*@>136f5*/ = /*@>136f2*/0.0;
} else {
    /*@>136fe*/tmp/*@>13700*/ = /*@>14b3f*/fmod(/*@>136f7*/tmp, /*@>136fb*/256.0);
}
/*@>15623*/VCU_B./*@>1724e*/DataTypeConversion10_ho/*@>6f2d*/ = /*@>13aef*/(uint8_T)(/*@>13709*/tmp/*@>1370c*/ < /*@>13708*/0.0/*@>1370c*/ ? (int32_T)/*@>13714*/(uint8_T)-/*@<1371d*//*@>13712*/(int8_T)/*@>13720*/(uint8_T)-/*@<13710*//*@>1370d*/tmp : (int32_T)/*@>13723*/(uint8_T)/*@>13715*/tmp);
/* End of DataTypeConversion: '<S80>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write' */
/*@>15bec*/VCU_DW./*@>174be*/VAR_OUT_p_brake_R/*@>6f2f*/ = /*@>15629*/VCU_B./*@>17251*/DataTypeConversion10_ho;
/* Gain: '<S81>/Factor' */
/*@>1562f*/VCU_B./*@>17254*/Factor_d/*@>6f37*/ = /*@>12e18*/100.0/*@>136db*/ * /*@>15635*/VCU_B./*@>17257*/Add1_f;
/* Sum: '<S81>/Add1' */
/*@>1563b*/VCU_B./*@>1725a*/Add1_l/*@>9932*/ = /*@>15641*/VCU_B./*@>1725d*/Factor_d;
/* DataTypeConversion: '<S81>/Data Type Conversion10' */
/*@>13696*/tmp/*@>13698*/ = /*@>14b41*/floor(/*@>15647*/VCU_B./*@>17260*/Add1_l);
/*@>136b6*/if (/*@>14b43*/rtIsNaN(/*@>1369a*/tmp)/*@>136a4*/ || /*@>14b45*/rtIsInf(/*@>1369f*/tmp)) {
    /*@>136a7*/tmp/*@>136a9*/ = /*@>136a6*/0.0;
} else {
    /*@>136b2*/tmp/*@>136b4*/ = /*@>14b47*/fmod(/*@>136ab*/tmp, /*@>136af*/256.0);
}
/*@>1564d*/VCU_B./*@>17263*/DataTypeConversion10_fx/*@>6f3f*/ = /*@>13b04*/(uint8_T)(/*@>136bd*/tmp/*@>136c0*/ < /*@>136bc*/0.0/*@>136c0*/ ? (int32_T)/*@>136c8*/(uint8_T)-/*@<136d1*//*@>136c6*/(int8_T)/*@>136d4*/(uint8_T)-/*@<136c4*//*@>136c1*/tmp : (int32_T)/*@>136d7*/(uint8_T)/*@>136c9*/tmp);
/* End of DataTypeConversion: '<S81>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write1' */
/*@>15bf2*/VCU_DW./*@>174c1*/VAR_OUT_STW_mue_tyre/*@>6f41*/ = /*@>15653*/VCU_B./*@>17266*/DataTypeConversion10_fx;
/* Gain: '<S82>/Factor' */
/*@>15659*/VCU_B./*@>17269*/Factor_b/*@>6f49*/ = /*@>12e19*/10.0/*@>1368f*/ * /*@>1565f*/VCU_B./*@>1726c*/x_clutch_LC;
/* Sum: '<S82>/Add1' */
/*@>15665*/VCU_B./*@>1726f*/Add1_ll/*@>9937*/ = /*@>1566b*/VCU_B./*@>17272*/Factor_b;
/* DataTypeConversion: '<S82>/Data Type Conversion10' */
/*@>1364a*/tmp/*@>1364c*/ = /*@>14b49*/floor(/*@>15671*/VCU_B./*@>17275*/Add1_ll);
/*@>1366a*/if (/*@>14b4b*/rtIsNaN(/*@>1364e*/tmp)/*@>13658*/ || /*@>14b4d*/rtIsInf(/*@>13653*/tmp)) {
    /*@>1365b*/tmp/*@>1365d*/ = /*@>1365a*/0.0;
} else {
    /*@>13666*/tmp/*@>13668*/ = /*@>14b4f*/fmod(/*@>1365f*/tmp, /*@>13663*/256.0);
}
/*@>15677*/VCU_B./*@>17278*/DataTypeConversion10_ae/*@>6f51*/ = /*@>13b19*/(uint8_T)(/*@>13671*/tmp/*@>13674*/ < /*@>13670*/0.0/*@>13674*/ ? (int32_T)/*@>1367c*/(uint8_T)-/*@<13685*//*@>1367a*/(int8_T)/*@>13688*/(uint8_T)-/*@<13678*//*@>13675*/tmp : (int32_T)/*@>1368b*/(uint8_T)/*@>1367d*/tmp);
/* End of DataTypeConversion: '<S82>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write2' */
/*@>15bf8*/VCU_DW./*@>174c4*/VAR_OUT_x_clutch_LC/*@>6f53*/ = /*@>1567d*/VCU_B./*@>1727b*/DataTypeConversion10_ae;
/* Gain: '<S83>/Factor' */
/*@>15683*/VCU_B./*@>1727e*/Factor_ii/*@>6f5b*/ = /*@>13b20*/(uint8_T)(/*@>15689*/VCU_B./*@>17281*/LC_dash_bit/*@>13643*/ << /*@>13642*/7);
/* Sum: '<S83>/Add1' */
/*@>1568f*/VCU_B./*@>17284*/Add1_b/*@>993e*/ = /*@>13b23*/(real_T)/*@>15695*/VCU_B./*@>17287*/Factor_ii/*@>13634*/ * /*@>13633*/0.0078125;
/* DataTypeConversion: '<S83>/Data Type Conversion10' */
/*@>135ed*/tmp/*@>135ef*/ = /*@>14b51*/floor(/*@>1569b*/VCU_B./*@>1728a*/Add1_b);
/*@>1360d*/if (/*@>14b53*/rtIsNaN(/*@>135f1*/tmp)/*@>135fb*/ || /*@>14b55*/rtIsInf(/*@>135f6*/tmp)) {
    /*@>135fe*/tmp/*@>13600*/ = /*@>135fd*/0.0;
} else {
    /*@>13609*/tmp/*@>1360b*/ = /*@>14b57*/fmod(/*@>13602*/tmp, /*@>13606*/256.0);
}
/*@>156a1*/VCU_B./*@>1728d*/DataTypeConversion10_c/*@>6f63*/ = /*@>13b32*/(uint8_T)(/*@>13614*/tmp/*@>13617*/ < /*@>13613*/0.0/*@>13617*/ ? (int32_T)/*@>1361f*/(uint8_T)-/*@<13628*//*@>1361d*/(int8_T)/*@>1362b*/(uint8_T)-/*@<1361b*//*@>13618*/tmp : (int32_T)/*@>1362e*/(uint8_T)/*@>13620*/tmp);
/* End of DataTypeConversion: '<S83>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write3' */
/*@>15bfe*/VCU_DW./*@>174c7*/VAR_OUT_LC_dash_Bit/*@>6f65*/ = /*@>156a7*/VCU_B./*@>17290*/DataTypeConversion10_c;
/* RelationalOperator: '<S108>/Compare' */
/*@>156ad*/VCU_B./*@>17293*/Compare_k5/*@>6f69*/ = /*@>156b3*/VCU_B./*@>17296*/LC_active_bit;
/* Gain: '<S84>/Factor' */
/*@>156b9*/VCU_B./*@>17299*/Factor_c0/*@>6f71*/ = /*@>13b3b*/(uint8_T)(/*@>156bf*/VCU_B./*@>1729c*/Compare_k5/*@>135e6*/ << /*@>135e5*/7);
/* Sum: '<S84>/Add1' */
/*@>156c5*/VCU_B./*@>1729f*/Add1_n/*@>9945*/ = /*@>13b3e*/(real_T)/*@>156cb*/VCU_B./*@>172a2*/Factor_c0/*@>135d7*/ * /*@>135d6*/0.0078125;
/* DataTypeConversion: '<S84>/Data Type Conversion10' */
/*@>13590*/tmp/*@>13592*/ = /*@>14b59*/floor(/*@>156d1*/VCU_B./*@>172a5*/Add1_n);
/*@>135b0*/if (/*@>14b5b*/rtIsNaN(/*@>13594*/tmp)/*@>1359e*/ || /*@>14b5d*/rtIsInf(/*@>13599*/tmp)) {
    /*@>135a1*/tmp/*@>135a3*/ = /*@>135a0*/0.0;
} else {
    /*@>135ac*/tmp/*@>135ae*/ = /*@>14b5f*/fmod(/*@>135a5*/tmp, /*@>135a9*/256.0);
}
/*@>156d7*/VCU_B./*@>172a8*/DataTypeConversion10_ou/*@>6f79*/ = /*@>13b4d*/(uint8_T)(/*@>135b7*/tmp/*@>135ba*/ < /*@>135b6*/0.0/*@>135ba*/ ? (int32_T)/*@>135c2*/(uint8_T)-/*@<135cb*//*@>135c0*/(int8_T)/*@>135ce*/(uint8_T)-/*@<135be*//*@>135bb*/tmp : (int32_T)/*@>135d1*/(uint8_T)/*@>135c3*/tmp);
/* End of DataTypeConversion: '<S84>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write4' */
/*@>15c04*/VCU_DW./*@>174ca*/VAR_OUT_LC_active_bit/*@>6f7b*/ = /*@>156dd*/VCU_B./*@>172ab*/DataTypeConversion10_ou;
/* Gain: '<S85>/Factor' */
/*@>156e3*/VCU_B./*@>172ae*/Factor_b4/*@>6f83*/ = /*@>13b54*/(uint8_T)(/*@>156e9*/VCU_B./*@>172b1*/LC_ready_bit/*@>13589*/ << /*@>13588*/7);
/* Sum: '<S85>/Add1' */
/*@>156ef*/VCU_B./*@>172b4*/Add1_jg/*@>994c*/ = /*@>13b57*/(real_T)/*@>156f5*/VCU_B./*@>172b7*/Factor_b4/*@>1357a*/ * /*@>13579*/0.0078125;
/* DataTypeConversion: '<S85>/Data Type Conversion10' */
/*@>13533*/tmp/*@>13535*/ = /*@>14b61*/floor(/*@>156fb*/VCU_B./*@>172ba*/Add1_jg);
/*@>13553*/if (/*@>14b63*/rtIsNaN(/*@>13537*/tmp)/*@>13541*/ || /*@>14b65*/rtIsInf(/*@>1353c*/tmp)) {
    /*@>13544*/tmp/*@>13546*/ = /*@>13543*/0.0;
} else {
    /*@>1354f*/tmp/*@>13551*/ = /*@>14b67*/fmod(/*@>13548*/tmp, /*@>1354c*/256.0);
}
/*@>15701*/VCU_B./*@>172bd*/DataTypeConversion10_p/*@>6f8b*/ = /*@>13b66*/(uint8_T)(/*@>1355a*/tmp/*@>1355d*/ < /*@>13559*/0.0/*@>1355d*/ ? (int32_T)/*@>13565*/(uint8_T)-/*@<1356e*//*@>13563*/(int8_T)/*@>13571*/(uint8_T)-/*@<13561*//*@>1355e*/tmp : (int32_T)/*@>13574*/(uint8_T)/*@>13566*/tmp);
/* End of DataTypeConversion: '<S85>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write5' */
/*@>15c0a*/VCU_DW./*@>174cd*/VAR_OUT_LC_ready_bit/*@>6f8d*/ = /*@>15707*/VCU_B./*@>172c0*/DataTypeConversion10_p;
/* Sum: '<S86>/Add1' */
/*@>1570d*/VCU_B./*@>172c3*/Add1_bq/*@>9951*/ = /*@>15713*/VCU_B./*@>172c6*/LC_Mdes;
/* DataTypeConversion: '<S86>/Data Type Conversion10' */
/*@>134eb*/tmp/*@>134ed*/ = /*@>14b69*/floor(/*@>15719*/VCU_B./*@>172c9*/Add1_bq);
/*@>1350b*/if (/*@>14b6b*/rtIsNaN(/*@>134ef*/tmp)/*@>134f9*/ || /*@>14b6d*/rtIsInf(/*@>134f4*/tmp)) {
    /*@>134fc*/tmp/*@>134fe*/ = /*@>134fb*/0.0;
} else {
    /*@>13507*/tmp/*@>13509*/ = /*@>14b6f*/fmod(/*@>13500*/tmp, /*@>13504*/256.0);
}
/*@>1571f*/VCU_B./*@>172cc*/DataTypeConversion10_ci/*@>6f95*/ = /*@>13b79*/(uint8_T)(/*@>13512*/tmp/*@>13515*/ < /*@>13511*/0.0/*@>13515*/ ? (int32_T)/*@>1351d*/(uint8_T)-/*@<13526*//*@>1351b*/(int8_T)/*@>13529*/(uint8_T)-/*@<13519*//*@>13516*/tmp : (int32_T)/*@>1352c*/(uint8_T)/*@>1351e*/tmp);
/* End of DataTypeConversion: '<S86>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write6' */
/*@>15c10*/VCU_DW./*@>174d0*/VAR_OUT_LC_Mdes/*@>6f97*/ = /*@>15725*/VCU_B./*@>172cf*/DataTypeConversion10_ci;
/* Gain: '<S87>/Factor' */
/*@>1572b*/VCU_B./*@>172d2*/Factor_n/*@>6f9f*/ = /*@>12e1a*/0.1/*@>134e4*/ * /*@>15731*/VCU_B./*@>172d5*/LC_Fnr;
/* Sum: '<S87>/Add1' */
/*@>15737*/VCU_B./*@>172d8*/Add1_io/*@>9956*/ = /*@>1573d*/VCU_B./*@>172db*/Factor_n;
/* DataTypeConversion: '<S87>/Data Type Conversion10' */
/*@>1349f*/tmp/*@>134a1*/ = /*@>14b71*/floor(/*@>15743*/VCU_B./*@>172de*/Add1_io);
/*@>134bf*/if (/*@>14b73*/rtIsNaN(/*@>134a3*/tmp)/*@>134ad*/ || /*@>14b75*/rtIsInf(/*@>134a8*/tmp)) {
    /*@>134b0*/tmp/*@>134b2*/ = /*@>134af*/0.0;
} else {
    /*@>134bb*/tmp/*@>134bd*/ = /*@>14b77*/fmod(/*@>134b4*/tmp, /*@>134b8*/256.0);
}
/*@>15749*/VCU_B./*@>172e1*/DataTypeConversion10_j/*@>6fa7*/ = /*@>13b8e*/(uint8_T)(/*@>134c6*/tmp/*@>134c9*/ < /*@>134c5*/0.0/*@>134c9*/ ? (int32_T)/*@>134d1*/(uint8_T)-/*@<134da*//*@>134cf*/(int8_T)/*@>134dd*/(uint8_T)-/*@<134cd*//*@>134ca*/tmp : (int32_T)/*@>134e0*/(uint8_T)/*@>134d2*/tmp);
/* End of DataTypeConversion: '<S87>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write7' */
/*@>15c16*/VCU_DW./*@>174d3*/VAR_OUT_LC_Fnr/*@>6fa9*/ = /*@>1574f*/VCU_B./*@>172e4*/DataTypeConversion10_j;
/* Sum: '<S74>/Add1' */
/*@>15755*/VCU_B./*@>172e7*/Add1_p/*@>995b*/ = /*@>1575b*/VCU_B./*@>172ea*/ABS_switchstate;
/* DataTypeConversion: '<S74>/Data Type Conversion10' */
/*@>13457*/tmp/*@>13459*/ = /*@>14b79*/floor(/*@>15761*/VCU_B./*@>172ed*/Add1_p);
/*@>13477*/if (/*@>14b7b*/rtIsNaN(/*@>1345b*/tmp)/*@>13465*/ || /*@>14b7d*/rtIsInf(/*@>13460*/tmp)) {
    /*@>13468*/tmp/*@>1346a*/ = /*@>13467*/0.0;
} else {
    /*@>13473*/tmp/*@>13475*/ = /*@>14b7f*/fmod(/*@>1346c*/tmp, /*@>13470*/256.0);
}
/*@>15767*/VCU_B./*@>172f0*/DataTypeConversion10_o3/*@>6fb1*/ = /*@>13ba1*/(uint8_T)(/*@>1347e*/tmp/*@>13481*/ < /*@>1347d*/0.0/*@>13481*/ ? (int32_T)/*@>13489*/(uint8_T)-/*@<13492*//*@>13487*/(int8_T)/*@>13495*/(uint8_T)-/*@<13485*//*@>13482*/tmp : (int32_T)/*@>13498*/(uint8_T)/*@>1348a*/tmp);
/* End of DataTypeConversion: '<S74>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write' */
/*@>15c1c*/VCU_DW./*@>174d6*/VAR_OUT_ABS_switchstate/*@>6fb3*/ = /*@>1576d*/VCU_B./*@>172f3*/DataTypeConversion10_o3;
/* Sum: '<S75>/Add1' */
/*@>15773*/VCU_B./*@>172f6*/Add1_c/*@>9960*/ = /*@>15779*/VCU_B./*@>172f9*/Add1_m;
/* DataTypeConversion: '<S75>/Data Type Conversion10' */
/*@>1340f*/tmp/*@>13411*/ = /*@>14b81*/floor(/*@>1577f*/VCU_B./*@>172fc*/Add1_c);
/*@>1342f*/if (/*@>14b83*/rtIsNaN(/*@>13413*/tmp)/*@>1341d*/ || /*@>14b85*/rtIsInf(/*@>13418*/tmp)) {
    /*@>13420*/tmp/*@>13422*/ = /*@>1341f*/0.0;
} else {
    /*@>1342b*/tmp/*@>1342d*/ = /*@>14b87*/fmod(/*@>13424*/tmp, /*@>13428*/65536.0);
}
/*@>15785*/VCU_B./*@>172ff*/DataTypeConversion10_h/*@>6fbb*/ = /*@>13bb4*/(uint16_T)(/*@>13436*/tmp/*@>13439*/ < /*@>13435*/0.0/*@>13439*/ ? (int32_T)/*@>13441*/(uint16_T)-/*@<1344a*//*@>1343f*/(int16_T)/*@>1344d*/(uint16_T)-/*@<1343d*//*@>1343a*/tmp : (int32_T)/*@>13450*/(uint16_T)/*@>13442*/tmp);
/* End of DataTypeConversion: '<S75>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write1' */
/*@>15c22*/VCU_DW./*@>174d9*/VAR_OUT_p_brake_F/*@>6fbd*/ = /*@>1578b*/VCU_B./*@>17302*/DataTypeConversion10_h;
/* Sum: '<S76>/Add1' */
/*@>15791*/VCU_B./*@>17305*/Add1_js/*@>9965*/ = /*@>15797*/VCU_B./*@>17308*/ABS_BL_switch;
/* DataTypeConversion: '<S76>/Data Type Conversion10' */
/*@>133c7*/tmp/*@>133c9*/ = /*@>14b89*/floor(/*@>1579d*/VCU_B./*@>1730b*/Add1_js);
/*@>133e7*/if (/*@>14b8b*/rtIsNaN(/*@>133cb*/tmp)/*@>133d5*/ || /*@>14b8d*/rtIsInf(/*@>133d0*/tmp)) {
    /*@>133d8*/tmp/*@>133da*/ = /*@>133d7*/0.0;
} else {
    /*@>133e3*/tmp/*@>133e5*/ = /*@>14b8f*/fmod(/*@>133dc*/tmp, /*@>133e0*/256.0);
}
/*@>157a3*/VCU_B./*@>1730e*/DataTypeConversion10_ok/*@>6fc5*/ = /*@>13bc7*/(uint8_T)(/*@>133ee*/tmp/*@>133f1*/ < /*@>133ed*/0.0/*@>133f1*/ ? (int32_T)/*@>133f9*/(uint8_T)-/*@<13402*//*@>133f7*/(int8_T)/*@>13405*/(uint8_T)-/*@<133f5*//*@>133f2*/tmp : (int32_T)/*@>13408*/(uint8_T)/*@>133fa*/tmp);
/* End of DataTypeConversion: '<S76>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write2' */
/*@>15c28*/VCU_DW./*@>174dc*/VAR_OUT_ABS_BL_switch/*@>6fc7*/ = /*@>157a9*/VCU_B./*@>17311*/DataTypeConversion10_ok;
/* Sum: '<S77>/Add1' */
/*@>157af*/VCU_B./*@>17314*/Add1_ak/*@>996a*/ = /*@>157b5*/VCU_B./*@>17317*/ABS_active;
/* DataTypeConversion: '<S77>/Data Type Conversion10' */
/*@>1337f*/tmp/*@>13381*/ = /*@>14b91*/floor(/*@>157bb*/VCU_B./*@>1731a*/Add1_ak);
/*@>1339f*/if (/*@>14b93*/rtIsNaN(/*@>13383*/tmp)/*@>1338d*/ || /*@>14b95*/rtIsInf(/*@>13388*/tmp)) {
    /*@>13390*/tmp/*@>13392*/ = /*@>1338f*/0.0;
} else {
    /*@>1339b*/tmp/*@>1339d*/ = /*@>14b97*/fmod(/*@>13394*/tmp, /*@>13398*/256.0);
}
/*@>157c1*/VCU_B./*@>1731d*/DataTypeConversion10_ah/*@>6fcf*/ = /*@>13bda*/(uint8_T)(/*@>133a6*/tmp/*@>133a9*/ < /*@>133a5*/0.0/*@>133a9*/ ? (int32_T)/*@>133b1*/(uint8_T)-/*@<133ba*//*@>133af*/(int8_T)/*@>133bd*/(uint8_T)-/*@<133ad*//*@>133aa*/tmp : (int32_T)/*@>133c0*/(uint8_T)/*@>133b2*/tmp);
/* End of DataTypeConversion: '<S77>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write3' */
/*@>15c2e*/VCU_DW./*@>174df*/VAR_OUT_ABS_active/*@>6fd1*/ = /*@>157c7*/VCU_B./*@>17320*/DataTypeConversion10_ah;
/* Sum: '<S78>/Add1' */
/*@>157cd*/VCU_B./*@>17323*/Add1_n4/*@>996f*/ = /*@>157d3*/VCU_B./*@>17326*/ABS_EBD_Lamp;
/* DataTypeConversion: '<S78>/Data Type Conversion10' */
/*@>13337*/tmp/*@>13339*/ = /*@>14b99*/floor(/*@>157d9*/VCU_B./*@>17329*/Add1_n4);
/*@>13357*/if (/*@>14b9b*/rtIsNaN(/*@>1333b*/tmp)/*@>13345*/ || /*@>14b9d*/rtIsInf(/*@>13340*/tmp)) {
    /*@>13348*/tmp/*@>1334a*/ = /*@>13347*/0.0;
} else {
    /*@>13353*/tmp/*@>13355*/ = /*@>14b9f*/fmod(/*@>1334c*/tmp, /*@>13350*/256.0);
}
/*@>157df*/VCU_B./*@>1732c*/DataTypeConversion10_d/*@>6fd9*/ = /*@>13bed*/(uint8_T)(/*@>1335e*/tmp/*@>13361*/ < /*@>1335d*/0.0/*@>13361*/ ? (int32_T)/*@>13369*/(uint8_T)-/*@<13372*//*@>13367*/(int8_T)/*@>13375*/(uint8_T)-/*@<13365*//*@>13362*/tmp : (int32_T)/*@>13378*/(uint8_T)/*@>1336a*/tmp);
/* End of DataTypeConversion: '<S78>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write4' */
/*@>15c34*/VCU_DW./*@>174e2*/VAR_OUT_ABS_EBD_Lamp/*@>6fdb*/ = /*@>157e5*/VCU_B./*@>1732f*/DataTypeConversion10_d;
/* Sum: '<S79>/Add1' */
/*@>157eb*/VCU_B./*@>17332*/Add1_h/*@>9974*/ = /*@>157f1*/VCU_B./*@>17335*/ABS_Lamp;
/* DataTypeConversion: '<S79>/Data Type Conversion10' */
/*@>132ef*/tmp/*@>132f1*/ = /*@>14ba1*/floor(/*@>157f7*/VCU_B./*@>17338*/Add1_h);
/*@>1330f*/if (/*@>14ba3*/rtIsNaN(/*@>132f3*/tmp)/*@>132fd*/ || /*@>14ba5*/rtIsInf(/*@>132f8*/tmp)) {
    /*@>13300*/tmp/*@>13302*/ = /*@>132ff*/0.0;
} else {
    /*@>1330b*/tmp/*@>1330d*/ = /*@>14ba7*/fmod(/*@>13304*/tmp, /*@>13308*/256.0);
}
/*@>157fd*/VCU_B./*@>1733b*/DataTypeConversion10_bd/*@>6fe3*/ = /*@>13c00*/(uint8_T)(/*@>13316*/tmp/*@>13319*/ < /*@>13315*/0.0/*@>13319*/ ? (int32_T)/*@>13321*/(uint8_T)-/*@<1332a*//*@>1331f*/(int8_T)/*@>1332d*/(uint8_T)-/*@<1331d*//*@>1331a*/tmp : (int32_T)/*@>13330*/(uint8_T)/*@>13322*/tmp);
/* End of DataTypeConversion: '<S79>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write5' */
/*@>15c3a*/VCU_DW./*@>174e5*/VAR_OUT_ABS_Lamp/*@>6fe5*/ = /*@>15803*/VCU_B./*@>1733e*/DataTypeConversion10_bd;
/* Gain: '<S88>/Factor' */
/*@>15809*/VCU_B./*@>17341*/Factor_a/*@>6fed*/ = /*@>12e1b*/10.0/*@>132e8*/ * /*@>1580f*/VCU_B./*@>17344*/Saturation1_e;
/* Sum: '<S88>/Add1' */
/*@>15815*/VCU_B./*@>17347*/Add1_lh/*@>9979*/ = /*@>1581b*/VCU_B./*@>1734a*/Factor_a;
/* DataTypeConversion: '<S88>/Data Type Conversion10' */
/*@>132a3*/tmp/*@>132a5*/ = /*@>14ba9*/floor(/*@>15821*/VCU_B./*@>1734d*/Add1_lh);
/*@>132c3*/if (/*@>14bab*/rtIsNaN(/*@>132a7*/tmp)/*@>132b1*/ || /*@>14bad*/rtIsInf(/*@>132ac*/tmp)) {
    /*@>132b4*/tmp/*@>132b6*/ = /*@>132b3*/0.0;
} else {
    /*@>132bf*/tmp/*@>132c1*/ = /*@>14baf*/fmod(/*@>132b8*/tmp, /*@>132bc*/65536.0);
}
/*@>15827*/VCU_B./*@>17350*/DataTypeConversion10_m/*@>6ff5*/ = /*@>13c15*/(uint16_T)(/*@>132ca*/tmp/*@>132cd*/ < /*@>132c9*/0.0/*@>132cd*/ ? (int32_T)/*@>132d5*/(uint16_T)-/*@<132de*//*@>132d3*/(int16_T)/*@>132e1*/(uint16_T)-/*@<132d1*//*@>132ce*/tmp : (int32_T)/*@>132e4*/(uint16_T)/*@>132d6*/tmp);
/* End of DataTypeConversion: '<S88>/Data Type Conversion10' */

/* DataStoreWrite: '<S67>/Data Store Write' */
/*@>15c40*/VCU_DW./*@>174e8*/VAR_OUT_f_FL/*@>6ff7*/ = /*@>1582d*/VCU_B./*@>17353*/DataTypeConversion10_m;
/* Gain: '<S89>/Factor' */
/*@>15833*/VCU_B./*@>17356*/Factor_i/*@>6fff*/ = /*@>12e1c*/10.0/*@>1329c*/ * /*@>15839*/VCU_B./*@>17359*/Saturation1_n;
/* Sum: '<S89>/Add1' */
/*@>1583f*/VCU_B./*@>1735c*/Add1_bqm/*@>997e*/ = /*@>15845*/VCU_B./*@>1735f*/Factor_i;
/* DataTypeConversion: '<S89>/Data Type Conversion10' */
/*@>13257*/tmp/*@>13259*/ = /*@>14bb1*/floor(/*@>1584b*/VCU_B./*@>17362*/Add1_bqm);
/*@>13277*/if (/*@>14bb3*/rtIsNaN(/*@>1325b*/tmp)/*@>13265*/ || /*@>14bb5*/rtIsInf(/*@>13260*/tmp)) {
    /*@>13268*/tmp/*@>1326a*/ = /*@>13267*/0.0;
} else {
    /*@>13273*/tmp/*@>13275*/ = /*@>14bb7*/fmod(/*@>1326c*/tmp, /*@>13270*/65536.0);
}
/*@>15851*/VCU_B./*@>17365*/DataTypeConversion10_f/*@>7007*/ = /*@>13c2a*/(uint16_T)(/*@>1327e*/tmp/*@>13281*/ < /*@>1327d*/0.0/*@>13281*/ ? (int32_T)/*@>13289*/(uint16_T)-/*@<13292*//*@>13287*/(int16_T)/*@>13295*/(uint16_T)-/*@<13285*//*@>13282*/tmp : (int32_T)/*@>13298*/(uint16_T)/*@>1328a*/tmp);
/* End of DataTypeConversion: '<S89>/Data Type Conversion10' */

/* DataStoreWrite: '<S67>/Data Store Write1' */
/*@>15c46*/VCU_DW./*@>174eb*/VAR_OUT_f_FR/*@>7009*/ = /*@>15857*/VCU_B./*@>17368*/DataTypeConversion10_f;
/* Gain: '<S90>/Factor' */
/*@>1585d*/VCU_B./*@>1736b*/Factor_jn/*@>7011*/ = /*@>12e1d*/10.0/*@>13250*/ * /*@>15863*/VCU_B./*@>1736e*/Saturation1_o;
/* Sum: '<S90>/Add1' */
/*@>15869*/VCU_B./*@>17371*/Add1_iv/*@>9983*/ = /*@>1586f*/VCU_B./*@>17374*/Factor_jn;
/* DataTypeConversion: '<S90>/Data Type Conversion10' */
/*@>1320b*/tmp/*@>1320d*/ = /*@>14bb9*/floor(/*@>15875*/VCU_B./*@>17377*/Add1_iv);
/*@>1322b*/if (/*@>14bbb*/rtIsNaN(/*@>1320f*/tmp)/*@>13219*/ || /*@>14bbd*/rtIsInf(/*@>13214*/tmp)) {
    /*@>1321c*/tmp/*@>1321e*/ = /*@>1321b*/0.0;
} else {
    /*@>13227*/tmp/*@>13229*/ = /*@>14bbf*/fmod(/*@>13220*/tmp, /*@>13224*/65536.0);
}
/*@>1587b*/VCU_B./*@>1737a*/DataTypeConversion10_a/*@>7019*/ = /*@>13c3f*/(uint16_T)(/*@>13232*/tmp/*@>13235*/ < /*@>13231*/0.0/*@>13235*/ ? (int32_T)/*@>1323d*/(uint16_T)-/*@<13246*//*@>1323b*/(int16_T)/*@>13249*/(uint16_T)-/*@<13239*//*@>13236*/tmp : (int32_T)/*@>1324c*/(uint16_T)/*@>1323e*/tmp);
/* End of DataTypeConversion: '<S90>/Data Type Conversion10' */

/* DataStoreWrite: '<S67>/Data Store Write2' */
/*@>15c4c*/VCU_DW./*@>174ee*/VAR_OUT_f_RL/*@>701b*/ = /*@>15881*/VCU_B./*@>1737d*/DataTypeConversion10_a;
/* Gain: '<S91>/Factor' */
/*@>15887*/VCU_B./*@>17380*/Factor_h0/*@>7023*/ = /*@>12e1e*/10.0/*@>13204*/ * /*@>1588d*/VCU_B./*@>17383*/Saturation1_h;
/* Sum: '<S91>/Add1' */
/*@>15893*/VCU_B./*@>17386*/Add1_i1/*@>9988*/ = /*@>15899*/VCU_B./*@>17389*/Factor_h0;
/* DataTypeConversion: '<S91>/Data Type Conversion10' */
/*@>131bf*/tmp/*@>131c1*/ = /*@>14bc1*/floor(/*@>1589f*/VCU_B./*@>1738c*/Add1_i1);
/*@>131df*/if (/*@>14bc3*/rtIsNaN(/*@>131c3*/tmp)/*@>131cd*/ || /*@>14bc5*/rtIsInf(/*@>131c8*/tmp)) {
    /*@>131d0*/tmp/*@>131d2*/ = /*@>131cf*/0.0;
} else {
    /*@>131db*/tmp/*@>131dd*/ = /*@>14bc7*/fmod(/*@>131d4*/tmp, /*@>131d8*/65536.0);
}
/*@>158a5*/VCU_B./*@>1738f*/DataTypeConversion10_n/*@>702b*/ = /*@>13c54*/(uint16_T)(/*@>131e6*/tmp/*@>131e9*/ < /*@>131e5*/0.0/*@>131e9*/ ? (int32_T)/*@>131f1*/(uint16_T)-/*@<131fa*//*@>131ef*/(int16_T)/*@>131fd*/(uint16_T)-/*@<131ed*//*@>131ea*/tmp : (int32_T)/*@>13200*/(uint16_T)/*@>131f2*/tmp);
/* End of DataTypeConversion: '<S91>/Data Type Conversion10' */

/* DataStoreWrite: '<S67>/Data Store Write3' */
/*@>15c52*/VCU_DW./*@>174f1*/VAR_OUT_f_RR/*@>702d*/ = /*@>158ab*/VCU_B./*@>17392*/DataTypeConversion10_n;
/* Gain: '<S92>/Factor' */
/*@>158b1*/VCU_B./*@>17395*/Factor_dd/*@>7035*/ = /*@>12e1f*/1.3/*@>131b8*/ * /*@>158b7*/VCU_B./*@>17398*/x_RH_RL;
/* Sum: '<S92>/Add1' */
/*@>158bd*/VCU_B./*@>1739b*/Add1_ai/*@>998d*/ = /*@>158c3*/VCU_B./*@>1739e*/Factor_dd;
/* DataTypeConversion: '<S92>/Data Type Conversion10' */
/*@>13173*/tmp/*@>13175*/ = /*@>14bc9*/floor(/*@>158c9*/VCU_B./*@>173a1*/Add1_ai);
/*@>13193*/if (/*@>14bcb*/rtIsNaN(/*@>13177*/tmp)/*@>13181*/ || /*@>14bcd*/rtIsInf(/*@>1317c*/tmp)) {
    /*@>13184*/tmp/*@>13186*/ = /*@>13183*/0.0;
} else {
    /*@>1318f*/tmp/*@>13191*/ = /*@>14bcf*/fmod(/*@>13188*/tmp, /*@>1318c*/256.0);
}
/*@>158cf*/VCU_B./*@>173a4*/DataTypeConversion10_px/*@>703d*/ = /*@>13c69*/(uint8_T)(/*@>1319a*/tmp/*@>1319d*/ < /*@>13199*/0.0/*@>1319d*/ ? (int32_T)/*@>131a5*/(uint8_T)-/*@<131ae*//*@>131a3*/(int8_T)/*@>131b1*/(uint8_T)-/*@<131a1*//*@>1319e*/tmp : (int32_T)/*@>131b4*/(uint8_T)/*@>131a6*/tmp);
/* End of DataTypeConversion: '<S92>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write' */
/*@>15c58*/VCU_DW./*@>174f4*/VAR_OUT_x_RH_RL/*@>703f*/ = /*@>158d5*/VCU_B./*@>173a7*/DataTypeConversion10_px;
/* Gain: '<S93>/Factor' */
/*@>158db*/VCU_B./*@>173aa*/Factor_bc/*@>7047*/ = /*@>12e20*/1.3/*@>1316c*/ * /*@>158e1*/VCU_B./*@>173ad*/x_RH_RR;
/* Sum: '<S93>/Add1' */
/*@>158e7*/VCU_B./*@>173b0*/Add1_o/*@>9992*/ = /*@>158ed*/VCU_B./*@>173b3*/Factor_bc;
/* DataTypeConversion: '<S93>/Data Type Conversion10' */
/*@>13127*/tmp/*@>13129*/ = /*@>14bd1*/floor(/*@>158f3*/VCU_B./*@>173b6*/Add1_o);
/*@>13147*/if (/*@>14bd3*/rtIsNaN(/*@>1312b*/tmp)/*@>13135*/ || /*@>14bd5*/rtIsInf(/*@>13130*/tmp)) {
    /*@>13138*/tmp/*@>1313a*/ = /*@>13137*/0.0;
} else {
    /*@>13143*/tmp/*@>13145*/ = /*@>14bd7*/fmod(/*@>1313c*/tmp, /*@>13140*/256.0);
}
/*@>158f9*/VCU_B./*@>173b9*/DataTypeConversion10_ab/*@>704f*/ = /*@>13c7e*/(uint8_T)(/*@>1314e*/tmp/*@>13151*/ < /*@>1314d*/0.0/*@>13151*/ ? (int32_T)/*@>13159*/(uint8_T)-/*@<13162*//*@>13157*/(int8_T)/*@>13165*/(uint8_T)-/*@<13155*//*@>13152*/tmp : (int32_T)/*@>13168*/(uint8_T)/*@>1315a*/tmp);
/* End of DataTypeConversion: '<S93>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write1' */
/*@>15c5e*/VCU_DW./*@>174f7*/VAR_OUT_x_RH_RR/*@>7051*/ = /*@>158ff*/VCU_B./*@>173bc*/DataTypeConversion10_ab;
/* Gain: '<S94>/Factor' */
/*@>15905*/VCU_B./*@>173bf*/Factor_f/*@>7059*/ = /*@>12e21*/1.3/*@>13120*/ * /*@>1590b*/VCU_B./*@>173c2*/x_RH_F;
/* Sum: '<S94>/Add1' */
/*@>15911*/VCU_B./*@>173c5*/Add1_g/*@>9997*/ = /*@>15917*/VCU_B./*@>173c8*/Factor_f;
/* DataTypeConversion: '<S94>/Data Type Conversion10' */
/*@>130db*/tmp/*@>130dd*/ = /*@>14bd9*/floor(/*@>1591d*/VCU_B./*@>173cb*/Add1_g);
/*@>130fb*/if (/*@>14bdb*/rtIsNaN(/*@>130df*/tmp)/*@>130e9*/ || /*@>14bdd*/rtIsInf(/*@>130e4*/tmp)) {
    /*@>130ec*/tmp/*@>130ee*/ = /*@>130eb*/0.0;
} else {
    /*@>130f7*/tmp/*@>130f9*/ = /*@>14bdf*/fmod(/*@>130f0*/tmp, /*@>130f4*/256.0);
}
/*@>15923*/VCU_B./*@>173ce*/DataTypeConversion10_e/*@>7061*/ = /*@>13c93*/(uint8_T)(/*@>13102*/tmp/*@>13105*/ < /*@>13101*/0.0/*@>13105*/ ? (int32_T)/*@>1310d*/(uint8_T)-/*@<13116*//*@>1310b*/(int8_T)/*@>13119*/(uint8_T)-/*@<13109*//*@>13106*/tmp : (int32_T)/*@>1311c*/(uint8_T)/*@>1310e*/tmp);
/* End of DataTypeConversion: '<S94>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write2' */
/*@>15c64*/VCU_DW./*@>174fa*/VAR_OUT_x_RH_F/*@>7063*/ = /*@>15929*/VCU_B./*@>173d1*/DataTypeConversion10_e;
/* Gain: '<S95>/Factor' */
/*@>1592f*/VCU_B./*@>173d4*/Factor_o/*@>706b*/ = /*@>12e22*/10.0/*@>130d4*/ * /*@>15935*/VCU_B./*@>173d7*/x_clutch_b;
/* Sum: '<S95>/Add1' */
/*@>1593b*/VCU_B./*@>173da*/Add1_id/*@>999c*/ = /*@>15941*/VCU_B./*@>173dd*/Factor_o;
/* DataTypeConversion: '<S95>/Data Type Conversion10' */
/*@>1308f*/tmp/*@>13091*/ = /*@>14be1*/floor(/*@>15947*/VCU_B./*@>173e0*/Add1_id);
/*@>130af*/if (/*@>14be3*/rtIsNaN(/*@>13093*/tmp)/*@>1309d*/ || /*@>14be5*/rtIsInf(/*@>13098*/tmp)) {
    /*@>130a0*/tmp/*@>130a2*/ = /*@>1309f*/0.0;
} else {
    /*@>130ab*/tmp/*@>130ad*/ = /*@>14be7*/fmod(/*@>130a4*/tmp, /*@>130a8*/256.0);
}
/*@>1594d*/VCU_B./*@>173e3*/DataTypeConversion10_g/*@>7073*/ = /*@>13ca8*/(uint8_T)(/*@>130b6*/tmp/*@>130b9*/ < /*@>130b5*/0.0/*@>130b9*/ ? (int32_T)/*@>130c1*/(uint8_T)-/*@<130ca*//*@>130bf*/(int8_T)/*@>130cd*/(uint8_T)-/*@<130bd*//*@>130ba*/tmp : (int32_T)/*@>130d0*/(uint8_T)/*@>130c2*/tmp);
/* End of DataTypeConversion: '<S95>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write3' */
/*@>15c6a*/VCU_DW./*@>174fd*/VAR_OUT_x_clutch/*@>7075*/ = /*@>15953*/VCU_B./*@>173e6*/DataTypeConversion10_g;
/* Gain: '<S96>/Factor' */
/*@>15959*/VCU_B./*@>173e9*/Factor_k/*@>707d*/ = /*@>12e23*/10.0/*@>13088*/ * /*@>1595f*/VCU_B./*@>173ec*/x_clutch_STW;
/* Sum: '<S96>/Add1' */
/*@>15965*/VCU_B./*@>173ef*/Add1_d/*@>99a1*/ = /*@>1596b*/VCU_B./*@>173f2*/Factor_k;
/* DataTypeConversion: '<S96>/Data Type Conversion10' */
/*@>13043*/tmp/*@>13045*/ = /*@>14be9*/floor(/*@>15971*/VCU_B./*@>173f5*/Add1_d);
/*@>13063*/if (/*@>14beb*/rtIsNaN(/*@>13047*/tmp)/*@>13051*/ || /*@>14bed*/rtIsInf(/*@>1304c*/tmp)) {
    /*@>13054*/tmp/*@>13056*/ = /*@>13053*/0.0;
} else {
    /*@>1305f*/tmp/*@>13061*/ = /*@>14bef*/fmod(/*@>13058*/tmp, /*@>1305c*/256.0);
}
/*@>15977*/VCU_B./*@>173f8*/DataTypeConversion10_k/*@>7085*/ = /*@>13cbd*/(uint8_T)(/*@>1306a*/tmp/*@>1306d*/ < /*@>13069*/0.0/*@>1306d*/ ? (int32_T)/*@>13075*/(uint8_T)-/*@<1307e*//*@>13073*/(int8_T)/*@>13081*/(uint8_T)-/*@<13071*//*@>1306e*/tmp : (int32_T)/*@>13084*/(uint8_T)/*@>13076*/tmp);
/* End of DataTypeConversion: '<S96>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write4' */
/*@>15c70*/VCU_DW./*@>17500*/VAR_OUT_x_clutch_STW/*@>7087*/ = /*@>1597d*/VCU_B./*@>173fb*/DataTypeConversion10_k;
/* Gain: '<S97>/Factor' */
/*@>15983*/VCU_B./*@>173fe*/Factor_cv/*@>708f*/ = /*@>13a7e*/40960U/*@>1303b*/ * /*@>15989*/VCU_B./*@>17401*/p_pneum;
/* Sum: '<S97>/Add1' */
/*@>1598f*/VCU_B./*@>17404*/Add1_a5/*@>99a8*/ = /*@>13cc5*/(real_T)/*@>15995*/VCU_B./*@>17407*/Factor_cv/*@>13032*/ * /*@>13031*/5.9604644775390625E-8;
/* DataTypeConversion: '<S97>/Data Type Conversion10' */
/*@>12feb*/tmp/*@>12fed*/ = /*@>14bf1*/floor(/*@>1599b*/VCU_B./*@>1740a*/Add1_a5);
/*@>1300b*/if (/*@>14bf3*/rtIsNaN(/*@>12fef*/tmp)/*@>12ff9*/ || /*@>14bf5*/rtIsInf(/*@>12ff4*/tmp)) {
    /*@>12ffc*/tmp/*@>12ffe*/ = /*@>12ffb*/0.0;
} else {
    /*@>13007*/tmp/*@>13009*/ = /*@>14bf7*/fmod(/*@>13000*/tmp, /*@>13004*/256.0);
}
/*@>159a1*/VCU_B./*@>1740d*/DataTypeConversion10_p5/*@>7097*/ = /*@>13cd4*/(uint8_T)(/*@>13012*/tmp/*@>13015*/ < /*@>13011*/0.0/*@>13015*/ ? (int32_T)/*@>1301d*/(uint8_T)-/*@<13026*//*@>1301b*/(int8_T)/*@>13029*/(uint8_T)-/*@<13019*//*@>13016*/tmp : (int32_T)/*@>1302c*/(uint8_T)/*@>1301e*/tmp);
/* End of DataTypeConversion: '<S97>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write5' */
/*@>15c76*/VCU_DW./*@>17503*/VAR_OUT_p_pneum/*@>7099*/ = /*@>159a7*/VCU_B./*@>17410*/DataTypeConversion10_p5;
/* Gain: '<S98>/Factor' */
/*@>159ad*/VCU_B./*@>17413*/Factor_nt/*@>70a1*/ = /*@>12e24*/10.0/*@>12fe4*/ * /*@>159b3*/VCU_B./*@>17416*/U_Bat;
/* Sum: '<S98>/Add1' */
/*@>159b9*/VCU_B./*@>17419*/Add1_ph/*@>99ad*/ = /*@>159bf*/VCU_B./*@>1741c*/Factor_nt;
/* DataTypeConversion: '<S98>/Data Type Conversion10' */
/*@>12f9f*/tmp/*@>12fa1*/ = /*@>14bf9*/floor(/*@>159c5*/VCU_B./*@>1741f*/Add1_ph);
/*@>12fbf*/if (/*@>14bfb*/rtIsNaN(/*@>12fa3*/tmp)/*@>12fad*/ || /*@>14bfd*/rtIsInf(/*@>12fa8*/tmp)) {
    /*@>12fb0*/tmp/*@>12fb2*/ = /*@>12faf*/0.0;
} else {
    /*@>12fbb*/tmp/*@>12fbd*/ = /*@>14bff*/fmod(/*@>12fb4*/tmp, /*@>12fb8*/256.0);
}
/*@>159cb*/VCU_B./*@>17422*/DataTypeConversion10_bm/*@>70a9*/ = /*@>13ce9*/(uint8_T)(/*@>12fc6*/tmp/*@>12fc9*/ < /*@>12fc5*/0.0/*@>12fc9*/ ? (int32_T)/*@>12fd1*/(uint8_T)-/*@<12fda*//*@>12fcf*/(int8_T)/*@>12fdd*/(uint8_T)-/*@<12fcd*//*@>12fca*/tmp : (int32_T)/*@>12fe0*/(uint8_T)/*@>12fd2*/tmp);
/* End of DataTypeConversion: '<S98>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write6' */
/*@>15c7c*/VCU_DW./*@>17506*/VAR_OUT_U_Bat/*@>70ab*/ = /*@>159d1*/VCU_B./*@>17425*/DataTypeConversion10_bm;
/* Sum: '<S106>/Add1' */
/*@>159d7*/VCU_B./*@>17428*/Add1_jp/*@>99b2*/ = /*@>159dd*/VCU_B./*@>1742b*/Saturation;
/* DataStoreWrite: '<S69>/Data Store Write' */
/*@>15c82*/VCU_DW./*@>17509*/VAR_OUT_Fans_active/*@>70b2*/ = /*@>159e3*/VCU_B./*@>1742e*/Add1_jp;
/* DataStoreWrite: '<S69>/Data Store Write1' */
/*@>15c88*/VCU_DW./*@>1750c*/VAR_OUT_Waterpump_active/*@>70b4*/ = /*@>15ae6*/VCU_ConstB./*@>174ac*/Add1;
/* RelationalOperator: '<S109>/Compare' incorporates:
 *  Constant: '<S109>/Constant'
 */
/*@>159e9*/VCU_B./*@>17431*/Compare_mi/*@>70b8*/ = (/*@>159ef*/VCU_B./*@>17434*/VOVG_ShiftUp/*@>70b7*/ > /*@>12e25*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write' */
/*@>15c8e*/VCU_DW./*@>1750f*/VAR_OUT_VOVG_ShiftUp/*@>70ba*/ = /*@>159f5*/VCU_B./*@>17437*/Compare_mi;
/* RelationalOperator: '<S110>/Compare' incorporates:
 *  Constant: '<S110>/Constant'
 */
/*@>159fb*/VCU_B./*@>1743a*/Compare_ek/*@>70be*/ = (/*@>15a01*/VCU_B./*@>1743d*/VOVG_ShiftDown/*@>70bd*/ > /*@>12e26*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write1' */
/*@>15c94*/VCU_DW./*@>17512*/VAR_OUT_VOVG_ShiftDown/*@>70c0*/ = /*@>15a07*/VCU_B./*@>17440*/Compare_ek;
/* Gain: '<S63>/Gain4' */
/*@>12f57*/tmp/*@>12f59*/ = /*@>14c01*/floor(/*@>12e27*/65535.0/*@>12f50*/ * /*@>15a0d*/VCU_B./*@>17443*/Saturation);
/*@>12f77*/if (/*@>14c03*/rtIsNaN(/*@>12f5b*/tmp)/*@>12f65*/ || /*@>14c05*/rtIsInf(/*@>12f60*/tmp)) {
    /*@>12f68*/tmp/*@>12f6a*/ = /*@>12f67*/0.0;
} else {
    /*@>12f73*/tmp/*@>12f75*/ = /*@>14c07*/fmod(/*@>12f6c*/tmp, /*@>12f70*/65536.0);
}
/*@>15a13*/VCU_B./*@>17446*/Gain4_f/*@>70c8*/ = /*@>13d08*/(uint16_T)(/*@>12f7e*/tmp/*@>12f81*/ < /*@>12f7d*/0.0/*@>12f81*/ ? (int32_T)/*@>12f89*/(uint16_T)-/*@<12f92*//*@>12f87*/(int16_T)/*@>12f95*/(uint16_T)-/*@<12f85*//*@>12f82*/tmp : (int32_T)/*@>12f98*/(uint16_T)/*@>12f8a*/tmp);
/* End of Gain: '<S63>/Gain4' */

/* DataStoreWrite: '<S63>/Data Store Write10' */
/*@>15c9a*/VCU_DW./*@>17515*/VAR_OUT_Fans2_PWM_active/*@>70ca*/ = /*@>15a19*/VCU_B./*@>17449*/Gain4_f;
/* RelationalOperator: '<S113>/Compare' incorporates:
 *  Constant: '<S113>/Constant'
 */
/*@>15a1f*/VCU_B./*@>1744c*/Compare_pr/*@>70ce*/ = (/*@>15a25*/VCU_B./*@>1744f*/Ignition_Cut/*@>70cd*/ > /*@>12e28*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write2' */
/*@>15ca0*/VCU_DW./*@>17518*/VAR_OUT_Ignition_Cut/*@>70d0*/ = /*@>15a2b*/VCU_B./*@>17452*/Compare_pr;
/* RelationalOperator: '<S111>/Compare' incorporates:
 *  Constant: '<S111>/Constant'
 */
/*@>15a31*/VCU_B./*@>17455*/Compare_d3/*@>70d4*/ = (/*@>15a37*/VCU_B./*@>17458*/VOVG_IN/*@>70d3*/ > /*@>12e29*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write3' */
/*@>15ca6*/VCU_DW./*@>1751b*/VAR_OUT_VOVG_IN/*@>70d6*/ = /*@>15a3d*/VCU_B./*@>1745b*/Compare_d3;
/* RelationalOperator: '<S112>/Compare' incorporates:
 *  Constant: '<S112>/Constant'
 */
/*@>15a43*/VCU_B./*@>1745e*/Compare_bb/*@>70da*/ = (/*@>15a49*/VCU_B./*@>17461*/VOVG_OUT/*@>70d9*/ > /*@>12e2a*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write4' */
/*@>15cac*/VCU_DW./*@>1751e*/VAR_OUT_VOVG_OUT/*@>70dc*/ = /*@>15a4f*/VCU_B./*@>17464*/Compare_bb;
/* Saturate: '<S63>/Saturation1' */
/*@>13df7*/if (/*@>15a55*/VCU_B./*@>17467*/MHJ9_IN/*@>13df2*/ > /*@>13f30*/1.0) {
    /*@>15a61*/VCU_B./*@>1746d*/Saturation1/*@>13df9*/ = /*@>13f36*/1.0;
} else /*@>13dfa*/if (/*@>15a5b*/VCU_B./*@>1746a*/MHJ9_IN/*@>13def*/ < /*@>13f32*/0.0) {
    /*@>15a73*/VCU_B./*@>17476*/Saturation1/*@>13dfc*/ = /*@>13f34*/0.0;
} else {
    /*@>15a67*/VCU_B./*@>17470*/Saturation1/*@>13df6*/ = /*@>15a6d*/VCU_B./*@>17473*/MHJ9_IN;
}
/* End of Saturate: '<S63>/Saturation1' */

/* Gain: '<S63>/uint16 ' */
/*@>12f0b*/tmp/*@>12f0d*/ = /*@>14c09*/floor(/*@>12e2d*/65535.0/*@>12f04*/ * /*@>15a79*/VCU_B./*@>17479*/Saturation1);
/*@>12f2b*/if (/*@>14c0b*/rtIsNaN(/*@>12f0f*/tmp)/*@>12f19*/ || /*@>14c0d*/rtIsInf(/*@>12f14*/tmp)) {
    /*@>12f1c*/tmp/*@>12f1e*/ = /*@>12f1b*/0.0;
} else {
    /*@>12f27*/tmp/*@>12f29*/ = /*@>14c0f*/fmod(/*@>12f20*/tmp, /*@>12f24*/65536.0);
}
/*@>15a7f*/VCU_B./*@>1747c*/uint16/*@>70ea*/ = /*@>13d27*/(uint16_T)(/*@>12f32*/tmp/*@>12f35*/ < /*@>12f31*/0.0/*@>12f35*/ ? (int32_T)/*@>12f3d*/(uint16_T)-/*@<12f46*//*@>12f3b*/(int16_T)/*@>12f49*/(uint16_T)-/*@<12f39*//*@>12f36*/tmp : (int32_T)/*@>12f4c*/(uint16_T)/*@>12f3e*/tmp);
/* End of Gain: '<S63>/uint16 ' */

/* DataStoreWrite: '<S63>/Data Store Write5' */
/*@>15cb2*/VCU_DW./*@>17521*/VAR_OUT_MHJ9_IN/*@>70ec*/ = /*@>15a85*/VCU_B./*@>1747f*/uint16;
/* Saturate: '<S63>/Saturation2' */
/*@>13e42*/if (/*@>15a8b*/VCU_B./*@>17482*/MHJ9_OUT/*@>13e3d*/ > /*@>13f38*/1.0) {
    /*@>15a97*/VCU_B./*@>17488*/Saturation2/*@>13e44*/ = /*@>13f3e*/1.0;
} else /*@>13e45*/if (/*@>15a91*/VCU_B./*@>17485*/MHJ9_OUT/*@>13e3a*/ < /*@>13f3a*/0.0) {
    /*@>15aa9*/VCU_B./*@>17491*/Saturation2/*@>13e47*/ = /*@>13f3c*/0.0;
} else {
    /*@>15a9d*/VCU_B./*@>1748b*/Saturation2/*@>13e41*/ = /*@>15aa3*/VCU_B./*@>1748e*/MHJ9_OUT;
}
/* End of Saturate: '<S63>/Saturation2' */

/* Gain: '<S63>/uint16_1 ' */
/*@>12ebf*/tmp/*@>12ec1*/ = /*@>14c11*/floor(/*@>12e30*/65535.0/*@>12eb8*/ * /*@>15aaf*/VCU_B./*@>17494*/Saturation2);
/*@>12edf*/if (/*@>14c13*/rtIsNaN(/*@>12ec3*/tmp)/*@>12ecd*/ || /*@>14c15*/rtIsInf(/*@>12ec8*/tmp)) {
    /*@>12ed0*/tmp/*@>12ed2*/ = /*@>12ecf*/0.0;
} else {
    /*@>12edb*/tmp/*@>12edd*/ = /*@>14c17*/fmod(/*@>12ed4*/tmp, /*@>12ed8*/65536.0);
}
/*@>15ab5*/VCU_B./*@>17497*/uint16_1/*@>70fa*/ = /*@>13d3a*/(uint16_T)(/*@>12ee6*/tmp/*@>12ee9*/ < /*@>12ee5*/0.0/*@>12ee9*/ ? (int32_T)/*@>12ef1*/(uint16_T)-/*@<12efa*//*@>12eef*/(int16_T)/*@>12efd*/(uint16_T)-/*@<12eed*//*@>12eea*/tmp : (int32_T)/*@>12f00*/(uint16_T)/*@>12ef2*/tmp);
/* End of Gain: '<S63>/uint16_1 ' */

/* DataStoreWrite: '<S63>/Data Store Write6' */
/*@>15cb8*/VCU_DW./*@>17524*/VAR_OUT_MHJ9_OUT/*@>70fc*/ = /*@>15abb*/VCU_B./*@>1749a*/uint16_1;
/* DataStoreWrite: '<S63>/Data Store Write8' */
/*@>15cbe*/VCU_DW./*@>17527*/VAR_OUT_Waterpump_PWM_active/*@>70fe*/ = /*@>15aec*/VCU_ConstB./*@>174af*/Gain6;
/* Gain: '<S63>/Gain5' */
/*@>12e5d*/tmp/*@>12e5f*/ = /*@>14c19*/floor(/*@>12e31*/65535.0/*@>12e4c*/ * /*@>15ac1*/VCU_B./*@>1749d*/Saturation);
/*@>12e93*/if (/*@>14c1b*/rtIsNaN(/*@>12e61*/tmp)/*@>12e75*/ || /*@>14c1d*/rtIsInf(/*@>12e66*/tmp)) {
    /*@>12e78*/tmp/*@>12e7a*/ = /*@>12e77*/0.0;
} else {
    /*@>12e8f*/tmp/*@>12e91*/ = /*@>14c1f*/fmod(/*@>12e7c*/tmp, /*@>12e80*/65536.0);
}
/*@>15ac7*/VCU_B./*@>174a0*/Gain5/*@>7106*/ = /*@>13d4d*/(uint16_T)(/*@>12e9a*/tmp/*@>12e9d*/ < /*@>12e99*/0.0/*@>12e9d*/ ? (int32_T)/*@>12ea5*/(uint16_T)-/*@<12eae*//*@>12ea3*/(int16_T)/*@>12eb1*/(uint16_T)-/*@<12ea1*//*@>12e9e*/tmp : (int32_T)/*@>12eb4*/(uint16_T)/*@>12ea6*/tmp);
/* End of Gain: '<S63>/Gain5' */

/* DataStoreWrite: '<S63>/Data Store Write9' */
/*@>15cc4*/VCU_DW./*@>1752a*/VAR_OUT_Fans1_PWM_active/*@>7108*/ = /*@>15acd*/VCU_B./*@>174a3*/Gain5;
/* DataStoreWrite: '<S63>/Data Store Write11' */
/*@>15cca*/VCU_DW./*@>1752d*/VAR_OUT_BSD/*@>710a*/ = /*@>15ad3*/VCU_B./*@>174a6*/LogicalOperator1_a;
/* DataStoreWrite: '<S63>/Data Store Write7' */
/*@>15cd0*/VCU_DW./*@>17530*/VAR_OUT_Brakelight/*@>710c*/ = /*@>15ad9*/VCU_B./*@>174a9*/Brakelight_f;





      
  


        
    
      
          }
    
  



                








  


  


  


  

