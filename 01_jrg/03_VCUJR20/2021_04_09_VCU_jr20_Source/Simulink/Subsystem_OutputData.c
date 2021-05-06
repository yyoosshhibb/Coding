/* 
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 * 
 * File: Subsystem_OutputData.c
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


    

        #include "Subsystem_OutputData.h"
          /* Include model header file for global data */
              #include "VCU.h"

            #include "VCU_private.h"





  


  


  


  


  


  


  


  


  


  


  


  


  


  


    
       
    
  

          /* Output and update for atomic system: '<Root>/Output Data' */
      
              
  
        void FUNC_OutputData(void)
  {
  
                      
      
real_T tmp;

      
      
  



                          
      
  



                                /* Gain: '<S63>/Gain' */
/*@>15372*/VCU_B./*@>1708c*/n_wheel_FL_kmh/*@>6eb5*/ = /*@>12c18*/3.6/*@>13672*/ * /*@>15378*/VCU_B./*@>1708f*/Add1_k;
/* Gain: '<S70>/Factor' */
/*@>1537e*/VCU_B./*@>17092*/Factor/*@>6ebd*/ = /*@>12c19*/10.0/*@>1366e*/ * /*@>15384*/VCU_B./*@>17095*/n_wheel_FL_kmh;
/* Sum: '<S70>/Add1' */
/*@>1538a*/VCU_B./*@>17098*/Add1_g/*@>98bc*/ = /*@>15390*/VCU_B./*@>1709b*/Factor;
/* DataTypeConversion: '<S70>/Data Type Conversion10' */
/*@>13629*/tmp/*@>1362b*/ = /*@>14950*/floor(/*@>15396*/VCU_B./*@>1709e*/Add1_g);
/*@>13649*/if (/*@>14952*/rtIsNaN(/*@>1362d*/tmp)/*@>13637*/ || /*@>14954*/rtIsInf(/*@>13632*/tmp)) {
    /*@>1363a*/tmp/*@>1363c*/ = /*@>13639*/0.0;
} else {
    /*@>13645*/tmp/*@>13647*/ = /*@>14956*/fmod(/*@>1363e*/tmp, /*@>13642*/65536.0);
}
/*@>1539c*/VCU_B./*@>170a1*/DataTypeConversion10/*@>6ec5*/ = /*@>138a6*/(uint16_T)(/*@>13650*/tmp/*@>13653*/ < /*@>1364f*/0.0/*@>13653*/ ? (int32_T)/*@>1365b*/(uint16_T)-/*@<13664*//*@>13659*/(int16_T)/*@>13667*/(uint16_T)-/*@<13657*//*@>13654*/tmp : (int32_T)/*@>1366a*/(uint16_T)/*@>1365c*/tmp);
/* End of DataTypeConversion: '<S70>/Data Type Conversion10' */

/* DataStoreWrite: '<S64>/Data Store Write' */
/*@>15a43*/VCU_DW./*@>17380*/VAR_OUT_n_wheel_FL_kmproh/*@>6ec7*/ = /*@>153a2*/VCU_B./*@>170a4*/DataTypeConversion10;
/* Gain: '<S63>/Gain1' */
/*@>153a8*/VCU_B./*@>170a7*/n_wheel_FR_kmh/*@>6ecf*/ = /*@>12c1a*/3.6/*@>13622*/ * /*@>153ae*/VCU_B./*@>170aa*/Add1_de;
/* Gain: '<S71>/Factor' */
/*@>153b4*/VCU_B./*@>170ad*/Factor_c/*@>6ed7*/ = /*@>12c1b*/10.0/*@>1361e*/ * /*@>153ba*/VCU_B./*@>170b0*/n_wheel_FR_kmh;
/* Sum: '<S71>/Add1' */
/*@>153c0*/VCU_B./*@>170b3*/Add1_i/*@>98c1*/ = /*@>153c6*/VCU_B./*@>170b6*/Factor_c;
/* DataTypeConversion: '<S71>/Data Type Conversion10' */
/*@>135d9*/tmp/*@>135db*/ = /*@>14958*/floor(/*@>153cc*/VCU_B./*@>170b9*/Add1_i);
/*@>135f9*/if (/*@>1495a*/rtIsNaN(/*@>135dd*/tmp)/*@>135e7*/ || /*@>1495c*/rtIsInf(/*@>135e2*/tmp)) {
    /*@>135ea*/tmp/*@>135ec*/ = /*@>135e9*/0.0;
} else {
    /*@>135f5*/tmp/*@>135f7*/ = /*@>1495e*/fmod(/*@>135ee*/tmp, /*@>135f2*/65536.0);
}
/*@>153d2*/VCU_B./*@>170bc*/DataTypeConversion10_b/*@>6edf*/ = /*@>138bd*/(uint16_T)(/*@>13600*/tmp/*@>13603*/ < /*@>135ff*/0.0/*@>13603*/ ? (int32_T)/*@>1360b*/(uint16_T)-/*@<13614*//*@>13609*/(int16_T)/*@>13617*/(uint16_T)-/*@<13607*//*@>13604*/tmp : (int32_T)/*@>1361a*/(uint16_T)/*@>1360c*/tmp);
/* End of DataTypeConversion: '<S71>/Data Type Conversion10' */

/* DataStoreWrite: '<S64>/Data Store Write1' */
/*@>15a49*/VCU_DW./*@>17383*/VAR_OUT_n_wheel_FR_kmproh/*@>6ee1*/ = /*@>153d8*/VCU_B./*@>170bf*/DataTypeConversion10_b;
/* Gain: '<S63>/Gain2' */
/*@>153de*/VCU_B./*@>170c2*/n_wheel_RL_kmh/*@>6ee9*/ = /*@>12c1c*/3.6/*@>135d2*/ * /*@>153e4*/VCU_B./*@>170c5*/Add1_ks;
/* Gain: '<S72>/Factor' */
/*@>153ea*/VCU_B./*@>170c8*/Factor_j/*@>6ef1*/ = /*@>12c1d*/10.0/*@>135ce*/ * /*@>153f0*/VCU_B./*@>170cb*/n_wheel_RL_kmh;
/* Sum: '<S72>/Add1' */
/*@>153f6*/VCU_B./*@>170ce*/Add1_a/*@>98c6*/ = /*@>153fc*/VCU_B./*@>170d1*/Factor_j;
/* DataTypeConversion: '<S72>/Data Type Conversion10' */
/*@>13589*/tmp/*@>1358b*/ = /*@>14960*/floor(/*@>15402*/VCU_B./*@>170d4*/Add1_a);
/*@>135a9*/if (/*@>14962*/rtIsNaN(/*@>1358d*/tmp)/*@>13597*/ || /*@>14964*/rtIsInf(/*@>13592*/tmp)) {
    /*@>1359a*/tmp/*@>1359c*/ = /*@>13599*/0.0;
} else {
    /*@>135a5*/tmp/*@>135a7*/ = /*@>14966*/fmod(/*@>1359e*/tmp, /*@>135a2*/65536.0);
}
/*@>15408*/VCU_B./*@>170d7*/DataTypeConversion10_be/*@>6ef9*/ = /*@>138d4*/(uint16_T)(/*@>135b0*/tmp/*@>135b3*/ < /*@>135af*/0.0/*@>135b3*/ ? (int32_T)/*@>135bb*/(uint16_T)-/*@<135c4*//*@>135b9*/(int16_T)/*@>135c7*/(uint16_T)-/*@<135b7*//*@>135b4*/tmp : (int32_T)/*@>135ca*/(uint16_T)/*@>135bc*/tmp);
/* End of DataTypeConversion: '<S72>/Data Type Conversion10' */

/* DataStoreWrite: '<S64>/Data Store Write2' */
/*@>15a4f*/VCU_DW./*@>17386*/VAR_OUT_n_wheel_RL_kmproh/*@>6efb*/ = /*@>1540e*/VCU_B./*@>170da*/DataTypeConversion10_be;
/* Gain: '<S63>/Gain3' */
/*@>15414*/VCU_B./*@>170dd*/n_wheel_RR_kmh/*@>6f03*/ = /*@>12c1e*/3.6/*@>13582*/ * /*@>1541a*/VCU_B./*@>170e0*/Add1_eq;
/* Gain: '<S73>/Factor' */
/*@>15420*/VCU_B./*@>170e3*/Factor_h/*@>6f0b*/ = /*@>12c1f*/10.0/*@>1357e*/ * /*@>15426*/VCU_B./*@>170e6*/n_wheel_RR_kmh;
/* Sum: '<S73>/Add1' */
/*@>1542c*/VCU_B./*@>170e9*/Add1_e/*@>98cb*/ = /*@>15432*/VCU_B./*@>170ec*/Factor_h;
/* DataTypeConversion: '<S73>/Data Type Conversion10' */
/*@>13539*/tmp/*@>1353b*/ = /*@>14968*/floor(/*@>15438*/VCU_B./*@>170ef*/Add1_e);
/*@>13559*/if (/*@>1496a*/rtIsNaN(/*@>1353d*/tmp)/*@>13547*/ || /*@>1496c*/rtIsInf(/*@>13542*/tmp)) {
    /*@>1354a*/tmp/*@>1354c*/ = /*@>13549*/0.0;
} else {
    /*@>13555*/tmp/*@>13557*/ = /*@>1496e*/fmod(/*@>1354e*/tmp, /*@>13552*/65536.0);
}
/*@>1543e*/VCU_B./*@>170f2*/DataTypeConversion10_o/*@>6f13*/ = /*@>138eb*/(uint16_T)(/*@>13560*/tmp/*@>13563*/ < /*@>1355f*/0.0/*@>13563*/ ? (int32_T)/*@>1356b*/(uint16_T)-/*@<13574*//*@>13569*/(int16_T)/*@>13577*/(uint16_T)-/*@<13567*//*@>13564*/tmp : (int32_T)/*@>1357a*/(uint16_T)/*@>1356c*/tmp);
/* End of DataTypeConversion: '<S73>/Data Type Conversion10' */

/* DataStoreWrite: '<S64>/Data Store Write3' */
/*@>15a55*/VCU_DW./*@>17389*/VAR_OUT_n_wheel_RR_kmproh/*@>6f15*/ = /*@>15444*/VCU_B./*@>170f5*/DataTypeConversion10_o;
/* Sum: '<S80>/Add1' */
/*@>1544a*/VCU_B./*@>170f8*/Add1_j/*@>98d0*/ = /*@>15450*/VCU_B./*@>170fb*/Sensitivity1538mVbar;
/* DataTypeConversion: '<S80>/Data Type Conversion10' */
/*@>134f1*/tmp/*@>134f3*/ = /*@>14970*/floor(/*@>15456*/VCU_B./*@>170fe*/Add1_j);
/*@>13511*/if (/*@>14972*/rtIsNaN(/*@>134f5*/tmp)/*@>134ff*/ || /*@>14974*/rtIsInf(/*@>134fa*/tmp)) {
    /*@>13502*/tmp/*@>13504*/ = /*@>13501*/0.0;
} else {
    /*@>1350d*/tmp/*@>1350f*/ = /*@>14976*/fmod(/*@>13506*/tmp, /*@>1350a*/256.0);
}
/*@>1545c*/VCU_B./*@>17101*/DataTypeConversion10_ho/*@>6f1d*/ = /*@>138fe*/(uint8_T)(/*@>13518*/tmp/*@>1351b*/ < /*@>13517*/0.0/*@>1351b*/ ? (int32_T)/*@>13523*/(uint8_T)-/*@<1352c*//*@>13521*/(int8_T)/*@>1352f*/(uint8_T)-/*@<1351f*//*@>1351c*/tmp : (int32_T)/*@>13532*/(uint8_T)/*@>13524*/tmp);
/* End of DataTypeConversion: '<S80>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write' */
/*@>15a5b*/VCU_DW./*@>1738c*/VAR_OUT_p_brake_R/*@>6f1f*/ = /*@>15462*/VCU_B./*@>17104*/DataTypeConversion10_ho;
/* Gain: '<S81>/Factor' */
/*@>15468*/VCU_B./*@>17107*/Factor_d/*@>6f27*/ = /*@>12c20*/100.0/*@>134ea*/ * /*@>1546e*/VCU_B./*@>1710a*/Add1_f1;
/* Sum: '<S81>/Add1' */
/*@>15474*/VCU_B./*@>1710d*/Add1_l/*@>98d5*/ = /*@>1547a*/VCU_B./*@>17110*/Factor_d;
/* DataTypeConversion: '<S81>/Data Type Conversion10' */
/*@>134a5*/tmp/*@>134a7*/ = /*@>14978*/floor(/*@>15480*/VCU_B./*@>17113*/Add1_l);
/*@>134c5*/if (/*@>1497a*/rtIsNaN(/*@>134a9*/tmp)/*@>134b3*/ || /*@>1497c*/rtIsInf(/*@>134ae*/tmp)) {
    /*@>134b6*/tmp/*@>134b8*/ = /*@>134b5*/0.0;
} else {
    /*@>134c1*/tmp/*@>134c3*/ = /*@>1497e*/fmod(/*@>134ba*/tmp, /*@>134be*/256.0);
}
/*@>15486*/VCU_B./*@>17116*/DataTypeConversion10_fx/*@>6f2f*/ = /*@>13913*/(uint8_T)(/*@>134cc*/tmp/*@>134cf*/ < /*@>134cb*/0.0/*@>134cf*/ ? (int32_T)/*@>134d7*/(uint8_T)-/*@<134e0*//*@>134d5*/(int8_T)/*@>134e3*/(uint8_T)-/*@<134d3*//*@>134d0*/tmp : (int32_T)/*@>134e6*/(uint8_T)/*@>134d8*/tmp);
/* End of DataTypeConversion: '<S81>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write1' */
/*@>15a61*/VCU_DW./*@>1738f*/VAR_OUT_STW_mue_tyre/*@>6f31*/ = /*@>1548c*/VCU_B./*@>17119*/DataTypeConversion10_fx;
/* Gain: '<S82>/Factor' */
/*@>15492*/VCU_B./*@>1711c*/Factor_b/*@>6f39*/ = /*@>12c21*/10.0/*@>1349e*/ * /*@>15498*/VCU_B./*@>1711f*/x_clutch_LC;
/* Sum: '<S82>/Add1' */
/*@>1549e*/VCU_B./*@>17122*/Add1_ll/*@>98da*/ = /*@>154a4*/VCU_B./*@>17125*/Factor_b;
/* DataTypeConversion: '<S82>/Data Type Conversion10' */
/*@>13459*/tmp/*@>1345b*/ = /*@>14980*/floor(/*@>154aa*/VCU_B./*@>17128*/Add1_ll);
/*@>13479*/if (/*@>14982*/rtIsNaN(/*@>1345d*/tmp)/*@>13467*/ || /*@>14984*/rtIsInf(/*@>13462*/tmp)) {
    /*@>1346a*/tmp/*@>1346c*/ = /*@>13469*/0.0;
} else {
    /*@>13475*/tmp/*@>13477*/ = /*@>14986*/fmod(/*@>1346e*/tmp, /*@>13472*/256.0);
}
/*@>154b0*/VCU_B./*@>1712b*/DataTypeConversion10_ae/*@>6f41*/ = /*@>13928*/(uint8_T)(/*@>13480*/tmp/*@>13483*/ < /*@>1347f*/0.0/*@>13483*/ ? (int32_T)/*@>1348b*/(uint8_T)-/*@<13494*//*@>13489*/(int8_T)/*@>13497*/(uint8_T)-/*@<13487*//*@>13484*/tmp : (int32_T)/*@>1349a*/(uint8_T)/*@>1348c*/tmp);
/* End of DataTypeConversion: '<S82>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write2' */
/*@>15a67*/VCU_DW./*@>17392*/VAR_OUT_x_clutch_LC/*@>6f43*/ = /*@>154b6*/VCU_B./*@>1712e*/DataTypeConversion10_ae;
/* Sum: '<S115>/Add' */
/*@>154bc*/VCU_B./*@>17131*/Add_p/*@>98df*/ = /*@>154c2*/VCU_B./*@>17134*/Add1_k/*@>98dc*/ + /*@>154c8*/VCU_B./*@>17137*/Add1_de;
/* Gain: '<S115>/Gain' */
/*@>154ce*/VCU_B./*@>1713a*/Gain_g2/*@>6f50*/ = /*@>12c22*/0.5/*@>13452*/ * /*@>154d4*/VCU_B./*@>1713d*/Add_p;
/* RelationalOperator: '<S120>/Compare' incorporates:
 *  Constant: '<S120>/Constant'
 */
/*@>154da*/VCU_B./*@>17140*/Compare_in/*@>6f54*/ = (/*@>154e0*/VCU_B./*@>17143*/Gain_g2/*@>6f53*/ <= /*@>12c23*/1.0);
/* Product: '<S115>/Product' */
/*@>154e6*/VCU_B./*@>17146*/Product_o/*@>6f5b*/ = /*@>13937*/(uint16_T)(/*@>154ec*/VCU_B./*@>17149*/LC_dash_bit/*@>17149*/ ? /*@>13935*/(int32_T)/*@>154f2*/VCU_B./*@>1714c*/Compare_in : /*@>1344c*/0);
/* Gain: '<S83>/Factor' */
/*@>154f8*/VCU_B./*@>1714f*/Factor_ii/*@>6f63*/ = /*@>1393a*/(uint32_T)/*@>154fe*/VCU_B./*@>17152*/Product_o/*@>1344a*/ << /*@>13449*/15;
/* Sum: '<S83>/Add1' */
/*@>15504*/VCU_B./*@>17155*/Add1_b/*@>98e6*/ = /*@>1393e*/(real_T)/*@>1550a*/VCU_B./*@>17158*/Factor_ii/*@>1343e*/ * /*@>1343d*/3.0517578125E-5;
/* DataTypeConversion: '<S83>/Data Type Conversion10' */
/*@>133f7*/tmp/*@>133f9*/ = /*@>14988*/floor(/*@>15510*/VCU_B./*@>1715b*/Add1_b);
/*@>13417*/if (/*@>1498a*/rtIsNaN(/*@>133fb*/tmp)/*@>13405*/ || /*@>1498c*/rtIsInf(/*@>13400*/tmp)) {
    /*@>13408*/tmp/*@>1340a*/ = /*@>13407*/0.0;
} else {
    /*@>13413*/tmp/*@>13415*/ = /*@>1498e*/fmod(/*@>1340c*/tmp, /*@>13410*/256.0);
}
/*@>15516*/VCU_B./*@>1715e*/DataTypeConversion10_c/*@>6f6b*/ = /*@>1394d*/(uint8_T)(/*@>1341e*/tmp/*@>13421*/ < /*@>1341d*/0.0/*@>13421*/ ? (int32_T)/*@>13429*/(uint8_T)-/*@<13432*//*@>13427*/(int8_T)/*@>13435*/(uint8_T)-/*@<13425*//*@>13422*/tmp : (int32_T)/*@>13438*/(uint8_T)/*@>1342a*/tmp);
/* End of DataTypeConversion: '<S83>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write3' */
/*@>15a6d*/VCU_DW./*@>17395*/VAR_OUT_LC_dash_Bit/*@>6f6d*/ = /*@>1551c*/VCU_B./*@>17161*/DataTypeConversion10_c;
/* RelationalOperator: '<S108>/Compare' */
/*@>15522*/VCU_B./*@>17164*/Compare_k5/*@>6f71*/ = /*@>15528*/VCU_B./*@>17167*/LC_active_bit;
/* Gain: '<S84>/Factor' */
/*@>1552e*/VCU_B./*@>1716a*/Factor_c0/*@>6f79*/ = /*@>13956*/(uint8_T)(/*@>15534*/VCU_B./*@>1716d*/Compare_k5/*@>133f0*/ << /*@>133ef*/7);
/* Sum: '<S84>/Add1' */
/*@>1553a*/VCU_B./*@>17170*/Add1_n/*@>98ed*/ = /*@>13959*/(real_T)/*@>15540*/VCU_B./*@>17173*/Factor_c0/*@>133e1*/ * /*@>133e0*/0.0078125;
/* DataTypeConversion: '<S84>/Data Type Conversion10' */
/*@>1339a*/tmp/*@>1339c*/ = /*@>14990*/floor(/*@>15546*/VCU_B./*@>17176*/Add1_n);
/*@>133ba*/if (/*@>14992*/rtIsNaN(/*@>1339e*/tmp)/*@>133a8*/ || /*@>14994*/rtIsInf(/*@>133a3*/tmp)) {
    /*@>133ab*/tmp/*@>133ad*/ = /*@>133aa*/0.0;
} else {
    /*@>133b6*/tmp/*@>133b8*/ = /*@>14996*/fmod(/*@>133af*/tmp, /*@>133b3*/256.0);
}
/*@>1554c*/VCU_B./*@>17179*/DataTypeConversion10_ou/*@>6f81*/ = /*@>13968*/(uint8_T)(/*@>133c1*/tmp/*@>133c4*/ < /*@>133c0*/0.0/*@>133c4*/ ? (int32_T)/*@>133cc*/(uint8_T)-/*@<133d5*//*@>133ca*/(int8_T)/*@>133d8*/(uint8_T)-/*@<133c8*//*@>133c5*/tmp : (int32_T)/*@>133db*/(uint8_T)/*@>133cd*/tmp);
/* End of DataTypeConversion: '<S84>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write4' */
/*@>15a73*/VCU_DW./*@>17398*/VAR_OUT_LC_active_bit/*@>6f83*/ = /*@>15552*/VCU_B./*@>1717c*/DataTypeConversion10_ou;
/* Gain: '<S85>/Factor' */
/*@>15558*/VCU_B./*@>1717f*/Factor_b4/*@>6f8b*/ = /*@>1396f*/(uint8_T)(/*@>1555e*/VCU_B./*@>17182*/LC_ready_bit/*@>13393*/ << /*@>13392*/7);
/* Sum: '<S85>/Add1' */
/*@>15564*/VCU_B./*@>17185*/Add1_jg/*@>98f4*/ = /*@>13972*/(real_T)/*@>1556a*/VCU_B./*@>17188*/Factor_b4/*@>13384*/ * /*@>13383*/0.0078125;
/* DataTypeConversion: '<S85>/Data Type Conversion10' */
/*@>1333d*/tmp/*@>1333f*/ = /*@>14998*/floor(/*@>15570*/VCU_B./*@>1718b*/Add1_jg);
/*@>1335d*/if (/*@>1499a*/rtIsNaN(/*@>13341*/tmp)/*@>1334b*/ || /*@>1499c*/rtIsInf(/*@>13346*/tmp)) {
    /*@>1334e*/tmp/*@>13350*/ = /*@>1334d*/0.0;
} else {
    /*@>13359*/tmp/*@>1335b*/ = /*@>1499e*/fmod(/*@>13352*/tmp, /*@>13356*/256.0);
}
/*@>15576*/VCU_B./*@>1718e*/DataTypeConversion10_p/*@>6f93*/ = /*@>13981*/(uint8_T)(/*@>13364*/tmp/*@>13367*/ < /*@>13363*/0.0/*@>13367*/ ? (int32_T)/*@>1336f*/(uint8_T)-/*@<13378*//*@>1336d*/(int8_T)/*@>1337b*/(uint8_T)-/*@<1336b*//*@>13368*/tmp : (int32_T)/*@>1337e*/(uint8_T)/*@>13370*/tmp);
/* End of DataTypeConversion: '<S85>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write5' */
/*@>15a79*/VCU_DW./*@>1739b*/VAR_OUT_LC_ready_bit/*@>6f95*/ = /*@>1557c*/VCU_B./*@>17191*/DataTypeConversion10_p;
/* Sum: '<S86>/Add1' */
/*@>15582*/VCU_B./*@>17194*/Add1_bq/*@>98f9*/ = /*@>15588*/VCU_B./*@>17197*/LC_Mdes;
/* DataTypeConversion: '<S86>/Data Type Conversion10' */
/*@>132f5*/tmp/*@>132f7*/ = /*@>149a0*/floor(/*@>1558e*/VCU_B./*@>1719a*/Add1_bq);
/*@>13315*/if (/*@>149a2*/rtIsNaN(/*@>132f9*/tmp)/*@>13303*/ || /*@>149a4*/rtIsInf(/*@>132fe*/tmp)) {
    /*@>13306*/tmp/*@>13308*/ = /*@>13305*/0.0;
} else {
    /*@>13311*/tmp/*@>13313*/ = /*@>149a6*/fmod(/*@>1330a*/tmp, /*@>1330e*/256.0);
}
/*@>15594*/VCU_B./*@>1719d*/DataTypeConversion10_ci/*@>6f9d*/ = /*@>13994*/(uint8_T)(/*@>1331c*/tmp/*@>1331f*/ < /*@>1331b*/0.0/*@>1331f*/ ? (int32_T)/*@>13327*/(uint8_T)-/*@<13330*//*@>13325*/(int8_T)/*@>13333*/(uint8_T)-/*@<13323*//*@>13320*/tmp : (int32_T)/*@>13336*/(uint8_T)/*@>13328*/tmp);
/* End of DataTypeConversion: '<S86>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write6' */
/*@>15a7f*/VCU_DW./*@>1739e*/VAR_OUT_LC_Mdes/*@>6f9f*/ = /*@>1559a*/VCU_B./*@>171a0*/DataTypeConversion10_ci;
/* Gain: '<S87>/Factor' */
/*@>155a0*/VCU_B./*@>171a3*/Factor_n/*@>6fa7*/ = /*@>12c24*/0.1/*@>132ee*/ * /*@>155a6*/VCU_B./*@>171a6*/LC_Fnr;
/* Sum: '<S87>/Add1' */
/*@>155ac*/VCU_B./*@>171a9*/Add1_io/*@>98fe*/ = /*@>155b2*/VCU_B./*@>171ac*/Factor_n;
/* DataTypeConversion: '<S87>/Data Type Conversion10' */
/*@>132a9*/tmp/*@>132ab*/ = /*@>149a8*/floor(/*@>155b8*/VCU_B./*@>171af*/Add1_io);
/*@>132c9*/if (/*@>149aa*/rtIsNaN(/*@>132ad*/tmp)/*@>132b7*/ || /*@>149ac*/rtIsInf(/*@>132b2*/tmp)) {
    /*@>132ba*/tmp/*@>132bc*/ = /*@>132b9*/0.0;
} else {
    /*@>132c5*/tmp/*@>132c7*/ = /*@>149ae*/fmod(/*@>132be*/tmp, /*@>132c2*/256.0);
}
/*@>155be*/VCU_B./*@>171b2*/DataTypeConversion10_j/*@>6faf*/ = /*@>139a9*/(uint8_T)(/*@>132d0*/tmp/*@>132d3*/ < /*@>132cf*/0.0/*@>132d3*/ ? (int32_T)/*@>132db*/(uint8_T)-/*@<132e4*//*@>132d9*/(int8_T)/*@>132e7*/(uint8_T)-/*@<132d7*//*@>132d4*/tmp : (int32_T)/*@>132ea*/(uint8_T)/*@>132dc*/tmp);
/* End of DataTypeConversion: '<S87>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write7' */
/*@>15a85*/VCU_DW./*@>173a1*/VAR_OUT_LC_Fnr/*@>6fb1*/ = /*@>155c4*/VCU_B./*@>171b5*/DataTypeConversion10_j;
/* Sum: '<S74>/Add1' */
/*@>155ca*/VCU_B./*@>171b8*/Add1_p/*@>9903*/ = /*@>155d0*/VCU_B./*@>171bb*/ABS_switchstate;
/* DataTypeConversion: '<S74>/Data Type Conversion10' */
/*@>13261*/tmp/*@>13263*/ = /*@>149b0*/floor(/*@>155d6*/VCU_B./*@>171be*/Add1_p);
/*@>13281*/if (/*@>149b2*/rtIsNaN(/*@>13265*/tmp)/*@>1326f*/ || /*@>149b4*/rtIsInf(/*@>1326a*/tmp)) {
    /*@>13272*/tmp/*@>13274*/ = /*@>13271*/0.0;
} else {
    /*@>1327d*/tmp/*@>1327f*/ = /*@>149b6*/fmod(/*@>13276*/tmp, /*@>1327a*/256.0);
}
/*@>155dc*/VCU_B./*@>171c1*/DataTypeConversion10_o3/*@>6fb9*/ = /*@>139bc*/(uint8_T)(/*@>13288*/tmp/*@>1328b*/ < /*@>13287*/0.0/*@>1328b*/ ? (int32_T)/*@>13293*/(uint8_T)-/*@<1329c*//*@>13291*/(int8_T)/*@>1329f*/(uint8_T)-/*@<1328f*//*@>1328c*/tmp : (int32_T)/*@>132a2*/(uint8_T)/*@>13294*/tmp);
/* End of DataTypeConversion: '<S74>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write' */
/*@>15a8b*/VCU_DW./*@>173a4*/VAR_OUT_ABS_switchstate/*@>6fbb*/ = /*@>155e2*/VCU_B./*@>171c4*/DataTypeConversion10_o3;
/* Sum: '<S75>/Add1' */
/*@>155e8*/VCU_B./*@>171c7*/Add1_c/*@>9908*/ = /*@>155ee*/VCU_B./*@>171ca*/Add1_m;
/* DataTypeConversion: '<S75>/Data Type Conversion10' */
/*@>13219*/tmp/*@>1321b*/ = /*@>149b8*/floor(/*@>155f4*/VCU_B./*@>171cd*/Add1_c);
/*@>13239*/if (/*@>149ba*/rtIsNaN(/*@>1321d*/tmp)/*@>13227*/ || /*@>149bc*/rtIsInf(/*@>13222*/tmp)) {
    /*@>1322a*/tmp/*@>1322c*/ = /*@>13229*/0.0;
} else {
    /*@>13235*/tmp/*@>13237*/ = /*@>149be*/fmod(/*@>1322e*/tmp, /*@>13232*/65536.0);
}
/*@>155fa*/VCU_B./*@>171d0*/DataTypeConversion10_h/*@>6fc3*/ = /*@>139cf*/(uint16_T)(/*@>13240*/tmp/*@>13243*/ < /*@>1323f*/0.0/*@>13243*/ ? (int32_T)/*@>1324b*/(uint16_T)-/*@<13254*//*@>13249*/(int16_T)/*@>13257*/(uint16_T)-/*@<13247*//*@>13244*/tmp : (int32_T)/*@>1325a*/(uint16_T)/*@>1324c*/tmp);
/* End of DataTypeConversion: '<S75>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write1' */
/*@>15a91*/VCU_DW./*@>173a7*/VAR_OUT_p_brake_F/*@>6fc5*/ = /*@>15600*/VCU_B./*@>171d3*/DataTypeConversion10_h;
/* Sum: '<S76>/Add1' */
/*@>15606*/VCU_B./*@>171d6*/Add1_js/*@>990d*/ = /*@>1560c*/VCU_B./*@>171d9*/ABS_BL_switch;
/* DataTypeConversion: '<S76>/Data Type Conversion10' */
/*@>131d1*/tmp/*@>131d3*/ = /*@>149c0*/floor(/*@>15612*/VCU_B./*@>171dc*/Add1_js);
/*@>131f1*/if (/*@>149c2*/rtIsNaN(/*@>131d5*/tmp)/*@>131df*/ || /*@>149c4*/rtIsInf(/*@>131da*/tmp)) {
    /*@>131e2*/tmp/*@>131e4*/ = /*@>131e1*/0.0;
} else {
    /*@>131ed*/tmp/*@>131ef*/ = /*@>149c6*/fmod(/*@>131e6*/tmp, /*@>131ea*/256.0);
}
/*@>15618*/VCU_B./*@>171df*/DataTypeConversion10_ok/*@>6fcd*/ = /*@>139e2*/(uint8_T)(/*@>131f8*/tmp/*@>131fb*/ < /*@>131f7*/0.0/*@>131fb*/ ? (int32_T)/*@>13203*/(uint8_T)-/*@<1320c*//*@>13201*/(int8_T)/*@>1320f*/(uint8_T)-/*@<131ff*//*@>131fc*/tmp : (int32_T)/*@>13212*/(uint8_T)/*@>13204*/tmp);
/* End of DataTypeConversion: '<S76>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write2' */
/*@>15a97*/VCU_DW./*@>173aa*/VAR_OUT_ABS_BL_switch/*@>6fcf*/ = /*@>1561e*/VCU_B./*@>171e2*/DataTypeConversion10_ok;
/* Sum: '<S77>/Add1' */
/*@>15624*/VCU_B./*@>171e5*/Add1_ak/*@>9912*/ = /*@>1562a*/VCU_B./*@>171e8*/ABS_active;
/* DataTypeConversion: '<S77>/Data Type Conversion10' */
/*@>13189*/tmp/*@>1318b*/ = /*@>149c8*/floor(/*@>15630*/VCU_B./*@>171eb*/Add1_ak);
/*@>131a9*/if (/*@>149ca*/rtIsNaN(/*@>1318d*/tmp)/*@>13197*/ || /*@>149cc*/rtIsInf(/*@>13192*/tmp)) {
    /*@>1319a*/tmp/*@>1319c*/ = /*@>13199*/0.0;
} else {
    /*@>131a5*/tmp/*@>131a7*/ = /*@>149ce*/fmod(/*@>1319e*/tmp, /*@>131a2*/256.0);
}
/*@>15636*/VCU_B./*@>171ee*/DataTypeConversion10_ah/*@>6fd7*/ = /*@>139f5*/(uint8_T)(/*@>131b0*/tmp/*@>131b3*/ < /*@>131af*/0.0/*@>131b3*/ ? (int32_T)/*@>131bb*/(uint8_T)-/*@<131c4*//*@>131b9*/(int8_T)/*@>131c7*/(uint8_T)-/*@<131b7*//*@>131b4*/tmp : (int32_T)/*@>131ca*/(uint8_T)/*@>131bc*/tmp);
/* End of DataTypeConversion: '<S77>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write3' */
/*@>15a9d*/VCU_DW./*@>173ad*/VAR_OUT_ABS_active/*@>6fd9*/ = /*@>1563c*/VCU_B./*@>171f1*/DataTypeConversion10_ah;
/* Sum: '<S78>/Add1' */
/*@>15642*/VCU_B./*@>171f4*/Add1_n4/*@>9917*/ = /*@>15648*/VCU_B./*@>171f7*/ABS_EBD_Lamp;
/* DataTypeConversion: '<S78>/Data Type Conversion10' */
/*@>13141*/tmp/*@>13143*/ = /*@>149d0*/floor(/*@>1564e*/VCU_B./*@>171fa*/Add1_n4);
/*@>13161*/if (/*@>149d2*/rtIsNaN(/*@>13145*/tmp)/*@>1314f*/ || /*@>149d4*/rtIsInf(/*@>1314a*/tmp)) {
    /*@>13152*/tmp/*@>13154*/ = /*@>13151*/0.0;
} else {
    /*@>1315d*/tmp/*@>1315f*/ = /*@>149d6*/fmod(/*@>13156*/tmp, /*@>1315a*/256.0);
}
/*@>15654*/VCU_B./*@>171fd*/DataTypeConversion10_d/*@>6fe1*/ = /*@>13a08*/(uint8_T)(/*@>13168*/tmp/*@>1316b*/ < /*@>13167*/0.0/*@>1316b*/ ? (int32_T)/*@>13173*/(uint8_T)-/*@<1317c*//*@>13171*/(int8_T)/*@>1317f*/(uint8_T)-/*@<1316f*//*@>1316c*/tmp : (int32_T)/*@>13182*/(uint8_T)/*@>13174*/tmp);
/* End of DataTypeConversion: '<S78>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write4' */
/*@>15aa3*/VCU_DW./*@>173b0*/VAR_OUT_ABS_EBD_Lamp/*@>6fe3*/ = /*@>1565a*/VCU_B./*@>17200*/DataTypeConversion10_d;
/* Sum: '<S79>/Add1' */
/*@>15660*/VCU_B./*@>17203*/Add1_h/*@>991c*/ = /*@>15666*/VCU_B./*@>17206*/ABS_Lamp;
/* DataTypeConversion: '<S79>/Data Type Conversion10' */
/*@>130f9*/tmp/*@>130fb*/ = /*@>149d8*/floor(/*@>1566c*/VCU_B./*@>17209*/Add1_h);
/*@>13119*/if (/*@>149da*/rtIsNaN(/*@>130fd*/tmp)/*@>13107*/ || /*@>149dc*/rtIsInf(/*@>13102*/tmp)) {
    /*@>1310a*/tmp/*@>1310c*/ = /*@>13109*/0.0;
} else {
    /*@>13115*/tmp/*@>13117*/ = /*@>149de*/fmod(/*@>1310e*/tmp, /*@>13112*/256.0);
}
/*@>15672*/VCU_B./*@>1720c*/DataTypeConversion10_bd/*@>6feb*/ = /*@>13a1b*/(uint8_T)(/*@>13120*/tmp/*@>13123*/ < /*@>1311f*/0.0/*@>13123*/ ? (int32_T)/*@>1312b*/(uint8_T)-/*@<13134*//*@>13129*/(int8_T)/*@>13137*/(uint8_T)-/*@<13127*//*@>13124*/tmp : (int32_T)/*@>1313a*/(uint8_T)/*@>1312c*/tmp);
/* End of DataTypeConversion: '<S79>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write5' */
/*@>15aa9*/VCU_DW./*@>173b3*/VAR_OUT_ABS_Lamp/*@>6fed*/ = /*@>15678*/VCU_B./*@>1720f*/DataTypeConversion10_bd;
/* Gain: '<S88>/Factor' */
/*@>1567e*/VCU_B./*@>17212*/Factor_a/*@>6ff5*/ = /*@>12c25*/10.0/*@>130f2*/ * /*@>15684*/VCU_B./*@>17215*/Saturation1_e;
/* Sum: '<S88>/Add1' */
/*@>1568a*/VCU_B./*@>17218*/Add1_lh/*@>9921*/ = /*@>15690*/VCU_B./*@>1721b*/Factor_a;
/* DataTypeConversion: '<S88>/Data Type Conversion10' */
/*@>130ad*/tmp/*@>130af*/ = /*@>149e0*/floor(/*@>15696*/VCU_B./*@>1721e*/Add1_lh);
/*@>130cd*/if (/*@>149e2*/rtIsNaN(/*@>130b1*/tmp)/*@>130bb*/ || /*@>149e4*/rtIsInf(/*@>130b6*/tmp)) {
    /*@>130be*/tmp/*@>130c0*/ = /*@>130bd*/0.0;
} else {
    /*@>130c9*/tmp/*@>130cb*/ = /*@>149e6*/fmod(/*@>130c2*/tmp, /*@>130c6*/65536.0);
}
/*@>1569c*/VCU_B./*@>17221*/DataTypeConversion10_m/*@>6ffd*/ = /*@>13a30*/(uint16_T)(/*@>130d4*/tmp/*@>130d7*/ < /*@>130d3*/0.0/*@>130d7*/ ? (int32_T)/*@>130df*/(uint16_T)-/*@<130e8*//*@>130dd*/(int16_T)/*@>130eb*/(uint16_T)-/*@<130db*//*@>130d8*/tmp : (int32_T)/*@>130ee*/(uint16_T)/*@>130e0*/tmp);
/* End of DataTypeConversion: '<S88>/Data Type Conversion10' */

/* DataStoreWrite: '<S67>/Data Store Write' */
/*@>15aaf*/VCU_DW./*@>173b6*/VAR_OUT_f_FL/*@>6fff*/ = /*@>156a2*/VCU_B./*@>17224*/DataTypeConversion10_m;
/* Gain: '<S89>/Factor' */
/*@>156a8*/VCU_B./*@>17227*/Factor_i/*@>7007*/ = /*@>12c26*/10.0/*@>130a6*/ * /*@>156ae*/VCU_B./*@>1722a*/Saturation1_n;
/* Sum: '<S89>/Add1' */
/*@>156b4*/VCU_B./*@>1722d*/Add1_bqm/*@>9926*/ = /*@>156ba*/VCU_B./*@>17230*/Factor_i;
/* DataTypeConversion: '<S89>/Data Type Conversion10' */
/*@>13061*/tmp/*@>13063*/ = /*@>149e8*/floor(/*@>156c0*/VCU_B./*@>17233*/Add1_bqm);
/*@>13081*/if (/*@>149ea*/rtIsNaN(/*@>13065*/tmp)/*@>1306f*/ || /*@>149ec*/rtIsInf(/*@>1306a*/tmp)) {
    /*@>13072*/tmp/*@>13074*/ = /*@>13071*/0.0;
} else {
    /*@>1307d*/tmp/*@>1307f*/ = /*@>149ee*/fmod(/*@>13076*/tmp, /*@>1307a*/65536.0);
}
/*@>156c6*/VCU_B./*@>17236*/DataTypeConversion10_f/*@>700f*/ = /*@>13a45*/(uint16_T)(/*@>13088*/tmp/*@>1308b*/ < /*@>13087*/0.0/*@>1308b*/ ? (int32_T)/*@>13093*/(uint16_T)-/*@<1309c*//*@>13091*/(int16_T)/*@>1309f*/(uint16_T)-/*@<1308f*//*@>1308c*/tmp : (int32_T)/*@>130a2*/(uint16_T)/*@>13094*/tmp);
/* End of DataTypeConversion: '<S89>/Data Type Conversion10' */

/* DataStoreWrite: '<S67>/Data Store Write1' */
/*@>15ab5*/VCU_DW./*@>173b9*/VAR_OUT_f_FR/*@>7011*/ = /*@>156cc*/VCU_B./*@>17239*/DataTypeConversion10_f;
/* Gain: '<S90>/Factor' */
/*@>156d2*/VCU_B./*@>1723c*/Factor_jn/*@>7019*/ = /*@>12c27*/10.0/*@>1305a*/ * /*@>156d8*/VCU_B./*@>1723f*/Saturation1_o;
/* Sum: '<S90>/Add1' */
/*@>156de*/VCU_B./*@>17242*/Add1_iv/*@>992b*/ = /*@>156e4*/VCU_B./*@>17245*/Factor_jn;
/* DataTypeConversion: '<S90>/Data Type Conversion10' */
/*@>13015*/tmp/*@>13017*/ = /*@>149f0*/floor(/*@>156ea*/VCU_B./*@>17248*/Add1_iv);
/*@>13035*/if (/*@>149f2*/rtIsNaN(/*@>13019*/tmp)/*@>13023*/ || /*@>149f4*/rtIsInf(/*@>1301e*/tmp)) {
    /*@>13026*/tmp/*@>13028*/ = /*@>13025*/0.0;
} else {
    /*@>13031*/tmp/*@>13033*/ = /*@>149f6*/fmod(/*@>1302a*/tmp, /*@>1302e*/65536.0);
}
/*@>156f0*/VCU_B./*@>1724b*/DataTypeConversion10_a/*@>7021*/ = /*@>13a5a*/(uint16_T)(/*@>1303c*/tmp/*@>1303f*/ < /*@>1303b*/0.0/*@>1303f*/ ? (int32_T)/*@>13047*/(uint16_T)-/*@<13050*//*@>13045*/(int16_T)/*@>13053*/(uint16_T)-/*@<13043*//*@>13040*/tmp : (int32_T)/*@>13056*/(uint16_T)/*@>13048*/tmp);
/* End of DataTypeConversion: '<S90>/Data Type Conversion10' */

/* DataStoreWrite: '<S67>/Data Store Write2' */
/*@>15abb*/VCU_DW./*@>173bc*/VAR_OUT_f_RL/*@>7023*/ = /*@>156f6*/VCU_B./*@>1724e*/DataTypeConversion10_a;
/* Gain: '<S91>/Factor' */
/*@>156fc*/VCU_B./*@>17251*/Factor_h0/*@>702b*/ = /*@>12c28*/10.0/*@>1300e*/ * /*@>15702*/VCU_B./*@>17254*/Saturation1_h;
/* Sum: '<S91>/Add1' */
/*@>15708*/VCU_B./*@>17257*/Add1_i1/*@>9930*/ = /*@>1570e*/VCU_B./*@>1725a*/Factor_h0;
/* DataTypeConversion: '<S91>/Data Type Conversion10' */
/*@>12fc9*/tmp/*@>12fcb*/ = /*@>149f8*/floor(/*@>15714*/VCU_B./*@>1725d*/Add1_i1);
/*@>12fe9*/if (/*@>149fa*/rtIsNaN(/*@>12fcd*/tmp)/*@>12fd7*/ || /*@>149fc*/rtIsInf(/*@>12fd2*/tmp)) {
    /*@>12fda*/tmp/*@>12fdc*/ = /*@>12fd9*/0.0;
} else {
    /*@>12fe5*/tmp/*@>12fe7*/ = /*@>149fe*/fmod(/*@>12fde*/tmp, /*@>12fe2*/65536.0);
}
/*@>1571a*/VCU_B./*@>17260*/DataTypeConversion10_n/*@>7033*/ = /*@>13a6f*/(uint16_T)(/*@>12ff0*/tmp/*@>12ff3*/ < /*@>12fef*/0.0/*@>12ff3*/ ? (int32_T)/*@>12ffb*/(uint16_T)-/*@<13004*//*@>12ff9*/(int16_T)/*@>13007*/(uint16_T)-/*@<12ff7*//*@>12ff4*/tmp : (int32_T)/*@>1300a*/(uint16_T)/*@>12ffc*/tmp);
/* End of DataTypeConversion: '<S91>/Data Type Conversion10' */

/* DataStoreWrite: '<S67>/Data Store Write3' */
/*@>15ac1*/VCU_DW./*@>173bf*/VAR_OUT_f_RR/*@>7035*/ = /*@>15720*/VCU_B./*@>17263*/DataTypeConversion10_n;
/* Gain: '<S92>/Factor' */
/*@>15726*/VCU_B./*@>17266*/Factor_dd/*@>703d*/ = /*@>12c29*/1.3/*@>12fc2*/ * /*@>1572c*/VCU_B./*@>17269*/x_RH_RL;
/* Sum: '<S92>/Add1' */
/*@>15732*/VCU_B./*@>1726c*/Add1_ai/*@>9935*/ = /*@>15738*/VCU_B./*@>1726f*/Factor_dd;
/* DataTypeConversion: '<S92>/Data Type Conversion10' */
/*@>12f7d*/tmp/*@>12f7f*/ = /*@>14a00*/floor(/*@>1573e*/VCU_B./*@>17272*/Add1_ai);
/*@>12f9d*/if (/*@>14a02*/rtIsNaN(/*@>12f81*/tmp)/*@>12f8b*/ || /*@>14a04*/rtIsInf(/*@>12f86*/tmp)) {
    /*@>12f8e*/tmp/*@>12f90*/ = /*@>12f8d*/0.0;
} else {
    /*@>12f99*/tmp/*@>12f9b*/ = /*@>14a06*/fmod(/*@>12f92*/tmp, /*@>12f96*/256.0);
}
/*@>15744*/VCU_B./*@>17275*/DataTypeConversion10_px/*@>7045*/ = /*@>13a84*/(uint8_T)(/*@>12fa4*/tmp/*@>12fa7*/ < /*@>12fa3*/0.0/*@>12fa7*/ ? (int32_T)/*@>12faf*/(uint8_T)-/*@<12fb8*//*@>12fad*/(int8_T)/*@>12fbb*/(uint8_T)-/*@<12fab*//*@>12fa8*/tmp : (int32_T)/*@>12fbe*/(uint8_T)/*@>12fb0*/tmp);
/* End of DataTypeConversion: '<S92>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write' */
/*@>15ac7*/VCU_DW./*@>173c2*/VAR_OUT_x_RH_RL/*@>7047*/ = /*@>1574a*/VCU_B./*@>17278*/DataTypeConversion10_px;
/* Gain: '<S93>/Factor' */
/*@>15750*/VCU_B./*@>1727b*/Factor_bc/*@>704f*/ = /*@>12c2a*/1.3/*@>12f76*/ * /*@>15756*/VCU_B./*@>1727e*/x_RH_RR;
/* Sum: '<S93>/Add1' */
/*@>1575c*/VCU_B./*@>17281*/Add1_o/*@>993a*/ = /*@>15762*/VCU_B./*@>17284*/Factor_bc;
/* DataTypeConversion: '<S93>/Data Type Conversion10' */
/*@>12f31*/tmp/*@>12f33*/ = /*@>14a08*/floor(/*@>15768*/VCU_B./*@>17287*/Add1_o);
/*@>12f51*/if (/*@>14a0a*/rtIsNaN(/*@>12f35*/tmp)/*@>12f3f*/ || /*@>14a0c*/rtIsInf(/*@>12f3a*/tmp)) {
    /*@>12f42*/tmp/*@>12f44*/ = /*@>12f41*/0.0;
} else {
    /*@>12f4d*/tmp/*@>12f4f*/ = /*@>14a0e*/fmod(/*@>12f46*/tmp, /*@>12f4a*/256.0);
}
/*@>1576e*/VCU_B./*@>1728a*/DataTypeConversion10_ab/*@>7057*/ = /*@>13a99*/(uint8_T)(/*@>12f58*/tmp/*@>12f5b*/ < /*@>12f57*/0.0/*@>12f5b*/ ? (int32_T)/*@>12f63*/(uint8_T)-/*@<12f6c*//*@>12f61*/(int8_T)/*@>12f6f*/(uint8_T)-/*@<12f5f*//*@>12f5c*/tmp : (int32_T)/*@>12f72*/(uint8_T)/*@>12f64*/tmp);
/* End of DataTypeConversion: '<S93>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write1' */
/*@>15acd*/VCU_DW./*@>173c5*/VAR_OUT_x_RH_RR/*@>7059*/ = /*@>15774*/VCU_B./*@>1728d*/DataTypeConversion10_ab;
/* Gain: '<S94>/Factor' */
/*@>1577a*/VCU_B./*@>17290*/Factor_f/*@>7061*/ = /*@>12c2b*/1.3/*@>12f2a*/ * /*@>15780*/VCU_B./*@>17293*/x_RH_F;
/* Sum: '<S94>/Add1' */
/*@>15786*/VCU_B./*@>17296*/Add1_ge/*@>993f*/ = /*@>1578c*/VCU_B./*@>17299*/Factor_f;
/* DataTypeConversion: '<S94>/Data Type Conversion10' */
/*@>12ee5*/tmp/*@>12ee7*/ = /*@>14a10*/floor(/*@>15792*/VCU_B./*@>1729c*/Add1_ge);
/*@>12f05*/if (/*@>14a12*/rtIsNaN(/*@>12ee9*/tmp)/*@>12ef3*/ || /*@>14a14*/rtIsInf(/*@>12eee*/tmp)) {
    /*@>12ef6*/tmp/*@>12ef8*/ = /*@>12ef5*/0.0;
} else {
    /*@>12f01*/tmp/*@>12f03*/ = /*@>14a16*/fmod(/*@>12efa*/tmp, /*@>12efe*/256.0);
}
/*@>15798*/VCU_B./*@>1729f*/DataTypeConversion10_e/*@>7069*/ = /*@>13aae*/(uint8_T)(/*@>12f0c*/tmp/*@>12f0f*/ < /*@>12f0b*/0.0/*@>12f0f*/ ? (int32_T)/*@>12f17*/(uint8_T)-/*@<12f20*//*@>12f15*/(int8_T)/*@>12f23*/(uint8_T)-/*@<12f13*//*@>12f10*/tmp : (int32_T)/*@>12f26*/(uint8_T)/*@>12f18*/tmp);
/* End of DataTypeConversion: '<S94>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write2' */
/*@>15ad3*/VCU_DW./*@>173c8*/VAR_OUT_x_RH_F/*@>706b*/ = /*@>1579e*/VCU_B./*@>172a2*/DataTypeConversion10_e;
/* Gain: '<S95>/Factor' */
/*@>157a4*/VCU_B./*@>172a5*/Factor_o/*@>7073*/ = /*@>12c2c*/10.0/*@>12ede*/ * /*@>157aa*/VCU_B./*@>172a8*/x_clutch_b;
/* Sum: '<S95>/Add1' */
/*@>157b0*/VCU_B./*@>172ab*/Add1_id/*@>9944*/ = /*@>157b6*/VCU_B./*@>172ae*/Factor_o;
/* DataTypeConversion: '<S95>/Data Type Conversion10' */
/*@>12e99*/tmp/*@>12e9b*/ = /*@>14a18*/floor(/*@>157bc*/VCU_B./*@>172b1*/Add1_id);
/*@>12eb9*/if (/*@>14a1a*/rtIsNaN(/*@>12e9d*/tmp)/*@>12ea7*/ || /*@>14a1c*/rtIsInf(/*@>12ea2*/tmp)) {
    /*@>12eaa*/tmp/*@>12eac*/ = /*@>12ea9*/0.0;
} else {
    /*@>12eb5*/tmp/*@>12eb7*/ = /*@>14a1e*/fmod(/*@>12eae*/tmp, /*@>12eb2*/256.0);
}
/*@>157c2*/VCU_B./*@>172b4*/DataTypeConversion10_g/*@>707b*/ = /*@>13ac3*/(uint8_T)(/*@>12ec0*/tmp/*@>12ec3*/ < /*@>12ebf*/0.0/*@>12ec3*/ ? (int32_T)/*@>12ecb*/(uint8_T)-/*@<12ed4*//*@>12ec9*/(int8_T)/*@>12ed7*/(uint8_T)-/*@<12ec7*//*@>12ec4*/tmp : (int32_T)/*@>12eda*/(uint8_T)/*@>12ecc*/tmp);
/* End of DataTypeConversion: '<S95>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write3' */
/*@>15ad9*/VCU_DW./*@>173cb*/VAR_OUT_x_clutch/*@>707d*/ = /*@>157c8*/VCU_B./*@>172b7*/DataTypeConversion10_g;
/* Gain: '<S96>/Factor' */
/*@>157ce*/VCU_B./*@>172ba*/Factor_k/*@>7085*/ = /*@>12c2d*/10.0/*@>12e92*/ * /*@>157d4*/VCU_B./*@>172bd*/x_clutch_STW;
/* Sum: '<S96>/Add1' */
/*@>157da*/VCU_B./*@>172c0*/Add1_d/*@>9949*/ = /*@>157e0*/VCU_B./*@>172c3*/Factor_k;
/* DataTypeConversion: '<S96>/Data Type Conversion10' */
/*@>12e4d*/tmp/*@>12e4f*/ = /*@>14a20*/floor(/*@>157e6*/VCU_B./*@>172c6*/Add1_d);
/*@>12e6d*/if (/*@>14a22*/rtIsNaN(/*@>12e51*/tmp)/*@>12e5b*/ || /*@>14a24*/rtIsInf(/*@>12e56*/tmp)) {
    /*@>12e5e*/tmp/*@>12e60*/ = /*@>12e5d*/0.0;
} else {
    /*@>12e69*/tmp/*@>12e6b*/ = /*@>14a26*/fmod(/*@>12e62*/tmp, /*@>12e66*/256.0);
}
/*@>157ec*/VCU_B./*@>172c9*/DataTypeConversion10_k/*@>708d*/ = /*@>13ad8*/(uint8_T)(/*@>12e74*/tmp/*@>12e77*/ < /*@>12e73*/0.0/*@>12e77*/ ? (int32_T)/*@>12e7f*/(uint8_T)-/*@<12e88*//*@>12e7d*/(int8_T)/*@>12e8b*/(uint8_T)-/*@<12e7b*//*@>12e78*/tmp : (int32_T)/*@>12e8e*/(uint8_T)/*@>12e80*/tmp);
/* End of DataTypeConversion: '<S96>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write4' */
/*@>15adf*/VCU_DW./*@>173ce*/VAR_OUT_x_clutch_STW/*@>708f*/ = /*@>157f2*/VCU_B./*@>172cc*/DataTypeConversion10_k;
/* Gain: '<S97>/Factor' */
/*@>157f8*/VCU_B./*@>172cf*/Factor_cv/*@>7097*/ = /*@>1388d*/40960U/*@>12e45*/ * /*@>157fe*/VCU_B./*@>172d2*/p_pneum;
/* Sum: '<S97>/Add1' */
/*@>15804*/VCU_B./*@>172d5*/Add1_a5/*@>9950*/ = /*@>13ae0*/(real_T)/*@>1580a*/VCU_B./*@>172d8*/Factor_cv/*@>12e3c*/ * /*@>12e3b*/5.9604644775390625E-8;
/* DataTypeConversion: '<S97>/Data Type Conversion10' */
/*@>12df5*/tmp/*@>12df7*/ = /*@>14a28*/floor(/*@>15810*/VCU_B./*@>172db*/Add1_a5);
/*@>12e15*/if (/*@>14a2a*/rtIsNaN(/*@>12df9*/tmp)/*@>12e03*/ || /*@>14a2c*/rtIsInf(/*@>12dfe*/tmp)) {
    /*@>12e06*/tmp/*@>12e08*/ = /*@>12e05*/0.0;
} else {
    /*@>12e11*/tmp/*@>12e13*/ = /*@>14a2e*/fmod(/*@>12e0a*/tmp, /*@>12e0e*/256.0);
}
/*@>15816*/VCU_B./*@>172de*/DataTypeConversion10_p5/*@>709f*/ = /*@>13aef*/(uint8_T)(/*@>12e1c*/tmp/*@>12e1f*/ < /*@>12e1b*/0.0/*@>12e1f*/ ? (int32_T)/*@>12e27*/(uint8_T)-/*@<12e30*//*@>12e25*/(int8_T)/*@>12e33*/(uint8_T)-/*@<12e23*//*@>12e20*/tmp : (int32_T)/*@>12e36*/(uint8_T)/*@>12e28*/tmp);
/* End of DataTypeConversion: '<S97>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write5' */
/*@>15ae5*/VCU_DW./*@>173d1*/VAR_OUT_p_pneum/*@>70a1*/ = /*@>1581c*/VCU_B./*@>172e1*/DataTypeConversion10_p5;
/* Gain: '<S98>/Factor' */
/*@>15822*/VCU_B./*@>172e4*/Factor_nt/*@>70a9*/ = /*@>12c2e*/10.0/*@>12dee*/ * /*@>15828*/VCU_B./*@>172e7*/U_Bat;
/* Sum: '<S98>/Add1' */
/*@>1582e*/VCU_B./*@>172ea*/Add1_ph/*@>9955*/ = /*@>15834*/VCU_B./*@>172ed*/Factor_nt;
/* DataTypeConversion: '<S98>/Data Type Conversion10' */
/*@>12da9*/tmp/*@>12dab*/ = /*@>14a30*/floor(/*@>1583a*/VCU_B./*@>172f0*/Add1_ph);
/*@>12dc9*/if (/*@>14a32*/rtIsNaN(/*@>12dad*/tmp)/*@>12db7*/ || /*@>14a34*/rtIsInf(/*@>12db2*/tmp)) {
    /*@>12dba*/tmp/*@>12dbc*/ = /*@>12db9*/0.0;
} else {
    /*@>12dc5*/tmp/*@>12dc7*/ = /*@>14a36*/fmod(/*@>12dbe*/tmp, /*@>12dc2*/256.0);
}
/*@>15840*/VCU_B./*@>172f3*/DataTypeConversion10_bm/*@>70b1*/ = /*@>13b04*/(uint8_T)(/*@>12dd0*/tmp/*@>12dd3*/ < /*@>12dcf*/0.0/*@>12dd3*/ ? (int32_T)/*@>12ddb*/(uint8_T)-/*@<12de4*//*@>12dd9*/(int8_T)/*@>12de7*/(uint8_T)-/*@<12dd7*//*@>12dd4*/tmp : (int32_T)/*@>12dea*/(uint8_T)/*@>12ddc*/tmp);
/* End of DataTypeConversion: '<S98>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write6' */
/*@>15aeb*/VCU_DW./*@>173d4*/VAR_OUT_U_Bat/*@>70b3*/ = /*@>15846*/VCU_B./*@>172f6*/DataTypeConversion10_bm;
/* Sum: '<S106>/Add1' */
/*@>1584c*/VCU_B./*@>172f9*/Add1_jp/*@>995a*/ = /*@>15852*/VCU_B./*@>172fc*/Saturation_b;
/* DataStoreWrite: '<S69>/Data Store Write' */
/*@>15af1*/VCU_DW./*@>173d7*/VAR_OUT_Fans_active/*@>70ba*/ = /*@>15858*/VCU_B./*@>172ff*/Add1_jp;
/* DataStoreWrite: '<S69>/Data Store Write1' */
/*@>15af7*/VCU_DW./*@>173da*/VAR_OUT_Waterpump_active/*@>70bc*/ = /*@>15955*/VCU_ConstB./*@>1737a*/Add1;
/* RelationalOperator: '<S109>/Compare' incorporates:
 *  Constant: '<S109>/Constant'
 */
/*@>1585e*/VCU_B./*@>17302*/Compare_mi/*@>70c0*/ = (/*@>15864*/VCU_B./*@>17305*/VOVG_ShiftUp/*@>70bf*/ > /*@>12c2f*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write' */
/*@>15afd*/VCU_DW./*@>173dd*/VAR_OUT_VOVG_ShiftUp/*@>70c2*/ = /*@>1586a*/VCU_B./*@>17308*/Compare_mi;
/* RelationalOperator: '<S110>/Compare' incorporates:
 *  Constant: '<S110>/Constant'
 */
/*@>15870*/VCU_B./*@>1730b*/Compare_ek/*@>70c6*/ = (/*@>15876*/VCU_B./*@>1730e*/VOVG_ShiftDown/*@>70c5*/ > /*@>12c30*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write1' */
/*@>15b03*/VCU_DW./*@>173e0*/VAR_OUT_VOVG_ShiftDown/*@>70c8*/ = /*@>1587c*/VCU_B./*@>17311*/Compare_ek;
/* Gain: '<S63>/Gain4' */
/*@>12d61*/tmp/*@>12d63*/ = /*@>14a38*/floor(/*@>12c31*/65535.0/*@>12d5a*/ * /*@>15882*/VCU_B./*@>17314*/Saturation_b);
/*@>12d81*/if (/*@>14a3a*/rtIsNaN(/*@>12d65*/tmp)/*@>12d6f*/ || /*@>14a3c*/rtIsInf(/*@>12d6a*/tmp)) {
    /*@>12d72*/tmp/*@>12d74*/ = /*@>12d71*/0.0;
} else {
    /*@>12d7d*/tmp/*@>12d7f*/ = /*@>14a3e*/fmod(/*@>12d76*/tmp, /*@>12d7a*/65536.0);
}
/*@>15888*/VCU_B./*@>17317*/Gain4_f/*@>70d0*/ = /*@>13b23*/(uint16_T)(/*@>12d88*/tmp/*@>12d8b*/ < /*@>12d87*/0.0/*@>12d8b*/ ? (int32_T)/*@>12d93*/(uint16_T)-/*@<12d9c*//*@>12d91*/(int16_T)/*@>12d9f*/(uint16_T)-/*@<12d8f*//*@>12d8c*/tmp : (int32_T)/*@>12da2*/(uint16_T)/*@>12d94*/tmp);
/* End of Gain: '<S63>/Gain4' */

/* DataStoreWrite: '<S63>/Data Store Write10' */
/*@>15b09*/VCU_DW./*@>173e3*/VAR_OUT_Fans2_PWM_active/*@>70d2*/ = /*@>1588e*/VCU_B./*@>1731a*/Gain4_f;
/* RelationalOperator: '<S113>/Compare' incorporates:
 *  Constant: '<S113>/Constant'
 */
/*@>15894*/VCU_B./*@>1731d*/Compare_pr/*@>70d6*/ = (/*@>1589a*/VCU_B./*@>17320*/Ignition_Cut/*@>70d5*/ > /*@>12c32*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write2' */
/*@>15b0f*/VCU_DW./*@>173e6*/VAR_OUT_Ignition_Cut/*@>70d8*/ = /*@>158a0*/VCU_B./*@>17323*/Compare_pr;
/* RelationalOperator: '<S111>/Compare' incorporates:
 *  Constant: '<S111>/Constant'
 */
/*@>158a6*/VCU_B./*@>17326*/Compare_d3/*@>70dc*/ = (/*@>158ac*/VCU_B./*@>17329*/VOVG_IN/*@>70db*/ > /*@>12c33*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write3' */
/*@>15b15*/VCU_DW./*@>173e9*/VAR_OUT_VOVG_IN/*@>70de*/ = /*@>158b2*/VCU_B./*@>1732c*/Compare_d3;
/* RelationalOperator: '<S112>/Compare' incorporates:
 *  Constant: '<S112>/Constant'
 */
/*@>158b8*/VCU_B./*@>1732f*/Compare_bb/*@>70e2*/ = (/*@>158be*/VCU_B./*@>17332*/VOVG_OUT/*@>70e1*/ > /*@>12c34*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write4' */
/*@>15b1b*/VCU_DW./*@>173ec*/VAR_OUT_VOVG_OUT/*@>70e4*/ = /*@>158c4*/VCU_B./*@>17335*/Compare_bb;
/* Saturate: '<S63>/Saturation1' */
/*@>13c10*/if (/*@>158ca*/VCU_B./*@>17338*/MHJ9_IN/*@>13c0b*/ > /*@>13d49*/1.0) {
    /*@>158d6*/VCU_B./*@>1733e*/Saturation1/*@>13c12*/ = /*@>13d4f*/1.0;
} else /*@>13c13*/if (/*@>158d0*/VCU_B./*@>1733b*/MHJ9_IN/*@>13c08*/ < /*@>13d4b*/0.0) {
    /*@>158e8*/VCU_B./*@>17347*/Saturation1/*@>13c15*/ = /*@>13d4d*/0.0;
} else {
    /*@>158dc*/VCU_B./*@>17341*/Saturation1/*@>13c0f*/ = /*@>158e2*/VCU_B./*@>17344*/MHJ9_IN;
}
/* End of Saturate: '<S63>/Saturation1' */

/* Gain: '<S63>/uint16 ' */
/*@>12d15*/tmp/*@>12d17*/ = /*@>14a40*/floor(/*@>12c37*/65535.0/*@>12d0e*/ * /*@>158ee*/VCU_B./*@>1734a*/Saturation1);
/*@>12d35*/if (/*@>14a42*/rtIsNaN(/*@>12d19*/tmp)/*@>12d23*/ || /*@>14a44*/rtIsInf(/*@>12d1e*/tmp)) {
    /*@>12d26*/tmp/*@>12d28*/ = /*@>12d25*/0.0;
} else {
    /*@>12d31*/tmp/*@>12d33*/ = /*@>14a46*/fmod(/*@>12d2a*/tmp, /*@>12d2e*/65536.0);
}
/*@>158f4*/VCU_B./*@>1734d*/uint16/*@>70f2*/ = /*@>13b42*/(uint16_T)(/*@>12d3c*/tmp/*@>12d3f*/ < /*@>12d3b*/0.0/*@>12d3f*/ ? (int32_T)/*@>12d47*/(uint16_T)-/*@<12d50*//*@>12d45*/(int16_T)/*@>12d53*/(uint16_T)-/*@<12d43*//*@>12d40*/tmp : (int32_T)/*@>12d56*/(uint16_T)/*@>12d48*/tmp);
/* End of Gain: '<S63>/uint16 ' */

/* DataStoreWrite: '<S63>/Data Store Write5' */
/*@>15b21*/VCU_DW./*@>173ef*/VAR_OUT_MHJ9_IN/*@>70f4*/ = /*@>158fa*/VCU_B./*@>17350*/uint16;
/* Saturate: '<S63>/Saturation2' */
/*@>13c5b*/if (/*@>15900*/VCU_B./*@>17353*/MHJ9_OUT/*@>13c56*/ > /*@>13d51*/1.0) {
    /*@>1590c*/VCU_B./*@>17359*/Saturation2/*@>13c5d*/ = /*@>13d57*/1.0;
} else /*@>13c5e*/if (/*@>15906*/VCU_B./*@>17356*/MHJ9_OUT/*@>13c53*/ < /*@>13d53*/0.0) {
    /*@>1591e*/VCU_B./*@>17362*/Saturation2/*@>13c60*/ = /*@>13d55*/0.0;
} else {
    /*@>15912*/VCU_B./*@>1735c*/Saturation2/*@>13c5a*/ = /*@>15918*/VCU_B./*@>1735f*/MHJ9_OUT;
}
/* End of Saturate: '<S63>/Saturation2' */

/* Gain: '<S63>/uint16_1 ' */
/*@>12cc9*/tmp/*@>12ccb*/ = /*@>14a48*/floor(/*@>12c3a*/65535.0/*@>12cc2*/ * /*@>15924*/VCU_B./*@>17365*/Saturation2);
/*@>12ce9*/if (/*@>14a4a*/rtIsNaN(/*@>12ccd*/tmp)/*@>12cd7*/ || /*@>14a4c*/rtIsInf(/*@>12cd2*/tmp)) {
    /*@>12cda*/tmp/*@>12cdc*/ = /*@>12cd9*/0.0;
} else {
    /*@>12ce5*/tmp/*@>12ce7*/ = /*@>14a4e*/fmod(/*@>12cde*/tmp, /*@>12ce2*/65536.0);
}
/*@>1592a*/VCU_B./*@>17368*/uint16_1/*@>7102*/ = /*@>13b55*/(uint16_T)(/*@>12cf0*/tmp/*@>12cf3*/ < /*@>12cef*/0.0/*@>12cf3*/ ? (int32_T)/*@>12cfb*/(uint16_T)-/*@<12d04*//*@>12cf9*/(int16_T)/*@>12d07*/(uint16_T)-/*@<12cf7*//*@>12cf4*/tmp : (int32_T)/*@>12d0a*/(uint16_T)/*@>12cfc*/tmp);
/* End of Gain: '<S63>/uint16_1 ' */

/* DataStoreWrite: '<S63>/Data Store Write6' */
/*@>15b27*/VCU_DW./*@>173f2*/VAR_OUT_MHJ9_OUT/*@>7104*/ = /*@>15930*/VCU_B./*@>1736b*/uint16_1;
/* DataStoreWrite: '<S63>/Data Store Write8' */
/*@>15b2d*/VCU_DW./*@>173f5*/VAR_OUT_Waterpump_PWM_active/*@>7106*/ = /*@>1595b*/VCU_ConstB./*@>1737d*/Gain6;
/* Gain: '<S63>/Gain5' */
/*@>12c67*/tmp/*@>12c69*/ = /*@>14a50*/floor(/*@>12c3b*/65535.0/*@>12c56*/ * /*@>15936*/VCU_B./*@>1736e*/Saturation_b);
/*@>12c9d*/if (/*@>14a52*/rtIsNaN(/*@>12c6b*/tmp)/*@>12c7f*/ || /*@>14a54*/rtIsInf(/*@>12c70*/tmp)) {
    /*@>12c82*/tmp/*@>12c84*/ = /*@>12c81*/0.0;
} else {
    /*@>12c99*/tmp/*@>12c9b*/ = /*@>14a56*/fmod(/*@>12c86*/tmp, /*@>12c8a*/65536.0);
}
/*@>1593c*/VCU_B./*@>17371*/Gain5/*@>710e*/ = /*@>13b68*/(uint16_T)(/*@>12ca4*/tmp/*@>12ca7*/ < /*@>12ca3*/0.0/*@>12ca7*/ ? (int32_T)/*@>12caf*/(uint16_T)-/*@<12cb8*//*@>12cad*/(int16_T)/*@>12cbb*/(uint16_T)-/*@<12cab*//*@>12ca8*/tmp : (int32_T)/*@>12cbe*/(uint16_T)/*@>12cb0*/tmp);
/* End of Gain: '<S63>/Gain5' */

/* DataStoreWrite: '<S63>/Data Store Write9' */
/*@>15b33*/VCU_DW./*@>173f8*/VAR_OUT_Fans1_PWM_active/*@>7110*/ = /*@>15942*/VCU_B./*@>17374*/Gain5;
/* DataStoreWrite: '<S63>/Data Store Write7' */
/*@>15b39*/VCU_DW./*@>173fb*/VAR_OUT_Brakelight/*@>7112*/ = /*@>15948*/VCU_B./*@>17377*/Brakelight;





      
  


        
    
      
          }
    
  



                








  


  


  


  

