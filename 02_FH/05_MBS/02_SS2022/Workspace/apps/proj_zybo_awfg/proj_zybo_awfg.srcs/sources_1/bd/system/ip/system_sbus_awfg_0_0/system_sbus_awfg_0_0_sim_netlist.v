// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Jun 22 11:52:53 2022
// Host        : M00443 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/_Projekte/Alfreda/Workspace/apps/proj_zybo_awfg/proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_sbus_awfg_0_0/system_sbus_awfg_0_0_sim_netlist.v
// Design      : system_sbus_awfg_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_sbus_awfg_0_0,top_awfg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "top_awfg,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module system_sbus_awfg_0_0
   (buttons,
    clk,
    reset,
    rxd,
    sbus_addr,
    sbus_be,
    sbus_rd,
    sbus_wdata,
    sbus_we,
    sliders,
    dac_sclk,
    dac_sdin0,
    dac_sdin1,
    dac_sync,
    leds,
    pmod_jc,
    sbus_ack,
    sbus_rdata,
    txd);
  input [3:0]buttons;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input rxd;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_addr" *) input [15:0]sbus_addr;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_be" *) input [3:0]sbus_be;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_rd" *) input sbus_rd;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_wdata" *) input [31:0]sbus_wdata;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_we" *) input sbus_we;
  input [3:0]sliders;
  (* x_interface_info = "fh-joanneum.local:user:dac_dual:1.0 dac_dual dac_sclk, fh-joanneum.local:user:seg7:1.0 dac sclk" *) output dac_sclk;
  (* x_interface_info = "fh-joanneum.local:user:dac_dual:1.0 dac_dual dac_sdin0" *) output dac_sdin0;
  (* x_interface_info = "fh-joanneum.local:user:dac_dual:1.0 dac_dual dac_sdin1" *) output dac_sdin1;
  (* x_interface_info = "fh-joanneum.local:user:dac_dual:1.0 dac_dual dac_sync" *) output dac_sync;
  output [3:0]leds;
  output [7:0]pmod_jc;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_ack" *) output sbus_ack;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_rdata" *) output [31:0]sbus_rdata;
  output txd;

  wire [3:0]buttons;
  wire clk;
  wire dac_sclk;
  wire dac_sdin0;
  wire dac_sdin1;
  wire dac_sync;
  wire [3:0]leds;
  wire [7:0]pmod_jc;
  wire reset;
  wire rxd;
  wire sbus_ack;
  wire [15:0]sbus_addr;
  wire sbus_rd;
  wire [31:0]sbus_rdata;
  wire [31:0]sbus_wdata;
  wire sbus_we;
  wire [3:0]sliders;
  wire txd;

  system_sbus_awfg_0_0_top_awfg U0
       (.D({buttons,sliders}),
        .clk(clk),
        .dac_sclk(dac_sclk),
        .dac_sdin0(dac_sdin0),
        .dac_sdin1(dac_sdin1),
        .dac_sync(dac_sync),
        .leds(leds),
        .pmod_jc(pmod_jc),
        .reset(reset),
        .rxd(rxd),
        .sbus_ack(sbus_ack),
        .sbus_addr(sbus_addr),
        .sbus_rd(sbus_rd),
        .sbus_rdata(sbus_rdata),
        .sbus_wdata(sbus_wdata),
        .sbus_we(sbus_we),
        .txd(txd));
endmodule

(* ORIG_REF_NAME = "bus_bridge_16" *) 
module system_sbus_awfg_0_0_bus_bridge_16
   (response_en_rx_reg_0,
    cmd_par,
    rx_csm_current_state,
    \rx_csm_current_state_reg[0]_0 ,
    \rx_csm_current_state_reg[2]_0 ,
    D,
    SR,
    \rx_csm_current_state_reg[4]_0 ,
    \rx_csm_current_state_reg[4]_1 ,
    \rx_csm_current_state_reg[5]_0 ,
    E,
    \bus_addr_int_reg[0]_0 ,
    \bus_addr_int_reg[1]_0 ,
    \bus_addr_int_reg[1]_1 ,
    \bus_dout_int_reg[31]_0 ,
    sbus_ack0,
    bus_we,
    rx_ack_cld_reg,
    \rx_csm_current_state_reg[2]_1 ,
    \rx_csm_current_state_reg[3]_0 ,
    \bus_addr_int_reg[15]_0 ,
    \num_reg[2]_0 ,
    \num_reg[5]_0 ,
    \response_nibble_rx_reg[3]_0 ,
    lock_rx_reg_0,
    \response_nibble_rx_reg[1]_0 ,
    lock_rx_reg_1,
    lock_rx_reg_2,
    reset,
    clk,
    cmd_par_reg_0,
    cmd_we,
    tx_ack,
    \rx_csm_current_state_reg[4]_2 ,
    \bus_dout_int_reg[16]_0 ,
    \sbus_rdata_reg[31] ,
    Q,
    \sbus_rdata_reg[30] ,
    \sbus_rdata_reg[29] ,
    \sbus_rdata_reg[28] ,
    \sbus_rdata_reg[27] ,
    \sbus_rdata_reg[26] ,
    \sbus_rdata_reg[25] ,
    \sbus_rdata_reg[24] ,
    \sbus_rdata_reg[23] ,
    \sbus_rdata_reg[22] ,
    \sbus_rdata_reg[21] ,
    \sbus_rdata_reg[20] ,
    \sbus_rdata_reg[19] ,
    \sbus_rdata_reg[18] ,
    \sbus_rdata_reg[17] ,
    \sbus_rdata_reg[16] ,
    \sbus_rdata_reg[15] ,
    \sbus_rdata_reg[14] ,
    \sbus_rdata_reg[13] ,
    \sbus_rdata_reg[12] ,
    \sbus_rdata_reg[11] ,
    \sbus_rdata_reg[10] ,
    \sbus_rdata_reg[9] ,
    \sbus_rdata_reg[8] ,
    \sbus_rdata_reg[7] ,
    \sbus_rdata_reg[6] ,
    \sbus_rdata_reg[5] ,
    \sbus_rdata_reg[4] ,
    \sbus_rdata_reg[3] ,
    \sbus_rdata_reg[2] ,
    \sbus_rdata_reg[1] ,
    \sbus_rdata_reg[0] ,
    current_state,
    \rx_csm_current_state_reg[2]_2 ,
    \rx_csm_current_state_reg[2]_3 ,
    \rx_csm_current_state_reg[4]_3 ,
    \rx_csm_current_state_reg[4]_4 ,
    \rx_csm_current_state_reg[3]_1 ,
    \rx_csm_current_state_reg[3]_2 ,
    \rx_csm_current_state_reg[2]_4 ,
    \bus_dout_int_reg[20]_0 ,
    bus_ack,
    \reg_reg[95] ,
    bus_addr_int,
    \bus_addr_int_reg[0]_1 ,
    \num_reg[5]_1 ,
    \tx_reg_reg[4] ,
    \rx_csm_current_state_reg[1]_0 ,
    \num_reg[5]_2 ,
    \bus_din_tmp_reg[0]_0 ,
    \bus_din_tmp_reg[31]_0 ,
    \bus_addr_int_reg[14]_0 );
  output response_en_rx_reg_0;
  output cmd_par;
  output [5:0]rx_csm_current_state;
  output \rx_csm_current_state_reg[0]_0 ;
  output \rx_csm_current_state_reg[2]_0 ;
  output [31:0]D;
  output [0:0]SR;
  output \rx_csm_current_state_reg[4]_0 ;
  output \rx_csm_current_state_reg[4]_1 ;
  output \rx_csm_current_state_reg[5]_0 ;
  output [3:0]E;
  output \bus_addr_int_reg[0]_0 ;
  output \bus_addr_int_reg[1]_0 ;
  output \bus_addr_int_reg[1]_1 ;
  output [63:0]\bus_dout_int_reg[31]_0 ;
  output sbus_ack0;
  output bus_we;
  output rx_ack_cld_reg;
  output \rx_csm_current_state_reg[2]_1 ;
  output \rx_csm_current_state_reg[3]_0 ;
  output [6:0]\bus_addr_int_reg[15]_0 ;
  output \num_reg[2]_0 ;
  output [0:0]\num_reg[5]_0 ;
  output [0:0]\response_nibble_rx_reg[3]_0 ;
  output lock_rx_reg_0;
  output \response_nibble_rx_reg[1]_0 ;
  output lock_rx_reg_1;
  output lock_rx_reg_2;
  input reset;
  input clk;
  input cmd_par_reg_0;
  input cmd_we;
  input tx_ack;
  input \rx_csm_current_state_reg[4]_2 ;
  input \bus_dout_int_reg[16]_0 ;
  input \sbus_rdata_reg[31] ;
  input [31:0]Q;
  input \sbus_rdata_reg[30] ;
  input \sbus_rdata_reg[29] ;
  input \sbus_rdata_reg[28] ;
  input \sbus_rdata_reg[27] ;
  input \sbus_rdata_reg[26] ;
  input \sbus_rdata_reg[25] ;
  input \sbus_rdata_reg[24] ;
  input \sbus_rdata_reg[23] ;
  input \sbus_rdata_reg[22] ;
  input \sbus_rdata_reg[21] ;
  input \sbus_rdata_reg[20] ;
  input \sbus_rdata_reg[19] ;
  input \sbus_rdata_reg[18] ;
  input \sbus_rdata_reg[17] ;
  input \sbus_rdata_reg[16] ;
  input \sbus_rdata_reg[15] ;
  input \sbus_rdata_reg[14] ;
  input \sbus_rdata_reg[13] ;
  input \sbus_rdata_reg[12] ;
  input \sbus_rdata_reg[11] ;
  input \sbus_rdata_reg[10] ;
  input \sbus_rdata_reg[9] ;
  input \sbus_rdata_reg[8] ;
  input \sbus_rdata_reg[7] ;
  input \sbus_rdata_reg[6] ;
  input \sbus_rdata_reg[5] ;
  input \sbus_rdata_reg[4] ;
  input \sbus_rdata_reg[3] ;
  input \sbus_rdata_reg[2] ;
  input \sbus_rdata_reg[1] ;
  input \sbus_rdata_reg[0] ;
  input current_state;
  input \rx_csm_current_state_reg[2]_2 ;
  input \rx_csm_current_state_reg[2]_3 ;
  input \rx_csm_current_state_reg[4]_3 ;
  input \rx_csm_current_state_reg[4]_4 ;
  input \rx_csm_current_state_reg[3]_1 ;
  input \rx_csm_current_state_reg[3]_2 ;
  input \rx_csm_current_state_reg[2]_4 ;
  input \bus_dout_int_reg[20]_0 ;
  input bus_ack;
  input \reg_reg[95] ;
  input [3:0]bus_addr_int;
  input [2:0]\bus_addr_int_reg[0]_1 ;
  input \num_reg[5]_1 ;
  input [0:0]\tx_reg_reg[4] ;
  input [1:0]\rx_csm_current_state_reg[1]_0 ;
  input [0:0]\num_reg[5]_2 ;
  input [0:0]\bus_din_tmp_reg[0]_0 ;
  input [31:0]\bus_din_tmp_reg[31]_0 ;
  input [6:0]\bus_addr_int_reg[14]_0 ;

  wire [31:0]D;
  wire [3:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire bus_ack;
  wire [3:0]bus_addr_int;
  wire [15:2]bus_addr_int0;
  wire \bus_addr_int[0]_i_1_n_0 ;
  wire \bus_addr_int[11]_i_1_n_0 ;
  wire \bus_addr_int[11]_i_2_n_0 ;
  wire \bus_addr_int[12]_i_1_n_0 ;
  wire \bus_addr_int[15]_i_1_n_0 ;
  wire \bus_addr_int[15]_i_2_n_0 ;
  wire \bus_addr_int[15]_i_3_n_0 ;
  wire \bus_addr_int[15]_i_4_n_0 ;
  wire \bus_addr_int[15]_i_5_n_0 ;
  wire \bus_addr_int[2]_i_1_n_0 ;
  wire \bus_addr_int[3]_i_1_n_0 ;
  wire \bus_addr_int[3]_i_2_n_0 ;
  wire \bus_addr_int[3]_i_3_n_0 ;
  wire \bus_addr_int[4]_i_1_n_0 ;
  wire \bus_addr_int[7]_i_1_n_0 ;
  wire \bus_addr_int[7]_i_2_n_0 ;
  wire \bus_addr_int[7]_i_3_n_0 ;
  wire \bus_addr_int[7]_i_4_n_0 ;
  wire \bus_addr_int[7]_i_5_n_0 ;
  wire \bus_addr_int[8]_i_1_n_0 ;
  wire \bus_addr_int_reg[0]_0 ;
  wire [2:0]\bus_addr_int_reg[0]_1 ;
  wire \bus_addr_int_reg[12]_i_2_n_0 ;
  wire \bus_addr_int_reg[12]_i_2_n_1 ;
  wire \bus_addr_int_reg[12]_i_2_n_2 ;
  wire \bus_addr_int_reg[12]_i_2_n_3 ;
  wire [6:0]\bus_addr_int_reg[14]_0 ;
  wire [6:0]\bus_addr_int_reg[15]_0 ;
  wire \bus_addr_int_reg[15]_i_6_n_2 ;
  wire \bus_addr_int_reg[15]_i_6_n_3 ;
  wire \bus_addr_int_reg[1]_0 ;
  wire \bus_addr_int_reg[1]_1 ;
  wire \bus_addr_int_reg[4]_i_2_n_0 ;
  wire \bus_addr_int_reg[4]_i_2_n_1 ;
  wire \bus_addr_int_reg[4]_i_2_n_2 ;
  wire \bus_addr_int_reg[4]_i_2_n_3 ;
  wire \bus_addr_int_reg[8]_i_2_n_0 ;
  wire \bus_addr_int_reg[8]_i_2_n_1 ;
  wire \bus_addr_int_reg[8]_i_2_n_2 ;
  wire \bus_addr_int_reg[8]_i_2_n_3 ;
  wire \bus_addr_int_reg_n_0_[0] ;
  wire \bus_addr_int_reg_n_0_[10] ;
  wire \bus_addr_int_reg_n_0_[11] ;
  wire \bus_addr_int_reg_n_0_[12] ;
  wire \bus_addr_int_reg_n_0_[13] ;
  wire \bus_addr_int_reg_n_0_[14] ;
  wire \bus_addr_int_reg_n_0_[15] ;
  wire \bus_addr_int_reg_n_0_[1] ;
  wire \bus_addr_int_reg_n_0_[2] ;
  wire \bus_addr_int_reg_n_0_[3] ;
  wire \bus_addr_int_reg_n_0_[4] ;
  wire \bus_addr_int_reg_n_0_[5] ;
  wire \bus_addr_int_reg_n_0_[6] ;
  wire \bus_addr_int_reg_n_0_[7] ;
  wire \bus_addr_int_reg_n_0_[8] ;
  wire \bus_addr_int_reg_n_0_[9] ;
  wire [0:0]\bus_din_tmp_reg[0]_0 ;
  wire [31:0]\bus_din_tmp_reg[31]_0 ;
  wire \bus_din_tmp_reg_n_0_[0] ;
  wire \bus_din_tmp_reg_n_0_[1] ;
  wire \bus_din_tmp_reg_n_0_[2] ;
  wire \bus_din_tmp_reg_n_0_[3] ;
  wire [31:3]bus_dout_int;
  wire \bus_dout_int[27]_i_2_n_0 ;
  wire \bus_dout_int_reg[16]_0 ;
  wire \bus_dout_int_reg[20]_0 ;
  wire [63:0]\bus_dout_int_reg[31]_0 ;
  wire bus_we;
  wire clk;
  wire cmd_par;
  wire cmd_par_reg_0;
  wire cmd_we;
  wire current_state;
  wire [3:0]data0;
  wire [3:0]data1;
  wire [3:0]data2;
  wire [3:0]data3;
  wire [3:0]data4;
  wire [3:0]data5;
  wire [3:0]data6;
  wire lock_rx;
  wire lock_rx_i_1_n_0;
  wire lock_rx_i_2_n_0;
  wire lock_rx_i_3_n_0;
  wire lock_rx_i_4_n_0;
  wire lock_rx_i_5_n_0;
  wire lock_rx_reg_0;
  wire lock_rx_reg_1;
  wire lock_rx_reg_2;
  wire [7:0]num;
  wire \num[0]_i_1_n_0 ;
  wire \num[1]_i_1_n_0 ;
  wire \num[2]_i_1_n_0 ;
  wire \num[3]_i_1_n_0 ;
  wire \num[3]_i_2_n_0 ;
  wire \num[3]_i_3_n_0 ;
  wire \num[4]_i_1_n_0 ;
  wire \num[4]_i_2_n_0 ;
  wire \num[6]_i_1_n_0 ;
  wire \num[7]_i_1_n_0 ;
  wire \num[7]_i_2_n_0 ;
  wire \num[7]_i_5_n_0 ;
  wire \num[7]_i_6_n_0 ;
  wire \num_reg[2]_0 ;
  wire [0:0]\num_reg[5]_0 ;
  wire \num_reg[5]_1 ;
  wire [0:0]\num_reg[5]_2 ;
  wire \reg[127]_i_2__0_n_0 ;
  wire \reg[31]_i_4_n_0 ;
  wire \reg_reg[95] ;
  wire reset;
  wire response_en_rx;
  wire response_en_rx_reg_0;
  wire [3:0]response_nibble_rx;
  wire \response_nibble_rx[0]_i_2_n_0 ;
  wire \response_nibble_rx[0]_i_3_n_0 ;
  wire \response_nibble_rx[0]_i_4_n_0 ;
  wire \response_nibble_rx[1]_i_2_n_0 ;
  wire \response_nibble_rx[1]_i_3_n_0 ;
  wire \response_nibble_rx[1]_i_4_n_0 ;
  wire \response_nibble_rx[2]_i_2_n_0 ;
  wire \response_nibble_rx[2]_i_3_n_0 ;
  wire \response_nibble_rx[2]_i_4_n_0 ;
  wire \response_nibble_rx[3]_i_1_n_0 ;
  wire \response_nibble_rx[3]_i_3_n_0 ;
  wire \response_nibble_rx[3]_i_4_n_0 ;
  wire \response_nibble_rx[3]_i_5_n_0 ;
  wire \response_nibble_rx[3]_i_6_n_0 ;
  wire \response_nibble_rx[3]_i_7_n_0 ;
  wire \response_nibble_rx[3]_i_8_n_0 ;
  wire [3:0]response_nibble_rx_0;
  wire \response_nibble_rx_reg[1]_0 ;
  wire [0:0]\response_nibble_rx_reg[3]_0 ;
  wire rx_ack_cld_reg;
  wire [5:0]rx_csm_current_state;
  wire \rx_csm_current_state[0]_i_10_n_0 ;
  wire \rx_csm_current_state[0]_i_11_n_0 ;
  wire \rx_csm_current_state[0]_i_5_n_0 ;
  wire \rx_csm_current_state[0]_i_6_n_0 ;
  wire \rx_csm_current_state[0]_i_7_n_0 ;
  wire \rx_csm_current_state[0]_i_8_n_0 ;
  wire \rx_csm_current_state[0]_i_9_n_0 ;
  wire \rx_csm_current_state[1]_i_10_n_0 ;
  wire \rx_csm_current_state[1]_i_11_n_0 ;
  wire \rx_csm_current_state[1]_i_12_n_0 ;
  wire \rx_csm_current_state[1]_i_6_n_0 ;
  wire \rx_csm_current_state[1]_i_7_n_0 ;
  wire \rx_csm_current_state[1]_i_8_n_0 ;
  wire \rx_csm_current_state[1]_i_9_n_0 ;
  wire \rx_csm_current_state[2]_i_10_n_0 ;
  wire \rx_csm_current_state[2]_i_11_n_0 ;
  wire \rx_csm_current_state[2]_i_12_n_0 ;
  wire \rx_csm_current_state[2]_i_13_n_0 ;
  wire \rx_csm_current_state[2]_i_14_n_0 ;
  wire \rx_csm_current_state[2]_i_15_n_0 ;
  wire \rx_csm_current_state[2]_i_16_n_0 ;
  wire \rx_csm_current_state[2]_i_1_n_0 ;
  wire \rx_csm_current_state[2]_i_4_n_0 ;
  wire \rx_csm_current_state[2]_i_5_n_0 ;
  wire \rx_csm_current_state[2]_i_6_n_0 ;
  wire \rx_csm_current_state[2]_i_7_n_0 ;
  wire \rx_csm_current_state[3]_i_1_n_0 ;
  wire \rx_csm_current_state[3]_i_4_n_0 ;
  wire \rx_csm_current_state[3]_i_5_n_0 ;
  wire \rx_csm_current_state[3]_i_6_n_0 ;
  wire \rx_csm_current_state[3]_i_8_n_0 ;
  wire \rx_csm_current_state[3]_i_9_n_0 ;
  wire \rx_csm_current_state[4]_i_11_n_0 ;
  wire \rx_csm_current_state[4]_i_1_n_0 ;
  wire \rx_csm_current_state[4]_i_4_n_0 ;
  wire \rx_csm_current_state[4]_i_5_n_0 ;
  wire \rx_csm_current_state[4]_i_6_n_0 ;
  wire \rx_csm_current_state[4]_i_7_n_0 ;
  wire \rx_csm_current_state[5]_i_1_n_0 ;
  wire \rx_csm_current_state[5]_i_2_n_0 ;
  wire \rx_csm_current_state[5]_i_3_n_0 ;
  wire \rx_csm_current_state[5]_i_4_n_0 ;
  wire \rx_csm_current_state[5]_i_5_n_0 ;
  wire \rx_csm_current_state[5]_i_6_n_0 ;
  wire \rx_csm_current_state_reg[0]_0 ;
  wire [1:0]\rx_csm_current_state_reg[1]_0 ;
  wire \rx_csm_current_state_reg[2]_0 ;
  wire \rx_csm_current_state_reg[2]_1 ;
  wire \rx_csm_current_state_reg[2]_2 ;
  wire \rx_csm_current_state_reg[2]_3 ;
  wire \rx_csm_current_state_reg[2]_4 ;
  wire \rx_csm_current_state_reg[3]_0 ;
  wire \rx_csm_current_state_reg[3]_1 ;
  wire \rx_csm_current_state_reg[3]_2 ;
  wire \rx_csm_current_state_reg[4]_0 ;
  wire \rx_csm_current_state_reg[4]_1 ;
  wire \rx_csm_current_state_reg[4]_2 ;
  wire \rx_csm_current_state_reg[4]_3 ;
  wire \rx_csm_current_state_reg[4]_4 ;
  wire \rx_csm_current_state_reg[5]_0 ;
  wire sbus_ack0;
  wire \sbus_rdata[31]_i_2__0_n_0 ;
  wire \sbus_rdata[31]_i_3__0_n_0 ;
  wire \sbus_rdata[31]_i_5__0_n_0 ;
  wire \sbus_rdata[31]_i_6__0_n_0 ;
  wire \sbus_rdata_reg[0] ;
  wire \sbus_rdata_reg[10] ;
  wire \sbus_rdata_reg[11] ;
  wire \sbus_rdata_reg[12] ;
  wire \sbus_rdata_reg[13] ;
  wire \sbus_rdata_reg[14] ;
  wire \sbus_rdata_reg[15] ;
  wire \sbus_rdata_reg[16] ;
  wire \sbus_rdata_reg[17] ;
  wire \sbus_rdata_reg[18] ;
  wire \sbus_rdata_reg[19] ;
  wire \sbus_rdata_reg[1] ;
  wire \sbus_rdata_reg[20] ;
  wire \sbus_rdata_reg[21] ;
  wire \sbus_rdata_reg[22] ;
  wire \sbus_rdata_reg[23] ;
  wire \sbus_rdata_reg[24] ;
  wire \sbus_rdata_reg[25] ;
  wire \sbus_rdata_reg[26] ;
  wire \sbus_rdata_reg[27] ;
  wire \sbus_rdata_reg[28] ;
  wire \sbus_rdata_reg[29] ;
  wire \sbus_rdata_reg[2] ;
  wire \sbus_rdata_reg[30] ;
  wire \sbus_rdata_reg[31] ;
  wire \sbus_rdata_reg[3] ;
  wire \sbus_rdata_reg[4] ;
  wire \sbus_rdata_reg[5] ;
  wire \sbus_rdata_reg[6] ;
  wire \sbus_rdata_reg[7] ;
  wire \sbus_rdata_reg[8] ;
  wire \sbus_rdata_reg[9] ;
  wire tx_ack;
  wire [0:0]\tx_reg_reg[4] ;
  wire [3:2]\NLW_bus_addr_int_reg[15]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_bus_addr_int_reg[15]_i_6_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h02)) 
    \bit_cnt[3]_i_1 
       (.I0(response_en_rx_reg_0),
        .I1(current_state),
        .I2(reset),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h0666F666)) 
    \bus_addr_int[0]_i_1 
       (.I0(\bus_addr_int_reg[0]_1 [2]),
        .I1(\bus_addr_int_reg[0]_1 [0]),
        .I2(rx_csm_current_state[3]),
        .I3(rx_csm_current_state[2]),
        .I4(\bus_addr_int_reg_n_0_[0] ),
        .O(\bus_addr_int[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44010001)) 
    \bus_addr_int[11]_i_1 
       (.I0(reset),
        .I1(\bus_addr_int[15]_i_3_n_0 ),
        .I2(\bus_addr_int[15]_i_4_n_0 ),
        .I3(\bus_addr_int[15]_i_5_n_0 ),
        .I4(cmd_we),
        .O(\bus_addr_int[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus_addr_int[11]_i_2 
       (.I0(bus_addr_int0[11]),
        .I1(rx_csm_current_state[3]),
        .I2(bus_addr_int[3]),
        .O(\bus_addr_int[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \bus_addr_int[12]_i_1 
       (.I0(bus_addr_int0[12]),
        .I1(rx_csm_current_state[3]),
        .I2(\bus_addr_int_reg[0]_1 [2]),
        .I3(\bus_addr_int_reg[0]_1 [0]),
        .O(\bus_addr_int[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00004045)) 
    \bus_addr_int[15]_i_1 
       (.I0(reset),
        .I1(cmd_we),
        .I2(\bus_addr_int[15]_i_3_n_0 ),
        .I3(\bus_addr_int[15]_i_4_n_0 ),
        .I4(\bus_addr_int[15]_i_5_n_0 ),
        .O(\bus_addr_int[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus_addr_int[15]_i_2 
       (.I0(bus_addr_int0[15]),
        .I1(rx_csm_current_state[3]),
        .I2(bus_addr_int[3]),
        .O(\bus_addr_int[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000100200000B29)) 
    \bus_addr_int[15]_i_3 
       (.I0(rx_csm_current_state[2]),
        .I1(rx_csm_current_state[5]),
        .I2(rx_csm_current_state[4]),
        .I3(rx_csm_current_state[0]),
        .I4(rx_csm_current_state[3]),
        .I5(rx_csm_current_state[1]),
        .O(\bus_addr_int[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hAAEFFFEF)) 
    \bus_addr_int[15]_i_4 
       (.I0(\bus_addr_int[7]_i_3_n_0 ),
        .I1(cmd_par),
        .I2(tx_ack),
        .I3(\bus_addr_int[7]_i_5_n_0 ),
        .I4(bus_ack),
        .O(\bus_addr_int[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0012112200000012)) 
    \bus_addr_int[15]_i_5 
       (.I0(rx_csm_current_state[1]),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[0]),
        .I3(rx_csm_current_state[4]),
        .I4(rx_csm_current_state[5]),
        .I5(rx_csm_current_state[2]),
        .O(\bus_addr_int[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \bus_addr_int[2]_i_1 
       (.I0(bus_addr_int[2]),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[2]),
        .I3(bus_addr_int0[2]),
        .O(\bus_addr_int[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E222)) 
    \bus_addr_int[3]_i_1 
       (.I0(\bus_addr_int[3]_i_3_n_0 ),
        .I1(\bus_addr_int[7]_i_3_n_0 ),
        .I2(cmd_we),
        .I3(\bus_addr_int[7]_i_5_n_0 ),
        .I4(\bus_addr_int[7]_i_4_n_0 ),
        .I5(reset),
        .O(\bus_addr_int[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \bus_addr_int[3]_i_2 
       (.I0(bus_addr_int[3]),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[2]),
        .I3(bus_addr_int0[3]),
        .O(\bus_addr_int[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h88B8)) 
    \bus_addr_int[3]_i_3 
       (.I0(bus_ack),
        .I1(\bus_addr_int[7]_i_5_n_0 ),
        .I2(tx_ack),
        .I3(cmd_par),
        .O(\bus_addr_int[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \bus_addr_int[4]_i_1 
       (.I0(bus_addr_int0[4]),
        .I1(rx_csm_current_state[3]),
        .I2(\bus_addr_int_reg[0]_1 [2]),
        .I3(\bus_addr_int_reg[0]_1 [0]),
        .O(\bus_addr_int[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000015050505)) 
    \bus_addr_int[7]_i_1 
       (.I0(reset),
        .I1(\bus_addr_int[7]_i_3_n_0 ),
        .I2(\bus_addr_int[7]_i_4_n_0 ),
        .I3(cmd_we),
        .I4(\bus_addr_int[7]_i_5_n_0 ),
        .I5(\bus_addr_int[15]_i_4_n_0 ),
        .O(\bus_addr_int[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \bus_addr_int[7]_i_2 
       (.I0(bus_addr_int0[7]),
        .I1(rx_csm_current_state[3]),
        .I2(bus_addr_int[3]),
        .O(\bus_addr_int[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFDF4F7FFD6DF)) 
    \bus_addr_int[7]_i_3 
       (.I0(rx_csm_current_state[2]),
        .I1(rx_csm_current_state[5]),
        .I2(rx_csm_current_state[4]),
        .I3(rx_csm_current_state[0]),
        .I4(rx_csm_current_state[3]),
        .I5(rx_csm_current_state[1]),
        .O(\bus_addr_int[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0013033202010003)) 
    \bus_addr_int[7]_i_4 
       (.I0(rx_csm_current_state[0]),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[5]),
        .I3(rx_csm_current_state[4]),
        .I4(rx_csm_current_state[1]),
        .I5(rx_csm_current_state[2]),
        .O(\bus_addr_int[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h04021B2000022C03)) 
    \bus_addr_int[7]_i_5 
       (.I0(rx_csm_current_state[1]),
        .I1(rx_csm_current_state[5]),
        .I2(rx_csm_current_state[4]),
        .I3(rx_csm_current_state[2]),
        .I4(rx_csm_current_state[3]),
        .I5(rx_csm_current_state[0]),
        .O(\bus_addr_int[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \bus_addr_int[8]_i_1 
       (.I0(bus_addr_int0[8]),
        .I1(rx_csm_current_state[3]),
        .I2(\bus_addr_int_reg[0]_1 [2]),
        .I3(\bus_addr_int_reg[0]_1 [0]),
        .O(\bus_addr_int[8]_i_1_n_0 ));
  FDRE \bus_addr_int_reg[0] 
       (.C(clk),
        .CE(\bus_addr_int[3]_i_1_n_0 ),
        .D(\bus_addr_int[0]_i_1_n_0 ),
        .Q(\bus_addr_int_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bus_addr_int_reg[10] 
       (.C(clk),
        .CE(\bus_addr_int[11]_i_1_n_0 ),
        .D(\bus_addr_int_reg[14]_0 [4]),
        .Q(\bus_addr_int_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \bus_addr_int_reg[11] 
       (.C(clk),
        .CE(\bus_addr_int[11]_i_1_n_0 ),
        .D(\bus_addr_int[11]_i_2_n_0 ),
        .Q(\bus_addr_int_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \bus_addr_int_reg[12] 
       (.C(clk),
        .CE(\bus_addr_int[15]_i_1_n_0 ),
        .D(\bus_addr_int[12]_i_1_n_0 ),
        .Q(\bus_addr_int_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \bus_addr_int_reg[12]_i_2 
       (.CI(\bus_addr_int_reg[8]_i_2_n_0 ),
        .CO({\bus_addr_int_reg[12]_i_2_n_0 ,\bus_addr_int_reg[12]_i_2_n_1 ,\bus_addr_int_reg[12]_i_2_n_2 ,\bus_addr_int_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({bus_addr_int0[12:11],\bus_addr_int_reg[15]_0 [4:3]}),
        .S({\bus_addr_int_reg_n_0_[12] ,\bus_addr_int_reg_n_0_[11] ,\bus_addr_int_reg_n_0_[10] ,\bus_addr_int_reg_n_0_[9] }));
  FDRE \bus_addr_int_reg[13] 
       (.C(clk),
        .CE(\bus_addr_int[15]_i_1_n_0 ),
        .D(\bus_addr_int_reg[14]_0 [5]),
        .Q(\bus_addr_int_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \bus_addr_int_reg[14] 
       (.C(clk),
        .CE(\bus_addr_int[15]_i_1_n_0 ),
        .D(\bus_addr_int_reg[14]_0 [6]),
        .Q(\bus_addr_int_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \bus_addr_int_reg[15] 
       (.C(clk),
        .CE(\bus_addr_int[15]_i_1_n_0 ),
        .D(\bus_addr_int[15]_i_2_n_0 ),
        .Q(\bus_addr_int_reg_n_0_[15] ),
        .R(1'b0));
  CARRY4 \bus_addr_int_reg[15]_i_6 
       (.CI(\bus_addr_int_reg[12]_i_2_n_0 ),
        .CO({\NLW_bus_addr_int_reg[15]_i_6_CO_UNCONNECTED [3:2],\bus_addr_int_reg[15]_i_6_n_2 ,\bus_addr_int_reg[15]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bus_addr_int_reg[15]_i_6_O_UNCONNECTED [3],bus_addr_int0[15],\bus_addr_int_reg[15]_0 [6:5]}),
        .S({1'b0,\bus_addr_int_reg_n_0_[15] ,\bus_addr_int_reg_n_0_[14] ,\bus_addr_int_reg_n_0_[13] }));
  FDRE \bus_addr_int_reg[1] 
       (.C(clk),
        .CE(\bus_addr_int[3]_i_1_n_0 ),
        .D(\bus_addr_int_reg[14]_0 [0]),
        .Q(\bus_addr_int_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \bus_addr_int_reg[2] 
       (.C(clk),
        .CE(\bus_addr_int[3]_i_1_n_0 ),
        .D(\bus_addr_int[2]_i_1_n_0 ),
        .Q(\bus_addr_int_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \bus_addr_int_reg[3] 
       (.C(clk),
        .CE(\bus_addr_int[3]_i_1_n_0 ),
        .D(\bus_addr_int[3]_i_2_n_0 ),
        .Q(\bus_addr_int_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \bus_addr_int_reg[4] 
       (.C(clk),
        .CE(\bus_addr_int[7]_i_1_n_0 ),
        .D(\bus_addr_int[4]_i_1_n_0 ),
        .Q(\bus_addr_int_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \bus_addr_int_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\bus_addr_int_reg[4]_i_2_n_0 ,\bus_addr_int_reg[4]_i_2_n_1 ,\bus_addr_int_reg[4]_i_2_n_2 ,\bus_addr_int_reg[4]_i_2_n_3 }),
        .CYINIT(\bus_addr_int_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({bus_addr_int0[4:2],\bus_addr_int_reg[15]_0 [0]}),
        .S({\bus_addr_int_reg_n_0_[4] ,\bus_addr_int_reg_n_0_[3] ,\bus_addr_int_reg_n_0_[2] ,\bus_addr_int_reg_n_0_[1] }));
  FDRE \bus_addr_int_reg[5] 
       (.C(clk),
        .CE(\bus_addr_int[7]_i_1_n_0 ),
        .D(\bus_addr_int_reg[14]_0 [1]),
        .Q(\bus_addr_int_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \bus_addr_int_reg[6] 
       (.C(clk),
        .CE(\bus_addr_int[7]_i_1_n_0 ),
        .D(\bus_addr_int_reg[14]_0 [2]),
        .Q(\bus_addr_int_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \bus_addr_int_reg[7] 
       (.C(clk),
        .CE(\bus_addr_int[7]_i_1_n_0 ),
        .D(\bus_addr_int[7]_i_2_n_0 ),
        .Q(\bus_addr_int_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \bus_addr_int_reg[8] 
       (.C(clk),
        .CE(\bus_addr_int[11]_i_1_n_0 ),
        .D(\bus_addr_int[8]_i_1_n_0 ),
        .Q(\bus_addr_int_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \bus_addr_int_reg[8]_i_2 
       (.CI(\bus_addr_int_reg[4]_i_2_n_0 ),
        .CO({\bus_addr_int_reg[8]_i_2_n_0 ,\bus_addr_int_reg[8]_i_2_n_1 ,\bus_addr_int_reg[8]_i_2_n_2 ,\bus_addr_int_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({bus_addr_int0[8:7],\bus_addr_int_reg[15]_0 [2:1]}),
        .S({\bus_addr_int_reg_n_0_[8] ,\bus_addr_int_reg_n_0_[7] ,\bus_addr_int_reg_n_0_[6] ,\bus_addr_int_reg_n_0_[5] }));
  FDRE \bus_addr_int_reg[9] 
       (.C(clk),
        .CE(\bus_addr_int[11]_i_1_n_0 ),
        .D(\bus_addr_int_reg[14]_0 [3]),
        .Q(\bus_addr_int_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFDFBFFF)) 
    \bus_din_tmp[31]_i_2 
       (.I0(rx_csm_current_state[2]),
        .I1(rx_csm_current_state[1]),
        .I2(rx_csm_current_state[0]),
        .I3(rx_csm_current_state[5]),
        .I4(rx_csm_current_state[3]),
        .I5(rx_csm_current_state[4]),
        .O(\rx_csm_current_state_reg[2]_1 ));
  FDRE \bus_din_tmp_reg[0] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [0]),
        .Q(\bus_din_tmp_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[10] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [10]),
        .Q(data5[2]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[11] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [11]),
        .Q(data5[3]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[12] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [12]),
        .Q(data3[0]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[13] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [13]),
        .Q(data3[1]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[14] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [14]),
        .Q(data3[2]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[15] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [15]),
        .Q(data3[3]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[16] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [16]),
        .Q(data2[0]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[17] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [17]),
        .Q(data2[1]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[18] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [18]),
        .Q(data2[2]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[19] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [19]),
        .Q(data2[3]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[1] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [1]),
        .Q(\bus_din_tmp_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[20] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [20]),
        .Q(data1[0]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[21] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [21]),
        .Q(data1[1]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[22] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [22]),
        .Q(data1[2]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[23] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [23]),
        .Q(data1[3]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[24] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [24]),
        .Q(data0[0]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[25] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [25]),
        .Q(data0[1]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[26] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [26]),
        .Q(data0[2]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[27] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [27]),
        .Q(data0[3]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[28] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [28]),
        .Q(data4[0]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[29] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [29]),
        .Q(data4[1]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[2] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [2]),
        .Q(\bus_din_tmp_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[30] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [30]),
        .Q(data4[2]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[31] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [31]),
        .Q(data4[3]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[3] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [3]),
        .Q(\bus_din_tmp_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[4] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [4]),
        .Q(data6[0]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[5] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [5]),
        .Q(data6[1]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[6] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [6]),
        .Q(data6[2]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[7] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [7]),
        .Q(data6[3]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[8] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [8]),
        .Q(data5[0]),
        .R(1'b0));
  FDRE \bus_din_tmp_reg[9] 
       (.C(clk),
        .CE(\bus_din_tmp_reg[0]_0 ),
        .D(\bus_din_tmp_reg[31]_0 [9]),
        .Q(data5[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000004200)) 
    \bus_dout_int[11]_i_1 
       (.I0(rx_csm_current_state[1]),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[5]),
        .I3(\bus_dout_int_reg[16]_0 ),
        .I4(rx_csm_current_state[2]),
        .I5(rx_csm_current_state[4]),
        .O(bus_dout_int[11]));
  LUT6 #(
    .INIT(64'h0000000024000000)) 
    \bus_dout_int[15]_i_1 
       (.I0(rx_csm_current_state[4]),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[1]),
        .I3(\bus_dout_int_reg[20]_0 ),
        .I4(rx_csm_current_state[5]),
        .I5(rx_csm_current_state[2]),
        .O(bus_dout_int[15]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bus_dout_int[19]_i_1 
       (.I0(\bus_dout_int_reg[16]_0 ),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[4]),
        .I3(rx_csm_current_state[5]),
        .I4(rx_csm_current_state[2]),
        .I5(rx_csm_current_state[1]),
        .O(bus_dout_int[19]));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \bus_dout_int[23]_i_1 
       (.I0(\bus_dout_int_reg[20]_0 ),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[4]),
        .I3(rx_csm_current_state[5]),
        .I4(rx_csm_current_state[2]),
        .I5(rx_csm_current_state[1]),
        .O(bus_dout_int[23]));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    \bus_dout_int[27]_i_1 
       (.I0(cmd_we),
        .I1(rx_csm_current_state[0]),
        .I2(rx_csm_current_state[1]),
        .I3(rx_csm_current_state[4]),
        .I4(rx_csm_current_state[5]),
        .I5(\bus_dout_int[27]_i_2_n_0 ),
        .O(bus_dout_int[27]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bus_dout_int[27]_i_2 
       (.I0(rx_csm_current_state[3]),
        .I1(rx_csm_current_state[2]),
        .O(\bus_dout_int[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \bus_dout_int[31]_i_1 
       (.I0(rx_csm_current_state[4]),
        .I1(\bus_dout_int_reg[20]_0 ),
        .I2(rx_csm_current_state[2]),
        .I3(rx_csm_current_state[5]),
        .I4(rx_csm_current_state[1]),
        .I5(rx_csm_current_state[3]),
        .O(bus_dout_int[31]));
  LUT6 #(
    .INIT(64'h0000000060000000)) 
    \bus_dout_int[3]_i_1 
       (.I0(rx_csm_current_state[5]),
        .I1(rx_csm_current_state[2]),
        .I2(rx_csm_current_state[1]),
        .I3(\bus_dout_int_reg[16]_0 ),
        .I4(rx_csm_current_state[3]),
        .I5(rx_csm_current_state[4]),
        .O(bus_dout_int[3]));
  LUT6 #(
    .INIT(64'h0020000000000040)) 
    \bus_dout_int[7]_i_1 
       (.I0(rx_csm_current_state[1]),
        .I1(rx_csm_current_state[2]),
        .I2(\bus_dout_int_reg[20]_0 ),
        .I3(rx_csm_current_state[4]),
        .I4(rx_csm_current_state[3]),
        .I5(rx_csm_current_state[5]),
        .O(bus_dout_int[7]));
  FDRE \bus_dout_int_reg[0] 
       (.C(clk),
        .CE(bus_dout_int[3]),
        .D(bus_addr_int[0]),
        .Q(\bus_dout_int_reg[31]_0 [32]),
        .R(reset));
  FDRE \bus_dout_int_reg[10] 
       (.C(clk),
        .CE(bus_dout_int[11]),
        .D(bus_addr_int[2]),
        .Q(\bus_dout_int_reg[31]_0 [42]),
        .R(reset));
  FDRE \bus_dout_int_reg[11] 
       (.C(clk),
        .CE(bus_dout_int[11]),
        .D(bus_addr_int[3]),
        .Q(\bus_dout_int_reg[31]_0 [43]),
        .R(reset));
  FDRE \bus_dout_int_reg[12] 
       (.C(clk),
        .CE(bus_dout_int[15]),
        .D(bus_addr_int[0]),
        .Q(\bus_dout_int_reg[31]_0 [44]),
        .R(reset));
  FDRE \bus_dout_int_reg[13] 
       (.C(clk),
        .CE(bus_dout_int[15]),
        .D(bus_addr_int[1]),
        .Q(\bus_dout_int_reg[31]_0 [45]),
        .R(reset));
  FDRE \bus_dout_int_reg[14] 
       (.C(clk),
        .CE(bus_dout_int[15]),
        .D(bus_addr_int[2]),
        .Q(\bus_dout_int_reg[31]_0 [46]),
        .R(reset));
  FDRE \bus_dout_int_reg[15] 
       (.C(clk),
        .CE(bus_dout_int[15]),
        .D(bus_addr_int[3]),
        .Q(\bus_dout_int_reg[31]_0 [47]),
        .R(reset));
  FDRE \bus_dout_int_reg[16] 
       (.C(clk),
        .CE(bus_dout_int[19]),
        .D(bus_addr_int[0]),
        .Q(\bus_dout_int_reg[31]_0 [48]),
        .R(reset));
  FDRE \bus_dout_int_reg[17] 
       (.C(clk),
        .CE(bus_dout_int[19]),
        .D(bus_addr_int[1]),
        .Q(\bus_dout_int_reg[31]_0 [49]),
        .R(reset));
  FDRE \bus_dout_int_reg[18] 
       (.C(clk),
        .CE(bus_dout_int[19]),
        .D(bus_addr_int[2]),
        .Q(\bus_dout_int_reg[31]_0 [50]),
        .R(reset));
  FDRE \bus_dout_int_reg[19] 
       (.C(clk),
        .CE(bus_dout_int[19]),
        .D(bus_addr_int[3]),
        .Q(\bus_dout_int_reg[31]_0 [51]),
        .R(reset));
  FDRE \bus_dout_int_reg[1] 
       (.C(clk),
        .CE(bus_dout_int[3]),
        .D(bus_addr_int[1]),
        .Q(\bus_dout_int_reg[31]_0 [33]),
        .R(reset));
  FDRE \bus_dout_int_reg[20] 
       (.C(clk),
        .CE(bus_dout_int[23]),
        .D(bus_addr_int[0]),
        .Q(\bus_dout_int_reg[31]_0 [52]),
        .R(reset));
  FDRE \bus_dout_int_reg[21] 
       (.C(clk),
        .CE(bus_dout_int[23]),
        .D(bus_addr_int[1]),
        .Q(\bus_dout_int_reg[31]_0 [53]),
        .R(reset));
  FDRE \bus_dout_int_reg[22] 
       (.C(clk),
        .CE(bus_dout_int[23]),
        .D(bus_addr_int[2]),
        .Q(\bus_dout_int_reg[31]_0 [54]),
        .R(reset));
  FDRE \bus_dout_int_reg[23] 
       (.C(clk),
        .CE(bus_dout_int[23]),
        .D(bus_addr_int[3]),
        .Q(\bus_dout_int_reg[31]_0 [55]),
        .R(reset));
  FDRE \bus_dout_int_reg[24] 
       (.C(clk),
        .CE(bus_dout_int[27]),
        .D(bus_addr_int[0]),
        .Q(\bus_dout_int_reg[31]_0 [56]),
        .R(reset));
  FDRE \bus_dout_int_reg[25] 
       (.C(clk),
        .CE(bus_dout_int[27]),
        .D(bus_addr_int[1]),
        .Q(\bus_dout_int_reg[31]_0 [57]),
        .R(reset));
  FDRE \bus_dout_int_reg[26] 
       (.C(clk),
        .CE(bus_dout_int[27]),
        .D(bus_addr_int[2]),
        .Q(\bus_dout_int_reg[31]_0 [58]),
        .R(reset));
  FDRE \bus_dout_int_reg[27] 
       (.C(clk),
        .CE(bus_dout_int[27]),
        .D(bus_addr_int[3]),
        .Q(\bus_dout_int_reg[31]_0 [59]),
        .R(reset));
  FDRE \bus_dout_int_reg[28] 
       (.C(clk),
        .CE(bus_dout_int[31]),
        .D(bus_addr_int[0]),
        .Q(\bus_dout_int_reg[31]_0 [60]),
        .R(reset));
  FDRE \bus_dout_int_reg[29] 
       (.C(clk),
        .CE(bus_dout_int[31]),
        .D(bus_addr_int[1]),
        .Q(\bus_dout_int_reg[31]_0 [61]),
        .R(reset));
  FDRE \bus_dout_int_reg[2] 
       (.C(clk),
        .CE(bus_dout_int[3]),
        .D(bus_addr_int[2]),
        .Q(\bus_dout_int_reg[31]_0 [34]),
        .R(reset));
  FDRE \bus_dout_int_reg[30] 
       (.C(clk),
        .CE(bus_dout_int[31]),
        .D(bus_addr_int[2]),
        .Q(\bus_dout_int_reg[31]_0 [62]),
        .R(reset));
  FDRE \bus_dout_int_reg[31] 
       (.C(clk),
        .CE(bus_dout_int[31]),
        .D(bus_addr_int[3]),
        .Q(\bus_dout_int_reg[31]_0 [63]),
        .R(reset));
  FDRE \bus_dout_int_reg[3] 
       (.C(clk),
        .CE(bus_dout_int[3]),
        .D(bus_addr_int[3]),
        .Q(\bus_dout_int_reg[31]_0 [35]),
        .R(reset));
  FDRE \bus_dout_int_reg[4] 
       (.C(clk),
        .CE(bus_dout_int[7]),
        .D(bus_addr_int[0]),
        .Q(\bus_dout_int_reg[31]_0 [36]),
        .R(reset));
  FDRE \bus_dout_int_reg[5] 
       (.C(clk),
        .CE(bus_dout_int[7]),
        .D(bus_addr_int[1]),
        .Q(\bus_dout_int_reg[31]_0 [37]),
        .R(reset));
  FDRE \bus_dout_int_reg[6] 
       (.C(clk),
        .CE(bus_dout_int[7]),
        .D(bus_addr_int[2]),
        .Q(\bus_dout_int_reg[31]_0 [38]),
        .R(reset));
  FDRE \bus_dout_int_reg[7] 
       (.C(clk),
        .CE(bus_dout_int[7]),
        .D(bus_addr_int[3]),
        .Q(\bus_dout_int_reg[31]_0 [39]),
        .R(reset));
  FDRE \bus_dout_int_reg[8] 
       (.C(clk),
        .CE(bus_dout_int[11]),
        .D(bus_addr_int[0]),
        .Q(\bus_dout_int_reg[31]_0 [40]),
        .R(reset));
  FDRE \bus_dout_int_reg[9] 
       (.C(clk),
        .CE(bus_dout_int[11]),
        .D(bus_addr_int[1]),
        .Q(\bus_dout_int_reg[31]_0 [41]),
        .R(reset));
  LUT6 #(
    .INIT(64'h0020000000000020)) 
    bus_we_q_i_1
       (.I0(rx_csm_current_state[0]),
        .I1(rx_csm_current_state[1]),
        .I2(rx_csm_current_state[5]),
        .I3(rx_csm_current_state[4]),
        .I4(rx_csm_current_state[2]),
        .I5(rx_csm_current_state[3]),
        .O(bus_we));
  FDRE cmd_par_reg
       (.C(clk),
        .CE(1'b1),
        .D(cmd_par_reg_0),
        .Q(cmd_par),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1F11BFBF1011B0B0)) 
    lock_rx_i_1
       (.I0(rx_csm_current_state[0]),
        .I1(rx_csm_current_state[5]),
        .I2(lock_rx_i_2_n_0),
        .I3(lock_rx_i_3_n_0),
        .I4(lock_rx_i_4_n_0),
        .I5(lock_rx),
        .O(lock_rx_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000040300030)) 
    lock_rx_i_2
       (.I0(rx_csm_current_state[3]),
        .I1(rx_csm_current_state[5]),
        .I2(rx_csm_current_state[4]),
        .I3(rx_csm_current_state[2]),
        .I4(tx_ack),
        .I5(lock_rx_i_5_n_0),
        .O(lock_rx_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF7FFFFFFF)) 
    lock_rx_i_3
       (.I0(rx_csm_current_state[1]),
        .I1(rx_csm_current_state[0]),
        .I2(rx_csm_current_state[2]),
        .I3(rx_csm_current_state[3]),
        .I4(rx_csm_current_state[4]),
        .I5(rx_csm_current_state[5]),
        .O(lock_rx_i_3_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    lock_rx_i_4
       (.I0(\num_reg[2]_0 ),
        .I1(num[6]),
        .I2(num[7]),
        .I3(\num_reg[5]_0 ),
        .O(lock_rx_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hB)) 
    lock_rx_i_5
       (.I0(rx_csm_current_state[0]),
        .I1(rx_csm_current_state[1]),
        .O(lock_rx_i_5_n_0));
  FDRE lock_rx_reg
       (.C(clk),
        .CE(1'b1),
        .D(lock_rx_i_1_n_0),
        .Q(lock_rx),
        .R(reset));
  LUT4 #(
    .INIT(16'h4774)) 
    \num[0]_i_1 
       (.I0(num[0]),
        .I1(rx_csm_current_state[1]),
        .I2(\bus_addr_int_reg[0]_1 [2]),
        .I3(\bus_addr_int_reg[0]_1 [0]),
        .O(\num[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h909F9F909F909F90)) 
    \num[1]_i_1 
       (.I0(num[1]),
        .I1(num[0]),
        .I2(rx_csm_current_state[1]),
        .I3(\bus_addr_int_reg[0]_1 [1]),
        .I4(\bus_addr_int_reg[0]_1 [0]),
        .I5(\bus_addr_int_reg[0]_1 [2]),
        .O(\num[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \num[2]_i_1 
       (.I0(num[1]),
        .I1(num[0]),
        .I2(num[2]),
        .I3(rx_csm_current_state[1]),
        .I4(bus_addr_int[2]),
        .O(\num[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000050040004)) 
    \num[3]_i_1 
       (.I0(reset),
        .I1(cmd_we),
        .I2(rx_csm_current_state[2]),
        .I3(rx_csm_current_state[1]),
        .I4(tx_ack),
        .I5(\num[3]_i_3_n_0 ),
        .O(\num[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \num[3]_i_2 
       (.I0(num[3]),
        .I1(num[1]),
        .I2(num[0]),
        .I3(num[2]),
        .I4(rx_csm_current_state[1]),
        .I5(bus_addr_int[3]),
        .O(\num[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \num[3]_i_3 
       (.I0(rx_csm_current_state[4]),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[0]),
        .I3(rx_csm_current_state[5]),
        .O(\num[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \num[4]_i_1 
       (.I0(bus_addr_int[0]),
        .I1(rx_csm_current_state[0]),
        .I2(num[4]),
        .I3(num[2]),
        .I4(num[3]),
        .I5(\num[4]_i_2_n_0 ),
        .O(\num[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \num[4]_i_2 
       (.I0(num[1]),
        .I1(num[0]),
        .O(\num[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB88BB8B8)) 
    \num[6]_i_1 
       (.I0(bus_addr_int[2]),
        .I1(rx_csm_current_state[0]),
        .I2(num[6]),
        .I3(\num_reg[5]_0 ),
        .I4(\num_reg[2]_0 ),
        .O(\num[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \num[7]_i_1 
       (.I0(\bus_dout_int_reg[16]_0 ),
        .I1(rx_csm_current_state[3]),
        .I2(\num_reg[5]_1 ),
        .I3(\num[7]_i_5_n_0 ),
        .I4(reset),
        .I5(\num[7]_i_6_n_0 ),
        .O(\num[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B88BB8B8)) 
    \num[7]_i_2 
       (.I0(bus_addr_int[3]),
        .I1(rx_csm_current_state[0]),
        .I2(num[7]),
        .I3(num[6]),
        .I4(\num_reg[2]_0 ),
        .I5(\num_reg[5]_0 ),
        .O(\num[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \num[7]_i_5 
       (.I0(rx_csm_current_state[4]),
        .I1(rx_csm_current_state[5]),
        .O(\num[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \num[7]_i_6 
       (.I0(rx_csm_current_state[2]),
        .I1(rx_csm_current_state[1]),
        .O(\num[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \num[7]_i_7 
       (.I0(num[2]),
        .I1(num[3]),
        .I2(num[1]),
        .I3(num[0]),
        .I4(num[4]),
        .O(\num_reg[2]_0 ));
  FDRE \num_reg[0] 
       (.C(clk),
        .CE(\num[3]_i_1_n_0 ),
        .D(\num[0]_i_1_n_0 ),
        .Q(num[0]),
        .R(1'b0));
  FDRE \num_reg[1] 
       (.C(clk),
        .CE(\num[3]_i_1_n_0 ),
        .D(\num[1]_i_1_n_0 ),
        .Q(num[1]),
        .R(1'b0));
  FDRE \num_reg[2] 
       (.C(clk),
        .CE(\num[3]_i_1_n_0 ),
        .D(\num[2]_i_1_n_0 ),
        .Q(num[2]),
        .R(1'b0));
  FDRE \num_reg[3] 
       (.C(clk),
        .CE(\num[3]_i_1_n_0 ),
        .D(\num[3]_i_2_n_0 ),
        .Q(num[3]),
        .R(1'b0));
  FDRE \num_reg[4] 
       (.C(clk),
        .CE(\num[7]_i_1_n_0 ),
        .D(\num[4]_i_1_n_0 ),
        .Q(num[4]),
        .R(1'b0));
  FDRE \num_reg[5] 
       (.C(clk),
        .CE(\num[7]_i_1_n_0 ),
        .D(\num_reg[5]_2 ),
        .Q(\num_reg[5]_0 ),
        .R(1'b0));
  FDRE \num_reg[6] 
       (.C(clk),
        .CE(\num[7]_i_1_n_0 ),
        .D(\num[6]_i_1_n_0 ),
        .Q(num[6]),
        .R(1'b0));
  FDRE \num_reg[7] 
       (.C(clk),
        .CE(\num[7]_i_1_n_0 ),
        .D(\num[7]_i_2_n_0 ),
        .Q(num[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[0]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [32]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[10]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [42]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[11]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [43]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \reg[127]_i_1__0 
       (.I0(\reg[127]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[0] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[1] ),
        .I4(\sbus_rdata[31]_i_2__0_n_0 ),
        .O(E[3]));
  LUT6 #(
    .INIT(64'h0000000000090000)) 
    \reg[127]_i_2__0 
       (.I0(rx_csm_current_state[3]),
        .I1(rx_csm_current_state[2]),
        .I2(\rx_csm_current_state[2]_i_5_n_0 ),
        .I3(rx_csm_current_state[1]),
        .I4(rx_csm_current_state[0]),
        .I5(\reg_reg[95] ),
        .O(\reg[127]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[12]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [44]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[13]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [45]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[14]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [46]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[15]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [47]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[16]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [48]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[17]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [49]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [17]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[18]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [50]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [18]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[19]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [51]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [19]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[1]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [33]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[20]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [52]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [20]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[21]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [53]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [21]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[22]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [54]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [22]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[23]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [55]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [23]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[24]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [56]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [24]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[25]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [57]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [25]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[26]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [58]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [26]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[27]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [59]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [27]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[28]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [60]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [28]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[29]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [61]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [29]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[2]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [34]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[30]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [62]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [30]));
  LUT2 #(
    .INIT(4'h2)) 
    \reg[31]_i_1__0 
       (.I0(\reg[127]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg[0]_0 ),
        .O(E[0]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[31]_i_2__0 
       (.I0(\bus_dout_int_reg[31]_0 [63]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [31]));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0F0F0E)) 
    \reg[31]_i_3 
       (.I0(\bus_addr_int_reg_n_0_[0] ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\reg[31]_i_4_n_0 ),
        .I4(\sbus_rdata[31]_i_6__0_n_0 ),
        .I5(\sbus_rdata[31]_i_5__0_n_0 ),
        .O(\bus_addr_int_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg[31]_i_4 
       (.I0(\bus_addr_int_reg_n_0_[9] ),
        .I1(\bus_addr_int_reg_n_0_[7] ),
        .I2(\bus_addr_int_reg_n_0_[14] ),
        .I3(\bus_addr_int_reg_n_0_[5] ),
        .O(\reg[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[3]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [35]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[4]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [36]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[5]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [37]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \reg[63]_i_1__0 
       (.I0(\reg[127]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_2__0_n_0 ),
        .I3(\sbus_rdata[31]_i_3__0_n_0 ),
        .I4(\bus_addr_int_reg_n_0_[0] ),
        .O(E[1]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[6]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [38]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[7]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [39]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[8]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [40]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \reg[95]_i_1__0 
       (.I0(\reg[127]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[0] ),
        .I2(\sbus_rdata[31]_i_2__0_n_0 ),
        .I3(\sbus_rdata[31]_i_3__0_n_0 ),
        .I4(\bus_addr_int_reg_n_0_[1] ),
        .O(E[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[9]_i_1 
       (.I0(\bus_dout_int_reg[31]_0 [41]),
        .I1(\sbus_rdata[31]_i_3__0_n_0 ),
        .O(\bus_dout_int_reg[31]_0 [9]));
  LUT3 #(
    .INIT(8'h0B)) 
    response_en_rx_i_1
       (.I0(\response_nibble_rx[3]_i_3_n_0 ),
        .I1(\response_nibble_rx[3]_i_4_n_0 ),
        .I2(\response_nibble_rx[3]_i_5_n_0 ),
        .O(response_en_rx));
  FDRE response_en_rx_reg
       (.C(clk),
        .CE(1'b1),
        .D(response_en_rx),
        .Q(response_en_rx_reg_0),
        .R(reset));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \response_nibble_rx[0]_i_1 
       (.I0(\response_nibble_rx[0]_i_2_n_0 ),
        .I1(rx_csm_current_state[2]),
        .I2(\response_nibble_rx[0]_i_3_n_0 ),
        .I3(rx_csm_current_state[1]),
        .I4(\response_nibble_rx[0]_i_4_n_0 ),
        .O(response_nibble_rx_0[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \response_nibble_rx[0]_i_2 
       (.I0(\bus_din_tmp_reg_n_0_[0] ),
        .I1(rx_csm_current_state[0]),
        .I2(data2[0]),
        .I3(rx_csm_current_state[1]),
        .I4(data6[0]),
        .O(\response_nibble_rx[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \response_nibble_rx[0]_i_3 
       (.I0(data5[0]),
        .I1(rx_csm_current_state[0]),
        .I2(data3[0]),
        .I3(rx_csm_current_state[3]),
        .I4(data4[0]),
        .O(\response_nibble_rx[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \response_nibble_rx[0]_i_4 
       (.I0(data1[0]),
        .I1(rx_csm_current_state[0]),
        .I2(data0[0]),
        .I3(rx_csm_current_state[3]),
        .I4(data3[0]),
        .O(\response_nibble_rx[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \response_nibble_rx[1]_i_1 
       (.I0(\response_nibble_rx[1]_i_2_n_0 ),
        .I1(rx_csm_current_state[2]),
        .I2(\response_nibble_rx[1]_i_3_n_0 ),
        .I3(rx_csm_current_state[1]),
        .I4(\response_nibble_rx[1]_i_4_n_0 ),
        .O(response_nibble_rx_0[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \response_nibble_rx[1]_i_2 
       (.I0(\bus_din_tmp_reg_n_0_[1] ),
        .I1(rx_csm_current_state[0]),
        .I2(data2[1]),
        .I3(rx_csm_current_state[1]),
        .I4(data6[1]),
        .O(\response_nibble_rx[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \response_nibble_rx[1]_i_3 
       (.I0(data5[1]),
        .I1(rx_csm_current_state[0]),
        .I2(data3[1]),
        .I3(rx_csm_current_state[3]),
        .I4(data4[1]),
        .O(\response_nibble_rx[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \response_nibble_rx[1]_i_4 
       (.I0(data1[1]),
        .I1(rx_csm_current_state[0]),
        .I2(data0[1]),
        .I3(rx_csm_current_state[3]),
        .I4(data3[1]),
        .O(\response_nibble_rx[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \response_nibble_rx[2]_i_1 
       (.I0(\response_nibble_rx[2]_i_2_n_0 ),
        .I1(rx_csm_current_state[2]),
        .I2(\response_nibble_rx[2]_i_3_n_0 ),
        .I3(rx_csm_current_state[1]),
        .I4(\response_nibble_rx[2]_i_4_n_0 ),
        .O(response_nibble_rx_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \response_nibble_rx[2]_i_2 
       (.I0(\bus_din_tmp_reg_n_0_[2] ),
        .I1(rx_csm_current_state[0]),
        .I2(data2[2]),
        .I3(rx_csm_current_state[1]),
        .I4(data6[2]),
        .O(\response_nibble_rx[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \response_nibble_rx[2]_i_3 
       (.I0(data5[2]),
        .I1(rx_csm_current_state[0]),
        .I2(data3[2]),
        .I3(rx_csm_current_state[3]),
        .I4(data4[2]),
        .O(\response_nibble_rx[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \response_nibble_rx[2]_i_4 
       (.I0(data1[2]),
        .I1(rx_csm_current_state[0]),
        .I2(data0[2]),
        .I3(rx_csm_current_state[3]),
        .I4(data3[2]),
        .O(\response_nibble_rx[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h000B)) 
    \response_nibble_rx[3]_i_1 
       (.I0(\response_nibble_rx[3]_i_3_n_0 ),
        .I1(\response_nibble_rx[3]_i_4_n_0 ),
        .I2(\response_nibble_rx[3]_i_5_n_0 ),
        .I3(reset),
        .O(\response_nibble_rx[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \response_nibble_rx[3]_i_2 
       (.I0(\response_nibble_rx[3]_i_6_n_0 ),
        .I1(rx_csm_current_state[2]),
        .I2(\response_nibble_rx[3]_i_7_n_0 ),
        .I3(rx_csm_current_state[1]),
        .I4(\response_nibble_rx[3]_i_8_n_0 ),
        .O(response_nibble_rx_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hEFC3C3EC)) 
    \response_nibble_rx[3]_i_3 
       (.I0(rx_csm_current_state[4]),
        .I1(rx_csm_current_state[5]),
        .I2(rx_csm_current_state[3]),
        .I3(rx_csm_current_state[2]),
        .I4(rx_csm_current_state[1]),
        .O(\response_nibble_rx[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00003F020000F282)) 
    \response_nibble_rx[3]_i_4 
       (.I0(rx_csm_current_state[3]),
        .I1(rx_csm_current_state[1]),
        .I2(rx_csm_current_state[2]),
        .I3(rx_csm_current_state[4]),
        .I4(tx_ack),
        .I5(rx_csm_current_state[0]),
        .O(\response_nibble_rx[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF9F9FEF69EBDFFFF)) 
    \response_nibble_rx[3]_i_5 
       (.I0(rx_csm_current_state[1]),
        .I1(rx_csm_current_state[2]),
        .I2(rx_csm_current_state[5]),
        .I3(rx_csm_current_state[0]),
        .I4(rx_csm_current_state[4]),
        .I5(rx_csm_current_state[3]),
        .O(\response_nibble_rx[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \response_nibble_rx[3]_i_6 
       (.I0(\bus_din_tmp_reg_n_0_[3] ),
        .I1(rx_csm_current_state[0]),
        .I2(data2[3]),
        .I3(rx_csm_current_state[1]),
        .I4(data6[3]),
        .O(\response_nibble_rx[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \response_nibble_rx[3]_i_7 
       (.I0(data5[3]),
        .I1(rx_csm_current_state[0]),
        .I2(data3[3]),
        .I3(rx_csm_current_state[3]),
        .I4(data4[3]),
        .O(\response_nibble_rx[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \response_nibble_rx[3]_i_8 
       (.I0(data1[3]),
        .I1(rx_csm_current_state[0]),
        .I2(data0[3]),
        .I3(rx_csm_current_state[3]),
        .I4(data3[3]),
        .O(\response_nibble_rx[3]_i_8_n_0 ));
  FDRE \response_nibble_rx_reg[0] 
       (.C(clk),
        .CE(\response_nibble_rx[3]_i_1_n_0 ),
        .D(response_nibble_rx_0[0]),
        .Q(response_nibble_rx[0]),
        .R(1'b0));
  FDRE \response_nibble_rx_reg[1] 
       (.C(clk),
        .CE(\response_nibble_rx[3]_i_1_n_0 ),
        .D(response_nibble_rx_0[1]),
        .Q(response_nibble_rx[1]),
        .R(1'b0));
  FDRE \response_nibble_rx_reg[2] 
       (.C(clk),
        .CE(\response_nibble_rx[3]_i_1_n_0 ),
        .D(response_nibble_rx_0[2]),
        .Q(response_nibble_rx[2]),
        .R(1'b0));
  FDRE \response_nibble_rx_reg[3] 
       (.C(clk),
        .CE(\response_nibble_rx[3]_i_1_n_0 ),
        .D(response_nibble_rx_0[3]),
        .Q(response_nibble_rx[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0404444044444440)) 
    \rx_csm_current_state[0]_i_10 
       (.I0(rx_csm_current_state[2]),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[0]),
        .I3(cmd_we),
        .I4(rx_csm_current_state[1]),
        .I5(tx_ack),
        .O(\rx_csm_current_state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hF0BB330CF088FF3F)) 
    \rx_csm_current_state[0]_i_11 
       (.I0(bus_ack),
        .I1(rx_csm_current_state[2]),
        .I2(cmd_we),
        .I3(rx_csm_current_state[1]),
        .I4(rx_csm_current_state[0]),
        .I5(tx_ack),
        .O(\rx_csm_current_state[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h300020FF30002000)) 
    \rx_csm_current_state[0]_i_2 
       (.I0(\rx_csm_current_state[0]_i_5_n_0 ),
        .I1(\rx_csm_current_state[0]_i_6_n_0 ),
        .I2(\rx_csm_current_state[0]_i_7_n_0 ),
        .I3(rx_csm_current_state[5]),
        .I4(rx_csm_current_state[4]),
        .I5(\rx_csm_current_state[0]_i_8_n_0 ),
        .O(\rx_csm_current_state_reg[5]_0 ));
  LUT6 #(
    .INIT(64'h0800088888880000)) 
    \rx_csm_current_state[0]_i_3 
       (.I0(rx_csm_current_state[2]),
        .I1(rx_csm_current_state[3]),
        .I2(lock_rx_i_4_n_0),
        .I3(rx_csm_current_state[1]),
        .I4(tx_ack),
        .I5(rx_csm_current_state[0]),
        .O(\rx_csm_current_state_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \rx_csm_current_state[0]_i_4 
       (.I0(\rx_csm_current_state[0]_i_9_n_0 ),
        .I1(rx_csm_current_state[4]),
        .I2(rx_csm_current_state[5]),
        .I3(\rx_csm_current_state[0]_i_10_n_0 ),
        .O(\rx_csm_current_state_reg[4]_1 ));
  LUT6 #(
    .INIT(64'hFB3FF3B7FB3F7337)) 
    \rx_csm_current_state[0]_i_5 
       (.I0(rx_csm_current_state[2]),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[0]),
        .I3(cmd_we),
        .I4(rx_csm_current_state[1]),
        .I5(bus_ack),
        .O(\rx_csm_current_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00AA22A0AA0022A0)) 
    \rx_csm_current_state[0]_i_6 
       (.I0(\rx_csm_current_state[1]_i_7_n_0 ),
        .I1(bus_ack),
        .I2(rx_csm_current_state[1]),
        .I3(rx_csm_current_state[0]),
        .I4(rx_csm_current_state[2]),
        .I5(cmd_we),
        .O(\rx_csm_current_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hB3BFE12DFFFFFFFF)) 
    \rx_csm_current_state[0]_i_7 
       (.I0(tx_ack),
        .I1(\rx_csm_current_state[2]_i_10_n_0 ),
        .I2(rx_csm_current_state[0]),
        .I3(cmd_we),
        .I4(rx_csm_current_state[1]),
        .I5(\rx_csm_current_state[1]_i_6_n_0 ),
        .O(\rx_csm_current_state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8BBB88888B88BBBB)) 
    \rx_csm_current_state[0]_i_8 
       (.I0(\rx_csm_current_state[0]_i_11_n_0 ),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[2]),
        .I3(rx_csm_current_state[1]),
        .I4(cmd_we),
        .I5(rx_csm_current_state[0]),
        .O(\rx_csm_current_state[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h04501551)) 
    \rx_csm_current_state[0]_i_9 
       (.I0(rx_csm_current_state[3]),
        .I1(rx_csm_current_state[2]),
        .I2(rx_csm_current_state[0]),
        .I3(cmd_we),
        .I4(rx_csm_current_state[1]),
        .O(\rx_csm_current_state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h33032200CFFFF0C0)) 
    \rx_csm_current_state[1]_i_10 
       (.I0(tx_ack),
        .I1(rx_csm_current_state[2]),
        .I2(cmd_we),
        .I3(rx_csm_current_state[0]),
        .I4(rx_csm_current_state[1]),
        .I5(rx_csm_current_state[3]),
        .O(\rx_csm_current_state[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0880080008808880)) 
    \rx_csm_current_state[1]_i_11 
       (.I0(rx_csm_current_state[4]),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[0]),
        .I3(rx_csm_current_state[1]),
        .I4(tx_ack),
        .I5(rx_csm_current_state[2]),
        .O(\rx_csm_current_state[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2A802A8020A02000)) 
    \rx_csm_current_state[1]_i_12 
       (.I0(\rx_csm_current_state[1]_i_6_n_0 ),
        .I1(cmd_we),
        .I2(rx_csm_current_state[0]),
        .I3(rx_csm_current_state[1]),
        .I4(tx_ack),
        .I5(rx_csm_current_state[2]),
        .O(\rx_csm_current_state[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h85E78FE7FFFFFFFF)) 
    \rx_csm_current_state[1]_i_3 
       (.I0(rx_csm_current_state[0]),
        .I1(tx_ack),
        .I2(rx_csm_current_state[1]),
        .I3(\rx_csm_current_state[2]_i_10_n_0 ),
        .I4(cmd_we),
        .I5(\rx_csm_current_state[1]_i_6_n_0 ),
        .O(\rx_csm_current_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF78C00000)) 
    \rx_csm_current_state[1]_i_4 
       (.I0(cmd_we),
        .I1(rx_csm_current_state[2]),
        .I2(rx_csm_current_state[1]),
        .I3(rx_csm_current_state[0]),
        .I4(\rx_csm_current_state[1]_i_7_n_0 ),
        .I5(\rx_csm_current_state[1]_i_8_n_0 ),
        .O(rx_ack_cld_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF0D)) 
    \rx_csm_current_state[1]_i_5 
       (.I0(\rx_csm_current_state[1]_i_9_n_0 ),
        .I1(\rx_csm_current_state[1]_i_10_n_0 ),
        .I2(rx_csm_current_state[4]),
        .I3(rx_csm_current_state[5]),
        .I4(\rx_csm_current_state[1]_i_11_n_0 ),
        .I5(\rx_csm_current_state[1]_i_12_n_0 ),
        .O(\rx_csm_current_state_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rx_csm_current_state[1]_i_6 
       (.I0(rx_csm_current_state[4]),
        .I1(rx_csm_current_state[3]),
        .O(\rx_csm_current_state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \rx_csm_current_state[1]_i_7 
       (.I0(rx_csm_current_state[3]),
        .I1(rx_csm_current_state[4]),
        .O(\rx_csm_current_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h01000C00FFFFFFFF)) 
    \rx_csm_current_state[1]_i_8 
       (.I0(rx_csm_current_state[2]),
        .I1(rx_csm_current_state[1]),
        .I2(rx_csm_current_state[4]),
        .I3(rx_csm_current_state[3]),
        .I4(\bus_dout_int_reg[16]_0 ),
        .I5(rx_csm_current_state[5]),
        .O(\rx_csm_current_state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFAFBABFFAAABABF)) 
    \rx_csm_current_state[1]_i_9 
       (.I0(\bus_dout_int[27]_i_2_n_0 ),
        .I1(bus_ack),
        .I2(rx_csm_current_state[0]),
        .I3(cmd_we),
        .I4(rx_csm_current_state[1]),
        .I5(tx_ack),
        .O(\rx_csm_current_state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBABABABBBBBBBBBB)) 
    \rx_csm_current_state[2]_i_1 
       (.I0(\rx_csm_current_state_reg[2]_2 ),
        .I1(\rx_csm_current_state_reg[2]_3 ),
        .I2(\rx_csm_current_state[2]_i_4_n_0 ),
        .I3(\rx_csm_current_state[2]_i_5_n_0 ),
        .I4(\rx_csm_current_state[2]_i_6_n_0 ),
        .I5(\rx_csm_current_state[2]_i_7_n_0 ),
        .O(\rx_csm_current_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \rx_csm_current_state[2]_i_10 
       (.I0(rx_csm_current_state[4]),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[2]),
        .O(\rx_csm_current_state[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \rx_csm_current_state[2]_i_11 
       (.I0(rx_csm_current_state[3]),
        .I1(rx_csm_current_state[4]),
        .I2(rx_csm_current_state[5]),
        .O(\rx_csm_current_state[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8840884000FFFF00)) 
    \rx_csm_current_state[2]_i_12 
       (.I0(\rx_csm_current_state[2]_i_15_n_0 ),
        .I1(rx_csm_current_state[4]),
        .I2(tx_ack),
        .I3(rx_csm_current_state[2]),
        .I4(\rx_csm_current_state[2]_i_16_n_0 ),
        .I5(rx_csm_current_state[3]),
        .O(\rx_csm_current_state[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \rx_csm_current_state[2]_i_13 
       (.I0(rx_csm_current_state[1]),
        .I1(rx_csm_current_state[0]),
        .I2(cmd_we),
        .O(\rx_csm_current_state[2]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \rx_csm_current_state[2]_i_14 
       (.I0(rx_csm_current_state[1]),
        .I1(rx_csm_current_state[0]),
        .I2(tx_ack),
        .O(\rx_csm_current_state[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rx_csm_current_state[2]_i_15 
       (.I0(rx_csm_current_state[1]),
        .I1(rx_csm_current_state[0]),
        .O(\rx_csm_current_state[2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rx_csm_current_state[2]_i_16 
       (.I0(rx_csm_current_state[1]),
        .I1(rx_csm_current_state[0]),
        .I2(cmd_we),
        .O(\rx_csm_current_state[2]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEBABABBB)) 
    \rx_csm_current_state[2]_i_4 
       (.I0(\rx_csm_current_state_reg[2]_4 ),
        .I1(\rx_csm_current_state[2]_i_10_n_0 ),
        .I2(rx_csm_current_state[1]),
        .I3(rx_csm_current_state[0]),
        .I4(tx_ack),
        .I5(\rx_csm_current_state[2]_i_11_n_0 ),
        .O(\rx_csm_current_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \rx_csm_current_state[2]_i_5 
       (.I0(rx_csm_current_state[4]),
        .I1(rx_csm_current_state[5]),
        .O(\rx_csm_current_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF38F0C0F0F8F0C0F)) 
    \rx_csm_current_state[2]_i_6 
       (.I0(bus_ack),
        .I1(rx_csm_current_state[3]),
        .I2(rx_csm_current_state[2]),
        .I3(rx_csm_current_state[1]),
        .I4(rx_csm_current_state[0]),
        .I5(cmd_we),
        .O(\rx_csm_current_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBABBBABABABABABA)) 
    \rx_csm_current_state[2]_i_7 
       (.I0(rx_csm_current_state[5]),
        .I1(\rx_csm_current_state[2]_i_12_n_0 ),
        .I2(\rx_csm_current_state[3]_i_8_n_0 ),
        .I3(rx_csm_current_state[2]),
        .I4(\rx_csm_current_state[2]_i_13_n_0 ),
        .I5(\rx_csm_current_state[2]_i_14_n_0 ),
        .O(\rx_csm_current_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8A888A8A8A888A88)) 
    \rx_csm_current_state[3]_i_1 
       (.I0(\rx_csm_current_state_reg[3]_1 ),
        .I1(\rx_csm_current_state_reg[3]_2 ),
        .I2(rx_csm_current_state[5]),
        .I3(\rx_csm_current_state[3]_i_4_n_0 ),
        .I4(\rx_csm_current_state[3]_i_5_n_0 ),
        .I5(\rx_csm_current_state[3]_i_6_n_0 ),
        .O(\rx_csm_current_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF51555555)) 
    \rx_csm_current_state[3]_i_4 
       (.I0(\rx_csm_current_state[3]_i_8_n_0 ),
        .I1(rx_csm_current_state[1]),
        .I2(rx_csm_current_state[2]),
        .I3(rx_csm_current_state[0]),
        .I4(cmd_we),
        .I5(\rx_csm_current_state[3]_i_9_n_0 ),
        .O(\rx_csm_current_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \rx_csm_current_state[3]_i_5 
       (.I0(rx_csm_current_state[3]),
        .I1(rx_csm_current_state[4]),
        .O(\rx_csm_current_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h7DFD)) 
    \rx_csm_current_state[3]_i_6 
       (.I0(rx_csm_current_state[0]),
        .I1(rx_csm_current_state[1]),
        .I2(rx_csm_current_state[2]),
        .I3(lock_rx_i_4_n_0),
        .O(\rx_csm_current_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA511555555005555)) 
    \rx_csm_current_state[3]_i_7 
       (.I0(rx_csm_current_state[3]),
        .I1(bus_ack),
        .I2(cmd_we),
        .I3(rx_csm_current_state[2]),
        .I4(rx_csm_current_state[1]),
        .I5(rx_csm_current_state[0]),
        .O(\rx_csm_current_state_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hF8FF)) 
    \rx_csm_current_state[3]_i_8 
       (.I0(rx_csm_current_state[2]),
        .I1(\rx_csm_current_state_reg[4]_2 ),
        .I2(rx_csm_current_state[4]),
        .I3(rx_csm_current_state[3]),
        .O(\rx_csm_current_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000840400008600)) 
    \rx_csm_current_state[3]_i_9 
       (.I0(rx_csm_current_state[2]),
        .I1(rx_csm_current_state[1]),
        .I2(rx_csm_current_state[0]),
        .I3(cmd_we),
        .I4(rx_csm_current_state[3]),
        .I5(rx_csm_current_state[4]),
        .O(\rx_csm_current_state[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBABBBBBBBA)) 
    \rx_csm_current_state[4]_i_1 
       (.I0(\rx_csm_current_state_reg[4]_3 ),
        .I1(\rx_csm_current_state_reg[4]_4 ),
        .I2(\rx_csm_current_state[4]_i_4_n_0 ),
        .I3(\rx_csm_current_state[4]_i_5_n_0 ),
        .I4(\rx_csm_current_state[4]_i_6_n_0 ),
        .I5(\rx_csm_current_state[4]_i_7_n_0 ),
        .O(\rx_csm_current_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hC4C7FFFF)) 
    \rx_csm_current_state[4]_i_11 
       (.I0(cmd_we),
        .I1(\rx_csm_current_state[2]_i_10_n_0 ),
        .I2(rx_csm_current_state[0]),
        .I3(tx_ack),
        .I4(rx_csm_current_state[1]),
        .O(\rx_csm_current_state[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7EFEDEDE00000000)) 
    \rx_csm_current_state[4]_i_4 
       (.I0(rx_csm_current_state[0]),
        .I1(rx_csm_current_state[2]),
        .I2(rx_csm_current_state[3]),
        .I3(lock_rx_i_4_n_0),
        .I4(rx_csm_current_state[1]),
        .I5(\num[7]_i_5_n_0 ),
        .O(\rx_csm_current_state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F00008000000080)) 
    \rx_csm_current_state[4]_i_5 
       (.I0(rx_csm_current_state[2]),
        .I1(\rx_csm_current_state_reg[4]_2 ),
        .I2(rx_csm_current_state[3]),
        .I3(rx_csm_current_state[4]),
        .I4(rx_csm_current_state[5]),
        .I5(\rx_csm_current_state[4]_i_11_n_0 ),
        .O(\rx_csm_current_state[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAAA0000EAAA)) 
    \rx_csm_current_state[4]_i_6 
       (.I0(rx_csm_current_state[3]),
        .I1(rx_csm_current_state[1]),
        .I2(rx_csm_current_state[0]),
        .I3(bus_ack),
        .I4(rx_csm_current_state[4]),
        .I5(rx_csm_current_state[2]),
        .O(\rx_csm_current_state[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF0000FFFFFFFF)) 
    \rx_csm_current_state[4]_i_7 
       (.I0(rx_csm_current_state[0]),
        .I1(rx_csm_current_state[1]),
        .I2(rx_csm_current_state[2]),
        .I3(cmd_we),
        .I4(rx_csm_current_state[3]),
        .I5(rx_csm_current_state[5]),
        .O(\rx_csm_current_state[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BABABABB)) 
    \rx_csm_current_state[5]_i_1 
       (.I0(\rx_csm_current_state[5]_i_2_n_0 ),
        .I1(rx_csm_current_state[5]),
        .I2(\rx_csm_current_state[5]_i_3_n_0 ),
        .I3(\rx_csm_current_state[3]_i_5_n_0 ),
        .I4(\rx_csm_current_state[3]_i_6_n_0 ),
        .I5(\rx_csm_current_state_reg[2]_3 ),
        .O(\rx_csm_current_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44444440)) 
    \rx_csm_current_state[5]_i_2 
       (.I0(\rx_csm_current_state[5]_i_4_n_0 ),
        .I1(rx_csm_current_state[5]),
        .I2(\rx_csm_current_state[5]_i_5_n_0 ),
        .I3(rx_csm_current_state[4]),
        .I4(rx_csm_current_state[3]),
        .I5(\rx_csm_current_state_reg[2]_4 ),
        .O(\rx_csm_current_state[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABAAABABAAAAAAAA)) 
    \rx_csm_current_state[5]_i_3 
       (.I0(\rx_csm_current_state[5]_i_6_n_0 ),
        .I1(rx_csm_current_state[1]),
        .I2(rx_csm_current_state[2]),
        .I3(tx_ack),
        .I4(rx_csm_current_state[0]),
        .I5(\rx_csm_current_state[1]_i_6_n_0 ),
        .O(\rx_csm_current_state[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \rx_csm_current_state[5]_i_4 
       (.I0(rx_csm_current_state[3]),
        .I1(rx_csm_current_state[4]),
        .I2(cmd_we),
        .I3(rx_csm_current_state[0]),
        .I4(rx_csm_current_state[2]),
        .I5(rx_csm_current_state[1]),
        .O(\rx_csm_current_state[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hDFDD)) 
    \rx_csm_current_state[5]_i_5 
       (.I0(rx_csm_current_state[1]),
        .I1(rx_csm_current_state[2]),
        .I2(bus_ack),
        .I3(rx_csm_current_state[0]),
        .O(\rx_csm_current_state[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000002000)) 
    \rx_csm_current_state[5]_i_6 
       (.I0(rx_csm_current_state[3]),
        .I1(rx_csm_current_state[4]),
        .I2(rx_csm_current_state[2]),
        .I3(cmd_we),
        .I4(rx_csm_current_state[0]),
        .I5(rx_csm_current_state[1]),
        .O(\rx_csm_current_state[5]_i_6_n_0 ));
  FDRE \rx_csm_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_csm_current_state_reg[1]_0 [0]),
        .Q(rx_csm_current_state[0]),
        .R(1'b0));
  FDRE \rx_csm_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_csm_current_state_reg[1]_0 [1]),
        .Q(rx_csm_current_state[1]),
        .R(1'b0));
  FDRE \rx_csm_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_csm_current_state[2]_i_1_n_0 ),
        .Q(rx_csm_current_state[2]),
        .R(1'b0));
  FDRE \rx_csm_current_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_csm_current_state[3]_i_1_n_0 ),
        .Q(rx_csm_current_state[3]),
        .R(1'b0));
  FDRE \rx_csm_current_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_csm_current_state[4]_i_1_n_0 ),
        .Q(rx_csm_current_state[4]),
        .R(1'b0));
  FDSE \rx_csm_current_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_csm_current_state[5]_i_1_n_0 ),
        .Q(rx_csm_current_state[5]),
        .S(reset));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h1)) 
    sbus_ack_i_1__0
       (.I0(\sbus_rdata[31]_i_3__0_n_0 ),
        .I1(\sbus_rdata[31]_i_2__0_n_0 ),
        .O(sbus_ack0));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[0]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[0] ),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[10]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[10] ),
        .I5(Q[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[11]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[11] ),
        .I5(Q[11]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[12]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[12] ),
        .I5(Q[12]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[13]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[13] ),
        .I5(Q[13]),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[14]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[14] ),
        .I5(Q[14]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[15]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[15] ),
        .I5(Q[15]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[16]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[16] ),
        .I5(Q[16]),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[17]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[17] ),
        .I5(Q[17]),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[18]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[18] ),
        .I5(Q[18]),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[19]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[19] ),
        .I5(Q[19]),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[1]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[1] ),
        .I5(Q[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[20]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[20] ),
        .I5(Q[20]),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[21]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[21] ),
        .I5(Q[21]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[22]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[22] ),
        .I5(Q[22]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[23]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[23] ),
        .I5(Q[23]),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[24]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[24] ),
        .I5(Q[24]),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[25]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[25] ),
        .I5(Q[25]),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[26]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[26] ),
        .I5(Q[26]),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[27]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[27] ),
        .I5(Q[27]),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[28]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[28] ),
        .I5(Q[28]),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[29]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[29] ),
        .I5(Q[29]),
        .O(D[29]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[2]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[2] ),
        .I5(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[30]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[30] ),
        .I5(Q[30]),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[31]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[31] ),
        .I5(Q[31]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[31]_i_2__0 
       (.I0(\sbus_rdata[31]_i_5__0_n_0 ),
        .I1(\sbus_rdata[31]_i_6__0_n_0 ),
        .I2(\bus_addr_int_reg_n_0_[9] ),
        .I3(\bus_addr_int_reg_n_0_[7] ),
        .I4(\bus_addr_int_reg_n_0_[14] ),
        .I5(\bus_addr_int_reg_n_0_[5] ),
        .O(\sbus_rdata[31]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFF6F7FFFFFFFF)) 
    \sbus_rdata[31]_i_3__0 
       (.I0(rx_csm_current_state[3]),
        .I1(rx_csm_current_state[2]),
        .I2(rx_csm_current_state[4]),
        .I3(rx_csm_current_state[5]),
        .I4(rx_csm_current_state[1]),
        .I5(rx_csm_current_state[0]),
        .O(\sbus_rdata[31]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[31]_i_5__0 
       (.I0(\bus_addr_int_reg_n_0_[15] ),
        .I1(\bus_addr_int_reg_n_0_[10] ),
        .I2(\bus_addr_int_reg_n_0_[2] ),
        .I3(\bus_addr_int_reg_n_0_[6] ),
        .I4(\bus_addr_int_reg_n_0_[4] ),
        .I5(\bus_addr_int_reg_n_0_[8] ),
        .O(\sbus_rdata[31]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \sbus_rdata[31]_i_6__0 
       (.I0(\bus_addr_int_reg_n_0_[13] ),
        .I1(\bus_addr_int_reg_n_0_[12] ),
        .I2(\bus_addr_int_reg_n_0_[11] ),
        .I3(\bus_addr_int_reg_n_0_[3] ),
        .O(\sbus_rdata[31]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \sbus_rdata[31]_i_7__0 
       (.I0(\sbus_rdata[31]_i_5__0_n_0 ),
        .I1(\sbus_rdata[31]_i_6__0_n_0 ),
        .I2(\reg[31]_i_4_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[1] ),
        .I4(\sbus_rdata[31]_i_3__0_n_0 ),
        .I5(\bus_addr_int_reg_n_0_[0] ),
        .O(\bus_addr_int_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \sbus_rdata[31]_i_8__0 
       (.I0(\sbus_rdata[31]_i_5__0_n_0 ),
        .I1(\sbus_rdata[31]_i_6__0_n_0 ),
        .I2(\reg[31]_i_4_n_0 ),
        .I3(\sbus_rdata[31]_i_3__0_n_0 ),
        .I4(\bus_addr_int_reg_n_0_[1] ),
        .I5(\bus_addr_int_reg_n_0_[0] ),
        .O(\bus_addr_int_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[3]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[3] ),
        .I5(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[4]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[4] ),
        .I5(Q[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[5]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[5] ),
        .I5(Q[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[6]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[6] ),
        .I5(Q[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[7]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[7] ),
        .I5(Q[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[8]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[8] ),
        .I5(Q[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFF0400FFFF0000)) 
    \sbus_rdata[9]_i_1__0 
       (.I0(\sbus_rdata[31]_i_2__0_n_0 ),
        .I1(\bus_addr_int_reg_n_0_[1] ),
        .I2(\sbus_rdata[31]_i_3__0_n_0 ),
        .I3(\bus_addr_int_reg_n_0_[0] ),
        .I4(\sbus_rdata_reg[9] ),
        .I5(Q[9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h1FE00000)) 
    \tx_reg[1]_i_2 
       (.I0(response_nibble_rx[1]),
        .I1(response_nibble_rx[2]),
        .I2(response_nibble_rx[3]),
        .I3(response_nibble_rx[0]),
        .I4(lock_rx),
        .O(\response_nibble_rx_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h8A8A2000)) 
    \tx_reg[2]_i_2 
       (.I0(lock_rx),
        .I1(response_nibble_rx[0]),
        .I2(response_nibble_rx[3]),
        .I3(response_nibble_rx[2]),
        .I4(response_nibble_rx[1]),
        .O(lock_rx_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hA0A080A0)) 
    \tx_reg[3]_i_2 
       (.I0(lock_rx),
        .I1(response_nibble_rx[1]),
        .I2(response_nibble_rx[2]),
        .I3(response_nibble_rx[3]),
        .I4(response_nibble_rx[0]),
        .O(lock_rx_reg_2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF400040)) 
    \tx_reg[4]_i_1 
       (.I0(lock_rx_reg_0),
        .I1(response_nibble_rx[3]),
        .I2(lock_rx),
        .I3(current_state),
        .I4(\tx_reg_reg[4] ),
        .I5(reset),
        .O(\response_nibble_rx_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \tx_reg[7]_i_2 
       (.I0(lock_rx),
        .I1(response_nibble_rx[3]),
        .I2(response_nibble_rx[2]),
        .I3(response_nibble_rx[1]),
        .O(lock_rx_reg_0));
endmodule

(* ORIG_REF_NAME = "cnt_modulus" *) 
module system_sbus_awfg_0_0_cnt_modulus
   (\cnt_reg[7]_0 ,
    D,
    \cnt_reg[15]_0 ,
    \cnt_reg[14]_0 ,
    \cnt_reg[13]_0 ,
    \cnt_reg[12]_0 ,
    \cnt_reg[11]_0 ,
    \cnt_reg[10]_0 ,
    \cnt_reg[9]_0 ,
    \cnt_reg[8]_0 ,
    \cnt_reg[7]_1 ,
    \cnt_reg[6]_0 ,
    \cnt_reg[5]_0 ,
    \cnt_reg[4]_0 ,
    clk,
    reset,
    Q,
    \dac1_reg[15] );
  output [3:0]\cnt_reg[7]_0 ;
  output [7:0]D;
  output \cnt_reg[15]_0 ;
  output \cnt_reg[14]_0 ;
  output \cnt_reg[13]_0 ;
  output \cnt_reg[12]_0 ;
  output \cnt_reg[11]_0 ;
  output \cnt_reg[10]_0 ;
  output \cnt_reg[9]_0 ;
  output \cnt_reg[8]_0 ;
  output \cnt_reg[7]_1 ;
  output \cnt_reg[6]_0 ;
  output \cnt_reg[5]_0 ;
  output \cnt_reg[4]_0 ;
  input clk;
  input reset;
  input [0:0]Q;
  input [7:0]\dac1_reg[15] ;

  wire [7:0]D;
  wire [0:0]Q;
  wire clk;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[0]_i_6_n_0 ;
  wire \cnt[0]_i_7_n_0 ;
  wire [15:0]cnt_reg;
  wire \cnt_reg[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_2_n_1 ;
  wire \cnt_reg[0]_i_2_n_2 ;
  wire \cnt_reg[0]_i_2_n_3 ;
  wire \cnt_reg[0]_i_2_n_4 ;
  wire \cnt_reg[0]_i_2_n_5 ;
  wire \cnt_reg[0]_i_2_n_6 ;
  wire \cnt_reg[0]_i_2_n_7 ;
  wire \cnt_reg[10]_0 ;
  wire \cnt_reg[11]_0 ;
  wire \cnt_reg[12]_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[13]_0 ;
  wire \cnt_reg[14]_0 ;
  wire \cnt_reg[15]_0 ;
  wire \cnt_reg[4]_0 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[5]_0 ;
  wire \cnt_reg[6]_0 ;
  wire [3:0]\cnt_reg[7]_0 ;
  wire \cnt_reg[7]_1 ;
  wire \cnt_reg[8]_0 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg[9]_0 ;
  wire [7:0]\dac1_reg[15] ;
  wire reset;
  wire [3:3]\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \cnt[0]_i_1 
       (.I0(reset),
        .I1(\cnt[0]_i_3_n_0 ),
        .I2(\cnt[0]_i_4_n_0 ),
        .I3(\cnt[0]_i_5_n_0 ),
        .I4(\cnt[0]_i_6_n_0 ),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[0]_i_3 
       (.I0(cnt_reg[9]),
        .I1(\cnt_reg[7]_0 [0]),
        .I2(cnt_reg[14]),
        .I3(cnt_reg[2]),
        .O(\cnt[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[0]_i_4 
       (.I0(cnt_reg[13]),
        .I1(\cnt_reg[7]_0 [3]),
        .I2(cnt_reg[15]),
        .I3(\cnt_reg[7]_0 [1]),
        .O(\cnt[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt[0]_i_5 
       (.I0(cnt_reg[12]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[3]),
        .O(\cnt[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cnt[0]_i_6 
       (.I0(cnt_reg[10]),
        .I1(cnt_reg[11]),
        .I2(cnt_reg[8]),
        .I3(\cnt_reg[7]_0 [2]),
        .O(\cnt[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_7 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_7_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_7 ),
        .Q(cnt_reg[0]),
        .R(\cnt[0]_i_1_n_0 ));
  CARRY4 \cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_2_n_0 ,\cnt_reg[0]_i_2_n_1 ,\cnt_reg[0]_i_2_n_2 ,\cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_2_n_4 ,\cnt_reg[0]_i_2_n_5 ,\cnt_reg[0]_i_2_n_6 ,\cnt_reg[0]_i_2_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_7_n_0 }));
  FDRE \cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]),
        .R(\cnt[0]_i_1_n_0 ));
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S(cnt_reg[15:12]));
  FDRE \cnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_6 ),
        .Q(cnt_reg[1]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_5 ),
        .Q(cnt_reg[2]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_4 ),
        .Q(cnt_reg[3]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(\cnt_reg[7]_0 [0]),
        .R(\cnt[0]_i_1_n_0 ));
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_2_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(\cnt_reg[7]_0 ));
  FDRE \cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(\cnt_reg[7]_0 [1]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(\cnt_reg[7]_0 [2]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(\cnt_reg[7]_0 [3]),
        .R(\cnt[0]_i_1_n_0 ));
  FDRE \cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(\cnt[0]_i_1_n_0 ));
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S(cnt_reg[11:8]));
  FDRE \cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dac0[10]_i_1 
       (.I0(cnt_reg[10]),
        .O(\cnt_reg[10]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dac0[11]_i_1 
       (.I0(cnt_reg[11]),
        .O(\cnt_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dac0[12]_i_1 
       (.I0(cnt_reg[12]),
        .O(\cnt_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dac0[13]_i_1 
       (.I0(cnt_reg[13]),
        .O(\cnt_reg[13]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dac0[14]_i_1 
       (.I0(cnt_reg[14]),
        .O(\cnt_reg[14]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dac0[15]_i_2 
       (.I0(cnt_reg[15]),
        .O(\cnt_reg[15]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac0[4]_i_1 
       (.I0(\cnt_reg[7]_0 [0]),
        .O(\cnt_reg[4]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac0[5]_i_1 
       (.I0(\cnt_reg[7]_0 [1]),
        .O(\cnt_reg[5]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac0[6]_i_1 
       (.I0(\cnt_reg[7]_0 [2]),
        .O(\cnt_reg[6]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \dac0[7]_i_1 
       (.I0(\cnt_reg[7]_0 [3]),
        .O(\cnt_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dac0[8]_i_1 
       (.I0(cnt_reg[8]),
        .O(\cnt_reg[8]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dac0[9]_i_1 
       (.I0(cnt_reg[9]),
        .O(\cnt_reg[9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac1[10]_i_1 
       (.I0(cnt_reg[10]),
        .I1(Q),
        .I2(\dac1_reg[15] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac1[11]_i_1 
       (.I0(cnt_reg[11]),
        .I1(Q),
        .I2(\dac1_reg[15] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac1[12]_i_1 
       (.I0(cnt_reg[12]),
        .I1(Q),
        .I2(\dac1_reg[15] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac1[13]_i_1 
       (.I0(cnt_reg[13]),
        .I1(Q),
        .I2(\dac1_reg[15] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac1[14]_i_1 
       (.I0(cnt_reg[14]),
        .I1(Q),
        .I2(\dac1_reg[15] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac1[15]_i_1 
       (.I0(cnt_reg[15]),
        .I1(Q),
        .I2(\dac1_reg[15] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac1[8]_i_1 
       (.I0(cnt_reg[8]),
        .I1(Q),
        .I2(\dac1_reg[15] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \dac1[9]_i_1 
       (.I0(cnt_reg[9]),
        .I1(Q),
        .I2(\dac1_reg[15] [1]),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "comp_signal_synchr" *) 
module system_sbus_awfg_0_0_comp_signal_synchr
   (Q,
    clk,
    D);
  output [7:0]Q;
  input clk;
  input [7:0]D;

  wire [7:0]D;
  wire [7:0]Q;
  wire clk;
  wire [11:4]signal_vec_q0;
  wire [11:4]signal_vec_q1;
  wire [11:4]signal_vec_q2;
  wire \signal_vec_q2[11]_i_1_n_0 ;
  wire \signal_vec_q2[11]_i_2_n_0 ;
  wire \signal_vec_q2[11]_i_3_n_0 ;
  wire \signal_vec_q2[11]_i_4_n_0 ;
  wire \signal_vec_q2[11]_i_5_n_0 ;
  wire \signal_vec_q2[11]_i_6_n_0 ;
  wire \signal_vec_q2[11]_i_7_n_0 ;
  wire \timer_debounce[0]_i_2_n_0 ;
  wire [27:0]timer_debounce_reg;
  wire \timer_debounce_reg[0]_i_1_n_0 ;
  wire \timer_debounce_reg[0]_i_1_n_1 ;
  wire \timer_debounce_reg[0]_i_1_n_2 ;
  wire \timer_debounce_reg[0]_i_1_n_3 ;
  wire \timer_debounce_reg[0]_i_1_n_4 ;
  wire \timer_debounce_reg[0]_i_1_n_5 ;
  wire \timer_debounce_reg[0]_i_1_n_6 ;
  wire \timer_debounce_reg[0]_i_1_n_7 ;
  wire \timer_debounce_reg[12]_i_1_n_0 ;
  wire \timer_debounce_reg[12]_i_1_n_1 ;
  wire \timer_debounce_reg[12]_i_1_n_2 ;
  wire \timer_debounce_reg[12]_i_1_n_3 ;
  wire \timer_debounce_reg[12]_i_1_n_4 ;
  wire \timer_debounce_reg[12]_i_1_n_5 ;
  wire \timer_debounce_reg[12]_i_1_n_6 ;
  wire \timer_debounce_reg[12]_i_1_n_7 ;
  wire \timer_debounce_reg[16]_i_1_n_0 ;
  wire \timer_debounce_reg[16]_i_1_n_1 ;
  wire \timer_debounce_reg[16]_i_1_n_2 ;
  wire \timer_debounce_reg[16]_i_1_n_3 ;
  wire \timer_debounce_reg[16]_i_1_n_4 ;
  wire \timer_debounce_reg[16]_i_1_n_5 ;
  wire \timer_debounce_reg[16]_i_1_n_6 ;
  wire \timer_debounce_reg[16]_i_1_n_7 ;
  wire \timer_debounce_reg[20]_i_1_n_0 ;
  wire \timer_debounce_reg[20]_i_1_n_1 ;
  wire \timer_debounce_reg[20]_i_1_n_2 ;
  wire \timer_debounce_reg[20]_i_1_n_3 ;
  wire \timer_debounce_reg[20]_i_1_n_4 ;
  wire \timer_debounce_reg[20]_i_1_n_5 ;
  wire \timer_debounce_reg[20]_i_1_n_6 ;
  wire \timer_debounce_reg[20]_i_1_n_7 ;
  wire \timer_debounce_reg[24]_i_1_n_1 ;
  wire \timer_debounce_reg[24]_i_1_n_2 ;
  wire \timer_debounce_reg[24]_i_1_n_3 ;
  wire \timer_debounce_reg[24]_i_1_n_4 ;
  wire \timer_debounce_reg[24]_i_1_n_5 ;
  wire \timer_debounce_reg[24]_i_1_n_6 ;
  wire \timer_debounce_reg[24]_i_1_n_7 ;
  wire \timer_debounce_reg[4]_i_1_n_0 ;
  wire \timer_debounce_reg[4]_i_1_n_1 ;
  wire \timer_debounce_reg[4]_i_1_n_2 ;
  wire \timer_debounce_reg[4]_i_1_n_3 ;
  wire \timer_debounce_reg[4]_i_1_n_4 ;
  wire \timer_debounce_reg[4]_i_1_n_5 ;
  wire \timer_debounce_reg[4]_i_1_n_6 ;
  wire \timer_debounce_reg[4]_i_1_n_7 ;
  wire \timer_debounce_reg[8]_i_1_n_0 ;
  wire \timer_debounce_reg[8]_i_1_n_1 ;
  wire \timer_debounce_reg[8]_i_1_n_2 ;
  wire \timer_debounce_reg[8]_i_1_n_3 ;
  wire \timer_debounce_reg[8]_i_1_n_4 ;
  wire \timer_debounce_reg[8]_i_1_n_5 ;
  wire \timer_debounce_reg[8]_i_1_n_6 ;
  wire \timer_debounce_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_timer_debounce_reg[24]_i_1_CO_UNCONNECTED ;

  FDRE \signal_vec_q0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(signal_vec_q0[10]),
        .R(1'b0));
  FDRE \signal_vec_q0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(signal_vec_q0[11]),
        .R(1'b0));
  FDRE \signal_vec_q0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(signal_vec_q0[4]),
        .R(1'b0));
  FDRE \signal_vec_q0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(signal_vec_q0[5]),
        .R(1'b0));
  FDRE \signal_vec_q0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(signal_vec_q0[6]),
        .R(1'b0));
  FDRE \signal_vec_q0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(signal_vec_q0[7]),
        .R(1'b0));
  FDRE \signal_vec_q0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(signal_vec_q0[8]),
        .R(1'b0));
  FDRE \signal_vec_q0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(signal_vec_q0[9]),
        .R(1'b0));
  FDRE \signal_vec_q1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q0[10]),
        .Q(signal_vec_q1[10]),
        .R(1'b0));
  FDRE \signal_vec_q1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q0[11]),
        .Q(signal_vec_q1[11]),
        .R(1'b0));
  FDRE \signal_vec_q1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q0[4]),
        .Q(signal_vec_q1[4]),
        .R(1'b0));
  FDRE \signal_vec_q1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q0[5]),
        .Q(signal_vec_q1[5]),
        .R(1'b0));
  FDRE \signal_vec_q1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q0[6]),
        .Q(signal_vec_q1[6]),
        .R(1'b0));
  FDRE \signal_vec_q1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q0[7]),
        .Q(signal_vec_q1[7]),
        .R(1'b0));
  FDRE \signal_vec_q1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q0[8]),
        .Q(signal_vec_q1[8]),
        .R(1'b0));
  FDRE \signal_vec_q1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q0[9]),
        .Q(signal_vec_q1[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \signal_vec_q2[11]_i_1 
       (.I0(\signal_vec_q2[11]_i_2_n_0 ),
        .I1(timer_debounce_reg[27]),
        .I2(timer_debounce_reg[22]),
        .I3(timer_debounce_reg[24]),
        .I4(timer_debounce_reg[3]),
        .I5(\signal_vec_q2[11]_i_3_n_0 ),
        .O(\signal_vec_q2[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \signal_vec_q2[11]_i_2 
       (.I0(timer_debounce_reg[17]),
        .I1(timer_debounce_reg[25]),
        .I2(timer_debounce_reg[7]),
        .I3(timer_debounce_reg[2]),
        .I4(\signal_vec_q2[11]_i_4_n_0 ),
        .O(\signal_vec_q2[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \signal_vec_q2[11]_i_3 
       (.I0(\signal_vec_q2[11]_i_5_n_0 ),
        .I1(timer_debounce_reg[11]),
        .I2(timer_debounce_reg[16]),
        .I3(timer_debounce_reg[15]),
        .I4(timer_debounce_reg[4]),
        .I5(\signal_vec_q2[11]_i_6_n_0 ),
        .O(\signal_vec_q2[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \signal_vec_q2[11]_i_4 
       (.I0(timer_debounce_reg[19]),
        .I1(timer_debounce_reg[8]),
        .I2(timer_debounce_reg[13]),
        .I3(timer_debounce_reg[21]),
        .O(\signal_vec_q2[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \signal_vec_q2[11]_i_5 
       (.I0(timer_debounce_reg[23]),
        .I1(timer_debounce_reg[9]),
        .I2(timer_debounce_reg[14]),
        .I3(timer_debounce_reg[5]),
        .O(\signal_vec_q2[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \signal_vec_q2[11]_i_6 
       (.I0(timer_debounce_reg[18]),
        .I1(timer_debounce_reg[1]),
        .I2(timer_debounce_reg[10]),
        .I3(timer_debounce_reg[0]),
        .I4(\signal_vec_q2[11]_i_7_n_0 ),
        .O(\signal_vec_q2[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \signal_vec_q2[11]_i_7 
       (.I0(timer_debounce_reg[6]),
        .I1(timer_debounce_reg[26]),
        .I2(timer_debounce_reg[12]),
        .I3(timer_debounce_reg[20]),
        .O(\signal_vec_q2[11]_i_7_n_0 ));
  FDRE \signal_vec_q2_reg[10] 
       (.C(clk),
        .CE(\signal_vec_q2[11]_i_1_n_0 ),
        .D(signal_vec_q1[10]),
        .Q(signal_vec_q2[10]),
        .R(1'b0));
  FDRE \signal_vec_q2_reg[11] 
       (.C(clk),
        .CE(\signal_vec_q2[11]_i_1_n_0 ),
        .D(signal_vec_q1[11]),
        .Q(signal_vec_q2[11]),
        .R(1'b0));
  FDRE \signal_vec_q2_reg[4] 
       (.C(clk),
        .CE(\signal_vec_q2[11]_i_1_n_0 ),
        .D(signal_vec_q1[4]),
        .Q(signal_vec_q2[4]),
        .R(1'b0));
  FDRE \signal_vec_q2_reg[5] 
       (.C(clk),
        .CE(\signal_vec_q2[11]_i_1_n_0 ),
        .D(signal_vec_q1[5]),
        .Q(signal_vec_q2[5]),
        .R(1'b0));
  FDRE \signal_vec_q2_reg[6] 
       (.C(clk),
        .CE(\signal_vec_q2[11]_i_1_n_0 ),
        .D(signal_vec_q1[6]),
        .Q(signal_vec_q2[6]),
        .R(1'b0));
  FDRE \signal_vec_q2_reg[7] 
       (.C(clk),
        .CE(\signal_vec_q2[11]_i_1_n_0 ),
        .D(signal_vec_q1[7]),
        .Q(signal_vec_q2[7]),
        .R(1'b0));
  FDRE \signal_vec_q2_reg[8] 
       (.C(clk),
        .CE(\signal_vec_q2[11]_i_1_n_0 ),
        .D(signal_vec_q1[8]),
        .Q(signal_vec_q2[8]),
        .R(1'b0));
  FDRE \signal_vec_q2_reg[9] 
       (.C(clk),
        .CE(\signal_vec_q2[11]_i_1_n_0 ),
        .D(signal_vec_q1[9]),
        .Q(signal_vec_q2[9]),
        .R(1'b0));
  FDRE \signal_vec_q3_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q2[10]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \signal_vec_q3_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q2[11]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \signal_vec_q3_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q2[4]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \signal_vec_q3_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q2[5]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \signal_vec_q3_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q2[6]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \signal_vec_q3_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q2[7]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \signal_vec_q3_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q2[8]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \signal_vec_q3_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(signal_vec_q2[9]),
        .Q(Q[5]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \timer_debounce[0]_i_2 
       (.I0(timer_debounce_reg[0]),
        .O(\timer_debounce[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[0]_i_1_n_7 ),
        .Q(timer_debounce_reg[0]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  CARRY4 \timer_debounce_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\timer_debounce_reg[0]_i_1_n_0 ,\timer_debounce_reg[0]_i_1_n_1 ,\timer_debounce_reg[0]_i_1_n_2 ,\timer_debounce_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\timer_debounce_reg[0]_i_1_n_4 ,\timer_debounce_reg[0]_i_1_n_5 ,\timer_debounce_reg[0]_i_1_n_6 ,\timer_debounce_reg[0]_i_1_n_7 }),
        .S({timer_debounce_reg[3:1],\timer_debounce[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[8]_i_1_n_5 ),
        .Q(timer_debounce_reg[10]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[8]_i_1_n_4 ),
        .Q(timer_debounce_reg[11]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[12]_i_1_n_7 ),
        .Q(timer_debounce_reg[12]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  CARRY4 \timer_debounce_reg[12]_i_1 
       (.CI(\timer_debounce_reg[8]_i_1_n_0 ),
        .CO({\timer_debounce_reg[12]_i_1_n_0 ,\timer_debounce_reg[12]_i_1_n_1 ,\timer_debounce_reg[12]_i_1_n_2 ,\timer_debounce_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_debounce_reg[12]_i_1_n_4 ,\timer_debounce_reg[12]_i_1_n_5 ,\timer_debounce_reg[12]_i_1_n_6 ,\timer_debounce_reg[12]_i_1_n_7 }),
        .S(timer_debounce_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[12]_i_1_n_6 ),
        .Q(timer_debounce_reg[13]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[12]_i_1_n_5 ),
        .Q(timer_debounce_reg[14]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[12]_i_1_n_4 ),
        .Q(timer_debounce_reg[15]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[16]_i_1_n_7 ),
        .Q(timer_debounce_reg[16]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  CARRY4 \timer_debounce_reg[16]_i_1 
       (.CI(\timer_debounce_reg[12]_i_1_n_0 ),
        .CO({\timer_debounce_reg[16]_i_1_n_0 ,\timer_debounce_reg[16]_i_1_n_1 ,\timer_debounce_reg[16]_i_1_n_2 ,\timer_debounce_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_debounce_reg[16]_i_1_n_4 ,\timer_debounce_reg[16]_i_1_n_5 ,\timer_debounce_reg[16]_i_1_n_6 ,\timer_debounce_reg[16]_i_1_n_7 }),
        .S(timer_debounce_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[16]_i_1_n_6 ),
        .Q(timer_debounce_reg[17]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[16]_i_1_n_5 ),
        .Q(timer_debounce_reg[18]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[16]_i_1_n_4 ),
        .Q(timer_debounce_reg[19]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[0]_i_1_n_6 ),
        .Q(timer_debounce_reg[1]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[20]_i_1_n_7 ),
        .Q(timer_debounce_reg[20]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  CARRY4 \timer_debounce_reg[20]_i_1 
       (.CI(\timer_debounce_reg[16]_i_1_n_0 ),
        .CO({\timer_debounce_reg[20]_i_1_n_0 ,\timer_debounce_reg[20]_i_1_n_1 ,\timer_debounce_reg[20]_i_1_n_2 ,\timer_debounce_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_debounce_reg[20]_i_1_n_4 ,\timer_debounce_reg[20]_i_1_n_5 ,\timer_debounce_reg[20]_i_1_n_6 ,\timer_debounce_reg[20]_i_1_n_7 }),
        .S(timer_debounce_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[20]_i_1_n_6 ),
        .Q(timer_debounce_reg[21]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[20]_i_1_n_5 ),
        .Q(timer_debounce_reg[22]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[20]_i_1_n_4 ),
        .Q(timer_debounce_reg[23]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[24]_i_1_n_7 ),
        .Q(timer_debounce_reg[24]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  CARRY4 \timer_debounce_reg[24]_i_1 
       (.CI(\timer_debounce_reg[20]_i_1_n_0 ),
        .CO({\NLW_timer_debounce_reg[24]_i_1_CO_UNCONNECTED [3],\timer_debounce_reg[24]_i_1_n_1 ,\timer_debounce_reg[24]_i_1_n_2 ,\timer_debounce_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_debounce_reg[24]_i_1_n_4 ,\timer_debounce_reg[24]_i_1_n_5 ,\timer_debounce_reg[24]_i_1_n_6 ,\timer_debounce_reg[24]_i_1_n_7 }),
        .S(timer_debounce_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[24]_i_1_n_6 ),
        .Q(timer_debounce_reg[25]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[24]_i_1_n_5 ),
        .Q(timer_debounce_reg[26]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[24]_i_1_n_4 ),
        .Q(timer_debounce_reg[27]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[0]_i_1_n_5 ),
        .Q(timer_debounce_reg[2]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[0]_i_1_n_4 ),
        .Q(timer_debounce_reg[3]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[4]_i_1_n_7 ),
        .Q(timer_debounce_reg[4]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  CARRY4 \timer_debounce_reg[4]_i_1 
       (.CI(\timer_debounce_reg[0]_i_1_n_0 ),
        .CO({\timer_debounce_reg[4]_i_1_n_0 ,\timer_debounce_reg[4]_i_1_n_1 ,\timer_debounce_reg[4]_i_1_n_2 ,\timer_debounce_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_debounce_reg[4]_i_1_n_4 ,\timer_debounce_reg[4]_i_1_n_5 ,\timer_debounce_reg[4]_i_1_n_6 ,\timer_debounce_reg[4]_i_1_n_7 }),
        .S(timer_debounce_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[4]_i_1_n_6 ),
        .Q(timer_debounce_reg[5]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[4]_i_1_n_5 ),
        .Q(timer_debounce_reg[6]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[4]_i_1_n_4 ),
        .Q(timer_debounce_reg[7]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[8]_i_1_n_7 ),
        .Q(timer_debounce_reg[8]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
  CARRY4 \timer_debounce_reg[8]_i_1 
       (.CI(\timer_debounce_reg[4]_i_1_n_0 ),
        .CO({\timer_debounce_reg[8]_i_1_n_0 ,\timer_debounce_reg[8]_i_1_n_1 ,\timer_debounce_reg[8]_i_1_n_2 ,\timer_debounce_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_debounce_reg[8]_i_1_n_4 ,\timer_debounce_reg[8]_i_1_n_5 ,\timer_debounce_reg[8]_i_1_n_6 ,\timer_debounce_reg[8]_i_1_n_7 }),
        .S(timer_debounce_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_debounce_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_debounce_reg[8]_i_1_n_6 ),
        .Q(timer_debounce_reg[9]),
        .R(\signal_vec_q2[11]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "comp_timer" *) 
module system_sbus_awfg_0_0_comp_timer
   (sample_daq,
    clk,
    reset);
  output sample_daq;
  input clk;
  input reset;

  wire clk;
  wire reset;
  wire sample_daq;
  wire \timer[0]_i_10_n_0 ;
  wire \timer[0]_i_11_n_0 ;
  wire \timer[0]_i_12_n_0 ;
  wire \timer[0]_i_1_n_0 ;
  wire \timer[0]_i_4_n_0 ;
  wire \timer[0]_i_5_n_0 ;
  wire \timer[0]_i_6_n_0 ;
  wire \timer[0]_i_7_n_0 ;
  wire \timer[0]_i_8_n_0 ;
  wire \timer[0]_i_9_n_0 ;
  wire [31:0]timer_reg;
  wire \timer_reg[0]_i_2_n_0 ;
  wire \timer_reg[0]_i_2_n_1 ;
  wire \timer_reg[0]_i_2_n_2 ;
  wire \timer_reg[0]_i_2_n_3 ;
  wire \timer_reg[0]_i_2_n_4 ;
  wire \timer_reg[0]_i_2_n_5 ;
  wire \timer_reg[0]_i_2_n_6 ;
  wire \timer_reg[0]_i_2_n_7 ;
  wire \timer_reg[12]_i_1_n_0 ;
  wire \timer_reg[12]_i_1_n_1 ;
  wire \timer_reg[12]_i_1_n_2 ;
  wire \timer_reg[12]_i_1_n_3 ;
  wire \timer_reg[12]_i_1_n_4 ;
  wire \timer_reg[12]_i_1_n_5 ;
  wire \timer_reg[12]_i_1_n_6 ;
  wire \timer_reg[12]_i_1_n_7 ;
  wire \timer_reg[16]_i_1_n_0 ;
  wire \timer_reg[16]_i_1_n_1 ;
  wire \timer_reg[16]_i_1_n_2 ;
  wire \timer_reg[16]_i_1_n_3 ;
  wire \timer_reg[16]_i_1_n_4 ;
  wire \timer_reg[16]_i_1_n_5 ;
  wire \timer_reg[16]_i_1_n_6 ;
  wire \timer_reg[16]_i_1_n_7 ;
  wire \timer_reg[20]_i_1_n_0 ;
  wire \timer_reg[20]_i_1_n_1 ;
  wire \timer_reg[20]_i_1_n_2 ;
  wire \timer_reg[20]_i_1_n_3 ;
  wire \timer_reg[20]_i_1_n_4 ;
  wire \timer_reg[20]_i_1_n_5 ;
  wire \timer_reg[20]_i_1_n_6 ;
  wire \timer_reg[20]_i_1_n_7 ;
  wire \timer_reg[24]_i_1_n_0 ;
  wire \timer_reg[24]_i_1_n_1 ;
  wire \timer_reg[24]_i_1_n_2 ;
  wire \timer_reg[24]_i_1_n_3 ;
  wire \timer_reg[24]_i_1_n_4 ;
  wire \timer_reg[24]_i_1_n_5 ;
  wire \timer_reg[24]_i_1_n_6 ;
  wire \timer_reg[24]_i_1_n_7 ;
  wire \timer_reg[28]_i_1_n_1 ;
  wire \timer_reg[28]_i_1_n_2 ;
  wire \timer_reg[28]_i_1_n_3 ;
  wire \timer_reg[28]_i_1_n_4 ;
  wire \timer_reg[28]_i_1_n_5 ;
  wire \timer_reg[28]_i_1_n_6 ;
  wire \timer_reg[28]_i_1_n_7 ;
  wire \timer_reg[4]_i_1_n_0 ;
  wire \timer_reg[4]_i_1_n_1 ;
  wire \timer_reg[4]_i_1_n_2 ;
  wire \timer_reg[4]_i_1_n_3 ;
  wire \timer_reg[4]_i_1_n_4 ;
  wire \timer_reg[4]_i_1_n_5 ;
  wire \timer_reg[4]_i_1_n_6 ;
  wire \timer_reg[4]_i_1_n_7 ;
  wire \timer_reg[8]_i_1_n_0 ;
  wire \timer_reg[8]_i_1_n_1 ;
  wire \timer_reg[8]_i_1_n_2 ;
  wire \timer_reg[8]_i_1_n_3 ;
  wire \timer_reg[8]_i_1_n_4 ;
  wire \timer_reg[8]_i_1_n_5 ;
  wire \timer_reg[8]_i_1_n_6 ;
  wire \timer_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_timer_reg[28]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \timer[0]_i_1 
       (.I0(reset),
        .I1(sample_daq),
        .O(\timer[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \timer[0]_i_10 
       (.I0(timer_reg[4]),
        .I1(timer_reg[3]),
        .I2(timer_reg[1]),
        .I3(timer_reg[15]),
        .O(\timer[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[0]_i_11 
       (.I0(timer_reg[23]),
        .I1(timer_reg[7]),
        .I2(timer_reg[25]),
        .I3(timer_reg[13]),
        .O(\timer[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \timer[0]_i_12 
       (.I0(timer_reg[0]),
        .I1(timer_reg[17]),
        .I2(timer_reg[6]),
        .I3(timer_reg[2]),
        .O(\timer[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \timer[0]_i_3 
       (.I0(\timer[0]_i_5_n_0 ),
        .I1(\timer[0]_i_6_n_0 ),
        .I2(\timer[0]_i_7_n_0 ),
        .I3(\timer[0]_i_8_n_0 ),
        .O(sample_daq));
  LUT1 #(
    .INIT(2'h1)) 
    \timer[0]_i_4 
       (.I0(timer_reg[0]),
        .O(\timer[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[0]_i_5 
       (.I0(timer_reg[8]),
        .I1(timer_reg[28]),
        .I2(timer_reg[11]),
        .I3(timer_reg[24]),
        .I4(\timer[0]_i_9_n_0 ),
        .O(\timer[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \timer[0]_i_6 
       (.I0(timer_reg[22]),
        .I1(timer_reg[16]),
        .I2(timer_reg[10]),
        .I3(timer_reg[31]),
        .I4(\timer[0]_i_10_n_0 ),
        .O(\timer[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \timer[0]_i_7 
       (.I0(timer_reg[12]),
        .I1(timer_reg[5]),
        .I2(timer_reg[21]),
        .I3(timer_reg[19]),
        .I4(\timer[0]_i_11_n_0 ),
        .O(\timer[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer[0]_i_8 
       (.I0(timer_reg[20]),
        .I1(timer_reg[18]),
        .I2(timer_reg[9]),
        .I3(timer_reg[29]),
        .I4(\timer[0]_i_12_n_0 ),
        .O(\timer[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer[0]_i_9 
       (.I0(timer_reg[26]),
        .I1(timer_reg[14]),
        .I2(timer_reg[30]),
        .I3(timer_reg[27]),
        .O(\timer[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_2_n_7 ),
        .Q(timer_reg[0]),
        .R(\timer[0]_i_1_n_0 ));
  CARRY4 \timer_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\timer_reg[0]_i_2_n_0 ,\timer_reg[0]_i_2_n_1 ,\timer_reg[0]_i_2_n_2 ,\timer_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\timer_reg[0]_i_2_n_4 ,\timer_reg[0]_i_2_n_5 ,\timer_reg[0]_i_2_n_6 ,\timer_reg[0]_i_2_n_7 }),
        .S({timer_reg[3:1],\timer[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_5 ),
        .Q(timer_reg[10]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_4 ),
        .Q(timer_reg[11]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_7 ),
        .Q(timer_reg[12]),
        .R(\timer[0]_i_1_n_0 ));
  CARRY4 \timer_reg[12]_i_1 
       (.CI(\timer_reg[8]_i_1_n_0 ),
        .CO({\timer_reg[12]_i_1_n_0 ,\timer_reg[12]_i_1_n_1 ,\timer_reg[12]_i_1_n_2 ,\timer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[12]_i_1_n_4 ,\timer_reg[12]_i_1_n_5 ,\timer_reg[12]_i_1_n_6 ,\timer_reg[12]_i_1_n_7 }),
        .S(timer_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_6 ),
        .Q(timer_reg[13]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_5 ),
        .Q(timer_reg[14]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[12]_i_1_n_4 ),
        .Q(timer_reg[15]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_7 ),
        .Q(timer_reg[16]),
        .R(\timer[0]_i_1_n_0 ));
  CARRY4 \timer_reg[16]_i_1 
       (.CI(\timer_reg[12]_i_1_n_0 ),
        .CO({\timer_reg[16]_i_1_n_0 ,\timer_reg[16]_i_1_n_1 ,\timer_reg[16]_i_1_n_2 ,\timer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[16]_i_1_n_4 ,\timer_reg[16]_i_1_n_5 ,\timer_reg[16]_i_1_n_6 ,\timer_reg[16]_i_1_n_7 }),
        .S(timer_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_6 ),
        .Q(timer_reg[17]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_5 ),
        .Q(timer_reg[18]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[16]_i_1_n_4 ),
        .Q(timer_reg[19]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_2_n_6 ),
        .Q(timer_reg[1]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_7 ),
        .Q(timer_reg[20]),
        .R(\timer[0]_i_1_n_0 ));
  CARRY4 \timer_reg[20]_i_1 
       (.CI(\timer_reg[16]_i_1_n_0 ),
        .CO({\timer_reg[20]_i_1_n_0 ,\timer_reg[20]_i_1_n_1 ,\timer_reg[20]_i_1_n_2 ,\timer_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[20]_i_1_n_4 ,\timer_reg[20]_i_1_n_5 ,\timer_reg[20]_i_1_n_6 ,\timer_reg[20]_i_1_n_7 }),
        .S(timer_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_6 ),
        .Q(timer_reg[21]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_5 ),
        .Q(timer_reg[22]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[20]_i_1_n_4 ),
        .Q(timer_reg[23]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_7 ),
        .Q(timer_reg[24]),
        .R(\timer[0]_i_1_n_0 ));
  CARRY4 \timer_reg[24]_i_1 
       (.CI(\timer_reg[20]_i_1_n_0 ),
        .CO({\timer_reg[24]_i_1_n_0 ,\timer_reg[24]_i_1_n_1 ,\timer_reg[24]_i_1_n_2 ,\timer_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[24]_i_1_n_4 ,\timer_reg[24]_i_1_n_5 ,\timer_reg[24]_i_1_n_6 ,\timer_reg[24]_i_1_n_7 }),
        .S(timer_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_6 ),
        .Q(timer_reg[25]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_5 ),
        .Q(timer_reg[26]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[24]_i_1_n_4 ),
        .Q(timer_reg[27]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_7 ),
        .Q(timer_reg[28]),
        .R(\timer[0]_i_1_n_0 ));
  CARRY4 \timer_reg[28]_i_1 
       (.CI(\timer_reg[24]_i_1_n_0 ),
        .CO({\NLW_timer_reg[28]_i_1_CO_UNCONNECTED [3],\timer_reg[28]_i_1_n_1 ,\timer_reg[28]_i_1_n_2 ,\timer_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[28]_i_1_n_4 ,\timer_reg[28]_i_1_n_5 ,\timer_reg[28]_i_1_n_6 ,\timer_reg[28]_i_1_n_7 }),
        .S(timer_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_6 ),
        .Q(timer_reg[29]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_2_n_5 ),
        .Q(timer_reg[2]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_5 ),
        .Q(timer_reg[30]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[28]_i_1_n_4 ),
        .Q(timer_reg[31]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[0]_i_2_n_4 ),
        .Q(timer_reg[3]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_7 ),
        .Q(timer_reg[4]),
        .R(\timer[0]_i_1_n_0 ));
  CARRY4 \timer_reg[4]_i_1 
       (.CI(\timer_reg[0]_i_2_n_0 ),
        .CO({\timer_reg[4]_i_1_n_0 ,\timer_reg[4]_i_1_n_1 ,\timer_reg[4]_i_1_n_2 ,\timer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[4]_i_1_n_4 ,\timer_reg[4]_i_1_n_5 ,\timer_reg[4]_i_1_n_6 ,\timer_reg[4]_i_1_n_7 }),
        .S(timer_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_6 ),
        .Q(timer_reg[5]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_5 ),
        .Q(timer_reg[6]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[4]_i_1_n_4 ),
        .Q(timer_reg[7]),
        .R(\timer[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_7 ),
        .Q(timer_reg[8]),
        .R(\timer[0]_i_1_n_0 ));
  CARRY4 \timer_reg[8]_i_1 
       (.CI(\timer_reg[4]_i_1_n_0 ),
        .CO({\timer_reg[8]_i_1_n_0 ,\timer_reg[8]_i_1_n_1 ,\timer_reg[8]_i_1_n_2 ,\timer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\timer_reg[8]_i_1_n_4 ,\timer_reg[8]_i_1_n_5 ,\timer_reg[8]_i_1_n_6 ,\timer_reg[8]_i_1_n_7 }),
        .S(timer_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \timer_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\timer_reg[8]_i_1_n_6 ),
        .Q(timer_reg[9]),
        .R(\timer[0]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "dac_ctrl" *) 
module system_sbus_awfg_0_0_dac_ctrl
   (dac_sclk,
    dac_sync,
    dac_sdin0,
    dac_sdin1,
    reset,
    clk,
    dac0,
    dac1,
    sample_daq);
  output dac_sclk;
  output dac_sync;
  output dac_sdin0;
  output dac_sdin1;
  input reset;
  input clk;
  input [11:0]dac0;
  input [11:0]dac1;
  input sample_daq;

  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire \bit_cnt[0]_i_1__0_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1__0_n_0 ;
  wire \bit_cnt[3]_i_1__0_n_0 ;
  wire \bit_cnt[4]_i_1_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire \bit_cnt_reg_n_0_[3] ;
  wire \bit_cnt_reg_n_0_[4] ;
  wire clk;
  wire [1:0]current_state;
  wire [11:0]dac0;
  wire [11:0]dac1;
  wire dac_sclk;
  wire dac_sdin0;
  wire dac_sdin1;
  wire dac_sync;
  wire [2:0]fsm_en_cnt;
  wire \fsm_en_cnt[0]_i_1_n_0 ;
  wire \fsm_en_cnt[1]_i_1_n_0 ;
  wire \fsm_en_cnt[2]_i_1_n_0 ;
  wire reset;
  wire sample_dac_reg;
  wire sample_dac_reg_i_1_n_0;
  wire sample_daq;
  wire sclk_tmp_i_1_n_0;
  wire sclk_tmp_i_2_n_0;
  wire sync_tmp;
  wire sync_tmp_i_1_n_0;
  wire sync_tmp_i_2_n_0;
  wire [14:2]txreg0;
  wire [13:2]txreg00_in;
  wire \txreg0[15]_i_1_n_0 ;
  wire \txreg0[15]_i_2_n_0 ;
  wire [13:2]txreg1;
  wire \txreg1_reg_n_0_[10] ;
  wire \txreg1_reg_n_0_[11] ;
  wire \txreg1_reg_n_0_[12] ;
  wire \txreg1_reg_n_0_[13] ;
  wire \txreg1_reg_n_0_[14] ;
  wire \txreg1_reg_n_0_[2] ;
  wire \txreg1_reg_n_0_[3] ;
  wire \txreg1_reg_n_0_[4] ;
  wire \txreg1_reg_n_0_[5] ;
  wire \txreg1_reg_n_0_[6] ;
  wire \txreg1_reg_n_0_[7] ;
  wire \txreg1_reg_n_0_[8] ;
  wire \txreg1_reg_n_0_[9] ;

  LUT6 #(
    .INIT(64'hFFFFF0FF00000E00)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(sample_dac_reg),
        .I1(current_state[1]),
        .I2(fsm_en_cnt[0]),
        .I3(fsm_en_cnt[1]),
        .I4(fsm_en_cnt[2]),
        .I5(current_state[0]),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF4FF00000E00)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(sync_tmp),
        .I2(fsm_en_cnt[0]),
        .I3(fsm_en_cnt[1]),
        .I4(fsm_en_cnt[2]),
        .I5(current_state[1]),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s1:10,s_wait:00,s0:01,s_end:11" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "s1:10,s_wait:00,s0:01,s_end:11" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state[1]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[0]_i_1__0 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(current_state[1]),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bit_cnt[2]_i_1__0 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bit_cnt[3]_i_1__0 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \bit_cnt[4]_i_1 
       (.I0(\bit_cnt_reg_n_0_[4] ),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .O(\bit_cnt[4]_i_1_n_0 ));
  FDRE \bit_cnt_reg[0] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(\bit_cnt[0]_i_1__0_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ),
        .R(\txreg0[15]_i_1_n_0 ));
  FDRE \bit_cnt_reg[1] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[2] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(\bit_cnt[2]_i_1__0_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ),
        .R(\txreg0[15]_i_1_n_0 ));
  FDRE \bit_cnt_reg[3] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(\bit_cnt[3]_i_1__0_n_0 ),
        .Q(\bit_cnt_reg_n_0_[3] ),
        .R(\txreg0[15]_i_1_n_0 ));
  FDRE \bit_cnt_reg[4] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(\bit_cnt[4]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[4] ),
        .R(\txreg0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0051)) 
    \fsm_en_cnt[0]_i_1 
       (.I0(fsm_en_cnt[0]),
        .I1(fsm_en_cnt[1]),
        .I2(fsm_en_cnt[2]),
        .I3(reset),
        .O(\fsm_en_cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0062)) 
    \fsm_en_cnt[1]_i_1 
       (.I0(fsm_en_cnt[0]),
        .I1(fsm_en_cnt[1]),
        .I2(fsm_en_cnt[2]),
        .I3(reset),
        .O(\fsm_en_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \fsm_en_cnt[2]_i_1 
       (.I0(fsm_en_cnt[0]),
        .I1(fsm_en_cnt[1]),
        .I2(fsm_en_cnt[2]),
        .I3(reset),
        .O(\fsm_en_cnt[2]_i_1_n_0 ));
  FDRE \fsm_en_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\fsm_en_cnt[0]_i_1_n_0 ),
        .Q(fsm_en_cnt[0]),
        .R(1'b0));
  FDRE \fsm_en_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\fsm_en_cnt[1]_i_1_n_0 ),
        .Q(fsm_en_cnt[1]),
        .R(1'b0));
  FDRE \fsm_en_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\fsm_en_cnt[2]_i_1_n_0 ),
        .Q(fsm_en_cnt[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFFEFAAAA)) 
    sample_dac_reg_i_1
       (.I0(sample_daq),
        .I1(fsm_en_cnt[2]),
        .I2(fsm_en_cnt[1]),
        .I3(fsm_en_cnt[0]),
        .I4(sample_dac_reg),
        .O(sample_dac_reg_i_1_n_0));
  FDRE sample_dac_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(sample_dac_reg_i_1_n_0),
        .Q(sample_dac_reg),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFDDFF00005400)) 
    sclk_tmp_i_1
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(sample_dac_reg),
        .I3(sclk_tmp_i_2_n_0),
        .I4(sync_tmp),
        .I5(dac_sclk),
        .O(sclk_tmp_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h04)) 
    sclk_tmp_i_2
       (.I0(fsm_en_cnt[0]),
        .I1(fsm_en_cnt[1]),
        .I2(fsm_en_cnt[2]),
        .O(sclk_tmp_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    sclk_tmp_i_3
       (.I0(current_state[1]),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[3] ),
        .I5(\bit_cnt_reg_n_0_[4] ),
        .O(sync_tmp));
  FDSE sclk_tmp_reg
       (.C(clk),
        .CE(1'b1),
        .D(sclk_tmp_i_1_n_0),
        .Q(dac_sclk),
        .S(reset));
  LUT6 #(
    .INIT(64'hFFCFFFFF11000000)) 
    sync_tmp_i_1
       (.I0(sync_tmp_i_2_n_0),
        .I1(current_state[0]),
        .I2(sample_dac_reg),
        .I3(current_state[1]),
        .I4(sclk_tmp_i_2_n_0),
        .I5(dac_sync),
        .O(sync_tmp_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    sync_tmp_i_2
       (.I0(\bit_cnt_reg_n_0_[4] ),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .O(sync_tmp_i_2_n_0));
  FDSE sync_tmp_reg
       (.C(clk),
        .CE(1'b1),
        .D(sync_tmp_i_1_n_0),
        .Q(dac_sync),
        .S(reset));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg0[10]_i_1 
       (.I0(txreg0[9]),
        .I1(current_state[1]),
        .I2(dac0[8]),
        .O(txreg00_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg0[11]_i_1 
       (.I0(txreg0[10]),
        .I1(current_state[1]),
        .I2(dac0[9]),
        .O(txreg00_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg0[12]_i_1 
       (.I0(txreg0[11]),
        .I1(current_state[1]),
        .I2(dac0[10]),
        .O(txreg00_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \txreg0[13]_i_1 
       (.I0(txreg0[12]),
        .I1(dac0[11]),
        .I2(current_state[1]),
        .O(txreg00_in[13]));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \txreg0[15]_i_1 
       (.I0(sclk_tmp_i_2_n_0),
        .I1(current_state[1]),
        .I2(sample_dac_reg),
        .I3(current_state[0]),
        .I4(reset),
        .I5(sync_tmp),
        .O(\txreg0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000A8)) 
    \txreg0[15]_i_2 
       (.I0(sclk_tmp_i_2_n_0),
        .I1(current_state[1]),
        .I2(sample_dac_reg),
        .I3(current_state[0]),
        .I4(reset),
        .I5(sync_tmp),
        .O(\txreg0[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \txreg0[2]_i_1 
       (.I0(dac0[0]),
        .I1(current_state[1]),
        .O(txreg00_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg0[3]_i_1 
       (.I0(txreg0[2]),
        .I1(current_state[1]),
        .I2(dac0[1]),
        .O(txreg00_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg0[4]_i_1 
       (.I0(txreg0[3]),
        .I1(current_state[1]),
        .I2(dac0[2]),
        .O(txreg00_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg0[5]_i_1 
       (.I0(txreg0[4]),
        .I1(current_state[1]),
        .I2(dac0[3]),
        .O(txreg00_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg0[6]_i_1 
       (.I0(txreg0[5]),
        .I1(current_state[1]),
        .I2(dac0[4]),
        .O(txreg00_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg0[7]_i_1 
       (.I0(txreg0[6]),
        .I1(current_state[1]),
        .I2(dac0[5]),
        .O(txreg00_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg0[8]_i_1 
       (.I0(txreg0[7]),
        .I1(current_state[1]),
        .I2(dac0[6]),
        .O(txreg00_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg0[9]_i_1 
       (.I0(txreg0[8]),
        .I1(current_state[1]),
        .I2(dac0[7]),
        .O(txreg00_in[9]));
  FDRE \txreg0_reg[10] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg00_in[10]),
        .Q(txreg0[10]),
        .R(1'b0));
  FDRE \txreg0_reg[11] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg00_in[11]),
        .Q(txreg0[11]),
        .R(1'b0));
  FDRE \txreg0_reg[12] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg00_in[12]),
        .Q(txreg0[12]),
        .R(1'b0));
  FDRE \txreg0_reg[13] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg00_in[13]),
        .Q(txreg0[13]),
        .R(1'b0));
  FDRE \txreg0_reg[14] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg0[13]),
        .Q(txreg0[14]),
        .R(\txreg0[15]_i_1_n_0 ));
  FDRE \txreg0_reg[15] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg0[14]),
        .Q(dac_sdin0),
        .R(\txreg0[15]_i_1_n_0 ));
  FDRE \txreg0_reg[2] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg00_in[2]),
        .Q(txreg0[2]),
        .R(1'b0));
  FDRE \txreg0_reg[3] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg00_in[3]),
        .Q(txreg0[3]),
        .R(1'b0));
  FDRE \txreg0_reg[4] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg00_in[4]),
        .Q(txreg0[4]),
        .R(1'b0));
  FDRE \txreg0_reg[5] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg00_in[5]),
        .Q(txreg0[5]),
        .R(1'b0));
  FDRE \txreg0_reg[6] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg00_in[6]),
        .Q(txreg0[6]),
        .R(1'b0));
  FDRE \txreg0_reg[7] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg00_in[7]),
        .Q(txreg0[7]),
        .R(1'b0));
  FDRE \txreg0_reg[8] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg00_in[8]),
        .Q(txreg0[8]),
        .R(1'b0));
  FDRE \txreg0_reg[9] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg00_in[9]),
        .Q(txreg0[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg1[10]_i_1 
       (.I0(\txreg1_reg_n_0_[9] ),
        .I1(current_state[1]),
        .I2(dac1[8]),
        .O(txreg1[10]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg1[11]_i_1 
       (.I0(\txreg1_reg_n_0_[10] ),
        .I1(current_state[1]),
        .I2(dac1[9]),
        .O(txreg1[11]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg1[12]_i_1 
       (.I0(\txreg1_reg_n_0_[11] ),
        .I1(current_state[1]),
        .I2(dac1[10]),
        .O(txreg1[12]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hA3)) 
    \txreg1[13]_i_1 
       (.I0(\txreg1_reg_n_0_[12] ),
        .I1(dac1[11]),
        .I2(current_state[1]),
        .O(txreg1[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \txreg1[2]_i_1 
       (.I0(dac1[0]),
        .I1(current_state[1]),
        .O(txreg1[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg1[3]_i_1 
       (.I0(\txreg1_reg_n_0_[2] ),
        .I1(current_state[1]),
        .I2(dac1[1]),
        .O(txreg1[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg1[4]_i_1 
       (.I0(\txreg1_reg_n_0_[3] ),
        .I1(current_state[1]),
        .I2(dac1[2]),
        .O(txreg1[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg1[5]_i_1 
       (.I0(\txreg1_reg_n_0_[4] ),
        .I1(current_state[1]),
        .I2(dac1[3]),
        .O(txreg1[5]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg1[6]_i_1 
       (.I0(\txreg1_reg_n_0_[5] ),
        .I1(current_state[1]),
        .I2(dac1[4]),
        .O(txreg1[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg1[7]_i_1 
       (.I0(\txreg1_reg_n_0_[6] ),
        .I1(current_state[1]),
        .I2(dac1[5]),
        .O(txreg1[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg1[8]_i_1 
       (.I0(\txreg1_reg_n_0_[7] ),
        .I1(current_state[1]),
        .I2(dac1[6]),
        .O(txreg1[8]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \txreg1[9]_i_1 
       (.I0(\txreg1_reg_n_0_[8] ),
        .I1(current_state[1]),
        .I2(dac1[7]),
        .O(txreg1[9]));
  FDRE \txreg1_reg[10] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg1[10]),
        .Q(\txreg1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \txreg1_reg[11] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg1[11]),
        .Q(\txreg1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \txreg1_reg[12] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg1[12]),
        .Q(\txreg1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \txreg1_reg[13] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg1[13]),
        .Q(\txreg1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \txreg1_reg[14] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(\txreg1_reg_n_0_[13] ),
        .Q(\txreg1_reg_n_0_[14] ),
        .R(\txreg0[15]_i_1_n_0 ));
  FDRE \txreg1_reg[15] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(\txreg1_reg_n_0_[14] ),
        .Q(dac_sdin1),
        .R(\txreg0[15]_i_1_n_0 ));
  FDRE \txreg1_reg[2] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg1[2]),
        .Q(\txreg1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \txreg1_reg[3] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg1[3]),
        .Q(\txreg1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \txreg1_reg[4] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg1[4]),
        .Q(\txreg1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \txreg1_reg[5] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg1[5]),
        .Q(\txreg1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \txreg1_reg[6] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg1[6]),
        .Q(\txreg1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \txreg1_reg[7] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg1[7]),
        .Q(\txreg1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \txreg1_reg[8] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg1[8]),
        .Q(\txreg1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \txreg1_reg[9] 
       (.C(clk),
        .CE(\txreg0[15]_i_2_n_0 ),
        .D(txreg1[9]),
        .Q(\txreg1_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "registers" *) 
module system_sbus_awfg_0_0_registers
   (D,
    \reg_reg[483]_0 ,
    sbus_ack,
    sbus_rdata,
    Q,
    clk,
    sbus_we,
    reset,
    sbus_wdata,
    \reg_din_reg[479]_0 ,
    \reg_din_reg[447]_0 ,
    sbus_addr,
    sbus_rd);
  output [7:0]D;
  output [75:0]\reg_reg[483]_0 ;
  output sbus_ack;
  output [31:0]sbus_rdata;
  input [7:0]Q;
  input clk;
  input sbus_we;
  input reset;
  input [31:0]sbus_wdata;
  input [31:0]\reg_din_reg[479]_0 ;
  input [31:0]\reg_din_reg[447]_0 ;
  input [15:0]sbus_addr;
  input sbus_rd;

  wire [31:8]Addr;
  wire [31:0]C0;
  wire [31:0]C1;
  wire [31:0]C2;
  wire [31:0]C3;
  wire [7:0]D;
  wire [31:0]M;
  wire [7:0]Q;
  wire [31:0]Reset_HDL;
  wire Write;
  wire bus_we_q_reg_n_0;
  wire clk;
  wire [31:0]data0;
  wire [31:0]data1;
  wire [31:0]data10;
  wire [31:0]data11;
  wire [31:0]data12;
  wire [31:0]data13;
  wire [31:0]data14;
  wire [31:0]data2;
  wire [31:0]data3;
  wire [31:0]data4;
  wire [31:0]data5;
  wire [31:0]data6;
  wire [31:0]data7;
  wire [31:0]data8;
  wire [31:0]data9;
  wire [7:0]pmod_o;
  wire [511:33]\reg ;
  wire \reg[127]_i_1_n_0 ;
  wire \reg[127]_i_2_n_0 ;
  wire \reg[159]_i_1_n_0 ;
  wire \reg[159]_i_2_n_0 ;
  wire \reg[191]_i_1_n_0 ;
  wire \reg[191]_i_2_n_0 ;
  wire \reg[223]_i_1_n_0 ;
  wire \reg[223]_i_2_n_0 ;
  wire \reg[255]_i_1_n_0 ;
  wire \reg[255]_i_2_n_0 ;
  wire \reg[287]_i_1_n_0 ;
  wire \reg[287]_i_2_n_0 ;
  wire \reg[319]_i_1_n_0 ;
  wire \reg[319]_i_2_n_0 ;
  wire \reg[319]_i_3_n_0 ;
  wire \reg[31]_i_1_n_0 ;
  wire \reg[31]_i_2_n_0 ;
  wire \reg[351]_i_1_n_0 ;
  wire \reg[351]_i_2_n_0 ;
  wire \reg[351]_i_3_n_0 ;
  wire \reg[383]_i_1_n_0 ;
  wire \reg[383]_i_2_n_0 ;
  wire \reg[415]_i_1_n_0 ;
  wire \reg[415]_i_2_n_0 ;
  wire \reg[415]_i_3_n_0 ;
  wire \reg[483]_i_1_n_0 ;
  wire \reg[483]_i_2_n_0 ;
  wire \reg[483]_i_3_n_0 ;
  wire \reg[483]_i_4_n_0 ;
  wire \reg[483]_i_5_n_0 ;
  wire \reg[483]_i_6_n_0 ;
  wire \reg[63]_i_1_n_0 ;
  wire \reg[63]_i_2_n_0 ;
  wire \reg[95]_i_1_n_0 ;
  wire \reg[95]_i_2_n_0 ;
  wire [31:0]\reg_din_reg[447]_0 ;
  wire [31:0]\reg_din_reg[479]_0 ;
  wire \reg_din_reg_n_0_[0] ;
  wire \reg_din_reg_n_0_[10] ;
  wire \reg_din_reg_n_0_[11] ;
  wire \reg_din_reg_n_0_[12] ;
  wire \reg_din_reg_n_0_[13] ;
  wire \reg_din_reg_n_0_[14] ;
  wire \reg_din_reg_n_0_[15] ;
  wire \reg_din_reg_n_0_[16] ;
  wire \reg_din_reg_n_0_[17] ;
  wire \reg_din_reg_n_0_[18] ;
  wire \reg_din_reg_n_0_[19] ;
  wire \reg_din_reg_n_0_[1] ;
  wire \reg_din_reg_n_0_[20] ;
  wire \reg_din_reg_n_0_[21] ;
  wire \reg_din_reg_n_0_[22] ;
  wire \reg_din_reg_n_0_[23] ;
  wire \reg_din_reg_n_0_[24] ;
  wire \reg_din_reg_n_0_[25] ;
  wire \reg_din_reg_n_0_[26] ;
  wire \reg_din_reg_n_0_[27] ;
  wire \reg_din_reg_n_0_[28] ;
  wire \reg_din_reg_n_0_[29] ;
  wire \reg_din_reg_n_0_[2] ;
  wire \reg_din_reg_n_0_[30] ;
  wire \reg_din_reg_n_0_[31] ;
  wire \reg_din_reg_n_0_[3] ;
  wire \reg_din_reg_n_0_[4] ;
  wire \reg_din_reg_n_0_[5] ;
  wire \reg_din_reg_n_0_[6] ;
  wire \reg_din_reg_n_0_[7] ;
  wire \reg_din_reg_n_0_[8] ;
  wire \reg_din_reg_n_0_[9] ;
  wire [75:0]\reg_reg[483]_0 ;
  wire reset;
  wire sbus_ack;
  wire sbus_ack0;
  wire sbus_ack_i_2_n_0;
  wire [15:0]sbus_addr;
  wire sbus_rd;
  wire [31:0]sbus_rdata;
  wire \sbus_rdata[0]_i_1_n_0 ;
  wire \sbus_rdata[0]_i_2_n_0 ;
  wire \sbus_rdata[0]_i_3_n_0 ;
  wire \sbus_rdata[0]_i_4_n_0 ;
  wire \sbus_rdata[0]_i_5_n_0 ;
  wire \sbus_rdata[0]_i_6_n_0 ;
  wire \sbus_rdata[0]_i_7_n_0 ;
  wire \sbus_rdata[10]_i_1_n_0 ;
  wire \sbus_rdata[10]_i_2_n_0 ;
  wire \sbus_rdata[10]_i_3_n_0 ;
  wire \sbus_rdata[10]_i_4_n_0 ;
  wire \sbus_rdata[10]_i_5_n_0 ;
  wire \sbus_rdata[10]_i_6_n_0 ;
  wire \sbus_rdata[10]_i_7_n_0 ;
  wire \sbus_rdata[11]_i_1_n_0 ;
  wire \sbus_rdata[11]_i_2_n_0 ;
  wire \sbus_rdata[11]_i_3_n_0 ;
  wire \sbus_rdata[11]_i_4_n_0 ;
  wire \sbus_rdata[11]_i_5_n_0 ;
  wire \sbus_rdata[11]_i_6_n_0 ;
  wire \sbus_rdata[11]_i_7_n_0 ;
  wire \sbus_rdata[12]_i_1_n_0 ;
  wire \sbus_rdata[12]_i_2_n_0 ;
  wire \sbus_rdata[12]_i_3_n_0 ;
  wire \sbus_rdata[12]_i_4_n_0 ;
  wire \sbus_rdata[12]_i_5_n_0 ;
  wire \sbus_rdata[12]_i_6_n_0 ;
  wire \sbus_rdata[12]_i_7_n_0 ;
  wire \sbus_rdata[13]_i_1_n_0 ;
  wire \sbus_rdata[13]_i_2_n_0 ;
  wire \sbus_rdata[13]_i_3_n_0 ;
  wire \sbus_rdata[13]_i_4_n_0 ;
  wire \sbus_rdata[13]_i_5_n_0 ;
  wire \sbus_rdata[13]_i_6_n_0 ;
  wire \sbus_rdata[13]_i_7_n_0 ;
  wire \sbus_rdata[14]_i_1_n_0 ;
  wire \sbus_rdata[14]_i_2_n_0 ;
  wire \sbus_rdata[14]_i_3_n_0 ;
  wire \sbus_rdata[14]_i_4_n_0 ;
  wire \sbus_rdata[14]_i_5_n_0 ;
  wire \sbus_rdata[14]_i_6_n_0 ;
  wire \sbus_rdata[14]_i_7_n_0 ;
  wire \sbus_rdata[15]_i_1_n_0 ;
  wire \sbus_rdata[15]_i_2_n_0 ;
  wire \sbus_rdata[15]_i_3_n_0 ;
  wire \sbus_rdata[15]_i_4_n_0 ;
  wire \sbus_rdata[15]_i_5_n_0 ;
  wire \sbus_rdata[15]_i_6_n_0 ;
  wire \sbus_rdata[15]_i_7_n_0 ;
  wire \sbus_rdata[16]_i_1_n_0 ;
  wire \sbus_rdata[16]_i_2_n_0 ;
  wire \sbus_rdata[16]_i_3_n_0 ;
  wire \sbus_rdata[16]_i_4_n_0 ;
  wire \sbus_rdata[16]_i_5_n_0 ;
  wire \sbus_rdata[16]_i_6_n_0 ;
  wire \sbus_rdata[16]_i_7_n_0 ;
  wire \sbus_rdata[17]_i_1_n_0 ;
  wire \sbus_rdata[17]_i_2_n_0 ;
  wire \sbus_rdata[17]_i_3_n_0 ;
  wire \sbus_rdata[17]_i_4_n_0 ;
  wire \sbus_rdata[17]_i_5_n_0 ;
  wire \sbus_rdata[17]_i_6_n_0 ;
  wire \sbus_rdata[17]_i_7_n_0 ;
  wire \sbus_rdata[18]_i_1_n_0 ;
  wire \sbus_rdata[18]_i_2_n_0 ;
  wire \sbus_rdata[18]_i_3_n_0 ;
  wire \sbus_rdata[18]_i_4_n_0 ;
  wire \sbus_rdata[18]_i_5_n_0 ;
  wire \sbus_rdata[18]_i_6_n_0 ;
  wire \sbus_rdata[18]_i_7_n_0 ;
  wire \sbus_rdata[19]_i_1_n_0 ;
  wire \sbus_rdata[19]_i_2_n_0 ;
  wire \sbus_rdata[19]_i_3_n_0 ;
  wire \sbus_rdata[19]_i_4_n_0 ;
  wire \sbus_rdata[19]_i_5_n_0 ;
  wire \sbus_rdata[19]_i_6_n_0 ;
  wire \sbus_rdata[19]_i_7_n_0 ;
  wire \sbus_rdata[1]_i_1_n_0 ;
  wire \sbus_rdata[1]_i_2_n_0 ;
  wire \sbus_rdata[1]_i_3_n_0 ;
  wire \sbus_rdata[1]_i_4_n_0 ;
  wire \sbus_rdata[1]_i_5_n_0 ;
  wire \sbus_rdata[1]_i_6_n_0 ;
  wire \sbus_rdata[1]_i_7_n_0 ;
  wire \sbus_rdata[20]_i_1_n_0 ;
  wire \sbus_rdata[20]_i_2_n_0 ;
  wire \sbus_rdata[20]_i_3_n_0 ;
  wire \sbus_rdata[20]_i_4_n_0 ;
  wire \sbus_rdata[20]_i_5_n_0 ;
  wire \sbus_rdata[20]_i_6_n_0 ;
  wire \sbus_rdata[20]_i_7_n_0 ;
  wire \sbus_rdata[21]_i_1_n_0 ;
  wire \sbus_rdata[21]_i_2_n_0 ;
  wire \sbus_rdata[21]_i_3_n_0 ;
  wire \sbus_rdata[21]_i_4_n_0 ;
  wire \sbus_rdata[21]_i_5_n_0 ;
  wire \sbus_rdata[21]_i_6_n_0 ;
  wire \sbus_rdata[21]_i_7_n_0 ;
  wire \sbus_rdata[22]_i_1_n_0 ;
  wire \sbus_rdata[22]_i_2_n_0 ;
  wire \sbus_rdata[22]_i_3_n_0 ;
  wire \sbus_rdata[22]_i_4_n_0 ;
  wire \sbus_rdata[22]_i_5_n_0 ;
  wire \sbus_rdata[22]_i_6_n_0 ;
  wire \sbus_rdata[22]_i_7_n_0 ;
  wire \sbus_rdata[23]_i_1_n_0 ;
  wire \sbus_rdata[23]_i_2_n_0 ;
  wire \sbus_rdata[23]_i_3_n_0 ;
  wire \sbus_rdata[23]_i_4_n_0 ;
  wire \sbus_rdata[23]_i_5_n_0 ;
  wire \sbus_rdata[23]_i_6_n_0 ;
  wire \sbus_rdata[23]_i_7_n_0 ;
  wire \sbus_rdata[24]_i_1_n_0 ;
  wire \sbus_rdata[24]_i_2_n_0 ;
  wire \sbus_rdata[24]_i_3_n_0 ;
  wire \sbus_rdata[24]_i_4_n_0 ;
  wire \sbus_rdata[24]_i_5_n_0 ;
  wire \sbus_rdata[24]_i_6_n_0 ;
  wire \sbus_rdata[24]_i_7_n_0 ;
  wire \sbus_rdata[25]_i_1_n_0 ;
  wire \sbus_rdata[25]_i_2_n_0 ;
  wire \sbus_rdata[25]_i_3_n_0 ;
  wire \sbus_rdata[25]_i_4_n_0 ;
  wire \sbus_rdata[25]_i_5_n_0 ;
  wire \sbus_rdata[25]_i_6_n_0 ;
  wire \sbus_rdata[25]_i_7_n_0 ;
  wire \sbus_rdata[26]_i_1_n_0 ;
  wire \sbus_rdata[26]_i_2_n_0 ;
  wire \sbus_rdata[26]_i_3_n_0 ;
  wire \sbus_rdata[26]_i_4_n_0 ;
  wire \sbus_rdata[26]_i_5_n_0 ;
  wire \sbus_rdata[26]_i_6_n_0 ;
  wire \sbus_rdata[26]_i_7_n_0 ;
  wire \sbus_rdata[27]_i_1_n_0 ;
  wire \sbus_rdata[27]_i_2_n_0 ;
  wire \sbus_rdata[27]_i_3_n_0 ;
  wire \sbus_rdata[27]_i_4_n_0 ;
  wire \sbus_rdata[27]_i_5_n_0 ;
  wire \sbus_rdata[27]_i_6_n_0 ;
  wire \sbus_rdata[27]_i_7_n_0 ;
  wire \sbus_rdata[28]_i_1_n_0 ;
  wire \sbus_rdata[28]_i_2_n_0 ;
  wire \sbus_rdata[28]_i_3_n_0 ;
  wire \sbus_rdata[28]_i_4_n_0 ;
  wire \sbus_rdata[28]_i_5_n_0 ;
  wire \sbus_rdata[28]_i_6_n_0 ;
  wire \sbus_rdata[28]_i_7_n_0 ;
  wire \sbus_rdata[29]_i_1_n_0 ;
  wire \sbus_rdata[29]_i_2_n_0 ;
  wire \sbus_rdata[29]_i_3_n_0 ;
  wire \sbus_rdata[29]_i_4_n_0 ;
  wire \sbus_rdata[29]_i_5_n_0 ;
  wire \sbus_rdata[29]_i_6_n_0 ;
  wire \sbus_rdata[29]_i_7_n_0 ;
  wire \sbus_rdata[2]_i_1_n_0 ;
  wire \sbus_rdata[2]_i_2_n_0 ;
  wire \sbus_rdata[2]_i_3_n_0 ;
  wire \sbus_rdata[2]_i_4_n_0 ;
  wire \sbus_rdata[2]_i_5_n_0 ;
  wire \sbus_rdata[2]_i_6_n_0 ;
  wire \sbus_rdata[2]_i_7_n_0 ;
  wire \sbus_rdata[30]_i_1_n_0 ;
  wire \sbus_rdata[30]_i_2_n_0 ;
  wire \sbus_rdata[30]_i_3_n_0 ;
  wire \sbus_rdata[30]_i_4_n_0 ;
  wire \sbus_rdata[30]_i_5_n_0 ;
  wire \sbus_rdata[30]_i_6_n_0 ;
  wire \sbus_rdata[30]_i_7_n_0 ;
  wire \sbus_rdata[31]_i_1_n_0 ;
  wire \sbus_rdata[31]_i_2_n_0 ;
  wire \sbus_rdata[31]_i_3_n_0 ;
  wire \sbus_rdata[31]_i_4_n_0 ;
  wire \sbus_rdata[31]_i_5_n_0 ;
  wire \sbus_rdata[31]_i_6_n_0 ;
  wire \sbus_rdata[31]_i_7_n_0 ;
  wire \sbus_rdata[31]_i_8_n_0 ;
  wire \sbus_rdata[31]_i_9_n_0 ;
  wire \sbus_rdata[3]_i_1_n_0 ;
  wire \sbus_rdata[3]_i_2_n_0 ;
  wire \sbus_rdata[3]_i_3_n_0 ;
  wire \sbus_rdata[3]_i_4_n_0 ;
  wire \sbus_rdata[3]_i_5_n_0 ;
  wire \sbus_rdata[3]_i_6_n_0 ;
  wire \sbus_rdata[3]_i_7_n_0 ;
  wire \sbus_rdata[4]_i_1_n_0 ;
  wire \sbus_rdata[4]_i_2_n_0 ;
  wire \sbus_rdata[4]_i_3_n_0 ;
  wire \sbus_rdata[4]_i_4_n_0 ;
  wire \sbus_rdata[4]_i_5_n_0 ;
  wire \sbus_rdata[4]_i_6_n_0 ;
  wire \sbus_rdata[4]_i_7_n_0 ;
  wire \sbus_rdata[5]_i_1_n_0 ;
  wire \sbus_rdata[5]_i_2_n_0 ;
  wire \sbus_rdata[5]_i_3_n_0 ;
  wire \sbus_rdata[5]_i_4_n_0 ;
  wire \sbus_rdata[5]_i_5_n_0 ;
  wire \sbus_rdata[5]_i_6_n_0 ;
  wire \sbus_rdata[5]_i_7_n_0 ;
  wire \sbus_rdata[6]_i_1_n_0 ;
  wire \sbus_rdata[6]_i_2_n_0 ;
  wire \sbus_rdata[6]_i_3_n_0 ;
  wire \sbus_rdata[6]_i_4_n_0 ;
  wire \sbus_rdata[6]_i_5_n_0 ;
  wire \sbus_rdata[6]_i_6_n_0 ;
  wire \sbus_rdata[6]_i_7_n_0 ;
  wire \sbus_rdata[7]_i_1_n_0 ;
  wire \sbus_rdata[7]_i_2_n_0 ;
  wire \sbus_rdata[7]_i_3_n_0 ;
  wire \sbus_rdata[7]_i_4_n_0 ;
  wire \sbus_rdata[7]_i_5_n_0 ;
  wire \sbus_rdata[7]_i_6_n_0 ;
  wire \sbus_rdata[7]_i_7_n_0 ;
  wire \sbus_rdata[8]_i_1_n_0 ;
  wire \sbus_rdata[8]_i_2_n_0 ;
  wire \sbus_rdata[8]_i_3_n_0 ;
  wire \sbus_rdata[8]_i_4_n_0 ;
  wire \sbus_rdata[8]_i_5_n_0 ;
  wire \sbus_rdata[8]_i_6_n_0 ;
  wire \sbus_rdata[8]_i_7_n_0 ;
  wire \sbus_rdata[9]_i_1_n_0 ;
  wire \sbus_rdata[9]_i_2_n_0 ;
  wire \sbus_rdata[9]_i_3_n_0 ;
  wire \sbus_rdata[9]_i_4_n_0 ;
  wire \sbus_rdata[9]_i_5_n_0 ;
  wire \sbus_rdata[9]_i_6_n_0 ;
  wire \sbus_rdata[9]_i_7_n_0 ;
  wire [31:0]sbus_wdata;
  wire sbus_we;
  wire [31:0]tper_cnt;

  FDRE bus_we_q_reg
       (.C(clk),
        .CE(1'b1),
        .D(sbus_we),
        .Q(bus_we_q_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pmod_jc[0]_i_1 
       (.I0(pmod_o[0]),
        .I1(Q[0]),
        .I2(\reg_reg[483]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pmod_jc[1]_i_1 
       (.I0(pmod_o[1]),
        .I1(Q[0]),
        .I2(\reg_reg[483]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pmod_jc[2]_i_1 
       (.I0(pmod_o[2]),
        .I1(Q[0]),
        .I2(\reg_reg[483]_0 [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pmod_jc[3]_i_1 
       (.I0(pmod_o[3]),
        .I1(Q[0]),
        .I2(\reg_reg[483]_0 [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pmod_jc[4]_i_1 
       (.I0(pmod_o[4]),
        .I1(Q[0]),
        .I2(\reg_reg[483]_0 [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pmod_jc[5]_i_1 
       (.I0(pmod_o[5]),
        .I1(Q[0]),
        .I2(\reg_reg[483]_0 [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pmod_jc[6]_i_1 
       (.I0(pmod_o[6]),
        .I1(Q[0]),
        .I2(\reg_reg[483]_0 [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pmod_jc[7]_i_1 
       (.I0(pmod_o[7]),
        .I1(Q[0]),
        .I2(Write),
        .O(D[7]));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[127]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[127]_i_2_n_0 ),
        .O(\reg[127]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \reg[127]_i_2 
       (.I0(sbus_addr[3]),
        .I1(\reg[483]_i_3_n_0 ),
        .I2(\reg[483]_i_4_n_0 ),
        .I3(\reg[483]_i_5_n_0 ),
        .I4(sbus_addr[2]),
        .I5(\reg[483]_i_6_n_0 ),
        .O(\reg[127]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[159]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[159]_i_2_n_0 ),
        .O(\reg[159]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \reg[159]_i_2 
       (.I0(sbus_addr[3]),
        .I1(\reg[483]_i_3_n_0 ),
        .I2(\reg[483]_i_4_n_0 ),
        .I3(\reg[483]_i_5_n_0 ),
        .I4(sbus_addr[2]),
        .I5(\reg[415]_i_3_n_0 ),
        .O(\reg[159]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[191]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[191]_i_2_n_0 ),
        .O(\reg[191]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \reg[191]_i_2 
       (.I0(\reg[319]_i_3_n_0 ),
        .I1(sbus_addr[3]),
        .I2(\reg[483]_i_3_n_0 ),
        .I3(\reg[483]_i_4_n_0 ),
        .I4(\reg[483]_i_5_n_0 ),
        .I5(sbus_addr[2]),
        .O(\reg[191]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[223]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[223]_i_2_n_0 ),
        .O(\reg[223]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \reg[223]_i_2 
       (.I0(\reg[351]_i_3_n_0 ),
        .I1(sbus_addr[3]),
        .I2(\reg[483]_i_3_n_0 ),
        .I3(\reg[483]_i_4_n_0 ),
        .I4(\reg[483]_i_5_n_0 ),
        .I5(sbus_addr[2]),
        .O(\reg[223]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[255]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[255]_i_2_n_0 ),
        .O(\reg[255]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \reg[255]_i_2 
       (.I0(sbus_addr[3]),
        .I1(\reg[483]_i_3_n_0 ),
        .I2(\reg[483]_i_4_n_0 ),
        .I3(\reg[483]_i_5_n_0 ),
        .I4(sbus_addr[2]),
        .I5(\reg[483]_i_6_n_0 ),
        .O(\reg[255]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[287]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[287]_i_2_n_0 ),
        .O(\reg[287]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \reg[287]_i_2 
       (.I0(sbus_addr[3]),
        .I1(\reg[483]_i_3_n_0 ),
        .I2(\reg[483]_i_4_n_0 ),
        .I3(\reg[483]_i_5_n_0 ),
        .I4(sbus_addr[2]),
        .I5(\reg[415]_i_3_n_0 ),
        .O(\reg[287]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[319]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[319]_i_2_n_0 ),
        .O(\reg[319]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg[319]_i_2 
       (.I0(\reg[319]_i_3_n_0 ),
        .I1(sbus_addr[3]),
        .I2(\reg[483]_i_3_n_0 ),
        .I3(\reg[483]_i_4_n_0 ),
        .I4(\reg[483]_i_5_n_0 ),
        .I5(sbus_addr[2]),
        .O(\reg[319]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[319]_i_3 
       (.I0(sbus_addr[0]),
        .I1(sbus_addr[1]),
        .O(\reg[319]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[31]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[31]_i_2_n_0 ),
        .O(\reg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \reg[31]_i_2 
       (.I0(sbus_addr[3]),
        .I1(\reg[483]_i_3_n_0 ),
        .I2(\reg[483]_i_4_n_0 ),
        .I3(\reg[483]_i_5_n_0 ),
        .I4(sbus_addr[2]),
        .I5(\reg[415]_i_3_n_0 ),
        .O(\reg[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[351]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[351]_i_2_n_0 ),
        .O(\reg[351]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \reg[351]_i_2 
       (.I0(\reg[351]_i_3_n_0 ),
        .I1(sbus_addr[3]),
        .I2(\reg[483]_i_3_n_0 ),
        .I3(\reg[483]_i_4_n_0 ),
        .I4(\reg[483]_i_5_n_0 ),
        .I5(sbus_addr[2]),
        .O(\reg[351]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg[351]_i_3 
       (.I0(sbus_addr[1]),
        .I1(sbus_addr[0]),
        .O(\reg[351]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[383]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[383]_i_2_n_0 ),
        .O(\reg[383]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \reg[383]_i_2 
       (.I0(sbus_addr[3]),
        .I1(\reg[483]_i_3_n_0 ),
        .I2(\reg[483]_i_4_n_0 ),
        .I3(\reg[483]_i_5_n_0 ),
        .I4(sbus_addr[2]),
        .I5(\reg[483]_i_6_n_0 ),
        .O(\reg[383]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[415]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[415]_i_2_n_0 ),
        .O(\reg[415]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \reg[415]_i_2 
       (.I0(sbus_addr[3]),
        .I1(\reg[483]_i_3_n_0 ),
        .I2(\reg[483]_i_4_n_0 ),
        .I3(\reg[483]_i_5_n_0 ),
        .I4(sbus_addr[2]),
        .I5(\reg[415]_i_3_n_0 ),
        .O(\reg[415]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \reg[415]_i_3 
       (.I0(sbus_addr[0]),
        .I1(sbus_addr[1]),
        .O(\reg[415]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[483]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[483]_i_2_n_0 ),
        .O(\reg[483]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \reg[483]_i_2 
       (.I0(sbus_addr[3]),
        .I1(\reg[483]_i_3_n_0 ),
        .I2(\reg[483]_i_4_n_0 ),
        .I3(\reg[483]_i_5_n_0 ),
        .I4(sbus_addr[2]),
        .I5(\reg[483]_i_6_n_0 ),
        .O(\reg[483]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \reg[483]_i_3 
       (.I0(sbus_addr[15]),
        .I1(sbus_addr[14]),
        .I2(sbus_addr[13]),
        .I3(sbus_addr[12]),
        .O(\reg[483]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \reg[483]_i_4 
       (.I0(sbus_addr[7]),
        .I1(sbus_addr[6]),
        .I2(sbus_addr[5]),
        .I3(sbus_addr[4]),
        .O(\reg[483]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \reg[483]_i_5 
       (.I0(sbus_addr[11]),
        .I1(sbus_addr[10]),
        .I2(sbus_addr[9]),
        .I3(sbus_addr[8]),
        .O(\reg[483]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg[483]_i_6 
       (.I0(sbus_addr[0]),
        .I1(sbus_addr[1]),
        .O(\reg[483]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[63]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[63]_i_2_n_0 ),
        .O(\reg[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \reg[63]_i_2 
       (.I0(\reg[319]_i_3_n_0 ),
        .I1(sbus_addr[3]),
        .I2(\reg[483]_i_3_n_0 ),
        .I3(\reg[483]_i_4_n_0 ),
        .I4(\reg[483]_i_5_n_0 ),
        .I5(sbus_addr[2]),
        .O(\reg[63]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[95]_i_1 
       (.I0(bus_we_q_reg_n_0),
        .I1(sbus_we),
        .I2(\reg[95]_i_2_n_0 ),
        .O(\reg[95]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \reg[95]_i_2 
       (.I0(\reg[351]_i_3_n_0 ),
        .I1(sbus_addr[3]),
        .I2(\reg[483]_i_3_n_0 ),
        .I3(\reg[483]_i_4_n_0 ),
        .I4(\reg[483]_i_5_n_0 ),
        .I5(sbus_addr[2]),
        .O(\reg[95]_i_2_n_0 ));
  FDRE \reg_din_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [0]),
        .Q(\reg_din_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg_din_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[4]),
        .Q(data12[4]),
        .R(1'b0));
  FDRE \reg_din_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[5]),
        .Q(data12[5]),
        .R(1'b0));
  FDRE \reg_din_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[6]),
        .Q(data12[6]),
        .R(1'b0));
  FDRE \reg_din_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[7]),
        .Q(data12[7]),
        .R(1'b0));
  FDRE \reg_din_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[8]),
        .Q(data12[8]),
        .R(1'b0));
  FDRE \reg_din_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[9]),
        .Q(data12[9]),
        .R(1'b0));
  FDRE \reg_din_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[10]),
        .Q(data12[10]),
        .R(1'b0));
  FDRE \reg_din_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[11]),
        .Q(data12[11]),
        .R(1'b0));
  FDRE \reg_din_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[12]),
        .Q(data12[12]),
        .R(1'b0));
  FDRE \reg_din_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[13]),
        .Q(data12[13]),
        .R(1'b0));
  FDRE \reg_din_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[10]),
        .Q(\reg_din_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \reg_din_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[14]),
        .Q(data12[14]),
        .R(1'b0));
  FDRE \reg_din_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[15]),
        .Q(data12[15]),
        .R(1'b0));
  FDRE \reg_din_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[16]),
        .Q(data12[16]),
        .R(1'b0));
  FDRE \reg_din_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[17]),
        .Q(data12[17]),
        .R(1'b0));
  FDRE \reg_din_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[18]),
        .Q(data12[18]),
        .R(1'b0));
  FDRE \reg_din_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[19]),
        .Q(data12[19]),
        .R(1'b0));
  FDRE \reg_din_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[20]),
        .Q(data12[20]),
        .R(1'b0));
  FDRE \reg_din_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[21]),
        .Q(data12[21]),
        .R(1'b0));
  FDRE \reg_din_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[22]),
        .Q(data12[22]),
        .R(1'b0));
  FDRE \reg_din_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[23]),
        .Q(data12[23]),
        .R(1'b0));
  FDRE \reg_din_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[11]),
        .Q(\reg_din_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \reg_din_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[24]),
        .Q(data12[24]),
        .R(1'b0));
  FDRE \reg_din_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[25]),
        .Q(data12[25]),
        .R(1'b0));
  FDRE \reg_din_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[26]),
        .Q(data12[26]),
        .R(1'b0));
  FDRE \reg_din_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[27]),
        .Q(data12[27]),
        .R(1'b0));
  FDRE \reg_din_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[28]),
        .Q(data12[28]),
        .R(1'b0));
  FDRE \reg_din_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[29]),
        .Q(data12[29]),
        .R(1'b0));
  FDRE \reg_din_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[30]),
        .Q(data12[30]),
        .R(1'b0));
  FDRE \reg_din_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[31]),
        .Q(data12[31]),
        .R(1'b0));
  FDRE \reg_din_reg[128] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[0]),
        .Q(data11[0]),
        .R(1'b0));
  FDRE \reg_din_reg[129] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[1]),
        .Q(data11[1]),
        .R(1'b0));
  FDRE \reg_din_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[12]),
        .Q(\reg_din_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \reg_din_reg[130] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[2]),
        .Q(data11[2]),
        .R(1'b0));
  FDRE \reg_din_reg[131] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[3]),
        .Q(data11[3]),
        .R(1'b0));
  FDRE \reg_din_reg[132] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[4]),
        .Q(data11[4]),
        .R(1'b0));
  FDRE \reg_din_reg[133] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[5]),
        .Q(data11[5]),
        .R(1'b0));
  FDRE \reg_din_reg[134] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[6]),
        .Q(data11[6]),
        .R(1'b0));
  FDRE \reg_din_reg[135] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[7]),
        .Q(data11[7]),
        .R(1'b0));
  FDRE \reg_din_reg[136] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[8]),
        .Q(data11[8]),
        .R(1'b0));
  FDRE \reg_din_reg[137] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[9]),
        .Q(data11[9]),
        .R(1'b0));
  FDRE \reg_din_reg[138] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[10]),
        .Q(data11[10]),
        .R(1'b0));
  FDRE \reg_din_reg[139] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[11]),
        .Q(data11[11]),
        .R(1'b0));
  FDRE \reg_din_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[13]),
        .Q(\reg_din_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \reg_din_reg[140] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[12]),
        .Q(data11[12]),
        .R(1'b0));
  FDRE \reg_din_reg[141] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[13]),
        .Q(data11[13]),
        .R(1'b0));
  FDRE \reg_din_reg[142] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[14]),
        .Q(data11[14]),
        .R(1'b0));
  FDRE \reg_din_reg[143] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[15]),
        .Q(data11[15]),
        .R(1'b0));
  FDRE \reg_din_reg[144] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[16]),
        .Q(data11[16]),
        .R(1'b0));
  FDRE \reg_din_reg[145] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[17]),
        .Q(data11[17]),
        .R(1'b0));
  FDRE \reg_din_reg[146] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[18]),
        .Q(data11[18]),
        .R(1'b0));
  FDRE \reg_din_reg[147] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[19]),
        .Q(data11[19]),
        .R(1'b0));
  FDRE \reg_din_reg[148] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[20]),
        .Q(data11[20]),
        .R(1'b0));
  FDRE \reg_din_reg[149] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[21]),
        .Q(data11[21]),
        .R(1'b0));
  FDRE \reg_din_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[14]),
        .Q(\reg_din_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \reg_din_reg[150] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[22]),
        .Q(data11[22]),
        .R(1'b0));
  FDRE \reg_din_reg[151] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[23]),
        .Q(data11[23]),
        .R(1'b0));
  FDRE \reg_din_reg[152] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[24]),
        .Q(data11[24]),
        .R(1'b0));
  FDRE \reg_din_reg[153] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[25]),
        .Q(data11[25]),
        .R(1'b0));
  FDRE \reg_din_reg[154] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[26]),
        .Q(data11[26]),
        .R(1'b0));
  FDRE \reg_din_reg[155] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[27]),
        .Q(data11[27]),
        .R(1'b0));
  FDRE \reg_din_reg[156] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[28]),
        .Q(data11[28]),
        .R(1'b0));
  FDRE \reg_din_reg[157] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[29]),
        .Q(data11[29]),
        .R(1'b0));
  FDRE \reg_din_reg[158] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[30]),
        .Q(data11[30]),
        .R(1'b0));
  FDRE \reg_din_reg[159] 
       (.C(clk),
        .CE(1'b1),
        .D(C2[31]),
        .Q(data11[31]),
        .R(1'b0));
  FDRE \reg_din_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[15]),
        .Q(\reg_din_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \reg_din_reg[160] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[0]),
        .Q(data10[0]),
        .R(1'b0));
  FDRE \reg_din_reg[161] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[1]),
        .Q(data10[1]),
        .R(1'b0));
  FDRE \reg_din_reg[162] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[2]),
        .Q(data10[2]),
        .R(1'b0));
  FDRE \reg_din_reg[163] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[3]),
        .Q(data10[3]),
        .R(1'b0));
  FDRE \reg_din_reg[164] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[4]),
        .Q(data10[4]),
        .R(1'b0));
  FDRE \reg_din_reg[165] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[5]),
        .Q(data10[5]),
        .R(1'b0));
  FDRE \reg_din_reg[166] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[6]),
        .Q(data10[6]),
        .R(1'b0));
  FDRE \reg_din_reg[167] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[7]),
        .Q(data10[7]),
        .R(1'b0));
  FDRE \reg_din_reg[168] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[8]),
        .Q(data10[8]),
        .R(1'b0));
  FDRE \reg_din_reg[169] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[9]),
        .Q(data10[9]),
        .R(1'b0));
  FDRE \reg_din_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[16]),
        .Q(\reg_din_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \reg_din_reg[170] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[10]),
        .Q(data10[10]),
        .R(1'b0));
  FDRE \reg_din_reg[171] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[11]),
        .Q(data10[11]),
        .R(1'b0));
  FDRE \reg_din_reg[172] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[12]),
        .Q(data10[12]),
        .R(1'b0));
  FDRE \reg_din_reg[173] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[13]),
        .Q(data10[13]),
        .R(1'b0));
  FDRE \reg_din_reg[174] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[14]),
        .Q(data10[14]),
        .R(1'b0));
  FDRE \reg_din_reg[175] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[15]),
        .Q(data10[15]),
        .R(1'b0));
  FDRE \reg_din_reg[176] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[16]),
        .Q(data10[16]),
        .R(1'b0));
  FDRE \reg_din_reg[177] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[17]),
        .Q(data10[17]),
        .R(1'b0));
  FDRE \reg_din_reg[178] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[18]),
        .Q(data10[18]),
        .R(1'b0));
  FDRE \reg_din_reg[179] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[19]),
        .Q(data10[19]),
        .R(1'b0));
  FDRE \reg_din_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[17]),
        .Q(\reg_din_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \reg_din_reg[180] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[20]),
        .Q(data10[20]),
        .R(1'b0));
  FDRE \reg_din_reg[181] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[21]),
        .Q(data10[21]),
        .R(1'b0));
  FDRE \reg_din_reg[182] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[22]),
        .Q(data10[22]),
        .R(1'b0));
  FDRE \reg_din_reg[183] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[23]),
        .Q(data10[23]),
        .R(1'b0));
  FDRE \reg_din_reg[184] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[24]),
        .Q(data10[24]),
        .R(1'b0));
  FDRE \reg_din_reg[185] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[25]),
        .Q(data10[25]),
        .R(1'b0));
  FDRE \reg_din_reg[186] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[26]),
        .Q(data10[26]),
        .R(1'b0));
  FDRE \reg_din_reg[187] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[27]),
        .Q(data10[27]),
        .R(1'b0));
  FDRE \reg_din_reg[188] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[28]),
        .Q(data10[28]),
        .R(1'b0));
  FDRE \reg_din_reg[189] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[29]),
        .Q(data10[29]),
        .R(1'b0));
  FDRE \reg_din_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[18]),
        .Q(\reg_din_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \reg_din_reg[190] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[30]),
        .Q(data10[30]),
        .R(1'b0));
  FDRE \reg_din_reg[191] 
       (.C(clk),
        .CE(1'b1),
        .D(C3[31]),
        .Q(data10[31]),
        .R(1'b0));
  FDRE \reg_din_reg[192] 
       (.C(clk),
        .CE(1'b1),
        .D(M[0]),
        .Q(data9[0]),
        .R(1'b0));
  FDRE \reg_din_reg[193] 
       (.C(clk),
        .CE(1'b1),
        .D(M[1]),
        .Q(data9[1]),
        .R(1'b0));
  FDRE \reg_din_reg[194] 
       (.C(clk),
        .CE(1'b1),
        .D(M[2]),
        .Q(data9[2]),
        .R(1'b0));
  FDRE \reg_din_reg[195] 
       (.C(clk),
        .CE(1'b1),
        .D(M[3]),
        .Q(data9[3]),
        .R(1'b0));
  FDRE \reg_din_reg[196] 
       (.C(clk),
        .CE(1'b1),
        .D(M[4]),
        .Q(data9[4]),
        .R(1'b0));
  FDRE \reg_din_reg[197] 
       (.C(clk),
        .CE(1'b1),
        .D(M[5]),
        .Q(data9[5]),
        .R(1'b0));
  FDRE \reg_din_reg[198] 
       (.C(clk),
        .CE(1'b1),
        .D(M[6]),
        .Q(data9[6]),
        .R(1'b0));
  FDRE \reg_din_reg[199] 
       (.C(clk),
        .CE(1'b1),
        .D(M[7]),
        .Q(data9[7]),
        .R(1'b0));
  FDRE \reg_din_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[19]),
        .Q(\reg_din_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \reg_din_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [1]),
        .Q(\reg_din_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reg_din_reg[200] 
       (.C(clk),
        .CE(1'b1),
        .D(M[8]),
        .Q(data9[8]),
        .R(1'b0));
  FDRE \reg_din_reg[201] 
       (.C(clk),
        .CE(1'b1),
        .D(M[9]),
        .Q(data9[9]),
        .R(1'b0));
  FDRE \reg_din_reg[202] 
       (.C(clk),
        .CE(1'b1),
        .D(M[10]),
        .Q(data9[10]),
        .R(1'b0));
  FDRE \reg_din_reg[203] 
       (.C(clk),
        .CE(1'b1),
        .D(M[11]),
        .Q(data9[11]),
        .R(1'b0));
  FDRE \reg_din_reg[204] 
       (.C(clk),
        .CE(1'b1),
        .D(M[12]),
        .Q(data9[12]),
        .R(1'b0));
  FDRE \reg_din_reg[205] 
       (.C(clk),
        .CE(1'b1),
        .D(M[13]),
        .Q(data9[13]),
        .R(1'b0));
  FDRE \reg_din_reg[206] 
       (.C(clk),
        .CE(1'b1),
        .D(M[14]),
        .Q(data9[14]),
        .R(1'b0));
  FDRE \reg_din_reg[207] 
       (.C(clk),
        .CE(1'b1),
        .D(M[15]),
        .Q(data9[15]),
        .R(1'b0));
  FDRE \reg_din_reg[208] 
       (.C(clk),
        .CE(1'b1),
        .D(M[16]),
        .Q(data9[16]),
        .R(1'b0));
  FDRE \reg_din_reg[209] 
       (.C(clk),
        .CE(1'b1),
        .D(M[17]),
        .Q(data9[17]),
        .R(1'b0));
  FDRE \reg_din_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[20]),
        .Q(\reg_din_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \reg_din_reg[210] 
       (.C(clk),
        .CE(1'b1),
        .D(M[18]),
        .Q(data9[18]),
        .R(1'b0));
  FDRE \reg_din_reg[211] 
       (.C(clk),
        .CE(1'b1),
        .D(M[19]),
        .Q(data9[19]),
        .R(1'b0));
  FDRE \reg_din_reg[212] 
       (.C(clk),
        .CE(1'b1),
        .D(M[20]),
        .Q(data9[20]),
        .R(1'b0));
  FDRE \reg_din_reg[213] 
       (.C(clk),
        .CE(1'b1),
        .D(M[21]),
        .Q(data9[21]),
        .R(1'b0));
  FDRE \reg_din_reg[214] 
       (.C(clk),
        .CE(1'b1),
        .D(M[22]),
        .Q(data9[22]),
        .R(1'b0));
  FDRE \reg_din_reg[215] 
       (.C(clk),
        .CE(1'b1),
        .D(M[23]),
        .Q(data9[23]),
        .R(1'b0));
  FDRE \reg_din_reg[216] 
       (.C(clk),
        .CE(1'b1),
        .D(M[24]),
        .Q(data9[24]),
        .R(1'b0));
  FDRE \reg_din_reg[217] 
       (.C(clk),
        .CE(1'b1),
        .D(M[25]),
        .Q(data9[25]),
        .R(1'b0));
  FDRE \reg_din_reg[218] 
       (.C(clk),
        .CE(1'b1),
        .D(M[26]),
        .Q(data9[26]),
        .R(1'b0));
  FDRE \reg_din_reg[219] 
       (.C(clk),
        .CE(1'b1),
        .D(M[27]),
        .Q(data9[27]),
        .R(1'b0));
  FDRE \reg_din_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[21]),
        .Q(\reg_din_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \reg_din_reg[220] 
       (.C(clk),
        .CE(1'b1),
        .D(M[28]),
        .Q(data9[28]),
        .R(1'b0));
  FDRE \reg_din_reg[221] 
       (.C(clk),
        .CE(1'b1),
        .D(M[29]),
        .Q(data9[29]),
        .R(1'b0));
  FDRE \reg_din_reg[222] 
       (.C(clk),
        .CE(1'b1),
        .D(M[30]),
        .Q(data9[30]),
        .R(1'b0));
  FDRE \reg_din_reg[223] 
       (.C(clk),
        .CE(1'b1),
        .D(M[31]),
        .Q(data9[31]),
        .R(1'b0));
  FDRE \reg_din_reg[224] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[0]),
        .Q(data8[0]),
        .R(1'b0));
  FDRE \reg_din_reg[225] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[1]),
        .Q(data8[1]),
        .R(1'b0));
  FDRE \reg_din_reg[226] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[2]),
        .Q(data8[2]),
        .R(1'b0));
  FDRE \reg_din_reg[227] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[3]),
        .Q(data8[3]),
        .R(1'b0));
  FDRE \reg_din_reg[228] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[4]),
        .Q(data8[4]),
        .R(1'b0));
  FDRE \reg_din_reg[229] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[5]),
        .Q(data8[5]),
        .R(1'b0));
  FDRE \reg_din_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[22]),
        .Q(\reg_din_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \reg_din_reg[230] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[6]),
        .Q(data8[6]),
        .R(1'b0));
  FDRE \reg_din_reg[231] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[7]),
        .Q(data8[7]),
        .R(1'b0));
  FDRE \reg_din_reg[232] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[8]),
        .Q(data8[8]),
        .R(1'b0));
  FDRE \reg_din_reg[233] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[9]),
        .Q(data8[9]),
        .R(1'b0));
  FDRE \reg_din_reg[234] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[10]),
        .Q(data8[10]),
        .R(1'b0));
  FDRE \reg_din_reg[235] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[11]),
        .Q(data8[11]),
        .R(1'b0));
  FDRE \reg_din_reg[236] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[12]),
        .Q(data8[12]),
        .R(1'b0));
  FDRE \reg_din_reg[237] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[13]),
        .Q(data8[13]),
        .R(1'b0));
  FDRE \reg_din_reg[238] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[14]),
        .Q(data8[14]),
        .R(1'b0));
  FDRE \reg_din_reg[239] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[15]),
        .Q(data8[15]),
        .R(1'b0));
  FDRE \reg_din_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[23]),
        .Q(\reg_din_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \reg_din_reg[240] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[16]),
        .Q(data8[16]),
        .R(1'b0));
  FDRE \reg_din_reg[241] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[17]),
        .Q(data8[17]),
        .R(1'b0));
  FDRE \reg_din_reg[242] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[18]),
        .Q(data8[18]),
        .R(1'b0));
  FDRE \reg_din_reg[243] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[19]),
        .Q(data8[19]),
        .R(1'b0));
  FDRE \reg_din_reg[244] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[20]),
        .Q(data8[20]),
        .R(1'b0));
  FDRE \reg_din_reg[245] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[21]),
        .Q(data8[21]),
        .R(1'b0));
  FDRE \reg_din_reg[246] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[22]),
        .Q(data8[22]),
        .R(1'b0));
  FDRE \reg_din_reg[247] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[23]),
        .Q(data8[23]),
        .R(1'b0));
  FDRE \reg_din_reg[248] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[24]),
        .Q(data8[24]),
        .R(1'b0));
  FDRE \reg_din_reg[249] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[25]),
        .Q(data8[25]),
        .R(1'b0));
  FDRE \reg_din_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[24]),
        .Q(\reg_din_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \reg_din_reg[250] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[26]),
        .Q(data8[26]),
        .R(1'b0));
  FDRE \reg_din_reg[251] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[27]),
        .Q(data8[27]),
        .R(1'b0));
  FDRE \reg_din_reg[252] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[28]),
        .Q(data8[28]),
        .R(1'b0));
  FDRE \reg_din_reg[253] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[29]),
        .Q(data8[29]),
        .R(1'b0));
  FDRE \reg_din_reg[254] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[30]),
        .Q(data8[30]),
        .R(1'b0));
  FDRE \reg_din_reg[255] 
       (.C(clk),
        .CE(1'b1),
        .D(tper_cnt[31]),
        .Q(data8[31]),
        .R(1'b0));
  FDRE \reg_din_reg[256] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[0]),
        .Q(data7[0]),
        .R(1'b0));
  FDRE \reg_din_reg[257] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[1]),
        .Q(data7[1]),
        .R(1'b0));
  FDRE \reg_din_reg[258] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[2]),
        .Q(data7[2]),
        .R(1'b0));
  FDRE \reg_din_reg[259] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[3]),
        .Q(data7[3]),
        .R(1'b0));
  FDRE \reg_din_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[25]),
        .Q(\reg_din_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \reg_din_reg[260] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[4]),
        .Q(data7[4]),
        .R(1'b0));
  FDRE \reg_din_reg[261] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[5]),
        .Q(data7[5]),
        .R(1'b0));
  FDRE \reg_din_reg[262] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[6]),
        .Q(data7[6]),
        .R(1'b0));
  FDRE \reg_din_reg[263] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[7]),
        .Q(data7[7]),
        .R(1'b0));
  FDRE \reg_din_reg[264] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[8]),
        .Q(data7[8]),
        .R(1'b0));
  FDRE \reg_din_reg[265] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[9]),
        .Q(data7[9]),
        .R(1'b0));
  FDRE \reg_din_reg[266] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[10]),
        .Q(data7[10]),
        .R(1'b0));
  FDRE \reg_din_reg[267] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[11]),
        .Q(data7[11]),
        .R(1'b0));
  FDRE \reg_din_reg[268] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[12]),
        .Q(data7[12]),
        .R(1'b0));
  FDRE \reg_din_reg[269] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[13]),
        .Q(data7[13]),
        .R(1'b0));
  FDRE \reg_din_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[26]),
        .Q(\reg_din_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \reg_din_reg[270] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[14]),
        .Q(data7[14]),
        .R(1'b0));
  FDRE \reg_din_reg[271] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[15]),
        .Q(data7[15]),
        .R(1'b0));
  FDRE \reg_din_reg[272] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[16]),
        .Q(data7[16]),
        .R(1'b0));
  FDRE \reg_din_reg[273] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[17]),
        .Q(data7[17]),
        .R(1'b0));
  FDRE \reg_din_reg[274] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[18]),
        .Q(data7[18]),
        .R(1'b0));
  FDRE \reg_din_reg[275] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[19]),
        .Q(data7[19]),
        .R(1'b0));
  FDRE \reg_din_reg[276] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[20]),
        .Q(data7[20]),
        .R(1'b0));
  FDRE \reg_din_reg[277] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[21]),
        .Q(data7[21]),
        .R(1'b0));
  FDRE \reg_din_reg[278] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[22]),
        .Q(data7[22]),
        .R(1'b0));
  FDRE \reg_din_reg[279] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[23]),
        .Q(data7[23]),
        .R(1'b0));
  FDRE \reg_din_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[27]),
        .Q(\reg_din_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \reg_din_reg[280] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[24]),
        .Q(data7[24]),
        .R(1'b0));
  FDRE \reg_din_reg[281] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[25]),
        .Q(data7[25]),
        .R(1'b0));
  FDRE \reg_din_reg[282] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[26]),
        .Q(data7[26]),
        .R(1'b0));
  FDRE \reg_din_reg[283] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[27]),
        .Q(data7[27]),
        .R(1'b0));
  FDRE \reg_din_reg[284] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[28]),
        .Q(data7[28]),
        .R(1'b0));
  FDRE \reg_din_reg[285] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[29]),
        .Q(data7[29]),
        .R(1'b0));
  FDRE \reg_din_reg[286] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[30]),
        .Q(data7[30]),
        .R(1'b0));
  FDRE \reg_din_reg[287] 
       (.C(clk),
        .CE(1'b1),
        .D(Reset_HDL[31]),
        .Q(data7[31]),
        .R(1'b0));
  FDRE \reg_din_reg[288] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [8]),
        .Q(data6[0]),
        .R(1'b0));
  FDRE \reg_din_reg[289] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [9]),
        .Q(data6[1]),
        .R(1'b0));
  FDRE \reg_din_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[28]),
        .Q(\reg_din_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \reg_din_reg[290] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [10]),
        .Q(data6[2]),
        .R(1'b0));
  FDRE \reg_din_reg[291] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [11]),
        .Q(data6[3]),
        .R(1'b0));
  FDRE \reg_din_reg[292] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [12]),
        .Q(data6[4]),
        .R(1'b0));
  FDRE \reg_din_reg[293] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [13]),
        .Q(data6[5]),
        .R(1'b0));
  FDRE \reg_din_reg[294] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [14]),
        .Q(data6[6]),
        .R(1'b0));
  FDRE \reg_din_reg[295] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [15]),
        .Q(data6[7]),
        .R(1'b0));
  FDRE \reg_din_reg[296] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [16]),
        .Q(data6[8]),
        .R(1'b0));
  FDRE \reg_din_reg[297] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [17]),
        .Q(data6[9]),
        .R(1'b0));
  FDRE \reg_din_reg[298] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [18]),
        .Q(data6[10]),
        .R(1'b0));
  FDRE \reg_din_reg[299] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [19]),
        .Q(data6[11]),
        .R(1'b0));
  FDRE \reg_din_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[29]),
        .Q(\reg_din_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \reg_din_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [2]),
        .Q(\reg_din_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \reg_din_reg[300] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [20]),
        .Q(data6[12]),
        .R(1'b0));
  FDRE \reg_din_reg[301] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [21]),
        .Q(data6[13]),
        .R(1'b0));
  FDRE \reg_din_reg[302] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [22]),
        .Q(data6[14]),
        .R(1'b0));
  FDRE \reg_din_reg[303] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [23]),
        .Q(data6[15]),
        .R(1'b0));
  FDRE \reg_din_reg[304] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [24]),
        .Q(data6[16]),
        .R(1'b0));
  FDRE \reg_din_reg[305] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [25]),
        .Q(data6[17]),
        .R(1'b0));
  FDRE \reg_din_reg[306] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [26]),
        .Q(data6[18]),
        .R(1'b0));
  FDRE \reg_din_reg[307] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [27]),
        .Q(data6[19]),
        .R(1'b0));
  FDRE \reg_din_reg[308] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [28]),
        .Q(data6[20]),
        .R(1'b0));
  FDRE \reg_din_reg[309] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [29]),
        .Q(data6[21]),
        .R(1'b0));
  FDRE \reg_din_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[30]),
        .Q(\reg_din_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \reg_din_reg[310] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [30]),
        .Q(data6[22]),
        .R(1'b0));
  FDRE \reg_din_reg[311] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [31]),
        .Q(data6[23]),
        .R(1'b0));
  FDRE \reg_din_reg[312] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [32]),
        .Q(data6[24]),
        .R(1'b0));
  FDRE \reg_din_reg[313] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [33]),
        .Q(data6[25]),
        .R(1'b0));
  FDRE \reg_din_reg[314] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [34]),
        .Q(data6[26]),
        .R(1'b0));
  FDRE \reg_din_reg[315] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [35]),
        .Q(data6[27]),
        .R(1'b0));
  FDRE \reg_din_reg[316] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [36]),
        .Q(data6[28]),
        .R(1'b0));
  FDRE \reg_din_reg[317] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [37]),
        .Q(data6[29]),
        .R(1'b0));
  FDRE \reg_din_reg[318] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [38]),
        .Q(data6[30]),
        .R(1'b0));
  FDRE \reg_din_reg[319] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [39]),
        .Q(data6[31]),
        .R(1'b0));
  FDRE \reg_din_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[31]),
        .Q(\reg_din_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \reg_din_reg[320] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [40]),
        .Q(data5[0]),
        .R(1'b0));
  FDRE \reg_din_reg[321] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [41]),
        .Q(data5[1]),
        .R(1'b0));
  FDRE \reg_din_reg[322] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [42]),
        .Q(data5[2]),
        .R(1'b0));
  FDRE \reg_din_reg[323] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [43]),
        .Q(data5[3]),
        .R(1'b0));
  FDRE \reg_din_reg[324] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [44]),
        .Q(data5[4]),
        .R(1'b0));
  FDRE \reg_din_reg[325] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [45]),
        .Q(data5[5]),
        .R(1'b0));
  FDRE \reg_din_reg[326] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [46]),
        .Q(data5[6]),
        .R(1'b0));
  FDRE \reg_din_reg[327] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [47]),
        .Q(data5[7]),
        .R(1'b0));
  FDRE \reg_din_reg[328] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [48]),
        .Q(data5[8]),
        .R(1'b0));
  FDRE \reg_din_reg[329] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [49]),
        .Q(data5[9]),
        .R(1'b0));
  FDRE \reg_din_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(Write),
        .Q(data14[0]),
        .R(1'b0));
  FDRE \reg_din_reg[330] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [50]),
        .Q(data5[10]),
        .R(1'b0));
  FDRE \reg_din_reg[331] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [51]),
        .Q(data5[11]),
        .R(1'b0));
  FDRE \reg_din_reg[332] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [52]),
        .Q(data5[12]),
        .R(1'b0));
  FDRE \reg_din_reg[333] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [53]),
        .Q(data5[13]),
        .R(1'b0));
  FDRE \reg_din_reg[334] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [54]),
        .Q(data5[14]),
        .R(1'b0));
  FDRE \reg_din_reg[335] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [55]),
        .Q(data5[15]),
        .R(1'b0));
  FDRE \reg_din_reg[336] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [56]),
        .Q(data5[16]),
        .R(1'b0));
  FDRE \reg_din_reg[337] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [57]),
        .Q(data5[17]),
        .R(1'b0));
  FDRE \reg_din_reg[338] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [58]),
        .Q(data5[18]),
        .R(1'b0));
  FDRE \reg_din_reg[339] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [59]),
        .Q(data5[19]),
        .R(1'b0));
  FDRE \reg_din_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [33]),
        .Q(data14[1]),
        .R(1'b0));
  FDRE \reg_din_reg[340] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [60]),
        .Q(data5[20]),
        .R(1'b0));
  FDRE \reg_din_reg[341] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [61]),
        .Q(data5[21]),
        .R(1'b0));
  FDRE \reg_din_reg[342] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [62]),
        .Q(data5[22]),
        .R(1'b0));
  FDRE \reg_din_reg[343] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [63]),
        .Q(data5[23]),
        .R(1'b0));
  FDRE \reg_din_reg[344] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [64]),
        .Q(data5[24]),
        .R(1'b0));
  FDRE \reg_din_reg[345] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [65]),
        .Q(data5[25]),
        .R(1'b0));
  FDRE \reg_din_reg[346] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [66]),
        .Q(data5[26]),
        .R(1'b0));
  FDRE \reg_din_reg[347] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [67]),
        .Q(data5[27]),
        .R(1'b0));
  FDRE \reg_din_reg[348] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [68]),
        .Q(data5[28]),
        .R(1'b0));
  FDRE \reg_din_reg[349] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [69]),
        .Q(data5[29]),
        .R(1'b0));
  FDRE \reg_din_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [34]),
        .Q(data14[2]),
        .R(1'b0));
  FDRE \reg_din_reg[350] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [70]),
        .Q(data5[30]),
        .R(1'b0));
  FDRE \reg_din_reg[351] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [71]),
        .Q(data5[31]),
        .R(1'b0));
  FDRE \reg_din_reg[352] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(data4[0]),
        .R(1'b0));
  FDRE \reg_din_reg[353] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(data4[1]),
        .R(1'b0));
  FDRE \reg_din_reg[354] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(data4[2]),
        .R(1'b0));
  FDRE \reg_din_reg[355] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(data4[3]),
        .R(1'b0));
  FDRE \reg_din_reg[356] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(data4[4]),
        .R(1'b0));
  FDRE \reg_din_reg[357] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(data4[5]),
        .R(1'b0));
  FDRE \reg_din_reg[358] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(data4[6]),
        .R(1'b0));
  FDRE \reg_din_reg[359] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(data4[7]),
        .R(1'b0));
  FDRE \reg_din_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [35]),
        .Q(data14[3]),
        .R(1'b0));
  FDRE \reg_din_reg[360] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [360]),
        .Q(data4[8]),
        .R(1'b0));
  FDRE \reg_din_reg[361] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [361]),
        .Q(data4[9]),
        .R(1'b0));
  FDRE \reg_din_reg[362] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [362]),
        .Q(data4[10]),
        .R(1'b0));
  FDRE \reg_din_reg[363] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [363]),
        .Q(data4[11]),
        .R(1'b0));
  FDRE \reg_din_reg[364] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [364]),
        .Q(data4[12]),
        .R(1'b0));
  FDRE \reg_din_reg[365] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [365]),
        .Q(data4[13]),
        .R(1'b0));
  FDRE \reg_din_reg[366] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [366]),
        .Q(data4[14]),
        .R(1'b0));
  FDRE \reg_din_reg[367] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [367]),
        .Q(data4[15]),
        .R(1'b0));
  FDRE \reg_din_reg[368] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [368]),
        .Q(data4[16]),
        .R(1'b0));
  FDRE \reg_din_reg[369] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [369]),
        .Q(data4[17]),
        .R(1'b0));
  FDRE \reg_din_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [36]),
        .Q(data14[4]),
        .R(1'b0));
  FDRE \reg_din_reg[370] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [370]),
        .Q(data4[18]),
        .R(1'b0));
  FDRE \reg_din_reg[371] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [371]),
        .Q(data4[19]),
        .R(1'b0));
  FDRE \reg_din_reg[372] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [372]),
        .Q(data4[20]),
        .R(1'b0));
  FDRE \reg_din_reg[373] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [373]),
        .Q(data4[21]),
        .R(1'b0));
  FDRE \reg_din_reg[374] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [374]),
        .Q(data4[22]),
        .R(1'b0));
  FDRE \reg_din_reg[375] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [375]),
        .Q(data4[23]),
        .R(1'b0));
  FDRE \reg_din_reg[376] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [376]),
        .Q(data4[24]),
        .R(1'b0));
  FDRE \reg_din_reg[377] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [377]),
        .Q(data4[25]),
        .R(1'b0));
  FDRE \reg_din_reg[378] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [378]),
        .Q(data4[26]),
        .R(1'b0));
  FDRE \reg_din_reg[379] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [379]),
        .Q(data4[27]),
        .R(1'b0));
  FDRE \reg_din_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [37]),
        .Q(data14[5]),
        .R(1'b0));
  FDRE \reg_din_reg[380] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [380]),
        .Q(data4[28]),
        .R(1'b0));
  FDRE \reg_din_reg[381] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [381]),
        .Q(data4[29]),
        .R(1'b0));
  FDRE \reg_din_reg[382] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [382]),
        .Q(data4[30]),
        .R(1'b0));
  FDRE \reg_din_reg[383] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [383]),
        .Q(data4[31]),
        .R(1'b0));
  FDRE \reg_din_reg[384] 
       (.C(clk),
        .CE(1'b1),
        .D(pmod_o[0]),
        .Q(data3[0]),
        .R(1'b0));
  FDRE \reg_din_reg[385] 
       (.C(clk),
        .CE(1'b1),
        .D(pmod_o[1]),
        .Q(data3[1]),
        .R(1'b0));
  FDRE \reg_din_reg[386] 
       (.C(clk),
        .CE(1'b1),
        .D(pmod_o[2]),
        .Q(data3[2]),
        .R(1'b0));
  FDRE \reg_din_reg[387] 
       (.C(clk),
        .CE(1'b1),
        .D(pmod_o[3]),
        .Q(data3[3]),
        .R(1'b0));
  FDRE \reg_din_reg[388] 
       (.C(clk),
        .CE(1'b1),
        .D(pmod_o[4]),
        .Q(data3[4]),
        .R(1'b0));
  FDRE \reg_din_reg[389] 
       (.C(clk),
        .CE(1'b1),
        .D(pmod_o[5]),
        .Q(data3[5]),
        .R(1'b0));
  FDRE \reg_din_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [38]),
        .Q(data14[6]),
        .R(1'b0));
  FDRE \reg_din_reg[390] 
       (.C(clk),
        .CE(1'b1),
        .D(pmod_o[6]),
        .Q(data3[6]),
        .R(1'b0));
  FDRE \reg_din_reg[391] 
       (.C(clk),
        .CE(1'b1),
        .D(pmod_o[7]),
        .Q(data3[7]),
        .R(1'b0));
  FDRE \reg_din_reg[392] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [392]),
        .Q(data3[8]),
        .R(1'b0));
  FDRE \reg_din_reg[393] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [393]),
        .Q(data3[9]),
        .R(1'b0));
  FDRE \reg_din_reg[394] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [394]),
        .Q(data3[10]),
        .R(1'b0));
  FDRE \reg_din_reg[395] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [395]),
        .Q(data3[11]),
        .R(1'b0));
  FDRE \reg_din_reg[396] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [396]),
        .Q(data3[12]),
        .R(1'b0));
  FDRE \reg_din_reg[397] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [397]),
        .Q(data3[13]),
        .R(1'b0));
  FDRE \reg_din_reg[398] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [398]),
        .Q(data3[14]),
        .R(1'b0));
  FDRE \reg_din_reg[399] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [399]),
        .Q(data3[15]),
        .R(1'b0));
  FDRE \reg_din_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [39]),
        .Q(data14[7]),
        .R(1'b0));
  FDRE \reg_din_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [3]),
        .Q(\reg_din_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \reg_din_reg[400] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [400]),
        .Q(data3[16]),
        .R(1'b0));
  FDRE \reg_din_reg[401] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [401]),
        .Q(data3[17]),
        .R(1'b0));
  FDRE \reg_din_reg[402] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [402]),
        .Q(data3[18]),
        .R(1'b0));
  FDRE \reg_din_reg[403] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [403]),
        .Q(data3[19]),
        .R(1'b0));
  FDRE \reg_din_reg[404] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [404]),
        .Q(data3[20]),
        .R(1'b0));
  FDRE \reg_din_reg[405] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [405]),
        .Q(data3[21]),
        .R(1'b0));
  FDRE \reg_din_reg[406] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [406]),
        .Q(data3[22]),
        .R(1'b0));
  FDRE \reg_din_reg[407] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [407]),
        .Q(data3[23]),
        .R(1'b0));
  FDRE \reg_din_reg[408] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [408]),
        .Q(data3[24]),
        .R(1'b0));
  FDRE \reg_din_reg[409] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [409]),
        .Q(data3[25]),
        .R(1'b0));
  FDRE \reg_din_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [40]),
        .Q(data14[8]),
        .R(1'b0));
  FDRE \reg_din_reg[410] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [410]),
        .Q(data3[26]),
        .R(1'b0));
  FDRE \reg_din_reg[411] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [411]),
        .Q(data3[27]),
        .R(1'b0));
  FDRE \reg_din_reg[412] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [412]),
        .Q(data3[28]),
        .R(1'b0));
  FDRE \reg_din_reg[413] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [413]),
        .Q(data3[29]),
        .R(1'b0));
  FDRE \reg_din_reg[414] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [414]),
        .Q(data3[30]),
        .R(1'b0));
  FDRE \reg_din_reg[415] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [415]),
        .Q(data3[31]),
        .R(1'b0));
  FDRE \reg_din_reg[416] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [0]),
        .Q(data2[0]),
        .R(1'b0));
  FDRE \reg_din_reg[417] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [1]),
        .Q(data2[1]),
        .R(1'b0));
  FDRE \reg_din_reg[418] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [2]),
        .Q(data2[2]),
        .R(1'b0));
  FDRE \reg_din_reg[419] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [3]),
        .Q(data2[3]),
        .R(1'b0));
  FDRE \reg_din_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [41]),
        .Q(data14[9]),
        .R(1'b0));
  FDRE \reg_din_reg[420] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [4]),
        .Q(data2[4]),
        .R(1'b0));
  FDRE \reg_din_reg[421] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [5]),
        .Q(data2[5]),
        .R(1'b0));
  FDRE \reg_din_reg[422] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [6]),
        .Q(data2[6]),
        .R(1'b0));
  FDRE \reg_din_reg[423] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [7]),
        .Q(data2[7]),
        .R(1'b0));
  FDRE \reg_din_reg[424] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [8]),
        .Q(data2[8]),
        .R(1'b0));
  FDRE \reg_din_reg[425] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [9]),
        .Q(data2[9]),
        .R(1'b0));
  FDRE \reg_din_reg[426] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [10]),
        .Q(data2[10]),
        .R(1'b0));
  FDRE \reg_din_reg[427] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [11]),
        .Q(data2[11]),
        .R(1'b0));
  FDRE \reg_din_reg[428] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [12]),
        .Q(data2[12]),
        .R(1'b0));
  FDRE \reg_din_reg[429] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [13]),
        .Q(data2[13]),
        .R(1'b0));
  FDRE \reg_din_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [42]),
        .Q(data14[10]),
        .R(1'b0));
  FDRE \reg_din_reg[430] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [14]),
        .Q(data2[14]),
        .R(1'b0));
  FDRE \reg_din_reg[431] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [15]),
        .Q(data2[15]),
        .R(1'b0));
  FDRE \reg_din_reg[432] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [16]),
        .Q(data2[16]),
        .R(1'b0));
  FDRE \reg_din_reg[433] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [17]),
        .Q(data2[17]),
        .R(1'b0));
  FDRE \reg_din_reg[434] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [18]),
        .Q(data2[18]),
        .R(1'b0));
  FDRE \reg_din_reg[435] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [19]),
        .Q(data2[19]),
        .R(1'b0));
  FDRE \reg_din_reg[436] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [20]),
        .Q(data2[20]),
        .R(1'b0));
  FDRE \reg_din_reg[437] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [21]),
        .Q(data2[21]),
        .R(1'b0));
  FDRE \reg_din_reg[438] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [22]),
        .Q(data2[22]),
        .R(1'b0));
  FDRE \reg_din_reg[439] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [23]),
        .Q(data2[23]),
        .R(1'b0));
  FDRE \reg_din_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [43]),
        .Q(data14[11]),
        .R(1'b0));
  FDRE \reg_din_reg[440] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [24]),
        .Q(data2[24]),
        .R(1'b0));
  FDRE \reg_din_reg[441] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [25]),
        .Q(data2[25]),
        .R(1'b0));
  FDRE \reg_din_reg[442] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [26]),
        .Q(data2[26]),
        .R(1'b0));
  FDRE \reg_din_reg[443] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [27]),
        .Q(data2[27]),
        .R(1'b0));
  FDRE \reg_din_reg[444] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [28]),
        .Q(data2[28]),
        .R(1'b0));
  FDRE \reg_din_reg[445] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [29]),
        .Q(data2[29]),
        .R(1'b0));
  FDRE \reg_din_reg[446] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [30]),
        .Q(data2[30]),
        .R(1'b0));
  FDRE \reg_din_reg[447] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[447]_0 [31]),
        .Q(data2[31]),
        .R(1'b0));
  FDRE \reg_din_reg[448] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [0]),
        .Q(data1[0]),
        .R(1'b0));
  FDRE \reg_din_reg[449] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [1]),
        .Q(data1[1]),
        .R(1'b0));
  FDRE \reg_din_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [44]),
        .Q(data14[12]),
        .R(1'b0));
  FDRE \reg_din_reg[450] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [2]),
        .Q(data1[2]),
        .R(1'b0));
  FDRE \reg_din_reg[451] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [3]),
        .Q(data1[3]),
        .R(1'b0));
  FDRE \reg_din_reg[452] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [4]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE \reg_din_reg[453] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [5]),
        .Q(data1[5]),
        .R(1'b0));
  FDRE \reg_din_reg[454] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [6]),
        .Q(data1[6]),
        .R(1'b0));
  FDRE \reg_din_reg[455] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [7]),
        .Q(data1[7]),
        .R(1'b0));
  FDRE \reg_din_reg[456] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [8]),
        .Q(data1[8]),
        .R(1'b0));
  FDRE \reg_din_reg[457] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [9]),
        .Q(data1[9]),
        .R(1'b0));
  FDRE \reg_din_reg[458] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [10]),
        .Q(data1[10]),
        .R(1'b0));
  FDRE \reg_din_reg[459] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [11]),
        .Q(data1[11]),
        .R(1'b0));
  FDRE \reg_din_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [45]),
        .Q(data14[13]),
        .R(1'b0));
  FDRE \reg_din_reg[460] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [12]),
        .Q(data1[12]),
        .R(1'b0));
  FDRE \reg_din_reg[461] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [13]),
        .Q(data1[13]),
        .R(1'b0));
  FDRE \reg_din_reg[462] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [14]),
        .Q(data1[14]),
        .R(1'b0));
  FDRE \reg_din_reg[463] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [15]),
        .Q(data1[15]),
        .R(1'b0));
  FDRE \reg_din_reg[464] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [16]),
        .Q(data1[16]),
        .R(1'b0));
  FDRE \reg_din_reg[465] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [17]),
        .Q(data1[17]),
        .R(1'b0));
  FDRE \reg_din_reg[466] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [18]),
        .Q(data1[18]),
        .R(1'b0));
  FDRE \reg_din_reg[467] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [19]),
        .Q(data1[19]),
        .R(1'b0));
  FDRE \reg_din_reg[468] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [20]),
        .Q(data1[20]),
        .R(1'b0));
  FDRE \reg_din_reg[469] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [21]),
        .Q(data1[21]),
        .R(1'b0));
  FDRE \reg_din_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [46]),
        .Q(data14[14]),
        .R(1'b0));
  FDRE \reg_din_reg[470] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [22]),
        .Q(data1[22]),
        .R(1'b0));
  FDRE \reg_din_reg[471] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [23]),
        .Q(data1[23]),
        .R(1'b0));
  FDRE \reg_din_reg[472] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [24]),
        .Q(data1[24]),
        .R(1'b0));
  FDRE \reg_din_reg[473] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [25]),
        .Q(data1[25]),
        .R(1'b0));
  FDRE \reg_din_reg[474] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [26]),
        .Q(data1[26]),
        .R(1'b0));
  FDRE \reg_din_reg[475] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [27]),
        .Q(data1[27]),
        .R(1'b0));
  FDRE \reg_din_reg[476] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [28]),
        .Q(data1[28]),
        .R(1'b0));
  FDRE \reg_din_reg[477] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [29]),
        .Q(data1[29]),
        .R(1'b0));
  FDRE \reg_din_reg[478] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [30]),
        .Q(data1[30]),
        .R(1'b0));
  FDRE \reg_din_reg[479] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_din_reg[479]_0 [31]),
        .Q(data1[31]),
        .R(1'b0));
  FDRE \reg_din_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [47]),
        .Q(data14[15]),
        .R(1'b0));
  FDRE \reg_din_reg[480] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [72]),
        .Q(data0[0]),
        .R(1'b0));
  FDRE \reg_din_reg[481] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [73]),
        .Q(data0[1]),
        .R(1'b0));
  FDRE \reg_din_reg[482] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [74]),
        .Q(data0[2]),
        .R(1'b0));
  FDRE \reg_din_reg[483] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [75]),
        .Q(data0[3]),
        .R(1'b0));
  FDRE \reg_din_reg[484] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [484]),
        .Q(data0[4]),
        .R(1'b0));
  FDRE \reg_din_reg[485] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [485]),
        .Q(data0[5]),
        .R(1'b0));
  FDRE \reg_din_reg[486] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [486]),
        .Q(data0[6]),
        .R(1'b0));
  FDRE \reg_din_reg[487] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [487]),
        .Q(data0[7]),
        .R(1'b0));
  FDRE \reg_din_reg[488] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [488]),
        .Q(data0[8]),
        .R(1'b0));
  FDRE \reg_din_reg[489] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [489]),
        .Q(data0[9]),
        .R(1'b0));
  FDRE \reg_din_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [48]),
        .Q(data14[16]),
        .R(1'b0));
  FDRE \reg_din_reg[490] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [490]),
        .Q(data0[10]),
        .R(1'b0));
  FDRE \reg_din_reg[491] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [491]),
        .Q(data0[11]),
        .R(1'b0));
  FDRE \reg_din_reg[492] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [492]),
        .Q(data0[12]),
        .R(1'b0));
  FDRE \reg_din_reg[493] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [493]),
        .Q(data0[13]),
        .R(1'b0));
  FDRE \reg_din_reg[494] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [494]),
        .Q(data0[14]),
        .R(1'b0));
  FDRE \reg_din_reg[495] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [495]),
        .Q(data0[15]),
        .R(1'b0));
  FDRE \reg_din_reg[496] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [496]),
        .Q(data0[16]),
        .R(1'b0));
  FDRE \reg_din_reg[497] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [497]),
        .Q(data0[17]),
        .R(1'b0));
  FDRE \reg_din_reg[498] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [498]),
        .Q(data0[18]),
        .R(1'b0));
  FDRE \reg_din_reg[499] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [499]),
        .Q(data0[19]),
        .R(1'b0));
  FDRE \reg_din_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [49]),
        .Q(data14[17]),
        .R(1'b0));
  FDRE \reg_din_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [4]),
        .Q(\reg_din_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \reg_din_reg[500] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [500]),
        .Q(data0[20]),
        .R(1'b0));
  FDRE \reg_din_reg[501] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [501]),
        .Q(data0[21]),
        .R(1'b0));
  FDRE \reg_din_reg[502] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [502]),
        .Q(data0[22]),
        .R(1'b0));
  FDRE \reg_din_reg[503] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [503]),
        .Q(data0[23]),
        .R(1'b0));
  FDRE \reg_din_reg[504] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [504]),
        .Q(data0[24]),
        .R(1'b0));
  FDRE \reg_din_reg[505] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [505]),
        .Q(data0[25]),
        .R(1'b0));
  FDRE \reg_din_reg[506] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [506]),
        .Q(data0[26]),
        .R(1'b0));
  FDRE \reg_din_reg[507] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [507]),
        .Q(data0[27]),
        .R(1'b0));
  FDRE \reg_din_reg[508] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [508]),
        .Q(data0[28]),
        .R(1'b0));
  FDRE \reg_din_reg[509] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [509]),
        .Q(data0[29]),
        .R(1'b0));
  FDRE \reg_din_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [50]),
        .Q(data14[18]),
        .R(1'b0));
  FDRE \reg_din_reg[510] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [510]),
        .Q(data0[30]),
        .R(1'b0));
  FDRE \reg_din_reg[511] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [511]),
        .Q(data0[31]),
        .R(1'b0));
  FDRE \reg_din_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [51]),
        .Q(data14[19]),
        .R(1'b0));
  FDRE \reg_din_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [52]),
        .Q(data14[20]),
        .R(1'b0));
  FDRE \reg_din_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [53]),
        .Q(data14[21]),
        .R(1'b0));
  FDRE \reg_din_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [54]),
        .Q(data14[22]),
        .R(1'b0));
  FDRE \reg_din_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [55]),
        .Q(data14[23]),
        .R(1'b0));
  FDRE \reg_din_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [56]),
        .Q(data14[24]),
        .R(1'b0));
  FDRE \reg_din_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [57]),
        .Q(data14[25]),
        .R(1'b0));
  FDRE \reg_din_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [58]),
        .Q(data14[26]),
        .R(1'b0));
  FDRE \reg_din_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [59]),
        .Q(data14[27]),
        .R(1'b0));
  FDRE \reg_din_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [5]),
        .Q(\reg_din_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \reg_din_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [60]),
        .Q(data14[28]),
        .R(1'b0));
  FDRE \reg_din_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [61]),
        .Q(data14[29]),
        .R(1'b0));
  FDRE \reg_din_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [62]),
        .Q(data14[30]),
        .R(1'b0));
  FDRE \reg_din_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [63]),
        .Q(data14[31]),
        .R(1'b0));
  FDRE \reg_din_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[0]),
        .Q(data13[0]),
        .R(1'b0));
  FDRE \reg_din_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[1]),
        .Q(data13[1]),
        .R(1'b0));
  FDRE \reg_din_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[2]),
        .Q(data13[2]),
        .R(1'b0));
  FDRE \reg_din_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[3]),
        .Q(data13[3]),
        .R(1'b0));
  FDRE \reg_din_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[4]),
        .Q(data13[4]),
        .R(1'b0));
  FDRE \reg_din_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[5]),
        .Q(data13[5]),
        .R(1'b0));
  FDRE \reg_din_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [6]),
        .Q(\reg_din_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \reg_din_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[6]),
        .Q(data13[6]),
        .R(1'b0));
  FDRE \reg_din_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[7]),
        .Q(data13[7]),
        .R(1'b0));
  FDRE \reg_din_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[8]),
        .Q(data13[8]),
        .R(1'b0));
  FDRE \reg_din_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[9]),
        .Q(data13[9]),
        .R(1'b0));
  FDRE \reg_din_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[10]),
        .Q(data13[10]),
        .R(1'b0));
  FDRE \reg_din_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[11]),
        .Q(data13[11]),
        .R(1'b0));
  FDRE \reg_din_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[12]),
        .Q(data13[12]),
        .R(1'b0));
  FDRE \reg_din_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[13]),
        .Q(data13[13]),
        .R(1'b0));
  FDRE \reg_din_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[14]),
        .Q(data13[14]),
        .R(1'b0));
  FDRE \reg_din_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[15]),
        .Q(data13[15]),
        .R(1'b0));
  FDRE \reg_din_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[483]_0 [7]),
        .Q(\reg_din_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \reg_din_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[16]),
        .Q(data13[16]),
        .R(1'b0));
  FDRE \reg_din_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[17]),
        .Q(data13[17]),
        .R(1'b0));
  FDRE \reg_din_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[18]),
        .Q(data13[18]),
        .R(1'b0));
  FDRE \reg_din_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[19]),
        .Q(data13[19]),
        .R(1'b0));
  FDRE \reg_din_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[20]),
        .Q(data13[20]),
        .R(1'b0));
  FDRE \reg_din_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[21]),
        .Q(data13[21]),
        .R(1'b0));
  FDRE \reg_din_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[22]),
        .Q(data13[22]),
        .R(1'b0));
  FDRE \reg_din_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[23]),
        .Q(data13[23]),
        .R(1'b0));
  FDRE \reg_din_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[24]),
        .Q(data13[24]),
        .R(1'b0));
  FDRE \reg_din_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[25]),
        .Q(data13[25]),
        .R(1'b0));
  FDRE \reg_din_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[8]),
        .Q(\reg_din_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \reg_din_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[26]),
        .Q(data13[26]),
        .R(1'b0));
  FDRE \reg_din_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[27]),
        .Q(data13[27]),
        .R(1'b0));
  FDRE \reg_din_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[28]),
        .Q(data13[28]),
        .R(1'b0));
  FDRE \reg_din_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[29]),
        .Q(data13[29]),
        .R(1'b0));
  FDRE \reg_din_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[30]),
        .Q(data13[30]),
        .R(1'b0));
  FDRE \reg_din_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .D(C0[31]),
        .Q(data13[31]),
        .R(1'b0));
  FDRE \reg_din_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[0]),
        .Q(data12[0]),
        .R(1'b0));
  FDRE \reg_din_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[1]),
        .Q(data12[1]),
        .R(1'b0));
  FDRE \reg_din_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[2]),
        .Q(data12[2]),
        .R(1'b0));
  FDRE \reg_din_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .D(C1[3]),
        .Q(data12[3]),
        .R(1'b0));
  FDRE \reg_din_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(Addr[9]),
        .Q(\reg_din_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \reg_reg[0] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[0]),
        .Q(\reg_reg[483]_0 [0]),
        .R(reset));
  FDRE \reg_reg[100] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[4]),
        .Q(C1[4]),
        .R(reset));
  FDRE \reg_reg[101] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[5]),
        .Q(C1[5]),
        .R(reset));
  FDRE \reg_reg[102] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[6]),
        .Q(C1[6]),
        .R(reset));
  FDRE \reg_reg[103] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[7]),
        .Q(C1[7]),
        .R(reset));
  FDRE \reg_reg[104] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(C1[8]),
        .R(reset));
  FDRE \reg_reg[105] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(C1[9]),
        .R(reset));
  FDRE \reg_reg[106] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(C1[10]),
        .R(reset));
  FDRE \reg_reg[107] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(C1[11]),
        .R(reset));
  FDRE \reg_reg[108] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(C1[12]),
        .R(reset));
  FDRE \reg_reg[109] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(C1[13]),
        .R(reset));
  FDRE \reg_reg[10] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(Addr[10]),
        .R(reset));
  FDRE \reg_reg[110] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(C1[14]),
        .R(reset));
  FDRE \reg_reg[111] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(C1[15]),
        .R(reset));
  FDRE \reg_reg[112] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(C1[16]),
        .R(reset));
  FDRE \reg_reg[113] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(C1[17]),
        .R(reset));
  FDRE \reg_reg[114] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(C1[18]),
        .R(reset));
  FDRE \reg_reg[115] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(C1[19]),
        .R(reset));
  FDRE \reg_reg[116] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(C1[20]),
        .R(reset));
  FDRE \reg_reg[117] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(C1[21]),
        .R(reset));
  FDRE \reg_reg[118] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(C1[22]),
        .R(reset));
  FDRE \reg_reg[119] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(C1[23]),
        .R(reset));
  FDRE \reg_reg[11] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(Addr[11]),
        .R(reset));
  FDRE \reg_reg[120] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(C1[24]),
        .R(reset));
  FDRE \reg_reg[121] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(C1[25]),
        .R(reset));
  FDRE \reg_reg[122] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(C1[26]),
        .R(reset));
  FDRE \reg_reg[123] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(C1[27]),
        .R(reset));
  FDRE \reg_reg[124] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(C1[28]),
        .R(reset));
  FDRE \reg_reg[125] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(C1[29]),
        .R(reset));
  FDRE \reg_reg[126] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(C1[30]),
        .R(reset));
  FDRE \reg_reg[127] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(C1[31]),
        .R(reset));
  FDRE \reg_reg[128] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[0]),
        .Q(C2[0]),
        .R(reset));
  FDRE \reg_reg[129] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[1]),
        .Q(C2[1]),
        .R(reset));
  FDRE \reg_reg[12] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(Addr[12]),
        .R(reset));
  FDRE \reg_reg[130] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[2]),
        .Q(C2[2]),
        .R(reset));
  FDRE \reg_reg[131] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[3]),
        .Q(C2[3]),
        .R(reset));
  FDRE \reg_reg[132] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[4]),
        .Q(C2[4]),
        .R(reset));
  FDRE \reg_reg[133] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[5]),
        .Q(C2[5]),
        .R(reset));
  FDRE \reg_reg[134] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[6]),
        .Q(C2[6]),
        .R(reset));
  FDRE \reg_reg[135] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[7]),
        .Q(C2[7]),
        .R(reset));
  FDRE \reg_reg[136] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(C2[8]),
        .R(reset));
  FDRE \reg_reg[137] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(C2[9]),
        .R(reset));
  FDRE \reg_reg[138] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(C2[10]),
        .R(reset));
  FDRE \reg_reg[139] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(C2[11]),
        .R(reset));
  FDRE \reg_reg[13] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(Addr[13]),
        .R(reset));
  FDRE \reg_reg[140] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(C2[12]),
        .R(reset));
  FDRE \reg_reg[141] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(C2[13]),
        .R(reset));
  FDRE \reg_reg[142] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(C2[14]),
        .R(reset));
  FDRE \reg_reg[143] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(C2[15]),
        .R(reset));
  FDRE \reg_reg[144] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(C2[16]),
        .R(reset));
  FDRE \reg_reg[145] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(C2[17]),
        .R(reset));
  FDRE \reg_reg[146] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(C2[18]),
        .R(reset));
  FDRE \reg_reg[147] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(C2[19]),
        .R(reset));
  FDRE \reg_reg[148] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(C2[20]),
        .R(reset));
  FDRE \reg_reg[149] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(C2[21]),
        .R(reset));
  FDRE \reg_reg[14] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(Addr[14]),
        .R(reset));
  FDRE \reg_reg[150] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(C2[22]),
        .R(reset));
  FDRE \reg_reg[151] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(C2[23]),
        .R(reset));
  FDRE \reg_reg[152] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(C2[24]),
        .R(reset));
  FDRE \reg_reg[153] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(C2[25]),
        .R(reset));
  FDRE \reg_reg[154] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(C2[26]),
        .R(reset));
  FDRE \reg_reg[155] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(C2[27]),
        .R(reset));
  FDRE \reg_reg[156] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(C2[28]),
        .R(reset));
  FDRE \reg_reg[157] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(C2[29]),
        .R(reset));
  FDRE \reg_reg[158] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(C2[30]),
        .R(reset));
  FDRE \reg_reg[159] 
       (.C(clk),
        .CE(\reg[159]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(C2[31]),
        .R(reset));
  FDRE \reg_reg[15] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(Addr[15]),
        .R(reset));
  FDRE \reg_reg[160] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[0]),
        .Q(C3[0]),
        .R(reset));
  FDRE \reg_reg[161] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[1]),
        .Q(C3[1]),
        .R(reset));
  FDRE \reg_reg[162] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[2]),
        .Q(C3[2]),
        .R(reset));
  FDRE \reg_reg[163] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[3]),
        .Q(C3[3]),
        .R(reset));
  FDRE \reg_reg[164] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[4]),
        .Q(C3[4]),
        .R(reset));
  FDRE \reg_reg[165] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[5]),
        .Q(C3[5]),
        .R(reset));
  FDRE \reg_reg[166] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[6]),
        .Q(C3[6]),
        .R(reset));
  FDRE \reg_reg[167] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[7]),
        .Q(C3[7]),
        .R(reset));
  FDRE \reg_reg[168] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(C3[8]),
        .R(reset));
  FDRE \reg_reg[169] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(C3[9]),
        .R(reset));
  FDRE \reg_reg[16] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(Addr[16]),
        .R(reset));
  FDRE \reg_reg[170] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(C3[10]),
        .R(reset));
  FDRE \reg_reg[171] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(C3[11]),
        .R(reset));
  FDRE \reg_reg[172] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(C3[12]),
        .R(reset));
  FDRE \reg_reg[173] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(C3[13]),
        .R(reset));
  FDRE \reg_reg[174] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(C3[14]),
        .R(reset));
  FDRE \reg_reg[175] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(C3[15]),
        .R(reset));
  FDRE \reg_reg[176] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(C3[16]),
        .R(reset));
  FDRE \reg_reg[177] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(C3[17]),
        .R(reset));
  FDRE \reg_reg[178] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(C3[18]),
        .R(reset));
  FDRE \reg_reg[179] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(C3[19]),
        .R(reset));
  FDRE \reg_reg[17] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(Addr[17]),
        .R(reset));
  FDRE \reg_reg[180] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(C3[20]),
        .R(reset));
  FDRE \reg_reg[181] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(C3[21]),
        .R(reset));
  FDRE \reg_reg[182] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(C3[22]),
        .R(reset));
  FDRE \reg_reg[183] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(C3[23]),
        .R(reset));
  FDRE \reg_reg[184] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(C3[24]),
        .R(reset));
  FDRE \reg_reg[185] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(C3[25]),
        .R(reset));
  FDRE \reg_reg[186] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(C3[26]),
        .R(reset));
  FDRE \reg_reg[187] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(C3[27]),
        .R(reset));
  FDRE \reg_reg[188] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(C3[28]),
        .R(reset));
  FDRE \reg_reg[189] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(C3[29]),
        .R(reset));
  FDRE \reg_reg[18] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(Addr[18]),
        .R(reset));
  FDRE \reg_reg[190] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(C3[30]),
        .R(reset));
  FDRE \reg_reg[191] 
       (.C(clk),
        .CE(\reg[191]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(C3[31]),
        .R(reset));
  FDRE \reg_reg[192] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[0]),
        .Q(M[0]),
        .R(reset));
  FDRE \reg_reg[193] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[1]),
        .Q(M[1]),
        .R(reset));
  FDRE \reg_reg[194] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[2]),
        .Q(M[2]),
        .R(reset));
  FDRE \reg_reg[195] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[3]),
        .Q(M[3]),
        .R(reset));
  FDRE \reg_reg[196] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[4]),
        .Q(M[4]),
        .R(reset));
  FDRE \reg_reg[197] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[5]),
        .Q(M[5]),
        .R(reset));
  FDRE \reg_reg[198] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[6]),
        .Q(M[6]),
        .R(reset));
  FDRE \reg_reg[199] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[7]),
        .Q(M[7]),
        .R(reset));
  FDRE \reg_reg[19] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(Addr[19]),
        .R(reset));
  FDRE \reg_reg[1] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[1]),
        .Q(\reg_reg[483]_0 [1]),
        .R(reset));
  FDRE \reg_reg[200] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(M[8]),
        .R(reset));
  FDRE \reg_reg[201] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(M[9]),
        .R(reset));
  FDRE \reg_reg[202] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(M[10]),
        .R(reset));
  FDRE \reg_reg[203] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(M[11]),
        .R(reset));
  FDRE \reg_reg[204] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(M[12]),
        .R(reset));
  FDRE \reg_reg[205] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(M[13]),
        .R(reset));
  FDRE \reg_reg[206] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(M[14]),
        .R(reset));
  FDRE \reg_reg[207] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(M[15]),
        .R(reset));
  FDRE \reg_reg[208] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(M[16]),
        .R(reset));
  FDRE \reg_reg[209] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(M[17]),
        .R(reset));
  FDRE \reg_reg[20] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(Addr[20]),
        .R(reset));
  FDRE \reg_reg[210] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(M[18]),
        .R(reset));
  FDRE \reg_reg[211] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(M[19]),
        .R(reset));
  FDRE \reg_reg[212] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(M[20]),
        .R(reset));
  FDRE \reg_reg[213] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(M[21]),
        .R(reset));
  FDRE \reg_reg[214] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(M[22]),
        .R(reset));
  FDRE \reg_reg[215] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(M[23]),
        .R(reset));
  FDRE \reg_reg[216] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(M[24]),
        .R(reset));
  FDRE \reg_reg[217] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(M[25]),
        .R(reset));
  FDRE \reg_reg[218] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(M[26]),
        .R(reset));
  FDRE \reg_reg[219] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(M[27]),
        .R(reset));
  FDRE \reg_reg[21] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(Addr[21]),
        .R(reset));
  FDRE \reg_reg[220] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(M[28]),
        .R(reset));
  FDRE \reg_reg[221] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(M[29]),
        .R(reset));
  FDRE \reg_reg[222] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(M[30]),
        .R(reset));
  FDRE \reg_reg[223] 
       (.C(clk),
        .CE(\reg[223]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(M[31]),
        .R(reset));
  FDRE \reg_reg[224] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[0]),
        .Q(tper_cnt[0]),
        .R(reset));
  FDRE \reg_reg[225] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[1]),
        .Q(tper_cnt[1]),
        .R(reset));
  FDRE \reg_reg[226] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[2]),
        .Q(tper_cnt[2]),
        .R(reset));
  FDRE \reg_reg[227] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[3]),
        .Q(tper_cnt[3]),
        .R(reset));
  FDRE \reg_reg[228] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[4]),
        .Q(tper_cnt[4]),
        .R(reset));
  FDRE \reg_reg[229] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[5]),
        .Q(tper_cnt[5]),
        .R(reset));
  FDRE \reg_reg[22] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(Addr[22]),
        .R(reset));
  FDRE \reg_reg[230] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[6]),
        .Q(tper_cnt[6]),
        .R(reset));
  FDRE \reg_reg[231] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[7]),
        .Q(tper_cnt[7]),
        .R(reset));
  FDRE \reg_reg[232] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(tper_cnt[8]),
        .R(reset));
  FDRE \reg_reg[233] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(tper_cnt[9]),
        .R(reset));
  FDRE \reg_reg[234] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(tper_cnt[10]),
        .R(reset));
  FDRE \reg_reg[235] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(tper_cnt[11]),
        .R(reset));
  FDRE \reg_reg[236] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(tper_cnt[12]),
        .R(reset));
  FDRE \reg_reg[237] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(tper_cnt[13]),
        .R(reset));
  FDRE \reg_reg[238] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(tper_cnt[14]),
        .R(reset));
  FDRE \reg_reg[239] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(tper_cnt[15]),
        .R(reset));
  FDRE \reg_reg[23] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(Addr[23]),
        .R(reset));
  FDRE \reg_reg[240] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(tper_cnt[16]),
        .R(reset));
  FDRE \reg_reg[241] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(tper_cnt[17]),
        .R(reset));
  FDRE \reg_reg[242] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(tper_cnt[18]),
        .R(reset));
  FDRE \reg_reg[243] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(tper_cnt[19]),
        .R(reset));
  FDRE \reg_reg[244] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(tper_cnt[20]),
        .R(reset));
  FDRE \reg_reg[245] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(tper_cnt[21]),
        .R(reset));
  FDRE \reg_reg[246] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(tper_cnt[22]),
        .R(reset));
  FDRE \reg_reg[247] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(tper_cnt[23]),
        .R(reset));
  FDRE \reg_reg[248] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(tper_cnt[24]),
        .R(reset));
  FDRE \reg_reg[249] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(tper_cnt[25]),
        .R(reset));
  FDRE \reg_reg[24] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(Addr[24]),
        .R(reset));
  FDRE \reg_reg[250] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(tper_cnt[26]),
        .R(reset));
  FDRE \reg_reg[251] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(tper_cnt[27]),
        .R(reset));
  FDRE \reg_reg[252] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(tper_cnt[28]),
        .R(reset));
  FDRE \reg_reg[253] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(tper_cnt[29]),
        .R(reset));
  FDRE \reg_reg[254] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(tper_cnt[30]),
        .R(reset));
  FDRE \reg_reg[255] 
       (.C(clk),
        .CE(\reg[255]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(tper_cnt[31]),
        .R(reset));
  FDRE \reg_reg[256] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[0]),
        .Q(Reset_HDL[0]),
        .R(reset));
  FDRE \reg_reg[257] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[1]),
        .Q(Reset_HDL[1]),
        .R(reset));
  FDRE \reg_reg[258] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[2]),
        .Q(Reset_HDL[2]),
        .R(reset));
  FDRE \reg_reg[259] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[3]),
        .Q(Reset_HDL[3]),
        .R(reset));
  FDRE \reg_reg[25] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(Addr[25]),
        .R(reset));
  FDRE \reg_reg[260] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[4]),
        .Q(Reset_HDL[4]),
        .R(reset));
  FDRE \reg_reg[261] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[5]),
        .Q(Reset_HDL[5]),
        .R(reset));
  FDRE \reg_reg[262] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[6]),
        .Q(Reset_HDL[6]),
        .R(reset));
  FDRE \reg_reg[263] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[7]),
        .Q(Reset_HDL[7]),
        .R(reset));
  FDRE \reg_reg[264] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(Reset_HDL[8]),
        .R(reset));
  FDRE \reg_reg[265] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(Reset_HDL[9]),
        .R(reset));
  FDRE \reg_reg[266] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(Reset_HDL[10]),
        .R(reset));
  FDRE \reg_reg[267] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(Reset_HDL[11]),
        .R(reset));
  FDRE \reg_reg[268] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(Reset_HDL[12]),
        .R(reset));
  FDRE \reg_reg[269] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(Reset_HDL[13]),
        .R(reset));
  FDRE \reg_reg[26] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(Addr[26]),
        .R(reset));
  FDRE \reg_reg[270] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(Reset_HDL[14]),
        .R(reset));
  FDRE \reg_reg[271] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(Reset_HDL[15]),
        .R(reset));
  FDRE \reg_reg[272] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(Reset_HDL[16]),
        .R(reset));
  FDRE \reg_reg[273] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(Reset_HDL[17]),
        .R(reset));
  FDRE \reg_reg[274] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(Reset_HDL[18]),
        .R(reset));
  FDRE \reg_reg[275] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(Reset_HDL[19]),
        .R(reset));
  FDRE \reg_reg[276] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(Reset_HDL[20]),
        .R(reset));
  FDRE \reg_reg[277] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(Reset_HDL[21]),
        .R(reset));
  FDRE \reg_reg[278] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(Reset_HDL[22]),
        .R(reset));
  FDRE \reg_reg[279] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(Reset_HDL[23]),
        .R(reset));
  FDRE \reg_reg[27] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(Addr[27]),
        .R(reset));
  FDRE \reg_reg[280] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(Reset_HDL[24]),
        .R(reset));
  FDRE \reg_reg[281] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(Reset_HDL[25]),
        .R(reset));
  FDRE \reg_reg[282] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(Reset_HDL[26]),
        .R(reset));
  FDRE \reg_reg[283] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(Reset_HDL[27]),
        .R(reset));
  FDRE \reg_reg[284] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(Reset_HDL[28]),
        .R(reset));
  FDRE \reg_reg[285] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(Reset_HDL[29]),
        .R(reset));
  FDRE \reg_reg[286] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(Reset_HDL[30]),
        .R(reset));
  FDRE \reg_reg[287] 
       (.C(clk),
        .CE(\reg[287]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(Reset_HDL[31]),
        .R(reset));
  FDRE \reg_reg[288] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[0]),
        .Q(\reg_reg[483]_0 [8]),
        .R(reset));
  FDRE \reg_reg[289] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[1]),
        .Q(\reg_reg[483]_0 [9]),
        .R(reset));
  FDRE \reg_reg[28] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(Addr[28]),
        .R(reset));
  FDRE \reg_reg[290] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[2]),
        .Q(\reg_reg[483]_0 [10]),
        .R(reset));
  FDRE \reg_reg[291] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[3]),
        .Q(\reg_reg[483]_0 [11]),
        .R(reset));
  FDRE \reg_reg[292] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[4]),
        .Q(\reg_reg[483]_0 [12]),
        .R(reset));
  FDRE \reg_reg[293] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[5]),
        .Q(\reg_reg[483]_0 [13]),
        .R(reset));
  FDRE \reg_reg[294] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[6]),
        .Q(\reg_reg[483]_0 [14]),
        .R(reset));
  FDRE \reg_reg[295] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[7]),
        .Q(\reg_reg[483]_0 [15]),
        .R(reset));
  FDRE \reg_reg[296] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(\reg_reg[483]_0 [16]),
        .R(reset));
  FDRE \reg_reg[297] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(\reg_reg[483]_0 [17]),
        .R(reset));
  FDRE \reg_reg[298] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(\reg_reg[483]_0 [18]),
        .R(reset));
  FDRE \reg_reg[299] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(\reg_reg[483]_0 [19]),
        .R(reset));
  FDRE \reg_reg[29] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(Addr[29]),
        .R(reset));
  FDRE \reg_reg[2] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[2]),
        .Q(\reg_reg[483]_0 [2]),
        .R(reset));
  FDRE \reg_reg[300] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(\reg_reg[483]_0 [20]),
        .R(reset));
  FDRE \reg_reg[301] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(\reg_reg[483]_0 [21]),
        .R(reset));
  FDRE \reg_reg[302] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(\reg_reg[483]_0 [22]),
        .R(reset));
  FDRE \reg_reg[303] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(\reg_reg[483]_0 [23]),
        .R(reset));
  FDRE \reg_reg[304] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(\reg_reg[483]_0 [24]),
        .R(reset));
  FDRE \reg_reg[305] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(\reg_reg[483]_0 [25]),
        .R(reset));
  FDRE \reg_reg[306] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(\reg_reg[483]_0 [26]),
        .R(reset));
  FDRE \reg_reg[307] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(\reg_reg[483]_0 [27]),
        .R(reset));
  FDRE \reg_reg[308] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(\reg_reg[483]_0 [28]),
        .R(reset));
  FDRE \reg_reg[309] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(\reg_reg[483]_0 [29]),
        .R(reset));
  FDRE \reg_reg[30] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(Addr[30]),
        .R(reset));
  FDRE \reg_reg[310] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(\reg_reg[483]_0 [30]),
        .R(reset));
  FDRE \reg_reg[311] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(\reg_reg[483]_0 [31]),
        .R(reset));
  FDRE \reg_reg[312] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(\reg_reg[483]_0 [32]),
        .R(reset));
  FDRE \reg_reg[313] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(\reg_reg[483]_0 [33]),
        .R(reset));
  FDRE \reg_reg[314] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(\reg_reg[483]_0 [34]),
        .R(reset));
  FDRE \reg_reg[315] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(\reg_reg[483]_0 [35]),
        .R(reset));
  FDRE \reg_reg[316] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(\reg_reg[483]_0 [36]),
        .R(reset));
  FDRE \reg_reg[317] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(\reg_reg[483]_0 [37]),
        .R(reset));
  FDRE \reg_reg[318] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(\reg_reg[483]_0 [38]),
        .R(reset));
  FDRE \reg_reg[319] 
       (.C(clk),
        .CE(\reg[319]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(\reg_reg[483]_0 [39]),
        .R(reset));
  FDRE \reg_reg[31] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(Addr[31]),
        .R(reset));
  FDRE \reg_reg[320] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[0]),
        .Q(\reg_reg[483]_0 [40]),
        .R(reset));
  FDRE \reg_reg[321] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[1]),
        .Q(\reg_reg[483]_0 [41]),
        .R(reset));
  FDRE \reg_reg[322] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[2]),
        .Q(\reg_reg[483]_0 [42]),
        .R(reset));
  FDRE \reg_reg[323] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[3]),
        .Q(\reg_reg[483]_0 [43]),
        .R(reset));
  FDRE \reg_reg[324] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[4]),
        .Q(\reg_reg[483]_0 [44]),
        .R(reset));
  FDRE \reg_reg[325] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[5]),
        .Q(\reg_reg[483]_0 [45]),
        .R(reset));
  FDRE \reg_reg[326] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[6]),
        .Q(\reg_reg[483]_0 [46]),
        .R(reset));
  FDRE \reg_reg[327] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[7]),
        .Q(\reg_reg[483]_0 [47]),
        .R(reset));
  FDRE \reg_reg[328] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(\reg_reg[483]_0 [48]),
        .R(reset));
  FDRE \reg_reg[329] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(\reg_reg[483]_0 [49]),
        .R(reset));
  FDRE \reg_reg[32] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[0]),
        .Q(Write),
        .R(reset));
  FDRE \reg_reg[330] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(\reg_reg[483]_0 [50]),
        .R(reset));
  FDRE \reg_reg[331] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(\reg_reg[483]_0 [51]),
        .R(reset));
  FDRE \reg_reg[332] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(\reg_reg[483]_0 [52]),
        .R(reset));
  FDRE \reg_reg[333] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(\reg_reg[483]_0 [53]),
        .R(reset));
  FDRE \reg_reg[334] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(\reg_reg[483]_0 [54]),
        .R(reset));
  FDRE \reg_reg[335] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(\reg_reg[483]_0 [55]),
        .R(reset));
  FDRE \reg_reg[336] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(\reg_reg[483]_0 [56]),
        .R(reset));
  FDRE \reg_reg[337] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(\reg_reg[483]_0 [57]),
        .R(reset));
  FDRE \reg_reg[338] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(\reg_reg[483]_0 [58]),
        .R(reset));
  FDRE \reg_reg[339] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(\reg_reg[483]_0 [59]),
        .R(reset));
  FDRE \reg_reg[33] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[1]),
        .Q(\reg [33]),
        .R(reset));
  FDRE \reg_reg[340] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(\reg_reg[483]_0 [60]),
        .R(reset));
  FDRE \reg_reg[341] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(\reg_reg[483]_0 [61]),
        .R(reset));
  FDRE \reg_reg[342] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(\reg_reg[483]_0 [62]),
        .R(reset));
  FDRE \reg_reg[343] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(\reg_reg[483]_0 [63]),
        .R(reset));
  FDRE \reg_reg[344] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(\reg_reg[483]_0 [64]),
        .R(reset));
  FDRE \reg_reg[345] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(\reg_reg[483]_0 [65]),
        .R(reset));
  FDRE \reg_reg[346] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(\reg_reg[483]_0 [66]),
        .R(reset));
  FDRE \reg_reg[347] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(\reg_reg[483]_0 [67]),
        .R(reset));
  FDRE \reg_reg[348] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(\reg_reg[483]_0 [68]),
        .R(reset));
  FDRE \reg_reg[349] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(\reg_reg[483]_0 [69]),
        .R(reset));
  FDRE \reg_reg[34] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[2]),
        .Q(\reg [34]),
        .R(reset));
  FDRE \reg_reg[350] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(\reg_reg[483]_0 [70]),
        .R(reset));
  FDRE \reg_reg[351] 
       (.C(clk),
        .CE(\reg[351]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(\reg_reg[483]_0 [71]),
        .R(reset));
  FDRE \reg_reg[35] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[3]),
        .Q(\reg [35]),
        .R(reset));
  FDRE \reg_reg[360] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(\reg [360]),
        .R(reset));
  FDRE \reg_reg[361] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(\reg [361]),
        .R(reset));
  FDRE \reg_reg[362] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(\reg [362]),
        .R(reset));
  FDRE \reg_reg[363] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(\reg [363]),
        .R(reset));
  FDRE \reg_reg[364] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(\reg [364]),
        .R(reset));
  FDRE \reg_reg[365] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(\reg [365]),
        .R(reset));
  FDRE \reg_reg[366] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(\reg [366]),
        .R(reset));
  FDRE \reg_reg[367] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(\reg [367]),
        .R(reset));
  FDRE \reg_reg[368] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(\reg [368]),
        .R(reset));
  FDRE \reg_reg[369] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(\reg [369]),
        .R(reset));
  FDRE \reg_reg[36] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[4]),
        .Q(\reg [36]),
        .R(reset));
  FDRE \reg_reg[370] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(\reg [370]),
        .R(reset));
  FDRE \reg_reg[371] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(\reg [371]),
        .R(reset));
  FDRE \reg_reg[372] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(\reg [372]),
        .R(reset));
  FDRE \reg_reg[373] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(\reg [373]),
        .R(reset));
  FDRE \reg_reg[374] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(\reg [374]),
        .R(reset));
  FDRE \reg_reg[375] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(\reg [375]),
        .R(reset));
  FDRE \reg_reg[376] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(\reg [376]),
        .R(reset));
  FDRE \reg_reg[377] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(\reg [377]),
        .R(reset));
  FDRE \reg_reg[378] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(\reg [378]),
        .R(reset));
  FDRE \reg_reg[379] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(\reg [379]),
        .R(reset));
  FDRE \reg_reg[37] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[5]),
        .Q(\reg [37]),
        .R(reset));
  FDRE \reg_reg[380] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(\reg [380]),
        .R(reset));
  FDRE \reg_reg[381] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(\reg [381]),
        .R(reset));
  FDRE \reg_reg[382] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(\reg [382]),
        .R(reset));
  FDRE \reg_reg[383] 
       (.C(clk),
        .CE(\reg[383]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(\reg [383]),
        .R(reset));
  FDRE \reg_reg[384] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[0]),
        .Q(pmod_o[0]),
        .R(reset));
  FDRE \reg_reg[385] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[1]),
        .Q(pmod_o[1]),
        .R(reset));
  FDRE \reg_reg[386] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[2]),
        .Q(pmod_o[2]),
        .R(reset));
  FDRE \reg_reg[387] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[3]),
        .Q(pmod_o[3]),
        .R(reset));
  FDRE \reg_reg[388] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[4]),
        .Q(pmod_o[4]),
        .R(reset));
  FDRE \reg_reg[389] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[5]),
        .Q(pmod_o[5]),
        .R(reset));
  FDRE \reg_reg[38] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[6]),
        .Q(\reg [38]),
        .R(reset));
  FDRE \reg_reg[390] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[6]),
        .Q(pmod_o[6]),
        .R(reset));
  FDRE \reg_reg[391] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[7]),
        .Q(pmod_o[7]),
        .R(reset));
  FDRE \reg_reg[392] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(\reg [392]),
        .R(reset));
  FDRE \reg_reg[393] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(\reg [393]),
        .R(reset));
  FDRE \reg_reg[394] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(\reg [394]),
        .R(reset));
  FDRE \reg_reg[395] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(\reg [395]),
        .R(reset));
  FDRE \reg_reg[396] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(\reg [396]),
        .R(reset));
  FDRE \reg_reg[397] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(\reg [397]),
        .R(reset));
  FDRE \reg_reg[398] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(\reg [398]),
        .R(reset));
  FDRE \reg_reg[399] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(\reg [399]),
        .R(reset));
  FDRE \reg_reg[39] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[7]),
        .Q(\reg [39]),
        .R(reset));
  FDRE \reg_reg[3] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[3]),
        .Q(\reg_reg[483]_0 [3]),
        .R(reset));
  FDRE \reg_reg[400] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(\reg [400]),
        .R(reset));
  FDRE \reg_reg[401] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(\reg [401]),
        .R(reset));
  FDRE \reg_reg[402] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(\reg [402]),
        .R(reset));
  FDRE \reg_reg[403] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(\reg [403]),
        .R(reset));
  FDRE \reg_reg[404] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(\reg [404]),
        .R(reset));
  FDRE \reg_reg[405] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(\reg [405]),
        .R(reset));
  FDRE \reg_reg[406] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(\reg [406]),
        .R(reset));
  FDRE \reg_reg[407] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(\reg [407]),
        .R(reset));
  FDRE \reg_reg[408] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(\reg [408]),
        .R(reset));
  FDRE \reg_reg[409] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(\reg [409]),
        .R(reset));
  FDRE \reg_reg[40] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(\reg [40]),
        .R(reset));
  FDRE \reg_reg[410] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(\reg [410]),
        .R(reset));
  FDRE \reg_reg[411] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(\reg [411]),
        .R(reset));
  FDRE \reg_reg[412] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(\reg [412]),
        .R(reset));
  FDRE \reg_reg[413] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(\reg [413]),
        .R(reset));
  FDRE \reg_reg[414] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(\reg [414]),
        .R(reset));
  FDRE \reg_reg[415] 
       (.C(clk),
        .CE(\reg[415]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(\reg [415]),
        .R(reset));
  FDRE \reg_reg[41] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(\reg [41]),
        .R(reset));
  FDRE \reg_reg[42] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(\reg [42]),
        .R(reset));
  FDRE \reg_reg[43] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(\reg [43]),
        .R(reset));
  FDRE \reg_reg[44] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(\reg [44]),
        .R(reset));
  FDRE \reg_reg[45] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(\reg [45]),
        .R(reset));
  FDRE \reg_reg[46] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(\reg [46]),
        .R(reset));
  FDRE \reg_reg[47] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(\reg [47]),
        .R(reset));
  FDRE \reg_reg[480] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[0]),
        .Q(\reg_reg[483]_0 [72]),
        .R(reset));
  FDSE \reg_reg[481] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[1]),
        .Q(\reg_reg[483]_0 [73]),
        .S(reset));
  FDSE \reg_reg[482] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[2]),
        .Q(\reg_reg[483]_0 [74]),
        .S(reset));
  FDRE \reg_reg[483] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[3]),
        .Q(\reg_reg[483]_0 [75]),
        .R(reset));
  FDRE \reg_reg[484] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[4]),
        .Q(\reg [484]),
        .R(reset));
  FDRE \reg_reg[485] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[5]),
        .Q(\reg [485]),
        .R(reset));
  FDRE \reg_reg[486] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[6]),
        .Q(\reg [486]),
        .R(reset));
  FDRE \reg_reg[487] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[7]),
        .Q(\reg [487]),
        .R(reset));
  FDRE \reg_reg[488] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(\reg [488]),
        .R(reset));
  FDRE \reg_reg[489] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(\reg [489]),
        .R(reset));
  FDRE \reg_reg[48] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(\reg [48]),
        .R(reset));
  FDRE \reg_reg[490] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(\reg [490]),
        .R(reset));
  FDRE \reg_reg[491] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(\reg [491]),
        .R(reset));
  FDRE \reg_reg[492] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(\reg [492]),
        .R(reset));
  FDRE \reg_reg[493] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(\reg [493]),
        .R(reset));
  FDRE \reg_reg[494] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(\reg [494]),
        .R(reset));
  FDRE \reg_reg[495] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(\reg [495]),
        .R(reset));
  FDRE \reg_reg[496] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(\reg [496]),
        .R(reset));
  FDRE \reg_reg[497] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(\reg [497]),
        .R(reset));
  FDRE \reg_reg[498] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(\reg [498]),
        .R(reset));
  FDRE \reg_reg[499] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(\reg [499]),
        .R(reset));
  FDRE \reg_reg[49] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(\reg [49]),
        .R(reset));
  FDRE \reg_reg[4] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[4]),
        .Q(\reg_reg[483]_0 [4]),
        .R(reset));
  FDRE \reg_reg[500] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(\reg [500]),
        .R(reset));
  FDRE \reg_reg[501] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(\reg [501]),
        .R(reset));
  FDRE \reg_reg[502] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(\reg [502]),
        .R(reset));
  FDRE \reg_reg[503] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(\reg [503]),
        .R(reset));
  FDRE \reg_reg[504] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(\reg [504]),
        .R(reset));
  FDRE \reg_reg[505] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(\reg [505]),
        .R(reset));
  FDRE \reg_reg[506] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(\reg [506]),
        .R(reset));
  FDRE \reg_reg[507] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(\reg [507]),
        .R(reset));
  FDRE \reg_reg[508] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(\reg [508]),
        .R(reset));
  FDRE \reg_reg[509] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(\reg [509]),
        .R(reset));
  FDRE \reg_reg[50] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(\reg [50]),
        .R(reset));
  FDRE \reg_reg[510] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(\reg [510]),
        .R(reset));
  FDRE \reg_reg[511] 
       (.C(clk),
        .CE(\reg[483]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(\reg [511]),
        .R(reset));
  FDRE \reg_reg[51] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(\reg [51]),
        .R(reset));
  FDRE \reg_reg[52] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(\reg [52]),
        .R(reset));
  FDRE \reg_reg[53] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(\reg [53]),
        .R(reset));
  FDRE \reg_reg[54] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(\reg [54]),
        .R(reset));
  FDRE \reg_reg[55] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(\reg [55]),
        .R(reset));
  FDRE \reg_reg[56] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(\reg [56]),
        .R(reset));
  FDRE \reg_reg[57] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(\reg [57]),
        .R(reset));
  FDRE \reg_reg[58] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(\reg [58]),
        .R(reset));
  FDRE \reg_reg[59] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(\reg [59]),
        .R(reset));
  FDRE \reg_reg[5] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[5]),
        .Q(\reg_reg[483]_0 [5]),
        .R(reset));
  FDRE \reg_reg[60] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(\reg [60]),
        .R(reset));
  FDRE \reg_reg[61] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(\reg [61]),
        .R(reset));
  FDRE \reg_reg[62] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(\reg [62]),
        .R(reset));
  FDRE \reg_reg[63] 
       (.C(clk),
        .CE(\reg[63]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(\reg [63]),
        .R(reset));
  FDRE \reg_reg[64] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[0]),
        .Q(C0[0]),
        .R(reset));
  FDRE \reg_reg[65] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[1]),
        .Q(C0[1]),
        .R(reset));
  FDRE \reg_reg[66] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[2]),
        .Q(C0[2]),
        .R(reset));
  FDRE \reg_reg[67] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[3]),
        .Q(C0[3]),
        .R(reset));
  FDRE \reg_reg[68] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[4]),
        .Q(C0[4]),
        .R(reset));
  FDRE \reg_reg[69] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[5]),
        .Q(C0[5]),
        .R(reset));
  FDRE \reg_reg[6] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[6]),
        .Q(\reg_reg[483]_0 [6]),
        .R(reset));
  FDRE \reg_reg[70] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[6]),
        .Q(C0[6]),
        .R(reset));
  FDRE \reg_reg[71] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[7]),
        .Q(C0[7]),
        .R(reset));
  FDRE \reg_reg[72] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(C0[8]),
        .R(reset));
  FDRE \reg_reg[73] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(C0[9]),
        .R(reset));
  FDRE \reg_reg[74] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[10]),
        .Q(C0[10]),
        .R(reset));
  FDRE \reg_reg[75] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[11]),
        .Q(C0[11]),
        .R(reset));
  FDRE \reg_reg[76] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[12]),
        .Q(C0[12]),
        .R(reset));
  FDRE \reg_reg[77] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[13]),
        .Q(C0[13]),
        .R(reset));
  FDRE \reg_reg[78] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[14]),
        .Q(C0[14]),
        .R(reset));
  FDRE \reg_reg[79] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[15]),
        .Q(C0[15]),
        .R(reset));
  FDRE \reg_reg[7] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[7]),
        .Q(\reg_reg[483]_0 [7]),
        .R(reset));
  FDRE \reg_reg[80] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[16]),
        .Q(C0[16]),
        .R(reset));
  FDRE \reg_reg[81] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[17]),
        .Q(C0[17]),
        .R(reset));
  FDRE \reg_reg[82] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[18]),
        .Q(C0[18]),
        .R(reset));
  FDRE \reg_reg[83] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[19]),
        .Q(C0[19]),
        .R(reset));
  FDRE \reg_reg[84] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[20]),
        .Q(C0[20]),
        .R(reset));
  FDRE \reg_reg[85] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[21]),
        .Q(C0[21]),
        .R(reset));
  FDRE \reg_reg[86] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[22]),
        .Q(C0[22]),
        .R(reset));
  FDRE \reg_reg[87] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[23]),
        .Q(C0[23]),
        .R(reset));
  FDRE \reg_reg[88] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[24]),
        .Q(C0[24]),
        .R(reset));
  FDRE \reg_reg[89] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[25]),
        .Q(C0[25]),
        .R(reset));
  FDRE \reg_reg[8] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[8]),
        .Q(Addr[8]),
        .R(reset));
  FDRE \reg_reg[90] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[26]),
        .Q(C0[26]),
        .R(reset));
  FDRE \reg_reg[91] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[27]),
        .Q(C0[27]),
        .R(reset));
  FDRE \reg_reg[92] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[28]),
        .Q(C0[28]),
        .R(reset));
  FDRE \reg_reg[93] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[29]),
        .Q(C0[29]),
        .R(reset));
  FDRE \reg_reg[94] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[30]),
        .Q(C0[30]),
        .R(reset));
  FDRE \reg_reg[95] 
       (.C(clk),
        .CE(\reg[95]_i_1_n_0 ),
        .D(sbus_wdata[31]),
        .Q(C0[31]),
        .R(reset));
  FDRE \reg_reg[96] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[0]),
        .Q(C1[0]),
        .R(reset));
  FDRE \reg_reg[97] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[1]),
        .Q(C1[1]),
        .R(reset));
  FDRE \reg_reg[98] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[2]),
        .Q(C1[2]),
        .R(reset));
  FDRE \reg_reg[99] 
       (.C(clk),
        .CE(\reg[127]_i_1_n_0 ),
        .D(sbus_wdata[3]),
        .Q(C1[3]),
        .R(reset));
  FDRE \reg_reg[9] 
       (.C(clk),
        .CE(\reg[31]_i_1_n_0 ),
        .D(sbus_wdata[9]),
        .Q(Addr[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'hE0)) 
    sbus_ack_i_1
       (.I0(sbus_rd),
        .I1(sbus_we),
        .I2(sbus_ack_i_2_n_0),
        .O(sbus_ack0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    sbus_ack_i_2
       (.I0(\reg[483]_i_5_n_0 ),
        .I1(sbus_addr[7]),
        .I2(sbus_addr[6]),
        .I3(sbus_addr[5]),
        .I4(sbus_addr[4]),
        .I5(\reg[483]_i_3_n_0 ),
        .O(sbus_ack_i_2_n_0));
  FDRE sbus_ack_reg
       (.C(clk),
        .CE(1'b1),
        .D(sbus_ack0),
        .Q(sbus_ack),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[0]_i_1 
       (.I0(\sbus_rdata[0]_i_2_n_0 ),
        .I1(\sbus_rdata[0]_i_3_n_0 ),
        .I2(\sbus_rdata[0]_i_4_n_0 ),
        .I3(\sbus_rdata[0]_i_5_n_0 ),
        .I4(\sbus_rdata[0]_i_6_n_0 ),
        .I5(\sbus_rdata[0]_i_7_n_0 ),
        .O(\sbus_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[0]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[0]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[0]),
        .I4(data4[0]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[0]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[0]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[0]),
        .I4(data7[0]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[0]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[0] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[0]),
        .I4(data13[0]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[0]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[0]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[0]),
        .I4(data10[0]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[0]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[0]),
        .O(\sbus_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[0]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[0]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[0]),
        .I4(data1[0]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[10]_i_1 
       (.I0(\sbus_rdata[10]_i_2_n_0 ),
        .I1(\sbus_rdata[10]_i_3_n_0 ),
        .I2(\sbus_rdata[10]_i_4_n_0 ),
        .I3(\sbus_rdata[10]_i_5_n_0 ),
        .I4(\sbus_rdata[10]_i_6_n_0 ),
        .I5(\sbus_rdata[10]_i_7_n_0 ),
        .O(\sbus_rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[10]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[10]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[10]),
        .I4(data4[10]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[10]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[10]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[10]),
        .I4(data7[10]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[10]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[10] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[10]),
        .I4(data13[10]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[10]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[10]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[10]),
        .I4(data10[10]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[10]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[10]),
        .O(\sbus_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[10]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[10]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[10]),
        .I4(data1[10]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[11]_i_1 
       (.I0(\sbus_rdata[11]_i_2_n_0 ),
        .I1(\sbus_rdata[11]_i_3_n_0 ),
        .I2(\sbus_rdata[11]_i_4_n_0 ),
        .I3(\sbus_rdata[11]_i_5_n_0 ),
        .I4(\sbus_rdata[11]_i_6_n_0 ),
        .I5(\sbus_rdata[11]_i_7_n_0 ),
        .O(\sbus_rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[11]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[11]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[11]),
        .I4(data4[11]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[11]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[11]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[11]),
        .I4(data7[11]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[11]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[11] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[11]),
        .I4(data13[11]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[11]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[11]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[11]),
        .I4(data10[11]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[11]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[11]),
        .O(\sbus_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[11]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[11]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[11]),
        .I4(data1[11]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[12]_i_1 
       (.I0(\sbus_rdata[12]_i_2_n_0 ),
        .I1(\sbus_rdata[12]_i_3_n_0 ),
        .I2(\sbus_rdata[12]_i_4_n_0 ),
        .I3(\sbus_rdata[12]_i_5_n_0 ),
        .I4(\sbus_rdata[12]_i_6_n_0 ),
        .I5(\sbus_rdata[12]_i_7_n_0 ),
        .O(\sbus_rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[12]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[12]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[12]),
        .I4(data4[12]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[12]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[12]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[12]),
        .I4(data7[12]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[12]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[12] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[12]),
        .I4(data13[12]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[12]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[12]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[12]),
        .I4(data10[12]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[12]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[12]),
        .O(\sbus_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[12]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[12]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[12]),
        .I4(data1[12]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[13]_i_1 
       (.I0(\sbus_rdata[13]_i_2_n_0 ),
        .I1(\sbus_rdata[13]_i_3_n_0 ),
        .I2(\sbus_rdata[13]_i_4_n_0 ),
        .I3(\sbus_rdata[13]_i_5_n_0 ),
        .I4(\sbus_rdata[13]_i_6_n_0 ),
        .I5(\sbus_rdata[13]_i_7_n_0 ),
        .O(\sbus_rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[13]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[13]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[13]),
        .I4(data4[13]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[13]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[13]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[13]),
        .I4(data7[13]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[13]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[13] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[13]),
        .I4(data13[13]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[13]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[13]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[13]),
        .I4(data10[13]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[13]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[13]),
        .O(\sbus_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[13]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[13]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[13]),
        .I4(data1[13]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[14]_i_1 
       (.I0(\sbus_rdata[14]_i_2_n_0 ),
        .I1(\sbus_rdata[14]_i_3_n_0 ),
        .I2(\sbus_rdata[14]_i_4_n_0 ),
        .I3(\sbus_rdata[14]_i_5_n_0 ),
        .I4(\sbus_rdata[14]_i_6_n_0 ),
        .I5(\sbus_rdata[14]_i_7_n_0 ),
        .O(\sbus_rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[14]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[14]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[14]),
        .I4(data4[14]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[14]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[14]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[14]),
        .I4(data7[14]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[14]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[14] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[14]),
        .I4(data13[14]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[14]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[14]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[14]),
        .I4(data10[14]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[14]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[14]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[14]),
        .O(\sbus_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[14]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[14]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[14]),
        .I4(data1[14]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[15]_i_1 
       (.I0(\sbus_rdata[15]_i_2_n_0 ),
        .I1(\sbus_rdata[15]_i_3_n_0 ),
        .I2(\sbus_rdata[15]_i_4_n_0 ),
        .I3(\sbus_rdata[15]_i_5_n_0 ),
        .I4(\sbus_rdata[15]_i_6_n_0 ),
        .I5(\sbus_rdata[15]_i_7_n_0 ),
        .O(\sbus_rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[15]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[15]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[15]),
        .I4(data4[15]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[15]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[15]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[15]),
        .I4(data7[15]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[15]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[15] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[15]),
        .I4(data13[15]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[15]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[15]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[15]),
        .I4(data10[15]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[15]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[15]),
        .O(\sbus_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[15]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[15]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[15]),
        .I4(data1[15]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[16]_i_1 
       (.I0(\sbus_rdata[16]_i_2_n_0 ),
        .I1(\sbus_rdata[16]_i_3_n_0 ),
        .I2(\sbus_rdata[16]_i_4_n_0 ),
        .I3(\sbus_rdata[16]_i_5_n_0 ),
        .I4(\sbus_rdata[16]_i_6_n_0 ),
        .I5(\sbus_rdata[16]_i_7_n_0 ),
        .O(\sbus_rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[16]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[16]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[16]),
        .I4(data4[16]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[16]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[16]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[16]),
        .I4(data7[16]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[16]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[16] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[16]),
        .I4(data13[16]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[16]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[16]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[16]),
        .I4(data10[16]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[16]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[16]),
        .O(\sbus_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[16]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[16]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[16]),
        .I4(data1[16]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[17]_i_1 
       (.I0(\sbus_rdata[17]_i_2_n_0 ),
        .I1(\sbus_rdata[17]_i_3_n_0 ),
        .I2(\sbus_rdata[17]_i_4_n_0 ),
        .I3(\sbus_rdata[17]_i_5_n_0 ),
        .I4(\sbus_rdata[17]_i_6_n_0 ),
        .I5(\sbus_rdata[17]_i_7_n_0 ),
        .O(\sbus_rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[17]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[17]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[17]),
        .I4(data4[17]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[17]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[17]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[17]),
        .I4(data7[17]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[17]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[17] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[17]),
        .I4(data13[17]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[17]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[17]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[17]),
        .I4(data10[17]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[17]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[17]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[17]),
        .O(\sbus_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[17]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[17]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[17]),
        .I4(data1[17]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[18]_i_1 
       (.I0(\sbus_rdata[18]_i_2_n_0 ),
        .I1(\sbus_rdata[18]_i_3_n_0 ),
        .I2(\sbus_rdata[18]_i_4_n_0 ),
        .I3(\sbus_rdata[18]_i_5_n_0 ),
        .I4(\sbus_rdata[18]_i_6_n_0 ),
        .I5(\sbus_rdata[18]_i_7_n_0 ),
        .O(\sbus_rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[18]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[18]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[18]),
        .I4(data4[18]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[18]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[18]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[18]),
        .I4(data7[18]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[18]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[18] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[18]),
        .I4(data13[18]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[18]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[18]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[18]),
        .I4(data10[18]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[18]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[18]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[18]),
        .O(\sbus_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[18]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[18]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[18]),
        .I4(data1[18]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[19]_i_1 
       (.I0(\sbus_rdata[19]_i_2_n_0 ),
        .I1(\sbus_rdata[19]_i_3_n_0 ),
        .I2(\sbus_rdata[19]_i_4_n_0 ),
        .I3(\sbus_rdata[19]_i_5_n_0 ),
        .I4(\sbus_rdata[19]_i_6_n_0 ),
        .I5(\sbus_rdata[19]_i_7_n_0 ),
        .O(\sbus_rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[19]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[19]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[19]),
        .I4(data4[19]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[19]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[19]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[19]),
        .I4(data7[19]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[19]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[19] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[19]),
        .I4(data13[19]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[19]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[19]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[19]),
        .I4(data10[19]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[19]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[19]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[19]),
        .O(\sbus_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[19]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[19]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[19]),
        .I4(data1[19]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[1]_i_1 
       (.I0(\sbus_rdata[1]_i_2_n_0 ),
        .I1(\sbus_rdata[1]_i_3_n_0 ),
        .I2(\sbus_rdata[1]_i_4_n_0 ),
        .I3(\sbus_rdata[1]_i_5_n_0 ),
        .I4(\sbus_rdata[1]_i_6_n_0 ),
        .I5(\sbus_rdata[1]_i_7_n_0 ),
        .O(\sbus_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[1]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[1]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[1]),
        .I4(data4[1]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[1]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[1]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[1]),
        .I4(data7[1]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[1]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[1] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[1]),
        .I4(data13[1]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[1]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[1]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[1]),
        .I4(data10[1]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[1]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[1]),
        .O(\sbus_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[1]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[1]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[1]),
        .I4(data1[1]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[20]_i_1 
       (.I0(\sbus_rdata[20]_i_2_n_0 ),
        .I1(\sbus_rdata[20]_i_3_n_0 ),
        .I2(\sbus_rdata[20]_i_4_n_0 ),
        .I3(\sbus_rdata[20]_i_5_n_0 ),
        .I4(\sbus_rdata[20]_i_6_n_0 ),
        .I5(\sbus_rdata[20]_i_7_n_0 ),
        .O(\sbus_rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[20]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[20]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[20]),
        .I4(data4[20]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[20]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[20]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[20]),
        .I4(data7[20]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[20]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[20] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[20]),
        .I4(data13[20]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[20]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[20]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[20]),
        .I4(data10[20]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[20]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[20]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[20]),
        .O(\sbus_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[20]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[20]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[20]),
        .I4(data1[20]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[21]_i_1 
       (.I0(\sbus_rdata[21]_i_2_n_0 ),
        .I1(\sbus_rdata[21]_i_3_n_0 ),
        .I2(\sbus_rdata[21]_i_4_n_0 ),
        .I3(\sbus_rdata[21]_i_5_n_0 ),
        .I4(\sbus_rdata[21]_i_6_n_0 ),
        .I5(\sbus_rdata[21]_i_7_n_0 ),
        .O(\sbus_rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[21]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[21]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[21]),
        .I4(data4[21]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[21]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[21]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[21]),
        .I4(data7[21]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[21]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[21] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[21]),
        .I4(data13[21]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[21]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[21]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[21]),
        .I4(data10[21]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[21]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[21]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[21]),
        .O(\sbus_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[21]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[21]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[21]),
        .I4(data1[21]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[22]_i_1 
       (.I0(\sbus_rdata[22]_i_2_n_0 ),
        .I1(\sbus_rdata[22]_i_3_n_0 ),
        .I2(\sbus_rdata[22]_i_4_n_0 ),
        .I3(\sbus_rdata[22]_i_5_n_0 ),
        .I4(\sbus_rdata[22]_i_6_n_0 ),
        .I5(\sbus_rdata[22]_i_7_n_0 ),
        .O(\sbus_rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[22]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[22]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[22]),
        .I4(data4[22]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[22]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[22]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[22]),
        .I4(data7[22]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[22]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[22] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[22]),
        .I4(data13[22]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[22]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[22]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[22]),
        .I4(data10[22]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[22]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[22]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[22]),
        .O(\sbus_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[22]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[22]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[22]),
        .I4(data1[22]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[23]_i_1 
       (.I0(\sbus_rdata[23]_i_2_n_0 ),
        .I1(\sbus_rdata[23]_i_3_n_0 ),
        .I2(\sbus_rdata[23]_i_4_n_0 ),
        .I3(\sbus_rdata[23]_i_5_n_0 ),
        .I4(\sbus_rdata[23]_i_6_n_0 ),
        .I5(\sbus_rdata[23]_i_7_n_0 ),
        .O(\sbus_rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[23]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[23]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[23]),
        .I4(data4[23]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[23]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[23]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[23]),
        .I4(data7[23]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[23]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[23] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[23]),
        .I4(data13[23]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[23]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[23]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[23]),
        .I4(data10[23]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[23]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[23]),
        .O(\sbus_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[23]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[23]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[23]),
        .I4(data1[23]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[24]_i_1 
       (.I0(\sbus_rdata[24]_i_2_n_0 ),
        .I1(\sbus_rdata[24]_i_3_n_0 ),
        .I2(\sbus_rdata[24]_i_4_n_0 ),
        .I3(\sbus_rdata[24]_i_5_n_0 ),
        .I4(\sbus_rdata[24]_i_6_n_0 ),
        .I5(\sbus_rdata[24]_i_7_n_0 ),
        .O(\sbus_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[24]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[24]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[24]),
        .I4(data4[24]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[24]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[24]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[24]),
        .I4(data7[24]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[24]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[24] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[24]),
        .I4(data13[24]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[24]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[24]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[24]),
        .I4(data10[24]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[24]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[24]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[24]),
        .O(\sbus_rdata[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[24]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[24]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[24]),
        .I4(data1[24]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[25]_i_1 
       (.I0(\sbus_rdata[25]_i_2_n_0 ),
        .I1(\sbus_rdata[25]_i_3_n_0 ),
        .I2(\sbus_rdata[25]_i_4_n_0 ),
        .I3(\sbus_rdata[25]_i_5_n_0 ),
        .I4(\sbus_rdata[25]_i_6_n_0 ),
        .I5(\sbus_rdata[25]_i_7_n_0 ),
        .O(\sbus_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[25]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[25]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[25]),
        .I4(data4[25]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[25]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[25]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[25]),
        .I4(data7[25]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[25]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[25] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[25]),
        .I4(data13[25]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[25]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[25]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[25]),
        .I4(data10[25]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[25]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[25]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[25]),
        .O(\sbus_rdata[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[25]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[25]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[25]),
        .I4(data1[25]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[26]_i_1 
       (.I0(\sbus_rdata[26]_i_2_n_0 ),
        .I1(\sbus_rdata[26]_i_3_n_0 ),
        .I2(\sbus_rdata[26]_i_4_n_0 ),
        .I3(\sbus_rdata[26]_i_5_n_0 ),
        .I4(\sbus_rdata[26]_i_6_n_0 ),
        .I5(\sbus_rdata[26]_i_7_n_0 ),
        .O(\sbus_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[26]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[26]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[26]),
        .I4(data4[26]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[26]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[26]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[26]),
        .I4(data7[26]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[26]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[26] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[26]),
        .I4(data13[26]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[26]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[26]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[26]),
        .I4(data10[26]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[26]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[26]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[26]),
        .O(\sbus_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[26]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[26]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[26]),
        .I4(data1[26]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[27]_i_1 
       (.I0(\sbus_rdata[27]_i_2_n_0 ),
        .I1(\sbus_rdata[27]_i_3_n_0 ),
        .I2(\sbus_rdata[27]_i_4_n_0 ),
        .I3(\sbus_rdata[27]_i_5_n_0 ),
        .I4(\sbus_rdata[27]_i_6_n_0 ),
        .I5(\sbus_rdata[27]_i_7_n_0 ),
        .O(\sbus_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[27]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[27]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[27]),
        .I4(data4[27]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[27]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[27]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[27]),
        .I4(data7[27]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[27]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[27] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[27]),
        .I4(data13[27]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[27]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[27]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[27]),
        .I4(data10[27]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[27]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[27]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[27]),
        .O(\sbus_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[27]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[27]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[27]),
        .I4(data1[27]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[28]_i_1 
       (.I0(\sbus_rdata[28]_i_2_n_0 ),
        .I1(\sbus_rdata[28]_i_3_n_0 ),
        .I2(\sbus_rdata[28]_i_4_n_0 ),
        .I3(\sbus_rdata[28]_i_5_n_0 ),
        .I4(\sbus_rdata[28]_i_6_n_0 ),
        .I5(\sbus_rdata[28]_i_7_n_0 ),
        .O(\sbus_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[28]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[28]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[28]),
        .I4(data4[28]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[28]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[28]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[28]),
        .I4(data7[28]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[28]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[28] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[28]),
        .I4(data13[28]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[28]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[28]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[28]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[28]),
        .I4(data10[28]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[28]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[28]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[28]),
        .O(\sbus_rdata[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[28]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[28]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[28]),
        .I4(data1[28]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[29]_i_1 
       (.I0(\sbus_rdata[29]_i_2_n_0 ),
        .I1(\sbus_rdata[29]_i_3_n_0 ),
        .I2(\sbus_rdata[29]_i_4_n_0 ),
        .I3(\sbus_rdata[29]_i_5_n_0 ),
        .I4(\sbus_rdata[29]_i_6_n_0 ),
        .I5(\sbus_rdata[29]_i_7_n_0 ),
        .O(\sbus_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[29]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[29]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[29]),
        .I4(data4[29]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[29]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[29]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[29]),
        .I4(data7[29]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[29]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[29] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[29]),
        .I4(data13[29]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[29]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[29]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[29]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[29]),
        .I4(data10[29]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[29]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[29]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[29]),
        .O(\sbus_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[29]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[29]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[29]),
        .I4(data1[29]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[2]_i_1 
       (.I0(\sbus_rdata[2]_i_2_n_0 ),
        .I1(\sbus_rdata[2]_i_3_n_0 ),
        .I2(\sbus_rdata[2]_i_4_n_0 ),
        .I3(\sbus_rdata[2]_i_5_n_0 ),
        .I4(\sbus_rdata[2]_i_6_n_0 ),
        .I5(\sbus_rdata[2]_i_7_n_0 ),
        .O(\sbus_rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[2]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[2]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[2]),
        .I4(data4[2]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[2]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[2]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[2]),
        .I4(data7[2]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[2]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[2] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[2]),
        .I4(data13[2]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[2]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[2]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[2]),
        .I4(data10[2]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[2]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[2]),
        .O(\sbus_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[2]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[2]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[2]),
        .I4(data1[2]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[30]_i_1 
       (.I0(\sbus_rdata[30]_i_2_n_0 ),
        .I1(\sbus_rdata[30]_i_3_n_0 ),
        .I2(\sbus_rdata[30]_i_4_n_0 ),
        .I3(\sbus_rdata[30]_i_5_n_0 ),
        .I4(\sbus_rdata[30]_i_6_n_0 ),
        .I5(\sbus_rdata[30]_i_7_n_0 ),
        .O(\sbus_rdata[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[30]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[30]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[30]),
        .I4(data4[30]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[30]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[30]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[30]),
        .I4(data7[30]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[30]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[30] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[30]),
        .I4(data13[30]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[30]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[30]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[30]),
        .I4(data10[30]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[30]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[30]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[30]),
        .O(\sbus_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[30]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[30]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[30]),
        .I4(data1[30]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[31]_i_1 
       (.I0(\sbus_rdata[31]_i_2_n_0 ),
        .I1(\sbus_rdata[31]_i_3_n_0 ),
        .I2(\sbus_rdata[31]_i_4_n_0 ),
        .I3(\sbus_rdata[31]_i_5_n_0 ),
        .I4(\sbus_rdata[31]_i_6_n_0 ),
        .I5(\sbus_rdata[31]_i_7_n_0 ),
        .O(\sbus_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[31]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[31]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[31]),
        .I4(data4[31]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[31]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[31]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[31]),
        .I4(data7[31]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[31]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[31] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[31]),
        .I4(data13[31]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[31]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[31]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[31]),
        .I4(data10[31]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[31]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[31]),
        .O(\sbus_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[31]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[31]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[31]),
        .I4(data1[31]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sbus_rdata[31]_i_8 
       (.I0(sbus_addr[3]),
        .I1(\reg[483]_i_3_n_0 ),
        .I2(\reg[483]_i_4_n_0 ),
        .I3(\reg[483]_i_5_n_0 ),
        .I4(sbus_addr[2]),
        .I5(\reg[319]_i_3_n_0 ),
        .O(\sbus_rdata[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sbus_rdata[31]_i_9 
       (.I0(sbus_addr[3]),
        .I1(\reg[483]_i_3_n_0 ),
        .I2(\reg[483]_i_4_n_0 ),
        .I3(\reg[483]_i_5_n_0 ),
        .I4(sbus_addr[2]),
        .I5(\reg[351]_i_3_n_0 ),
        .O(\sbus_rdata[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[3]_i_1 
       (.I0(\sbus_rdata[3]_i_2_n_0 ),
        .I1(\sbus_rdata[3]_i_3_n_0 ),
        .I2(\sbus_rdata[3]_i_4_n_0 ),
        .I3(\sbus_rdata[3]_i_5_n_0 ),
        .I4(\sbus_rdata[3]_i_6_n_0 ),
        .I5(\sbus_rdata[3]_i_7_n_0 ),
        .O(\sbus_rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[3]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[3]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[3]),
        .I4(data4[3]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[3]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[3]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[3]),
        .I4(data7[3]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[3]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[3] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[3]),
        .I4(data13[3]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[3]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[3]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[3]),
        .I4(data10[3]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[3]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[3]),
        .O(\sbus_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[3]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[3]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[3]),
        .I4(data1[3]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[4]_i_1 
       (.I0(\sbus_rdata[4]_i_2_n_0 ),
        .I1(\sbus_rdata[4]_i_3_n_0 ),
        .I2(\sbus_rdata[4]_i_4_n_0 ),
        .I3(\sbus_rdata[4]_i_5_n_0 ),
        .I4(\sbus_rdata[4]_i_6_n_0 ),
        .I5(\sbus_rdata[4]_i_7_n_0 ),
        .O(\sbus_rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[4]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[4]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[4]),
        .I4(data4[4]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[4]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[4]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[4]),
        .I4(data7[4]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[4]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[4] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[4]),
        .I4(data13[4]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[4]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[4]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[4]),
        .I4(data10[4]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[4]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[4]),
        .O(\sbus_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[4]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[4]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[4]),
        .I4(data1[4]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[5]_i_1 
       (.I0(\sbus_rdata[5]_i_2_n_0 ),
        .I1(\sbus_rdata[5]_i_3_n_0 ),
        .I2(\sbus_rdata[5]_i_4_n_0 ),
        .I3(\sbus_rdata[5]_i_5_n_0 ),
        .I4(\sbus_rdata[5]_i_6_n_0 ),
        .I5(\sbus_rdata[5]_i_7_n_0 ),
        .O(\sbus_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[5]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[5]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[5]),
        .I4(data4[5]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[5]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[5]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[5]),
        .I4(data7[5]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[5]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[5] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[5]),
        .I4(data13[5]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[5]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[5]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[5]),
        .I4(data10[5]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[5]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[5]),
        .O(\sbus_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[5]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[5]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[5]),
        .I4(data1[5]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[6]_i_1 
       (.I0(\sbus_rdata[6]_i_2_n_0 ),
        .I1(\sbus_rdata[6]_i_3_n_0 ),
        .I2(\sbus_rdata[6]_i_4_n_0 ),
        .I3(\sbus_rdata[6]_i_5_n_0 ),
        .I4(\sbus_rdata[6]_i_6_n_0 ),
        .I5(\sbus_rdata[6]_i_7_n_0 ),
        .O(\sbus_rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[6]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[6]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[6]),
        .I4(data4[6]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[6]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[6]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[6]),
        .I4(data7[6]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[6]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[6] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[6]),
        .I4(data13[6]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[6]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[6]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[6]),
        .I4(data10[6]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[6]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[6]),
        .O(\sbus_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[6]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[6]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[6]),
        .I4(data1[6]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[7]_i_1 
       (.I0(\sbus_rdata[7]_i_2_n_0 ),
        .I1(\sbus_rdata[7]_i_3_n_0 ),
        .I2(\sbus_rdata[7]_i_4_n_0 ),
        .I3(\sbus_rdata[7]_i_5_n_0 ),
        .I4(\sbus_rdata[7]_i_6_n_0 ),
        .I5(\sbus_rdata[7]_i_7_n_0 ),
        .O(\sbus_rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[7]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[7]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[7]),
        .I4(data4[7]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[7]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[7]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[7]),
        .I4(data7[7]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[7]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[7] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[7]),
        .I4(data13[7]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[7]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[7]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[7]),
        .I4(data10[7]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[7]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[7]),
        .O(\sbus_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[7]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[7]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[7]),
        .I4(data1[7]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[8]_i_1 
       (.I0(\sbus_rdata[8]_i_2_n_0 ),
        .I1(\sbus_rdata[8]_i_3_n_0 ),
        .I2(\sbus_rdata[8]_i_4_n_0 ),
        .I3(\sbus_rdata[8]_i_5_n_0 ),
        .I4(\sbus_rdata[8]_i_6_n_0 ),
        .I5(\sbus_rdata[8]_i_7_n_0 ),
        .O(\sbus_rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[8]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[8]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[8]),
        .I4(data4[8]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[8]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[8]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[8]),
        .I4(data7[8]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[8]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[8] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[8]),
        .I4(data13[8]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[8]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[8]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[8]),
        .I4(data10[8]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[8]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[8]),
        .O(\sbus_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[8]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[8]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[8]),
        .I4(data1[8]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_rdata[9]_i_1 
       (.I0(\sbus_rdata[9]_i_2_n_0 ),
        .I1(\sbus_rdata[9]_i_3_n_0 ),
        .I2(\sbus_rdata[9]_i_4_n_0 ),
        .I3(\sbus_rdata[9]_i_5_n_0 ),
        .I4(\sbus_rdata[9]_i_6_n_0 ),
        .I5(\sbus_rdata[9]_i_7_n_0 ),
        .O(\sbus_rdata[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[9]_i_2 
       (.I0(\reg[319]_i_2_n_0 ),
        .I1(data6[9]),
        .I2(\reg[351]_i_2_n_0 ),
        .I3(data5[9]),
        .I4(data4[9]),
        .I5(\reg[383]_i_2_n_0 ),
        .O(\sbus_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[9]_i_3 
       (.I0(\reg[223]_i_2_n_0 ),
        .I1(data9[9]),
        .I2(\reg[255]_i_2_n_0 ),
        .I3(data8[9]),
        .I4(data7[9]),
        .I5(\reg[287]_i_2_n_0 ),
        .O(\sbus_rdata[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[9]_i_4 
       (.I0(\reg[31]_i_2_n_0 ),
        .I1(\reg_din_reg_n_0_[9] ),
        .I2(\reg[63]_i_2_n_0 ),
        .I3(data14[9]),
        .I4(data13[9]),
        .I5(\reg[95]_i_2_n_0 ),
        .O(\sbus_rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[9]_i_5 
       (.I0(\reg[127]_i_2_n_0 ),
        .I1(data12[9]),
        .I2(\reg[159]_i_2_n_0 ),
        .I3(data11[9]),
        .I4(data10[9]),
        .I5(\reg[191]_i_2_n_0 ),
        .O(\sbus_rdata[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sbus_rdata[9]_i_6 
       (.I0(\reg[483]_i_2_n_0 ),
        .I1(data0[9]),
        .O(\sbus_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \sbus_rdata[9]_i_7 
       (.I0(\reg[415]_i_2_n_0 ),
        .I1(data3[9]),
        .I2(\sbus_rdata[31]_i_8_n_0 ),
        .I3(data2[9]),
        .I4(data1[9]),
        .I5(\sbus_rdata[31]_i_9_n_0 ),
        .O(\sbus_rdata[9]_i_7_n_0 ));
  FDRE \sbus_rdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[0]_i_1_n_0 ),
        .Q(sbus_rdata[0]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[10]_i_1_n_0 ),
        .Q(sbus_rdata[10]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[11]_i_1_n_0 ),
        .Q(sbus_rdata[11]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[12]_i_1_n_0 ),
        .Q(sbus_rdata[12]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[13]_i_1_n_0 ),
        .Q(sbus_rdata[13]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[14]_i_1_n_0 ),
        .Q(sbus_rdata[14]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[15]_i_1_n_0 ),
        .Q(sbus_rdata[15]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[16]_i_1_n_0 ),
        .Q(sbus_rdata[16]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[17]_i_1_n_0 ),
        .Q(sbus_rdata[17]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[18]_i_1_n_0 ),
        .Q(sbus_rdata[18]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[19]_i_1_n_0 ),
        .Q(sbus_rdata[19]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[1]_i_1_n_0 ),
        .Q(sbus_rdata[1]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[20]_i_1_n_0 ),
        .Q(sbus_rdata[20]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[21]_i_1_n_0 ),
        .Q(sbus_rdata[21]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[22]_i_1_n_0 ),
        .Q(sbus_rdata[22]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[23]_i_1_n_0 ),
        .Q(sbus_rdata[23]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[24]_i_1_n_0 ),
        .Q(sbus_rdata[24]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[25]_i_1_n_0 ),
        .Q(sbus_rdata[25]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[26]_i_1_n_0 ),
        .Q(sbus_rdata[26]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[27]_i_1_n_0 ),
        .Q(sbus_rdata[27]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[28]_i_1_n_0 ),
        .Q(sbus_rdata[28]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[29]_i_1_n_0 ),
        .Q(sbus_rdata[29]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[2]_i_1_n_0 ),
        .Q(sbus_rdata[2]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[30]_i_1_n_0 ),
        .Q(sbus_rdata[30]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[31]_i_1_n_0 ),
        .Q(sbus_rdata[31]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[3]_i_1_n_0 ),
        .Q(sbus_rdata[3]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[4]_i_1_n_0 ),
        .Q(sbus_rdata[4]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[5]_i_1_n_0 ),
        .Q(sbus_rdata[5]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[6]_i_1_n_0 ),
        .Q(sbus_rdata[6]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[7]_i_1_n_0 ),
        .Q(sbus_rdata[7]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[8]_i_1_n_0 ),
        .Q(sbus_rdata[8]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_rdata[9]_i_1_n_0 ),
        .Q(sbus_rdata[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "top_awfg" *) 
module system_sbus_awfg_0_0_top_awfg
   (sbus_ack,
    leds,
    sbus_rdata,
    dac_sdin0,
    dac_sdin1,
    txd,
    pmod_jc,
    dac_sclk,
    dac_sync,
    reset,
    clk,
    sbus_we,
    sbus_wdata,
    sbus_addr,
    sbus_rd,
    D,
    rxd);
  output sbus_ack;
  output [3:0]leds;
  output [31:0]sbus_rdata;
  output dac_sdin0;
  output dac_sdin1;
  output txd;
  output [7:0]pmod_jc;
  output dac_sclk;
  output dac_sync;
  input reset;
  input clk;
  input sbus_we;
  input [31:0]sbus_wdata;
  input [15:0]sbus_addr;
  input sbus_rd;
  input [7:0]D;
  input rxd;

  wire [7:0]Addr;
  wire [7:0]D;
  wire U_1_n_0;
  wire U_1_n_1;
  wire U_1_n_2;
  wire U_1_n_3;
  wire U_1_n_4;
  wire U_1_n_5;
  wire U_1_n_6;
  wire U_1_n_7;
  wire U_3_n_5;
  wire U_3_n_7;
  wire U_4_n_10;
  wire U_4_n_11;
  wire U_4_n_12;
  wire U_4_n_13;
  wire U_4_n_14;
  wire U_4_n_15;
  wire U_4_n_16;
  wire U_4_n_17;
  wire U_4_n_18;
  wire U_4_n_19;
  wire U_4_n_20;
  wire U_4_n_21;
  wire U_4_n_22;
  wire U_4_n_23;
  wire U_4_n_4;
  wire U_4_n_5;
  wire U_4_n_6;
  wire U_4_n_7;
  wire U_4_n_8;
  wire U_4_n_9;
  wire U_5_n_0;
  wire U_5_n_1;
  wire U_5_n_10;
  wire U_5_n_105;
  wire U_5_n_11;
  wire U_5_n_12;
  wire U_5_n_13;
  wire U_5_n_14;
  wire U_5_n_15;
  wire U_5_n_16;
  wire U_5_n_17;
  wire U_5_n_18;
  wire U_5_n_19;
  wire U_5_n_2;
  wire U_5_n_20;
  wire U_5_n_21;
  wire U_5_n_22;
  wire U_5_n_23;
  wire U_5_n_24;
  wire U_5_n_25;
  wire U_5_n_26;
  wire U_5_n_27;
  wire U_5_n_28;
  wire U_5_n_29;
  wire U_5_n_3;
  wire U_5_n_30;
  wire U_5_n_31;
  wire U_5_n_32;
  wire U_5_n_33;
  wire U_5_n_34;
  wire U_5_n_35;
  wire U_5_n_36;
  wire U_5_n_37;
  wire U_5_n_38;
  wire U_5_n_4;
  wire U_5_n_5;
  wire U_5_n_6;
  wire U_5_n_7;
  wire U_5_n_8;
  wire U_5_n_9;
  wire U_6_n_1;
  wire U_6_n_2;
  wire U_6_n_35;
  wire U_6_n_36;
  wire U_6_n_37;
  wire U_6_n_38;
  wire U_6_n_39;
  wire U_6_n_40;
  wire U_6_n_41;
  wire U_6_n_42;
  wire U_6_n_43;
  wire U_6_n_44;
  wire U_6_n_45;
  wire U_6_n_46;
  wire U_6_n_47;
  wire U_6_n_48;
  wire U_6_n_49;
  wire U_6_n_50;
  wire U_6_n_51;
  wire U_6_n_52;
  wire U_6_n_53;
  wire U_6_n_54;
  wire U_6_n_55;
  wire U_6_n_56;
  wire U_6_n_57;
  wire U_6_n_58;
  wire U_6_n_59;
  wire U_6_n_60;
  wire U_6_n_61;
  wire U_6_n_62;
  wire U_6_n_63;
  wire U_6_n_64;
  wire U_6_n_65;
  wire U_6_n_66;
  wire \amplitude[0]_i_1_n_0 ;
  wire \amplitude[10]_i_1_n_0 ;
  wire \amplitude[11]_i_1_n_0 ;
  wire \amplitude[12]_i_1_n_0 ;
  wire \amplitude[13]_i_1_n_0 ;
  wire \amplitude[14]_i_1_n_0 ;
  wire \amplitude[15]_i_1_n_0 ;
  wire \amplitude[16]_i_1_n_0 ;
  wire \amplitude[17]_i_1_n_0 ;
  wire \amplitude[18]_i_1_n_0 ;
  wire \amplitude[19]_i_1_n_0 ;
  wire \amplitude[1]_i_1_n_0 ;
  wire \amplitude[20]_i_1_n_0 ;
  wire \amplitude[21]_i_1_n_0 ;
  wire \amplitude[22]_i_1_n_0 ;
  wire \amplitude[23]_i_1_n_0 ;
  wire \amplitude[24]_i_1_n_0 ;
  wire \amplitude[25]_i_1_n_0 ;
  wire \amplitude[26]_i_1_n_0 ;
  wire \amplitude[27]_i_1_n_0 ;
  wire \amplitude[28]_i_1_n_0 ;
  wire \amplitude[29]_i_1_n_0 ;
  wire \amplitude[2]_i_1_n_0 ;
  wire \amplitude[30]_i_1_n_0 ;
  wire \amplitude[31]_i_1_n_0 ;
  wire \amplitude[3]_i_1_n_0 ;
  wire \amplitude[4]_i_1_n_0 ;
  wire \amplitude[5]_i_1_n_0 ;
  wire \amplitude[6]_i_1_n_0 ;
  wire \amplitude[7]_i_1_n_0 ;
  wire \amplitude[8]_i_1_n_0 ;
  wire \amplitude[9]_i_1_n_0 ;
  wire [31:0]amplitude_o;
  wire \amplitude_reg_n_0_[0] ;
  wire \amplitude_reg_n_0_[10] ;
  wire \amplitude_reg_n_0_[11] ;
  wire \amplitude_reg_n_0_[12] ;
  wire \amplitude_reg_n_0_[13] ;
  wire \amplitude_reg_n_0_[14] ;
  wire \amplitude_reg_n_0_[15] ;
  wire \amplitude_reg_n_0_[16] ;
  wire \amplitude_reg_n_0_[17] ;
  wire \amplitude_reg_n_0_[18] ;
  wire \amplitude_reg_n_0_[19] ;
  wire \amplitude_reg_n_0_[1] ;
  wire \amplitude_reg_n_0_[20] ;
  wire \amplitude_reg_n_0_[21] ;
  wire \amplitude_reg_n_0_[22] ;
  wire \amplitude_reg_n_0_[23] ;
  wire \amplitude_reg_n_0_[24] ;
  wire \amplitude_reg_n_0_[25] ;
  wire \amplitude_reg_n_0_[26] ;
  wire \amplitude_reg_n_0_[27] ;
  wire \amplitude_reg_n_0_[28] ;
  wire \amplitude_reg_n_0_[29] ;
  wire \amplitude_reg_n_0_[2] ;
  wire \amplitude_reg_n_0_[30] ;
  wire \amplitude_reg_n_0_[31] ;
  wire \amplitude_reg_n_0_[3] ;
  wire \amplitude_reg_n_0_[4] ;
  wire \amplitude_reg_n_0_[5] ;
  wire \amplitude_reg_n_0_[6] ;
  wire \amplitude_reg_n_0_[7] ;
  wire \amplitude_reg_n_0_[8] ;
  wire \amplitude_reg_n_0_[9] ;
  wire bus_ack;
  wire [31:0]bus_dout;
  wire [31:0]bus_dout_int;
  wire bus_we;
  wire [3:0]buttons_s;
  wire clk;
  wire [7:4]cnt_reg;
  wire [15:4]dac0;
  wire \dac0[15]_i_1_n_0 ;
  wire [15:4]dac1;
  wire dac_sclk;
  wire dac_sdin0;
  wire dac_sdin1;
  wire dac_sync;
  wire \frequency[0]_i_1_n_0 ;
  wire \frequency[10]_i_1_n_0 ;
  wire \frequency[11]_i_1_n_0 ;
  wire \frequency[12]_i_1_n_0 ;
  wire \frequency[13]_i_1_n_0 ;
  wire \frequency[14]_i_1_n_0 ;
  wire \frequency[15]_i_1_n_0 ;
  wire \frequency[16]_i_1_n_0 ;
  wire \frequency[17]_i_1_n_0 ;
  wire \frequency[18]_i_1_n_0 ;
  wire \frequency[19]_i_1_n_0 ;
  wire \frequency[1]_i_1_n_0 ;
  wire \frequency[20]_i_1_n_0 ;
  wire \frequency[21]_i_1_n_0 ;
  wire \frequency[22]_i_1_n_0 ;
  wire \frequency[23]_i_1_n_0 ;
  wire \frequency[24]_i_1_n_0 ;
  wire \frequency[25]_i_1_n_0 ;
  wire \frequency[26]_i_1_n_0 ;
  wire \frequency[27]_i_1_n_0 ;
  wire \frequency[28]_i_1_n_0 ;
  wire \frequency[29]_i_1_n_0 ;
  wire \frequency[2]_i_1_n_0 ;
  wire \frequency[30]_i_1_n_0 ;
  wire \frequency[31]_i_1_n_0 ;
  wire \frequency[3]_i_1_n_0 ;
  wire \frequency[4]_i_1_n_0 ;
  wire \frequency[5]_i_1_n_0 ;
  wire \frequency[6]_i_1_n_0 ;
  wire \frequency[7]_i_1_n_0 ;
  wire \frequency[8]_i_1_n_0 ;
  wire \frequency[9]_i_1_n_0 ;
  wire [31:0]frequency_o;
  wire \frequency_reg_n_0_[0] ;
  wire \frequency_reg_n_0_[10] ;
  wire \frequency_reg_n_0_[11] ;
  wire \frequency_reg_n_0_[12] ;
  wire \frequency_reg_n_0_[13] ;
  wire \frequency_reg_n_0_[14] ;
  wire \frequency_reg_n_0_[15] ;
  wire \frequency_reg_n_0_[16] ;
  wire \frequency_reg_n_0_[17] ;
  wire \frequency_reg_n_0_[18] ;
  wire \frequency_reg_n_0_[19] ;
  wire \frequency_reg_n_0_[1] ;
  wire \frequency_reg_n_0_[20] ;
  wire \frequency_reg_n_0_[21] ;
  wire \frequency_reg_n_0_[22] ;
  wire \frequency_reg_n_0_[23] ;
  wire \frequency_reg_n_0_[24] ;
  wire \frequency_reg_n_0_[25] ;
  wire \frequency_reg_n_0_[26] ;
  wire \frequency_reg_n_0_[27] ;
  wire \frequency_reg_n_0_[28] ;
  wire \frequency_reg_n_0_[29] ;
  wire \frequency_reg_n_0_[2] ;
  wire \frequency_reg_n_0_[30] ;
  wire \frequency_reg_n_0_[31] ;
  wire \frequency_reg_n_0_[3] ;
  wire \frequency_reg_n_0_[4] ;
  wire \frequency_reg_n_0_[5] ;
  wire \frequency_reg_n_0_[6] ;
  wire \frequency_reg_n_0_[7] ;
  wire \frequency_reg_n_0_[8] ;
  wire \frequency_reg_n_0_[9] ;
  wire [3:0]leds;
  wire p_0_in_0;
  wire p_1_in;
  wire [7:0]pmod_jc;
  wire [63:0]\reg ;
  wire [127:96]reg_din;
  wire reset;
  wire rxd;
  wire sample_daq;
  wire sbus_ack;
  wire sbus_ack0;
  wire [15:0]sbus_addr;
  wire sbus_rd;
  wire [31:0]sbus_rdata;
  wire [31:0]sbus_rdata__0;
  wire [31:0]sbus_wdata;
  wire sbus_we;
  wire txd;

  system_sbus_awfg_0_0_registers U_1
       (.D({U_1_n_0,U_1_n_1,U_1_n_2,U_1_n_3,U_1_n_4,U_1_n_5,U_1_n_6,U_1_n_7}),
        .Q({buttons_s,p_0_in_0,U_3_n_5,p_1_in,U_3_n_7}),
        .clk(clk),
        .\reg_din_reg[447]_0 ({\amplitude_reg_n_0_[31] ,\amplitude_reg_n_0_[30] ,\amplitude_reg_n_0_[29] ,\amplitude_reg_n_0_[28] ,\amplitude_reg_n_0_[27] ,\amplitude_reg_n_0_[26] ,\amplitude_reg_n_0_[25] ,\amplitude_reg_n_0_[24] ,\amplitude_reg_n_0_[23] ,\amplitude_reg_n_0_[22] ,\amplitude_reg_n_0_[21] ,\amplitude_reg_n_0_[20] ,\amplitude_reg_n_0_[19] ,\amplitude_reg_n_0_[18] ,\amplitude_reg_n_0_[17] ,\amplitude_reg_n_0_[16] ,\amplitude_reg_n_0_[15] ,\amplitude_reg_n_0_[14] ,\amplitude_reg_n_0_[13] ,\amplitude_reg_n_0_[12] ,\amplitude_reg_n_0_[11] ,\amplitude_reg_n_0_[10] ,\amplitude_reg_n_0_[9] ,\amplitude_reg_n_0_[8] ,\amplitude_reg_n_0_[7] ,\amplitude_reg_n_0_[6] ,\amplitude_reg_n_0_[5] ,\amplitude_reg_n_0_[4] ,\amplitude_reg_n_0_[3] ,\amplitude_reg_n_0_[2] ,\amplitude_reg_n_0_[1] ,\amplitude_reg_n_0_[0] }),
        .\reg_din_reg[479]_0 ({\frequency_reg_n_0_[31] ,\frequency_reg_n_0_[30] ,\frequency_reg_n_0_[29] ,\frequency_reg_n_0_[28] ,\frequency_reg_n_0_[27] ,\frequency_reg_n_0_[26] ,\frequency_reg_n_0_[25] ,\frequency_reg_n_0_[24] ,\frequency_reg_n_0_[23] ,\frequency_reg_n_0_[22] ,\frequency_reg_n_0_[21] ,\frequency_reg_n_0_[20] ,\frequency_reg_n_0_[19] ,\frequency_reg_n_0_[18] ,\frequency_reg_n_0_[17] ,\frequency_reg_n_0_[16] ,\frequency_reg_n_0_[15] ,\frequency_reg_n_0_[14] ,\frequency_reg_n_0_[13] ,\frequency_reg_n_0_[12] ,\frequency_reg_n_0_[11] ,\frequency_reg_n_0_[10] ,\frequency_reg_n_0_[9] ,\frequency_reg_n_0_[8] ,\frequency_reg_n_0_[7] ,\frequency_reg_n_0_[6] ,\frequency_reg_n_0_[5] ,\frequency_reg_n_0_[4] ,\frequency_reg_n_0_[3] ,\frequency_reg_n_0_[2] ,\frequency_reg_n_0_[1] ,\frequency_reg_n_0_[0] }),
        .\reg_reg[483]_0 ({leds,amplitude_o,frequency_o,Addr}),
        .reset(reset),
        .sbus_ack(sbus_ack),
        .sbus_addr(sbus_addr),
        .sbus_rd(sbus_rd),
        .sbus_rdata(sbus_rdata),
        .sbus_wdata(sbus_wdata),
        .sbus_we(sbus_we));
  system_sbus_awfg_0_0_dac_ctrl U_2
       (.clk(clk),
        .dac0(dac0),
        .dac1(dac1),
        .dac_sclk(dac_sclk),
        .dac_sdin0(dac_sdin0),
        .dac_sdin1(dac_sdin1),
        .dac_sync(dac_sync),
        .reset(reset),
        .sample_daq(sample_daq));
  system_sbus_awfg_0_0_comp_signal_synchr U_3
       (.D(D),
        .Q({buttons_s,p_0_in_0,U_3_n_5,p_1_in,U_3_n_7}),
        .clk(clk));
  system_sbus_awfg_0_0_cnt_modulus U_4
       (.D({U_4_n_4,U_4_n_5,U_4_n_6,U_4_n_7,U_4_n_8,U_4_n_9,U_4_n_10,U_4_n_11}),
        .Q(p_1_in),
        .clk(clk),
        .\cnt_reg[10]_0 (U_4_n_17),
        .\cnt_reg[11]_0 (U_4_n_16),
        .\cnt_reg[12]_0 (U_4_n_15),
        .\cnt_reg[13]_0 (U_4_n_14),
        .\cnt_reg[14]_0 (U_4_n_13),
        .\cnt_reg[15]_0 (U_4_n_12),
        .\cnt_reg[4]_0 (U_4_n_23),
        .\cnt_reg[5]_0 (U_4_n_22),
        .\cnt_reg[6]_0 (U_4_n_21),
        .\cnt_reg[7]_0 (cnt_reg),
        .\cnt_reg[7]_1 (U_4_n_20),
        .\cnt_reg[8]_0 (U_4_n_19),
        .\cnt_reg[9]_0 (U_4_n_18),
        .\dac1_reg[15] (Addr),
        .reset(reset));
  system_sbus_awfg_0_0_uart_bridge_32 U_5
       (.D({U_5_n_0,U_5_n_1,U_5_n_2,U_5_n_3,U_5_n_4,U_5_n_5,U_5_n_6,U_5_n_7,U_5_n_8,U_5_n_9,U_5_n_10,U_5_n_11,U_5_n_12,U_5_n_13,U_5_n_14,U_5_n_15,U_5_n_16,U_5_n_17,U_5_n_18,U_5_n_19,U_5_n_20,U_5_n_21,U_5_n_22,U_5_n_23,U_5_n_24,U_5_n_25,U_5_n_26,U_5_n_27,U_5_n_28,U_5_n_29,U_5_n_30,U_5_n_31}),
        .E({U_5_n_32,U_5_n_33,U_5_n_34,U_5_n_35}),
        .Q(reg_din),
        .bus_ack(bus_ack),
        .\bus_addr_int_reg[0] (U_5_n_36),
        .\bus_addr_int_reg[1] (U_5_n_37),
        .\bus_addr_int_reg[1]_0 (U_5_n_38),
        .\bus_din_tmp_reg[0] (U_6_n_66),
        .\bus_din_tmp_reg[31] (sbus_rdata__0),
        .\bus_dout_int_reg[31] ({bus_dout_int,bus_dout}),
        .bus_we(bus_we),
        .clk(clk),
        .\reg_reg[95] (U_6_n_1),
        .reset(reset),
        .\rx_csm_current_state_reg[2] (U_5_n_105),
        .rxd(rxd),
        .sbus_ack0(sbus_ack0),
        .\sbus_rdata_reg[0] (U_6_n_2),
        .\sbus_rdata_reg[10] (U_6_n_44),
        .\sbus_rdata_reg[11] (U_6_n_45),
        .\sbus_rdata_reg[12] (U_6_n_46),
        .\sbus_rdata_reg[13] (U_6_n_47),
        .\sbus_rdata_reg[14] (U_6_n_48),
        .\sbus_rdata_reg[15] (U_6_n_49),
        .\sbus_rdata_reg[16] (U_6_n_50),
        .\sbus_rdata_reg[17] (U_6_n_51),
        .\sbus_rdata_reg[18] (U_6_n_52),
        .\sbus_rdata_reg[19] (U_6_n_53),
        .\sbus_rdata_reg[1] (U_6_n_35),
        .\sbus_rdata_reg[20] (U_6_n_54),
        .\sbus_rdata_reg[21] (U_6_n_55),
        .\sbus_rdata_reg[22] (U_6_n_56),
        .\sbus_rdata_reg[23] (U_6_n_57),
        .\sbus_rdata_reg[24] (U_6_n_58),
        .\sbus_rdata_reg[25] (U_6_n_59),
        .\sbus_rdata_reg[26] (U_6_n_60),
        .\sbus_rdata_reg[27] (U_6_n_61),
        .\sbus_rdata_reg[28] (U_6_n_62),
        .\sbus_rdata_reg[29] (U_6_n_63),
        .\sbus_rdata_reg[2] (U_6_n_36),
        .\sbus_rdata_reg[30] (U_6_n_64),
        .\sbus_rdata_reg[31] (U_6_n_65),
        .\sbus_rdata_reg[3] (U_6_n_37),
        .\sbus_rdata_reg[4] (U_6_n_38),
        .\sbus_rdata_reg[5] (U_6_n_39),
        .\sbus_rdata_reg[6] (U_6_n_40),
        .\sbus_rdata_reg[7] (U_6_n_41),
        .\sbus_rdata_reg[8] (U_6_n_42),
        .\sbus_rdata_reg[9] (U_6_n_43),
        .txd(txd));
  system_sbus_awfg_0_0_uart_regs U_6
       (.D({U_5_n_0,U_5_n_1,U_5_n_2,U_5_n_3,U_5_n_4,U_5_n_5,U_5_n_6,U_5_n_7,U_5_n_8,U_5_n_9,U_5_n_10,U_5_n_11,U_5_n_12,U_5_n_13,U_5_n_14,U_5_n_15,U_5_n_16,U_5_n_17,U_5_n_18,U_5_n_19,U_5_n_20,U_5_n_21,U_5_n_22,U_5_n_23,U_5_n_24,U_5_n_25,U_5_n_26,U_5_n_27,U_5_n_28,U_5_n_29,U_5_n_30,U_5_n_31}),
        .E({U_5_n_32,U_5_n_33,U_5_n_34,U_5_n_35}),
        .Q(reg_din),
        .bus_ack(bus_ack),
        .\bus_din_tmp_reg[0] (U_5_n_105),
        .bus_we(bus_we),
        .bus_we_q_reg_0(U_6_n_1),
        .clk(clk),
        .\reg_din_reg[32]_0 (U_6_n_2),
        .\reg_din_reg[33]_0 (U_6_n_35),
        .\reg_din_reg[34]_0 (U_6_n_36),
        .\reg_din_reg[35]_0 (U_6_n_37),
        .\reg_din_reg[36]_0 (U_6_n_38),
        .\reg_din_reg[37]_0 (U_6_n_39),
        .\reg_din_reg[38]_0 (U_6_n_40),
        .\reg_din_reg[39]_0 (U_6_n_41),
        .\reg_din_reg[40]_0 (U_6_n_42),
        .\reg_din_reg[41]_0 (U_6_n_43),
        .\reg_din_reg[42]_0 (U_6_n_44),
        .\reg_din_reg[43]_0 (U_6_n_45),
        .\reg_din_reg[44]_0 (U_6_n_46),
        .\reg_din_reg[45]_0 (U_6_n_47),
        .\reg_din_reg[46]_0 (U_6_n_48),
        .\reg_din_reg[47]_0 (U_6_n_49),
        .\reg_din_reg[48]_0 (U_6_n_50),
        .\reg_din_reg[49]_0 (U_6_n_51),
        .\reg_din_reg[50]_0 (U_6_n_52),
        .\reg_din_reg[51]_0 (U_6_n_53),
        .\reg_din_reg[52]_0 (U_6_n_54),
        .\reg_din_reg[53]_0 (U_6_n_55),
        .\reg_din_reg[54]_0 (U_6_n_56),
        .\reg_din_reg[55]_0 (U_6_n_57),
        .\reg_din_reg[56]_0 (U_6_n_58),
        .\reg_din_reg[57]_0 (U_6_n_59),
        .\reg_din_reg[58]_0 (U_6_n_60),
        .\reg_din_reg[59]_0 (U_6_n_61),
        .\reg_din_reg[60]_0 (U_6_n_62),
        .\reg_din_reg[61]_0 (U_6_n_63),
        .\reg_din_reg[62]_0 (U_6_n_64),
        .\reg_din_reg[63]_0 (U_6_n_65),
        .\reg_reg[127]_0 ({bus_dout_int,bus_dout}),
        .\reg_reg[63]_0 (\reg ),
        .reset(reset),
        .reset_0(U_6_n_66),
        .sbus_ack0(sbus_ack0),
        .\sbus_rdata_reg[0]_0 (U_5_n_38),
        .\sbus_rdata_reg[0]_1 (U_5_n_36),
        .\sbus_rdata_reg[0]_2 (U_5_n_37),
        .\sbus_rdata_reg[31]_0 (sbus_rdata__0));
  system_sbus_awfg_0_0_comp_timer U_7
       (.clk(clk),
        .reset(reset),
        .sample_daq(sample_daq));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[0]_i_1 
       (.I0(\reg [0]),
        .I1(amplitude_o[0]),
        .I2(p_0_in_0),
        .O(\amplitude[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[10]_i_1 
       (.I0(\reg [10]),
        .I1(amplitude_o[10]),
        .I2(p_0_in_0),
        .O(\amplitude[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[11]_i_1 
       (.I0(\reg [11]),
        .I1(amplitude_o[11]),
        .I2(p_0_in_0),
        .O(\amplitude[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[12]_i_1 
       (.I0(\reg [12]),
        .I1(amplitude_o[12]),
        .I2(p_0_in_0),
        .O(\amplitude[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[13]_i_1 
       (.I0(\reg [13]),
        .I1(amplitude_o[13]),
        .I2(p_0_in_0),
        .O(\amplitude[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[14]_i_1 
       (.I0(\reg [14]),
        .I1(amplitude_o[14]),
        .I2(p_0_in_0),
        .O(\amplitude[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[15]_i_1 
       (.I0(\reg [15]),
        .I1(amplitude_o[15]),
        .I2(p_0_in_0),
        .O(\amplitude[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[16]_i_1 
       (.I0(\reg [16]),
        .I1(amplitude_o[16]),
        .I2(p_0_in_0),
        .O(\amplitude[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[17]_i_1 
       (.I0(\reg [17]),
        .I1(amplitude_o[17]),
        .I2(p_0_in_0),
        .O(\amplitude[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[18]_i_1 
       (.I0(\reg [18]),
        .I1(amplitude_o[18]),
        .I2(p_0_in_0),
        .O(\amplitude[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[19]_i_1 
       (.I0(\reg [19]),
        .I1(amplitude_o[19]),
        .I2(p_0_in_0),
        .O(\amplitude[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[1]_i_1 
       (.I0(\reg [1]),
        .I1(amplitude_o[1]),
        .I2(p_0_in_0),
        .O(\amplitude[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[20]_i_1 
       (.I0(\reg [20]),
        .I1(amplitude_o[20]),
        .I2(p_0_in_0),
        .O(\amplitude[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[21]_i_1 
       (.I0(\reg [21]),
        .I1(amplitude_o[21]),
        .I2(p_0_in_0),
        .O(\amplitude[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[22]_i_1 
       (.I0(\reg [22]),
        .I1(amplitude_o[22]),
        .I2(p_0_in_0),
        .O(\amplitude[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[23]_i_1 
       (.I0(\reg [23]),
        .I1(amplitude_o[23]),
        .I2(p_0_in_0),
        .O(\amplitude[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[24]_i_1 
       (.I0(\reg [24]),
        .I1(amplitude_o[24]),
        .I2(p_0_in_0),
        .O(\amplitude[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[25]_i_1 
       (.I0(\reg [25]),
        .I1(amplitude_o[25]),
        .I2(p_0_in_0),
        .O(\amplitude[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[26]_i_1 
       (.I0(\reg [26]),
        .I1(amplitude_o[26]),
        .I2(p_0_in_0),
        .O(\amplitude[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[27]_i_1 
       (.I0(\reg [27]),
        .I1(amplitude_o[27]),
        .I2(p_0_in_0),
        .O(\amplitude[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[28]_i_1 
       (.I0(\reg [28]),
        .I1(amplitude_o[28]),
        .I2(p_0_in_0),
        .O(\amplitude[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[29]_i_1 
       (.I0(\reg [29]),
        .I1(amplitude_o[29]),
        .I2(p_0_in_0),
        .O(\amplitude[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[2]_i_1 
       (.I0(\reg [2]),
        .I1(amplitude_o[2]),
        .I2(p_0_in_0),
        .O(\amplitude[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[30]_i_1 
       (.I0(\reg [30]),
        .I1(amplitude_o[30]),
        .I2(p_0_in_0),
        .O(\amplitude[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[31]_i_1 
       (.I0(\reg [31]),
        .I1(amplitude_o[31]),
        .I2(p_0_in_0),
        .O(\amplitude[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[3]_i_1 
       (.I0(\reg [3]),
        .I1(amplitude_o[3]),
        .I2(p_0_in_0),
        .O(\amplitude[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[4]_i_1 
       (.I0(\reg [4]),
        .I1(amplitude_o[4]),
        .I2(p_0_in_0),
        .O(\amplitude[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[5]_i_1 
       (.I0(\reg [5]),
        .I1(amplitude_o[5]),
        .I2(p_0_in_0),
        .O(\amplitude[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[6]_i_1 
       (.I0(\reg [6]),
        .I1(amplitude_o[6]),
        .I2(p_0_in_0),
        .O(\amplitude[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[7]_i_1 
       (.I0(\reg [7]),
        .I1(amplitude_o[7]),
        .I2(p_0_in_0),
        .O(\amplitude[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[8]_i_1 
       (.I0(\reg [8]),
        .I1(amplitude_o[8]),
        .I2(p_0_in_0),
        .O(\amplitude[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \amplitude[9]_i_1 
       (.I0(\reg [9]),
        .I1(amplitude_o[9]),
        .I2(p_0_in_0),
        .O(\amplitude[9]_i_1_n_0 ));
  FDRE \amplitude_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[0]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \amplitude_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[10]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \amplitude_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[11]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \amplitude_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[12]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \amplitude_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[13]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \amplitude_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[14]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \amplitude_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[15]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \amplitude_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[16]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \amplitude_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[17]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \amplitude_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[18]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \amplitude_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[19]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \amplitude_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[1]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \amplitude_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[20]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \amplitude_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[21]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \amplitude_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[22]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \amplitude_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[23]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \amplitude_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[24]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \amplitude_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[25]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \amplitude_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[26]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \amplitude_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[27]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \amplitude_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[28]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \amplitude_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[29]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \amplitude_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[2]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \amplitude_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[30]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \amplitude_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[31]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \amplitude_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[3]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \amplitude_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[4]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \amplitude_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[5]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \amplitude_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[6]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \amplitude_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[7]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \amplitude_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[8]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \amplitude_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\amplitude[9]_i_1_n_0 ),
        .Q(\amplitude_reg_n_0_[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \dac0[15]_i_1 
       (.I0(p_1_in),
        .O(\dac0[15]_i_1_n_0 ));
  FDRE \dac0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_17),
        .Q(dac0[10]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_16),
        .Q(dac0[11]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_15),
        .Q(dac0[12]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_14),
        .Q(dac0[13]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_13),
        .Q(dac0[14]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_12),
        .Q(dac0[15]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_23),
        .Q(dac0[4]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_22),
        .Q(dac0[5]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_21),
        .Q(dac0[6]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_20),
        .Q(dac0[7]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_19),
        .Q(dac0[8]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_18),
        .Q(dac0[9]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_9),
        .Q(dac1[10]),
        .R(1'b0));
  FDRE \dac1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_8),
        .Q(dac1[11]),
        .R(1'b0));
  FDRE \dac1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_7),
        .Q(dac1[12]),
        .R(1'b0));
  FDRE \dac1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_6),
        .Q(dac1[13]),
        .R(1'b0));
  FDRE \dac1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_5),
        .Q(dac1[14]),
        .R(1'b0));
  FDRE \dac1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_4),
        .Q(dac1[15]),
        .R(1'b0));
  FDRE \dac1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg[4]),
        .Q(dac1[4]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg[5]),
        .Q(dac1[5]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg[6]),
        .Q(dac1[6]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(cnt_reg[7]),
        .Q(dac1[7]),
        .R(\dac0[15]_i_1_n_0 ));
  FDRE \dac1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_11),
        .Q(dac1[8]),
        .R(1'b0));
  FDRE \dac1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(U_4_n_10),
        .Q(dac1[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[0]_i_1 
       (.I0(\reg [32]),
        .I1(p_0_in_0),
        .I2(frequency_o[0]),
        .O(\frequency[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[10]_i_1 
       (.I0(\reg [42]),
        .I1(p_0_in_0),
        .I2(frequency_o[10]),
        .O(\frequency[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[11]_i_1 
       (.I0(\reg [43]),
        .I1(p_0_in_0),
        .I2(frequency_o[11]),
        .O(\frequency[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[12]_i_1 
       (.I0(\reg [44]),
        .I1(p_0_in_0),
        .I2(frequency_o[12]),
        .O(\frequency[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[13]_i_1 
       (.I0(\reg [45]),
        .I1(p_0_in_0),
        .I2(frequency_o[13]),
        .O(\frequency[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[14]_i_1 
       (.I0(\reg [46]),
        .I1(p_0_in_0),
        .I2(frequency_o[14]),
        .O(\frequency[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[15]_i_1 
       (.I0(\reg [47]),
        .I1(p_0_in_0),
        .I2(frequency_o[15]),
        .O(\frequency[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[16]_i_1 
       (.I0(\reg [48]),
        .I1(p_0_in_0),
        .I2(frequency_o[16]),
        .O(\frequency[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[17]_i_1 
       (.I0(\reg [49]),
        .I1(p_0_in_0),
        .I2(frequency_o[17]),
        .O(\frequency[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[18]_i_1 
       (.I0(\reg [50]),
        .I1(p_0_in_0),
        .I2(frequency_o[18]),
        .O(\frequency[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[19]_i_1 
       (.I0(\reg [51]),
        .I1(p_0_in_0),
        .I2(frequency_o[19]),
        .O(\frequency[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[1]_i_1 
       (.I0(\reg [33]),
        .I1(p_0_in_0),
        .I2(frequency_o[1]),
        .O(\frequency[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[20]_i_1 
       (.I0(\reg [52]),
        .I1(p_0_in_0),
        .I2(frequency_o[20]),
        .O(\frequency[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[21]_i_1 
       (.I0(\reg [53]),
        .I1(p_0_in_0),
        .I2(frequency_o[21]),
        .O(\frequency[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[22]_i_1 
       (.I0(\reg [54]),
        .I1(p_0_in_0),
        .I2(frequency_o[22]),
        .O(\frequency[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[23]_i_1 
       (.I0(\reg [55]),
        .I1(p_0_in_0),
        .I2(frequency_o[23]),
        .O(\frequency[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[24]_i_1 
       (.I0(\reg [56]),
        .I1(p_0_in_0),
        .I2(frequency_o[24]),
        .O(\frequency[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[25]_i_1 
       (.I0(\reg [57]),
        .I1(p_0_in_0),
        .I2(frequency_o[25]),
        .O(\frequency[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[26]_i_1 
       (.I0(\reg [58]),
        .I1(p_0_in_0),
        .I2(frequency_o[26]),
        .O(\frequency[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[27]_i_1 
       (.I0(\reg [59]),
        .I1(p_0_in_0),
        .I2(frequency_o[27]),
        .O(\frequency[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[28]_i_1 
       (.I0(\reg [60]),
        .I1(p_0_in_0),
        .I2(frequency_o[28]),
        .O(\frequency[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[29]_i_1 
       (.I0(\reg [61]),
        .I1(p_0_in_0),
        .I2(frequency_o[29]),
        .O(\frequency[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[2]_i_1 
       (.I0(\reg [34]),
        .I1(p_0_in_0),
        .I2(frequency_o[2]),
        .O(\frequency[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[30]_i_1 
       (.I0(\reg [62]),
        .I1(p_0_in_0),
        .I2(frequency_o[30]),
        .O(\frequency[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[31]_i_1 
       (.I0(\reg [63]),
        .I1(p_0_in_0),
        .I2(frequency_o[31]),
        .O(\frequency[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[3]_i_1 
       (.I0(\reg [35]),
        .I1(p_0_in_0),
        .I2(frequency_o[3]),
        .O(\frequency[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[4]_i_1 
       (.I0(\reg [36]),
        .I1(p_0_in_0),
        .I2(frequency_o[4]),
        .O(\frequency[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[5]_i_1 
       (.I0(\reg [37]),
        .I1(p_0_in_0),
        .I2(frequency_o[5]),
        .O(\frequency[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[6]_i_1 
       (.I0(\reg [38]),
        .I1(p_0_in_0),
        .I2(frequency_o[6]),
        .O(\frequency[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[7]_i_1 
       (.I0(\reg [39]),
        .I1(p_0_in_0),
        .I2(frequency_o[7]),
        .O(\frequency[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[8]_i_1 
       (.I0(\reg [40]),
        .I1(p_0_in_0),
        .I2(frequency_o[8]),
        .O(\frequency[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \frequency[9]_i_1 
       (.I0(\reg [41]),
        .I1(p_0_in_0),
        .I2(frequency_o[9]),
        .O(\frequency[9]_i_1_n_0 ));
  FDRE \frequency_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[0]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \frequency_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[10]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \frequency_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[11]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \frequency_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[12]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \frequency_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[13]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \frequency_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[14]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \frequency_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[15]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \frequency_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[16]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \frequency_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[17]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \frequency_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[18]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \frequency_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[19]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \frequency_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[1]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \frequency_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[20]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \frequency_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[21]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \frequency_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[22]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \frequency_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[23]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \frequency_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[24]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \frequency_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[25]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \frequency_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[26]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \frequency_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[27]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \frequency_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[28]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \frequency_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[29]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \frequency_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[2]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \frequency_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[30]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \frequency_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[31]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \frequency_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[3]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \frequency_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[4]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \frequency_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[5]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \frequency_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[6]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \frequency_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[7]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \frequency_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[8]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \frequency_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\frequency[9]_i_1_n_0 ),
        .Q(\frequency_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \pmod_jc_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(U_1_n_7),
        .Q(pmod_jc[0]),
        .R(1'b0));
  FDRE \pmod_jc_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(U_1_n_6),
        .Q(pmod_jc[1]),
        .R(1'b0));
  FDRE \pmod_jc_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(U_1_n_5),
        .Q(pmod_jc[2]),
        .R(1'b0));
  FDRE \pmod_jc_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(U_1_n_4),
        .Q(pmod_jc[3]),
        .R(1'b0));
  FDRE \pmod_jc_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(U_1_n_3),
        .Q(pmod_jc[4]),
        .R(1'b0));
  FDRE \pmod_jc_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(U_1_n_2),
        .Q(pmod_jc[5]),
        .R(1'b0));
  FDRE \pmod_jc_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(U_1_n_1),
        .Q(pmod_jc[6]),
        .R(1'b0));
  FDRE \pmod_jc_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(U_1_n_0),
        .Q(pmod_jc[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "uart_bridge_32" *) 
module system_sbus_awfg_0_0_uart_bridge_32
   (D,
    E,
    \bus_addr_int_reg[0] ,
    \bus_addr_int_reg[1] ,
    \bus_addr_int_reg[1]_0 ,
    \bus_dout_int_reg[31] ,
    sbus_ack0,
    bus_we,
    \rx_csm_current_state_reg[2] ,
    txd,
    reset,
    rxd,
    clk,
    \sbus_rdata_reg[31] ,
    Q,
    \sbus_rdata_reg[30] ,
    \sbus_rdata_reg[29] ,
    \sbus_rdata_reg[28] ,
    \sbus_rdata_reg[27] ,
    \sbus_rdata_reg[26] ,
    \sbus_rdata_reg[25] ,
    \sbus_rdata_reg[24] ,
    \sbus_rdata_reg[23] ,
    \sbus_rdata_reg[22] ,
    \sbus_rdata_reg[21] ,
    \sbus_rdata_reg[20] ,
    \sbus_rdata_reg[19] ,
    \sbus_rdata_reg[18] ,
    \sbus_rdata_reg[17] ,
    \sbus_rdata_reg[16] ,
    \sbus_rdata_reg[15] ,
    \sbus_rdata_reg[14] ,
    \sbus_rdata_reg[13] ,
    \sbus_rdata_reg[12] ,
    \sbus_rdata_reg[11] ,
    \sbus_rdata_reg[10] ,
    \sbus_rdata_reg[9] ,
    \sbus_rdata_reg[8] ,
    \sbus_rdata_reg[7] ,
    \sbus_rdata_reg[6] ,
    \sbus_rdata_reg[5] ,
    \sbus_rdata_reg[4] ,
    \sbus_rdata_reg[3] ,
    \sbus_rdata_reg[2] ,
    \sbus_rdata_reg[1] ,
    \sbus_rdata_reg[0] ,
    bus_ack,
    \reg_reg[95] ,
    \bus_din_tmp_reg[0] ,
    \bus_din_tmp_reg[31] );
  output [31:0]D;
  output [3:0]E;
  output \bus_addr_int_reg[0] ;
  output \bus_addr_int_reg[1] ;
  output \bus_addr_int_reg[1]_0 ;
  output [63:0]\bus_dout_int_reg[31] ;
  output sbus_ack0;
  output bus_we;
  output \rx_csm_current_state_reg[2] ;
  output txd;
  input reset;
  input rxd;
  input clk;
  input \sbus_rdata_reg[31] ;
  input [31:0]Q;
  input \sbus_rdata_reg[30] ;
  input \sbus_rdata_reg[29] ;
  input \sbus_rdata_reg[28] ;
  input \sbus_rdata_reg[27] ;
  input \sbus_rdata_reg[26] ;
  input \sbus_rdata_reg[25] ;
  input \sbus_rdata_reg[24] ;
  input \sbus_rdata_reg[23] ;
  input \sbus_rdata_reg[22] ;
  input \sbus_rdata_reg[21] ;
  input \sbus_rdata_reg[20] ;
  input \sbus_rdata_reg[19] ;
  input \sbus_rdata_reg[18] ;
  input \sbus_rdata_reg[17] ;
  input \sbus_rdata_reg[16] ;
  input \sbus_rdata_reg[15] ;
  input \sbus_rdata_reg[14] ;
  input \sbus_rdata_reg[13] ;
  input \sbus_rdata_reg[12] ;
  input \sbus_rdata_reg[11] ;
  input \sbus_rdata_reg[10] ;
  input \sbus_rdata_reg[9] ;
  input \sbus_rdata_reg[8] ;
  input \sbus_rdata_reg[7] ;
  input \sbus_rdata_reg[6] ;
  input \sbus_rdata_reg[5] ;
  input \sbus_rdata_reg[4] ;
  input \sbus_rdata_reg[3] ;
  input \sbus_rdata_reg[2] ;
  input \sbus_rdata_reg[1] ;
  input \sbus_rdata_reg[0] ;
  input bus_ack;
  input \reg_reg[95] ;
  input [0:0]\bus_din_tmp_reg[0] ;
  input [31:0]\bus_din_tmp_reg[31] ;

  wire [31:0]D;
  wire [3:0]E;
  wire \I1/current_state ;
  wire [31:0]Q;
  wire bus_ack;
  wire [3:0]bus_addr_int;
  wire [14:1]bus_addr_int0;
  wire \bus_addr_int_reg[0] ;
  wire \bus_addr_int_reg[1] ;
  wire \bus_addr_int_reg[1]_0 ;
  wire [0:0]\bus_din_tmp_reg[0] ;
  wire [31:0]\bus_din_tmp_reg[31] ;
  wire [63:0]\bus_dout_int_reg[31] ;
  wire bus_we;
  wire clk;
  wire cmd_par;
  wire cmd_we;
  wire \g0.I1_n_0 ;
  wire \g0.I1_n_119 ;
  wire \g0.I1_n_121 ;
  wire \g0.I1_n_129 ;
  wire \g0.I1_n_131 ;
  wire \g0.I1_n_132 ;
  wire \g0.I1_n_133 ;
  wire \g0.I1_n_134 ;
  wire \g0.I1_n_135 ;
  wire \g0.I1_n_42 ;
  wire \g0.I1_n_43 ;
  wire \g0.I1_n_44 ;
  wire \g0.I1_n_45 ;
  wire \g0.I1_n_8 ;
  wire \g0.I1_n_9 ;
  wire \g0.I6_n_10 ;
  wire \g0.I6_n_11 ;
  wire \g0.I6_n_12 ;
  wire \g0.I6_n_13 ;
  wire \g0.I6_n_14 ;
  wire \g0.I6_n_15 ;
  wire \g0.I6_n_16 ;
  wire \g0.I6_n_17 ;
  wire \g0.I6_n_18 ;
  wire \g0.I6_n_19 ;
  wire \g0.I6_n_20 ;
  wire \g0.I6_n_21 ;
  wire \g0.I6_n_22 ;
  wire \g0.I6_n_23 ;
  wire \g0.I6_n_24 ;
  wire \g0.I6_n_25 ;
  wire \g0.I6_n_26 ;
  wire \g0.I6_n_27 ;
  wire \g0.I6_n_28 ;
  wire \g0.I6_n_3 ;
  wire \g0.I6_n_5 ;
  wire \g0.I6_n_6 ;
  wire \g0.I6_n_7 ;
  wire \g0.I6_n_9 ;
  wire [5:5]num;
  wire p_0_in0;
  wire \reg_reg[95] ;
  wire reset;
  wire [5:0]rx_csm_current_state;
  wire \rx_csm_current_state_reg[2] ;
  wire rxd;
  wire sbus_ack0;
  wire \sbus_rdata_reg[0] ;
  wire \sbus_rdata_reg[10] ;
  wire \sbus_rdata_reg[11] ;
  wire \sbus_rdata_reg[12] ;
  wire \sbus_rdata_reg[13] ;
  wire \sbus_rdata_reg[14] ;
  wire \sbus_rdata_reg[15] ;
  wire \sbus_rdata_reg[16] ;
  wire \sbus_rdata_reg[17] ;
  wire \sbus_rdata_reg[18] ;
  wire \sbus_rdata_reg[19] ;
  wire \sbus_rdata_reg[1] ;
  wire \sbus_rdata_reg[20] ;
  wire \sbus_rdata_reg[21] ;
  wire \sbus_rdata_reg[22] ;
  wire \sbus_rdata_reg[23] ;
  wire \sbus_rdata_reg[24] ;
  wire \sbus_rdata_reg[25] ;
  wire \sbus_rdata_reg[26] ;
  wire \sbus_rdata_reg[27] ;
  wire \sbus_rdata_reg[28] ;
  wire \sbus_rdata_reg[29] ;
  wire \sbus_rdata_reg[2] ;
  wire \sbus_rdata_reg[30] ;
  wire \sbus_rdata_reg[31] ;
  wire \sbus_rdata_reg[3] ;
  wire \sbus_rdata_reg[4] ;
  wire \sbus_rdata_reg[5] ;
  wire \sbus_rdata_reg[6] ;
  wire \sbus_rdata_reg[7] ;
  wire \sbus_rdata_reg[8] ;
  wire \sbus_rdata_reg[9] ;
  wire tx_ack;
  wire [5:5]tx_reg;
  wire txd;

  system_sbus_awfg_0_0_bus_bridge_16 \g0.I1 
       (.D(D),
        .E(E),
        .Q(Q),
        .SR(\g0.I1_n_42 ),
        .bus_ack(bus_ack),
        .bus_addr_int(bus_addr_int),
        .\bus_addr_int_reg[0]_0 (\bus_addr_int_reg[0] ),
        .\bus_addr_int_reg[0]_1 ({p_0_in0,\g0.I6_n_5 ,\g0.I6_n_6 }),
        .\bus_addr_int_reg[14]_0 ({\g0.I6_n_17 ,\g0.I6_n_18 ,\g0.I6_n_19 ,\g0.I6_n_20 ,\g0.I6_n_21 ,\g0.I6_n_22 ,\g0.I6_n_23 }),
        .\bus_addr_int_reg[15]_0 ({bus_addr_int0[14:13],bus_addr_int0[10:9],bus_addr_int0[6:5],bus_addr_int0[1]}),
        .\bus_addr_int_reg[1]_0 (\bus_addr_int_reg[1] ),
        .\bus_addr_int_reg[1]_1 (\bus_addr_int_reg[1]_0 ),
        .\bus_din_tmp_reg[0]_0 (\bus_din_tmp_reg[0] ),
        .\bus_din_tmp_reg[31]_0 (\bus_din_tmp_reg[31] ),
        .\bus_dout_int_reg[16]_0 (\g0.I6_n_27 ),
        .\bus_dout_int_reg[20]_0 (\g0.I6_n_28 ),
        .\bus_dout_int_reg[31]_0 (\bus_dout_int_reg[31] ),
        .bus_we(bus_we),
        .clk(clk),
        .cmd_par(cmd_par),
        .cmd_par_reg_0(\g0.I6_n_14 ),
        .cmd_we(cmd_we),
        .current_state(\I1/current_state ),
        .lock_rx_reg_0(\g0.I1_n_132 ),
        .lock_rx_reg_1(\g0.I1_n_134 ),
        .lock_rx_reg_2(\g0.I1_n_135 ),
        .\num_reg[2]_0 (\g0.I1_n_129 ),
        .\num_reg[5]_0 (num),
        .\num_reg[5]_1 (\g0.I6_n_26 ),
        .\num_reg[5]_2 (\g0.I6_n_24 ),
        .\reg_reg[95] (\reg_reg[95] ),
        .reset(reset),
        .response_en_rx_reg_0(\g0.I1_n_0 ),
        .\response_nibble_rx_reg[1]_0 (\g0.I1_n_133 ),
        .\response_nibble_rx_reg[3]_0 (\g0.I1_n_131 ),
        .rx_ack_cld_reg(\g0.I1_n_119 ),
        .rx_csm_current_state(rx_csm_current_state),
        .\rx_csm_current_state_reg[0]_0 (\g0.I1_n_8 ),
        .\rx_csm_current_state_reg[1]_0 ({\g0.I6_n_9 ,\g0.I6_n_10 }),
        .\rx_csm_current_state_reg[2]_0 (\g0.I1_n_9 ),
        .\rx_csm_current_state_reg[2]_1 (\rx_csm_current_state_reg[2] ),
        .\rx_csm_current_state_reg[2]_2 (\g0.I6_n_11 ),
        .\rx_csm_current_state_reg[2]_3 (\g0.I6_n_13 ),
        .\rx_csm_current_state_reg[2]_4 (\g0.I6_n_15 ),
        .\rx_csm_current_state_reg[3]_0 (\g0.I1_n_121 ),
        .\rx_csm_current_state_reg[3]_1 (\g0.I6_n_7 ),
        .\rx_csm_current_state_reg[3]_2 (\g0.I6_n_16 ),
        .\rx_csm_current_state_reg[4]_0 (\g0.I1_n_43 ),
        .\rx_csm_current_state_reg[4]_1 (\g0.I1_n_44 ),
        .\rx_csm_current_state_reg[4]_2 (\g0.I6_n_25 ),
        .\rx_csm_current_state_reg[4]_3 (\g0.I6_n_12 ),
        .\rx_csm_current_state_reg[4]_4 (\g0.I6_n_3 ),
        .\rx_csm_current_state_reg[5]_0 (\g0.I1_n_45 ),
        .sbus_ack0(sbus_ack0),
        .\sbus_rdata_reg[0] (\sbus_rdata_reg[0] ),
        .\sbus_rdata_reg[10] (\sbus_rdata_reg[10] ),
        .\sbus_rdata_reg[11] (\sbus_rdata_reg[11] ),
        .\sbus_rdata_reg[12] (\sbus_rdata_reg[12] ),
        .\sbus_rdata_reg[13] (\sbus_rdata_reg[13] ),
        .\sbus_rdata_reg[14] (\sbus_rdata_reg[14] ),
        .\sbus_rdata_reg[15] (\sbus_rdata_reg[15] ),
        .\sbus_rdata_reg[16] (\sbus_rdata_reg[16] ),
        .\sbus_rdata_reg[17] (\sbus_rdata_reg[17] ),
        .\sbus_rdata_reg[18] (\sbus_rdata_reg[18] ),
        .\sbus_rdata_reg[19] (\sbus_rdata_reg[19] ),
        .\sbus_rdata_reg[1] (\sbus_rdata_reg[1] ),
        .\sbus_rdata_reg[20] (\sbus_rdata_reg[20] ),
        .\sbus_rdata_reg[21] (\sbus_rdata_reg[21] ),
        .\sbus_rdata_reg[22] (\sbus_rdata_reg[22] ),
        .\sbus_rdata_reg[23] (\sbus_rdata_reg[23] ),
        .\sbus_rdata_reg[24] (\sbus_rdata_reg[24] ),
        .\sbus_rdata_reg[25] (\sbus_rdata_reg[25] ),
        .\sbus_rdata_reg[26] (\sbus_rdata_reg[26] ),
        .\sbus_rdata_reg[27] (\sbus_rdata_reg[27] ),
        .\sbus_rdata_reg[28] (\sbus_rdata_reg[28] ),
        .\sbus_rdata_reg[29] (\sbus_rdata_reg[29] ),
        .\sbus_rdata_reg[2] (\sbus_rdata_reg[2] ),
        .\sbus_rdata_reg[30] (\sbus_rdata_reg[30] ),
        .\sbus_rdata_reg[31] (\sbus_rdata_reg[31] ),
        .\sbus_rdata_reg[3] (\sbus_rdata_reg[3] ),
        .\sbus_rdata_reg[4] (\sbus_rdata_reg[4] ),
        .\sbus_rdata_reg[5] (\sbus_rdata_reg[5] ),
        .\sbus_rdata_reg[6] (\sbus_rdata_reg[6] ),
        .\sbus_rdata_reg[7] (\sbus_rdata_reg[7] ),
        .\sbus_rdata_reg[8] (\sbus_rdata_reg[8] ),
        .\sbus_rdata_reg[9] (\sbus_rdata_reg[9] ),
        .tx_ack(tx_ack),
        .\tx_reg_reg[4] (tx_reg));
  system_sbus_awfg_0_0_uart_top \g0.I6 
       (.D(\g0.I1_n_131 ),
        .Q({p_0_in0,\g0.I6_n_5 ,\g0.I6_n_6 }),
        .SR(\g0.I1_n_42 ),
        .bus_ack(bus_ack),
        .bus_addr_int(bus_addr_int),
        .\bus_addr_int_reg[14] ({bus_addr_int0[14:13],bus_addr_int0[10:9],bus_addr_int0[6:5],bus_addr_int0[1]}),
        .clk(clk),
        .cmd_par(cmd_par),
        .cmd_par_reg(\g0.I6_n_14 ),
        .cmd_we(cmd_we),
        .current_state(\I1/current_state ),
        .current_state_reg(\g0.I1_n_0 ),
        .\dout_int_reg[1] (\g0.I6_n_24 ),
        .\dout_int_reg[2] (\g0.I6_n_11 ),
        .\dout_int_reg[2]_0 (\g0.I6_n_13 ),
        .\dout_int_reg[2]_1 (\g0.I6_n_15 ),
        .\dout_int_reg[4] (\g0.I6_n_7 ),
        .\dout_int_reg[4]_0 ({\g0.I6_n_9 ,\g0.I6_n_10 }),
        .\dout_int_reg[4]_1 (\g0.I6_n_12 ),
        .\dout_int_reg[6] (\g0.I6_n_3 ),
        .\dout_int_reg[6]_0 (\g0.I6_n_16 ),
        .\num_reg[5] (num),
        .\num_reg[5]_0 (\g0.I1_n_129 ),
        .reset(reset),
        .rx_ack_cld_reg(\g0.I6_n_25 ),
        .rx_ack_cld_reg_0(\g0.I6_n_27 ),
        .rx_ack_cld_reg_1(\g0.I6_n_28 ),
        .rx_csm_current_state(rx_csm_current_state),
        .\rx_csm_current_state_reg[0] (\g0.I1_n_45 ),
        .\rx_csm_current_state_reg[0]_0 (\g0.I1_n_9 ),
        .\rx_csm_current_state_reg[0]_1 (\g0.I1_n_44 ),
        .\rx_csm_current_state_reg[1] (\g0.I1_n_8 ),
        .\rx_csm_current_state_reg[1]_0 (\g0.I1_n_119 ),
        .\rx_csm_current_state_reg[1]_1 (\g0.I1_n_43 ),
        .\rx_csm_current_state_reg[3] ({\g0.I6_n_17 ,\g0.I6_n_18 ,\g0.I6_n_19 ,\g0.I6_n_20 ,\g0.I6_n_21 ,\g0.I6_n_22 ,\g0.I6_n_23 }),
        .\rx_csm_current_state_reg[3]_0 (\g0.I1_n_121 ),
        .rxd(rxd),
        .tx_ack(tx_ack),
        .tx_ack_cld_reg(\g0.I6_n_26 ),
        .\tx_reg_reg[1] (\g0.I1_n_133 ),
        .\tx_reg_reg[2] (\g0.I1_n_134 ),
        .\tx_reg_reg[3] (\g0.I1_n_135 ),
        .\tx_reg_reg[5] (tx_reg),
        .\tx_reg_reg[6] (\g0.I1_n_132 ),
        .txd(txd));
endmodule

(* ORIG_REF_NAME = "uart_regs" *) 
module system_sbus_awfg_0_0_uart_regs
   (bus_ack,
    bus_we_q_reg_0,
    \reg_din_reg[32]_0 ,
    Q,
    \reg_din_reg[33]_0 ,
    \reg_din_reg[34]_0 ,
    \reg_din_reg[35]_0 ,
    \reg_din_reg[36]_0 ,
    \reg_din_reg[37]_0 ,
    \reg_din_reg[38]_0 ,
    \reg_din_reg[39]_0 ,
    \reg_din_reg[40]_0 ,
    \reg_din_reg[41]_0 ,
    \reg_din_reg[42]_0 ,
    \reg_din_reg[43]_0 ,
    \reg_din_reg[44]_0 ,
    \reg_din_reg[45]_0 ,
    \reg_din_reg[46]_0 ,
    \reg_din_reg[47]_0 ,
    \reg_din_reg[48]_0 ,
    \reg_din_reg[49]_0 ,
    \reg_din_reg[50]_0 ,
    \reg_din_reg[51]_0 ,
    \reg_din_reg[52]_0 ,
    \reg_din_reg[53]_0 ,
    \reg_din_reg[54]_0 ,
    \reg_din_reg[55]_0 ,
    \reg_din_reg[56]_0 ,
    \reg_din_reg[57]_0 ,
    \reg_din_reg[58]_0 ,
    \reg_din_reg[59]_0 ,
    \reg_din_reg[60]_0 ,
    \reg_din_reg[61]_0 ,
    \reg_din_reg[62]_0 ,
    \reg_din_reg[63]_0 ,
    reset_0,
    \sbus_rdata_reg[31]_0 ,
    \reg_reg[63]_0 ,
    sbus_ack0,
    clk,
    bus_we,
    \sbus_rdata_reg[0]_0 ,
    \sbus_rdata_reg[0]_1 ,
    \sbus_rdata_reg[0]_2 ,
    reset,
    \bus_din_tmp_reg[0] ,
    D,
    E,
    \reg_reg[127]_0 );
  output bus_ack;
  output bus_we_q_reg_0;
  output \reg_din_reg[32]_0 ;
  output [31:0]Q;
  output \reg_din_reg[33]_0 ;
  output \reg_din_reg[34]_0 ;
  output \reg_din_reg[35]_0 ;
  output \reg_din_reg[36]_0 ;
  output \reg_din_reg[37]_0 ;
  output \reg_din_reg[38]_0 ;
  output \reg_din_reg[39]_0 ;
  output \reg_din_reg[40]_0 ;
  output \reg_din_reg[41]_0 ;
  output \reg_din_reg[42]_0 ;
  output \reg_din_reg[43]_0 ;
  output \reg_din_reg[44]_0 ;
  output \reg_din_reg[45]_0 ;
  output \reg_din_reg[46]_0 ;
  output \reg_din_reg[47]_0 ;
  output \reg_din_reg[48]_0 ;
  output \reg_din_reg[49]_0 ;
  output \reg_din_reg[50]_0 ;
  output \reg_din_reg[51]_0 ;
  output \reg_din_reg[52]_0 ;
  output \reg_din_reg[53]_0 ;
  output \reg_din_reg[54]_0 ;
  output \reg_din_reg[55]_0 ;
  output \reg_din_reg[56]_0 ;
  output \reg_din_reg[57]_0 ;
  output \reg_din_reg[58]_0 ;
  output \reg_din_reg[59]_0 ;
  output \reg_din_reg[60]_0 ;
  output \reg_din_reg[61]_0 ;
  output \reg_din_reg[62]_0 ;
  output \reg_din_reg[63]_0 ;
  output [0:0]reset_0;
  output [31:0]\sbus_rdata_reg[31]_0 ;
  output [63:0]\reg_reg[63]_0 ;
  input sbus_ack0;
  input clk;
  input bus_we;
  input \sbus_rdata_reg[0]_0 ;
  input \sbus_rdata_reg[0]_1 ;
  input \sbus_rdata_reg[0]_2 ;
  input reset;
  input \bus_din_tmp_reg[0] ;
  input [31:0]D;
  input [3:0]E;
  input [63:0]\reg_reg[127]_0 ;

  wire [31:0]D;
  wire [3:0]E;
  wire [31:0]Q;
  wire bus_ack;
  wire \bus_din_tmp_reg[0] ;
  wire bus_we;
  wire bus_we_q_reg_0;
  wire clk;
  wire [127:64]\reg ;
  wire [95:0]reg_din;
  wire \reg_din_reg[32]_0 ;
  wire \reg_din_reg[33]_0 ;
  wire \reg_din_reg[34]_0 ;
  wire \reg_din_reg[35]_0 ;
  wire \reg_din_reg[36]_0 ;
  wire \reg_din_reg[37]_0 ;
  wire \reg_din_reg[38]_0 ;
  wire \reg_din_reg[39]_0 ;
  wire \reg_din_reg[40]_0 ;
  wire \reg_din_reg[41]_0 ;
  wire \reg_din_reg[42]_0 ;
  wire \reg_din_reg[43]_0 ;
  wire \reg_din_reg[44]_0 ;
  wire \reg_din_reg[45]_0 ;
  wire \reg_din_reg[46]_0 ;
  wire \reg_din_reg[47]_0 ;
  wire \reg_din_reg[48]_0 ;
  wire \reg_din_reg[49]_0 ;
  wire \reg_din_reg[50]_0 ;
  wire \reg_din_reg[51]_0 ;
  wire \reg_din_reg[52]_0 ;
  wire \reg_din_reg[53]_0 ;
  wire \reg_din_reg[54]_0 ;
  wire \reg_din_reg[55]_0 ;
  wire \reg_din_reg[56]_0 ;
  wire \reg_din_reg[57]_0 ;
  wire \reg_din_reg[58]_0 ;
  wire \reg_din_reg[59]_0 ;
  wire \reg_din_reg[60]_0 ;
  wire \reg_din_reg[61]_0 ;
  wire \reg_din_reg[62]_0 ;
  wire \reg_din_reg[63]_0 ;
  wire [63:0]\reg_reg[127]_0 ;
  wire [63:0]\reg_reg[63]_0 ;
  wire reset;
  wire [0:0]reset_0;
  wire sbus_ack0;
  wire \sbus_rdata_reg[0]_0 ;
  wire \sbus_rdata_reg[0]_1 ;
  wire \sbus_rdata_reg[0]_2 ;
  wire [31:0]\sbus_rdata_reg[31]_0 ;

  LUT3 #(
    .INIT(8'h04)) 
    \bus_din_tmp[31]_i_1 
       (.I0(reset),
        .I1(bus_ack),
        .I2(\bus_din_tmp_reg[0] ),
        .O(reset_0));
  FDRE bus_we_q_reg
       (.C(clk),
        .CE(1'b1),
        .D(bus_we),
        .Q(bus_we_q_reg_0),
        .R(1'b0));
  FDRE \reg_din_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [0]),
        .Q(reg_din[0]),
        .R(1'b0));
  FDRE \reg_din_reg[100] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [100]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \reg_din_reg[101] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [101]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \reg_din_reg[102] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [102]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \reg_din_reg[103] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [103]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \reg_din_reg[104] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [104]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \reg_din_reg[105] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [105]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE \reg_din_reg[106] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [106]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \reg_din_reg[107] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [107]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \reg_din_reg[108] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [108]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \reg_din_reg[109] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [109]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \reg_din_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [10]),
        .Q(reg_din[10]),
        .R(1'b0));
  FDRE \reg_din_reg[110] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [110]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \reg_din_reg[111] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [111]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \reg_din_reg[112] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [112]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \reg_din_reg[113] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [113]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \reg_din_reg[114] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [114]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \reg_din_reg[115] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [115]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \reg_din_reg[116] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [116]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \reg_din_reg[117] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [117]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \reg_din_reg[118] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [118]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \reg_din_reg[119] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [119]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \reg_din_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [11]),
        .Q(reg_din[11]),
        .R(1'b0));
  FDRE \reg_din_reg[120] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [120]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \reg_din_reg[121] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [121]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \reg_din_reg[122] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [122]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \reg_din_reg[123] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [123]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \reg_din_reg[124] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [124]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \reg_din_reg[125] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [125]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \reg_din_reg[126] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [126]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \reg_din_reg[127] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [127]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \reg_din_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [12]),
        .Q(reg_din[12]),
        .R(1'b0));
  FDRE \reg_din_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [13]),
        .Q(reg_din[13]),
        .R(1'b0));
  FDRE \reg_din_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [14]),
        .Q(reg_din[14]),
        .R(1'b0));
  FDRE \reg_din_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [15]),
        .Q(reg_din[15]),
        .R(1'b0));
  FDRE \reg_din_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [16]),
        .Q(reg_din[16]),
        .R(1'b0));
  FDRE \reg_din_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [17]),
        .Q(reg_din[17]),
        .R(1'b0));
  FDRE \reg_din_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [18]),
        .Q(reg_din[18]),
        .R(1'b0));
  FDRE \reg_din_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [19]),
        .Q(reg_din[19]),
        .R(1'b0));
  FDRE \reg_din_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [1]),
        .Q(reg_din[1]),
        .R(1'b0));
  FDRE \reg_din_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [20]),
        .Q(reg_din[20]),
        .R(1'b0));
  FDRE \reg_din_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [21]),
        .Q(reg_din[21]),
        .R(1'b0));
  FDRE \reg_din_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [22]),
        .Q(reg_din[22]),
        .R(1'b0));
  FDRE \reg_din_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [23]),
        .Q(reg_din[23]),
        .R(1'b0));
  FDRE \reg_din_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [24]),
        .Q(reg_din[24]),
        .R(1'b0));
  FDRE \reg_din_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [25]),
        .Q(reg_din[25]),
        .R(1'b0));
  FDRE \reg_din_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [26]),
        .Q(reg_din[26]),
        .R(1'b0));
  FDRE \reg_din_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [27]),
        .Q(reg_din[27]),
        .R(1'b0));
  FDRE \reg_din_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [28]),
        .Q(reg_din[28]),
        .R(1'b0));
  FDRE \reg_din_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [29]),
        .Q(reg_din[29]),
        .R(1'b0));
  FDRE \reg_din_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [2]),
        .Q(reg_din[2]),
        .R(1'b0));
  FDRE \reg_din_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [30]),
        .Q(reg_din[30]),
        .R(1'b0));
  FDRE \reg_din_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [31]),
        .Q(reg_din[31]),
        .R(1'b0));
  FDRE \reg_din_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [32]),
        .Q(reg_din[32]),
        .R(1'b0));
  FDRE \reg_din_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [33]),
        .Q(reg_din[33]),
        .R(1'b0));
  FDRE \reg_din_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [34]),
        .Q(reg_din[34]),
        .R(1'b0));
  FDRE \reg_din_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [35]),
        .Q(reg_din[35]),
        .R(1'b0));
  FDRE \reg_din_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [36]),
        .Q(reg_din[36]),
        .R(1'b0));
  FDRE \reg_din_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [37]),
        .Q(reg_din[37]),
        .R(1'b0));
  FDRE \reg_din_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [38]),
        .Q(reg_din[38]),
        .R(1'b0));
  FDRE \reg_din_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [39]),
        .Q(reg_din[39]),
        .R(1'b0));
  FDRE \reg_din_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [3]),
        .Q(reg_din[3]),
        .R(1'b0));
  FDRE \reg_din_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [40]),
        .Q(reg_din[40]),
        .R(1'b0));
  FDRE \reg_din_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [41]),
        .Q(reg_din[41]),
        .R(1'b0));
  FDRE \reg_din_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [42]),
        .Q(reg_din[42]),
        .R(1'b0));
  FDRE \reg_din_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [43]),
        .Q(reg_din[43]),
        .R(1'b0));
  FDRE \reg_din_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [44]),
        .Q(reg_din[44]),
        .R(1'b0));
  FDRE \reg_din_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [45]),
        .Q(reg_din[45]),
        .R(1'b0));
  FDRE \reg_din_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [46]),
        .Q(reg_din[46]),
        .R(1'b0));
  FDRE \reg_din_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [47]),
        .Q(reg_din[47]),
        .R(1'b0));
  FDRE \reg_din_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [48]),
        .Q(reg_din[48]),
        .R(1'b0));
  FDRE \reg_din_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [49]),
        .Q(reg_din[49]),
        .R(1'b0));
  FDRE \reg_din_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [4]),
        .Q(reg_din[4]),
        .R(1'b0));
  FDRE \reg_din_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [50]),
        .Q(reg_din[50]),
        .R(1'b0));
  FDRE \reg_din_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [51]),
        .Q(reg_din[51]),
        .R(1'b0));
  FDRE \reg_din_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [52]),
        .Q(reg_din[52]),
        .R(1'b0));
  FDRE \reg_din_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [53]),
        .Q(reg_din[53]),
        .R(1'b0));
  FDRE \reg_din_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [54]),
        .Q(reg_din[54]),
        .R(1'b0));
  FDRE \reg_din_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [55]),
        .Q(reg_din[55]),
        .R(1'b0));
  FDRE \reg_din_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [56]),
        .Q(reg_din[56]),
        .R(1'b0));
  FDRE \reg_din_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [57]),
        .Q(reg_din[57]),
        .R(1'b0));
  FDRE \reg_din_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [58]),
        .Q(reg_din[58]),
        .R(1'b0));
  FDRE \reg_din_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [59]),
        .Q(reg_din[59]),
        .R(1'b0));
  FDRE \reg_din_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [5]),
        .Q(reg_din[5]),
        .R(1'b0));
  FDRE \reg_din_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [60]),
        .Q(reg_din[60]),
        .R(1'b0));
  FDRE \reg_din_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [61]),
        .Q(reg_din[61]),
        .R(1'b0));
  FDRE \reg_din_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [62]),
        .Q(reg_din[62]),
        .R(1'b0));
  FDRE \reg_din_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [63]),
        .Q(reg_din[63]),
        .R(1'b0));
  FDRE \reg_din_reg[64] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [64]),
        .Q(reg_din[64]),
        .R(1'b0));
  FDRE \reg_din_reg[65] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [65]),
        .Q(reg_din[65]),
        .R(1'b0));
  FDRE \reg_din_reg[66] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [66]),
        .Q(reg_din[66]),
        .R(1'b0));
  FDRE \reg_din_reg[67] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [67]),
        .Q(reg_din[67]),
        .R(1'b0));
  FDRE \reg_din_reg[68] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [68]),
        .Q(reg_din[68]),
        .R(1'b0));
  FDRE \reg_din_reg[69] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [69]),
        .Q(reg_din[69]),
        .R(1'b0));
  FDRE \reg_din_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [6]),
        .Q(reg_din[6]),
        .R(1'b0));
  FDRE \reg_din_reg[70] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [70]),
        .Q(reg_din[70]),
        .R(1'b0));
  FDRE \reg_din_reg[71] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [71]),
        .Q(reg_din[71]),
        .R(1'b0));
  FDRE \reg_din_reg[72] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [72]),
        .Q(reg_din[72]),
        .R(1'b0));
  FDRE \reg_din_reg[73] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [73]),
        .Q(reg_din[73]),
        .R(1'b0));
  FDRE \reg_din_reg[74] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [74]),
        .Q(reg_din[74]),
        .R(1'b0));
  FDRE \reg_din_reg[75] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [75]),
        .Q(reg_din[75]),
        .R(1'b0));
  FDRE \reg_din_reg[76] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [76]),
        .Q(reg_din[76]),
        .R(1'b0));
  FDRE \reg_din_reg[77] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [77]),
        .Q(reg_din[77]),
        .R(1'b0));
  FDRE \reg_din_reg[78] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [78]),
        .Q(reg_din[78]),
        .R(1'b0));
  FDRE \reg_din_reg[79] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [79]),
        .Q(reg_din[79]),
        .R(1'b0));
  FDRE \reg_din_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [7]),
        .Q(reg_din[7]),
        .R(1'b0));
  FDRE \reg_din_reg[80] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [80]),
        .Q(reg_din[80]),
        .R(1'b0));
  FDRE \reg_din_reg[81] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [81]),
        .Q(reg_din[81]),
        .R(1'b0));
  FDRE \reg_din_reg[82] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [82]),
        .Q(reg_din[82]),
        .R(1'b0));
  FDRE \reg_din_reg[83] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [83]),
        .Q(reg_din[83]),
        .R(1'b0));
  FDRE \reg_din_reg[84] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [84]),
        .Q(reg_din[84]),
        .R(1'b0));
  FDRE \reg_din_reg[85] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [85]),
        .Q(reg_din[85]),
        .R(1'b0));
  FDRE \reg_din_reg[86] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [86]),
        .Q(reg_din[86]),
        .R(1'b0));
  FDRE \reg_din_reg[87] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [87]),
        .Q(reg_din[87]),
        .R(1'b0));
  FDRE \reg_din_reg[88] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [88]),
        .Q(reg_din[88]),
        .R(1'b0));
  FDRE \reg_din_reg[89] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [89]),
        .Q(reg_din[89]),
        .R(1'b0));
  FDRE \reg_din_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [8]),
        .Q(reg_din[8]),
        .R(1'b0));
  FDRE \reg_din_reg[90] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [90]),
        .Q(reg_din[90]),
        .R(1'b0));
  FDRE \reg_din_reg[91] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [91]),
        .Q(reg_din[91]),
        .R(1'b0));
  FDRE \reg_din_reg[92] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [92]),
        .Q(reg_din[92]),
        .R(1'b0));
  FDRE \reg_din_reg[93] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [93]),
        .Q(reg_din[93]),
        .R(1'b0));
  FDRE \reg_din_reg[94] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [94]),
        .Q(reg_din[94]),
        .R(1'b0));
  FDRE \reg_din_reg[95] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [95]),
        .Q(reg_din[95]),
        .R(1'b0));
  FDRE \reg_din_reg[96] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [96]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \reg_din_reg[97] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [97]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \reg_din_reg[98] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [98]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \reg_din_reg[99] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg [99]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \reg_din_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg_reg[63]_0 [9]),
        .Q(reg_din[9]),
        .R(1'b0));
  FDRE \reg_reg[0] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [0]),
        .Q(\reg_reg[63]_0 [0]),
        .R(reset));
  FDRE \reg_reg[100] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [36]),
        .Q(\reg [100]),
        .R(reset));
  FDRE \reg_reg[101] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [37]),
        .Q(\reg [101]),
        .R(reset));
  FDRE \reg_reg[102] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [38]),
        .Q(\reg [102]),
        .R(reset));
  FDRE \reg_reg[103] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [39]),
        .Q(\reg [103]),
        .R(reset));
  FDRE \reg_reg[104] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [40]),
        .Q(\reg [104]),
        .R(reset));
  FDRE \reg_reg[105] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [41]),
        .Q(\reg [105]),
        .R(reset));
  FDRE \reg_reg[106] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [42]),
        .Q(\reg [106]),
        .R(reset));
  FDRE \reg_reg[107] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [43]),
        .Q(\reg [107]),
        .R(reset));
  FDRE \reg_reg[108] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [44]),
        .Q(\reg [108]),
        .R(reset));
  FDRE \reg_reg[109] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [45]),
        .Q(\reg [109]),
        .R(reset));
  FDRE \reg_reg[10] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [10]),
        .Q(\reg_reg[63]_0 [10]),
        .R(reset));
  FDRE \reg_reg[110] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [46]),
        .Q(\reg [110]),
        .R(reset));
  FDRE \reg_reg[111] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [47]),
        .Q(\reg [111]),
        .R(reset));
  FDRE \reg_reg[112] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [48]),
        .Q(\reg [112]),
        .R(reset));
  FDRE \reg_reg[113] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [49]),
        .Q(\reg [113]),
        .R(reset));
  FDRE \reg_reg[114] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [50]),
        .Q(\reg [114]),
        .R(reset));
  FDRE \reg_reg[115] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [51]),
        .Q(\reg [115]),
        .R(reset));
  FDRE \reg_reg[116] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [52]),
        .Q(\reg [116]),
        .R(reset));
  FDRE \reg_reg[117] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [53]),
        .Q(\reg [117]),
        .R(reset));
  FDRE \reg_reg[118] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [54]),
        .Q(\reg [118]),
        .R(reset));
  FDRE \reg_reg[119] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [55]),
        .Q(\reg [119]),
        .R(reset));
  FDRE \reg_reg[11] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [11]),
        .Q(\reg_reg[63]_0 [11]),
        .R(reset));
  FDRE \reg_reg[120] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [56]),
        .Q(\reg [120]),
        .R(reset));
  FDRE \reg_reg[121] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [57]),
        .Q(\reg [121]),
        .R(reset));
  FDRE \reg_reg[122] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [58]),
        .Q(\reg [122]),
        .R(reset));
  FDRE \reg_reg[123] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [59]),
        .Q(\reg [123]),
        .R(reset));
  FDRE \reg_reg[124] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [60]),
        .Q(\reg [124]),
        .R(reset));
  FDRE \reg_reg[125] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [61]),
        .Q(\reg [125]),
        .R(reset));
  FDRE \reg_reg[126] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [62]),
        .Q(\reg [126]),
        .R(reset));
  FDRE \reg_reg[127] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [63]),
        .Q(\reg [127]),
        .R(reset));
  FDSE \reg_reg[12] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [12]),
        .Q(\reg_reg[63]_0 [12]),
        .S(reset));
  FDRE \reg_reg[13] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [13]),
        .Q(\reg_reg[63]_0 [13]),
        .R(reset));
  FDRE \reg_reg[14] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [14]),
        .Q(\reg_reg[63]_0 [14]),
        .R(reset));
  FDRE \reg_reg[15] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [15]),
        .Q(\reg_reg[63]_0 [15]),
        .R(reset));
  FDRE \reg_reg[16] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [16]),
        .Q(\reg_reg[63]_0 [16]),
        .R(reset));
  FDRE \reg_reg[17] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [17]),
        .Q(\reg_reg[63]_0 [17]),
        .R(reset));
  FDRE \reg_reg[18] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [18]),
        .Q(\reg_reg[63]_0 [18]),
        .R(reset));
  FDRE \reg_reg[19] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [19]),
        .Q(\reg_reg[63]_0 [19]),
        .R(reset));
  FDRE \reg_reg[1] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [1]),
        .Q(\reg_reg[63]_0 [1]),
        .R(reset));
  FDRE \reg_reg[20] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [20]),
        .Q(\reg_reg[63]_0 [20]),
        .R(reset));
  FDRE \reg_reg[21] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [21]),
        .Q(\reg_reg[63]_0 [21]),
        .R(reset));
  FDRE \reg_reg[22] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [22]),
        .Q(\reg_reg[63]_0 [22]),
        .R(reset));
  FDRE \reg_reg[23] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [23]),
        .Q(\reg_reg[63]_0 [23]),
        .R(reset));
  FDRE \reg_reg[24] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [24]),
        .Q(\reg_reg[63]_0 [24]),
        .R(reset));
  FDRE \reg_reg[25] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [25]),
        .Q(\reg_reg[63]_0 [25]),
        .R(reset));
  FDRE \reg_reg[26] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [26]),
        .Q(\reg_reg[63]_0 [26]),
        .R(reset));
  FDRE \reg_reg[27] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [27]),
        .Q(\reg_reg[63]_0 [27]),
        .R(reset));
  FDRE \reg_reg[28] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [28]),
        .Q(\reg_reg[63]_0 [28]),
        .R(reset));
  FDRE \reg_reg[29] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [29]),
        .Q(\reg_reg[63]_0 [29]),
        .R(reset));
  FDRE \reg_reg[2] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [2]),
        .Q(\reg_reg[63]_0 [2]),
        .R(reset));
  FDRE \reg_reg[30] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [30]),
        .Q(\reg_reg[63]_0 [30]),
        .R(reset));
  FDRE \reg_reg[31] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [31]),
        .Q(\reg_reg[63]_0 [31]),
        .R(reset));
  FDRE \reg_reg[32] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [32]),
        .Q(\reg_reg[63]_0 [32]),
        .R(reset));
  FDRE \reg_reg[33] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [33]),
        .Q(\reg_reg[63]_0 [33]),
        .R(reset));
  FDRE \reg_reg[34] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [34]),
        .Q(\reg_reg[63]_0 [34]),
        .R(reset));
  FDRE \reg_reg[35] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [35]),
        .Q(\reg_reg[63]_0 [35]),
        .R(reset));
  FDRE \reg_reg[36] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [36]),
        .Q(\reg_reg[63]_0 [36]),
        .R(reset));
  FDRE \reg_reg[37] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [37]),
        .Q(\reg_reg[63]_0 [37]),
        .R(reset));
  FDRE \reg_reg[38] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [38]),
        .Q(\reg_reg[63]_0 [38]),
        .R(reset));
  FDRE \reg_reg[39] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [39]),
        .Q(\reg_reg[63]_0 [39]),
        .R(reset));
  FDRE \reg_reg[3] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [3]),
        .Q(\reg_reg[63]_0 [3]),
        .R(reset));
  FDRE \reg_reg[40] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [40]),
        .Q(\reg_reg[63]_0 [40]),
        .R(reset));
  FDRE \reg_reg[41] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [41]),
        .Q(\reg_reg[63]_0 [41]),
        .R(reset));
  FDRE \reg_reg[42] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [42]),
        .Q(\reg_reg[63]_0 [42]),
        .R(reset));
  FDRE \reg_reg[43] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [43]),
        .Q(\reg_reg[63]_0 [43]),
        .R(reset));
  FDRE \reg_reg[44] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [44]),
        .Q(\reg_reg[63]_0 [44]),
        .R(reset));
  FDSE \reg_reg[45] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [45]),
        .Q(\reg_reg[63]_0 [45]),
        .S(reset));
  FDRE \reg_reg[46] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [46]),
        .Q(\reg_reg[63]_0 [46]),
        .R(reset));
  FDRE \reg_reg[47] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [47]),
        .Q(\reg_reg[63]_0 [47]),
        .R(reset));
  FDRE \reg_reg[48] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [48]),
        .Q(\reg_reg[63]_0 [48]),
        .R(reset));
  FDRE \reg_reg[49] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [49]),
        .Q(\reg_reg[63]_0 [49]),
        .R(reset));
  FDRE \reg_reg[4] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [4]),
        .Q(\reg_reg[63]_0 [4]),
        .R(reset));
  FDRE \reg_reg[50] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [50]),
        .Q(\reg_reg[63]_0 [50]),
        .R(reset));
  FDRE \reg_reg[51] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [51]),
        .Q(\reg_reg[63]_0 [51]),
        .R(reset));
  FDRE \reg_reg[52] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [52]),
        .Q(\reg_reg[63]_0 [52]),
        .R(reset));
  FDRE \reg_reg[53] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [53]),
        .Q(\reg_reg[63]_0 [53]),
        .R(reset));
  FDRE \reg_reg[54] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [54]),
        .Q(\reg_reg[63]_0 [54]),
        .R(reset));
  FDRE \reg_reg[55] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [55]),
        .Q(\reg_reg[63]_0 [55]),
        .R(reset));
  FDRE \reg_reg[56] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [56]),
        .Q(\reg_reg[63]_0 [56]),
        .R(reset));
  FDRE \reg_reg[57] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [57]),
        .Q(\reg_reg[63]_0 [57]),
        .R(reset));
  FDRE \reg_reg[58] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [58]),
        .Q(\reg_reg[63]_0 [58]),
        .R(reset));
  FDRE \reg_reg[59] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [59]),
        .Q(\reg_reg[63]_0 [59]),
        .R(reset));
  FDRE \reg_reg[5] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [5]),
        .Q(\reg_reg[63]_0 [5]),
        .R(reset));
  FDRE \reg_reg[60] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [60]),
        .Q(\reg_reg[63]_0 [60]),
        .R(reset));
  FDRE \reg_reg[61] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [61]),
        .Q(\reg_reg[63]_0 [61]),
        .R(reset));
  FDRE \reg_reg[62] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [62]),
        .Q(\reg_reg[63]_0 [62]),
        .R(reset));
  FDRE \reg_reg[63] 
       (.C(clk),
        .CE(E[1]),
        .D(\reg_reg[127]_0 [63]),
        .Q(\reg_reg[63]_0 [63]),
        .R(reset));
  FDRE \reg_reg[64] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [32]),
        .Q(\reg [64]),
        .R(reset));
  FDRE \reg_reg[65] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [33]),
        .Q(\reg [65]),
        .R(reset));
  FDRE \reg_reg[66] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [34]),
        .Q(\reg [66]),
        .R(reset));
  FDRE \reg_reg[67] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [35]),
        .Q(\reg [67]),
        .R(reset));
  FDRE \reg_reg[68] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [36]),
        .Q(\reg [68]),
        .R(reset));
  FDRE \reg_reg[69] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [37]),
        .Q(\reg [69]),
        .R(reset));
  FDRE \reg_reg[6] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [6]),
        .Q(\reg_reg[63]_0 [6]),
        .R(reset));
  FDRE \reg_reg[70] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [38]),
        .Q(\reg [70]),
        .R(reset));
  FDRE \reg_reg[71] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [39]),
        .Q(\reg [71]),
        .R(reset));
  FDRE \reg_reg[72] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [40]),
        .Q(\reg [72]),
        .R(reset));
  FDRE \reg_reg[73] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [41]),
        .Q(\reg [73]),
        .R(reset));
  FDRE \reg_reg[74] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [42]),
        .Q(\reg [74]),
        .R(reset));
  FDRE \reg_reg[75] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [43]),
        .Q(\reg [75]),
        .R(reset));
  FDRE \reg_reg[76] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [44]),
        .Q(\reg [76]),
        .R(reset));
  FDRE \reg_reg[77] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [45]),
        .Q(\reg [77]),
        .R(reset));
  FDRE \reg_reg[78] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [46]),
        .Q(\reg [78]),
        .R(reset));
  FDRE \reg_reg[79] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [47]),
        .Q(\reg [79]),
        .R(reset));
  FDRE \reg_reg[7] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [7]),
        .Q(\reg_reg[63]_0 [7]),
        .R(reset));
  FDRE \reg_reg[80] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [48]),
        .Q(\reg [80]),
        .R(reset));
  FDRE \reg_reg[81] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [49]),
        .Q(\reg [81]),
        .R(reset));
  FDRE \reg_reg[82] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [50]),
        .Q(\reg [82]),
        .R(reset));
  FDRE \reg_reg[83] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [51]),
        .Q(\reg [83]),
        .R(reset));
  FDRE \reg_reg[84] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [52]),
        .Q(\reg [84]),
        .R(reset));
  FDRE \reg_reg[85] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [53]),
        .Q(\reg [85]),
        .R(reset));
  FDRE \reg_reg[86] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [54]),
        .Q(\reg [86]),
        .R(reset));
  FDRE \reg_reg[87] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [55]),
        .Q(\reg [87]),
        .R(reset));
  FDRE \reg_reg[88] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [56]),
        .Q(\reg [88]),
        .R(reset));
  FDRE \reg_reg[89] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [57]),
        .Q(\reg [89]),
        .R(reset));
  FDRE \reg_reg[8] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [8]),
        .Q(\reg_reg[63]_0 [8]),
        .R(reset));
  FDRE \reg_reg[90] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [58]),
        .Q(\reg [90]),
        .R(reset));
  FDRE \reg_reg[91] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [59]),
        .Q(\reg [91]),
        .R(reset));
  FDRE \reg_reg[92] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [60]),
        .Q(\reg [92]),
        .R(reset));
  FDRE \reg_reg[93] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [61]),
        .Q(\reg [93]),
        .R(reset));
  FDRE \reg_reg[94] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [62]),
        .Q(\reg [94]),
        .R(reset));
  FDRE \reg_reg[95] 
       (.C(clk),
        .CE(E[2]),
        .D(\reg_reg[127]_0 [63]),
        .Q(\reg [95]),
        .R(reset));
  FDRE \reg_reg[96] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [32]),
        .Q(\reg [96]),
        .R(reset));
  FDRE \reg_reg[97] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [33]),
        .Q(\reg [97]),
        .R(reset));
  FDRE \reg_reg[98] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [34]),
        .Q(\reg [98]),
        .R(reset));
  FDRE \reg_reg[99] 
       (.C(clk),
        .CE(E[3]),
        .D(\reg_reg[127]_0 [35]),
        .Q(\reg [99]),
        .R(reset));
  FDRE \reg_reg[9] 
       (.C(clk),
        .CE(E[0]),
        .D(\reg_reg[127]_0 [9]),
        .Q(\reg_reg[63]_0 [9]),
        .R(reset));
  FDRE sbus_ack_reg
       (.C(clk),
        .CE(1'b1),
        .D(sbus_ack0),
        .Q(bus_ack),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[0]_i_2__0 
       (.I0(reg_din[32]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[0]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[64]),
        .O(\reg_din_reg[32]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[10]_i_2__0 
       (.I0(reg_din[42]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[10]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[74]),
        .O(\reg_din_reg[42]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[11]_i_2__0 
       (.I0(reg_din[43]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[11]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[75]),
        .O(\reg_din_reg[43]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[12]_i_2__0 
       (.I0(reg_din[44]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[12]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[76]),
        .O(\reg_din_reg[44]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[13]_i_2__0 
       (.I0(reg_din[45]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[13]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[77]),
        .O(\reg_din_reg[45]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[14]_i_2__0 
       (.I0(reg_din[46]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[14]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[78]),
        .O(\reg_din_reg[46]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[15]_i_2__0 
       (.I0(reg_din[47]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[15]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[79]),
        .O(\reg_din_reg[47]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[16]_i_2__0 
       (.I0(reg_din[48]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[16]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[80]),
        .O(\reg_din_reg[48]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[17]_i_2__0 
       (.I0(reg_din[49]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[17]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[81]),
        .O(\reg_din_reg[49]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[18]_i_2__0 
       (.I0(reg_din[50]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[18]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[82]),
        .O(\reg_din_reg[50]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[19]_i_2__0 
       (.I0(reg_din[51]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[19]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[83]),
        .O(\reg_din_reg[51]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[1]_i_2__0 
       (.I0(reg_din[33]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[1]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[65]),
        .O(\reg_din_reg[33]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[20]_i_2__0 
       (.I0(reg_din[52]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[20]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[84]),
        .O(\reg_din_reg[52]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[21]_i_2__0 
       (.I0(reg_din[53]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[21]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[85]),
        .O(\reg_din_reg[53]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[22]_i_2__0 
       (.I0(reg_din[54]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[22]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[86]),
        .O(\reg_din_reg[54]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[23]_i_2__0 
       (.I0(reg_din[55]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[23]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[87]),
        .O(\reg_din_reg[55]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[24]_i_2__0 
       (.I0(reg_din[56]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[24]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[88]),
        .O(\reg_din_reg[56]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[25]_i_2__0 
       (.I0(reg_din[57]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[25]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[89]),
        .O(\reg_din_reg[57]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[26]_i_2__0 
       (.I0(reg_din[58]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[26]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[90]),
        .O(\reg_din_reg[58]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[27]_i_2__0 
       (.I0(reg_din[59]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[27]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[91]),
        .O(\reg_din_reg[59]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[28]_i_2__0 
       (.I0(reg_din[60]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[28]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[92]),
        .O(\reg_din_reg[60]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[29]_i_2__0 
       (.I0(reg_din[61]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[29]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[93]),
        .O(\reg_din_reg[61]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[2]_i_2__0 
       (.I0(reg_din[34]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[2]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[66]),
        .O(\reg_din_reg[34]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[30]_i_2__0 
       (.I0(reg_din[62]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[30]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[94]),
        .O(\reg_din_reg[62]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[31]_i_4__0 
       (.I0(reg_din[63]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[31]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[95]),
        .O(\reg_din_reg[63]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[3]_i_2__0 
       (.I0(reg_din[35]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[3]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[67]),
        .O(\reg_din_reg[35]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[4]_i_2__0 
       (.I0(reg_din[36]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[4]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[68]),
        .O(\reg_din_reg[36]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[5]_i_2__0 
       (.I0(reg_din[37]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[5]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[69]),
        .O(\reg_din_reg[37]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[6]_i_2__0 
       (.I0(reg_din[38]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[6]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[70]),
        .O(\reg_din_reg[38]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[7]_i_2__0 
       (.I0(reg_din[39]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[7]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[71]),
        .O(\reg_din_reg[39]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[8]_i_2__0 
       (.I0(reg_din[40]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[8]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[72]),
        .O(\reg_din_reg[40]_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \sbus_rdata[9]_i_2__0 
       (.I0(reg_din[41]),
        .I1(\sbus_rdata_reg[0]_0 ),
        .I2(reg_din[9]),
        .I3(\sbus_rdata_reg[0]_1 ),
        .I4(\sbus_rdata_reg[0]_2 ),
        .I5(reg_din[73]),
        .O(\reg_din_reg[41]_0 ));
  FDRE \sbus_rdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\sbus_rdata_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(D[10]),
        .Q(\sbus_rdata_reg[31]_0 [10]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(D[11]),
        .Q(\sbus_rdata_reg[31]_0 [11]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(D[12]),
        .Q(\sbus_rdata_reg[31]_0 [12]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(D[13]),
        .Q(\sbus_rdata_reg[31]_0 [13]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(D[14]),
        .Q(\sbus_rdata_reg[31]_0 [14]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(D[15]),
        .Q(\sbus_rdata_reg[31]_0 [15]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(D[16]),
        .Q(\sbus_rdata_reg[31]_0 [16]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(D[17]),
        .Q(\sbus_rdata_reg[31]_0 [17]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(D[18]),
        .Q(\sbus_rdata_reg[31]_0 [18]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(D[19]),
        .Q(\sbus_rdata_reg[31]_0 [19]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\sbus_rdata_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(D[20]),
        .Q(\sbus_rdata_reg[31]_0 [20]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(D[21]),
        .Q(\sbus_rdata_reg[31]_0 [21]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(D[22]),
        .Q(\sbus_rdata_reg[31]_0 [22]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(D[23]),
        .Q(\sbus_rdata_reg[31]_0 [23]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(D[24]),
        .Q(\sbus_rdata_reg[31]_0 [24]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(D[25]),
        .Q(\sbus_rdata_reg[31]_0 [25]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(D[26]),
        .Q(\sbus_rdata_reg[31]_0 [26]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(D[27]),
        .Q(\sbus_rdata_reg[31]_0 [27]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(D[28]),
        .Q(\sbus_rdata_reg[31]_0 [28]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(D[29]),
        .Q(\sbus_rdata_reg[31]_0 [29]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\sbus_rdata_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(D[30]),
        .Q(\sbus_rdata_reg[31]_0 [30]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(D[31]),
        .Q(\sbus_rdata_reg[31]_0 [31]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\sbus_rdata_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(D[4]),
        .Q(\sbus_rdata_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(D[5]),
        .Q(\sbus_rdata_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(D[6]),
        .Q(\sbus_rdata_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(D[7]),
        .Q(\sbus_rdata_reg[31]_0 [7]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(D[8]),
        .Q(\sbus_rdata_reg[31]_0 [8]),
        .R(1'b0));
  FDRE \sbus_rdata_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(D[9]),
        .Q(\sbus_rdata_reg[31]_0 [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "uart_rx" *) 
module system_sbus_awfg_0_0_uart_rx
   (rx_ack_cld_reg_0,
    \dout_int_reg[6]_0 ,
    Q,
    \dout_int_reg[4]_0 ,
    \dout_int_reg[4]_1 ,
    \dout_int_reg[2]_0 ,
    \dout_int_reg[4]_2 ,
    \dout_int_reg[2]_1 ,
    cmd_par_reg,
    \dout_int_reg[2]_2 ,
    \dout_int_reg[6]_1 ,
    \rx_csm_current_state_reg[3] ,
    \dout_int_reg[1]_0 ,
    rx_ack_cld_reg_1,
    rx_ack_cld_reg_2,
    rx_ack_cld_reg_3,
    bus_addr_int,
    reset,
    rxd,
    clk,
    \rx_csm_current_state_reg[0] ,
    \rx_csm_current_state_reg[0]_0 ,
    \rx_csm_current_state_reg[0]_1 ,
    \rx_csm_current_state_reg[1] ,
    \rx_csm_current_state_reg[1]_0 ,
    \rx_csm_current_state_reg[1]_1 ,
    cmd_par,
    \rx_csm_current_state_reg[3]_0 ,
    rx_csm_current_state,
    \bus_addr_int_reg[14] ,
    \num_reg[5] ,
    \num_reg[5]_0 ,
    tx_ack,
    bus_ack);
  output rx_ack_cld_reg_0;
  output \dout_int_reg[6]_0 ;
  output [2:0]Q;
  output \dout_int_reg[4]_0 ;
  output [1:0]\dout_int_reg[4]_1 ;
  output \dout_int_reg[2]_0 ;
  output \dout_int_reg[4]_2 ;
  output \dout_int_reg[2]_1 ;
  output cmd_par_reg;
  output \dout_int_reg[2]_2 ;
  output \dout_int_reg[6]_1 ;
  output [6:0]\rx_csm_current_state_reg[3] ;
  output [0:0]\dout_int_reg[1]_0 ;
  output rx_ack_cld_reg_1;
  output rx_ack_cld_reg_2;
  output rx_ack_cld_reg_3;
  output [3:0]bus_addr_int;
  input reset;
  input rxd;
  input clk;
  input \rx_csm_current_state_reg[0] ;
  input \rx_csm_current_state_reg[0]_0 ;
  input \rx_csm_current_state_reg[0]_1 ;
  input \rx_csm_current_state_reg[1] ;
  input \rx_csm_current_state_reg[1]_0 ;
  input \rx_csm_current_state_reg[1]_1 ;
  input cmd_par;
  input \rx_csm_current_state_reg[3]_0 ;
  input [5:0]rx_csm_current_state;
  input [6:0]\bus_addr_int_reg[14] ;
  input [0:0]\num_reg[5] ;
  input \num_reg[5]_0 ;
  input tx_ack;
  input bus_ack;

  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state[0]_i_4_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state[1]_i_4_n_0 ;
  wire [2:0]Q;
  wire \bdcnt[6]_i_1__0_n_0 ;
  wire \bdcnt[6]_i_3_n_0 ;
  wire [6:0]bdcnt_reg;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[3]_i_1_n_0 ;
  wire \bit_cnt[3]_i_2__0_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire \bit_cnt_reg_n_0_[3] ;
  wire bus_ack;
  wire [3:0]bus_addr_int;
  wire [6:0]\bus_addr_int_reg[14] ;
  wire clk;
  wire cmd_par;
  wire cmd_par_reg;
  wire [1:0]current_state;
  wire dout_int;
  wire [0:0]\dout_int_reg[1]_0 ;
  wire \dout_int_reg[2]_0 ;
  wire \dout_int_reg[2]_1 ;
  wire \dout_int_reg[2]_2 ;
  wire \dout_int_reg[4]_0 ;
  wire [1:0]\dout_int_reg[4]_1 ;
  wire \dout_int_reg[4]_2 ;
  wire \dout_int_reg[6]_0 ;
  wire \dout_int_reg[6]_1 ;
  wire \dout_int_reg_n_0_[2] ;
  wire \dout_int_reg_n_0_[3] ;
  wire \dout_int_reg_n_0_[4] ;
  wire \dout_int_reg_n_0_[5] ;
  wire \dout_int_reg_n_0_[7] ;
  wire [1:0]next_state;
  wire [0:0]\num_reg[5] ;
  wire \num_reg[5]_0 ;
  wire [6:0]p_0_in;
  wire p_0_in_0;
  wire [6:0]p_1_in;
  wire reset;
  wire rx_ack_cld_i_1_n_0;
  wire rx_ack_cld_reg_0;
  wire rx_ack_cld_reg_1;
  wire rx_ack_cld_reg_2;
  wire rx_ack_cld_reg_3;
  wire [5:0]rx_csm_current_state;
  wire \rx_csm_current_state[1]_i_2_n_0 ;
  wire \rx_csm_current_state[2]_i_8_n_0 ;
  wire \rx_csm_current_state[4]_i_8_n_0 ;
  wire \rx_csm_current_state[4]_i_9_n_0 ;
  wire \rx_csm_current_state_reg[0] ;
  wire \rx_csm_current_state_reg[0]_0 ;
  wire \rx_csm_current_state_reg[0]_1 ;
  wire \rx_csm_current_state_reg[1] ;
  wire \rx_csm_current_state_reg[1]_0 ;
  wire \rx_csm_current_state_reg[1]_1 ;
  wire [6:0]\rx_csm_current_state_reg[3] ;
  wire \rx_csm_current_state_reg[3]_0 ;
  wire [7:0]rx_reg;
  wire \rx_reg[7]_i_1_n_0 ;
  wire \rx_reg_reg_n_0_[0] ;
  wire rxd;
  wire rxd_q1;
  wire rxd_q2;
  wire \sample_cnt[0]_i_1_n_0 ;
  wire \sample_cnt[0]_i_2_n_0 ;
  wire \sample_cnt[1]_i_1_n_0 ;
  wire \sample_cnt[2]_i_1_n_0 ;
  wire \sample_cnt[2]_i_2_n_0 ;
  wire \sample_cnt_reg_n_0_[0] ;
  wire \sample_cnt_reg_n_0_[1] ;
  wire \sample_cnt_reg_n_0_[2] ;
  wire [2:0]symbol_val;
  wire \symbol_val[3]_i_1_n_0 ;
  wire \symbol_val[3]_i_2_n_0 ;
  wire \symbol_val[3]_i_3_n_0 ;
  wire \symbol_val_reg_n_0_[0] ;
  wire \symbol_val_reg_n_0_[1] ;
  wire \symbol_val_reg_n_0_[2] ;
  wire tx_ack;

  LUT6 #(
    .INIT(64'h5DDDDDDDDDDDDDDD)) 
    \FSM_sequential_current_state[0]_i_1__0 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I3(\sample_cnt_reg_n_0_[0] ),
        .I4(\sample_cnt_reg_n_0_[1] ),
        .I5(\sample_cnt_reg_n_0_[2] ),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hFFFFDDF0)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I1(\FSM_sequential_current_state[0]_i_4_n_0 ),
        .I2(rxd_q2),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0400040004000000)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .I4(p_0_in_0),
        .I5(\symbol_val_reg_n_0_[2] ),
        .O(\FSM_sequential_current_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2C30203020302030)) 
    \FSM_sequential_current_state[1]_i_1__0 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I4(\FSM_sequential_current_state[1]_i_4_n_0 ),
        .I5(\sample_cnt_reg_n_0_[2] ),
        .O(next_state[1]));
  LUT4 #(
    .INIT(16'h0010)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(bdcnt_reg[4]),
        .I1(bdcnt_reg[3]),
        .I2(bdcnt_reg[5]),
        .I3(bdcnt_reg[2]),
        .I4(bdcnt_reg[6]),
        .I5(\bdcnt[6]_i_3_n_0 ),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_current_state[1]_i_4 
       (.I0(\sample_cnt_reg_n_0_[0] ),
        .I1(\sample_cnt_reg_n_0_[1] ),
        .O(\FSM_sequential_current_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "s_wait:00,s_reg:11,s_rx1:10,s_rx:01" *) 
  FDRE \FSM_sequential_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(current_state[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "s_wait:00,s_reg:11,s_rx1:10,s_rx:01" *) 
  FDRE \FSM_sequential_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(current_state[1]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bdcnt[0]_i_1 
       (.I0(bdcnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bdcnt[1]_i_1 
       (.I0(bdcnt_reg[0]),
        .I1(bdcnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \bdcnt[2]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I1(bdcnt_reg[0]),
        .I2(bdcnt_reg[1]),
        .I3(bdcnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \bdcnt[3]_i_1 
       (.I0(bdcnt_reg[2]),
        .I1(bdcnt_reg[1]),
        .I2(bdcnt_reg[0]),
        .I3(bdcnt_reg[3]),
        .I4(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \bdcnt[4]_i_1 
       (.I0(bdcnt_reg[4]),
        .I1(bdcnt_reg[2]),
        .I2(bdcnt_reg[1]),
        .I3(bdcnt_reg[0]),
        .I4(bdcnt_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAF50FF00FB00FF00)) 
    \bdcnt[5]_i_1 
       (.I0(\bdcnt[6]_i_3_n_0 ),
        .I1(bdcnt_reg[6]),
        .I2(bdcnt_reg[2]),
        .I3(bdcnt_reg[5]),
        .I4(bdcnt_reg[3]),
        .I5(bdcnt_reg[4]),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \bdcnt[6]_i_1__0 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(\bdcnt[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9CCCCCCCC8CCCCCC)) 
    \bdcnt[6]_i_2 
       (.I0(\bdcnt[6]_i_3_n_0 ),
        .I1(bdcnt_reg[6]),
        .I2(bdcnt_reg[2]),
        .I3(bdcnt_reg[5]),
        .I4(bdcnt_reg[3]),
        .I5(bdcnt_reg[4]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bdcnt[6]_i_3 
       (.I0(bdcnt_reg[0]),
        .I1(bdcnt_reg[1]),
        .O(\bdcnt[6]_i_3_n_0 ));
  FDRE \bdcnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(bdcnt_reg[0]),
        .R(\bdcnt[6]_i_1__0_n_0 ));
  FDRE \bdcnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(bdcnt_reg[1]),
        .R(\bdcnt[6]_i_1__0_n_0 ));
  FDRE \bdcnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(bdcnt_reg[2]),
        .R(\bdcnt[6]_i_1__0_n_0 ));
  FDRE \bdcnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(bdcnt_reg[3]),
        .R(\bdcnt[6]_i_1__0_n_0 ));
  FDRE \bdcnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(bdcnt_reg[4]),
        .R(\bdcnt[6]_i_1__0_n_0 ));
  FDRE \bdcnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(bdcnt_reg[5]),
        .R(\bdcnt[6]_i_1__0_n_0 ));
  FDRE \bdcnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(bdcnt_reg[6]),
        .R(\bdcnt[6]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h7A)) 
    \bit_cnt[0]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(current_state[1]),
        .I2(\bit_cnt[3]_i_2__0_n_0 ),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h8F20)) 
    \bit_cnt[1]_i_1 
       (.I0(current_state[1]),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt[3]_i_2__0_n_0 ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'hA8FF0200)) 
    \bit_cnt[2]_i_1 
       (.I0(current_state[1]),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt[3]_i_2__0_n_0 ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .O(\bit_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF01FF0000)) 
    \bit_cnt[3]_i_1 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(current_state[1]),
        .I4(\bit_cnt[3]_i_2__0_n_0 ),
        .I5(\bit_cnt_reg_n_0_[3] ),
        .O(\bit_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001101100010001)) 
    \bit_cnt[3]_i_2__0 
       (.I0(reset),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(rxd_q2),
        .I4(\FSM_sequential_current_state[0]_i_4_n_0 ),
        .I5(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(\bit_cnt[3]_i_2__0_n_0 ));
  FDRE \bit_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \bit_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[3]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \bus_addr_int[10]_i_1 
       (.I0(\bus_addr_int_reg[14] [4]),
        .I1(rx_csm_current_state[3]),
        .I2(\dout_int_reg_n_0_[2] ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\rx_csm_current_state_reg[3] [4]));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \bus_addr_int[13]_i_1 
       (.I0(\bus_addr_int_reg[14] [5]),
        .I1(rx_csm_current_state[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\rx_csm_current_state_reg[3] [5]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \bus_addr_int[14]_i_1 
       (.I0(\bus_addr_int_reg[14] [6]),
        .I1(rx_csm_current_state[3]),
        .I2(\dout_int_reg_n_0_[2] ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\rx_csm_current_state_reg[3] [6]));
  LUT6 #(
    .INIT(64'hFF6A6A6A006A6A6A)) 
    \bus_addr_int[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(rx_csm_current_state[3]),
        .I4(rx_csm_current_state[2]),
        .I5(\bus_addr_int_reg[14] [0]),
        .O(\rx_csm_current_state_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \bus_addr_int[5]_i_1 
       (.I0(\bus_addr_int_reg[14] [1]),
        .I1(rx_csm_current_state[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\rx_csm_current_state_reg[3] [1]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \bus_addr_int[6]_i_1 
       (.I0(\bus_addr_int_reg[14] [2]),
        .I1(rx_csm_current_state[3]),
        .I2(\dout_int_reg_n_0_[2] ),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\rx_csm_current_state_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \bus_addr_int[9]_i_1 
       (.I0(\bus_addr_int_reg[14] [3]),
        .I1(rx_csm_current_state[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(\rx_csm_current_state_reg[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bus_dout_int[28]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .O(bus_addr_int[0]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \bus_dout_int[29]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(bus_addr_int[1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bus_dout_int[30]_i_1 
       (.I0(\dout_int_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(bus_addr_int[2]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h807FFF00)) 
    \bus_dout_int[31]_i_2 
       (.I0(\dout_int_reg_n_0_[2] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\dout_int_reg_n_0_[3] ),
        .I4(Q[2]),
        .O(bus_addr_int[3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bus_dout_int[31]_i_3 
       (.I0(rx_ack_cld_reg_0),
        .I1(rx_csm_current_state[0]),
        .O(rx_ack_cld_reg_3));
  LUT3 #(
    .INIT(8'hCA)) 
    cmd_par_i_1
       (.I0(cmd_par),
        .I1(\dout_int_reg_n_0_[2] ),
        .I2(\dout_int_reg[4]_2 ),
        .O(cmd_par_reg));
  LUT3 #(
    .INIT(8'h08)) 
    \dout_int[7]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(reset),
        .O(dout_int));
  FDRE \dout_int_reg[0] 
       (.C(clk),
        .CE(dout_int),
        .D(\rx_reg_reg_n_0_[0] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \dout_int_reg[1] 
       (.C(clk),
        .CE(dout_int),
        .D(p_1_in[0]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \dout_int_reg[2] 
       (.C(clk),
        .CE(dout_int),
        .D(p_1_in[1]),
        .Q(\dout_int_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \dout_int_reg[3] 
       (.C(clk),
        .CE(dout_int),
        .D(p_1_in[2]),
        .Q(\dout_int_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \dout_int_reg[4] 
       (.C(clk),
        .CE(dout_int),
        .D(p_1_in[3]),
        .Q(\dout_int_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \dout_int_reg[5] 
       (.C(clk),
        .CE(dout_int),
        .D(p_1_in[4]),
        .Q(\dout_int_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \dout_int_reg[6] 
       (.C(clk),
        .CE(dout_int),
        .D(p_1_in[5]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \dout_int_reg[7] 
       (.C(clk),
        .CE(dout_int),
        .D(p_1_in[6]),
        .Q(\dout_int_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6A006AFF6AFF6A00)) 
    \num[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(rx_csm_current_state[0]),
        .I4(\num_reg[5] ),
        .I5(\num_reg[5]_0 ),
        .O(\dout_int_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \num[7]_i_3 
       (.I0(rx_ack_cld_reg_0),
        .I1(rx_csm_current_state[0]),
        .O(rx_ack_cld_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    rx_ack_cld_i_1
       (.I0(rx_ack_cld_reg_0),
        .I1(reset),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .O(rx_ack_cld_i_1_n_0));
  FDRE rx_ack_cld_reg
       (.C(clk),
        .CE(1'b1),
        .D(rx_ack_cld_i_1_n_0),
        .Q(rx_ack_cld_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1110)) 
    \rx_csm_current_state[0]_i_1 
       (.I0(\dout_int_reg[6]_0 ),
        .I1(\rx_csm_current_state_reg[0] ),
        .I2(\rx_csm_current_state_reg[0]_0 ),
        .I3(\rx_csm_current_state_reg[0]_1 ),
        .I4(\dout_int_reg[2]_0 ),
        .I5(\dout_int_reg[4]_2 ),
        .O(\dout_int_reg[4]_1 [0]));
  LUT6 #(
    .INIT(64'hFFEFEEEEAAAAAAAA)) 
    \rx_csm_current_state[1]_i_1 
       (.I0(\dout_int_reg[4]_2 ),
        .I1(\rx_csm_current_state[1]_i_2_n_0 ),
        .I2(\rx_csm_current_state_reg[1] ),
        .I3(\rx_csm_current_state_reg[1]_0 ),
        .I4(\rx_csm_current_state_reg[1]_1 ),
        .I5(\dout_int_reg[4]_0 ),
        .O(\dout_int_reg[4]_1 [1]));
  LUT3 #(
    .INIT(8'h01)) 
    \rx_csm_current_state[1]_i_2 
       (.I0(\dout_int_reg_n_0_[5] ),
        .I1(\dout_int_reg_n_0_[7] ),
        .I2(Q[2]),
        .O(\rx_csm_current_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_csm_current_state[2]_i_2 
       (.I0(\dout_int_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(\rx_csm_current_state[2]_i_8_n_0 ),
        .I3(reset),
        .O(\dout_int_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hCECDCCCFCCCCCCCC)) 
    \rx_csm_current_state[2]_i_3 
       (.I0(\dout_int_reg_n_0_[2] ),
        .I1(reset),
        .I2(\rx_csm_current_state[4]_i_8_n_0 ),
        .I3(Q[0]),
        .I4(\dout_int_reg_n_0_[4] ),
        .I5(\rx_csm_current_state[4]_i_9_n_0 ),
        .O(\dout_int_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \rx_csm_current_state[2]_i_8 
       (.I0(\dout_int_reg_n_0_[7] ),
        .I1(Q[2]),
        .I2(\dout_int_reg_n_0_[5] ),
        .I3(\dout_int_reg_n_0_[4] ),
        .I4(\dout_int_reg_n_0_[3] ),
        .I5(Q[1]),
        .O(\rx_csm_current_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h08080808080808FF)) 
    \rx_csm_current_state[2]_i_9 
       (.I0(\dout_int_reg_n_0_[2] ),
        .I1(\rx_csm_current_state[2]_i_8_n_0 ),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\dout_int_reg_n_0_[7] ),
        .I5(\dout_int_reg_n_0_[5] ),
        .O(\dout_int_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h0000FF750000FFF5)) 
    \rx_csm_current_state[3]_i_2 
       (.I0(\rx_csm_current_state[4]_i_9_n_0 ),
        .I1(\dout_int_reg_n_0_[4] ),
        .I2(Q[0]),
        .I3(\rx_csm_current_state[4]_i_8_n_0 ),
        .I4(reset),
        .I5(\dout_int_reg_n_0_[2] ),
        .O(\dout_int_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h010101FF01010101)) 
    \rx_csm_current_state[3]_i_3 
       (.I0(Q[2]),
        .I1(\dout_int_reg_n_0_[7] ),
        .I2(\dout_int_reg_n_0_[5] ),
        .I3(\rx_csm_current_state_reg[3]_0 ),
        .I4(rx_csm_current_state[4]),
        .I5(rx_csm_current_state[5]),
        .O(\dout_int_reg[6]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hAFA0C0C0)) 
    \rx_csm_current_state[4]_i_10 
       (.I0(rx_ack_cld_reg_0),
        .I1(tx_ack),
        .I2(rx_csm_current_state[1]),
        .I3(bus_ack),
        .I4(rx_csm_current_state[0]),
        .O(rx_ack_cld_reg_1));
  LUT5 #(
    .INIT(32'h00000010)) 
    \rx_csm_current_state[4]_i_2 
       (.I0(\rx_csm_current_state[4]_i_8_n_0 ),
        .I1(\dout_int_reg_n_0_[4] ),
        .I2(\rx_csm_current_state[4]_i_9_n_0 ),
        .I3(Q[0]),
        .I4(reset),
        .O(\dout_int_reg[4]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    \rx_csm_current_state[4]_i_3 
       (.I0(Q[2]),
        .I1(\dout_int_reg_n_0_[7] ),
        .I2(\dout_int_reg_n_0_[5] ),
        .I3(\dout_int_reg[4]_0 ),
        .O(\dout_int_reg[6]_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \rx_csm_current_state[4]_i_8 
       (.I0(\dout_int_reg_n_0_[3] ),
        .I1(Q[1]),
        .O(\rx_csm_current_state[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rx_csm_current_state[4]_i_9 
       (.I0(\dout_int_reg_n_0_[5] ),
        .I1(Q[2]),
        .I2(\dout_int_reg_n_0_[7] ),
        .O(\rx_csm_current_state[4]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_reg[0]_i_1 
       (.I0(p_1_in[0]),
        .I1(current_state[1]),
        .I2(rxd_q2),
        .O(rx_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_reg[1]_i_1 
       (.I0(p_1_in[1]),
        .I1(current_state[1]),
        .I2(rxd_q2),
        .O(rx_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_reg[2]_i_1 
       (.I0(p_1_in[2]),
        .I1(current_state[1]),
        .I2(rxd_q2),
        .O(rx_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_reg[3]_i_1 
       (.I0(p_1_in[3]),
        .I1(current_state[1]),
        .I2(rxd_q2),
        .O(rx_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_reg[4]_i_1 
       (.I0(p_1_in[4]),
        .I1(current_state[1]),
        .I2(rxd_q2),
        .O(rx_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_reg[5]_i_1 
       (.I0(p_1_in[5]),
        .I1(current_state[1]),
        .I2(rxd_q2),
        .O(rx_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rx_reg[6]_i_1 
       (.I0(p_1_in[6]),
        .I1(current_state[1]),
        .I2(rxd_q2),
        .O(rx_reg[6]));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_reg[7]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .O(\rx_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'hFCAA)) 
    \rx_reg[7]_i_2 
       (.I0(rxd_q2),
        .I1(p_0_in_0),
        .I2(\symbol_val_reg_n_0_[2] ),
        .I3(current_state[1]),
        .O(rx_reg[7]));
  FDRE \rx_reg_reg[0] 
       (.C(clk),
        .CE(\rx_reg[7]_i_1_n_0 ),
        .D(rx_reg[0]),
        .Q(\rx_reg_reg_n_0_[0] ),
        .R(reset));
  FDRE \rx_reg_reg[1] 
       (.C(clk),
        .CE(\rx_reg[7]_i_1_n_0 ),
        .D(rx_reg[1]),
        .Q(p_1_in[0]),
        .R(reset));
  FDRE \rx_reg_reg[2] 
       (.C(clk),
        .CE(\rx_reg[7]_i_1_n_0 ),
        .D(rx_reg[2]),
        .Q(p_1_in[1]),
        .R(reset));
  FDRE \rx_reg_reg[3] 
       (.C(clk),
        .CE(\rx_reg[7]_i_1_n_0 ),
        .D(rx_reg[3]),
        .Q(p_1_in[2]),
        .R(reset));
  FDRE \rx_reg_reg[4] 
       (.C(clk),
        .CE(\rx_reg[7]_i_1_n_0 ),
        .D(rx_reg[4]),
        .Q(p_1_in[3]),
        .R(reset));
  FDRE \rx_reg_reg[5] 
       (.C(clk),
        .CE(\rx_reg[7]_i_1_n_0 ),
        .D(rx_reg[5]),
        .Q(p_1_in[4]),
        .R(reset));
  FDRE \rx_reg_reg[6] 
       (.C(clk),
        .CE(\rx_reg[7]_i_1_n_0 ),
        .D(rx_reg[6]),
        .Q(p_1_in[5]),
        .R(reset));
  FDRE \rx_reg_reg[7] 
       (.C(clk),
        .CE(\rx_reg[7]_i_1_n_0 ),
        .D(rx_reg[7]),
        .Q(p_1_in[6]),
        .R(reset));
  FDSE rxd_q1_reg
       (.C(clk),
        .CE(1'b1),
        .D(rxd),
        .Q(rxd_q1),
        .S(reset));
  FDSE rxd_q2_reg
       (.C(clk),
        .CE(1'b1),
        .D(rxd_q1),
        .Q(rxd_q2),
        .S(reset));
  LUT6 #(
    .INIT(64'hFFDFDDDD00303333)) 
    \sample_cnt[0]_i_1 
       (.I0(current_state[0]),
        .I1(reset),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I3(\sample_cnt[0]_i_2_n_0 ),
        .I4(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I5(\sample_cnt_reg_n_0_[0] ),
        .O(\sample_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8000FFFFFFFF)) 
    \sample_cnt[0]_i_2 
       (.I0(\sample_cnt_reg_n_0_[2] ),
        .I1(\sample_cnt_reg_n_0_[1] ),
        .I2(\sample_cnt_reg_n_0_[0] ),
        .I3(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\sample_cnt[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF4F408000808)) 
    \sample_cnt[1]_i_1 
       (.I0(\sample_cnt_reg_n_0_[0] ),
        .I1(current_state[0]),
        .I2(reset),
        .I3(\sample_cnt[2]_i_2_n_0 ),
        .I4(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I5(\sample_cnt_reg_n_0_[1] ),
        .O(\sample_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4FFF4F408000808)) 
    \sample_cnt[2]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_4_n_0 ),
        .I1(current_state[0]),
        .I2(reset),
        .I3(\sample_cnt[2]_i_2_n_0 ),
        .I4(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I5(\sample_cnt_reg_n_0_[2] ),
        .O(\sample_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020202020202020)) 
    \sample_cnt[2]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I3(\sample_cnt_reg_n_0_[0] ),
        .I4(\sample_cnt_reg_n_0_[1] ),
        .I5(\sample_cnt_reg_n_0_[2] ),
        .O(\sample_cnt[2]_i_2_n_0 ));
  FDRE \sample_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_cnt[0]_i_1_n_0 ),
        .Q(\sample_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \sample_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_cnt[1]_i_1_n_0 ),
        .Q(\sample_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \sample_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sample_cnt[2]_i_1_n_0 ),
        .Q(\sample_cnt_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'hAA3A)) 
    \symbol_val[0]_i_1 
       (.I0(rxd_q2),
        .I1(\symbol_val_reg_n_0_[0] ),
        .I2(current_state[0]),
        .I3(current_state[1]),
        .O(symbol_val[0]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00002EE2)) 
    \symbol_val[1]_i_1 
       (.I0(rxd_q2),
        .I1(current_state[0]),
        .I2(\symbol_val_reg_n_0_[1] ),
        .I3(\symbol_val_reg_n_0_[0] ),
        .I4(current_state[1]),
        .O(symbol_val[1]));
  LUT6 #(
    .INIT(64'h000000002EEEE222)) 
    \symbol_val[2]_i_1 
       (.I0(rxd_q2),
        .I1(current_state[0]),
        .I2(\symbol_val_reg_n_0_[0] ),
        .I3(\symbol_val_reg_n_0_[1] ),
        .I4(\symbol_val_reg_n_0_[2] ),
        .I5(current_state[1]),
        .O(symbol_val[2]));
  LUT6 #(
    .INIT(64'h0040000055555555)) 
    \symbol_val[3]_i_1 
       (.I0(reset),
        .I1(current_state[0]),
        .I2(rxd_q2),
        .I3(current_state[1]),
        .I4(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .I5(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .O(\symbol_val[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555511104444000)) 
    \symbol_val[3]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(\symbol_val_reg_n_0_[2] ),
        .I3(\symbol_val[3]_i_3_n_0 ),
        .I4(p_0_in_0),
        .I5(rxd_q2),
        .O(\symbol_val[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \symbol_val[3]_i_3 
       (.I0(\symbol_val_reg_n_0_[0] ),
        .I1(\symbol_val_reg_n_0_[1] ),
        .O(\symbol_val[3]_i_3_n_0 ));
  FDRE \symbol_val_reg[0] 
       (.C(clk),
        .CE(\symbol_val[3]_i_1_n_0 ),
        .D(symbol_val[0]),
        .Q(\symbol_val_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \symbol_val_reg[1] 
       (.C(clk),
        .CE(\symbol_val[3]_i_1_n_0 ),
        .D(symbol_val[1]),
        .Q(\symbol_val_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \symbol_val_reg[2] 
       (.C(clk),
        .CE(\symbol_val[3]_i_1_n_0 ),
        .D(symbol_val[2]),
        .Q(\symbol_val_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \symbol_val_reg[3] 
       (.C(clk),
        .CE(\symbol_val[3]_i_1_n_0 ),
        .D(\symbol_val[3]_i_2_n_0 ),
        .Q(p_0_in_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "uart_top" *) 
module system_sbus_awfg_0_0_uart_top
   (current_state,
    cmd_we,
    tx_ack,
    \dout_int_reg[6] ,
    Q,
    \dout_int_reg[4] ,
    \tx_reg_reg[5] ,
    \dout_int_reg[4]_0 ,
    \dout_int_reg[2] ,
    \dout_int_reg[4]_1 ,
    \dout_int_reg[2]_0 ,
    cmd_par_reg,
    \dout_int_reg[2]_1 ,
    \dout_int_reg[6]_0 ,
    \rx_csm_current_state_reg[3] ,
    \dout_int_reg[1] ,
    rx_ack_cld_reg,
    tx_ack_cld_reg,
    rx_ack_cld_reg_0,
    rx_ack_cld_reg_1,
    bus_addr_int,
    txd,
    reset,
    rxd,
    clk,
    current_state_reg,
    \tx_reg_reg[3] ,
    \tx_reg_reg[6] ,
    \rx_csm_current_state_reg[0] ,
    \rx_csm_current_state_reg[0]_0 ,
    \rx_csm_current_state_reg[0]_1 ,
    \rx_csm_current_state_reg[1] ,
    \rx_csm_current_state_reg[1]_0 ,
    \rx_csm_current_state_reg[1]_1 ,
    cmd_par,
    \rx_csm_current_state_reg[3]_0 ,
    rx_csm_current_state,
    \bus_addr_int_reg[14] ,
    \num_reg[5] ,
    \num_reg[5]_0 ,
    bus_ack,
    D,
    \tx_reg_reg[1] ,
    \tx_reg_reg[2] ,
    SR);
  output current_state;
  output cmd_we;
  output tx_ack;
  output \dout_int_reg[6] ;
  output [2:0]Q;
  output \dout_int_reg[4] ;
  output [0:0]\tx_reg_reg[5] ;
  output [1:0]\dout_int_reg[4]_0 ;
  output \dout_int_reg[2] ;
  output \dout_int_reg[4]_1 ;
  output \dout_int_reg[2]_0 ;
  output cmd_par_reg;
  output \dout_int_reg[2]_1 ;
  output \dout_int_reg[6]_0 ;
  output [6:0]\rx_csm_current_state_reg[3] ;
  output [0:0]\dout_int_reg[1] ;
  output rx_ack_cld_reg;
  output tx_ack_cld_reg;
  output rx_ack_cld_reg_0;
  output rx_ack_cld_reg_1;
  output [3:0]bus_addr_int;
  output txd;
  input reset;
  input rxd;
  input clk;
  input current_state_reg;
  input \tx_reg_reg[3] ;
  input \tx_reg_reg[6] ;
  input \rx_csm_current_state_reg[0] ;
  input \rx_csm_current_state_reg[0]_0 ;
  input \rx_csm_current_state_reg[0]_1 ;
  input \rx_csm_current_state_reg[1] ;
  input \rx_csm_current_state_reg[1]_0 ;
  input \rx_csm_current_state_reg[1]_1 ;
  input cmd_par;
  input \rx_csm_current_state_reg[3]_0 ;
  input [5:0]rx_csm_current_state;
  input [6:0]\bus_addr_int_reg[14] ;
  input [0:0]\num_reg[5] ;
  input \num_reg[5]_0 ;
  input bus_ack;
  input [0:0]D;
  input \tx_reg_reg[1] ;
  input \tx_reg_reg[2] ;
  input [0:0]SR;

  wire [0:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire bus_ack;
  wire [3:0]bus_addr_int;
  wire [6:0]\bus_addr_int_reg[14] ;
  wire clk;
  wire cmd_par;
  wire cmd_par_reg;
  wire cmd_we;
  wire current_state;
  wire current_state_reg;
  wire [0:0]\dout_int_reg[1] ;
  wire \dout_int_reg[2] ;
  wire \dout_int_reg[2]_0 ;
  wire \dout_int_reg[2]_1 ;
  wire \dout_int_reg[4] ;
  wire [1:0]\dout_int_reg[4]_0 ;
  wire \dout_int_reg[4]_1 ;
  wire \dout_int_reg[6] ;
  wire \dout_int_reg[6]_0 ;
  wire [0:0]\num_reg[5] ;
  wire \num_reg[5]_0 ;
  wire reset;
  wire rx_ack_cld_reg;
  wire rx_ack_cld_reg_0;
  wire rx_ack_cld_reg_1;
  wire [5:0]rx_csm_current_state;
  wire \rx_csm_current_state_reg[0] ;
  wire \rx_csm_current_state_reg[0]_0 ;
  wire \rx_csm_current_state_reg[0]_1 ;
  wire \rx_csm_current_state_reg[1] ;
  wire \rx_csm_current_state_reg[1]_0 ;
  wire \rx_csm_current_state_reg[1]_1 ;
  wire [6:0]\rx_csm_current_state_reg[3] ;
  wire \rx_csm_current_state_reg[3]_0 ;
  wire rxd;
  wire tx_ack;
  wire tx_ack_cld_reg;
  wire \tx_reg_reg[1] ;
  wire \tx_reg_reg[2] ;
  wire \tx_reg_reg[3] ;
  wire [0:0]\tx_reg_reg[5] ;
  wire \tx_reg_reg[6] ;
  wire txd;

  system_sbus_awfg_0_0_uart_rx I0
       (.Q(Q),
        .bus_ack(bus_ack),
        .bus_addr_int(bus_addr_int),
        .\bus_addr_int_reg[14] (\bus_addr_int_reg[14] ),
        .clk(clk),
        .cmd_par(cmd_par),
        .cmd_par_reg(cmd_par_reg),
        .\dout_int_reg[1]_0 (\dout_int_reg[1] ),
        .\dout_int_reg[2]_0 (\dout_int_reg[2] ),
        .\dout_int_reg[2]_1 (\dout_int_reg[2]_0 ),
        .\dout_int_reg[2]_2 (\dout_int_reg[2]_1 ),
        .\dout_int_reg[4]_0 (\dout_int_reg[4] ),
        .\dout_int_reg[4]_1 (\dout_int_reg[4]_0 ),
        .\dout_int_reg[4]_2 (\dout_int_reg[4]_1 ),
        .\dout_int_reg[6]_0 (\dout_int_reg[6] ),
        .\dout_int_reg[6]_1 (\dout_int_reg[6]_0 ),
        .\num_reg[5] (\num_reg[5] ),
        .\num_reg[5]_0 (\num_reg[5]_0 ),
        .reset(reset),
        .rx_ack_cld_reg_0(cmd_we),
        .rx_ack_cld_reg_1(rx_ack_cld_reg),
        .rx_ack_cld_reg_2(rx_ack_cld_reg_0),
        .rx_ack_cld_reg_3(rx_ack_cld_reg_1),
        .rx_csm_current_state(rx_csm_current_state),
        .\rx_csm_current_state_reg[0] (\rx_csm_current_state_reg[0] ),
        .\rx_csm_current_state_reg[0]_0 (\rx_csm_current_state_reg[0]_0 ),
        .\rx_csm_current_state_reg[0]_1 (\rx_csm_current_state_reg[0]_1 ),
        .\rx_csm_current_state_reg[1] (\rx_csm_current_state_reg[1] ),
        .\rx_csm_current_state_reg[1]_0 (\rx_csm_current_state_reg[1]_0 ),
        .\rx_csm_current_state_reg[1]_1 (\rx_csm_current_state_reg[1]_1 ),
        .\rx_csm_current_state_reg[3] (\rx_csm_current_state_reg[3] ),
        .\rx_csm_current_state_reg[3]_0 (\rx_csm_current_state_reg[3]_0 ),
        .rxd(rxd),
        .tx_ack(tx_ack));
  system_sbus_awfg_0_0_uart_tx I1
       (.D(D),
        .SR(SR),
        .clk(clk),
        .current_state_reg_0(current_state),
        .current_state_reg_1(current_state_reg),
        .reset(reset),
        .rx_csm_current_state(rx_csm_current_state[0]),
        .tx_ack(tx_ack),
        .tx_ack_cld_reg_0(tx_ack_cld_reg),
        .\tx_reg_reg[1]_0 (\tx_reg_reg[1] ),
        .\tx_reg_reg[2]_0 (\tx_reg_reg[2] ),
        .\tx_reg_reg[3]_0 (\tx_reg_reg[3] ),
        .\tx_reg_reg[5]_0 (\tx_reg_reg[5] ),
        .\tx_reg_reg[6]_0 (\tx_reg_reg[6] ),
        .txd(txd));
endmodule

(* ORIG_REF_NAME = "uart_tx" *) 
module system_sbus_awfg_0_0_uart_tx
   (current_state_reg_0,
    tx_ack,
    tx_ack_cld_reg_0,
    \tx_reg_reg[5]_0 ,
    txd,
    reset,
    clk,
    current_state_reg_1,
    \tx_reg_reg[3]_0 ,
    \tx_reg_reg[6]_0 ,
    rx_csm_current_state,
    D,
    \tx_reg_reg[1]_0 ,
    \tx_reg_reg[2]_0 ,
    SR);
  output current_state_reg_0;
  output tx_ack;
  output tx_ack_cld_reg_0;
  output [0:0]\tx_reg_reg[5]_0 ;
  output txd;
  input reset;
  input clk;
  input current_state_reg_1;
  input \tx_reg_reg[3]_0 ;
  input \tx_reg_reg[6]_0 ;
  input [0:0]rx_csm_current_state;
  input [0:0]D;
  input \tx_reg_reg[1]_0 ;
  input \tx_reg_reg[2]_0 ;
  input [0:0]SR;

  wire [0:0]D;
  wire [0:0]SR;
  wire \bdcnt[5]_i_2_n_0 ;
  wire \bdcnt[8]_i_2_n_0 ;
  wire \bdcnt[9]_i_1_n_0 ;
  wire \bdcnt[9]_i_3_n_0 ;
  wire \bdcnt[9]_i_4_n_0 ;
  wire \bdcnt[9]_i_5_n_0 ;
  wire [9:0]bdcnt_reg;
  wire bit_cnt;
  wire [3:0]bit_cnt0;
  wire \bit_cnt[1]_i_1__0_n_0 ;
  wire \bit_cnt[3]_i_4_n_0 ;
  wire [3:0]bit_cnt_reg;
  wire clk;
  wire current_state_i_2_n_0;
  wire current_state_reg_0;
  wire current_state_reg_1;
  wire next_state;
  wire [9:0]p_0_in__0;
  wire reset;
  wire [0:0]rx_csm_current_state;
  wire tx_ack;
  wire tx_ack_cld_i_1_n_0;
  wire tx_ack_cld_i_2_n_0;
  wire tx_ack_cld_reg_0;
  wire [8:1]tx_reg;
  wire \tx_reg[0]_i_1_n_0 ;
  wire \tx_reg[1]_i_1_n_0 ;
  wire \tx_reg[2]_i_1_n_0 ;
  wire \tx_reg[3]_i_1_n_0 ;
  wire \tx_reg[5]_i_1_n_0 ;
  wire \tx_reg[6]_i_1_n_0 ;
  wire \tx_reg[7]_i_1_n_0 ;
  wire \tx_reg[8]_i_1_n_0 ;
  wire \tx_reg[8]_i_2_n_0 ;
  wire \tx_reg[8]_i_3_n_0 ;
  wire \tx_reg[8]_i_4_n_0 ;
  wire \tx_reg[8]_i_5_n_0 ;
  wire \tx_reg_reg[1]_0 ;
  wire \tx_reg_reg[2]_0 ;
  wire \tx_reg_reg[3]_0 ;
  wire [0:0]\tx_reg_reg[5]_0 ;
  wire \tx_reg_reg[6]_0 ;
  wire txd;

  LUT1 #(
    .INIT(2'h1)) 
    \bdcnt[0]_i_1__0 
       (.I0(bdcnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bdcnt[1]_i_1__0 
       (.I0(bdcnt_reg[0]),
        .I1(bdcnt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \bdcnt[2]_i_1__0 
       (.I0(bdcnt_reg[0]),
        .I1(bdcnt_reg[1]),
        .I2(bdcnt_reg[2]),
        .I3(\tx_reg[8]_i_4_n_0 ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \bdcnt[3]_i_1__0 
       (.I0(bdcnt_reg[3]),
        .I1(bdcnt_reg[1]),
        .I2(bdcnt_reg[0]),
        .I3(bdcnt_reg[2]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \bdcnt[4]_i_1__0 
       (.I0(bdcnt_reg[4]),
        .I1(bdcnt_reg[2]),
        .I2(bdcnt_reg[0]),
        .I3(bdcnt_reg[1]),
        .I4(bdcnt_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \bdcnt[5]_i_1__0 
       (.I0(\bdcnt[9]_i_3_n_0 ),
        .I1(bdcnt_reg[3]),
        .I2(\bdcnt[5]_i_2_n_0 ),
        .I3(bdcnt_reg[2]),
        .I4(bdcnt_reg[4]),
        .I5(bdcnt_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bdcnt[5]_i_2 
       (.I0(bdcnt_reg[0]),
        .I1(bdcnt_reg[1]),
        .O(\bdcnt[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8A20)) 
    \bdcnt[6]_i_1 
       (.I0(\bdcnt[9]_i_3_n_0 ),
        .I1(\bdcnt[8]_i_2_n_0 ),
        .I2(bdcnt_reg[5]),
        .I3(bdcnt_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \bdcnt[7]_i_1 
       (.I0(bdcnt_reg[5]),
        .I1(\bdcnt[8]_i_2_n_0 ),
        .I2(bdcnt_reg[6]),
        .I3(bdcnt_reg[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \bdcnt[8]_i_1 
       (.I0(\bdcnt[9]_i_3_n_0 ),
        .I1(bdcnt_reg[7]),
        .I2(bdcnt_reg[6]),
        .I3(\bdcnt[8]_i_2_n_0 ),
        .I4(bdcnt_reg[5]),
        .I5(bdcnt_reg[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \bdcnt[8]_i_2 
       (.I0(bdcnt_reg[3]),
        .I1(bdcnt_reg[1]),
        .I2(bdcnt_reg[0]),
        .I3(bdcnt_reg[2]),
        .I4(bdcnt_reg[4]),
        .O(\bdcnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bdcnt[9]_i_1 
       (.I0(current_state_reg_0),
        .O(\bdcnt[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \bdcnt[9]_i_2 
       (.I0(\bdcnt[9]_i_3_n_0 ),
        .I1(\bdcnt[9]_i_4_n_0 ),
        .I2(bdcnt_reg[8]),
        .I3(bdcnt_reg[9]),
        .O(p_0_in__0[9]));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \bdcnt[9]_i_3 
       (.I0(bdcnt_reg[7]),
        .I1(bdcnt_reg[8]),
        .I2(\bdcnt[9]_i_5_n_0 ),
        .I3(bdcnt_reg[6]),
        .I4(bdcnt_reg[9]),
        .O(\bdcnt[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \bdcnt[9]_i_4 
       (.I0(bdcnt_reg[7]),
        .I1(bdcnt_reg[6]),
        .I2(\bdcnt[8]_i_2_n_0 ),
        .I3(bdcnt_reg[5]),
        .O(\bdcnt[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \bdcnt[9]_i_5 
       (.I0(bdcnt_reg[3]),
        .I1(bdcnt_reg[2]),
        .I2(bdcnt_reg[1]),
        .I3(bdcnt_reg[0]),
        .I4(bdcnt_reg[5]),
        .I5(bdcnt_reg[4]),
        .O(\bdcnt[9]_i_5_n_0 ));
  FDRE \bdcnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(bdcnt_reg[0]),
        .R(\bdcnt[9]_i_1_n_0 ));
  FDRE \bdcnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(bdcnt_reg[1]),
        .R(\bdcnt[9]_i_1_n_0 ));
  FDRE \bdcnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(bdcnt_reg[2]),
        .R(\bdcnt[9]_i_1_n_0 ));
  FDRE \bdcnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(bdcnt_reg[3]),
        .R(\bdcnt[9]_i_1_n_0 ));
  FDRE \bdcnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(bdcnt_reg[4]),
        .R(\bdcnt[9]_i_1_n_0 ));
  FDRE \bdcnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(bdcnt_reg[5]),
        .R(\bdcnt[9]_i_1_n_0 ));
  FDRE \bdcnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(bdcnt_reg[6]),
        .R(\bdcnt[9]_i_1_n_0 ));
  FDRE \bdcnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(bdcnt_reg[7]),
        .R(\bdcnt[9]_i_1_n_0 ));
  FDRE \bdcnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(bdcnt_reg[8]),
        .R(\bdcnt[9]_i_1_n_0 ));
  FDRE \bdcnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(bdcnt_reg[9]),
        .R(\bdcnt[9]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[0]_i_1 
       (.I0(bit_cnt_reg[0]),
        .O(bit_cnt0[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \bit_cnt[1]_i_1__0 
       (.I0(bit_cnt_reg[0]),
        .I1(bit_cnt_reg[1]),
        .O(\bit_cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt_reg[2]),
        .I1(bit_cnt_reg[1]),
        .I2(bit_cnt_reg[0]),
        .O(bit_cnt0[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_cnt[3]_i_2 
       (.I0(\bit_cnt[3]_i_4_n_0 ),
        .I1(reset),
        .O(bit_cnt));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \bit_cnt[3]_i_3 
       (.I0(bit_cnt_reg[3]),
        .I1(bit_cnt_reg[2]),
        .I2(bit_cnt_reg[0]),
        .I3(bit_cnt_reg[1]),
        .O(bit_cnt0[3]));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \bit_cnt[3]_i_4 
       (.I0(current_state_reg_0),
        .I1(\tx_reg[8]_i_4_n_0 ),
        .I2(bit_cnt_reg[1]),
        .I3(bit_cnt_reg[0]),
        .I4(bit_cnt_reg[2]),
        .I5(bit_cnt_reg[3]),
        .O(\bit_cnt[3]_i_4_n_0 ));
  FDSE \bit_cnt_reg[0] 
       (.C(clk),
        .CE(bit_cnt),
        .D(bit_cnt0[0]),
        .Q(bit_cnt_reg[0]),
        .S(SR));
  FDRE \bit_cnt_reg[1] 
       (.C(clk),
        .CE(bit_cnt),
        .D(\bit_cnt[1]_i_1__0_n_0 ),
        .Q(bit_cnt_reg[1]),
        .R(SR));
  FDRE \bit_cnt_reg[2] 
       (.C(clk),
        .CE(bit_cnt),
        .D(bit_cnt0[2]),
        .Q(bit_cnt_reg[2]),
        .R(SR));
  FDSE \bit_cnt_reg[3] 
       (.C(clk),
        .CE(bit_cnt),
        .D(bit_cnt0[3]),
        .Q(bit_cnt_reg[3]),
        .S(SR));
  LUT3 #(
    .INIT(8'h4F)) 
    current_state_i_1
       (.I0(current_state_reg_0),
        .I1(current_state_reg_1),
        .I2(current_state_i_2_n_0),
        .O(next_state));
  LUT6 #(
    .INIT(64'h00010000FFFFFFFF)) 
    current_state_i_2
       (.I0(bit_cnt_reg[3]),
        .I1(bit_cnt_reg[2]),
        .I2(bit_cnt_reg[0]),
        .I3(bit_cnt_reg[1]),
        .I4(\tx_reg[8]_i_4_n_0 ),
        .I5(current_state_reg_0),
        .O(current_state_i_2_n_0));
  FDRE current_state_reg
       (.C(clk),
        .CE(1'b1),
        .D(next_state),
        .Q(current_state_reg_0),
        .R(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \num[7]_i_4 
       (.I0(tx_ack),
        .I1(rx_csm_current_state),
        .O(tx_ack_cld_reg_0));
  LUT3 #(
    .INIT(8'h08)) 
    tx_ack_cld_i_1
       (.I0(tx_ack_cld_i_2_n_0),
        .I1(current_state_reg_0),
        .I2(reset),
        .O(tx_ack_cld_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    tx_ack_cld_i_2
       (.I0(\tx_reg[8]_i_4_n_0 ),
        .I1(bit_cnt_reg[1]),
        .I2(bit_cnt_reg[0]),
        .I3(bit_cnt_reg[2]),
        .I4(bit_cnt_reg[3]),
        .O(tx_ack_cld_i_2_n_0));
  FDRE tx_ack_cld_reg
       (.C(clk),
        .CE(1'b1),
        .D(tx_ack_cld_i_1_n_0),
        .Q(tx_ack),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFAAC0AA)) 
    \tx_reg[0]_i_1 
       (.I0(txd),
        .I1(tx_reg[1]),
        .I2(current_state_reg_0),
        .I3(\tx_reg[8]_i_1_n_0 ),
        .I4(reset),
        .O(\tx_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAAFC0CAAAA)) 
    \tx_reg[1]_i_1 
       (.I0(tx_reg[1]),
        .I1(\tx_reg_reg[1]_0 ),
        .I2(current_state_reg_0),
        .I3(tx_reg[2]),
        .I4(\tx_reg[8]_i_1_n_0 ),
        .I5(reset),
        .O(\tx_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAAFC0CAAAA)) 
    \tx_reg[2]_i_1 
       (.I0(tx_reg[2]),
        .I1(\tx_reg_reg[2]_0 ),
        .I2(current_state_reg_0),
        .I3(tx_reg[3]),
        .I4(\tx_reg[8]_i_1_n_0 ),
        .I5(reset),
        .O(\tx_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'hFAFC)) 
    \tx_reg[3]_i_1 
       (.I0(tx_reg[4]),
        .I1(\tx_reg_reg[3]_0 ),
        .I2(reset),
        .I3(current_state_reg_0),
        .O(\tx_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hFCDD)) 
    \tx_reg[5]_i_1 
       (.I0(\tx_reg_reg[6]_0 ),
        .I1(reset),
        .I2(tx_reg[6]),
        .I3(current_state_reg_0),
        .O(\tx_reg[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF8B)) 
    \tx_reg[6]_i_1 
       (.I0(tx_reg[7]),
        .I1(current_state_reg_0),
        .I2(\tx_reg_reg[6]_0 ),
        .I3(reset),
        .O(\tx_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'hFAFC)) 
    \tx_reg[7]_i_1 
       (.I0(tx_reg[8]),
        .I1(\tx_reg_reg[6]_0 ),
        .I2(reset),
        .I3(current_state_reg_0),
        .O(\tx_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB0B0FF00)) 
    \tx_reg[8]_i_1 
       (.I0(bit_cnt_reg[3]),
        .I1(\tx_reg[8]_i_3_n_0 ),
        .I2(\tx_reg[8]_i_4_n_0 ),
        .I3(current_state_reg_1),
        .I4(current_state_reg_0),
        .I5(reset),
        .O(\tx_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tx_reg[8]_i_2 
       (.I0(current_state_reg_0),
        .I1(reset),
        .O(\tx_reg[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \tx_reg[8]_i_3 
       (.I0(bit_cnt_reg[1]),
        .I1(bit_cnt_reg[0]),
        .I2(bit_cnt_reg[2]),
        .O(\tx_reg[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \tx_reg[8]_i_4 
       (.I0(bdcnt_reg[3]),
        .I1(bdcnt_reg[7]),
        .I2(bdcnt_reg[2]),
        .I3(bdcnt_reg[4]),
        .I4(\tx_reg[8]_i_5_n_0 ),
        .O(\tx_reg[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \tx_reg[8]_i_5 
       (.I0(bdcnt_reg[1]),
        .I1(bdcnt_reg[0]),
        .I2(bdcnt_reg[8]),
        .I3(bdcnt_reg[9]),
        .I4(bdcnt_reg[5]),
        .I5(bdcnt_reg[6]),
        .O(\tx_reg[8]_i_5_n_0 ));
  FDRE \tx_reg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_reg[0]_i_1_n_0 ),
        .Q(txd),
        .R(1'b0));
  FDRE \tx_reg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_reg[1]_i_1_n_0 ),
        .Q(tx_reg[1]),
        .R(1'b0));
  FDRE \tx_reg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_reg[2]_i_1_n_0 ),
        .Q(tx_reg[2]),
        .R(1'b0));
  FDRE \tx_reg_reg[3] 
       (.C(clk),
        .CE(\tx_reg[8]_i_1_n_0 ),
        .D(\tx_reg[3]_i_1_n_0 ),
        .Q(tx_reg[3]),
        .R(1'b0));
  FDRE \tx_reg_reg[4] 
       (.C(clk),
        .CE(\tx_reg[8]_i_1_n_0 ),
        .D(D),
        .Q(tx_reg[4]),
        .R(1'b0));
  FDRE \tx_reg_reg[5] 
       (.C(clk),
        .CE(\tx_reg[8]_i_1_n_0 ),
        .D(\tx_reg[5]_i_1_n_0 ),
        .Q(\tx_reg_reg[5]_0 ),
        .R(1'b0));
  FDRE \tx_reg_reg[6] 
       (.C(clk),
        .CE(\tx_reg[8]_i_1_n_0 ),
        .D(\tx_reg[6]_i_1_n_0 ),
        .Q(tx_reg[6]),
        .R(1'b0));
  FDRE \tx_reg_reg[7] 
       (.C(clk),
        .CE(\tx_reg[8]_i_1_n_0 ),
        .D(\tx_reg[7]_i_1_n_0 ),
        .Q(tx_reg[7]),
        .R(1'b0));
  FDRE \tx_reg_reg[8] 
       (.C(clk),
        .CE(\tx_reg[8]_i_1_n_0 ),
        .D(\tx_reg[8]_i_2_n_0 ),
        .Q(tx_reg[8]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
