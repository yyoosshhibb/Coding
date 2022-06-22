// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Jun 21 18:07:16 2022
// Host        : M00443 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_axi_sbus_bridge_0_0_stub.v
// Design      : system_axi_sbus_bridge_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top_axi_sbus_bridge,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(bus0_sbus_ack, bus0_sbus_rdata, 
  bus1_sbus_ack, bus1_sbus_rdata, bus2_sbus_ack, bus2_sbus_rdata, bus3_sbus_ack, 
  bus3_sbus_rdata, s00_axi_aclk, s00_axi_araddr, s00_axi_arburst, s00_axi_arcache, 
  s00_axi_aresetn, s00_axi_arid, s00_axi_arlen, s00_axi_arlock, s00_axi_arprot, 
  s00_axi_arqos, s00_axi_arregion, s00_axi_arsize, s00_axi_aruser, s00_axi_arvalid, 
  s00_axi_awaddr, s00_axi_awburst, s00_axi_awcache, s00_axi_awid, s00_axi_awlen, 
  s00_axi_awlock, s00_axi_awprot, s00_axi_awqos, s00_axi_awregion, s00_axi_awsize, 
  s00_axi_awuser, s00_axi_awvalid, s00_axi_bready, s00_axi_rready, s00_axi_wdata, 
  s00_axi_wlast, s00_axi_wstrb, s00_axi_wuser, s00_axi_wvalid, bus0_sbus_addr, bus0_sbus_be, 
  bus0_sbus_rd, bus0_sbus_wdata, bus0_sbus_we, bus1_sbus_addr, bus1_sbus_be, bus1_sbus_rd, 
  bus1_sbus_wdata, bus1_sbus_we, bus2_sbus_addr, bus2_sbus_be, bus2_sbus_rd, bus2_sbus_wdata, 
  bus2_sbus_we, bus3_sbus_addr, bus3_sbus_be, bus3_sbus_rd, bus3_sbus_wdata, bus3_sbus_we, 
  clk_o, irq_o, reset_o, s00_axi_arready, s00_axi_awready, s00_axi_bid, s00_axi_bresp, 
  s00_axi_buser, s00_axi_bvalid, s00_axi_rdata, s00_axi_rid, s00_axi_rlast, s00_axi_rresp, 
  s00_axi_ruser, s00_axi_rvalid, s00_axi_wready, sync_o)
/* synthesis syn_black_box black_box_pad_pin="bus0_sbus_ack,bus0_sbus_rdata[31:0],bus1_sbus_ack,bus1_sbus_rdata[31:0],bus2_sbus_ack,bus2_sbus_rdata[31:0],bus3_sbus_ack,bus3_sbus_rdata[31:0],s00_axi_aclk,s00_axi_araddr[17:0],s00_axi_arburst[1:0],s00_axi_arcache[3:0],s00_axi_aresetn,s00_axi_arid[11:0],s00_axi_arlen[7:0],s00_axi_arlock,s00_axi_arprot[2:0],s00_axi_arqos[3:0],s00_axi_arregion[3:0],s00_axi_arsize[2:0],s00_axi_aruser[0:0],s00_axi_arvalid,s00_axi_awaddr[17:0],s00_axi_awburst[1:0],s00_axi_awcache[3:0],s00_axi_awid[11:0],s00_axi_awlen[7:0],s00_axi_awlock,s00_axi_awprot[2:0],s00_axi_awqos[3:0],s00_axi_awregion[3:0],s00_axi_awsize[2:0],s00_axi_awuser[0:0],s00_axi_awvalid,s00_axi_bready,s00_axi_rready,s00_axi_wdata[31:0],s00_axi_wlast,s00_axi_wstrb[3:0],s00_axi_wuser[0:0],s00_axi_wvalid,bus0_sbus_addr[15:0],bus0_sbus_be[3:0],bus0_sbus_rd,bus0_sbus_wdata[31:0],bus0_sbus_we,bus1_sbus_addr[15:0],bus1_sbus_be[3:0],bus1_sbus_rd,bus1_sbus_wdata[31:0],bus1_sbus_we,bus2_sbus_addr[15:0],bus2_sbus_be[3:0],bus2_sbus_rd,bus2_sbus_wdata[31:0],bus2_sbus_we,bus3_sbus_addr[15:0],bus3_sbus_be[3:0],bus3_sbus_rd,bus3_sbus_wdata[31:0],bus3_sbus_we,clk_o,irq_o,reset_o,s00_axi_arready,s00_axi_awready,s00_axi_bid[11:0],s00_axi_bresp[1:0],s00_axi_buser[0:0],s00_axi_bvalid,s00_axi_rdata[31:0],s00_axi_rid[11:0],s00_axi_rlast,s00_axi_rresp[1:0],s00_axi_ruser[0:0],s00_axi_rvalid,s00_axi_wready,sync_o[7:0]" */;
  input bus0_sbus_ack;
  input [31:0]bus0_sbus_rdata;
  input bus1_sbus_ack;
  input [31:0]bus1_sbus_rdata;
  input bus2_sbus_ack;
  input [31:0]bus2_sbus_rdata;
  input bus3_sbus_ack;
  input [31:0]bus3_sbus_rdata;
  input s00_axi_aclk;
  input [17:0]s00_axi_araddr;
  input [1:0]s00_axi_arburst;
  input [3:0]s00_axi_arcache;
  input s00_axi_aresetn;
  input [11:0]s00_axi_arid;
  input [7:0]s00_axi_arlen;
  input s00_axi_arlock;
  input [2:0]s00_axi_arprot;
  input [3:0]s00_axi_arqos;
  input [3:0]s00_axi_arregion;
  input [2:0]s00_axi_arsize;
  input [0:0]s00_axi_aruser;
  input s00_axi_arvalid;
  input [17:0]s00_axi_awaddr;
  input [1:0]s00_axi_awburst;
  input [3:0]s00_axi_awcache;
  input [11:0]s00_axi_awid;
  input [7:0]s00_axi_awlen;
  input s00_axi_awlock;
  input [2:0]s00_axi_awprot;
  input [3:0]s00_axi_awqos;
  input [3:0]s00_axi_awregion;
  input [2:0]s00_axi_awsize;
  input [0:0]s00_axi_awuser;
  input s00_axi_awvalid;
  input s00_axi_bready;
  input s00_axi_rready;
  input [31:0]s00_axi_wdata;
  input s00_axi_wlast;
  input [3:0]s00_axi_wstrb;
  input [0:0]s00_axi_wuser;
  input s00_axi_wvalid;
  output [15:0]bus0_sbus_addr;
  output [3:0]bus0_sbus_be;
  output bus0_sbus_rd;
  output [31:0]bus0_sbus_wdata;
  output bus0_sbus_we;
  output [15:0]bus1_sbus_addr;
  output [3:0]bus1_sbus_be;
  output bus1_sbus_rd;
  output [31:0]bus1_sbus_wdata;
  output bus1_sbus_we;
  output [15:0]bus2_sbus_addr;
  output [3:0]bus2_sbus_be;
  output bus2_sbus_rd;
  output [31:0]bus2_sbus_wdata;
  output bus2_sbus_we;
  output [15:0]bus3_sbus_addr;
  output [3:0]bus3_sbus_be;
  output bus3_sbus_rd;
  output [31:0]bus3_sbus_wdata;
  output bus3_sbus_we;
  output clk_o;
  output irq_o;
  output reset_o;
  output s00_axi_arready;
  output s00_axi_awready;
  output [11:0]s00_axi_bid;
  output [1:0]s00_axi_bresp;
  output [0:0]s00_axi_buser;
  output s00_axi_bvalid;
  output [31:0]s00_axi_rdata;
  output [11:0]s00_axi_rid;
  output s00_axi_rlast;
  output [1:0]s00_axi_rresp;
  output [0:0]s00_axi_ruser;
  output s00_axi_rvalid;
  output s00_axi_wready;
  output [7:0]sync_o;
endmodule
