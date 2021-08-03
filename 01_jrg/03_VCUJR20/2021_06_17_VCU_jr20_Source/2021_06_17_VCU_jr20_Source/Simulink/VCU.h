/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: VCU.h
 *
 * Code generated for Simulink model : VCU.
 * Model version      : 1.302
 * Simulink Coder version    : 8.14 (R2018a) 06-Feb-2018
 * TLC version       : 8.14 (Feb 22 2018)
 * C/C++ source code generated on  : Thu Jun 17 19:22:06 2021
 *
 * Target selection: Infineon_XMC_Family.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef RTW_HEADER_VCU_h_
#define RTW_HEADER_VCU_h_
#include <stddef.h>
#include <string.h>
#include "xmc_common.h"
#include "xmc_scu.h"
#ifndef VCU_COMMON_INCLUDES_
# define VCU_COMMON_INCLUDES_
#include "rtwtypes.h"
#endif                                 /* VCU_COMMON_INCLUDES_ */

#include "VCU_types.h"

/* Child system includes */
#include "Subsystem_Brakelight.h"
#include "Subsystem_InputData.h"
#include "Subsystem_OutputData.h"
#include "Subsystem_PumpAndFans.h"
#include "Subsystem_Safety.h"
#include "Subsystem_Transmission.h"
#include "rtGetInf.h"
#include "rt_nonfinite.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
# define rtmGetErrorStatus(rtm)        ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
# define rtmSetErrorStatus(rtm, val)   ((rtm)->errorStatus = (val))
#endif

/* Block signals (default storage) */
typedef struct {
  real_T VOVG_ShiftUp;                 /* '<S7>/Multiport Switch' */
  real_T LC_Fnr;                       /* '<S7>/Multiport Switch' */
  real_T VOVG_ShiftDown;               /* '<S7>/Multiport Switch' */
  real_T Ignition_Cut;                 /* '<S7>/Multiport Switch' */
  real_T VOVG_IN;                      /* '<S7>/Multiport Switch' */
  real_T VOVG_OUT;                     /* '<S7>/Multiport Switch' */
  real_T MHJ9_IN;                      /* '<S7>/Multiport Switch' */
  real_T MHJ9_OUT;                     /* '<S7>/Multiport Switch' */
  real_T x_clutch_LC;                  /* '<S7>/Multiport Switch' */
  real_T LC_Mdes;                      /* '<S7>/Multiport Switch' */
  real_T VOVG_ShiftDown_m;             /* '<S140>/Data Type Conversion10' */
  real_T Uk1;                          /* '<S206>/Delay Input1' */
  real_T Gain;                         /* '<S210>/Gain' */
  real_T Switch;                       /* '<S193>/Switch' */
  real_T Uk1_i;                        /* '<S214>/Delay Input1' */
  real_T Gain_m;                       /* '<S219>/Gain' */
  real_T Ignition_Cut_o;               /* '<S140>/Data Type Conversion11' */
  real_T VOVG_ShiftUp_k;               /* '<S140>/Data Type Conversion8' */
  real_T Switch_g;                     /* '<S192>/Switch' */
  real_T MinMax;                       /* '<S192>/MinMax' */
  real_T VOVG_IN_h;                    /* '<S140>/Data Type Conversion12' */
  real_T Add;                          /* '<S192>/Add' */
  real_T DutyCycleMHJ9;                /* '<S192>/Duty Cycle MHJ9' */
  real_T Product1;                     /* '<S192>/Product1' */
  real_T Switch1;                      /* '<S192>/Switch1' */
  real_T Product2;                     /* '<S192>/Product2' */
  real_T MHJ9_OUT_d;                   /* '<S140>/Data Type Conversion15' */
  real_T Product3;                     /* '<S192>/Product3' */
  real_T MHJ9_IN_e;                    /* '<S140>/Data Type Conversion14' */
  real_T VOVG_OUT_j;                   /* '<S140>/Data Type Conversion13' */
  real_T x_clutch_LC_b;                /* '<S140>/Data Type Conversion16' */
  real_T LC_Mdes_b;                    /* '<S140>/Data Type Conversion17' */
  real_T LC_Fnr_l;                     /* '<S140>/Data Type Conversion18' */
  real_T MinMax_l;                     /* '<S184>/MinMax' */
  real_T VOVG_IN_c;                    /* '<S139>/Data Type Conversion12' */
  real_T Add_l;                        /* '<S184>/Add' */
  real_T DutyCycleMHJ9_d;              /* '<S184>/Duty Cycle MHJ9' */
  real_T Product1_p;                   /* '<S184>/Product1' */
  real_T Switch1_e;                    /* '<S184>/Switch1' */
  real_T Product2_p;                   /* '<S184>/Product2' */
  real_T MHJ9_OUT_k;                   /* '<S139>/Data Type Conversion15' */
  real_T Product3_d;                   /* '<S184>/Product3' */
  real_T MHJ9_IN_p;                    /* '<S139>/Data Type Conversion14' */
  real_T VOVG_OUT_o;                   /* '<S139>/Data Type Conversion13' */
  real_T VOVG_ShiftUp_o;               /* '<S139>/Data Type Conversion8' */
  real_T VOVG_ShiftDown_f;             /* '<S139>/Data Type Conversion10' */
  real_T Ignition_Cut_h;               /* '<S139>/Data Type Conversion11' */
  real_T x_clutch_LC_i;                /* '<S139>/Data Type Conversion16' */
  real_T LC_Mdes_f;                    /* '<S139>/Data Type Conversion17' */
  real_T LC_Fnr_f;                     /* '<S139>/Data Type Conversion18' */
  real_T VOVG_ShiftDown_i;             /* '<S138>/Data Type Conversion1' */
  real_T Uk1_o;                        /* '<S172>/Delay Input1' */
  real_T Switch_e;                     /* '<S144>/Switch' */
  real_T Add1;                         /* '<S153>/Add1' */
  real_T Switch3;                      /* '<S153>/Switch3' */
  real_T Switch4;                      /* '<S153>/Switch4' */
  real_T Uk1_d;                        /* '<S180>/Delay Input1' */
  real_T Uk1_og;                       /* '<S181>/Delay Input1' */
  real_T Ignition_Cut_g;               /* '<S138>/Data Type Conversion2' */
  real_T LC_Mdes_bl;                   /* '<S138>/Data Type Conversion8' */
  real_T VOVG_ShiftUp_d;               /* '<S138>/Data Type Conversion' */
  real_T Switch_h;                     /* '<S141>/Switch' */
  real_T Add_o;                        /* '<S154>/Add' */
  real_T Gain_g;                       /* '<S154>/Gain' */
  real_T Add1_f;                       /* '<S154>/Add1' */
  real_T Gain1;                        /* '<S154>/Gain1' */
  real_T Add2;                         /* '<S154>/Add2' */
  real_T MinMax_o;                     /* '<S154>/MinMax' */
  real_T Divide;                       /* '<S154>/Divide' */
  real_T Saturation;                   /* '<S154>/Saturation' */
  real_T MinMax_oo;                    /* '<S141>/MinMax' */
  real_T VOVG_IN_b;                    /* '<S138>/Data Type Conversion3' */
  real_T Add_od;                       /* '<S141>/Add' */
  real_T DutyCycleMHJ9_l;              /* '<S141>/Duty Cycle MHJ9' */
  real_T Product1_l;                   /* '<S141>/Product1' */
  real_T Switch1_k;                    /* '<S141>/Switch1' */
  real_T Product2_a;                   /* '<S141>/Product2' */
  real_T MHJ9_OUT_p;                   /* '<S138>/Data Type Conversion6' */
  real_T Product3_n;                   /* '<S141>/Product3' */
  real_T MHJ9_IN_m;                    /* '<S138>/Data Type Conversion5' */
  real_T VOVG_OUT_i;                   /* '<S138>/Data Type Conversion4' */
  real_T x_clutch_LC_n;                /* '<S138>/Data Type Conversion7' */
  real_T LC_Fnr_e;                     /* '<S138>/Data Type Conversion9' */
  real_T Uk1_h;                        /* '<S171>/Delay Input1' */
  real_T Memory1;                      /* '<S151>/Memory1' */
  real_T Merge;                        /* '<S151>/Merge' */
  real_T Switch3_p;                    /* '<S151>/Switch3' */
  real_T Switch2;                      /* '<S151>/Switch2' */
  real_T Switch1_j;                    /* '<S151>/Switch1' */
  real_T Switch_i;                     /* '<S151>/Switch' */
  real_T MinMax_c;                     /* '<S151>/MinMax' */
  real_T Saturation_f;                 /* '<S151>/Saturation' */
  real_T Add_e;                        /* '<S151>/Add' */
  real_T Switch_j;                     /* '<S122>/Switch' */
  real_T Saturation_b;                 /* '<S122>/Saturation' */
  real_T Switch1_d;                    /* '<S122>/Switch1' */
  real_T uDLookupTable;                /* '<S122>/2-D Lookup Table' */
  real_T n_wheel_FL_kmh;               /* '<S63>/Gain' */
  real_T Factor;                       /* '<S70>/Factor' */
  real_T Add1_g;                       /* '<S70>/Add1' */
  real_T n_wheel_FR_kmh;               /* '<S63>/Gain1' */
  real_T Factor_c;                     /* '<S71>/Factor' */
  real_T Add1_i;                       /* '<S71>/Add1' */
  real_T n_wheel_RL_kmh;               /* '<S63>/Gain2' */
  real_T Factor_j;                     /* '<S72>/Factor' */
  real_T Add1_a;                       /* '<S72>/Add1' */
  real_T n_wheel_RR_kmh;               /* '<S63>/Gain3' */
  real_T Factor_h;                     /* '<S73>/Factor' */
  real_T Add1_e;                       /* '<S73>/Add1' */
  real_T Add1_j;                       /* '<S80>/Add1' */
  real_T Factor_d;                     /* '<S81>/Factor' */
  real_T Add1_l;                       /* '<S81>/Add1' */
  real_T Factor_b;                     /* '<S82>/Factor' */
  real_T Add1_ll;                      /* '<S82>/Add1' */
  real_T Add_p;                        /* '<S115>/Add' */
  real_T Gain_g2;                      /* '<S115>/Gain' */
  real_T Add1_b;                       /* '<S83>/Add1' */
  real_T Add1_n;                       /* '<S84>/Add1' */
  real_T Add1_jg;                      /* '<S85>/Add1' */
  real_T Add1_bq;                      /* '<S86>/Add1' */
  real_T Factor_n;                     /* '<S87>/Factor' */
  real_T Add1_io;                      /* '<S87>/Add1' */
  real_T Add1_p;                       /* '<S74>/Add1' */
  real_T Add1_c;                       /* '<S75>/Add1' */
  real_T Add1_js;                      /* '<S76>/Add1' */
  real_T Add1_ak;                      /* '<S77>/Add1' */
  real_T Add1_n4;                      /* '<S78>/Add1' */
  real_T Add1_h;                       /* '<S79>/Add1' */
  real_T Factor_a;                     /* '<S88>/Factor' */
  real_T Add1_lh;                      /* '<S88>/Add1' */
  real_T Factor_i;                     /* '<S89>/Factor' */
  real_T Add1_bqm;                     /* '<S89>/Add1' */
  real_T Factor_jn;                    /* '<S90>/Factor' */
  real_T Add1_iv;                      /* '<S90>/Add1' */
  real_T Factor_h0;                    /* '<S91>/Factor' */
  real_T Add1_i1;                      /* '<S91>/Add1' */
  real_T Factor_dd;                    /* '<S92>/Factor' */
  real_T Add1_ai;                      /* '<S92>/Add1' */
  real_T Factor_bc;                    /* '<S93>/Factor' */
  real_T Add1_o;                       /* '<S93>/Add1' */
  real_T Factor_f;                     /* '<S94>/Factor' */
  real_T Add1_ge;                      /* '<S94>/Add1' */
  real_T Factor_o;                     /* '<S95>/Factor' */
  real_T Add1_id;                      /* '<S95>/Add1' */
  real_T Factor_k;                     /* '<S96>/Factor' */
  real_T Add1_d;                       /* '<S96>/Add1' */
  real_T Add1_a5;                      /* '<S97>/Add1' */
  real_T Factor_nt;                    /* '<S98>/Factor' */
  real_T Add1_ph;                      /* '<S98>/Add1' */
  real_T Add1_jp;                      /* '<S106>/Add1' */
  real_T Saturation1;                  /* '<S63>/Saturation1' */
  real_T Saturation2;                  /* '<S63>/Saturation2' */
  real_T Add1_m;                       /* '<S15>/Add1' */
  real_T ABS_BL_switch;                /* '<S8>/Data Type Conversion2' */
  real_T ABS_switchstate;              /* '<S8>/Data Type Conversion' */
  real_T ABS_EBD_Lamp;                 /* '<S8>/Data Type Conversion4' */
  real_T ABS_active;                   /* '<S8>/Data Type Conversion3' */
  real_T ABS_Lamp;                     /* '<S8>/Data Type Conversion5' */
  real_T Add1_k;                       /* '<S17>/Add1' */
  real_T Add1_de;                      /* '<S18>/Add1' */
  real_T Add_l1;                       /* '<S9>/Add' */
  real_T Gain4;                        /* '<S9>/Gain4' */
  real_T Add1_ks;                      /* '<S19>/Add1' */
  real_T Add1_eq;                      /* '<S20>/Add1' */
  real_T DataTypeConversion;           /* '<S26>/Data Type Conversion' */
  real_T DataTypeConversion1;          /* '<S26>/Data Type Conversion1' */
  real_T DataTypeConversion2;          /* '<S26>/Data Type Conversion2' */
  real_T DataTypeConversion3;          /* '<S26>/Data Type Conversion3' */
  real_T Add1_iu;                      /* '<S30>/Add1' */
  real_T TeleFansDC;                   /* '<S11>/Data Type Conversion1' */
  real_T Factor_kk;                    /* '<S31>/Factor' */
  real_T Add1_ik;                      /* '<S31>/Add1' */
  real_T TeleActiveBit;                /* '<S11>/Data Type Conversion' */
  real_T DataStoreRead9;               /* '<S13>/Data Store Read9' */
  real_T mVV;                          /* '<S13>/mV//V' */
  real_T Saturation_e;                 /* '<S13>/Saturation' */
  real_T x_clutch_STW;                 /* '<S13>/1-D Lookup Table' */
  real_T Add1_f1;                      /* '<S36>/Add1' */
  real_T STW_shift_up_request;         /* '<S13>/Data Type Conversion' */
  real_T STW_shift_down_request;       /* '<S13>/Data Type Conversion1' */
  real_T STW_transmission_mode;        /* '<S13>/Data Type Conversion6' */
  real_T DataStoreRead9_m;             /* '<S14>/Data Store Read9' */
  real_T mVV19;                        /* '<S14>/mV//V19' */
  real_T x_RH_F;                       /* '<S14>/1-D Lookup Table4' */
  real_T DataStoreRead10;              /* '<S14>/Data Store Read10' */
  real_T mVV20;                        /* '<S14>/mV//V20' */
  real_T x_RH_RL;                      /* '<S14>/1-D Lookup Table5' */
  real_T DataStoreRead11;              /* '<S14>/Data Store Read11' */
  real_T mVV21;                        /* '<S14>/mV//V21' */
  real_T x_RH_RR;                      /* '<S14>/1-D Lookup Table6' */
  real_T DataStoreRead3;               /* '<S14>/Data Store Read3' */
  real_T mVV14;                        /* '<S14>/mV//V14' */
  real_T x_clutch;                     /* '<S14>/Clutch_Pos2' */
  real_T x_clutch_b;                   /* '<S14>/Saturation' */
  real_T DataStoreRead;                /* '<S14>/Data Store Read' */
  real_T DataStoreRead1;               /* '<S14>/Data Store Read1' */
  real_T mVV11;                        /* '<S14>/mV//V11' */
  real_T Saturation_i;                 /* '<S41>/Saturation' */
  real_T Add_ps;                       /* '<S41>/Add' */
  real_T Sensitivity1538mVbar;         /* '<S41>/Sensitivity: 15,38 mV // bar' */
  real_T DataStoreRead12;              /* '<S14>/Data Store Read12' */
  real_T U_Bat;                        /* '<S14>/mV//V13' */
  real_T DataStoreRead4;               /* '<S14>/Data Store Read4' */
  real_T mVV15;                        /* '<S14>/mV//V15' */
  real_T uDLookupTable1;               /* '<S42>/1-D Lookup Table1' */
  real_T Saturation1_e;                /* '<S42>/Saturation1' */
  real_T DataStoreRead5;               /* '<S14>/Data Store Read5' */
  real_T mVV16;                        /* '<S14>/mV//V16' */
  real_T uDLookupTable1_k;             /* '<S43>/1-D Lookup Table1' */
  real_T Saturation1_n;                /* '<S43>/Saturation1' */
  real_T DataStoreRead6;               /* '<S14>/Data Store Read6' */
  real_T mVV17;                        /* '<S14>/mV//V17' */
  real_T uDLookupTable1_p;             /* '<S44>/1-D Lookup Table1' */
  real_T Saturation1_o;                /* '<S44>/Saturation1' */
  real_T DataStoreRead7;               /* '<S14>/Data Store Read7' */
  real_T mVV18;                        /* '<S14>/mV//V18' */
  real_T uDLookupTable1_kb;            /* '<S45>/1-D Lookup Table1' */
  real_T Saturation1_h;                /* '<S45>/Saturation1' */
  real_T DataStoreRead8;               /* '<S14>/Data Store Read8' */
  uint32_T Factor_cv;                  /* '<S97>/Factor' */
  uint32_T Factor_g;                   /* '<S15>/Factor' */
  uint32_T Factor_br;                  /* '<S17>/Factor' */
  uint32_T Factor_gm;                  /* '<S18>/Factor' */
  uint32_T Factor_d5;                  /* '<S19>/Factor' */
  uint32_T Factor_jp;                  /* '<S20>/Factor' */
  uint32_T Factor_ii;                  /* '<S83>/Factor' */
  uint16_T Product;                    /* '<S143>/Product' */
  uint16_T Uk1_ix;                     /* '<S142>/Delay Input1' */
  uint16_T DataTypeConversion10;       /* '<S70>/Data Type Conversion10' */
  uint16_T DataTypeConversion10_b;     /* '<S71>/Data Type Conversion10' */
  uint16_T DataTypeConversion10_be;    /* '<S72>/Data Type Conversion10' */
  uint16_T DataTypeConversion10_o;     /* '<S73>/Data Type Conversion10' */
  uint16_T Product_o;                  /* '<S115>/Product' */
  uint16_T DataTypeConversion10_h;     /* '<S75>/Data Type Conversion10' */
  uint16_T DataTypeConversion10_m;     /* '<S88>/Data Type Conversion10' */
  uint16_T DataTypeConversion10_f;     /* '<S89>/Data Type Conversion10' */
  uint16_T DataTypeConversion10_a;     /* '<S90>/Data Type Conversion10' */
  uint16_T DataTypeConversion10_n;     /* '<S91>/Data Type Conversion10' */
  uint16_T Gain4_f;                    /* '<S63>/Gain4' */
  uint16_T uint16;                     /* '<S63>/uint16 ' */
  uint16_T uint16_1;                   /* '<S63>/uint16_1 ' */
  uint16_T Gain5;                      /* '<S63>/Gain5' */
  uint16_T DataTypeConversion_h;       /* '<S16>/Data Type Conversion' */
  uint16_T DataTypeConversion_a;       /* '<S21>/Data Type Conversion' */
  uint16_T DataTypeConversion_l;       /* '<S22>/Data Type Conversion' */
  uint16_T DataTypeConversion_j;       /* '<S23>/Data Type Conversion' */
  uint16_T DataTypeConversion_c;       /* '<S24>/Data Type Conversion' */
  uint16_T DataTypeConversion_o;       /* '<S29>/Data Type Conversion' */
  uint16_T Factor_ba;                  /* '<S30>/Factor' */
  uint16_T Factor_oq;                  /* '<S36>/Factor' */
  uint16_T p_pneum;                    /* '<S14>/CAN to bar' */
  uint16_T Gain_d;                     /* '<S16>/Gain' */
  uint16_T Add_a;                      /* '<S16>/Add' */
  uint16_T Gain_i;                     /* '<S21>/Gain' */
  uint16_T Add_li;                     /* '<S21>/Add' */
  uint16_T Gain_e;                     /* '<S22>/Gain' */
  uint16_T Add_f;                      /* '<S22>/Add' */
  uint16_T Gain_me;                    /* '<S23>/Gain' */
  uint16_T Add_o4;                     /* '<S23>/Add' */
  uint16_T Gain_c;                     /* '<S24>/Gain' */
  uint16_T Add_fb;                     /* '<S24>/Add' */
  uint16_T Gain_cv;                    /* '<S29>/Gain' */
  uint16_T Add_d;                      /* '<S29>/Add' */
  uint8_T Add_c;                       /* '<S210>/Add' */
  uint8_T Add_j;                       /* '<S219>/Add' */
  uint8_T Uk1_b;                       /* '<S215>/Delay Input1' */
  uint8_T Uk1_m;                       /* '<S216>/Delay Input1' */
  uint8_T Uk1_f;                       /* '<S205>/Delay Input1' */
  uint8_T DataTypeConversion10_ho;     /* '<S80>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_fx;     /* '<S81>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_ae;     /* '<S82>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_c;      /* '<S83>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_ou;     /* '<S84>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_p;      /* '<S85>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_ci;     /* '<S86>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_j;      /* '<S87>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_o3;     /* '<S74>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_ok;     /* '<S76>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_ah;     /* '<S77>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_d;      /* '<S78>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_bd;     /* '<S79>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_px;     /* '<S92>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_ab;     /* '<S93>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_e;      /* '<S94>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_g;      /* '<S95>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_k;      /* '<S96>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_p5;     /* '<S97>/Data Type Conversion10' */
  uint8_T DataTypeConversion10_bm;     /* '<S98>/Data Type Conversion10' */
  uint8_T DataStoreRead1_d;            /* '<S8>/Data Store Read1' */
  uint8_T DataStoreRead4_p;            /* '<S8>/Data Store Read4' */
  uint8_T DataStoreRead2;              /* '<S8>/Data Store Read2' */
  uint8_T DataStoreRead3_l;            /* '<S8>/Data Store Read3' */
  uint8_T DataStoreRead5_d;            /* '<S8>/Data Store Read5' */
  uint8_T DataStoreRead6_j;            /* '<S8>/Data Store Read6' */
  uint8_T DataStoreRead7_l;            /* '<S8>/Data Store Read7' */
  uint8_T DataStoreRead5_n;            /* '<S9>/Data Store Read5' */
  uint8_T DataStoreRead1_k;            /* '<S9>/Data Store Read1' */
  uint8_T DataStoreRead2_n;            /* '<S9>/Data Store Read2' */
  uint8_T DataStoreRead3_k;            /* '<S9>/Data Store Read3' */
  uint8_T DataStoreRead4_o;            /* '<S9>/Data Store Read4' */
  uint8_T DataStoreRead6_f;            /* '<S9>/Data Store Read6' */
  uint8_T DataStoreRead7_h;            /* '<S9>/Data Store Read7' */
  uint8_T DataStoreRead8_e;            /* '<S9>/Data Store Read8' */
  uint8_T DataStoreRead1_g;            /* '<S25>/Data Store Read1' */
  uint8_T DataStoreRead5_i;            /* '<S26>/Data Store Read5' */
  uint8_T DataStoreRead4_k;            /* '<S26>/Data Store Read4' */
  uint8_T DataStoreRead1_m;            /* '<S26>/Data Store Read1' */
  uint8_T DataStoreRead2_o;            /* '<S26>/Data Store Read2' */
  uint8_T DataStoreRead_h;             /* '<S26>/Data Store Read' */
  uint8_T ShiftArithmetic;             /* '<S26>/Shift Arithmetic' */
  uint8_T DataStoreRead3_a;            /* '<S26>/Data Store Read3' */
  uint8_T DataStoreRead1_g5;           /* '<S27>/Data Store Read1' */
  uint8_T TeleFansDC_h;                /* '<S11>/Data Store Read1' */
  uint8_T TeleActiveBit_p;             /* '<S11>/Data Store Read8' */
  uint8_T DataStoreRead1_f;            /* '<S12>/Data Store Read1' */
  uint8_T DataStoreRead3_o;            /* '<S12>/Data Store Read3' */
  uint8_T DataStoreRead2_h;            /* '<S12>/Data Store Read2' */
  uint8_T DataStoreRead4_l;            /* '<S12>/Data Store Read4' */
  uint8_T DataStoreRead10_b;           /* '<S13>/Data Store Read10' */
  uint8_T DataStoreRead_c;             /* '<S13>/Data Store Read' */
  uint8_T DataStoreRead1_j;            /* '<S13>/Data Store Read1' */
  uint8_T DataStoreRead2_i;            /* '<S13>/Data Store Read2' */
  uint8_T DataStoreRead2_k;            /* '<S14>/Data Store Read2' */
  uint8_T Factor_c0;                   /* '<S84>/Factor' */
  uint8_T Factor_b4;                   /* '<S85>/Factor' */
  int8_T DataTypeConversion_cg;        /* '<S7>/Data Type Conversion' */
  boolean_T Compare;                   /* '<S137>/Compare' */
  boolean_T Compare_c;                 /* '<S134>/Compare' */
  boolean_T Compare_g;                 /* '<S135>/Compare' */
  boolean_T LogicalOperator;           /* '<S7>/Logical Operator' */
  boolean_T Compare_j;                 /* '<S136>/Compare' */
  boolean_T LC_active_bit;             /* '<S7>/Multiport Switch1' */
  boolean_T LC_ready_bit;              /* '<S7>/Multiport Switch1' */
  boolean_T UnitDelay1;                /* '<S193>/Unit Delay1' */
  boolean_T Delay;                     /* '<S193>/Delay' */
  boolean_T Memory;                    /* '<S209>/Memory' */
  boolean_T Logic[2];                  /* '<S209>/Logic' */
  boolean_T FixPtRelationalOperator;   /* '<S206>/FixPt Relational Operator' */
  boolean_T Delay1;                    /* '<S193>/Delay1' */
  boolean_T Memory_d;                  /* '<S207>/Memory' */
  boolean_T Logic_i[2];                /* '<S207>/Logic' */
  boolean_T UnitDelay4;                /* '<S193>/Unit Delay4' */
  boolean_T RelationalOperator;        /* '<S210>/Relational Operator' */
  boolean_T RelationalOperator1;       /* '<S210>/Relational Operator1' */
  boolean_T RelationalOperator2;       /* '<S210>/Relational Operator2' */
  boolean_T Compare_b;                 /* '<S200>/Compare' */
  boolean_T LessthanNeutral;           /* '<S193>/Relational Operator' */
  boolean_T UnitDelay;                 /* '<S194>/Unit Delay' */
  boolean_T Timeout;                   /* '<S193>/Unit Delay2' */
  boolean_T Compare_f;                 /* '<S201>/Compare' */
  boolean_T Compare_n;                 /* '<S202>/Compare' */
  boolean_T RPMcheckgear21;            /* '<S193>/Logical Operator1' */
  boolean_T Compare_l;                 /* '<S203>/Compare' */
  boolean_T Compare_h;                 /* '<S204>/Compare' */
  boolean_T RPMcheckgear31;            /* '<S193>/Logical Operator2' */
  boolean_T LogicalOperator_d;         /* '<S193>/Logical Operator' */
  boolean_T Memory_l;                  /* '<S208>/Memory' */
  boolean_T Logic_iy[2];               /* '<S208>/Logic' */
  boolean_T FixPtRelationalOperator_c; /* '<S214>/FixPt Relational Operator' */
  boolean_T RelationalOperator_d;      /* '<S219>/Relational Operator' */
  boolean_T RelationalOperator1_a;     /* '<S219>/Relational Operator1' */
  boolean_T RelationalOperator2_d;     /* '<S219>/Relational Operator2' */
  boolean_T FixPtRelationalOperator_m; /* '<S215>/FixPt Relational Operator' */
  boolean_T Compare_ha;                /* '<S211>/Compare' */
  boolean_T UnitDelay_p;               /* '<S193>/Unit Delay' */
  boolean_T Timeout_i;                 /* '<S194>/Unit Delay1' */
  boolean_T Compare_e;                 /* '<S213>/Compare' */
  boolean_T Compare_a;                 /* '<S212>/Compare' */
  boolean_T FailSafefirstgear;         /* '<S194>/Logical Operator1' */
  boolean_T LogicalOperator_i;         /* '<S194>/Logical Operator' */
  boolean_T Memory_a;                  /* '<S217>/Memory' */
  boolean_T Logic_iz[2];               /* '<S217>/Logic' */
  boolean_T Counter1;                  /* '<S194>/Counter1' */
  boolean_T FixPtRelationalOperator_b; /* '<S216>/FixPt Relational Operator' */
  boolean_T LogicalOperator2;          /* '<S194>/Logical Operator2' */
  boolean_T Memory_g;                  /* '<S218>/Memory' */
  boolean_T Logic_e[2];                /* '<S218>/Logic' */
  boolean_T Counter;                   /* '<S193>/Counter' */
  boolean_T Counter_d;                 /* '<S194>/Counter' */
  boolean_T FixPtRelationalOperator_d; /* '<S205>/FixPt Relational Operator' */
  boolean_T Compare_ao;                /* '<S195>/Compare' */
  boolean_T Compare_gu;                /* '<S197>/Compare' */
  boolean_T Compare_eh;                /* '<S196>/Compare' */
  boolean_T Compare_m;                 /* '<S198>/Compare' */
  boolean_T Compare_md;                /* '<S199>/Compare' */
  boolean_T Compare_bd;                /* '<S187>/Compare' */
  boolean_T Compare_e5;                /* '<S189>/Compare' */
  boolean_T Compare_p;                 /* '<S188>/Compare' */
  boolean_T Compare_gz;                /* '<S190>/Compare' */
  boolean_T Compare_bh;                /* '<S191>/Compare' */
  boolean_T Compare_g5;                /* '<S185>/Compare' */
  boolean_T LogicalOperator1;          /* '<S139>/Logical Operator1' */
  boolean_T Compare_mz;                /* '<S186>/Compare' */
  boolean_T LogicalOperator_e;         /* '<S139>/Logical Operator' */
  boolean_T UnitDelay1_h;              /* '<S144>/Unit Delay1' */
  boolean_T Delay_f;                   /* '<S144>/Delay' */
  boolean_T Memory_k;                  /* '<S175>/Memory' */
  boolean_T Logic_a[2];                /* '<S175>/Logic' */
  boolean_T FixPtRelationalOperator_l; /* '<S172>/FixPt Relational Operator' */
  boolean_T UnitDelay4_b;              /* '<S144>/Unit Delay4' */
  boolean_T Compare_em;                /* '<S166>/Compare' */
  boolean_T LessthanNeutral_m;         /* '<S144>/Relational Operator' */
  boolean_T UnitDelay_j;               /* '<S145>/Unit Delay' */
  boolean_T Timeout_n;                 /* '<S144>/Unit Delay2' */
  boolean_T Compare_nv;                /* '<S168>/Compare' */
  boolean_T Compare_ad;                /* '<S167>/Compare' */
  boolean_T RPMcheckgear21_n;          /* '<S144>/Logical Operator1' */
  boolean_T Compare_ex;                /* '<S169>/Compare' */
  boolean_T Compare_gl;                /* '<S170>/Compare' */
  boolean_T RPMcheckgear31_g;          /* '<S144>/Logical Operator2' */
  boolean_T LogicalOperator_c;         /* '<S144>/Logical Operator' */
  boolean_T Memory_kz;                 /* '<S173>/Memory' */
  boolean_T Logic_il[2];               /* '<S173>/Logic' */
  boolean_T Memory_ac;                 /* '<S174>/Memory' */
  boolean_T Logic_l[2];                /* '<S174>/Logic' */
  boolean_T LogicalOperator3;          /* '<S153>/Logical Operator3' */
  boolean_T LogicalOperator_dn;        /* '<S153>/Logical Operator' */
  boolean_T FixPtRelationalOperator_k; /* '<S142>/FixPt Relational Operator' */
  boolean_T LogicalOperator_k;         /* '<S138>/Logical Operator' */
  boolean_T Uk1_fm;                    /* '<S179>/Delay Input1' */
  boolean_T FixPtRelationalOperator_o; /* '<S179>/FixPt Relational Operator' */
  boolean_T FixPtRelationalOperator_cf;/* '<S180>/FixPt Relational Operator' */
  boolean_T Compare_np;                /* '<S176>/Compare' */
  boolean_T UnitDelay_m;               /* '<S144>/Unit Delay' */
  boolean_T Timeout_c;                 /* '<S145>/Unit Delay1' */
  boolean_T Compare_lz;                /* '<S178>/Compare' */
  boolean_T Compare_ph;                /* '<S177>/Compare' */
  boolean_T FailSafefirstgear_l;       /* '<S145>/Logical Operator1' */
  boolean_T LogicalOperator_d0;        /* '<S145>/Logical Operator' */
  boolean_T Memory_o;                  /* '<S182>/Memory' */
  boolean_T Logic_p[2];                /* '<S182>/Logic' */
  boolean_T Counter1_a;                /* '<S145>/Counter1' */
  boolean_T FixPtRelationalOperator_p; /* '<S181>/FixPt Relational Operator' */
  boolean_T LogicalOperator2_b;        /* '<S145>/Logical Operator2' */
  boolean_T Memory_db;                 /* '<S183>/Memory' */
  boolean_T Logic_k[2];                /* '<S183>/Logic' */
  boolean_T Counter_j;                 /* '<S144>/Counter' */
  boolean_T Counter_a;                 /* '<S145>/Counter' */
  boolean_T Memory_od;                 /* '<S143>/Memory' */
  boolean_T RelationalOperator1_d;     /* '<S143>/Relational Operator1' */
  boolean_T Compare_k;                 /* '<S146>/Compare' */
  boolean_T Compare_fm;                /* '<S148>/Compare' */
  boolean_T Compare_i;                 /* '<S147>/Compare' */
  boolean_T Compare_n3;                /* '<S149>/Compare' */
  boolean_T Compare_hz;                /* '<S150>/Compare' */
  boolean_T Compare_mq;                /* '<S164>/Compare' */
  boolean_T Compare_d;                 /* '<S165>/Compare' */
  boolean_T LCInitialization;          /* '<S152>/LC Initialization' */
  boolean_T LogicalOperator_a;         /* '<S143>/Logical Operator' */
  boolean_T RelationalOperator_l;      /* '<S143>/Relational Operator' */
  boolean_T FixPtRelationalOperator_df;/* '<S171>/FixPt Relational Operator' */
  boolean_T RelationalOperator3;       /* '<S151>/Relational Operator3' */
  boolean_T RelationalOperator2_c;     /* '<S151>/Relational Operator2' */
  boolean_T RelationalOperator1_c;     /* '<S151>/Relational Operator1' */
  boolean_T LogicalOperator_ej;        /* '<S151>/Logical Operator' */
  boolean_T Compare_dm;                /* '<S129>/Compare' */
  boolean_T RelationalOperator3_a;     /* '<S5>/Relational Operator3' */
  boolean_T LogicalOperator1_a;        /* '<S5>/Logical Operator1' */
  boolean_T Compare_in;                /* '<S120>/Compare' */
  boolean_T Compare_k5;                /* '<S108>/Compare' */
  boolean_T Compare_mi;                /* '<S109>/Compare' */
  boolean_T Compare_ek;                /* '<S110>/Compare' */
  boolean_T Compare_pr;                /* '<S113>/Compare' */
  boolean_T Compare_d3;                /* '<S111>/Compare' */
  boolean_T Compare_bb;                /* '<S112>/Compare' */
  boolean_T Fans_dash_bit;             /* '<S14>/Data Type Conversion10' */
  boolean_T LC_dash_bit;               /* '<S14>/Data Type Conversion11' */
  boolean_T RelationalOperator_c;      /* '<S1>/Relational Operator' */
  boolean_T RelationalOperator1_b;     /* '<S1>/Relational Operator1' */
  boolean_T Brakelight;                /* '<S1>/Logical Operator' */
} B_VCU_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  real_T DelayInput1_DSTATE;           /* '<S206>/Delay Input1' */
  real_T DelayInput1_DSTATE_g;         /* '<S214>/Delay Input1' */
  real_T DelayInput1_DSTATE_a;         /* '<S172>/Delay Input1' */
  real_T DelayInput1_DSTATE_l;         /* '<S180>/Delay Input1' */
  real_T DelayInput1_DSTATE_b;         /* '<S181>/Delay Input1' */
  real_T DelayInput1_DSTATE_n;         /* '<S171>/Delay Input1' */
  real_T Memory1_PreviousInput;        /* '<S151>/Memory1' */
  real_T Add1_DWORK1;                  /* '<S83>/Add1' */
  real_T VAR_OUT_Fans_active;          /* '<S69>/Data Store Memory' */
  real_T VAR_OUT_Waterpump_active;     /* '<S69>/Data Store Memory1' */
  real_T VAR_IN_x_clutch_STW;          /* '<S13>/Data Store Memory9' */
  real_T VAR_IN_Fans_dash_bit;         /* '<S14>/Data Store Memory' */
  real_T VAR_IN_p_brake_R;             /* '<S14>/Data Store Memory1' */
  real_T VAR_IN_x_RH_RL;               /* '<S14>/Data Store Memory10' */
  real_T VAR_IN_x_RH_RR;               /* '<S14>/Data Store Memory11' */
  real_T VAR_IN_U_Bat;                 /* '<S14>/Data Store Memory12' */
  real_T VAR_IN_x_clutch;              /* '<S14>/Data Store Memory3' */
  real_T VAR_IN_f_FL;                  /* '<S14>/Data Store Memory4' */
  real_T VAR_IN_f_FR;                  /* '<S14>/Data Store Memory5' */
  real_T VAR_IN_f_RL;                  /* '<S14>/Data Store Memory6' */
  real_T VAR_IN_f_RR;                  /* '<S14>/Data Store Memory7' */
  real_T VAR_IN_LC_dash_bit;           /* '<S14>/Data Store Memory8' */
  real_T VAR_IN_x_RH_F;                /* '<S14>/Data Store Memory9' */
  uint32_T Add_DWORK1;                 /* '<S210>/Add' */
  uint16_T DelayInput1_DSTATE_d;       /* '<S142>/Delay Input1' */
  uint16_T Counter_Count;              /* '<S193>/Counter' */
  uint16_T Counter_Count_b;            /* '<S144>/Counter' */
  uint16_T VAR_OUT_n_wheel_FL_kmproh;  /* '<S64>/Data Store Memory' */
  uint16_T VAR_OUT_n_wheel_FR_kmproh;  /* '<S64>/Data Store Memory1' */
  uint16_T VAR_OUT_n_wheel_RL_kmproh;  /* '<S64>/Data Store Memory2' */
  uint16_T VAR_OUT_n_wheel_RR_kmproh;  /* '<S64>/Data Store Memory3' */
  uint16_T VAR_OUT_p_brake_F;          /* '<S65>/Data Store Memory1' */
  uint16_T VAR_OUT_f_FL;               /* '<S67>/Data Store Memory' */
  uint16_T VAR_OUT_f_FR;               /* '<S67>/Data Store Memory1' */
  uint16_T VAR_OUT_f_RL;               /* '<S67>/Data Store Memory2' */
  uint16_T VAR_OUT_f_RR;               /* '<S67>/Data Store Memory3' */
  uint16_T VAR_OUT_Fans2_PWM_active;   /* '<S63>/Data Store Memory10' */
  uint16_T VAR_OUT_MHJ9_IN;            /* '<S63>/Data Store Memory5' */
  uint16_T VAR_OUT_MHJ9_OUT;           /* '<S63>/Data Store Memory6' */
  uint16_T VAR_OUT_Waterpump_PWM_active;/* '<S63>/Data Store Memory8' */
  uint16_T VAR_OUT_Fans1_PWM_active;   /* '<S63>/Data Store Memory9' */
  uint8_T DelayInput1_DSTATE_ga;       /* '<S215>/Delay Input1' */
  uint8_T DelayInput1_DSTATE_f;        /* '<S216>/Delay Input1' */
  uint8_T DelayInput1_DSTATE_p;        /* '<S205>/Delay Input1' */
  boolean_T UnitDelay1_DSTATE;         /* '<S193>/Unit Delay1' */
  boolean_T Delay_DSTATE[20];          /* '<S193>/Delay' */
  boolean_T Delay1_DSTATE;             /* '<S193>/Delay1' */
  boolean_T UnitDelay4_DSTATE;         /* '<S193>/Unit Delay4' */
  boolean_T UnitDelay_DSTATE;          /* '<S194>/Unit Delay' */
  boolean_T UnitDelay2_DSTATE;         /* '<S193>/Unit Delay2' */
  boolean_T UnitDelay_DSTATE_b;        /* '<S193>/Unit Delay' */
  boolean_T UnitDelay1_DSTATE_k;       /* '<S194>/Unit Delay1' */
  boolean_T UnitDelay1_DSTATE_d;       /* '<S144>/Unit Delay1' */
  boolean_T Delay_DSTATE_i[20];        /* '<S144>/Delay' */
  boolean_T UnitDelay4_DSTATE_k;       /* '<S144>/Unit Delay4' */
  boolean_T UnitDelay_DSTATE_m;        /* '<S145>/Unit Delay' */
  boolean_T UnitDelay2_DSTATE_n;       /* '<S144>/Unit Delay2' */
  boolean_T DelayInput1_DSTATE_fa;     /* '<S179>/Delay Input1' */
  boolean_T UnitDelay_DSTATE_f;        /* '<S144>/Unit Delay' */
  boolean_T UnitDelay1_DSTATE_i;       /* '<S145>/Unit Delay1' */
  uint8_T Counter1_Count;              /* '<S194>/Counter1' */
  uint8_T Counter_Count_i;             /* '<S194>/Counter' */
  uint8_T Counter1_Count_m;            /* '<S145>/Counter1' */
  uint8_T Counter_Count_n;             /* '<S145>/Counter' */
  uint8_T VAR_OUT_p_brake_R;           /* '<S66>/Data Store Memory' */
  uint8_T VAR_OUT_STW_mue_tyre;        /* '<S66>/Data Store Memory1' */
  uint8_T VAR_OUT_x_clutch_LC;         /* '<S66>/Data Store Memory2' */
  uint8_T VAR_OUT_LC_dash_Bit;         /* '<S66>/Data Store Memory3' */
  uint8_T VAR_OUT_LC_active_bit;       /* '<S66>/Data Store Memory4' */
  uint8_T VAR_OUT_LC_ready_bit;        /* '<S66>/Data Store Memory5' */
  uint8_T VAR_OUT_LC_Mdes;             /* '<S66>/Data Store Memory6' */
  uint8_T VAR_OUT_LC_Fnr;              /* '<S66>/Data Store Memory7' */
  uint8_T VAR_OUT_ABS_switchstate;     /* '<S65>/Data Store Memory' */
  uint8_T VAR_OUT_ABS_BL_switch;       /* '<S65>/Data Store Memory2' */
  uint8_T VAR_OUT_ABS_active;          /* '<S65>/Data Store Memory3' */
  uint8_T VAR_OUT_ABS_EBD_Lamp;        /* '<S65>/Data Store Memory4' */
  uint8_T VAR_OUT_ABS_Lamp;            /* '<S65>/Data Store Memory5' */
  uint8_T VAR_OUT_x_RH_RL;             /* '<S68>/Data Store Memory' */
  uint8_T VAR_OUT_x_RH_RR;             /* '<S68>/Data Store Memory1' */
  uint8_T VAR_OUT_x_RH_F;              /* '<S68>/Data Store Memory2' */
  uint8_T VAR_OUT_x_clutch;            /* '<S68>/Data Store Memory3' */
  uint8_T VAR_OUT_x_clutch_STW;        /* '<S68>/Data Store Memory4' */
  uint8_T VAR_OUT_p_pneum;             /* '<S68>/Data Store Memory5' */
  uint8_T VAR_OUT_U_Bat;               /* '<S68>/Data Store Memory6' */
  uint8_T ShiftArithmetic_HasIssuedWarnin;/* '<S26>/Shift Arithmetic' */
  uint8_T VAR_IN_p_brake_F_LSB;        /* '<S8>/Data Store Memory1' */
  uint8_T VAR_IN_ABS_BL_switch;        /* '<S8>/Data Store Memory2' */
  uint8_T VAR_IN_ABS_switchstate;      /* '<S8>/Data Store Memory3' */
  uint8_T VAR_IN_p_brake_F_MSB;        /* '<S8>/Data Store Memory4' */
  uint8_T VAR_IN_ABS_EBD_Lamp;         /* '<S8>/Data Store Memory5' */
  uint8_T VAR_IN_ABS_active;           /* '<S8>/Data Store Memory6' */
  uint8_T VAR_IN_ABS_Lamp;             /* '<S8>/Data Store Memory7' */
  uint8_T VAR_IN_n_wheel_FL_mpros_MSB; /* '<S9>/Data Store Memory1' */
  uint8_T VAR_IN_n_wheel_FR_mpros_LSB; /* '<S9>/Data Store Memory2' */
  uint8_T VAR_IN_n_wheel_FR_mpros_MSB; /* '<S9>/Data Store Memory3' */
  uint8_T VAR_IN_n_wheel_RL_mpros_LSB; /* '<S9>/Data Store Memory4' */
  uint8_T VAR_IN_n_wheel_FL_mpros_LSB; /* '<S9>/Data Store Memory5' */
  uint8_T VAR_IN_n_wheel_RL_mpros_MSB; /* '<S9>/Data Store Memory6' */
  uint8_T VAR_IN_n_wheel_RR_mpros_LSB; /* '<S9>/Data Store Memory7' */
  uint8_T VAR_IN_n_wheel_RR_mpros_MSB; /* '<S9>/Data Store Memory8' */
  uint8_T VAR_IN_u_TPS;                /* '<S25>/Data Store Memory1' */
  uint8_T VAR_IN_gear;                 /* '<S26>/Data Store Memory' */
  uint8_T VAR_IN_n_engine_MSB;         /* '<S26>/Data Store Memory1' */
  uint8_T VAR_IN_n_engine_LSB;         /* '<S26>/Data Store Memory2' */
  uint8_T VAR_IN_TPS_Plausi;           /* '<S26>/Data Store Memory3' */
  uint8_T VAR_IN_p_air_22_des;         /* '<S26>/Data Store Memory4' */
  uint8_T VAR_IN_p_air_22;             /* '<S26>/Data Store Memory5' */
  uint8_T VAR_IN_t_water_engine;       /* '<S27>/Data Store Memory1' */
  uint8_T VAR_IN_TeleFansDC;           /* '<S11>/Data Store Memory1' */
  uint8_T VAR_IN_TeleActiveBit;        /* '<S11>/Data Store Memory8' */
  uint8_T VAR_IN_g_yaw_ABS_MSB;        /* '<S12>/Data Store Memory1' */
  uint8_T VAR_IN_g_long_ABS_MSB;       /* '<S12>/Data Store Memory2' */
  uint8_T VAR_IN_g_yaw_ABS_LSB;        /* '<S12>/Data Store Memory3' */
  uint8_T VAR_IN_g_long_ABS_LSB;       /* '<S12>/Data Store Memory4' */
  uint8_T VAR_IN_STW_shift_up_request; /* '<S13>/Data Store Memory' */
  uint8_T VAR_IN_STW_shift_down_request;/* '<S13>/Data Store Memory1' */
  uint8_T VAR_IN_STW_mue_tyre;         /* '<S13>/Data Store Memory10' */
  uint8_T VAR_IN_STW_transmission_mode;/* '<S13>/Data Store Memory2' */
  uint8_T VAR_IN_p_pneum;              /* '<S14>/Data Store Memory2' */
  boolean_T Memory_PreviousInput;      /* '<S209>/Memory' */
  boolean_T Memory_PreviousInput_l;    /* '<S207>/Memory' */
  boolean_T Memory_PreviousInput_a;    /* '<S208>/Memory' */
  boolean_T Memory_PreviousInput_al;   /* '<S217>/Memory' */
  boolean_T Memory_PreviousInput_k;    /* '<S218>/Memory' */
  boolean_T Memory_PreviousInput_c;    /* '<S175>/Memory' */
  boolean_T Memory_PreviousInput_ao;   /* '<S173>/Memory' */
  boolean_T Memory_PreviousInput_m;    /* '<S174>/Memory' */
  boolean_T Memory_PreviousInput_e;    /* '<S182>/Memory' */
  boolean_T Memory_PreviousInput_n;    /* '<S183>/Memory' */
  boolean_T Memory_PreviousInput_i;    /* '<S143>/Memory' */
  boolean_T VAR_OUT_VOVG_ShiftUp;      /* '<S63>/Data Store Memory' */
  boolean_T VAR_OUT_VOVG_ShiftDown;    /* '<S63>/Data Store Memory1' */
  boolean_T VAR_OUT_BSD;               /* '<S63>/Data Store Memory11' */
  boolean_T VAR_OUT_Ignition_Cut;      /* '<S63>/Data Store Memory2' */
  boolean_T VAR_OUT_VOVG_IN;           /* '<S63>/Data Store Memory3' */
  boolean_T VAR_OUT_VOVG_OUT;          /* '<S63>/Data Store Memory4' */
  boolean_T VAR_OUT_Brakelight;        /* '<S63>/Data Store Memory7' */
  boolean_T LC_jr19_MODE;              /* '<S7>/LC_jr19' */
  boolean_T ClutchPoscalc_MODE;        /* '<S143>/Clutch Pos calc' */
} DW_VCU_T;

/* Invariant block signals (default storage) */
typedef struct {
  const real_T Saturation;             /* '<S123>/Saturation' */
  const real_T Add1;                   /* '<S107>/Add1' */
  const uint16_T Gain6;                /* '<S63>/Gain6' */
  const boolean_T LC_active_bit;       /* '<S7>/Data Type Conversion1' */
  const boolean_T LC_ready_bit;        /* '<S7>/Data Type Conversion2' */
} ConstB_VCU_T;

/* Constant parameters (default storage) */
typedef struct {
  /* Pooled Parameter (Expression: [25 0])
   * Referenced by:
   *   '<S13>/1-D Lookup Table'
   *   '<S14>/Clutch_Pos2'
   */
  real_T pooled6[2];

  /* Expression: [0 5]
   * Referenced by: '<S13>/1-D Lookup Table'
   */
  real_T uDLookupTable_bp01Data[2];

  /* Pooled Parameter (Expression: [55 160])
   * Referenced by:
   *   '<S14>/1-D Lookup Table4'
   *   '<S14>/1-D Lookup Table5'
   *   '<S14>/1-D Lookup Table6'
   */
  real_T pooled7[2];

  /* Pooled Parameter (Expression: [0.08 3.12])
   * Referenced by:
   *   '<S14>/1-D Lookup Table4'
   *   '<S14>/1-D Lookup Table6'
   */
  real_T pooled8[2];

  /* Expression: [0.08 3.04]
   * Referenced by: '<S14>/1-D Lookup Table5'
   */
  real_T uDLookupTable5_bp01Data[2];

  /* Expression: [2.52 4.06]
   * Referenced by: '<S14>/Clutch_Pos2'
   */
  real_T Clutch_Pos2_bp01Data[2];

  /* Expression: [-40 300]
   * Referenced by: '<S42>/1-D Lookup Table1'
   */
  real_T uDLookupTable1_tableData[2];

  /* Expression: [0.098 0.169]
   * Referenced by: '<S42>/1-D Lookup Table1'
   */
  real_T uDLookupTable1_bp01Data[2];

  /* Expression: [-40 378]
   * Referenced by: '<S43>/1-D Lookup Table1'
   */
  real_T uDLookupTable1_tableData_o[2];

  /* Expression: [0.462 0.519]
   * Referenced by: '<S43>/1-D Lookup Table1'
   */
  real_T uDLookupTable1_bp01Data_d[2];

  /* Expression: [1030 2005  3970 5940 7910]
   * Referenced by: '<S44>/1-D Lookup Table1'
   */
  real_T uDLookupTable1_tableData_d[5];

  /* Expression: [0.774 1.312 2.400 3.490 4.576]
   * Referenced by: '<S44>/1-D Lookup Table1'
   */
  real_T uDLookupTable1_bp01Data_o[5];

  /* Expression: [1018 1990 3935 5875 7830]
   * Referenced by: '<S45>/1-D Lookup Table1'
   */
  real_T uDLookupTable1_tableData_l[5];

  /* Expression: [0.851 1.391 2.464 3.540 4.620]
   * Referenced by: '<S45>/1-D Lookup Table1'
   */
  real_T uDLookupTable1_bp01Data_n[5];

  /* Expression: reshape([0,0,0,0,0.5,0.7,1,0,0,0,0,0.5,0.7,1,0,0,0,0,0.5,0.7,1],7,3)
   * Referenced by: '<S122>/2-D Lookup Table'
   */
  real_T uDLookupTable_tableData[21];

  /* Expression: [0,60,70,74,75,80,85]
   * Referenced by: '<S122>/2-D Lookup Table'
   */
  real_T uDLookupTable_bp01Data_h[7];

  /* Expression: [0,10,90]
   * Referenced by: '<S122>/2-D Lookup Table'
   */
  real_T uDLookupTable_bp02Data[3];

  /* Pooled Parameter (Expression: [1,0.5,0.1,0.05,0.05,0.05,0.03,0,0,0.03,0.03,0.05,0.4,0.8,1])
   * Referenced by:
   *   '<S141>/Duty Cycle MHJ9'
   *   '<S184>/Duty Cycle MHJ9'
   *   '<S192>/Duty Cycle MHJ9'
   */
  real_T pooled23[15];

  /* Pooled Parameter (Expression: [-25,-5,-3,-2,-1,-0.5,-0.1,0,0.1,0.5,1,2,5,7,25])
   * Referenced by:
   *   '<S141>/Duty Cycle MHJ9'
   *   '<S184>/Duty Cycle MHJ9'
   *   '<S192>/Duty Cycle MHJ9'
   */
  real_T pooled24[15];

  /* Computed Parameter: uDLookupTable_maxIndex
   * Referenced by: '<S122>/2-D Lookup Table'
   */
  uint32_T uDLookupTable_maxIndex[2];

  /* Pooled Parameter (Expression: [0 1;1 0;0 1;0 1;1 0;1 0;0 0;0 0])
   * Referenced by:
   *   '<S173>/Logic'
   *   '<S174>/Logic'
   *   '<S175>/Logic'
   *   '<S182>/Logic'
   *   '<S183>/Logic'
   *   '<S207>/Logic'
   *   '<S208>/Logic'
   *   '<S209>/Logic'
   *   '<S217>/Logic'
   *   '<S218>/Logic'
   */
  boolean_T pooled33[16];
} ConstP_VCU_T;

/* Real-time Model Data Structure */
struct tag_RTM_VCU_T {
  const char_T *errorStatus;
};

/* Block signals (default storage) */
extern B_VCU_T VCU_B;

/* Block states (default storage) */
extern DW_VCU_T VCU_DW;
extern const ConstB_VCU_T VCU_ConstB;  /* constant block i/o */

/* Constant parameters (default storage) */
extern const ConstP_VCU_T VCU_ConstP;

/* Model entry point functions */
extern void VCU_initialize(void);
extern void VCU_step(void);

/* Real-time Model object */
extern RT_MODEL_VCU_T *const VCU_M;

/*-
 * These blocks were eliminated from the model due to optimizations:
 *
 * Block '<S28>/Add1' : Unused code path elimination
 * Block '<S28>/Factor' : Unused code path elimination
 * Block '<S28>/Offset' : Unused code path elimination
 * Block '<S25>/Data Type Conversion' : Unused code path elimination
 * Block '<S32>/Add1' : Unused code path elimination
 * Block '<S32>/Factor' : Unused code path elimination
 * Block '<S32>/Offset' : Unused code path elimination
 * Block '<S33>/Add1' : Unused code path elimination
 * Block '<S33>/Factor' : Unused code path elimination
 * Block '<S33>/Offset' : Unused code path elimination
 * Block '<S34>/Add' : Unused code path elimination
 * Block '<S34>/Data Type Conversion' : Unused code path elimination
 * Block '<S34>/Gain' : Unused code path elimination
 * Block '<S35>/Add' : Unused code path elimination
 * Block '<S35>/Data Type Conversion' : Unused code path elimination
 * Block '<S35>/Gain' : Unused code path elimination
 * Block '<S99>/Add1' : Unused code path elimination
 * Block '<S99>/Factor' : Unused code path elimination
 * Block '<S99>/Offset' : Unused code path elimination
 * Block '<S100>/Add1' : Unused code path elimination
 * Block '<S100>/Factor' : Unused code path elimination
 * Block '<S100>/Offset' : Unused code path elimination
 * Block '<S101>/Add1' : Unused code path elimination
 * Block '<S101>/Factor' : Unused code path elimination
 * Block '<S101>/Offset' : Unused code path elimination
 * Block '<S102>/Add1' : Unused code path elimination
 * Block '<S102>/Factor' : Unused code path elimination
 * Block '<S102>/Offset' : Unused code path elimination
 * Block '<S103>/Add1' : Unused code path elimination
 * Block '<S103>/Factor' : Unused code path elimination
 * Block '<S103>/Offset' : Unused code path elimination
 * Block '<S104>/Add1' : Unused code path elimination
 * Block '<S104>/Factor' : Unused code path elimination
 * Block '<S104>/Offset' : Unused code path elimination
 * Block '<S105>/Add1' : Unused code path elimination
 * Block '<S105>/Factor' : Unused code path elimination
 * Block '<S105>/Offset' : Unused code path elimination
 * Block '<S124>/Compare' : Unused code path elimination
 * Block '<S124>/Constant' : Unused code path elimination
 * Block '<S125>/Compare' : Unused code path elimination
 * Block '<S125>/Constant' : Unused code path elimination
 * Block '<S121>/Counter' : Unused code path elimination
 * Block '<S126>/Logic' : Unused code path elimination
 * Block '<S126>/Memory' : Unused code path elimination
 * Block '<S123>/1-D Lookup Table' : Unused code path elimination
 * Block '<S127>/Compare' : Unused code path elimination
 * Block '<S127>/Constant' : Unused code path elimination
 * Block '<S123>/Constant' : Unused code path elimination
 * Block '<S123>/Logical Operator' : Unused code path elimination
 * Block '<S123>/Switch1' : Unused code path elimination
 * Block '<S153>/Add' : Unused code path elimination
 * Block '<S153>/Constant' : Unused code path elimination
 * Block '<S153>/Constant1' : Unused code path elimination
 * Block '<S153>/Constant12' : Unused code path elimination
 * Block '<S153>/Constant2' : Unused code path elimination
 * Block '<S153>/Constant3' : Unused code path elimination
 * Block '<S153>/Logical Operator1' : Unused code path elimination
 * Block '<S153>/Switch' : Unused code path elimination
 * Block '<S153>/Switch1' : Unused code path elimination
 * Block '<S8>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S9>/Data Type Conversion' : Eliminate redundant data type conversion
 * Block '<S27>/Data Type Conversion5' : Eliminate redundant data type conversion
 * Block '<S13>/Data Type Conversion10' : Eliminate redundant data type conversion
 * Block '<S13>/Data Type Conversion7' : Eliminate redundant data type conversion
 * Block '<S14>/Data Type Conversion12' : Eliminate redundant data type conversion
 * Block '<S14>/Data Type Conversion13' : Eliminate redundant data type conversion
 * Block '<S14>/Data Type Conversion14' : Eliminate redundant data type conversion
 * Block '<S14>/Data Type Conversion15' : Eliminate redundant data type conversion
 * Block '<S14>/Data Type Conversion16' : Eliminate redundant data type conversion
 * Block '<S14>/Data Type Conversion17' : Eliminate redundant data type conversion
 * Block '<S14>/Data Type Conversion18' : Eliminate redundant data type conversion
 * Block '<S14>/Data Type Conversion19' : Eliminate redundant data type conversion
 * Block '<S74>/Factor' : Eliminated nontunable gain of 1
 * Block '<S75>/Factor' : Eliminated nontunable gain of 1
 * Block '<S76>/Factor' : Eliminated nontunable gain of 1
 * Block '<S77>/Factor' : Eliminated nontunable gain of 1
 * Block '<S78>/Factor' : Eliminated nontunable gain of 1
 * Block '<S79>/Factor' : Eliminated nontunable gain of 1
 * Block '<S80>/Factor' : Eliminated nontunable gain of 1
 * Block '<S86>/Factor' : Eliminated nontunable gain of 1
 * Block '<S106>/Factor' : Eliminated nontunable gain of 1
 * Block '<S107>/Factor' : Eliminated nontunable gain of 1
 * Block '<S158>/Gain' : Eliminated nontunable gain of 1
 * Block '<S144>/Data Type Conversion' : Eliminate redundant data type conversion
 * Block '<S144>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S145>/Data Type Conversion' : Eliminate redundant data type conversion
 * Block '<S145>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S184>/Switch' : Eliminated due to constant selection input
 * Block '<S193>/Data Type Conversion' : Eliminate redundant data type conversion
 * Block '<S193>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S194>/Data Type Conversion' : Eliminate redundant data type conversion
 * Block '<S194>/Data Type Conversion1' : Eliminate redundant data type conversion
 * Block '<S184>/Constant' : Unused code path elimination
 * Block '<S139>/Constant' : Unused code path elimination
 */

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'VCU'
 * '<S1>'   : 'VCU/Brakelight'
 * '<S2>'   : 'VCU/Input Data'
 * '<S3>'   : 'VCU/Output Data'
 * '<S4>'   : 'VCU/Pump and Fans'
 * '<S5>'   : 'VCU/Safety '
 * '<S6>'   : 'VCU/TTC'
 * '<S7>'   : 'VCU/Transmission'
 * '<S8>'   : 'VCU/Input Data/ABS_Allgemein_Inputs'
 * '<S9>'   : 'VCU/Input Data/ABS_Raddrehzahl_Inputs'
 * '<S10>'  : 'VCU/Input Data/ECU_Inputs'
 * '<S11>'  : 'VCU/Input Data/ECU_Inputs1'
 * '<S12>'  : 'VCU/Input Data/Gyroscope_Inputs'
 * '<S13>'  : 'VCU/Input Data/SteeringWheel_Inputs'
 * '<S14>'  : 'VCU/Input Data/VCU_Inputs'
 * '<S15>'  : 'VCU/Input Data/ABS_Allgemein_Inputs/CAN'
 * '<S16>'  : 'VCU/Input Data/ABS_Allgemein_Inputs/MSB_LSB_Changer'
 * '<S17>'  : 'VCU/Input Data/ABS_Raddrehzahl_Inputs/CAN'
 * '<S18>'  : 'VCU/Input Data/ABS_Raddrehzahl_Inputs/CAN1'
 * '<S19>'  : 'VCU/Input Data/ABS_Raddrehzahl_Inputs/CAN2'
 * '<S20>'  : 'VCU/Input Data/ABS_Raddrehzahl_Inputs/CAN3'
 * '<S21>'  : 'VCU/Input Data/ABS_Raddrehzahl_Inputs/MSB_LSB_Changer'
 * '<S22>'  : 'VCU/Input Data/ABS_Raddrehzahl_Inputs/MSB_LSB_Changer1'
 * '<S23>'  : 'VCU/Input Data/ABS_Raddrehzahl_Inputs/MSB_LSB_Changer2'
 * '<S24>'  : 'VCU/Input Data/ABS_Raddrehzahl_Inputs/MSB_LSB_Changer3'
 * '<S25>'  : 'VCU/Input Data/ECU_Inputs/ECU_0x1'
 * '<S26>'  : 'VCU/Input Data/ECU_Inputs/ECU_0x10'
 * '<S27>'  : 'VCU/Input Data/ECU_Inputs/ECU_0x771'
 * '<S28>'  : 'VCU/Input Data/ECU_Inputs/ECU_0x1/CAN'
 * '<S29>'  : 'VCU/Input Data/ECU_Inputs/ECU_0x10/MSB_LSB_Changer'
 * '<S30>'  : 'VCU/Input Data/ECU_Inputs/ECU_0x771/CAN3'
 * '<S31>'  : 'VCU/Input Data/ECU_Inputs1/CAN'
 * '<S32>'  : 'VCU/Input Data/Gyroscope_Inputs/CAN'
 * '<S33>'  : 'VCU/Input Data/Gyroscope_Inputs/CAN1'
 * '<S34>'  : 'VCU/Input Data/Gyroscope_Inputs/MSB_LSB_Changer'
 * '<S35>'  : 'VCU/Input Data/Gyroscope_Inputs/MSB_LSB_Changer1'
 * '<S36>'  : 'VCU/Input Data/SteeringWheel_Inputs/CAN'
 * '<S37>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter4'
 * '<S38>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter5'
 * '<S39>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter6'
 * '<S40>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter7'
 * '<S41>'  : 'VCU/Input Data/VCU_Inputs/VoltBar2'
 * '<S42>'  : 'VCU/Input Data/VCU_Inputs/VoltNewton Dose4'
 * '<S43>'  : 'VCU/Input Data/VCU_Inputs/VoltNewton Dose5'
 * '<S44>'  : 'VCU/Input Data/VCU_Inputs/VoltNewton Dose6'
 * '<S45>'  : 'VCU/Input Data/VCU_Inputs/VoltNewton Dose7'
 * '<S46>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter4/Model'
 * '<S47>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter4/Model/A*k(k-1)'
 * '<S48>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter4/Model/B*(u(k)+u(k-1))'
 * '<S49>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter4/Model/C*x(k)'
 * '<S50>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter5/Model'
 * '<S51>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter5/Model/A*k(k-1)'
 * '<S52>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter5/Model/B*(u(k)+u(k-1))'
 * '<S53>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter5/Model/C*x(k)'
 * '<S54>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter6/Model'
 * '<S55>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter6/Model/A*k(k-1)'
 * '<S56>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter6/Model/B*(u(k)+u(k-1))'
 * '<S57>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter6/Model/C*x(k)'
 * '<S58>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter7/Model'
 * '<S59>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter7/Model/A*k(k-1)'
 * '<S60>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter7/Model/B*(u(k)+u(k-1))'
 * '<S61>'  : 'VCU/Input Data/VCU_Inputs/Second-Order Filter7/Model/C*x(k)'
 * '<S62>'  : 'VCU/Output Data/CAN Write'
 * '<S63>'  : 'VCU/Output Data/OutputData'
 * '<S64>'  : 'VCU/Output Data/CAN Write/CAN1 (0x340)'
 * '<S65>'  : 'VCU/Output Data/CAN Write/CAN1 (0x5C0)'
 * '<S66>'  : 'VCU/Output Data/CAN Write/CAN1 (0x7F0)'
 * '<S67>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7E0)'
 * '<S68>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7E2)'
 * '<S69>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7FF)'
 * '<S70>'  : 'VCU/Output Data/CAN Write/CAN1 (0x340)/CAN'
 * '<S71>'  : 'VCU/Output Data/CAN Write/CAN1 (0x340)/CAN1'
 * '<S72>'  : 'VCU/Output Data/CAN Write/CAN1 (0x340)/CAN2'
 * '<S73>'  : 'VCU/Output Data/CAN Write/CAN1 (0x340)/CAN3'
 * '<S74>'  : 'VCU/Output Data/CAN Write/CAN1 (0x5C0)/CAN'
 * '<S75>'  : 'VCU/Output Data/CAN Write/CAN1 (0x5C0)/CAN1'
 * '<S76>'  : 'VCU/Output Data/CAN Write/CAN1 (0x5C0)/CAN2'
 * '<S77>'  : 'VCU/Output Data/CAN Write/CAN1 (0x5C0)/CAN3'
 * '<S78>'  : 'VCU/Output Data/CAN Write/CAN1 (0x5C0)/CAN4'
 * '<S79>'  : 'VCU/Output Data/CAN Write/CAN1 (0x5C0)/CAN5'
 * '<S80>'  : 'VCU/Output Data/CAN Write/CAN1 (0x7F0)/CAN'
 * '<S81>'  : 'VCU/Output Data/CAN Write/CAN1 (0x7F0)/CAN1'
 * '<S82>'  : 'VCU/Output Data/CAN Write/CAN1 (0x7F0)/CAN2'
 * '<S83>'  : 'VCU/Output Data/CAN Write/CAN1 (0x7F0)/CAN3'
 * '<S84>'  : 'VCU/Output Data/CAN Write/CAN1 (0x7F0)/CAN4'
 * '<S85>'  : 'VCU/Output Data/CAN Write/CAN1 (0x7F0)/CAN5'
 * '<S86>'  : 'VCU/Output Data/CAN Write/CAN1 (0x7F0)/CAN6'
 * '<S87>'  : 'VCU/Output Data/CAN Write/CAN1 (0x7F0)/CAN7'
 * '<S88>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7E0)/CAN'
 * '<S89>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7E0)/CAN1'
 * '<S90>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7E0)/CAN2'
 * '<S91>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7E0)/CAN3'
 * '<S92>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7E2)/CAN'
 * '<S93>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7E2)/CAN1'
 * '<S94>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7E2)/CAN2'
 * '<S95>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7E2)/CAN3'
 * '<S96>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7E2)/CAN4'
 * '<S97>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7E2)/CAN5'
 * '<S98>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7E2)/CAN6'
 * '<S99>'  : 'VCU/Output Data/CAN Write/CAN2 (0x7FF)/CAN'
 * '<S100>' : 'VCU/Output Data/CAN Write/CAN2 (0x7FF)/CAN1'
 * '<S101>' : 'VCU/Output Data/CAN Write/CAN2 (0x7FF)/CAN2'
 * '<S102>' : 'VCU/Output Data/CAN Write/CAN2 (0x7FF)/CAN3'
 * '<S103>' : 'VCU/Output Data/CAN Write/CAN2 (0x7FF)/CAN4'
 * '<S104>' : 'VCU/Output Data/CAN Write/CAN2 (0x7FF)/CAN5'
 * '<S105>' : 'VCU/Output Data/CAN Write/CAN2 (0x7FF)/CAN6'
 * '<S106>' : 'VCU/Output Data/CAN Write/CAN2 (0x7FF)/CAN7'
 * '<S107>' : 'VCU/Output Data/CAN Write/CAN2 (0x7FF)/CAN8'
 * '<S108>' : 'VCU/Output Data/OutputData/Compare To Constant'
 * '<S109>' : 'VCU/Output Data/OutputData/Compare To Zero'
 * '<S110>' : 'VCU/Output Data/OutputData/Compare To Zero1'
 * '<S111>' : 'VCU/Output Data/OutputData/Compare To Zero2'
 * '<S112>' : 'VCU/Output Data/OutputData/Compare To Zero3'
 * '<S113>' : 'VCU/Output Data/OutputData/Compare To Zero4'
 * '<S114>' : 'VCU/Output Data/OutputData/ELWMS'
 * '<S115>' : 'VCU/Output Data/OutputData/LC_Dash_Link'
 * '<S116>' : 'VCU/Output Data/OutputData/ELWMS/ELWMS PWM'
 * '<S117>' : 'VCU/Output Data/OutputData/ELWMS/ELWMS_Analog'
 * '<S118>' : 'VCU/Output Data/OutputData/ELWMS/ELWMS PWM/Logic'
 * '<S119>' : 'VCU/Output Data/OutputData/ELWMS/ELWMS_Analog/Logic'
 * '<S120>' : 'VCU/Output Data/OutputData/LC_Dash_Link/Compare To Constant'
 * '<S121>' : 'VCU/Pump and Fans/Low Voltage Detection'
 * '<S122>' : 'VCU/Pump and Fans/WaterFans'
 * '<S123>' : 'VCU/Pump and Fans/Waterpump'
 * '<S124>' : 'VCU/Pump and Fans/Low Voltage Detection/Compare To Constant'
 * '<S125>' : 'VCU/Pump and Fans/Low Voltage Detection/Compare To Constant1'
 * '<S126>' : 'VCU/Pump and Fans/Low Voltage Detection/S-R Flip-Flop'
 * '<S127>' : 'VCU/Pump and Fans/Waterpump/Compare To Constant'
 * '<S128>' : 'VCU/Safety /Compare To Constant'
 * '<S129>' : 'VCU/Safety /Compare To Constant1'
 * '<S130>' : 'VCU/Safety /Compare To Zero'
 * '<S131>' : 'VCU/Safety /Unit Delay Resettable1'
 * '<S132>' : 'VCU/TTC/TTC_Diagnosis_Output'
 * '<S133>' : 'VCU/TTC/TTC_Power_Handling'
 * '<S134>' : 'VCU/Transmission/Compare To Constant'
 * '<S135>' : 'VCU/Transmission/Compare To Constant1'
 * '<S136>' : 'VCU/Transmission/Compare To Constant2'
 * '<S137>' : 'VCU/Transmission/Compare To Constant3'
 * '<S138>' : 'VCU/Transmission/LC_jr19'
 * '<S139>' : 'VCU/Transmission/driver_jr18'
 * '<S140>' : 'VCU/Transmission/semi_auto_jr18'
 * '<S141>' : 'VCU/Transmission/LC_jr19/Clutch_jr18'
 * '<S142>' : 'VCU/Transmission/LC_jr19/Detect Increase'
 * '<S143>' : 'VCU/Transmission/LC_jr19/Launch Control jr18'
 * '<S144>' : 'VCU/Transmission/LC_jr19/Shift_Down'
 * '<S145>' : 'VCU/Transmission/LC_jr19/Shift_Up1'
 * '<S146>' : 'VCU/Transmission/LC_jr19/Clutch_jr18/Compare To Constant'
 * '<S147>' : 'VCU/Transmission/LC_jr19/Clutch_jr18/Compare To Constant1'
 * '<S148>' : 'VCU/Transmission/LC_jr19/Clutch_jr18/Compare To Constant2'
 * '<S149>' : 'VCU/Transmission/LC_jr19/Clutch_jr18/Compare To Constant3'
 * '<S150>' : 'VCU/Transmission/LC_jr19/Clutch_jr18/Compare To Constant4'
 * '<S151>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/Clutch Pos calc'
 * '<S152>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/LC initialization'
 * '<S153>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/Schaltung'
 * '<S154>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/slip calc'
 * '<S155>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/Clutch Pos calc/Aero_Forces'
 * '<S156>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/Clutch Pos calc/Compare To Constant1'
 * '<S157>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/Clutch Pos calc/If Action Subsystem'
 * '<S158>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/Clutch Pos calc/If Action Subsystem1'
 * '<S159>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/Clutch Pos calc/If Action Subsystem2'
 * '<S160>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/Clutch Pos calc/Mode_Selection'
 * '<S161>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/Clutch Pos calc/Normal_Forces'
 * '<S162>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/Clutch Pos calc/clutch_position_calc'
 * '<S163>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/Clutch Pos calc/slip_clutch_calc'
 * '<S164>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/LC initialization/Compare To Constant'
 * '<S165>' : 'VCU/Transmission/LC_jr19/Launch Control jr18/LC initialization/Compare To Constant1'
 * '<S166>' : 'VCU/Transmission/LC_jr19/Shift_Down/Compare To Constant'
 * '<S167>' : 'VCU/Transmission/LC_jr19/Shift_Down/Compare To Constant1'
 * '<S168>' : 'VCU/Transmission/LC_jr19/Shift_Down/Compare To Constant2'
 * '<S169>' : 'VCU/Transmission/LC_jr19/Shift_Down/Compare To Constant3'
 * '<S170>' : 'VCU/Transmission/LC_jr19/Shift_Down/Compare To Constant4'
 * '<S171>' : 'VCU/Transmission/LC_jr19/Shift_Down/Detect Decrease'
 * '<S172>' : 'VCU/Transmission/LC_jr19/Shift_Down/Detect Increase'
 * '<S173>' : 'VCU/Transmission/LC_jr19/Shift_Down/S-R Flip-Flop'
 * '<S174>' : 'VCU/Transmission/LC_jr19/Shift_Down/S-R Flip-Flop1'
 * '<S175>' : 'VCU/Transmission/LC_jr19/Shift_Down/S-R Flip-Flop2'
 * '<S176>' : 'VCU/Transmission/LC_jr19/Shift_Up1/Compare To Constant'
 * '<S177>' : 'VCU/Transmission/LC_jr19/Shift_Up1/Compare To Constant1'
 * '<S178>' : 'VCU/Transmission/LC_jr19/Shift_Up1/Compare To Zero'
 * '<S179>' : 'VCU/Transmission/LC_jr19/Shift_Up1/Detect Increase'
 * '<S180>' : 'VCU/Transmission/LC_jr19/Shift_Up1/Detect Increase1'
 * '<S181>' : 'VCU/Transmission/LC_jr19/Shift_Up1/Detect Increase2'
 * '<S182>' : 'VCU/Transmission/LC_jr19/Shift_Up1/S-R Flip-Flop'
 * '<S183>' : 'VCU/Transmission/LC_jr19/Shift_Up1/S-R Flip-Flop1'
 * '<S184>' : 'VCU/Transmission/driver_jr18/Clutch_jr18'
 * '<S185>' : 'VCU/Transmission/driver_jr18/Compare To Constant'
 * '<S186>' : 'VCU/Transmission/driver_jr18/Compare To Zero'
 * '<S187>' : 'VCU/Transmission/driver_jr18/Clutch_jr18/Compare To Constant'
 * '<S188>' : 'VCU/Transmission/driver_jr18/Clutch_jr18/Compare To Constant1'
 * '<S189>' : 'VCU/Transmission/driver_jr18/Clutch_jr18/Compare To Constant2'
 * '<S190>' : 'VCU/Transmission/driver_jr18/Clutch_jr18/Compare To Constant3'
 * '<S191>' : 'VCU/Transmission/driver_jr18/Clutch_jr18/Compare To Constant4'
 * '<S192>' : 'VCU/Transmission/semi_auto_jr18/Clutch_jr18'
 * '<S193>' : 'VCU/Transmission/semi_auto_jr18/Shift_Down'
 * '<S194>' : 'VCU/Transmission/semi_auto_jr18/Shift_Up'
 * '<S195>' : 'VCU/Transmission/semi_auto_jr18/Clutch_jr18/Compare To Constant'
 * '<S196>' : 'VCU/Transmission/semi_auto_jr18/Clutch_jr18/Compare To Constant1'
 * '<S197>' : 'VCU/Transmission/semi_auto_jr18/Clutch_jr18/Compare To Constant2'
 * '<S198>' : 'VCU/Transmission/semi_auto_jr18/Clutch_jr18/Compare To Constant3'
 * '<S199>' : 'VCU/Transmission/semi_auto_jr18/Clutch_jr18/Compare To Constant4'
 * '<S200>' : 'VCU/Transmission/semi_auto_jr18/Shift_Down/Compare To Constant'
 * '<S201>' : 'VCU/Transmission/semi_auto_jr18/Shift_Down/Compare To Constant1'
 * '<S202>' : 'VCU/Transmission/semi_auto_jr18/Shift_Down/Compare To Constant2'
 * '<S203>' : 'VCU/Transmission/semi_auto_jr18/Shift_Down/Compare To Constant3'
 * '<S204>' : 'VCU/Transmission/semi_auto_jr18/Shift_Down/Compare To Constant4'
 * '<S205>' : 'VCU/Transmission/semi_auto_jr18/Shift_Down/Detect Decrease'
 * '<S206>' : 'VCU/Transmission/semi_auto_jr18/Shift_Down/Detect Increase'
 * '<S207>' : 'VCU/Transmission/semi_auto_jr18/Shift_Down/S-R Flip-Flop'
 * '<S208>' : 'VCU/Transmission/semi_auto_jr18/Shift_Down/S-R Flip-Flop1'
 * '<S209>' : 'VCU/Transmission/semi_auto_jr18/Shift_Down/S-R Flip-Flop2'
 * '<S210>' : 'VCU/Transmission/semi_auto_jr18/Shift_Down/Subsystem'
 * '<S211>' : 'VCU/Transmission/semi_auto_jr18/Shift_Up/Compare To Constant'
 * '<S212>' : 'VCU/Transmission/semi_auto_jr18/Shift_Up/Compare To Constant1'
 * '<S213>' : 'VCU/Transmission/semi_auto_jr18/Shift_Up/Compare To Zero'
 * '<S214>' : 'VCU/Transmission/semi_auto_jr18/Shift_Up/Detect Increase'
 * '<S215>' : 'VCU/Transmission/semi_auto_jr18/Shift_Up/Detect Increase1'
 * '<S216>' : 'VCU/Transmission/semi_auto_jr18/Shift_Up/Detect Increase2'
 * '<S217>' : 'VCU/Transmission/semi_auto_jr18/Shift_Up/S-R Flip-Flop'
 * '<S218>' : 'VCU/Transmission/semi_auto_jr18/Shift_Up/S-R Flip-Flop1'
 * '<S219>' : 'VCU/Transmission/semi_auto_jr18/Shift_Up/Subsystem'
 */
#endif                                 /* RTW_HEADER_VCU_h_ */
