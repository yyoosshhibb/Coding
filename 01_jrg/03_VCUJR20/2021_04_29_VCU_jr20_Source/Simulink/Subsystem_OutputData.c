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
 * C/C++ source code generated on  : Thu Apr 29 19:26:38 2021
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
/*@>15226*/VCU_B./*@>16f40*/n_wheel_FL_kmh/*@>6e69*/ = /*@>12ace*/3.6/*@>13528*/ * /*@>1522c*/VCU_B./*@>16f43*/Add1_k;
/* Gain: '<S70>/Factor' */
/*@>15232*/VCU_B./*@>16f46*/Factor/*@>6e71*/ = /*@>12acf*/10.0/*@>13524*/ * /*@>15238*/VCU_B./*@>16f49*/n_wheel_FL_kmh;
/* Sum: '<S70>/Add1' */
/*@>1523e*/VCU_B./*@>16f4c*/Add1_g/*@>985b*/ = /*@>15244*/VCU_B./*@>16f4f*/Factor;
/* DataTypeConversion: '<S70>/Data Type Conversion10' */
/*@>134df*/tmp/*@>134e1*/ = /*@>14806*/floor(/*@>1524a*/VCU_B./*@>16f52*/Add1_g);
/*@>134ff*/if (/*@>14808*/rtIsNaN(/*@>134e3*/tmp)/*@>134ed*/ || /*@>1480a*/rtIsInf(/*@>134e8*/tmp)) {
    /*@>134f0*/tmp/*@>134f2*/ = /*@>134ef*/0.0;
} else {
    /*@>134fb*/tmp/*@>134fd*/ = /*@>1480c*/fmod(/*@>134f4*/tmp, /*@>134f8*/65536.0);
}
/*@>15250*/VCU_B./*@>16f55*/DataTypeConversion10/*@>6e79*/ = /*@>1375c*/(uint16_T)(/*@>13506*/tmp/*@>13509*/ < /*@>13505*/0.0/*@>13509*/ ? (int32_T)/*@>13511*/(uint16_T)-/*@<1351a*//*@>1350f*/(int16_T)/*@>1351d*/(uint16_T)-/*@<1350d*//*@>1350a*/tmp : (int32_T)/*@>13520*/(uint16_T)/*@>13512*/tmp);
/* End of DataTypeConversion: '<S70>/Data Type Conversion10' */

/* DataStoreWrite: '<S64>/Data Store Write' */
/*@>158f7*/VCU_DW./*@>17234*/VAR_OUT_n_wheel_FL_kmproh/*@>6e7b*/ = /*@>15256*/VCU_B./*@>16f58*/DataTypeConversion10;
/* Gain: '<S63>/Gain1' */
/*@>1525c*/VCU_B./*@>16f5b*/n_wheel_FR_kmh/*@>6e83*/ = /*@>12ad0*/3.6/*@>134d8*/ * /*@>15262*/VCU_B./*@>16f5e*/Add1_de;
/* Gain: '<S71>/Factor' */
/*@>15268*/VCU_B./*@>16f61*/Factor_c/*@>6e8b*/ = /*@>12ad1*/10.0/*@>134d4*/ * /*@>1526e*/VCU_B./*@>16f64*/n_wheel_FR_kmh;
/* Sum: '<S71>/Add1' */
/*@>15274*/VCU_B./*@>16f67*/Add1_i/*@>9860*/ = /*@>1527a*/VCU_B./*@>16f6a*/Factor_c;
/* DataTypeConversion: '<S71>/Data Type Conversion10' */
/*@>1348f*/tmp/*@>13491*/ = /*@>1480e*/floor(/*@>15280*/VCU_B./*@>16f6d*/Add1_i);
/*@>134af*/if (/*@>14810*/rtIsNaN(/*@>13493*/tmp)/*@>1349d*/ || /*@>14812*/rtIsInf(/*@>13498*/tmp)) {
    /*@>134a0*/tmp/*@>134a2*/ = /*@>1349f*/0.0;
} else {
    /*@>134ab*/tmp/*@>134ad*/ = /*@>14814*/fmod(/*@>134a4*/tmp, /*@>134a8*/65536.0);
}
/*@>15286*/VCU_B./*@>16f70*/DataTypeConversion10_b/*@>6e93*/ = /*@>13773*/(uint16_T)(/*@>134b6*/tmp/*@>134b9*/ < /*@>134b5*/0.0/*@>134b9*/ ? (int32_T)/*@>134c1*/(uint16_T)-/*@<134ca*//*@>134bf*/(int16_T)/*@>134cd*/(uint16_T)-/*@<134bd*//*@>134ba*/tmp : (int32_T)/*@>134d0*/(uint16_T)/*@>134c2*/tmp);
/* End of DataTypeConversion: '<S71>/Data Type Conversion10' */

/* DataStoreWrite: '<S64>/Data Store Write1' */
/*@>158fd*/VCU_DW./*@>17237*/VAR_OUT_n_wheel_FR_kmproh/*@>6e95*/ = /*@>1528c*/VCU_B./*@>16f73*/DataTypeConversion10_b;
/* Gain: '<S63>/Gain2' */
/*@>15292*/VCU_B./*@>16f76*/n_wheel_RL_kmh/*@>6e9d*/ = /*@>12ad2*/3.6/*@>13488*/ * /*@>15298*/VCU_B./*@>16f79*/Add1_ks;
/* Gain: '<S72>/Factor' */
/*@>1529e*/VCU_B./*@>16f7c*/Factor_j/*@>6ea5*/ = /*@>12ad3*/10.0/*@>13484*/ * /*@>152a4*/VCU_B./*@>16f7f*/n_wheel_RL_kmh;
/* Sum: '<S72>/Add1' */
/*@>152aa*/VCU_B./*@>16f82*/Add1_a/*@>9865*/ = /*@>152b0*/VCU_B./*@>16f85*/Factor_j;
/* DataTypeConversion: '<S72>/Data Type Conversion10' */
/*@>1343f*/tmp/*@>13441*/ = /*@>14816*/floor(/*@>152b6*/VCU_B./*@>16f88*/Add1_a);
/*@>1345f*/if (/*@>14818*/rtIsNaN(/*@>13443*/tmp)/*@>1344d*/ || /*@>1481a*/rtIsInf(/*@>13448*/tmp)) {
    /*@>13450*/tmp/*@>13452*/ = /*@>1344f*/0.0;
} else {
    /*@>1345b*/tmp/*@>1345d*/ = /*@>1481c*/fmod(/*@>13454*/tmp, /*@>13458*/65536.0);
}
/*@>152bc*/VCU_B./*@>16f8b*/DataTypeConversion10_be/*@>6ead*/ = /*@>1378a*/(uint16_T)(/*@>13466*/tmp/*@>13469*/ < /*@>13465*/0.0/*@>13469*/ ? (int32_T)/*@>13471*/(uint16_T)-/*@<1347a*//*@>1346f*/(int16_T)/*@>1347d*/(uint16_T)-/*@<1346d*//*@>1346a*/tmp : (int32_T)/*@>13480*/(uint16_T)/*@>13472*/tmp);
/* End of DataTypeConversion: '<S72>/Data Type Conversion10' */

/* DataStoreWrite: '<S64>/Data Store Write2' */
/*@>15903*/VCU_DW./*@>1723a*/VAR_OUT_n_wheel_RL_kmproh/*@>6eaf*/ = /*@>152c2*/VCU_B./*@>16f8e*/DataTypeConversion10_be;
/* Gain: '<S63>/Gain3' */
/*@>152c8*/VCU_B./*@>16f91*/n_wheel_RR_kmh/*@>6eb7*/ = /*@>12ad4*/3.6/*@>13438*/ * /*@>152ce*/VCU_B./*@>16f94*/Add1_eq;
/* Gain: '<S73>/Factor' */
/*@>152d4*/VCU_B./*@>16f97*/Factor_h/*@>6ebf*/ = /*@>12ad5*/10.0/*@>13434*/ * /*@>152da*/VCU_B./*@>16f9a*/n_wheel_RR_kmh;
/* Sum: '<S73>/Add1' */
/*@>152e0*/VCU_B./*@>16f9d*/Add1_e/*@>986a*/ = /*@>152e6*/VCU_B./*@>16fa0*/Factor_h;
/* DataTypeConversion: '<S73>/Data Type Conversion10' */
/*@>133ef*/tmp/*@>133f1*/ = /*@>1481e*/floor(/*@>152ec*/VCU_B./*@>16fa3*/Add1_e);
/*@>1340f*/if (/*@>14820*/rtIsNaN(/*@>133f3*/tmp)/*@>133fd*/ || /*@>14822*/rtIsInf(/*@>133f8*/tmp)) {
    /*@>13400*/tmp/*@>13402*/ = /*@>133ff*/0.0;
} else {
    /*@>1340b*/tmp/*@>1340d*/ = /*@>14824*/fmod(/*@>13404*/tmp, /*@>13408*/65536.0);
}
/*@>152f2*/VCU_B./*@>16fa6*/DataTypeConversion10_o/*@>6ec7*/ = /*@>137a1*/(uint16_T)(/*@>13416*/tmp/*@>13419*/ < /*@>13415*/0.0/*@>13419*/ ? (int32_T)/*@>13421*/(uint16_T)-/*@<1342a*//*@>1341f*/(int16_T)/*@>1342d*/(uint16_T)-/*@<1341d*//*@>1341a*/tmp : (int32_T)/*@>13430*/(uint16_T)/*@>13422*/tmp);
/* End of DataTypeConversion: '<S73>/Data Type Conversion10' */

/* DataStoreWrite: '<S64>/Data Store Write3' */
/*@>15909*/VCU_DW./*@>1723d*/VAR_OUT_n_wheel_RR_kmproh/*@>6ec9*/ = /*@>152f8*/VCU_B./*@>16fa9*/DataTypeConversion10_o;
/* Sum: '<S80>/Add1' */
/*@>152fe*/VCU_B./*@>16fac*/Add1_j/*@>986f*/ = /*@>15304*/VCU_B./*@>16faf*/Sensitivity1538mVbar;
/* DataTypeConversion: '<S80>/Data Type Conversion10' */
/*@>133a7*/tmp/*@>133a9*/ = /*@>14826*/floor(/*@>1530a*/VCU_B./*@>16fb2*/Add1_j);
/*@>133c7*/if (/*@>14828*/rtIsNaN(/*@>133ab*/tmp)/*@>133b5*/ || /*@>1482a*/rtIsInf(/*@>133b0*/tmp)) {
    /*@>133b8*/tmp/*@>133ba*/ = /*@>133b7*/0.0;
} else {
    /*@>133c3*/tmp/*@>133c5*/ = /*@>1482c*/fmod(/*@>133bc*/tmp, /*@>133c0*/256.0);
}
/*@>15310*/VCU_B./*@>16fb5*/DataTypeConversion10_ho/*@>6ed1*/ = /*@>137b4*/(uint8_T)(/*@>133ce*/tmp/*@>133d1*/ < /*@>133cd*/0.0/*@>133d1*/ ? (int32_T)/*@>133d9*/(uint8_T)-/*@<133e2*//*@>133d7*/(int8_T)/*@>133e5*/(uint8_T)-/*@<133d5*//*@>133d2*/tmp : (int32_T)/*@>133e8*/(uint8_T)/*@>133da*/tmp);
/* End of DataTypeConversion: '<S80>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write' */
/*@>1590f*/VCU_DW./*@>17240*/VAR_OUT_p_brake_R/*@>6ed3*/ = /*@>15316*/VCU_B./*@>16fb8*/DataTypeConversion10_ho;
/* Gain: '<S81>/Factor' */
/*@>1531c*/VCU_B./*@>16fbb*/Factor_d/*@>6edb*/ = /*@>12ad6*/100.0/*@>133a0*/ * /*@>15322*/VCU_B./*@>16fbe*/Add1_f1;
/* Sum: '<S81>/Add1' */
/*@>15328*/VCU_B./*@>16fc1*/Add1_l/*@>9874*/ = /*@>1532e*/VCU_B./*@>16fc4*/Factor_d;
/* DataTypeConversion: '<S81>/Data Type Conversion10' */
/*@>1335b*/tmp/*@>1335d*/ = /*@>1482e*/floor(/*@>15334*/VCU_B./*@>16fc7*/Add1_l);
/*@>1337b*/if (/*@>14830*/rtIsNaN(/*@>1335f*/tmp)/*@>13369*/ || /*@>14832*/rtIsInf(/*@>13364*/tmp)) {
    /*@>1336c*/tmp/*@>1336e*/ = /*@>1336b*/0.0;
} else {
    /*@>13377*/tmp/*@>13379*/ = /*@>14834*/fmod(/*@>13370*/tmp, /*@>13374*/256.0);
}
/*@>1533a*/VCU_B./*@>16fca*/DataTypeConversion10_fx/*@>6ee3*/ = /*@>137c9*/(uint8_T)(/*@>13382*/tmp/*@>13385*/ < /*@>13381*/0.0/*@>13385*/ ? (int32_T)/*@>1338d*/(uint8_T)-/*@<13396*//*@>1338b*/(int8_T)/*@>13399*/(uint8_T)-/*@<13389*//*@>13386*/tmp : (int32_T)/*@>1339c*/(uint8_T)/*@>1338e*/tmp);
/* End of DataTypeConversion: '<S81>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write1' */
/*@>15915*/VCU_DW./*@>17243*/VAR_OUT_STW_mue_tyre/*@>6ee5*/ = /*@>15340*/VCU_B./*@>16fcd*/DataTypeConversion10_fx;
/* Gain: '<S82>/Factor' */
/*@>15346*/VCU_B./*@>16fd0*/Factor_b/*@>6eed*/ = /*@>12ad7*/10.0/*@>13354*/ * /*@>1534c*/VCU_B./*@>16fd3*/x_clutch_LC;
/* Sum: '<S82>/Add1' */
/*@>15352*/VCU_B./*@>16fd6*/Add1_ll/*@>9879*/ = /*@>15358*/VCU_B./*@>16fd9*/Factor_b;
/* DataTypeConversion: '<S82>/Data Type Conversion10' */
/*@>1330f*/tmp/*@>13311*/ = /*@>14836*/floor(/*@>1535e*/VCU_B./*@>16fdc*/Add1_ll);
/*@>1332f*/if (/*@>14838*/rtIsNaN(/*@>13313*/tmp)/*@>1331d*/ || /*@>1483a*/rtIsInf(/*@>13318*/tmp)) {
    /*@>13320*/tmp/*@>13322*/ = /*@>1331f*/0.0;
} else {
    /*@>1332b*/tmp/*@>1332d*/ = /*@>1483c*/fmod(/*@>13324*/tmp, /*@>13328*/256.0);
}
/*@>15364*/VCU_B./*@>16fdf*/DataTypeConversion10_ae/*@>6ef5*/ = /*@>137de*/(uint8_T)(/*@>13336*/tmp/*@>13339*/ < /*@>13335*/0.0/*@>13339*/ ? (int32_T)/*@>13341*/(uint8_T)-/*@<1334a*//*@>1333f*/(int8_T)/*@>1334d*/(uint8_T)-/*@<1333d*//*@>1333a*/tmp : (int32_T)/*@>13350*/(uint8_T)/*@>13342*/tmp);
/* End of DataTypeConversion: '<S82>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write2' */
/*@>1591b*/VCU_DW./*@>17246*/VAR_OUT_x_clutch_LC/*@>6ef7*/ = /*@>1536a*/VCU_B./*@>16fe2*/DataTypeConversion10_ae;
/* Sum: '<S115>/Add' */
/*@>15370*/VCU_B./*@>16fe5*/Add_p/*@>987e*/ = /*@>15376*/VCU_B./*@>16fe8*/Add1_k/*@>987b*/ + /*@>1537c*/VCU_B./*@>16feb*/Add1_de;
/* Gain: '<S115>/Gain' */
/*@>15382*/VCU_B./*@>16fee*/Gain_g2/*@>6f04*/ = /*@>12ad8*/0.5/*@>13308*/ * /*@>15388*/VCU_B./*@>16ff1*/Add_p;
/* RelationalOperator: '<S120>/Compare' incorporates:
 *  Constant: '<S120>/Constant'
 */
/*@>1538e*/VCU_B./*@>16ff4*/Compare_in/*@>6f08*/ = (/*@>15394*/VCU_B./*@>16ff7*/Gain_g2/*@>6f07*/ <= /*@>12ad9*/1.0);
/* Product: '<S115>/Product' */
/*@>1539a*/VCU_B./*@>16ffa*/Product_o/*@>6f0f*/ = /*@>137ed*/(uint16_T)(/*@>153a0*/VCU_B./*@>16ffd*/LC_dash_bit/*@>16ffd*/ ? /*@>137eb*/(int32_T)/*@>153a6*/VCU_B./*@>17000*/Compare_in : /*@>13302*/0);
/* Gain: '<S83>/Factor' */
/*@>153ac*/VCU_B./*@>17003*/Factor_ii/*@>6f17*/ = /*@>137f0*/(uint32_T)/*@>153b2*/VCU_B./*@>17006*/Product_o/*@>13300*/ << /*@>132ff*/15;
/* Sum: '<S83>/Add1' */
/*@>153b8*/VCU_B./*@>17009*/Add1_b/*@>9885*/ = /*@>137f4*/(real_T)/*@>153be*/VCU_B./*@>1700c*/Factor_ii/*@>132f4*/ * /*@>132f3*/3.0517578125E-5;
/* DataTypeConversion: '<S83>/Data Type Conversion10' */
/*@>132ad*/tmp/*@>132af*/ = /*@>1483e*/floor(/*@>153c4*/VCU_B./*@>1700f*/Add1_b);
/*@>132cd*/if (/*@>14840*/rtIsNaN(/*@>132b1*/tmp)/*@>132bb*/ || /*@>14842*/rtIsInf(/*@>132b6*/tmp)) {
    /*@>132be*/tmp/*@>132c0*/ = /*@>132bd*/0.0;
} else {
    /*@>132c9*/tmp/*@>132cb*/ = /*@>14844*/fmod(/*@>132c2*/tmp, /*@>132c6*/256.0);
}
/*@>153ca*/VCU_B./*@>17012*/DataTypeConversion10_c/*@>6f1f*/ = /*@>13803*/(uint8_T)(/*@>132d4*/tmp/*@>132d7*/ < /*@>132d3*/0.0/*@>132d7*/ ? (int32_T)/*@>132df*/(uint8_T)-/*@<132e8*//*@>132dd*/(int8_T)/*@>132eb*/(uint8_T)-/*@<132db*//*@>132d8*/tmp : (int32_T)/*@>132ee*/(uint8_T)/*@>132e0*/tmp);
/* End of DataTypeConversion: '<S83>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write3' */
/*@>15921*/VCU_DW./*@>17249*/VAR_OUT_LC_dash_Bit/*@>6f21*/ = /*@>153d0*/VCU_B./*@>17015*/DataTypeConversion10_c;
/* RelationalOperator: '<S108>/Compare' */
/*@>153d6*/VCU_B./*@>17018*/Compare_k5/*@>6f25*/ = /*@>153dc*/VCU_B./*@>1701b*/LC_active_bit;
/* Gain: '<S84>/Factor' */
/*@>153e2*/VCU_B./*@>1701e*/Factor_c0/*@>6f2d*/ = /*@>1380c*/(uint8_T)(/*@>153e8*/VCU_B./*@>17021*/Compare_k5/*@>132a6*/ << /*@>132a5*/7);
/* Sum: '<S84>/Add1' */
/*@>153ee*/VCU_B./*@>17024*/Add1_n/*@>988c*/ = /*@>1380f*/(real_T)/*@>153f4*/VCU_B./*@>17027*/Factor_c0/*@>13297*/ * /*@>13296*/0.0078125;
/* DataTypeConversion: '<S84>/Data Type Conversion10' */
/*@>13250*/tmp/*@>13252*/ = /*@>14846*/floor(/*@>153fa*/VCU_B./*@>1702a*/Add1_n);
/*@>13270*/if (/*@>14848*/rtIsNaN(/*@>13254*/tmp)/*@>1325e*/ || /*@>1484a*/rtIsInf(/*@>13259*/tmp)) {
    /*@>13261*/tmp/*@>13263*/ = /*@>13260*/0.0;
} else {
    /*@>1326c*/tmp/*@>1326e*/ = /*@>1484c*/fmod(/*@>13265*/tmp, /*@>13269*/256.0);
}
/*@>15400*/VCU_B./*@>1702d*/DataTypeConversion10_ou/*@>6f35*/ = /*@>1381e*/(uint8_T)(/*@>13277*/tmp/*@>1327a*/ < /*@>13276*/0.0/*@>1327a*/ ? (int32_T)/*@>13282*/(uint8_T)-/*@<1328b*//*@>13280*/(int8_T)/*@>1328e*/(uint8_T)-/*@<1327e*//*@>1327b*/tmp : (int32_T)/*@>13291*/(uint8_T)/*@>13283*/tmp);
/* End of DataTypeConversion: '<S84>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write4' */
/*@>15927*/VCU_DW./*@>1724c*/VAR_OUT_LC_active_bit/*@>6f37*/ = /*@>15406*/VCU_B./*@>17030*/DataTypeConversion10_ou;
/* Gain: '<S85>/Factor' */
/*@>1540c*/VCU_B./*@>17033*/Factor_b4/*@>6f3f*/ = /*@>13825*/(uint8_T)(/*@>15412*/VCU_B./*@>17036*/LC_ready_bit/*@>13249*/ << /*@>13248*/7);
/* Sum: '<S85>/Add1' */
/*@>15418*/VCU_B./*@>17039*/Add1_jg/*@>9893*/ = /*@>13828*/(real_T)/*@>1541e*/VCU_B./*@>1703c*/Factor_b4/*@>1323a*/ * /*@>13239*/0.0078125;
/* DataTypeConversion: '<S85>/Data Type Conversion10' */
/*@>131f3*/tmp/*@>131f5*/ = /*@>1484e*/floor(/*@>15424*/VCU_B./*@>1703f*/Add1_jg);
/*@>13213*/if (/*@>14850*/rtIsNaN(/*@>131f7*/tmp)/*@>13201*/ || /*@>14852*/rtIsInf(/*@>131fc*/tmp)) {
    /*@>13204*/tmp/*@>13206*/ = /*@>13203*/0.0;
} else {
    /*@>1320f*/tmp/*@>13211*/ = /*@>14854*/fmod(/*@>13208*/tmp, /*@>1320c*/256.0);
}
/*@>1542a*/VCU_B./*@>17042*/DataTypeConversion10_p/*@>6f47*/ = /*@>13837*/(uint8_T)(/*@>1321a*/tmp/*@>1321d*/ < /*@>13219*/0.0/*@>1321d*/ ? (int32_T)/*@>13225*/(uint8_T)-/*@<1322e*//*@>13223*/(int8_T)/*@>13231*/(uint8_T)-/*@<13221*//*@>1321e*/tmp : (int32_T)/*@>13234*/(uint8_T)/*@>13226*/tmp);
/* End of DataTypeConversion: '<S85>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write5' */
/*@>1592d*/VCU_DW./*@>1724f*/VAR_OUT_LC_ready_bit/*@>6f49*/ = /*@>15430*/VCU_B./*@>17045*/DataTypeConversion10_p;
/* Sum: '<S86>/Add1' */
/*@>15436*/VCU_B./*@>17048*/Add1_bq/*@>9898*/ = /*@>1543c*/VCU_B./*@>1704b*/LC_Mdes;
/* DataTypeConversion: '<S86>/Data Type Conversion10' */
/*@>131ab*/tmp/*@>131ad*/ = /*@>14856*/floor(/*@>15442*/VCU_B./*@>1704e*/Add1_bq);
/*@>131cb*/if (/*@>14858*/rtIsNaN(/*@>131af*/tmp)/*@>131b9*/ || /*@>1485a*/rtIsInf(/*@>131b4*/tmp)) {
    /*@>131bc*/tmp/*@>131be*/ = /*@>131bb*/0.0;
} else {
    /*@>131c7*/tmp/*@>131c9*/ = /*@>1485c*/fmod(/*@>131c0*/tmp, /*@>131c4*/256.0);
}
/*@>15448*/VCU_B./*@>17051*/DataTypeConversion10_ci/*@>6f51*/ = /*@>1384a*/(uint8_T)(/*@>131d2*/tmp/*@>131d5*/ < /*@>131d1*/0.0/*@>131d5*/ ? (int32_T)/*@>131dd*/(uint8_T)-/*@<131e6*//*@>131db*/(int8_T)/*@>131e9*/(uint8_T)-/*@<131d9*//*@>131d6*/tmp : (int32_T)/*@>131ec*/(uint8_T)/*@>131de*/tmp);
/* End of DataTypeConversion: '<S86>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write6' */
/*@>15933*/VCU_DW./*@>17252*/VAR_OUT_LC_Mdes/*@>6f53*/ = /*@>1544e*/VCU_B./*@>17054*/DataTypeConversion10_ci;
/* Gain: '<S87>/Factor' */
/*@>15454*/VCU_B./*@>17057*/Factor_n/*@>6f5b*/ = /*@>12ada*/0.1/*@>131a4*/ * /*@>1545a*/VCU_B./*@>1705a*/LC_Fnr;
/* Sum: '<S87>/Add1' */
/*@>15460*/VCU_B./*@>1705d*/Add1_io/*@>989d*/ = /*@>15466*/VCU_B./*@>17060*/Factor_n;
/* DataTypeConversion: '<S87>/Data Type Conversion10' */
/*@>1315f*/tmp/*@>13161*/ = /*@>1485e*/floor(/*@>1546c*/VCU_B./*@>17063*/Add1_io);
/*@>1317f*/if (/*@>14860*/rtIsNaN(/*@>13163*/tmp)/*@>1316d*/ || /*@>14862*/rtIsInf(/*@>13168*/tmp)) {
    /*@>13170*/tmp/*@>13172*/ = /*@>1316f*/0.0;
} else {
    /*@>1317b*/tmp/*@>1317d*/ = /*@>14864*/fmod(/*@>13174*/tmp, /*@>13178*/256.0);
}
/*@>15472*/VCU_B./*@>17066*/DataTypeConversion10_j/*@>6f63*/ = /*@>1385f*/(uint8_T)(/*@>13186*/tmp/*@>13189*/ < /*@>13185*/0.0/*@>13189*/ ? (int32_T)/*@>13191*/(uint8_T)-/*@<1319a*//*@>1318f*/(int8_T)/*@>1319d*/(uint8_T)-/*@<1318d*//*@>1318a*/tmp : (int32_T)/*@>131a0*/(uint8_T)/*@>13192*/tmp);
/* End of DataTypeConversion: '<S87>/Data Type Conversion10' */

/* DataStoreWrite: '<S66>/Data Store Write7' */
/*@>15939*/VCU_DW./*@>17255*/VAR_OUT_LC_Fnr/*@>6f65*/ = /*@>15478*/VCU_B./*@>17069*/DataTypeConversion10_j;
/* Sum: '<S74>/Add1' */
/*@>1547e*/VCU_B./*@>1706c*/Add1_p/*@>98a2*/ = /*@>15484*/VCU_B./*@>1706f*/ABS_switchstate;
/* DataTypeConversion: '<S74>/Data Type Conversion10' */
/*@>13117*/tmp/*@>13119*/ = /*@>14866*/floor(/*@>1548a*/VCU_B./*@>17072*/Add1_p);
/*@>13137*/if (/*@>14868*/rtIsNaN(/*@>1311b*/tmp)/*@>13125*/ || /*@>1486a*/rtIsInf(/*@>13120*/tmp)) {
    /*@>13128*/tmp/*@>1312a*/ = /*@>13127*/0.0;
} else {
    /*@>13133*/tmp/*@>13135*/ = /*@>1486c*/fmod(/*@>1312c*/tmp, /*@>13130*/256.0);
}
/*@>15490*/VCU_B./*@>17075*/DataTypeConversion10_o3/*@>6f6d*/ = /*@>13872*/(uint8_T)(/*@>1313e*/tmp/*@>13141*/ < /*@>1313d*/0.0/*@>13141*/ ? (int32_T)/*@>13149*/(uint8_T)-/*@<13152*//*@>13147*/(int8_T)/*@>13155*/(uint8_T)-/*@<13145*//*@>13142*/tmp : (int32_T)/*@>13158*/(uint8_T)/*@>1314a*/tmp);
/* End of DataTypeConversion: '<S74>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write' */
/*@>1593f*/VCU_DW./*@>17258*/VAR_OUT_ABS_switchstate/*@>6f6f*/ = /*@>15496*/VCU_B./*@>17078*/DataTypeConversion10_o3;
/* Sum: '<S75>/Add1' */
/*@>1549c*/VCU_B./*@>1707b*/Add1_c/*@>98a7*/ = /*@>154a2*/VCU_B./*@>1707e*/Add1_m;
/* DataTypeConversion: '<S75>/Data Type Conversion10' */
/*@>130cf*/tmp/*@>130d1*/ = /*@>1486e*/floor(/*@>154a8*/VCU_B./*@>17081*/Add1_c);
/*@>130ef*/if (/*@>14870*/rtIsNaN(/*@>130d3*/tmp)/*@>130dd*/ || /*@>14872*/rtIsInf(/*@>130d8*/tmp)) {
    /*@>130e0*/tmp/*@>130e2*/ = /*@>130df*/0.0;
} else {
    /*@>130eb*/tmp/*@>130ed*/ = /*@>14874*/fmod(/*@>130e4*/tmp, /*@>130e8*/65536.0);
}
/*@>154ae*/VCU_B./*@>17084*/DataTypeConversion10_h/*@>6f77*/ = /*@>13885*/(uint16_T)(/*@>130f6*/tmp/*@>130f9*/ < /*@>130f5*/0.0/*@>130f9*/ ? (int32_T)/*@>13101*/(uint16_T)-/*@<1310a*//*@>130ff*/(int16_T)/*@>1310d*/(uint16_T)-/*@<130fd*//*@>130fa*/tmp : (int32_T)/*@>13110*/(uint16_T)/*@>13102*/tmp);
/* End of DataTypeConversion: '<S75>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write1' */
/*@>15945*/VCU_DW./*@>1725b*/VAR_OUT_p_brake_F/*@>6f79*/ = /*@>154b4*/VCU_B./*@>17087*/DataTypeConversion10_h;
/* Sum: '<S76>/Add1' */
/*@>154ba*/VCU_B./*@>1708a*/Add1_js/*@>98ac*/ = /*@>154c0*/VCU_B./*@>1708d*/ABS_BL_switch;
/* DataTypeConversion: '<S76>/Data Type Conversion10' */
/*@>13087*/tmp/*@>13089*/ = /*@>14876*/floor(/*@>154c6*/VCU_B./*@>17090*/Add1_js);
/*@>130a7*/if (/*@>14878*/rtIsNaN(/*@>1308b*/tmp)/*@>13095*/ || /*@>1487a*/rtIsInf(/*@>13090*/tmp)) {
    /*@>13098*/tmp/*@>1309a*/ = /*@>13097*/0.0;
} else {
    /*@>130a3*/tmp/*@>130a5*/ = /*@>1487c*/fmod(/*@>1309c*/tmp, /*@>130a0*/256.0);
}
/*@>154cc*/VCU_B./*@>17093*/DataTypeConversion10_ok/*@>6f81*/ = /*@>13898*/(uint8_T)(/*@>130ae*/tmp/*@>130b1*/ < /*@>130ad*/0.0/*@>130b1*/ ? (int32_T)/*@>130b9*/(uint8_T)-/*@<130c2*//*@>130b7*/(int8_T)/*@>130c5*/(uint8_T)-/*@<130b5*//*@>130b2*/tmp : (int32_T)/*@>130c8*/(uint8_T)/*@>130ba*/tmp);
/* End of DataTypeConversion: '<S76>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write2' */
/*@>1594b*/VCU_DW./*@>1725e*/VAR_OUT_ABS_BL_switch/*@>6f83*/ = /*@>154d2*/VCU_B./*@>17096*/DataTypeConversion10_ok;
/* Sum: '<S77>/Add1' */
/*@>154d8*/VCU_B./*@>17099*/Add1_ak/*@>98b1*/ = /*@>154de*/VCU_B./*@>1709c*/ABS_active;
/* DataTypeConversion: '<S77>/Data Type Conversion10' */
/*@>1303f*/tmp/*@>13041*/ = /*@>1487e*/floor(/*@>154e4*/VCU_B./*@>1709f*/Add1_ak);
/*@>1305f*/if (/*@>14880*/rtIsNaN(/*@>13043*/tmp)/*@>1304d*/ || /*@>14882*/rtIsInf(/*@>13048*/tmp)) {
    /*@>13050*/tmp/*@>13052*/ = /*@>1304f*/0.0;
} else {
    /*@>1305b*/tmp/*@>1305d*/ = /*@>14884*/fmod(/*@>13054*/tmp, /*@>13058*/256.0);
}
/*@>154ea*/VCU_B./*@>170a2*/DataTypeConversion10_ah/*@>6f8b*/ = /*@>138ab*/(uint8_T)(/*@>13066*/tmp/*@>13069*/ < /*@>13065*/0.0/*@>13069*/ ? (int32_T)/*@>13071*/(uint8_T)-/*@<1307a*//*@>1306f*/(int8_T)/*@>1307d*/(uint8_T)-/*@<1306d*//*@>1306a*/tmp : (int32_T)/*@>13080*/(uint8_T)/*@>13072*/tmp);
/* End of DataTypeConversion: '<S77>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write3' */
/*@>15951*/VCU_DW./*@>17261*/VAR_OUT_ABS_active/*@>6f8d*/ = /*@>154f0*/VCU_B./*@>170a5*/DataTypeConversion10_ah;
/* Sum: '<S78>/Add1' */
/*@>154f6*/VCU_B./*@>170a8*/Add1_n4/*@>98b6*/ = /*@>154fc*/VCU_B./*@>170ab*/ABS_EBD_Lamp;
/* DataTypeConversion: '<S78>/Data Type Conversion10' */
/*@>12ff7*/tmp/*@>12ff9*/ = /*@>14886*/floor(/*@>15502*/VCU_B./*@>170ae*/Add1_n4);
/*@>13017*/if (/*@>14888*/rtIsNaN(/*@>12ffb*/tmp)/*@>13005*/ || /*@>1488a*/rtIsInf(/*@>13000*/tmp)) {
    /*@>13008*/tmp/*@>1300a*/ = /*@>13007*/0.0;
} else {
    /*@>13013*/tmp/*@>13015*/ = /*@>1488c*/fmod(/*@>1300c*/tmp, /*@>13010*/256.0);
}
/*@>15508*/VCU_B./*@>170b1*/DataTypeConversion10_d/*@>6f95*/ = /*@>138be*/(uint8_T)(/*@>1301e*/tmp/*@>13021*/ < /*@>1301d*/0.0/*@>13021*/ ? (int32_T)/*@>13029*/(uint8_T)-/*@<13032*//*@>13027*/(int8_T)/*@>13035*/(uint8_T)-/*@<13025*//*@>13022*/tmp : (int32_T)/*@>13038*/(uint8_T)/*@>1302a*/tmp);
/* End of DataTypeConversion: '<S78>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write4' */
/*@>15957*/VCU_DW./*@>17264*/VAR_OUT_ABS_EBD_Lamp/*@>6f97*/ = /*@>1550e*/VCU_B./*@>170b4*/DataTypeConversion10_d;
/* Sum: '<S79>/Add1' */
/*@>15514*/VCU_B./*@>170b7*/Add1_h/*@>98bb*/ = /*@>1551a*/VCU_B./*@>170ba*/ABS_Lamp;
/* DataTypeConversion: '<S79>/Data Type Conversion10' */
/*@>12faf*/tmp/*@>12fb1*/ = /*@>1488e*/floor(/*@>15520*/VCU_B./*@>170bd*/Add1_h);
/*@>12fcf*/if (/*@>14890*/rtIsNaN(/*@>12fb3*/tmp)/*@>12fbd*/ || /*@>14892*/rtIsInf(/*@>12fb8*/tmp)) {
    /*@>12fc0*/tmp/*@>12fc2*/ = /*@>12fbf*/0.0;
} else {
    /*@>12fcb*/tmp/*@>12fcd*/ = /*@>14894*/fmod(/*@>12fc4*/tmp, /*@>12fc8*/256.0);
}
/*@>15526*/VCU_B./*@>170c0*/DataTypeConversion10_bd/*@>6f9f*/ = /*@>138d1*/(uint8_T)(/*@>12fd6*/tmp/*@>12fd9*/ < /*@>12fd5*/0.0/*@>12fd9*/ ? (int32_T)/*@>12fe1*/(uint8_T)-/*@<12fea*//*@>12fdf*/(int8_T)/*@>12fed*/(uint8_T)-/*@<12fdd*//*@>12fda*/tmp : (int32_T)/*@>12ff0*/(uint8_T)/*@>12fe2*/tmp);
/* End of DataTypeConversion: '<S79>/Data Type Conversion10' */

/* DataStoreWrite: '<S65>/Data Store Write5' */
/*@>1595d*/VCU_DW./*@>17267*/VAR_OUT_ABS_Lamp/*@>6fa1*/ = /*@>1552c*/VCU_B./*@>170c3*/DataTypeConversion10_bd;
/* Gain: '<S88>/Factor' */
/*@>15532*/VCU_B./*@>170c6*/Factor_a/*@>6fa9*/ = /*@>12adb*/10.0/*@>12fa8*/ * /*@>15538*/VCU_B./*@>170c9*/Saturation1_e;
/* Sum: '<S88>/Add1' */
/*@>1553e*/VCU_B./*@>170cc*/Add1_lh/*@>98c0*/ = /*@>15544*/VCU_B./*@>170cf*/Factor_a;
/* DataTypeConversion: '<S88>/Data Type Conversion10' */
/*@>12f63*/tmp/*@>12f65*/ = /*@>14896*/floor(/*@>1554a*/VCU_B./*@>170d2*/Add1_lh);
/*@>12f83*/if (/*@>14898*/rtIsNaN(/*@>12f67*/tmp)/*@>12f71*/ || /*@>1489a*/rtIsInf(/*@>12f6c*/tmp)) {
    /*@>12f74*/tmp/*@>12f76*/ = /*@>12f73*/0.0;
} else {
    /*@>12f7f*/tmp/*@>12f81*/ = /*@>1489c*/fmod(/*@>12f78*/tmp, /*@>12f7c*/65536.0);
}
/*@>15550*/VCU_B./*@>170d5*/DataTypeConversion10_m/*@>6fb1*/ = /*@>138e6*/(uint16_T)(/*@>12f8a*/tmp/*@>12f8d*/ < /*@>12f89*/0.0/*@>12f8d*/ ? (int32_T)/*@>12f95*/(uint16_T)-/*@<12f9e*//*@>12f93*/(int16_T)/*@>12fa1*/(uint16_T)-/*@<12f91*//*@>12f8e*/tmp : (int32_T)/*@>12fa4*/(uint16_T)/*@>12f96*/tmp);
/* End of DataTypeConversion: '<S88>/Data Type Conversion10' */

/* DataStoreWrite: '<S67>/Data Store Write' */
/*@>15963*/VCU_DW./*@>1726a*/VAR_OUT_f_FL/*@>6fb3*/ = /*@>15556*/VCU_B./*@>170d8*/DataTypeConversion10_m;
/* Gain: '<S89>/Factor' */
/*@>1555c*/VCU_B./*@>170db*/Factor_i/*@>6fbb*/ = /*@>12adc*/10.0/*@>12f5c*/ * /*@>15562*/VCU_B./*@>170de*/Saturation1_n;
/* Sum: '<S89>/Add1' */
/*@>15568*/VCU_B./*@>170e1*/Add1_bqm/*@>98c5*/ = /*@>1556e*/VCU_B./*@>170e4*/Factor_i;
/* DataTypeConversion: '<S89>/Data Type Conversion10' */
/*@>12f17*/tmp/*@>12f19*/ = /*@>1489e*/floor(/*@>15574*/VCU_B./*@>170e7*/Add1_bqm);
/*@>12f37*/if (/*@>148a0*/rtIsNaN(/*@>12f1b*/tmp)/*@>12f25*/ || /*@>148a2*/rtIsInf(/*@>12f20*/tmp)) {
    /*@>12f28*/tmp/*@>12f2a*/ = /*@>12f27*/0.0;
} else {
    /*@>12f33*/tmp/*@>12f35*/ = /*@>148a4*/fmod(/*@>12f2c*/tmp, /*@>12f30*/65536.0);
}
/*@>1557a*/VCU_B./*@>170ea*/DataTypeConversion10_f/*@>6fc3*/ = /*@>138fb*/(uint16_T)(/*@>12f3e*/tmp/*@>12f41*/ < /*@>12f3d*/0.0/*@>12f41*/ ? (int32_T)/*@>12f49*/(uint16_T)-/*@<12f52*//*@>12f47*/(int16_T)/*@>12f55*/(uint16_T)-/*@<12f45*//*@>12f42*/tmp : (int32_T)/*@>12f58*/(uint16_T)/*@>12f4a*/tmp);
/* End of DataTypeConversion: '<S89>/Data Type Conversion10' */

/* DataStoreWrite: '<S67>/Data Store Write1' */
/*@>15969*/VCU_DW./*@>1726d*/VAR_OUT_f_FR/*@>6fc5*/ = /*@>15580*/VCU_B./*@>170ed*/DataTypeConversion10_f;
/* Gain: '<S90>/Factor' */
/*@>15586*/VCU_B./*@>170f0*/Factor_jn/*@>6fcd*/ = /*@>12add*/10.0/*@>12f10*/ * /*@>1558c*/VCU_B./*@>170f3*/Saturation1_o;
/* Sum: '<S90>/Add1' */
/*@>15592*/VCU_B./*@>170f6*/Add1_iv/*@>98ca*/ = /*@>15598*/VCU_B./*@>170f9*/Factor_jn;
/* DataTypeConversion: '<S90>/Data Type Conversion10' */
/*@>12ecb*/tmp/*@>12ecd*/ = /*@>148a6*/floor(/*@>1559e*/VCU_B./*@>170fc*/Add1_iv);
/*@>12eeb*/if (/*@>148a8*/rtIsNaN(/*@>12ecf*/tmp)/*@>12ed9*/ || /*@>148aa*/rtIsInf(/*@>12ed4*/tmp)) {
    /*@>12edc*/tmp/*@>12ede*/ = /*@>12edb*/0.0;
} else {
    /*@>12ee7*/tmp/*@>12ee9*/ = /*@>148ac*/fmod(/*@>12ee0*/tmp, /*@>12ee4*/65536.0);
}
/*@>155a4*/VCU_B./*@>170ff*/DataTypeConversion10_a/*@>6fd5*/ = /*@>13910*/(uint16_T)(/*@>12ef2*/tmp/*@>12ef5*/ < /*@>12ef1*/0.0/*@>12ef5*/ ? (int32_T)/*@>12efd*/(uint16_T)-/*@<12f06*//*@>12efb*/(int16_T)/*@>12f09*/(uint16_T)-/*@<12ef9*//*@>12ef6*/tmp : (int32_T)/*@>12f0c*/(uint16_T)/*@>12efe*/tmp);
/* End of DataTypeConversion: '<S90>/Data Type Conversion10' */

/* DataStoreWrite: '<S67>/Data Store Write2' */
/*@>1596f*/VCU_DW./*@>17270*/VAR_OUT_f_RL/*@>6fd7*/ = /*@>155aa*/VCU_B./*@>17102*/DataTypeConversion10_a;
/* Gain: '<S91>/Factor' */
/*@>155b0*/VCU_B./*@>17105*/Factor_h0/*@>6fdf*/ = /*@>12ade*/10.0/*@>12ec4*/ * /*@>155b6*/VCU_B./*@>17108*/Saturation1_h;
/* Sum: '<S91>/Add1' */
/*@>155bc*/VCU_B./*@>1710b*/Add1_i1/*@>98cf*/ = /*@>155c2*/VCU_B./*@>1710e*/Factor_h0;
/* DataTypeConversion: '<S91>/Data Type Conversion10' */
/*@>12e7f*/tmp/*@>12e81*/ = /*@>148ae*/floor(/*@>155c8*/VCU_B./*@>17111*/Add1_i1);
/*@>12e9f*/if (/*@>148b0*/rtIsNaN(/*@>12e83*/tmp)/*@>12e8d*/ || /*@>148b2*/rtIsInf(/*@>12e88*/tmp)) {
    /*@>12e90*/tmp/*@>12e92*/ = /*@>12e8f*/0.0;
} else {
    /*@>12e9b*/tmp/*@>12e9d*/ = /*@>148b4*/fmod(/*@>12e94*/tmp, /*@>12e98*/65536.0);
}
/*@>155ce*/VCU_B./*@>17114*/DataTypeConversion10_n/*@>6fe7*/ = /*@>13925*/(uint16_T)(/*@>12ea6*/tmp/*@>12ea9*/ < /*@>12ea5*/0.0/*@>12ea9*/ ? (int32_T)/*@>12eb1*/(uint16_T)-/*@<12eba*//*@>12eaf*/(int16_T)/*@>12ebd*/(uint16_T)-/*@<12ead*//*@>12eaa*/tmp : (int32_T)/*@>12ec0*/(uint16_T)/*@>12eb2*/tmp);
/* End of DataTypeConversion: '<S91>/Data Type Conversion10' */

/* DataStoreWrite: '<S67>/Data Store Write3' */
/*@>15975*/VCU_DW./*@>17273*/VAR_OUT_f_RR/*@>6fe9*/ = /*@>155d4*/VCU_B./*@>17117*/DataTypeConversion10_n;
/* Gain: '<S92>/Factor' */
/*@>155da*/VCU_B./*@>1711a*/Factor_dd/*@>6ff1*/ = /*@>12adf*/1.3/*@>12e78*/ * /*@>155e0*/VCU_B./*@>1711d*/x_RH_RL;
/* Sum: '<S92>/Add1' */
/*@>155e6*/VCU_B./*@>17120*/Add1_ai/*@>98d4*/ = /*@>155ec*/VCU_B./*@>17123*/Factor_dd;
/* DataTypeConversion: '<S92>/Data Type Conversion10' */
/*@>12e33*/tmp/*@>12e35*/ = /*@>148b6*/floor(/*@>155f2*/VCU_B./*@>17126*/Add1_ai);
/*@>12e53*/if (/*@>148b8*/rtIsNaN(/*@>12e37*/tmp)/*@>12e41*/ || /*@>148ba*/rtIsInf(/*@>12e3c*/tmp)) {
    /*@>12e44*/tmp/*@>12e46*/ = /*@>12e43*/0.0;
} else {
    /*@>12e4f*/tmp/*@>12e51*/ = /*@>148bc*/fmod(/*@>12e48*/tmp, /*@>12e4c*/256.0);
}
/*@>155f8*/VCU_B./*@>17129*/DataTypeConversion10_px/*@>6ff9*/ = /*@>1393a*/(uint8_T)(/*@>12e5a*/tmp/*@>12e5d*/ < /*@>12e59*/0.0/*@>12e5d*/ ? (int32_T)/*@>12e65*/(uint8_T)-/*@<12e6e*//*@>12e63*/(int8_T)/*@>12e71*/(uint8_T)-/*@<12e61*//*@>12e5e*/tmp : (int32_T)/*@>12e74*/(uint8_T)/*@>12e66*/tmp);
/* End of DataTypeConversion: '<S92>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write' */
/*@>1597b*/VCU_DW./*@>17276*/VAR_OUT_x_RH_RL/*@>6ffb*/ = /*@>155fe*/VCU_B./*@>1712c*/DataTypeConversion10_px;
/* Gain: '<S93>/Factor' */
/*@>15604*/VCU_B./*@>1712f*/Factor_bc/*@>7003*/ = /*@>12ae0*/1.3/*@>12e2c*/ * /*@>1560a*/VCU_B./*@>17132*/x_RH_RR;
/* Sum: '<S93>/Add1' */
/*@>15610*/VCU_B./*@>17135*/Add1_o/*@>98d9*/ = /*@>15616*/VCU_B./*@>17138*/Factor_bc;
/* DataTypeConversion: '<S93>/Data Type Conversion10' */
/*@>12de7*/tmp/*@>12de9*/ = /*@>148be*/floor(/*@>1561c*/VCU_B./*@>1713b*/Add1_o);
/*@>12e07*/if (/*@>148c0*/rtIsNaN(/*@>12deb*/tmp)/*@>12df5*/ || /*@>148c2*/rtIsInf(/*@>12df0*/tmp)) {
    /*@>12df8*/tmp/*@>12dfa*/ = /*@>12df7*/0.0;
} else {
    /*@>12e03*/tmp/*@>12e05*/ = /*@>148c4*/fmod(/*@>12dfc*/tmp, /*@>12e00*/256.0);
}
/*@>15622*/VCU_B./*@>1713e*/DataTypeConversion10_ab/*@>700b*/ = /*@>1394f*/(uint8_T)(/*@>12e0e*/tmp/*@>12e11*/ < /*@>12e0d*/0.0/*@>12e11*/ ? (int32_T)/*@>12e19*/(uint8_T)-/*@<12e22*//*@>12e17*/(int8_T)/*@>12e25*/(uint8_T)-/*@<12e15*//*@>12e12*/tmp : (int32_T)/*@>12e28*/(uint8_T)/*@>12e1a*/tmp);
/* End of DataTypeConversion: '<S93>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write1' */
/*@>15981*/VCU_DW./*@>17279*/VAR_OUT_x_RH_RR/*@>700d*/ = /*@>15628*/VCU_B./*@>17141*/DataTypeConversion10_ab;
/* Gain: '<S94>/Factor' */
/*@>1562e*/VCU_B./*@>17144*/Factor_f/*@>7015*/ = /*@>12ae1*/1.3/*@>12de0*/ * /*@>15634*/VCU_B./*@>17147*/x_RH_F;
/* Sum: '<S94>/Add1' */
/*@>1563a*/VCU_B./*@>1714a*/Add1_ge/*@>98de*/ = /*@>15640*/VCU_B./*@>1714d*/Factor_f;
/* DataTypeConversion: '<S94>/Data Type Conversion10' */
/*@>12d9b*/tmp/*@>12d9d*/ = /*@>148c6*/floor(/*@>15646*/VCU_B./*@>17150*/Add1_ge);
/*@>12dbb*/if (/*@>148c8*/rtIsNaN(/*@>12d9f*/tmp)/*@>12da9*/ || /*@>148ca*/rtIsInf(/*@>12da4*/tmp)) {
    /*@>12dac*/tmp/*@>12dae*/ = /*@>12dab*/0.0;
} else {
    /*@>12db7*/tmp/*@>12db9*/ = /*@>148cc*/fmod(/*@>12db0*/tmp, /*@>12db4*/256.0);
}
/*@>1564c*/VCU_B./*@>17153*/DataTypeConversion10_e/*@>701d*/ = /*@>13964*/(uint8_T)(/*@>12dc2*/tmp/*@>12dc5*/ < /*@>12dc1*/0.0/*@>12dc5*/ ? (int32_T)/*@>12dcd*/(uint8_T)-/*@<12dd6*//*@>12dcb*/(int8_T)/*@>12dd9*/(uint8_T)-/*@<12dc9*//*@>12dc6*/tmp : (int32_T)/*@>12ddc*/(uint8_T)/*@>12dce*/tmp);
/* End of DataTypeConversion: '<S94>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write2' */
/*@>15987*/VCU_DW./*@>1727c*/VAR_OUT_x_RH_F/*@>701f*/ = /*@>15652*/VCU_B./*@>17156*/DataTypeConversion10_e;
/* Gain: '<S95>/Factor' */
/*@>15658*/VCU_B./*@>17159*/Factor_o/*@>7027*/ = /*@>12ae2*/10.0/*@>12d94*/ * /*@>1565e*/VCU_B./*@>1715c*/x_clutch_b;
/* Sum: '<S95>/Add1' */
/*@>15664*/VCU_B./*@>1715f*/Add1_id/*@>98e3*/ = /*@>1566a*/VCU_B./*@>17162*/Factor_o;
/* DataTypeConversion: '<S95>/Data Type Conversion10' */
/*@>12d4f*/tmp/*@>12d51*/ = /*@>148ce*/floor(/*@>15670*/VCU_B./*@>17165*/Add1_id);
/*@>12d6f*/if (/*@>148d0*/rtIsNaN(/*@>12d53*/tmp)/*@>12d5d*/ || /*@>148d2*/rtIsInf(/*@>12d58*/tmp)) {
    /*@>12d60*/tmp/*@>12d62*/ = /*@>12d5f*/0.0;
} else {
    /*@>12d6b*/tmp/*@>12d6d*/ = /*@>148d4*/fmod(/*@>12d64*/tmp, /*@>12d68*/256.0);
}
/*@>15676*/VCU_B./*@>17168*/DataTypeConversion10_g/*@>702f*/ = /*@>13979*/(uint8_T)(/*@>12d76*/tmp/*@>12d79*/ < /*@>12d75*/0.0/*@>12d79*/ ? (int32_T)/*@>12d81*/(uint8_T)-/*@<12d8a*//*@>12d7f*/(int8_T)/*@>12d8d*/(uint8_T)-/*@<12d7d*//*@>12d7a*/tmp : (int32_T)/*@>12d90*/(uint8_T)/*@>12d82*/tmp);
/* End of DataTypeConversion: '<S95>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write3' */
/*@>1598d*/VCU_DW./*@>1727f*/VAR_OUT_x_clutch/*@>7031*/ = /*@>1567c*/VCU_B./*@>1716b*/DataTypeConversion10_g;
/* Gain: '<S96>/Factor' */
/*@>15682*/VCU_B./*@>1716e*/Factor_k/*@>7039*/ = /*@>12ae3*/10.0/*@>12d48*/ * /*@>15688*/VCU_B./*@>17171*/x_clutch_STW;
/* Sum: '<S96>/Add1' */
/*@>1568e*/VCU_B./*@>17174*/Add1_d/*@>98e8*/ = /*@>15694*/VCU_B./*@>17177*/Factor_k;
/* DataTypeConversion: '<S96>/Data Type Conversion10' */
/*@>12d03*/tmp/*@>12d05*/ = /*@>148d6*/floor(/*@>1569a*/VCU_B./*@>1717a*/Add1_d);
/*@>12d23*/if (/*@>148d8*/rtIsNaN(/*@>12d07*/tmp)/*@>12d11*/ || /*@>148da*/rtIsInf(/*@>12d0c*/tmp)) {
    /*@>12d14*/tmp/*@>12d16*/ = /*@>12d13*/0.0;
} else {
    /*@>12d1f*/tmp/*@>12d21*/ = /*@>148dc*/fmod(/*@>12d18*/tmp, /*@>12d1c*/256.0);
}
/*@>156a0*/VCU_B./*@>1717d*/DataTypeConversion10_k/*@>7041*/ = /*@>1398e*/(uint8_T)(/*@>12d2a*/tmp/*@>12d2d*/ < /*@>12d29*/0.0/*@>12d2d*/ ? (int32_T)/*@>12d35*/(uint8_T)-/*@<12d3e*//*@>12d33*/(int8_T)/*@>12d41*/(uint8_T)-/*@<12d31*//*@>12d2e*/tmp : (int32_T)/*@>12d44*/(uint8_T)/*@>12d36*/tmp);
/* End of DataTypeConversion: '<S96>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write4' */
/*@>15993*/VCU_DW./*@>17282*/VAR_OUT_x_clutch_STW/*@>7043*/ = /*@>156a6*/VCU_B./*@>17180*/DataTypeConversion10_k;
/* Gain: '<S97>/Factor' */
/*@>156ac*/VCU_B./*@>17183*/Factor_cv/*@>704b*/ = /*@>13743*/40960U/*@>12cfb*/ * /*@>156b2*/VCU_B./*@>17186*/p_pneum;
/* Sum: '<S97>/Add1' */
/*@>156b8*/VCU_B./*@>17189*/Add1_a5/*@>98ef*/ = /*@>13996*/(real_T)/*@>156be*/VCU_B./*@>1718c*/Factor_cv/*@>12cf2*/ * /*@>12cf1*/5.9604644775390625E-8;
/* DataTypeConversion: '<S97>/Data Type Conversion10' */
/*@>12cab*/tmp/*@>12cad*/ = /*@>148de*/floor(/*@>156c4*/VCU_B./*@>1718f*/Add1_a5);
/*@>12ccb*/if (/*@>148e0*/rtIsNaN(/*@>12caf*/tmp)/*@>12cb9*/ || /*@>148e2*/rtIsInf(/*@>12cb4*/tmp)) {
    /*@>12cbc*/tmp/*@>12cbe*/ = /*@>12cbb*/0.0;
} else {
    /*@>12cc7*/tmp/*@>12cc9*/ = /*@>148e4*/fmod(/*@>12cc0*/tmp, /*@>12cc4*/256.0);
}
/*@>156ca*/VCU_B./*@>17192*/DataTypeConversion10_p5/*@>7053*/ = /*@>139a5*/(uint8_T)(/*@>12cd2*/tmp/*@>12cd5*/ < /*@>12cd1*/0.0/*@>12cd5*/ ? (int32_T)/*@>12cdd*/(uint8_T)-/*@<12ce6*//*@>12cdb*/(int8_T)/*@>12ce9*/(uint8_T)-/*@<12cd9*//*@>12cd6*/tmp : (int32_T)/*@>12cec*/(uint8_T)/*@>12cde*/tmp);
/* End of DataTypeConversion: '<S97>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write5' */
/*@>15999*/VCU_DW./*@>17285*/VAR_OUT_p_pneum/*@>7055*/ = /*@>156d0*/VCU_B./*@>17195*/DataTypeConversion10_p5;
/* Gain: '<S98>/Factor' */
/*@>156d6*/VCU_B./*@>17198*/Factor_nt/*@>705d*/ = /*@>12ae4*/10.0/*@>12ca4*/ * /*@>156dc*/VCU_B./*@>1719b*/U_Bat;
/* Sum: '<S98>/Add1' */
/*@>156e2*/VCU_B./*@>1719e*/Add1_ph/*@>98f4*/ = /*@>156e8*/VCU_B./*@>171a1*/Factor_nt;
/* DataTypeConversion: '<S98>/Data Type Conversion10' */
/*@>12c5f*/tmp/*@>12c61*/ = /*@>148e6*/floor(/*@>156ee*/VCU_B./*@>171a4*/Add1_ph);
/*@>12c7f*/if (/*@>148e8*/rtIsNaN(/*@>12c63*/tmp)/*@>12c6d*/ || /*@>148ea*/rtIsInf(/*@>12c68*/tmp)) {
    /*@>12c70*/tmp/*@>12c72*/ = /*@>12c6f*/0.0;
} else {
    /*@>12c7b*/tmp/*@>12c7d*/ = /*@>148ec*/fmod(/*@>12c74*/tmp, /*@>12c78*/256.0);
}
/*@>156f4*/VCU_B./*@>171a7*/DataTypeConversion10_bm/*@>7065*/ = /*@>139ba*/(uint8_T)(/*@>12c86*/tmp/*@>12c89*/ < /*@>12c85*/0.0/*@>12c89*/ ? (int32_T)/*@>12c91*/(uint8_T)-/*@<12c9a*//*@>12c8f*/(int8_T)/*@>12c9d*/(uint8_T)-/*@<12c8d*//*@>12c8a*/tmp : (int32_T)/*@>12ca0*/(uint8_T)/*@>12c92*/tmp);
/* End of DataTypeConversion: '<S98>/Data Type Conversion10' */

/* DataStoreWrite: '<S68>/Data Store Write6' */
/*@>1599f*/VCU_DW./*@>17288*/VAR_OUT_U_Bat/*@>7067*/ = /*@>156fa*/VCU_B./*@>171aa*/DataTypeConversion10_bm;
/* Sum: '<S106>/Add1' */
/*@>15700*/VCU_B./*@>171ad*/Add1_jp/*@>98f9*/ = /*@>15706*/VCU_B./*@>171b0*/Saturation_b;
/* DataStoreWrite: '<S69>/Data Store Write' */
/*@>159a5*/VCU_DW./*@>1728b*/VAR_OUT_Fans_active/*@>706e*/ = /*@>1570c*/VCU_B./*@>171b3*/Add1_jp;
/* DataStoreWrite: '<S69>/Data Store Write1' */
/*@>159ab*/VCU_DW./*@>1728e*/VAR_OUT_Waterpump_active/*@>7070*/ = /*@>15809*/VCU_ConstB./*@>1722e*/Add1;
/* RelationalOperator: '<S109>/Compare' incorporates:
 *  Constant: '<S109>/Constant'
 */
/*@>15712*/VCU_B./*@>171b6*/Compare_mi/*@>7074*/ = (/*@>15718*/VCU_B./*@>171b9*/VOVG_ShiftUp/*@>7073*/ > /*@>12ae5*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write' */
/*@>159b1*/VCU_DW./*@>17291*/VAR_OUT_VOVG_ShiftUp/*@>7076*/ = /*@>1571e*/VCU_B./*@>171bc*/Compare_mi;
/* RelationalOperator: '<S110>/Compare' incorporates:
 *  Constant: '<S110>/Constant'
 */
/*@>15724*/VCU_B./*@>171bf*/Compare_ek/*@>707a*/ = (/*@>1572a*/VCU_B./*@>171c2*/VOVG_ShiftDown/*@>7079*/ > /*@>12ae6*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write1' */
/*@>159b7*/VCU_DW./*@>17294*/VAR_OUT_VOVG_ShiftDown/*@>707c*/ = /*@>15730*/VCU_B./*@>171c5*/Compare_ek;
/* Gain: '<S63>/Gain4' */
/*@>12c17*/tmp/*@>12c19*/ = /*@>148ee*/floor(/*@>12ae7*/65535.0/*@>12c10*/ * /*@>15736*/VCU_B./*@>171c8*/Saturation_b);
/*@>12c37*/if (/*@>148f0*/rtIsNaN(/*@>12c1b*/tmp)/*@>12c25*/ || /*@>148f2*/rtIsInf(/*@>12c20*/tmp)) {
    /*@>12c28*/tmp/*@>12c2a*/ = /*@>12c27*/0.0;
} else {
    /*@>12c33*/tmp/*@>12c35*/ = /*@>148f4*/fmod(/*@>12c2c*/tmp, /*@>12c30*/65536.0);
}
/*@>1573c*/VCU_B./*@>171cb*/Gain4_f/*@>7084*/ = /*@>139d9*/(uint16_T)(/*@>12c3e*/tmp/*@>12c41*/ < /*@>12c3d*/0.0/*@>12c41*/ ? (int32_T)/*@>12c49*/(uint16_T)-/*@<12c52*//*@>12c47*/(int16_T)/*@>12c55*/(uint16_T)-/*@<12c45*//*@>12c42*/tmp : (int32_T)/*@>12c58*/(uint16_T)/*@>12c4a*/tmp);
/* End of Gain: '<S63>/Gain4' */

/* DataStoreWrite: '<S63>/Data Store Write10' */
/*@>159bd*/VCU_DW./*@>17297*/VAR_OUT_Fans2_PWM_active/*@>7086*/ = /*@>15742*/VCU_B./*@>171ce*/Gain4_f;
/* RelationalOperator: '<S113>/Compare' incorporates:
 *  Constant: '<S113>/Constant'
 */
/*@>15748*/VCU_B./*@>171d1*/Compare_pr/*@>708a*/ = (/*@>1574e*/VCU_B./*@>171d4*/Ignition_Cut/*@>7089*/ > /*@>12ae8*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write2' */
/*@>159c3*/VCU_DW./*@>1729a*/VAR_OUT_Ignition_Cut/*@>708c*/ = /*@>15754*/VCU_B./*@>171d7*/Compare_pr;
/* RelationalOperator: '<S111>/Compare' incorporates:
 *  Constant: '<S111>/Constant'
 */
/*@>1575a*/VCU_B./*@>171da*/Compare_d3/*@>7090*/ = (/*@>15760*/VCU_B./*@>171dd*/VOVG_IN/*@>708f*/ > /*@>12ae9*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write3' */
/*@>159c9*/VCU_DW./*@>1729d*/VAR_OUT_VOVG_IN/*@>7092*/ = /*@>15766*/VCU_B./*@>171e0*/Compare_d3;
/* RelationalOperator: '<S112>/Compare' incorporates:
 *  Constant: '<S112>/Constant'
 */
/*@>1576c*/VCU_B./*@>171e3*/Compare_bb/*@>7096*/ = (/*@>15772*/VCU_B./*@>171e6*/VOVG_OUT/*@>7095*/ > /*@>12aea*/0.0);
/* DataStoreWrite: '<S63>/Data Store Write4' */
/*@>159cf*/VCU_DW./*@>172a0*/VAR_OUT_VOVG_OUT/*@>7098*/ = /*@>15778*/VCU_B./*@>171e9*/Compare_bb;
/* Saturate: '<S63>/Saturation1' */
/*@>13ac6*/if (/*@>1577e*/VCU_B./*@>171ec*/MHJ9_IN/*@>13ac1*/ > /*@>13bff*/1.0) {
    /*@>1578a*/VCU_B./*@>171f2*/Saturation1/*@>13ac8*/ = /*@>13c05*/1.0;
} else /*@>13ac9*/if (/*@>15784*/VCU_B./*@>171ef*/MHJ9_IN/*@>13abe*/ < /*@>13c01*/0.0) {
    /*@>1579c*/VCU_B./*@>171fb*/Saturation1/*@>13acb*/ = /*@>13c03*/0.0;
} else {
    /*@>15790*/VCU_B./*@>171f5*/Saturation1/*@>13ac5*/ = /*@>15796*/VCU_B./*@>171f8*/MHJ9_IN;
}
/* End of Saturate: '<S63>/Saturation1' */

/* Gain: '<S63>/uint16 ' */
/*@>12bcb*/tmp/*@>12bcd*/ = /*@>148f6*/floor(/*@>12aed*/65535.0/*@>12bc4*/ * /*@>157a2*/VCU_B./*@>171fe*/Saturation1);
/*@>12beb*/if (/*@>148f8*/rtIsNaN(/*@>12bcf*/tmp)/*@>12bd9*/ || /*@>148fa*/rtIsInf(/*@>12bd4*/tmp)) {
    /*@>12bdc*/tmp/*@>12bde*/ = /*@>12bdb*/0.0;
} else {
    /*@>12be7*/tmp/*@>12be9*/ = /*@>148fc*/fmod(/*@>12be0*/tmp, /*@>12be4*/65536.0);
}
/*@>157a8*/VCU_B./*@>17201*/uint16/*@>70a6*/ = /*@>139f8*/(uint16_T)(/*@>12bf2*/tmp/*@>12bf5*/ < /*@>12bf1*/0.0/*@>12bf5*/ ? (int32_T)/*@>12bfd*/(uint16_T)-/*@<12c06*//*@>12bfb*/(int16_T)/*@>12c09*/(uint16_T)-/*@<12bf9*//*@>12bf6*/tmp : (int32_T)/*@>12c0c*/(uint16_T)/*@>12bfe*/tmp);
/* End of Gain: '<S63>/uint16 ' */

/* DataStoreWrite: '<S63>/Data Store Write5' */
/*@>159d5*/VCU_DW./*@>172a3*/VAR_OUT_MHJ9_IN/*@>70a8*/ = /*@>157ae*/VCU_B./*@>17204*/uint16;
/* Saturate: '<S63>/Saturation2' */
/*@>13b11*/if (/*@>157b4*/VCU_B./*@>17207*/MHJ9_OUT/*@>13b0c*/ > /*@>13c07*/1.0) {
    /*@>157c0*/VCU_B./*@>1720d*/Saturation2/*@>13b13*/ = /*@>13c0d*/1.0;
} else /*@>13b14*/if (/*@>157ba*/VCU_B./*@>1720a*/MHJ9_OUT/*@>13b09*/ < /*@>13c09*/0.0) {
    /*@>157d2*/VCU_B./*@>17216*/Saturation2/*@>13b16*/ = /*@>13c0b*/0.0;
} else {
    /*@>157c6*/VCU_B./*@>17210*/Saturation2/*@>13b10*/ = /*@>157cc*/VCU_B./*@>17213*/MHJ9_OUT;
}
/* End of Saturate: '<S63>/Saturation2' */

/* Gain: '<S63>/uint16_1 ' */
/*@>12b7f*/tmp/*@>12b81*/ = /*@>148fe*/floor(/*@>12af0*/65535.0/*@>12b78*/ * /*@>157d8*/VCU_B./*@>17219*/Saturation2);
/*@>12b9f*/if (/*@>14900*/rtIsNaN(/*@>12b83*/tmp)/*@>12b8d*/ || /*@>14902*/rtIsInf(/*@>12b88*/tmp)) {
    /*@>12b90*/tmp/*@>12b92*/ = /*@>12b8f*/0.0;
} else {
    /*@>12b9b*/tmp/*@>12b9d*/ = /*@>14904*/fmod(/*@>12b94*/tmp, /*@>12b98*/65536.0);
}
/*@>157de*/VCU_B./*@>1721c*/uint16_1/*@>70b6*/ = /*@>13a0b*/(uint16_T)(/*@>12ba6*/tmp/*@>12ba9*/ < /*@>12ba5*/0.0/*@>12ba9*/ ? (int32_T)/*@>12bb1*/(uint16_T)-/*@<12bba*//*@>12baf*/(int16_T)/*@>12bbd*/(uint16_T)-/*@<12bad*//*@>12baa*/tmp : (int32_T)/*@>12bc0*/(uint16_T)/*@>12bb2*/tmp);
/* End of Gain: '<S63>/uint16_1 ' */

/* DataStoreWrite: '<S63>/Data Store Write6' */
/*@>159db*/VCU_DW./*@>172a6*/VAR_OUT_MHJ9_OUT/*@>70b8*/ = /*@>157e4*/VCU_B./*@>1721f*/uint16_1;
/* DataStoreWrite: '<S63>/Data Store Write8' */
/*@>159e1*/VCU_DW./*@>172a9*/VAR_OUT_Waterpump_PWM_active/*@>70ba*/ = /*@>1580f*/VCU_ConstB./*@>17231*/Gain6;
/* Gain: '<S63>/Gain5' */
/*@>12b1d*/tmp/*@>12b1f*/ = /*@>14906*/floor(/*@>12af1*/65535.0/*@>12b0c*/ * /*@>157ea*/VCU_B./*@>17222*/Saturation_b);
/*@>12b53*/if (/*@>14908*/rtIsNaN(/*@>12b21*/tmp)/*@>12b35*/ || /*@>1490a*/rtIsInf(/*@>12b26*/tmp)) {
    /*@>12b38*/tmp/*@>12b3a*/ = /*@>12b37*/0.0;
} else {
    /*@>12b4f*/tmp/*@>12b51*/ = /*@>1490c*/fmod(/*@>12b3c*/tmp, /*@>12b40*/65536.0);
}
/*@>157f0*/VCU_B./*@>17225*/Gain5/*@>70c2*/ = /*@>13a1e*/(uint16_T)(/*@>12b5a*/tmp/*@>12b5d*/ < /*@>12b59*/0.0/*@>12b5d*/ ? (int32_T)/*@>12b65*/(uint16_T)-/*@<12b6e*//*@>12b63*/(int16_T)/*@>12b71*/(uint16_T)-/*@<12b61*//*@>12b5e*/tmp : (int32_T)/*@>12b74*/(uint16_T)/*@>12b66*/tmp);
/* End of Gain: '<S63>/Gain5' */

/* DataStoreWrite: '<S63>/Data Store Write9' */
/*@>159e7*/VCU_DW./*@>172ac*/VAR_OUT_Fans1_PWM_active/*@>70c4*/ = /*@>157f6*/VCU_B./*@>17228*/Gain5;
/* DataStoreWrite: '<S63>/Data Store Write7' */
/*@>159ed*/VCU_DW./*@>172af*/VAR_OUT_Brakelight/*@>70c6*/ = /*@>157fc*/VCU_B./*@>1722b*/Brakelight;





      
  


        
    
      
          }
    
  



                








  


  


  


  

