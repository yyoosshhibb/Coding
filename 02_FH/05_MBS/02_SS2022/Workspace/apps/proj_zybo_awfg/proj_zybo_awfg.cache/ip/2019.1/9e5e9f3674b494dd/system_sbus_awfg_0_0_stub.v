// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Jun 22 10:12:52 2022
// Host        : M00443 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_sbus_awfg_0_0_stub.v
// Design      : system_sbus_awfg_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top_awfg,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(buttons, clk, reset, rxd, sbus_addr, sbus_be, 
  sbus_rd, sbus_wdata, sbus_we, sliders, dac_sclk, dac_sdin0, dac_sdin1, dac_sync, leds, pmod_jc, 
  sbus_ack, sbus_rdata, txd)
/* synthesis syn_black_box black_box_pad_pin="buttons[3:0],clk,reset,rxd,sbus_addr[15:0],sbus_be[3:0],sbus_rd,sbus_wdata[31:0],sbus_we,sliders[3:0],dac_sclk,dac_sdin0,dac_sdin1,dac_sync,leds[3:0],pmod_jc[7:0],sbus_ack,sbus_rdata[31:0],txd" */;
  input [3:0]buttons;
  input clk;
  input reset;
  input rxd;
  input [15:0]sbus_addr;
  input [3:0]sbus_be;
  input sbus_rd;
  input [31:0]sbus_wdata;
  input sbus_we;
  input [3:0]sliders;
  output dac_sclk;
  output dac_sdin0;
  output dac_sdin1;
  output dac_sync;
  output [3:0]leds;
  output [7:0]pmod_jc;
  output sbus_ack;
  output [31:0]sbus_rdata;
  output txd;
endmodule
