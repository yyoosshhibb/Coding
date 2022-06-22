// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Jun 21 18:07:17 2022
// Host        : M00443 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/_Projekte/Alfreda/Workspace/apps/proj_zybo_awfg/proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_axi_sbus_bridge_0_0/system_axi_sbus_bridge_0_0_sim_netlist.v
// Design      : system_axi_sbus_bridge_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_axi_sbus_bridge_0_0,top_axi_sbus_bridge,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "top_axi_sbus_bridge,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module system_axi_sbus_bridge_0_0
   (bus0_sbus_ack,
    bus0_sbus_rdata,
    bus1_sbus_ack,
    bus1_sbus_rdata,
    bus2_sbus_ack,
    bus2_sbus_rdata,
    bus3_sbus_ack,
    bus3_sbus_rdata,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arburst,
    s00_axi_arcache,
    s00_axi_aresetn,
    s00_axi_arid,
    s00_axi_arlen,
    s00_axi_arlock,
    s00_axi_arprot,
    s00_axi_arqos,
    s00_axi_arregion,
    s00_axi_arsize,
    s00_axi_aruser,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awburst,
    s00_axi_awcache,
    s00_axi_awid,
    s00_axi_awlen,
    s00_axi_awlock,
    s00_axi_awprot,
    s00_axi_awqos,
    s00_axi_awregion,
    s00_axi_awsize,
    s00_axi_awuser,
    s00_axi_awvalid,
    s00_axi_bready,
    s00_axi_rready,
    s00_axi_wdata,
    s00_axi_wlast,
    s00_axi_wstrb,
    s00_axi_wuser,
    s00_axi_wvalid,
    bus0_sbus_addr,
    bus0_sbus_be,
    bus0_sbus_rd,
    bus0_sbus_wdata,
    bus0_sbus_we,
    bus1_sbus_addr,
    bus1_sbus_be,
    bus1_sbus_rd,
    bus1_sbus_wdata,
    bus1_sbus_we,
    bus2_sbus_addr,
    bus2_sbus_be,
    bus2_sbus_rd,
    bus2_sbus_wdata,
    bus2_sbus_we,
    bus3_sbus_addr,
    bus3_sbus_be,
    bus3_sbus_rd,
    bus3_sbus_wdata,
    bus3_sbus_we,
    clk_o,
    irq_o,
    reset_o,
    s00_axi_arready,
    s00_axi_awready,
    s00_axi_bid,
    s00_axi_bresp,
    s00_axi_buser,
    s00_axi_bvalid,
    s00_axi_rdata,
    s00_axi_rid,
    s00_axi_rlast,
    s00_axi_rresp,
    s00_axi_ruser,
    s00_axi_rvalid,
    s00_axi_wready,
    sync_o);
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_ack" *) input bus0_sbus_ack;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_rdata" *) input [31:0]bus0_sbus_rdata;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_ack" *) input bus1_sbus_ack;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_rdata" *) input [31:0]bus1_sbus_rdata;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_ack" *) input bus2_sbus_ack;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_rdata" *) input [31:0]bus2_sbus_rdata;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_ack" *) input bus3_sbus_ack;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_rdata" *) input [31:0]bus3_sbus_rdata;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 12, ADDR_WIDTH 18, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [17:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARBURST" *) input [1:0]s00_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARCACHE" *) input [3:0]s00_axi_arcache;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARID" *) input [11:0]s00_axi_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARLEN" *) input [7:0]s00_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARLOCK" *) input s00_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARQOS" *) input [3:0]s00_axi_arqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARREGION" *) input [3:0]s00_axi_arregion;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARSIZE" *) input [2:0]s00_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARUSER" *) input [0:0]s00_axi_aruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWADDR" *) input [17:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWBURST" *) input [1:0]s00_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWCACHE" *) input [3:0]s00_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWID" *) input [11:0]s00_axi_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWLEN" *) input [7:0]s00_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWLOCK" *) input s00_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWQOS" *) input [3:0]s00_axi_awqos;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWREGION" *) input [3:0]s00_axi_awregion;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWSIZE" *) input [2:0]s00_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWUSER" *) input [0:0]s00_axi_awuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WLAST" *) input s00_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WUSER" *) input [0:0]s00_axi_wuser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_addr" *) output [15:0]bus0_sbus_addr;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_be" *) output [3:0]bus0_sbus_be;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_rd" *) output bus0_sbus_rd;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_wdata" *) output [31:0]bus0_sbus_wdata;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_we" *) output bus0_sbus_we;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_addr" *) output [15:0]bus1_sbus_addr;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_be" *) output [3:0]bus1_sbus_be;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_rd" *) output bus1_sbus_rd;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_wdata" *) output [31:0]bus1_sbus_wdata;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_we" *) output bus1_sbus_we;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_addr" *) output [15:0]bus2_sbus_addr;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_be" *) output [3:0]bus2_sbus_be;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_rd" *) output bus2_sbus_rd;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_wdata" *) output [31:0]bus2_sbus_wdata;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_we" *) output bus2_sbus_we;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_addr" *) output [15:0]bus3_sbus_addr;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_be" *) output [3:0]bus3_sbus_be;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_rd" *) output bus3_sbus_rd;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_wdata" *) output [31:0]bus3_sbus_wdata;
  (* x_interface_info = "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_we" *) output bus3_sbus_we;
  output clk_o;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 irq_o INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME irq_o, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq_o;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_o RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_o, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output reset_o;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BID" *) output [11:0]s00_axi_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BUSER" *) output [0:0]s00_axi_buser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RID" *) output [11:0]s00_axi_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RLAST" *) output s00_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RUSER" *) output [0:0]s00_axi_ruser;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s00_axi WREADY" *) output s00_axi_wready;
  output [7:0]sync_o;

  wire bus0_sbus_ack;
  wire [15:0]bus0_sbus_addr;
  wire [31:0]bus0_sbus_rdata;
  wire [31:0]bus0_sbus_wdata;
  wire bus0_sbus_we;
  wire bus1_sbus_ack;
  wire [31:0]bus1_sbus_rdata;
  wire bus2_sbus_ack;
  wire [31:0]bus2_sbus_rdata;
  wire bus3_sbus_ack;
  wire [3:0]bus3_sbus_be;
  wire bus3_sbus_rd;
  wire [31:0]bus3_sbus_rdata;
  wire clk_o;
  wire irq_o;
  wire reset_o;
  wire s00_axi_aclk;
  wire [17:0]s00_axi_araddr;
  wire [1:0]s00_axi_arburst;
  wire [3:0]s00_axi_arcache;
  wire s00_axi_aresetn;
  wire [11:0]s00_axi_arid;
  wire [7:0]s00_axi_arlen;
  wire s00_axi_arlock;
  wire [2:0]s00_axi_arprot;
  wire [3:0]s00_axi_arqos;
  wire s00_axi_arready;
  wire [3:0]s00_axi_arregion;
  wire [2:0]s00_axi_arsize;
  wire s00_axi_arvalid;
  wire [17:0]s00_axi_awaddr;
  wire [1:0]s00_axi_awburst;
  wire [3:0]s00_axi_awcache;
  wire [11:0]s00_axi_awid;
  wire [7:0]s00_axi_awlen;
  wire s00_axi_awlock;
  wire [2:0]s00_axi_awprot;
  wire [3:0]s00_axi_awqos;
  wire s00_axi_awready;
  wire [3:0]s00_axi_awregion;
  wire [2:0]s00_axi_awsize;
  wire s00_axi_awvalid;
  wire [11:0]s00_axi_bid;
  wire s00_axi_bready;
  wire [1:0]s00_axi_bresp;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire [11:0]s00_axi_rid;
  wire s00_axi_rlast;
  wire s00_axi_rready;
  wire [1:0]s00_axi_rresp;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wlast;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [7:0]sync_o;

  assign bus0_sbus_be[3:0] = bus3_sbus_be;
  assign bus0_sbus_rd = bus3_sbus_rd;
  assign bus1_sbus_addr[15:0] = bus0_sbus_addr;
  assign bus1_sbus_be[3:0] = bus3_sbus_be;
  assign bus1_sbus_rd = bus3_sbus_rd;
  assign bus1_sbus_wdata[31:0] = bus0_sbus_wdata;
  assign bus1_sbus_we = bus0_sbus_we;
  assign bus2_sbus_addr[15:0] = bus0_sbus_addr;
  assign bus2_sbus_be[3:0] = bus3_sbus_be;
  assign bus2_sbus_rd = bus3_sbus_rd;
  assign bus2_sbus_wdata[31:0] = bus0_sbus_wdata;
  assign bus2_sbus_we = bus0_sbus_we;
  assign bus3_sbus_addr[15:0] = bus0_sbus_addr;
  assign bus3_sbus_wdata[31:0] = bus0_sbus_wdata;
  assign bus3_sbus_we = bus0_sbus_we;
  system_axi_sbus_bridge_0_0_top_axi_sbus_bridge U0
       (.bus0_sbus_ack(bus0_sbus_ack),
        .bus0_sbus_rdata(bus0_sbus_rdata),
        .bus0_sbus_wdata(bus0_sbus_wdata),
        .bus1_sbus_ack(bus1_sbus_ack),
        .bus1_sbus_rdata(bus1_sbus_rdata),
        .bus2_sbus_ack(bus2_sbus_ack),
        .bus2_sbus_rdata(bus2_sbus_rdata),
        .bus3_sbus_ack(bus3_sbus_ack),
        .bus3_sbus_addr(bus0_sbus_addr),
        .bus3_sbus_be(bus3_sbus_be),
        .bus3_sbus_rd(bus3_sbus_rd),
        .bus3_sbus_rdata(bus3_sbus_rdata),
        .bus3_sbus_we(bus0_sbus_we),
        .clk_o(clk_o),
        .irq_o(irq_o),
        .reset_o(reset_o),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_arburst(s00_axi_arburst),
        .s00_axi_arcache(s00_axi_arcache),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arid(s00_axi_arid),
        .s00_axi_arlen(s00_axi_arlen),
        .s00_axi_arlock(s00_axi_arlock),
        .s00_axi_arprot(s00_axi_arprot),
        .s00_axi_arqos(s00_axi_arqos),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arregion(s00_axi_arregion),
        .s00_axi_arsize(s00_axi_arsize),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awburst(s00_axi_awburst),
        .s00_axi_awcache(s00_axi_awcache),
        .s00_axi_awid(s00_axi_awid),
        .s00_axi_awlen(s00_axi_awlen),
        .s00_axi_awlock(s00_axi_awlock),
        .s00_axi_awprot(s00_axi_awprot),
        .s00_axi_awqos(s00_axi_awqos),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awregion(s00_axi_awregion),
        .s00_axi_awsize(s00_axi_awsize),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bid(s00_axi_bid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bresp(s00_axi_bresp),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rid(s00_axi_rid),
        .s00_axi_rlast(s00_axi_rlast),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(s00_axi_rresp),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wlast(s00_axi_wlast),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sync_o(sync_o));
endmodule

(* C_SLV_ADDR_WIDTH = "16" *) (* C_SLV_DATA_WIDTH = "32" *) (* C_S_AXI_ADDR_WIDTH = "18" *) 
(* C_S_AXI_ARUSER_WIDTH = "0" *) (* C_S_AXI_AWUSER_WIDTH = "0" *) (* C_S_AXI_BUSER_WIDTH = "0" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "12" *) (* C_S_AXI_RUSER_WIDTH = "0" *) 
(* C_S_AXI_WUSER_WIDTH = "0" *) (* ORIG_REF_NAME = "S00_AXI" *) (* pipeline_g = "FALSE" *) 
module system_axi_sbus_bridge_0_0_S00_AXI
   (clk_o,
    reset_o,
    sbus_i_we,
    sbus_i_be,
    sbus_i_rd,
    sbus_o_ack,
    sbus_i_addr,
    sbus_i_wdata,
    sbus_o_rdata,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWID,
    S_AXI_AWADDR,
    S_AXI_AWLEN,
    S_AXI_AWSIZE,
    S_AXI_AWBURST,
    S_AXI_AWLOCK,
    S_AXI_AWCACHE,
    S_AXI_AWPROT,
    S_AXI_AWQOS,
    S_AXI_AWREGION,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WLAST,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BID,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARID,
    S_AXI_ARADDR,
    S_AXI_ARLEN,
    S_AXI_ARSIZE,
    S_AXI_ARBURST,
    S_AXI_ARLOCK,
    S_AXI_ARCACHE,
    S_AXI_ARPROT,
    S_AXI_ARQOS,
    S_AXI_ARREGION,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RID,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RLAST,
    S_AXI_RVALID,
    S_AXI_RREADY);
  output clk_o;
  output reset_o;
  output sbus_i_we;
  output [3:0]sbus_i_be;
  output sbus_i_rd;
  input sbus_o_ack;
  output [15:0]sbus_i_addr;
  output [31:0]sbus_i_wdata;
  input [31:0]sbus_o_rdata;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [11:0]S_AXI_AWID;
  input [17:0]S_AXI_AWADDR;
  input [7:0]S_AXI_AWLEN;
  input [2:0]S_AXI_AWSIZE;
  input [1:0]S_AXI_AWBURST;
  input S_AXI_AWLOCK;
  input [3:0]S_AXI_AWCACHE;
  input [2:0]S_AXI_AWPROT;
  input [3:0]S_AXI_AWQOS;
  input [3:0]S_AXI_AWREGION;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WLAST;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [11:0]S_AXI_BID;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [11:0]S_AXI_ARID;
  input [17:0]S_AXI_ARADDR;
  input [7:0]S_AXI_ARLEN;
  input [2:0]S_AXI_ARSIZE;
  input [1:0]S_AXI_ARBURST;
  input S_AXI_ARLOCK;
  input [3:0]S_AXI_ARCACHE;
  input [2:0]S_AXI_ARPROT;
  input [3:0]S_AXI_ARQOS;
  input [3:0]S_AXI_ARREGION;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [11:0]S_AXI_RID;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RLAST;
  output S_AXI_RVALID;
  input S_AXI_RREADY;

  wire \<const0> ;
  wire [17:2]L;
  wire S_AXI_ACLK;
  wire [17:0]S_AXI_ARADDR;
  wire [1:0]S_AXI_ARBURST;
  wire S_AXI_ARESETN;
  wire [11:0]S_AXI_ARID;
  wire [7:0]S_AXI_ARLEN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [17:0]S_AXI_AWADDR;
  wire [1:0]S_AXI_AWBURST;
  wire [11:0]S_AXI_AWID;
  wire [7:0]S_AXI_AWLEN;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RLAST;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WLAST;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire axi_araddr1;
  wire \axi_araddr[10]_i_1_n_0 ;
  wire \axi_araddr[11]_i_1_n_0 ;
  wire \axi_araddr[12]_i_1_n_0 ;
  wire \axi_araddr[13]_i_1_n_0 ;
  wire \axi_araddr[13]_i_3_n_0 ;
  wire \axi_araddr[13]_i_4_n_0 ;
  wire \axi_araddr[13]_i_5_n_0 ;
  wire \axi_araddr[13]_i_6_n_0 ;
  wire \axi_araddr[13]_i_7_n_0 ;
  wire \axi_araddr[14]_i_1_n_0 ;
  wire \axi_araddr[15]_i_1_n_0 ;
  wire \axi_araddr[16]_i_1_n_0 ;
  wire \axi_araddr[17]_i_10_n_0 ;
  wire \axi_araddr[17]_i_11_n_0 ;
  wire \axi_araddr[17]_i_1_n_0 ;
  wire \axi_araddr[17]_i_2_n_0 ;
  wire \axi_araddr[17]_i_4_n_0 ;
  wire \axi_araddr[17]_i_6_n_0 ;
  wire \axi_araddr[17]_i_7_n_0 ;
  wire \axi_araddr[17]_i_8_n_0 ;
  wire \axi_araddr[17]_i_9_n_0 ;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[5]_i_1_n_0 ;
  wire \axi_araddr[5]_i_3_n_0 ;
  wire \axi_araddr[5]_i_4_n_0 ;
  wire \axi_araddr[5]_i_5_n_0 ;
  wire \axi_araddr[5]_i_6_n_0 ;
  wire \axi_araddr[5]_i_7_n_0 ;
  wire \axi_araddr[5]_i_8_n_0 ;
  wire \axi_araddr[5]_i_9_n_0 ;
  wire \axi_araddr[6]_i_1_n_0 ;
  wire \axi_araddr[7]_i_1_n_0 ;
  wire \axi_araddr[8]_i_1_n_0 ;
  wire \axi_araddr[9]_i_10_n_0 ;
  wire \axi_araddr[9]_i_1_n_0 ;
  wire \axi_araddr[9]_i_3_n_0 ;
  wire \axi_araddr[9]_i_4_n_0 ;
  wire \axi_araddr[9]_i_5_n_0 ;
  wire \axi_araddr[9]_i_6_n_0 ;
  wire \axi_araddr[9]_i_7_n_0 ;
  wire \axi_araddr[9]_i_8_n_0 ;
  wire \axi_araddr[9]_i_9_n_0 ;
  wire \axi_araddr_reg[10]_i_2_n_0 ;
  wire \axi_araddr_reg[10]_i_2_n_1 ;
  wire \axi_araddr_reg[10]_i_2_n_2 ;
  wire \axi_araddr_reg[10]_i_2_n_3 ;
  wire \axi_araddr_reg[10]_i_2_n_4 ;
  wire \axi_araddr_reg[10]_i_2_n_5 ;
  wire \axi_araddr_reg[10]_i_2_n_6 ;
  wire \axi_araddr_reg[10]_i_2_n_7 ;
  wire \axi_araddr_reg[13]_i_2_n_0 ;
  wire \axi_araddr_reg[13]_i_2_n_1 ;
  wire \axi_araddr_reg[13]_i_2_n_2 ;
  wire \axi_araddr_reg[13]_i_2_n_3 ;
  wire \axi_araddr_reg[13]_i_2_n_4 ;
  wire \axi_araddr_reg[13]_i_2_n_5 ;
  wire \axi_araddr_reg[13]_i_2_n_6 ;
  wire \axi_araddr_reg[13]_i_2_n_7 ;
  wire \axi_araddr_reg[14]_i_2_n_0 ;
  wire \axi_araddr_reg[14]_i_2_n_1 ;
  wire \axi_araddr_reg[14]_i_2_n_2 ;
  wire \axi_araddr_reg[14]_i_2_n_3 ;
  wire \axi_araddr_reg[14]_i_2_n_4 ;
  wire \axi_araddr_reg[14]_i_2_n_5 ;
  wire \axi_araddr_reg[14]_i_2_n_6 ;
  wire \axi_araddr_reg[14]_i_2_n_7 ;
  wire \axi_araddr_reg[17]_i_3_n_1 ;
  wire \axi_araddr_reg[17]_i_3_n_2 ;
  wire \axi_araddr_reg[17]_i_3_n_3 ;
  wire \axi_araddr_reg[17]_i_3_n_4 ;
  wire \axi_araddr_reg[17]_i_3_n_5 ;
  wire \axi_araddr_reg[17]_i_3_n_6 ;
  wire \axi_araddr_reg[17]_i_3_n_7 ;
  wire \axi_araddr_reg[17]_i_5_n_2 ;
  wire \axi_araddr_reg[17]_i_5_n_3 ;
  wire \axi_araddr_reg[17]_i_5_n_5 ;
  wire \axi_araddr_reg[17]_i_5_n_6 ;
  wire \axi_araddr_reg[17]_i_5_n_7 ;
  wire \axi_araddr_reg[5]_i_2_n_0 ;
  wire \axi_araddr_reg[5]_i_2_n_1 ;
  wire \axi_araddr_reg[5]_i_2_n_2 ;
  wire \axi_araddr_reg[5]_i_2_n_3 ;
  wire \axi_araddr_reg[5]_i_2_n_4 ;
  wire \axi_araddr_reg[5]_i_2_n_5 ;
  wire \axi_araddr_reg[5]_i_2_n_6 ;
  wire \axi_araddr_reg[5]_i_2_n_7 ;
  wire \axi_araddr_reg[6]_i_2_n_0 ;
  wire \axi_araddr_reg[6]_i_2_n_1 ;
  wire \axi_araddr_reg[6]_i_2_n_2 ;
  wire \axi_araddr_reg[6]_i_2_n_3 ;
  wire \axi_araddr_reg[6]_i_2_n_4 ;
  wire \axi_araddr_reg[6]_i_2_n_5 ;
  wire \axi_araddr_reg[6]_i_2_n_6 ;
  wire \axi_araddr_reg[6]_i_2_n_7 ;
  wire \axi_araddr_reg[9]_i_2_n_0 ;
  wire \axi_araddr_reg[9]_i_2_n_1 ;
  wire \axi_araddr_reg[9]_i_2_n_2 ;
  wire \axi_araddr_reg[9]_i_2_n_3 ;
  wire \axi_araddr_reg[9]_i_2_n_4 ;
  wire \axi_araddr_reg[9]_i_2_n_5 ;
  wire \axi_araddr_reg[9]_i_2_n_6 ;
  wire \axi_araddr_reg[9]_i_2_n_7 ;
  wire \axi_araddr_reg_n_0_[10] ;
  wire \axi_araddr_reg_n_0_[11] ;
  wire \axi_araddr_reg_n_0_[12] ;
  wire \axi_araddr_reg_n_0_[13] ;
  wire \axi_araddr_reg_n_0_[14] ;
  wire \axi_araddr_reg_n_0_[15] ;
  wire \axi_araddr_reg_n_0_[16] ;
  wire \axi_araddr_reg_n_0_[17] ;
  wire \axi_araddr_reg_n_0_[2] ;
  wire \axi_araddr_reg_n_0_[3] ;
  wire \axi_araddr_reg_n_0_[4] ;
  wire \axi_araddr_reg_n_0_[5] ;
  wire \axi_araddr_reg_n_0_[6] ;
  wire \axi_araddr_reg_n_0_[7] ;
  wire \axi_araddr_reg_n_0_[8] ;
  wire \axi_araddr_reg_n_0_[9] ;
  wire \axi_arlen_cntr[7]_i_10_n_0 ;
  wire \axi_arlen_cntr[7]_i_11_n_0 ;
  wire \axi_arlen_cntr[7]_i_12_n_0 ;
  wire \axi_arlen_cntr[7]_i_13_n_0 ;
  wire \axi_arlen_cntr[7]_i_1_n_0 ;
  wire \axi_arlen_cntr[7]_i_5_n_0 ;
  wire \axi_arlen_cntr[7]_i_6_n_0 ;
  wire \axi_arlen_cntr[7]_i_7_n_0 ;
  wire \axi_arlen_cntr[7]_i_8_n_0 ;
  wire \axi_arlen_cntr[7]_i_9_n_0 ;
  wire [7:0]axi_arlen_cntr_reg;
  wire \axi_arlen_cntr_reg[7]_i_4_n_1 ;
  wire \axi_arlen_cntr_reg[7]_i_4_n_2 ;
  wire \axi_arlen_cntr_reg[7]_i_4_n_3 ;
  wire axi_arready1;
  wire axi_arready_i_1_n_0;
  wire axi_arv_arr_flag_i_1_n_0;
  wire axi_arv_arr_flag_i_3_n_0;
  wire axi_arv_arr_flag_i_4_n_0;
  wire axi_arv_arr_flag_i_5_n_0;
  wire axi_awaddr1;
  wire \axi_awaddr[13]_i_3_n_0 ;
  wire \axi_awaddr[13]_i_4_n_0 ;
  wire \axi_awaddr[13]_i_5_n_0 ;
  wire \axi_awaddr[13]_i_6_n_0 ;
  wire \axi_awaddr[13]_i_7_n_0 ;
  wire \axi_awaddr[17]_i_10_n_0 ;
  wire \axi_awaddr[17]_i_11_n_0 ;
  wire \axi_awaddr[17]_i_12_n_0 ;
  wire \axi_awaddr[17]_i_13_n_0 ;
  wire \axi_awaddr[17]_i_14_n_0 ;
  wire \axi_awaddr[17]_i_15_n_0 ;
  wire \axi_awaddr[17]_i_16_n_0 ;
  wire \axi_awaddr[17]_i_17_n_0 ;
  wire \axi_awaddr[17]_i_18_n_0 ;
  wire \axi_awaddr[17]_i_19_n_0 ;
  wire \axi_awaddr[17]_i_1_n_0 ;
  wire \axi_awaddr[17]_i_20_n_0 ;
  wire \axi_awaddr[17]_i_21_n_0 ;
  wire \axi_awaddr[17]_i_8_n_0 ;
  wire \axi_awaddr[17]_i_9_n_0 ;
  wire \axi_awaddr[5]_i_3_n_0 ;
  wire \axi_awaddr[5]_i_4_n_0 ;
  wire \axi_awaddr[5]_i_5_n_0 ;
  wire \axi_awaddr[5]_i_6_n_0 ;
  wire \axi_awaddr[5]_i_7_n_0 ;
  wire \axi_awaddr[5]_i_8_n_0 ;
  wire \axi_awaddr[5]_i_9_n_0 ;
  wire \axi_awaddr[9]_i_10_n_0 ;
  wire \axi_awaddr[9]_i_3_n_0 ;
  wire \axi_awaddr[9]_i_4_n_0 ;
  wire \axi_awaddr[9]_i_5_n_0 ;
  wire \axi_awaddr[9]_i_6_n_0 ;
  wire \axi_awaddr[9]_i_7_n_0 ;
  wire \axi_awaddr[9]_i_8_n_0 ;
  wire \axi_awaddr[9]_i_9_n_0 ;
  wire \axi_awaddr_reg[10]_i_2_n_0 ;
  wire \axi_awaddr_reg[10]_i_2_n_1 ;
  wire \axi_awaddr_reg[10]_i_2_n_2 ;
  wire \axi_awaddr_reg[10]_i_2_n_3 ;
  wire \axi_awaddr_reg[13]_i_2_n_0 ;
  wire \axi_awaddr_reg[13]_i_2_n_1 ;
  wire \axi_awaddr_reg[13]_i_2_n_2 ;
  wire \axi_awaddr_reg[13]_i_2_n_3 ;
  wire \axi_awaddr_reg[14]_i_2_n_0 ;
  wire \axi_awaddr_reg[14]_i_2_n_1 ;
  wire \axi_awaddr_reg[14]_i_2_n_2 ;
  wire \axi_awaddr_reg[14]_i_2_n_3 ;
  wire \axi_awaddr_reg[17]_i_4_n_1 ;
  wire \axi_awaddr_reg[17]_i_4_n_2 ;
  wire \axi_awaddr_reg[17]_i_4_n_3 ;
  wire \axi_awaddr_reg[17]_i_5_n_1 ;
  wire \axi_awaddr_reg[17]_i_5_n_2 ;
  wire \axi_awaddr_reg[17]_i_5_n_3 ;
  wire \axi_awaddr_reg[17]_i_7_n_2 ;
  wire \axi_awaddr_reg[17]_i_7_n_3 ;
  wire \axi_awaddr_reg[5]_i_2_n_0 ;
  wire \axi_awaddr_reg[5]_i_2_n_1 ;
  wire \axi_awaddr_reg[5]_i_2_n_2 ;
  wire \axi_awaddr_reg[5]_i_2_n_3 ;
  wire \axi_awaddr_reg[6]_i_2_n_0 ;
  wire \axi_awaddr_reg[6]_i_2_n_1 ;
  wire \axi_awaddr_reg[6]_i_2_n_2 ;
  wire \axi_awaddr_reg[6]_i_2_n_3 ;
  wire \axi_awaddr_reg[9]_i_2_n_0 ;
  wire \axi_awaddr_reg[9]_i_2_n_1 ;
  wire \axi_awaddr_reg[9]_i_2_n_2 ;
  wire \axi_awaddr_reg[9]_i_2_n_3 ;
  wire \axi_awlen_cntr[0]_i_1_n_0 ;
  wire \axi_awlen_cntr[7]_i_1_n_0 ;
  wire \axi_awlen_cntr[7]_i_4_n_0 ;
  wire [7:0]axi_awlen_cntr_reg;
  wire axi_awready_i_1_n_0;
  wire axi_awv_awr_flag;
  wire axi_awv_awr_flag_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rlast0;
  wire axi_rlast_i_1_n_0;
  wire axi_rlast_i_3_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire eqOp;
  wire leqOp;
  wire leqOp6_in;
  wire [17:2]minusOp;
  wire [17:3]p_0_in;
  wire [17:2]p_1_in;
  wire p_9_in;
  wire [7:0]plusOp;
  wire [7:1]plusOp__0;
  wire reset_o;
  wire [15:0]sbus_i_addr;
  wire sbus_i_rd;
  wire sbus_i_we;
  wire sbus_o_ack;
  wire [31:0]sbus_o_rdata;
  wire [3:3]\NLW_axi_araddr_reg[17]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_axi_araddr_reg[17]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_axi_araddr_reg[17]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_axi_arlen_cntr_reg[7]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_axi_awaddr_reg[17]_i_4_O_UNCONNECTED ;
  wire [3:3]\NLW_axi_awaddr_reg[17]_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_axi_awaddr_reg[17]_i_7_CO_UNCONNECTED ;
  wire [3:3]\NLW_axi_awaddr_reg[17]_i_7_O_UNCONNECTED ;

  assign S_AXI_BID[11:0] = S_AXI_AWID;
  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RID[11:0] = S_AXI_ARID;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign clk_o = S_AXI_ACLK;
  assign sbus_i_be[3:0] = S_AXI_WSTRB;
  assign sbus_i_wdata[31:0] = S_AXI_WDATA;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[0]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[0]),
        .O(S_AXI_RDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[10]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[10]),
        .O(S_AXI_RDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[11]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[11]),
        .O(S_AXI_RDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[12]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[12]),
        .O(S_AXI_RDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[13]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[13]),
        .O(S_AXI_RDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[14]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[14]),
        .O(S_AXI_RDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[15]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[15]),
        .O(S_AXI_RDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[16]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[16]),
        .O(S_AXI_RDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[17]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[17]),
        .O(S_AXI_RDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[18]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[18]),
        .O(S_AXI_RDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[19]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[19]),
        .O(S_AXI_RDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[1]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[1]),
        .O(S_AXI_RDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[20]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[20]),
        .O(S_AXI_RDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[21]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[21]),
        .O(S_AXI_RDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[22]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[22]),
        .O(S_AXI_RDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[23]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[23]),
        .O(S_AXI_RDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[24]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[24]),
        .O(S_AXI_RDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[25]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[25]),
        .O(S_AXI_RDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[26]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[26]),
        .O(S_AXI_RDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[27]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[27]),
        .O(S_AXI_RDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[28]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[28]),
        .O(S_AXI_RDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[29]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[29]),
        .O(S_AXI_RDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[2]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[2]),
        .O(S_AXI_RDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[30]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[30]),
        .O(S_AXI_RDATA[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[31]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[31]),
        .O(S_AXI_RDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[3]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[3]),
        .O(S_AXI_RDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[4]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[4]),
        .O(S_AXI_RDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[5]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[5]),
        .O(S_AXI_RDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[6]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[6]),
        .O(S_AXI_RDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[7]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[7]),
        .O(S_AXI_RDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[8]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[8]),
        .O(S_AXI_RDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA[9]_INST_0 
       (.I0(S_AXI_RVALID),
        .I1(sbus_o_rdata[9]),
        .O(S_AXI_RDATA[9]));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[10]_i_1 
       (.I0(S_AXI_ARADDR[10]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[13]_i_2_n_7 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[10]_i_2_n_4 ),
        .O(\axi_araddr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[11]_i_1 
       (.I0(S_AXI_ARADDR[11]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[13]_i_2_n_6 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[14]_i_2_n_7 ),
        .O(\axi_araddr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[12]_i_1 
       (.I0(S_AXI_ARADDR[12]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[13]_i_2_n_5 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[14]_i_2_n_6 ),
        .O(\axi_araddr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[13]_i_1 
       (.I0(S_AXI_ARADDR[13]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[13]_i_2_n_4 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[14]_i_2_n_5 ),
        .O(\axi_araddr[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_araddr[13]_i_3 
       (.I0(\axi_araddr_reg_n_0_[9] ),
        .I1(S_AXI_ARLEN[7]),
        .O(\axi_araddr[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_araddr[13]_i_4 
       (.I0(\axi_araddr_reg_n_0_[12] ),
        .I1(\axi_araddr_reg_n_0_[13] ),
        .O(\axi_araddr[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_araddr[13]_i_5 
       (.I0(\axi_araddr_reg_n_0_[11] ),
        .I1(\axi_araddr_reg_n_0_[12] ),
        .O(\axi_araddr[13]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_araddr[13]_i_6 
       (.I0(\axi_araddr_reg_n_0_[10] ),
        .I1(\axi_araddr_reg_n_0_[11] ),
        .O(\axi_araddr[13]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \axi_araddr[13]_i_7 
       (.I0(S_AXI_ARLEN[7]),
        .I1(\axi_araddr_reg_n_0_[9] ),
        .I2(\axi_araddr_reg_n_0_[10] ),
        .O(\axi_araddr[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[14]_i_1 
       (.I0(S_AXI_ARADDR[14]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[17]_i_3_n_7 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[14]_i_2_n_4 ),
        .O(\axi_araddr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[15]_i_1 
       (.I0(S_AXI_ARADDR[15]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[17]_i_3_n_6 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[17]_i_5_n_7 ),
        .O(\axi_araddr[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[16]_i_1 
       (.I0(S_AXI_ARADDR[16]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[17]_i_3_n_5 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[17]_i_5_n_6 ),
        .O(\axi_araddr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF0404040404)) 
    \axi_araddr[17]_i_1 
       (.I0(sbus_i_rd),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(S_AXI_ARBURST[0]),
        .I4(S_AXI_ARBURST[1]),
        .I5(axi_araddr1),
        .O(\axi_araddr[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \axi_araddr[17]_i_10 
       (.I0(\axi_araddr_reg_n_0_[8] ),
        .I1(S_AXI_ARLEN[6]),
        .I2(S_AXI_ARLEN[5]),
        .I3(\axi_araddr_reg_n_0_[7] ),
        .I4(S_AXI_ARLEN[4]),
        .I5(\axi_araddr_reg_n_0_[6] ),
        .O(\axi_araddr[17]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hDD0D0000DD0DDD0D)) 
    \axi_araddr[17]_i_11 
       (.I0(S_AXI_ARLEN[2]),
        .I1(\axi_araddr_reg_n_0_[4] ),
        .I2(S_AXI_ARLEN[1]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .I4(\axi_araddr_reg_n_0_[5] ),
        .I5(S_AXI_ARLEN[3]),
        .O(\axi_araddr[17]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[17]_i_2 
       (.I0(S_AXI_ARADDR[17]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[17]_i_3_n_4 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[17]_i_5_n_5 ),
        .O(\axi_araddr[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5100510000005100)) 
    \axi_araddr[17]_i_4 
       (.I0(\axi_araddr[17]_i_10_n_0 ),
        .I1(S_AXI_ARLEN[7]),
        .I2(\axi_araddr_reg_n_0_[9] ),
        .I3(\axi_araddr[17]_i_11_n_0 ),
        .I4(S_AXI_ARLEN[0]),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(\axi_araddr[17]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_araddr[17]_i_6 
       (.I0(\axi_araddr_reg_n_0_[16] ),
        .I1(\axi_araddr_reg_n_0_[17] ),
        .O(\axi_araddr[17]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_araddr[17]_i_7 
       (.I0(\axi_araddr_reg_n_0_[15] ),
        .I1(\axi_araddr_reg_n_0_[16] ),
        .O(\axi_araddr[17]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_araddr[17]_i_8 
       (.I0(\axi_araddr_reg_n_0_[14] ),
        .I1(\axi_araddr_reg_n_0_[15] ),
        .O(\axi_araddr[17]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_araddr[17]_i_9 
       (.I0(\axi_araddr_reg_n_0_[13] ),
        .I1(\axi_araddr_reg_n_0_[14] ),
        .O(\axi_araddr[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8B888888BBB8BBBB)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR[2]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[5]_i_2_n_7 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[3]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[5]_i_2_n_6 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[6]_i_2_n_7 ),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[4]_i_1 
       (.I0(S_AXI_ARADDR[4]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[5]_i_2_n_5 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[6]_i_2_n_6 ),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[5]_i_1 
       (.I0(S_AXI_ARADDR[5]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[5]_i_2_n_4 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[6]_i_2_n_5 ),
        .O(\axi_araddr[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_araddr[5]_i_3 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(S_AXI_ARLEN[2]),
        .O(\axi_araddr[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_araddr[5]_i_4 
       (.I0(\axi_araddr_reg_n_0_[3] ),
        .I1(S_AXI_ARLEN[1]),
        .O(\axi_araddr[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \axi_araddr[5]_i_5 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(S_AXI_ARLEN[0]),
        .O(\axi_araddr[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \axi_araddr[5]_i_6 
       (.I0(S_AXI_ARLEN[2]),
        .I1(\axi_araddr_reg_n_0_[4] ),
        .I2(S_AXI_ARLEN[3]),
        .I3(\axi_araddr_reg_n_0_[5] ),
        .O(\axi_araddr[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \axi_araddr[5]_i_7 
       (.I0(S_AXI_ARLEN[1]),
        .I1(\axi_araddr_reg_n_0_[3] ),
        .I2(S_AXI_ARLEN[2]),
        .I3(\axi_araddr_reg_n_0_[4] ),
        .O(\axi_araddr[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \axi_araddr[5]_i_8 
       (.I0(S_AXI_ARLEN[0]),
        .I1(\axi_araddr_reg_n_0_[2] ),
        .I2(S_AXI_ARLEN[1]),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .O(\axi_araddr[5]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_araddr[5]_i_9 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(S_AXI_ARLEN[0]),
        .O(\axi_araddr[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[6]_i_1 
       (.I0(S_AXI_ARADDR[6]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[9]_i_2_n_7 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[6]_i_2_n_4 ),
        .O(\axi_araddr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[7]_i_1 
       (.I0(S_AXI_ARADDR[7]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[9]_i_2_n_6 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[10]_i_2_n_7 ),
        .O(\axi_araddr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[8]_i_1 
       (.I0(S_AXI_ARADDR[8]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[9]_i_2_n_5 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[10]_i_2_n_6 ),
        .O(\axi_araddr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_araddr[9]_i_1 
       (.I0(S_AXI_ARADDR[9]),
        .I1(axi_rlast_i_3_n_0),
        .I2(S_AXI_ARBURST[0]),
        .I3(\axi_araddr_reg[9]_i_2_n_4 ),
        .I4(\axi_araddr[17]_i_4_n_0 ),
        .I5(\axi_araddr_reg[10]_i_2_n_5 ),
        .O(\axi_araddr[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \axi_araddr[9]_i_10 
       (.I0(S_AXI_ARLEN[3]),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(S_AXI_ARLEN[4]),
        .I3(\axi_araddr_reg_n_0_[6] ),
        .O(\axi_araddr[9]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_araddr[9]_i_3 
       (.I0(\axi_araddr_reg_n_0_[8] ),
        .I1(S_AXI_ARLEN[6]),
        .O(\axi_araddr[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_araddr[9]_i_4 
       (.I0(\axi_araddr_reg_n_0_[7] ),
        .I1(S_AXI_ARLEN[5]),
        .O(\axi_araddr[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_araddr[9]_i_5 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(S_AXI_ARLEN[4]),
        .O(\axi_araddr[9]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_araddr[9]_i_6 
       (.I0(\axi_araddr_reg_n_0_[5] ),
        .I1(S_AXI_ARLEN[3]),
        .O(\axi_araddr[9]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \axi_araddr[9]_i_7 
       (.I0(S_AXI_ARLEN[6]),
        .I1(\axi_araddr_reg_n_0_[8] ),
        .I2(S_AXI_ARLEN[7]),
        .I3(\axi_araddr_reg_n_0_[9] ),
        .O(\axi_araddr[9]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \axi_araddr[9]_i_8 
       (.I0(S_AXI_ARLEN[5]),
        .I1(\axi_araddr_reg_n_0_[7] ),
        .I2(S_AXI_ARLEN[6]),
        .I3(\axi_araddr_reg_n_0_[8] ),
        .O(\axi_araddr[9]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \axi_araddr[9]_i_9 
       (.I0(S_AXI_ARLEN[4]),
        .I1(\axi_araddr_reg_n_0_[6] ),
        .I2(S_AXI_ARLEN[5]),
        .I3(\axi_araddr_reg_n_0_[7] ),
        .O(\axi_araddr[9]_i_9_n_0 ));
  FDRE \axi_araddr_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[10]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[10] ),
        .R(reset_o));
  CARRY4 \axi_araddr_reg[10]_i_2 
       (.CI(\axi_araddr_reg[6]_i_2_n_0 ),
        .CO({\axi_araddr_reg[10]_i_2_n_0 ,\axi_araddr_reg[10]_i_2_n_1 ,\axi_araddr_reg[10]_i_2_n_2 ,\axi_araddr_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[10]_i_2_n_4 ,\axi_araddr_reg[10]_i_2_n_5 ,\axi_araddr_reg[10]_i_2_n_6 ,\axi_araddr_reg[10]_i_2_n_7 }),
        .S({\axi_araddr_reg_n_0_[10] ,\axi_araddr_reg_n_0_[9] ,\axi_araddr_reg_n_0_[8] ,\axi_araddr_reg_n_0_[7] }));
  FDRE \axi_araddr_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[11]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[11] ),
        .R(reset_o));
  FDRE \axi_araddr_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[12]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[12] ),
        .R(reset_o));
  FDRE \axi_araddr_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[13]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[13] ),
        .R(reset_o));
  CARRY4 \axi_araddr_reg[13]_i_2 
       (.CI(\axi_araddr_reg[9]_i_2_n_0 ),
        .CO({\axi_araddr_reg[13]_i_2_n_0 ,\axi_araddr_reg[13]_i_2_n_1 ,\axi_araddr_reg[13]_i_2_n_2 ,\axi_araddr_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\axi_araddr_reg_n_0_[12] ,\axi_araddr_reg_n_0_[11] ,\axi_araddr_reg_n_0_[10] ,\axi_araddr[13]_i_3_n_0 }),
        .O({\axi_araddr_reg[13]_i_2_n_4 ,\axi_araddr_reg[13]_i_2_n_5 ,\axi_araddr_reg[13]_i_2_n_6 ,\axi_araddr_reg[13]_i_2_n_7 }),
        .S({\axi_araddr[13]_i_4_n_0 ,\axi_araddr[13]_i_5_n_0 ,\axi_araddr[13]_i_6_n_0 ,\axi_araddr[13]_i_7_n_0 }));
  FDRE \axi_araddr_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[14]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[14] ),
        .R(reset_o));
  CARRY4 \axi_araddr_reg[14]_i_2 
       (.CI(\axi_araddr_reg[10]_i_2_n_0 ),
        .CO({\axi_araddr_reg[14]_i_2_n_0 ,\axi_araddr_reg[14]_i_2_n_1 ,\axi_araddr_reg[14]_i_2_n_2 ,\axi_araddr_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[14]_i_2_n_4 ,\axi_araddr_reg[14]_i_2_n_5 ,\axi_araddr_reg[14]_i_2_n_6 ,\axi_araddr_reg[14]_i_2_n_7 }),
        .S({\axi_araddr_reg_n_0_[14] ,\axi_araddr_reg_n_0_[13] ,\axi_araddr_reg_n_0_[12] ,\axi_araddr_reg_n_0_[11] }));
  FDRE \axi_araddr_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[15]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[15] ),
        .R(reset_o));
  FDRE \axi_araddr_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[16]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[16] ),
        .R(reset_o));
  FDRE \axi_araddr_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[17]_i_2_n_0 ),
        .Q(\axi_araddr_reg_n_0_[17] ),
        .R(reset_o));
  CARRY4 \axi_araddr_reg[17]_i_3 
       (.CI(\axi_araddr_reg[13]_i_2_n_0 ),
        .CO({\NLW_axi_araddr_reg[17]_i_3_CO_UNCONNECTED [3],\axi_araddr_reg[17]_i_3_n_1 ,\axi_araddr_reg[17]_i_3_n_2 ,\axi_araddr_reg[17]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\axi_araddr_reg_n_0_[15] ,\axi_araddr_reg_n_0_[14] ,\axi_araddr_reg_n_0_[13] }),
        .O({\axi_araddr_reg[17]_i_3_n_4 ,\axi_araddr_reg[17]_i_3_n_5 ,\axi_araddr_reg[17]_i_3_n_6 ,\axi_araddr_reg[17]_i_3_n_7 }),
        .S({\axi_araddr[17]_i_6_n_0 ,\axi_araddr[17]_i_7_n_0 ,\axi_araddr[17]_i_8_n_0 ,\axi_araddr[17]_i_9_n_0 }));
  CARRY4 \axi_araddr_reg[17]_i_5 
       (.CI(\axi_araddr_reg[14]_i_2_n_0 ),
        .CO({\NLW_axi_araddr_reg[17]_i_5_CO_UNCONNECTED [3:2],\axi_araddr_reg[17]_i_5_n_2 ,\axi_araddr_reg[17]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_araddr_reg[17]_i_5_O_UNCONNECTED [3],\axi_araddr_reg[17]_i_5_n_5 ,\axi_araddr_reg[17]_i_5_n_6 ,\axi_araddr_reg[17]_i_5_n_7 }),
        .S({1'b0,\axi_araddr_reg_n_0_[17] ,\axi_araddr_reg_n_0_[16] ,\axi_araddr_reg_n_0_[15] }));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[2] ),
        .R(reset_o));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[3] ),
        .R(reset_o));
  FDRE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[4] ),
        .R(reset_o));
  FDRE \axi_araddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[5]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[5] ),
        .R(reset_o));
  CARRY4 \axi_araddr_reg[5]_i_2 
       (.CI(1'b0),
        .CO({\axi_araddr_reg[5]_i_2_n_0 ,\axi_araddr_reg[5]_i_2_n_1 ,\axi_araddr_reg[5]_i_2_n_2 ,\axi_araddr_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\axi_araddr[5]_i_3_n_0 ,\axi_araddr[5]_i_4_n_0 ,\axi_araddr[5]_i_5_n_0 ,1'b0}),
        .O({\axi_araddr_reg[5]_i_2_n_4 ,\axi_araddr_reg[5]_i_2_n_5 ,\axi_araddr_reg[5]_i_2_n_6 ,\axi_araddr_reg[5]_i_2_n_7 }),
        .S({\axi_araddr[5]_i_6_n_0 ,\axi_araddr[5]_i_7_n_0 ,\axi_araddr[5]_i_8_n_0 ,\axi_araddr[5]_i_9_n_0 }));
  FDRE \axi_araddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[6]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[6] ),
        .R(reset_o));
  CARRY4 \axi_araddr_reg[6]_i_2 
       (.CI(1'b0),
        .CO({\axi_araddr_reg[6]_i_2_n_0 ,\axi_araddr_reg[6]_i_2_n_1 ,\axi_araddr_reg[6]_i_2_n_2 ,\axi_araddr_reg[6]_i_2_n_3 }),
        .CYINIT(\axi_araddr_reg_n_0_[2] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_araddr_reg[6]_i_2_n_4 ,\axi_araddr_reg[6]_i_2_n_5 ,\axi_araddr_reg[6]_i_2_n_6 ,\axi_araddr_reg[6]_i_2_n_7 }),
        .S({\axi_araddr_reg_n_0_[6] ,\axi_araddr_reg_n_0_[5] ,\axi_araddr_reg_n_0_[4] ,\axi_araddr_reg_n_0_[3] }));
  FDRE \axi_araddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[7]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[7] ),
        .R(reset_o));
  FDRE \axi_araddr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[8]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[8] ),
        .R(reset_o));
  FDRE \axi_araddr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[17]_i_1_n_0 ),
        .D(\axi_araddr[9]_i_1_n_0 ),
        .Q(\axi_araddr_reg_n_0_[9] ),
        .R(reset_o));
  CARRY4 \axi_araddr_reg[9]_i_2 
       (.CI(\axi_araddr_reg[5]_i_2_n_0 ),
        .CO({\axi_araddr_reg[9]_i_2_n_0 ,\axi_araddr_reg[9]_i_2_n_1 ,\axi_araddr_reg[9]_i_2_n_2 ,\axi_araddr_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\axi_araddr[9]_i_3_n_0 ,\axi_araddr[9]_i_4_n_0 ,\axi_araddr[9]_i_5_n_0 ,\axi_araddr[9]_i_6_n_0 }),
        .O({\axi_araddr_reg[9]_i_2_n_4 ,\axi_araddr_reg[9]_i_2_n_5 ,\axi_araddr_reg[9]_i_2_n_6 ,\axi_araddr_reg[9]_i_2_n_7 }),
        .S({\axi_araddr[9]_i_7_n_0 ,\axi_araddr[9]_i_8_n_0 ,\axi_araddr[9]_i_9_n_0 ,\axi_araddr[9]_i_10_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_arlen_cntr[0]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[1]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .I1(axi_arlen_cntr_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_arlen_cntr[2]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_arlen_cntr[3]_i_1 
       (.I0(axi_arlen_cntr_reg[1]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[2]),
        .I3(axi_arlen_cntr_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_arlen_cntr[4]_i_1 
       (.I0(axi_arlen_cntr_reg[2]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[3]),
        .I4(axi_arlen_cntr_reg[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_arlen_cntr[5]_i_1 
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(axi_arlen_cntr_reg[2]),
        .I4(axi_arlen_cntr_reg[4]),
        .I5(axi_arlen_cntr_reg[5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[6]_i_1 
       (.I0(\axi_arlen_cntr[7]_i_5_n_0 ),
        .I1(axi_arlen_cntr_reg[6]),
        .O(plusOp[6]));
  LUT4 #(
    .INIT(16'h04FF)) 
    \axi_arlen_cntr[7]_i_1 
       (.I0(sbus_i_rd),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(S_AXI_ARESETN),
        .O(\axi_arlen_cntr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \axi_arlen_cntr[7]_i_10 
       (.I0(S_AXI_ARLEN[6]),
        .I1(axi_arlen_cntr_reg[6]),
        .I2(S_AXI_ARLEN[7]),
        .I3(axi_arlen_cntr_reg[7]),
        .O(\axi_arlen_cntr[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \axi_arlen_cntr[7]_i_11 
       (.I0(S_AXI_ARLEN[4]),
        .I1(axi_arlen_cntr_reg[4]),
        .I2(S_AXI_ARLEN[5]),
        .I3(axi_arlen_cntr_reg[5]),
        .O(\axi_arlen_cntr[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \axi_arlen_cntr[7]_i_12 
       (.I0(S_AXI_ARLEN[2]),
        .I1(axi_arlen_cntr_reg[2]),
        .I2(S_AXI_ARLEN[3]),
        .I3(axi_arlen_cntr_reg[3]),
        .O(\axi_arlen_cntr[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \axi_arlen_cntr[7]_i_13 
       (.I0(S_AXI_ARLEN[0]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(S_AXI_ARLEN[1]),
        .I3(axi_arlen_cntr_reg[1]),
        .O(\axi_arlen_cntr[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_arlen_cntr[7]_i_2 
       (.I0(S_AXI_RREADY),
        .I1(S_AXI_RVALID),
        .I2(leqOp),
        .I3(sbus_o_ack),
        .O(axi_araddr1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_arlen_cntr[7]_i_3 
       (.I0(\axi_arlen_cntr[7]_i_5_n_0 ),
        .I1(axi_arlen_cntr_reg[6]),
        .I2(axi_arlen_cntr_reg[7]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_arlen_cntr[7]_i_5 
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[0]),
        .I4(axi_arlen_cntr_reg[2]),
        .I5(axi_arlen_cntr_reg[4]),
        .O(\axi_arlen_cntr[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \axi_arlen_cntr[7]_i_6 
       (.I0(S_AXI_ARLEN[6]),
        .I1(axi_arlen_cntr_reg[6]),
        .I2(axi_arlen_cntr_reg[7]),
        .I3(S_AXI_ARLEN[7]),
        .O(\axi_arlen_cntr[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \axi_arlen_cntr[7]_i_7 
       (.I0(S_AXI_ARLEN[4]),
        .I1(axi_arlen_cntr_reg[4]),
        .I2(axi_arlen_cntr_reg[5]),
        .I3(S_AXI_ARLEN[5]),
        .O(\axi_arlen_cntr[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \axi_arlen_cntr[7]_i_8 
       (.I0(S_AXI_ARLEN[2]),
        .I1(axi_arlen_cntr_reg[2]),
        .I2(axi_arlen_cntr_reg[3]),
        .I3(S_AXI_ARLEN[3]),
        .O(\axi_arlen_cntr[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \axi_arlen_cntr[7]_i_9 
       (.I0(S_AXI_ARLEN[0]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(S_AXI_ARLEN[1]),
        .O(\axi_arlen_cntr[7]_i_9_n_0 ));
  FDRE \axi_arlen_cntr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(plusOp[0]),
        .Q(axi_arlen_cntr_reg[0]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(plusOp[1]),
        .Q(axi_arlen_cntr_reg[1]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(plusOp[2]),
        .Q(axi_arlen_cntr_reg[2]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(plusOp[3]),
        .Q(axi_arlen_cntr_reg[3]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(plusOp[4]),
        .Q(axi_arlen_cntr_reg[4]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(plusOp[5]),
        .Q(axi_arlen_cntr_reg[5]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(plusOp[6]),
        .Q(axi_arlen_cntr_reg[6]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_arlen_cntr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_araddr1),
        .D(plusOp[7]),
        .Q(axi_arlen_cntr_reg[7]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  CARRY4 \axi_arlen_cntr_reg[7]_i_4 
       (.CI(1'b0),
        .CO({leqOp,\axi_arlen_cntr_reg[7]_i_4_n_1 ,\axi_arlen_cntr_reg[7]_i_4_n_2 ,\axi_arlen_cntr_reg[7]_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI({\axi_arlen_cntr[7]_i_6_n_0 ,\axi_arlen_cntr[7]_i_7_n_0 ,\axi_arlen_cntr[7]_i_8_n_0 ,\axi_arlen_cntr[7]_i_9_n_0 }),
        .O(\NLW_axi_arlen_cntr_reg[7]_i_4_O_UNCONNECTED [3:0]),
        .S({\axi_arlen_cntr[7]_i_10_n_0 ,\axi_arlen_cntr[7]_i_11_n_0 ,\axi_arlen_cntr[7]_i_12_n_0 ,\axi_arlen_cntr[7]_i_13_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF100010)) 
    axi_arready_i_1
       (.I0(sbus_i_rd),
        .I1(axi_awv_awr_flag),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARREADY),
        .I4(axi_arready1),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY),
        .R(reset_o));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0010AABA)) 
    axi_arv_arr_flag_i_1
       (.I0(sbus_i_rd),
        .I1(axi_awv_awr_flag),
        .I2(S_AXI_ARVALID),
        .I3(S_AXI_ARREADY),
        .I4(axi_arready1),
        .O(axi_arv_arr_flag_i_1_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    axi_arv_arr_flag_i_2
       (.I0(axi_arv_arr_flag_i_3_n_0),
        .I1(axi_arv_arr_flag_i_4_n_0),
        .I2(axi_arv_arr_flag_i_5_n_0),
        .I3(sbus_o_ack),
        .I4(S_AXI_RREADY),
        .I5(S_AXI_RVALID),
        .O(axi_arready1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axi_arv_arr_flag_i_3
       (.I0(axi_arlen_cntr_reg[0]),
        .I1(S_AXI_ARLEN[0]),
        .I2(S_AXI_ARLEN[2]),
        .I3(axi_arlen_cntr_reg[2]),
        .I4(S_AXI_ARLEN[1]),
        .I5(axi_arlen_cntr_reg[1]),
        .O(axi_arv_arr_flag_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axi_arv_arr_flag_i_4
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(S_AXI_ARLEN[3]),
        .I2(S_AXI_ARLEN[5]),
        .I3(axi_arlen_cntr_reg[5]),
        .I4(S_AXI_ARLEN[4]),
        .I5(axi_arlen_cntr_reg[4]),
        .O(axi_arv_arr_flag_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    axi_arv_arr_flag_i_5
       (.I0(axi_arlen_cntr_reg[6]),
        .I1(S_AXI_ARLEN[6]),
        .I2(axi_arlen_cntr_reg[7]),
        .I3(S_AXI_ARLEN[7]),
        .O(axi_arv_arr_flag_i_5_n_0));
  FDRE axi_arv_arr_flag_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arv_arr_flag_i_1_n_0),
        .Q(sbus_i_rd),
        .R(reset_o));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[10]_i_1 
       (.I0(S_AXI_AWADDR[10]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[10]),
        .I4(eqOp),
        .I5(p_0_in[10]),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[11]_i_1 
       (.I0(S_AXI_AWADDR[11]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[11]),
        .I4(eqOp),
        .I5(p_0_in[11]),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[12]_i_1 
       (.I0(S_AXI_AWADDR[12]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[12]),
        .I4(eqOp),
        .I5(p_0_in[12]),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[13]_i_1 
       (.I0(S_AXI_AWADDR[13]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[13]),
        .I4(eqOp),
        .I5(p_0_in[13]),
        .O(p_1_in[13]));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[13]_i_3 
       (.I0(L[9]),
        .I1(S_AXI_AWLEN[7]),
        .O(\axi_awaddr[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_awaddr[13]_i_4 
       (.I0(L[12]),
        .I1(L[13]),
        .O(\axi_awaddr[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_awaddr[13]_i_5 
       (.I0(L[11]),
        .I1(L[12]),
        .O(\axi_awaddr[13]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_awaddr[13]_i_6 
       (.I0(L[10]),
        .I1(L[11]),
        .O(\axi_awaddr[13]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h4B)) 
    \axi_awaddr[13]_i_7 
       (.I0(S_AXI_AWLEN[7]),
        .I1(L[9]),
        .I2(L[10]),
        .O(\axi_awaddr[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[14]_i_1 
       (.I0(S_AXI_AWADDR[14]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[14]),
        .I4(eqOp),
        .I5(p_0_in[14]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[15]_i_1 
       (.I0(S_AXI_AWADDR[15]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[15]),
        .I4(eqOp),
        .I5(p_0_in[15]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[16]_i_1 
       (.I0(S_AXI_AWADDR[16]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[16]),
        .I4(eqOp),
        .I5(p_0_in[16]),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'hFEAAAAAAAAAAAAAA)) 
    \axi_awaddr[17]_i_1 
       (.I0(p_9_in),
        .I1(S_AXI_AWBURST[0]),
        .I2(S_AXI_AWBURST[1]),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_WREADY),
        .I5(leqOp6_in),
        .O(\axi_awaddr[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \axi_awaddr[17]_i_10 
       (.I0(S_AXI_AWLEN[2]),
        .I1(axi_awlen_cntr_reg[2]),
        .I2(axi_awlen_cntr_reg[3]),
        .I3(S_AXI_AWLEN[3]),
        .O(\axi_awaddr[17]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \axi_awaddr[17]_i_11 
       (.I0(S_AXI_AWLEN[0]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(S_AXI_AWLEN[1]),
        .O(\axi_awaddr[17]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \axi_awaddr[17]_i_12 
       (.I0(S_AXI_AWLEN[6]),
        .I1(axi_awlen_cntr_reg[6]),
        .I2(S_AXI_AWLEN[7]),
        .I3(axi_awlen_cntr_reg[7]),
        .O(\axi_awaddr[17]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \axi_awaddr[17]_i_13 
       (.I0(S_AXI_AWLEN[4]),
        .I1(axi_awlen_cntr_reg[4]),
        .I2(S_AXI_AWLEN[5]),
        .I3(axi_awlen_cntr_reg[5]),
        .O(\axi_awaddr[17]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \axi_awaddr[17]_i_14 
       (.I0(S_AXI_AWLEN[2]),
        .I1(axi_awlen_cntr_reg[2]),
        .I2(S_AXI_AWLEN[3]),
        .I3(axi_awlen_cntr_reg[3]),
        .O(\axi_awaddr[17]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \axi_awaddr[17]_i_15 
       (.I0(S_AXI_AWLEN[0]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(S_AXI_AWLEN[1]),
        .I3(axi_awlen_cntr_reg[1]),
        .O(\axi_awaddr[17]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_awaddr[17]_i_16 
       (.I0(L[16]),
        .I1(L[17]),
        .O(\axi_awaddr[17]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_awaddr[17]_i_17 
       (.I0(L[15]),
        .I1(L[16]),
        .O(\axi_awaddr[17]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_awaddr[17]_i_18 
       (.I0(L[14]),
        .I1(L[15]),
        .O(\axi_awaddr[17]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_awaddr[17]_i_19 
       (.I0(L[13]),
        .I1(L[14]),
        .O(\axi_awaddr[17]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[17]_i_2 
       (.I0(S_AXI_AWADDR[17]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[17]),
        .I4(eqOp),
        .I5(p_0_in[17]),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \axi_awaddr[17]_i_20 
       (.I0(L[8]),
        .I1(S_AXI_AWLEN[6]),
        .I2(S_AXI_AWLEN[5]),
        .I3(L[7]),
        .I4(S_AXI_AWLEN[4]),
        .I5(L[6]),
        .O(\axi_awaddr[17]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hDD0D0000DD0DDD0D)) 
    \axi_awaddr[17]_i_21 
       (.I0(S_AXI_AWLEN[2]),
        .I1(L[4]),
        .I2(S_AXI_AWLEN[1]),
        .I3(L[3]),
        .I4(L[5]),
        .I5(S_AXI_AWLEN[3]),
        .O(\axi_awaddr[17]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \axi_awaddr[17]_i_3 
       (.I0(S_AXI_AWVALID),
        .I1(axi_awv_awr_flag),
        .I2(S_AXI_AWREADY),
        .O(p_9_in));
  LUT6 #(
    .INIT(64'h5100510000005100)) 
    \axi_awaddr[17]_i_6 
       (.I0(\axi_awaddr[17]_i_20_n_0 ),
        .I1(S_AXI_AWLEN[7]),
        .I2(L[9]),
        .I3(\axi_awaddr[17]_i_21_n_0 ),
        .I4(S_AXI_AWLEN[0]),
        .I5(L[2]),
        .O(eqOp));
  LUT4 #(
    .INIT(16'h2F02)) 
    \axi_awaddr[17]_i_8 
       (.I0(S_AXI_AWLEN[6]),
        .I1(axi_awlen_cntr_reg[6]),
        .I2(axi_awlen_cntr_reg[7]),
        .I3(S_AXI_AWLEN[7]),
        .O(\axi_awaddr[17]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \axi_awaddr[17]_i_9 
       (.I0(S_AXI_AWLEN[4]),
        .I1(axi_awlen_cntr_reg[4]),
        .I2(axi_awlen_cntr_reg[5]),
        .I3(S_AXI_AWLEN[5]),
        .O(\axi_awaddr[17]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8B888888BBB8BBBB)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_AWADDR[2]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[2]),
        .I4(eqOp),
        .I5(L[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[3]_i_1 
       (.I0(S_AXI_AWADDR[3]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[3]),
        .I4(eqOp),
        .I5(p_0_in[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[4]_i_1 
       (.I0(S_AXI_AWADDR[4]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[4]),
        .I4(eqOp),
        .I5(p_0_in[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[5]_i_1 
       (.I0(S_AXI_AWADDR[5]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[5]),
        .I4(eqOp),
        .I5(p_0_in[5]),
        .O(p_1_in[5]));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[5]_i_3 
       (.I0(L[4]),
        .I1(S_AXI_AWLEN[2]),
        .O(\axi_awaddr[5]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[5]_i_4 
       (.I0(L[3]),
        .I1(S_AXI_AWLEN[1]),
        .O(\axi_awaddr[5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \axi_awaddr[5]_i_5 
       (.I0(L[2]),
        .I1(S_AXI_AWLEN[0]),
        .O(\axi_awaddr[5]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \axi_awaddr[5]_i_6 
       (.I0(S_AXI_AWLEN[2]),
        .I1(L[4]),
        .I2(S_AXI_AWLEN[3]),
        .I3(L[5]),
        .O(\axi_awaddr[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \axi_awaddr[5]_i_7 
       (.I0(S_AXI_AWLEN[1]),
        .I1(L[3]),
        .I2(S_AXI_AWLEN[2]),
        .I3(L[4]),
        .O(\axi_awaddr[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \axi_awaddr[5]_i_8 
       (.I0(S_AXI_AWLEN[0]),
        .I1(L[2]),
        .I2(S_AXI_AWLEN[1]),
        .I3(L[3]),
        .O(\axi_awaddr[5]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awaddr[5]_i_9 
       (.I0(L[2]),
        .I1(S_AXI_AWLEN[0]),
        .O(\axi_awaddr[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[6]_i_1 
       (.I0(S_AXI_AWADDR[6]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[6]),
        .I4(eqOp),
        .I5(p_0_in[6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[7]_i_1 
       (.I0(S_AXI_AWADDR[7]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[7]),
        .I4(eqOp),
        .I5(p_0_in[7]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[8]_i_1 
       (.I0(S_AXI_AWADDR[8]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[8]),
        .I4(eqOp),
        .I5(p_0_in[8]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hBBB8BBBB8B888888)) 
    \axi_awaddr[9]_i_1 
       (.I0(S_AXI_AWADDR[9]),
        .I1(p_9_in),
        .I2(S_AXI_AWBURST[0]),
        .I3(minusOp[9]),
        .I4(eqOp),
        .I5(p_0_in[9]),
        .O(p_1_in[9]));
  LUT4 #(
    .INIT(16'hB44B)) 
    \axi_awaddr[9]_i_10 
       (.I0(S_AXI_AWLEN[3]),
        .I1(L[5]),
        .I2(S_AXI_AWLEN[4]),
        .I3(L[6]),
        .O(\axi_awaddr[9]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[9]_i_3 
       (.I0(L[8]),
        .I1(S_AXI_AWLEN[6]),
        .O(\axi_awaddr[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[9]_i_4 
       (.I0(L[7]),
        .I1(S_AXI_AWLEN[5]),
        .O(\axi_awaddr[9]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[9]_i_5 
       (.I0(L[6]),
        .I1(S_AXI_AWLEN[4]),
        .O(\axi_awaddr[9]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_awaddr[9]_i_6 
       (.I0(L[5]),
        .I1(S_AXI_AWLEN[3]),
        .O(\axi_awaddr[9]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \axi_awaddr[9]_i_7 
       (.I0(S_AXI_AWLEN[6]),
        .I1(L[8]),
        .I2(S_AXI_AWLEN[7]),
        .I3(L[9]),
        .O(\axi_awaddr[9]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \axi_awaddr[9]_i_8 
       (.I0(S_AXI_AWLEN[5]),
        .I1(L[7]),
        .I2(S_AXI_AWLEN[6]),
        .I3(L[8]),
        .O(\axi_awaddr[9]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \axi_awaddr[9]_i_9 
       (.I0(S_AXI_AWLEN[4]),
        .I1(L[6]),
        .I2(S_AXI_AWLEN[5]),
        .I3(L[7]),
        .O(\axi_awaddr[9]_i_9_n_0 ));
  FDRE \axi_awaddr_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(L[10]),
        .R(reset_o));
  CARRY4 \axi_awaddr_reg[10]_i_2 
       (.CI(\axi_awaddr_reg[6]_i_2_n_0 ),
        .CO({\axi_awaddr_reg[10]_i_2_n_0 ,\axi_awaddr_reg[10]_i_2_n_1 ,\axi_awaddr_reg[10]_i_2_n_2 ,\axi_awaddr_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[10:7]),
        .S(L[10:7]));
  FDRE \axi_awaddr_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(L[11]),
        .R(reset_o));
  FDRE \axi_awaddr_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(L[12]),
        .R(reset_o));
  FDRE \axi_awaddr_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(L[13]),
        .R(reset_o));
  CARRY4 \axi_awaddr_reg[13]_i_2 
       (.CI(\axi_awaddr_reg[9]_i_2_n_0 ),
        .CO({\axi_awaddr_reg[13]_i_2_n_0 ,\axi_awaddr_reg[13]_i_2_n_1 ,\axi_awaddr_reg[13]_i_2_n_2 ,\axi_awaddr_reg[13]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({L[12:10],\axi_awaddr[13]_i_3_n_0 }),
        .O(minusOp[13:10]),
        .S({\axi_awaddr[13]_i_4_n_0 ,\axi_awaddr[13]_i_5_n_0 ,\axi_awaddr[13]_i_6_n_0 ,\axi_awaddr[13]_i_7_n_0 }));
  FDRE \axi_awaddr_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(L[14]),
        .R(reset_o));
  CARRY4 \axi_awaddr_reg[14]_i_2 
       (.CI(\axi_awaddr_reg[10]_i_2_n_0 ),
        .CO({\axi_awaddr_reg[14]_i_2_n_0 ,\axi_awaddr_reg[14]_i_2_n_1 ,\axi_awaddr_reg[14]_i_2_n_2 ,\axi_awaddr_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[14:11]),
        .S(L[14:11]));
  FDRE \axi_awaddr_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(L[15]),
        .R(reset_o));
  FDRE \axi_awaddr_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(L[16]),
        .R(reset_o));
  FDRE \axi_awaddr_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(L[17]),
        .R(reset_o));
  CARRY4 \axi_awaddr_reg[17]_i_4 
       (.CI(1'b0),
        .CO({leqOp6_in,\axi_awaddr_reg[17]_i_4_n_1 ,\axi_awaddr_reg[17]_i_4_n_2 ,\axi_awaddr_reg[17]_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI({\axi_awaddr[17]_i_8_n_0 ,\axi_awaddr[17]_i_9_n_0 ,\axi_awaddr[17]_i_10_n_0 ,\axi_awaddr[17]_i_11_n_0 }),
        .O(\NLW_axi_awaddr_reg[17]_i_4_O_UNCONNECTED [3:0]),
        .S({\axi_awaddr[17]_i_12_n_0 ,\axi_awaddr[17]_i_13_n_0 ,\axi_awaddr[17]_i_14_n_0 ,\axi_awaddr[17]_i_15_n_0 }));
  CARRY4 \axi_awaddr_reg[17]_i_5 
       (.CI(\axi_awaddr_reg[13]_i_2_n_0 ),
        .CO({\NLW_axi_awaddr_reg[17]_i_5_CO_UNCONNECTED [3],\axi_awaddr_reg[17]_i_5_n_1 ,\axi_awaddr_reg[17]_i_5_n_2 ,\axi_awaddr_reg[17]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,L[15:13]}),
        .O(minusOp[17:14]),
        .S({\axi_awaddr[17]_i_16_n_0 ,\axi_awaddr[17]_i_17_n_0 ,\axi_awaddr[17]_i_18_n_0 ,\axi_awaddr[17]_i_19_n_0 }));
  CARRY4 \axi_awaddr_reg[17]_i_7 
       (.CI(\axi_awaddr_reg[14]_i_2_n_0 ),
        .CO({\NLW_axi_awaddr_reg[17]_i_7_CO_UNCONNECTED [3:2],\axi_awaddr_reg[17]_i_7_n_2 ,\axi_awaddr_reg[17]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_awaddr_reg[17]_i_7_O_UNCONNECTED [3],p_0_in[17:15]}),
        .S({1'b0,L[17:15]}));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(L[2]),
        .R(reset_o));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(L[3]),
        .R(reset_o));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(L[4]),
        .R(reset_o));
  FDRE \axi_awaddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(L[5]),
        .R(reset_o));
  CARRY4 \axi_awaddr_reg[5]_i_2 
       (.CI(1'b0),
        .CO({\axi_awaddr_reg[5]_i_2_n_0 ,\axi_awaddr_reg[5]_i_2_n_1 ,\axi_awaddr_reg[5]_i_2_n_2 ,\axi_awaddr_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\axi_awaddr[5]_i_3_n_0 ,\axi_awaddr[5]_i_4_n_0 ,\axi_awaddr[5]_i_5_n_0 ,1'b0}),
        .O(minusOp[5:2]),
        .S({\axi_awaddr[5]_i_6_n_0 ,\axi_awaddr[5]_i_7_n_0 ,\axi_awaddr[5]_i_8_n_0 ,\axi_awaddr[5]_i_9_n_0 }));
  FDRE \axi_awaddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(L[6]),
        .R(reset_o));
  CARRY4 \axi_awaddr_reg[6]_i_2 
       (.CI(1'b0),
        .CO({\axi_awaddr_reg[6]_i_2_n_0 ,\axi_awaddr_reg[6]_i_2_n_1 ,\axi_awaddr_reg[6]_i_2_n_2 ,\axi_awaddr_reg[6]_i_2_n_3 }),
        .CYINIT(L[2]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[6:3]),
        .S(L[6:3]));
  FDRE \axi_awaddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(L[7]),
        .R(reset_o));
  FDRE \axi_awaddr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(L[8]),
        .R(reset_o));
  FDRE \axi_awaddr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\axi_awaddr[17]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(L[9]),
        .R(reset_o));
  CARRY4 \axi_awaddr_reg[9]_i_2 
       (.CI(\axi_awaddr_reg[5]_i_2_n_0 ),
        .CO({\axi_awaddr_reg[9]_i_2_n_0 ,\axi_awaddr_reg[9]_i_2_n_1 ,\axi_awaddr_reg[9]_i_2_n_2 ,\axi_awaddr_reg[9]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\axi_awaddr[9]_i_3_n_0 ,\axi_awaddr[9]_i_4_n_0 ,\axi_awaddr[9]_i_5_n_0 ,\axi_awaddr[9]_i_6_n_0 }),
        .O(minusOp[9:6]),
        .S({\axi_awaddr[9]_i_7_n_0 ,\axi_awaddr[9]_i_8_n_0 ,\axi_awaddr[9]_i_9_n_0 ,\axi_awaddr[9]_i_10_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awlen_cntr[0]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .O(\axi_awlen_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awlen_cntr[1]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .I1(axi_awlen_cntr_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_awlen_cntr[2]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(axi_awlen_cntr_reg[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_awlen_cntr[3]_i_1 
       (.I0(axi_awlen_cntr_reg[1]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen_cntr_reg[2]),
        .I3(axi_awlen_cntr_reg[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_awlen_cntr[4]_i_1 
       (.I0(axi_awlen_cntr_reg[2]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen_cntr_reg[3]),
        .I4(axi_awlen_cntr_reg[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_awlen_cntr[5]_i_1 
       (.I0(axi_awlen_cntr_reg[3]),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(axi_awlen_cntr_reg[0]),
        .I3(axi_awlen_cntr_reg[2]),
        .I4(axi_awlen_cntr_reg[4]),
        .I5(axi_awlen_cntr_reg[5]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awlen_cntr[6]_i_1 
       (.I0(\axi_awlen_cntr[7]_i_4_n_0 ),
        .I1(axi_awlen_cntr_reg[6]),
        .O(plusOp__0[6]));
  LUT4 #(
    .INIT(16'h10FF)) 
    \axi_awlen_cntr[7]_i_1 
       (.I0(S_AXI_AWREADY),
        .I1(axi_awv_awr_flag),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_ARESETN),
        .O(\axi_awlen_cntr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_awlen_cntr[7]_i_2 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_WREADY),
        .I2(leqOp6_in),
        .O(axi_awaddr1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \axi_awlen_cntr[7]_i_3 
       (.I0(\axi_awlen_cntr[7]_i_4_n_0 ),
        .I1(axi_awlen_cntr_reg[6]),
        .I2(axi_awlen_cntr_reg[7]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_awlen_cntr[7]_i_4 
       (.I0(axi_awlen_cntr_reg[5]),
        .I1(axi_awlen_cntr_reg[3]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen_cntr_reg[0]),
        .I4(axi_awlen_cntr_reg[2]),
        .I5(axi_awlen_cntr_reg[4]),
        .O(\axi_awlen_cntr[7]_i_4_n_0 ));
  FDRE \axi_awlen_cntr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(\axi_awlen_cntr[0]_i_1_n_0 ),
        .Q(axi_awlen_cntr_reg[0]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(plusOp__0[1]),
        .Q(axi_awlen_cntr_reg[1]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(plusOp__0[2]),
        .Q(axi_awlen_cntr_reg[2]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(plusOp__0[3]),
        .Q(axi_awlen_cntr_reg[3]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(plusOp__0[4]),
        .Q(axi_awlen_cntr_reg[4]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(plusOp__0[5]),
        .Q(axi_awlen_cntr_reg[5]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(plusOp__0[6]),
        .Q(axi_awlen_cntr_reg[6]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE \axi_awlen_cntr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_awaddr1),
        .D(plusOp__0[7]),
        .Q(axi_awlen_cntr_reg[7]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF04000400040004)) 
    axi_awready_i_1
       (.I0(sbus_i_rd),
        .I1(S_AXI_AWVALID),
        .I2(axi_awv_awr_flag),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_WLAST),
        .I5(S_AXI_WREADY),
        .O(axi_awready_i_1_n_0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(S_AXI_AWREADY),
        .R(reset_o));
  LUT6 #(
    .INIT(64'h0004F0F4F0F4F0F4)) 
    axi_awv_awr_flag_i_1
       (.I0(sbus_i_rd),
        .I1(S_AXI_AWVALID),
        .I2(axi_awv_awr_flag),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_WLAST),
        .I5(S_AXI_WREADY),
        .O(axi_awv_awr_flag_i_1_n_0));
  FDRE axi_awv_awr_flag_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awv_awr_flag_i_1_n_0),
        .Q(axi_awv_awr_flag),
        .R(reset_o));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_WLAST),
        .I1(axi_awv_awr_flag),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(reset_o));
  LUT6 #(
    .INIT(64'h000000000000F200)) 
    axi_rlast_i_1
       (.I0(S_AXI_RLAST),
        .I1(S_AXI_RREADY),
        .I2(axi_rlast0),
        .I3(S_AXI_ARESETN),
        .I4(axi_rlast_i_3_n_0),
        .I5(axi_araddr1),
        .O(axi_rlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    axi_rlast_i_2
       (.I0(axi_arv_arr_flag_i_3_n_0),
        .I1(axi_arv_arr_flag_i_4_n_0),
        .I2(axi_arv_arr_flag_i_5_n_0),
        .I3(sbus_o_ack),
        .I4(S_AXI_RLAST),
        .I5(sbus_i_rd),
        .O(axi_rlast0));
  LUT3 #(
    .INIT(8'h04)) 
    axi_rlast_i_3
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(sbus_i_rd),
        .O(axi_rlast_i_3_n_0));
  FDRE axi_rlast_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rlast_i_1_n_0),
        .Q(S_AXI_RLAST),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(sbus_o_ack),
        .I1(sbus_i_rd),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(reset_o));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_wready_i_1
       (.I0(axi_awv_awr_flag),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_WLAST),
        .I3(S_AXI_WREADY),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY),
        .R(reset_o));
  LUT1 #(
    .INIT(2'h1)) 
    reset_o_INST_0
       (.I0(S_AXI_ARESETN),
        .O(reset_o));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[0]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[2] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[2]),
        .O(sbus_i_addr[0]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[10]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[12] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[12]),
        .O(sbus_i_addr[10]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[11]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[13] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[13]),
        .O(sbus_i_addr[11]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[12]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[14] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[14]),
        .O(sbus_i_addr[12]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[13]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[15] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[15]),
        .O(sbus_i_addr[13]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[14]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[16] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[16]),
        .O(sbus_i_addr[14]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[15]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[17] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[17]),
        .O(sbus_i_addr[15]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[1]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[3] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[3]),
        .O(sbus_i_addr[1]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[2]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[4] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[4]),
        .O(sbus_i_addr[2]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[3]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[5] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[5]),
        .O(sbus_i_addr[3]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[4]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[6]),
        .O(sbus_i_addr[4]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[5]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[7] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[7]),
        .O(sbus_i_addr[5]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[6]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[8] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[8]),
        .O(sbus_i_addr[6]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[7]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[9] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[9]),
        .O(sbus_i_addr[7]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[8]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[10] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[10]),
        .O(sbus_i_addr[8]));
  LUT4 #(
    .INIT(16'hB888)) 
    \sbus_i_addr[9]_INST_0 
       (.I0(\axi_araddr_reg_n_0_[11] ),
        .I1(sbus_i_rd),
        .I2(axi_awv_awr_flag),
        .I3(L[11]),
        .O(sbus_i_addr[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sbus_i_we_INST_0
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_WVALID),
        .O(sbus_i_we));
endmodule

(* ORIG_REF_NAME = "cnt_modulus" *) 
module system_axi_sbus_bridge_0_0_cnt_modulus
   (eqOp,
    \cnt_reg[0]_0 ,
    CLK,
    SR,
    \cnt_reg[31] ,
    D);
  output eqOp;
  output \cnt_reg[0]_0 ;
  input CLK;
  input [0:0]SR;
  input \cnt_reg[31] ;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [0:0]SR;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[0]_i_6_n_0 ;
  wire \cnt[0]_i_7_n_0 ;
  wire \cnt[0]_i_8_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_2_n_1 ;
  wire \cnt_reg[0]_i_2_n_2 ;
  wire \cnt_reg[0]_i_2_n_3 ;
  wire \cnt_reg[0]_i_2_n_4 ;
  wire \cnt_reg[0]_i_2_n_5 ;
  wire \cnt_reg[0]_i_2_n_6 ;
  wire \cnt_reg[0]_i_2_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[31] ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[9] ;
  wire eqOp;
  wire [3:0]\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_cnt_reg[16]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'hE)) 
    \cnt[0]_i_1__0 
       (.I0(eqOp),
        .I1(SR),
        .O(\cnt[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \cnt[0]_i_1__1 
       (.I0(\cnt_reg[31] ),
        .I1(\cnt[0]_i_5_n_0 ),
        .I2(\cnt[0]_i_6_n_0 ),
        .I3(\cnt[0]_i_7_n_0 ),
        .I4(SR),
        .O(\cnt_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[0]_i_2 
       (.I0(\cnt[0]_i_6_n_0 ),
        .I1(\cnt_reg_n_0_[0] ),
        .I2(\cnt_reg_n_0_[1] ),
        .I3(\cnt_reg_n_0_[2] ),
        .I4(\cnt[0]_i_8_n_0 ),
        .I5(\cnt[0]_i_7_n_0 ),
        .O(eqOp));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_3 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \cnt[0]_i_5 
       (.I0(\cnt_reg_n_0_[1] ),
        .I1(\cnt_reg_n_0_[2] ),
        .I2(\cnt_reg_n_0_[0] ),
        .I3(D),
        .I4(\cnt_reg_n_0_[4] ),
        .I5(\cnt_reg_n_0_[3] ),
        .O(\cnt[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \cnt[0]_i_6 
       (.I0(\cnt_reg_n_0_[7] ),
        .I1(\cnt_reg_n_0_[8] ),
        .I2(\cnt_reg_n_0_[5] ),
        .I3(\cnt_reg_n_0_[6] ),
        .I4(\cnt_reg_n_0_[10] ),
        .I5(\cnt_reg_n_0_[9] ),
        .O(\cnt[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \cnt[0]_i_7 
       (.I0(\cnt_reg_n_0_[13] ),
        .I1(\cnt_reg_n_0_[14] ),
        .I2(\cnt_reg_n_0_[11] ),
        .I3(\cnt_reg_n_0_[12] ),
        .I4(\cnt_reg_n_0_[16] ),
        .I5(\cnt_reg_n_0_[15] ),
        .O(\cnt[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt[0]_i_8 
       (.I0(\cnt_reg_n_0_[3] ),
        .I1(\cnt_reg_n_0_[4] ),
        .O(\cnt[0]_i_8_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_7 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  CARRY4 \cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_2_n_0 ,\cnt_reg[0]_i_2_n_1 ,\cnt_reg[0]_i_2_n_2 ,\cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_2_n_4 ,\cnt_reg[0]_i_2_n_5 ,\cnt_reg[0]_i_2_n_6 ,\cnt_reg[0]_i_2_n_7 }),
        .S({\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] ,\cnt[0]_i_3_n_0 }));
  FDRE \cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[10] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE \cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[11] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE \cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[12] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] ,\cnt_reg_n_0_[12] }));
  FDRE \cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[13] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE \cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[14] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE \cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[15] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE \cnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[16] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO(\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[16]_i_1_O_UNCONNECTED [3:1],\cnt_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\cnt_reg_n_0_[16] }));
  FDRE \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_6 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_5 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_4 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_2_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] ,\cnt_reg_n_0_[4] }));
  FDRE \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[5] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[6] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[7] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  FDRE \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[8] ),
        .R(\cnt[0]_i_1__0_n_0 ));
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] ,\cnt_reg_n_0_[8] }));
  FDRE \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[9] ),
        .R(\cnt[0]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "cnt_modulus" *) 
module system_axi_sbus_bridge_0_0_cnt_modulus__parameterized1
   (D,
    \cnt_reg[0]_0 ,
    \cnt_reg[31]_0 ,
    eqOp,
    clk_o);
  output [31:0]D;
  output \cnt_reg[0]_0 ;
  input \cnt_reg[31]_0 ;
  input eqOp;
  input clk_o;

  wire [31:0]D;
  wire clk_o;
  wire \cnt[0]_i_10_n_0 ;
  wire \cnt[0]_i_11_n_0 ;
  wire \cnt[0]_i_12_n_0 ;
  wire \cnt[0]_i_13_n_0 ;
  wire \cnt[0]_i_14_n_0 ;
  wire \cnt[0]_i_9_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[0]_i_3_n_0 ;
  wire \cnt_reg[0]_i_3_n_1 ;
  wire \cnt_reg[0]_i_3_n_2 ;
  wire \cnt_reg[0]_i_3_n_3 ;
  wire \cnt_reg[0]_i_3_n_4 ;
  wire \cnt_reg[0]_i_3_n_5 ;
  wire \cnt_reg[0]_i_3_n_6 ;
  wire \cnt_reg[0]_i_3_n_7 ;
  wire \cnt_reg[12]_i_1__0_n_0 ;
  wire \cnt_reg[12]_i_1__0_n_1 ;
  wire \cnt_reg[12]_i_1__0_n_2 ;
  wire \cnt_reg[12]_i_1__0_n_3 ;
  wire \cnt_reg[12]_i_1__0_n_4 ;
  wire \cnt_reg[12]_i_1__0_n_5 ;
  wire \cnt_reg[12]_i_1__0_n_6 ;
  wire \cnt_reg[12]_i_1__0_n_7 ;
  wire \cnt_reg[16]_i_1__0_n_0 ;
  wire \cnt_reg[16]_i_1__0_n_1 ;
  wire \cnt_reg[16]_i_1__0_n_2 ;
  wire \cnt_reg[16]_i_1__0_n_3 ;
  wire \cnt_reg[16]_i_1__0_n_4 ;
  wire \cnt_reg[16]_i_1__0_n_5 ;
  wire \cnt_reg[16]_i_1__0_n_6 ;
  wire \cnt_reg[16]_i_1__0_n_7 ;
  wire \cnt_reg[20]_i_1_n_0 ;
  wire \cnt_reg[20]_i_1_n_1 ;
  wire \cnt_reg[20]_i_1_n_2 ;
  wire \cnt_reg[20]_i_1_n_3 ;
  wire \cnt_reg[20]_i_1_n_4 ;
  wire \cnt_reg[20]_i_1_n_5 ;
  wire \cnt_reg[20]_i_1_n_6 ;
  wire \cnt_reg[20]_i_1_n_7 ;
  wire \cnt_reg[24]_i_1_n_0 ;
  wire \cnt_reg[24]_i_1_n_1 ;
  wire \cnt_reg[24]_i_1_n_2 ;
  wire \cnt_reg[24]_i_1_n_3 ;
  wire \cnt_reg[24]_i_1_n_4 ;
  wire \cnt_reg[24]_i_1_n_5 ;
  wire \cnt_reg[24]_i_1_n_6 ;
  wire \cnt_reg[24]_i_1_n_7 ;
  wire \cnt_reg[28]_i_1_n_1 ;
  wire \cnt_reg[28]_i_1_n_2 ;
  wire \cnt_reg[28]_i_1_n_3 ;
  wire \cnt_reg[28]_i_1_n_4 ;
  wire \cnt_reg[28]_i_1_n_5 ;
  wire \cnt_reg[28]_i_1_n_6 ;
  wire \cnt_reg[28]_i_1_n_7 ;
  wire \cnt_reg[31]_0 ;
  wire \cnt_reg[4]_i_1__0_n_0 ;
  wire \cnt_reg[4]_i_1__0_n_1 ;
  wire \cnt_reg[4]_i_1__0_n_2 ;
  wire \cnt_reg[4]_i_1__0_n_3 ;
  wire \cnt_reg[4]_i_1__0_n_4 ;
  wire \cnt_reg[4]_i_1__0_n_5 ;
  wire \cnt_reg[4]_i_1__0_n_6 ;
  wire \cnt_reg[4]_i_1__0_n_7 ;
  wire \cnt_reg[8]_i_1__0_n_0 ;
  wire \cnt_reg[8]_i_1__0_n_1 ;
  wire \cnt_reg[8]_i_1__0_n_2 ;
  wire \cnt_reg[8]_i_1__0_n_3 ;
  wire \cnt_reg[8]_i_1__0_n_4 ;
  wire \cnt_reg[8]_i_1__0_n_5 ;
  wire \cnt_reg[8]_i_1__0_n_6 ;
  wire \cnt_reg[8]_i_1__0_n_7 ;
  wire eqOp;
  wire [3:3]\NLW_cnt_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[0]_i_10 
       (.I0(D[15]),
        .I1(D[16]),
        .I2(D[13]),
        .I3(D[14]),
        .I4(D[18]),
        .I5(D[17]),
        .O(\cnt[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[0]_i_11 
       (.I0(D[9]),
        .I1(D[10]),
        .I2(D[7]),
        .I3(D[8]),
        .I4(D[12]),
        .I5(D[11]),
        .O(\cnt[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \cnt[0]_i_12 
       (.I0(D[27]),
        .I1(D[28]),
        .I2(D[25]),
        .I3(D[26]),
        .I4(D[30]),
        .I5(D[29]),
        .O(\cnt[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[0]_i_13 
       (.I0(D[21]),
        .I1(D[22]),
        .I2(D[19]),
        .I3(D[20]),
        .I4(D[24]),
        .I5(D[23]),
        .O(\cnt[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[0]_i_14 
       (.I0(D[3]),
        .I1(D[4]),
        .I2(D[1]),
        .I3(D[2]),
        .I4(D[6]),
        .I5(D[5]),
        .O(\cnt[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[0]_i_4 
       (.I0(\cnt[0]_i_10_n_0 ),
        .I1(\cnt[0]_i_11_n_0 ),
        .I2(\cnt[0]_i_12_n_0 ),
        .I3(\cnt[0]_i_13_n_0 ),
        .I4(D[0]),
        .I5(\cnt[0]_i_14_n_0 ),
        .O(\cnt_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_9 
       (.I0(D[0]),
        .O(\cnt[0]_i_9_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[0]_i_3_n_7 ),
        .Q(D[0]),
        .R(\cnt_reg[31]_0 ));
  CARRY4 \cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_3_n_0 ,\cnt_reg[0]_i_3_n_1 ,\cnt_reg[0]_i_3_n_2 ,\cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_3_n_4 ,\cnt_reg[0]_i_3_n_5 ,\cnt_reg[0]_i_3_n_6 ,\cnt_reg[0]_i_3_n_7 }),
        .S({D[3:1],\cnt[0]_i_9_n_0 }));
  FDRE \cnt_reg[10] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[8]_i_1__0_n_5 ),
        .Q(D[10]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[11] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[8]_i_1__0_n_4 ),
        .Q(D[11]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[12] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[12]_i_1__0_n_7 ),
        .Q(D[12]),
        .R(\cnt_reg[31]_0 ));
  CARRY4 \cnt_reg[12]_i_1__0 
       (.CI(\cnt_reg[8]_i_1__0_n_0 ),
        .CO({\cnt_reg[12]_i_1__0_n_0 ,\cnt_reg[12]_i_1__0_n_1 ,\cnt_reg[12]_i_1__0_n_2 ,\cnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1__0_n_4 ,\cnt_reg[12]_i_1__0_n_5 ,\cnt_reg[12]_i_1__0_n_6 ,\cnt_reg[12]_i_1__0_n_7 }),
        .S(D[15:12]));
  FDRE \cnt_reg[13] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[12]_i_1__0_n_6 ),
        .Q(D[13]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[14] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[12]_i_1__0_n_5 ),
        .Q(D[14]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[15] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[12]_i_1__0_n_4 ),
        .Q(D[15]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[16] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[16]_i_1__0_n_7 ),
        .Q(D[16]),
        .R(\cnt_reg[31]_0 ));
  CARRY4 \cnt_reg[16]_i_1__0 
       (.CI(\cnt_reg[12]_i_1__0_n_0 ),
        .CO({\cnt_reg[16]_i_1__0_n_0 ,\cnt_reg[16]_i_1__0_n_1 ,\cnt_reg[16]_i_1__0_n_2 ,\cnt_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1__0_n_4 ,\cnt_reg[16]_i_1__0_n_5 ,\cnt_reg[16]_i_1__0_n_6 ,\cnt_reg[16]_i_1__0_n_7 }),
        .S(D[19:16]));
  FDRE \cnt_reg[17] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[16]_i_1__0_n_6 ),
        .Q(D[17]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[18] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[16]_i_1__0_n_5 ),
        .Q(D[18]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[19] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[16]_i_1__0_n_4 ),
        .Q(D[19]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[1] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[0]_i_3_n_6 ),
        .Q(D[1]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[20] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[20]_i_1_n_7 ),
        .Q(D[20]),
        .R(\cnt_reg[31]_0 ));
  CARRY4 \cnt_reg[20]_i_1 
       (.CI(\cnt_reg[16]_i_1__0_n_0 ),
        .CO({\cnt_reg[20]_i_1_n_0 ,\cnt_reg[20]_i_1_n_1 ,\cnt_reg[20]_i_1_n_2 ,\cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_1_n_4 ,\cnt_reg[20]_i_1_n_5 ,\cnt_reg[20]_i_1_n_6 ,\cnt_reg[20]_i_1_n_7 }),
        .S(D[23:20]));
  FDRE \cnt_reg[21] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[20]_i_1_n_6 ),
        .Q(D[21]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[22] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[20]_i_1_n_5 ),
        .Q(D[22]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[23] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[20]_i_1_n_4 ),
        .Q(D[23]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[24] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[24]_i_1_n_7 ),
        .Q(D[24]),
        .R(\cnt_reg[31]_0 ));
  CARRY4 \cnt_reg[24]_i_1 
       (.CI(\cnt_reg[20]_i_1_n_0 ),
        .CO({\cnt_reg[24]_i_1_n_0 ,\cnt_reg[24]_i_1_n_1 ,\cnt_reg[24]_i_1_n_2 ,\cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[24]_i_1_n_4 ,\cnt_reg[24]_i_1_n_5 ,\cnt_reg[24]_i_1_n_6 ,\cnt_reg[24]_i_1_n_7 }),
        .S(D[27:24]));
  FDRE \cnt_reg[25] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[24]_i_1_n_6 ),
        .Q(D[25]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[26] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[24]_i_1_n_5 ),
        .Q(D[26]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[27] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[24]_i_1_n_4 ),
        .Q(D[27]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[28] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[28]_i_1_n_7 ),
        .Q(D[28]),
        .R(\cnt_reg[31]_0 ));
  CARRY4 \cnt_reg[28]_i_1 
       (.CI(\cnt_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[28]_i_1_CO_UNCONNECTED [3],\cnt_reg[28]_i_1_n_1 ,\cnt_reg[28]_i_1_n_2 ,\cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[28]_i_1_n_4 ,\cnt_reg[28]_i_1_n_5 ,\cnt_reg[28]_i_1_n_6 ,\cnt_reg[28]_i_1_n_7 }),
        .S(D[31:28]));
  FDRE \cnt_reg[29] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[28]_i_1_n_6 ),
        .Q(D[29]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[2] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[0]_i_3_n_5 ),
        .Q(D[2]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[30] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[28]_i_1_n_5 ),
        .Q(D[30]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[31] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[28]_i_1_n_4 ),
        .Q(D[31]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[3] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[0]_i_3_n_4 ),
        .Q(D[3]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[4] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[4]_i_1__0_n_7 ),
        .Q(D[4]),
        .R(\cnt_reg[31]_0 ));
  CARRY4 \cnt_reg[4]_i_1__0 
       (.CI(\cnt_reg[0]_i_3_n_0 ),
        .CO({\cnt_reg[4]_i_1__0_n_0 ,\cnt_reg[4]_i_1__0_n_1 ,\cnt_reg[4]_i_1__0_n_2 ,\cnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1__0_n_4 ,\cnt_reg[4]_i_1__0_n_5 ,\cnt_reg[4]_i_1__0_n_6 ,\cnt_reg[4]_i_1__0_n_7 }),
        .S(D[7:4]));
  FDRE \cnt_reg[5] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[4]_i_1__0_n_6 ),
        .Q(D[5]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[6] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[4]_i_1__0_n_5 ),
        .Q(D[6]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[7] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[4]_i_1__0_n_4 ),
        .Q(D[7]),
        .R(\cnt_reg[31]_0 ));
  FDRE \cnt_reg[8] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[8]_i_1__0_n_7 ),
        .Q(D[8]),
        .R(\cnt_reg[31]_0 ));
  CARRY4 \cnt_reg[8]_i_1__0 
       (.CI(\cnt_reg[4]_i_1__0_n_0 ),
        .CO({\cnt_reg[8]_i_1__0_n_0 ,\cnt_reg[8]_i_1__0_n_1 ,\cnt_reg[8]_i_1__0_n_2 ,\cnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1__0_n_4 ,\cnt_reg[8]_i_1__0_n_5 ,\cnt_reg[8]_i_1__0_n_6 ,\cnt_reg[8]_i_1__0_n_7 }),
        .S(D[11:8]));
  FDRE \cnt_reg[9] 
       (.C(clk_o),
        .CE(eqOp),
        .D(\cnt_reg[8]_i_1__0_n_6 ),
        .Q(D[9]),
        .R(\cnt_reg[31]_0 ));
endmodule

(* ORIG_REF_NAME = "cnt_modulus" *) 
module system_axi_sbus_bridge_0_0_cnt_modulus__parameterized3
   (Q,
    D,
    E,
    SR,
    \sync_reg[7] ,
    clk_o);
  output [6:0]Q;
  output [6:0]D;
  input [0:0]E;
  input [0:0]SR;
  input [6:0]\sync_reg[7] ;
  input clk_o;

  wire [6:0]D;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]SR;
  wire clk_o;
  wire \cnt[6]_i_1_n_0 ;
  wire \cnt[6]_i_3_n_0 ;
  wire [6:0]plusOp;
  wire [6:0]\sync_reg[7] ;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \cnt[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt[5]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(plusOp[5]));
  LUT4 #(
    .INIT(16'hFF40)) 
    \cnt[6]_i_1 
       (.I0(\cnt[6]_i_3_n_0 ),
        .I1(Q[6]),
        .I2(E),
        .I3(SR),
        .O(\cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cnt[6]_i_2 
       (.I0(\cnt[6]_i_3_n_0 ),
        .I1(Q[6]),
        .O(plusOp[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt[6]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\cnt[6]_i_3_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(clk_o),
        .CE(E),
        .D(plusOp[0]),
        .Q(Q[0]),
        .R(\cnt[6]_i_1_n_0 ));
  FDRE \cnt_reg[1] 
       (.C(clk_o),
        .CE(E),
        .D(plusOp[1]),
        .Q(Q[1]),
        .R(\cnt[6]_i_1_n_0 ));
  FDRE \cnt_reg[2] 
       (.C(clk_o),
        .CE(E),
        .D(plusOp[2]),
        .Q(Q[2]),
        .R(\cnt[6]_i_1_n_0 ));
  FDRE \cnt_reg[3] 
       (.C(clk_o),
        .CE(E),
        .D(plusOp[3]),
        .Q(Q[3]),
        .R(\cnt[6]_i_1_n_0 ));
  FDRE \cnt_reg[4] 
       (.C(clk_o),
        .CE(E),
        .D(plusOp[4]),
        .Q(Q[4]),
        .R(\cnt[6]_i_1_n_0 ));
  FDRE \cnt_reg[5] 
       (.C(clk_o),
        .CE(E),
        .D(plusOp[5]),
        .Q(Q[5]),
        .R(\cnt[6]_i_1_n_0 ));
  FDRE \cnt_reg[6] 
       (.C(clk_o),
        .CE(E),
        .D(plusOp[6]),
        .Q(Q[6]),
        .R(\cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync[1]_i_1 
       (.I0(Q[0]),
        .I1(\sync_reg[7] [0]),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \sync[2]_i_1 
       (.I0(Q[1]),
        .I1(\sync_reg[7] [1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \sync[3]_i_1 
       (.I0(Q[2]),
        .I1(\sync_reg[7] [2]),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \sync[4]_i_1 
       (.I0(Q[3]),
        .I1(\sync_reg[7] [3]),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \sync[5]_i_1 
       (.I0(Q[4]),
        .I1(\sync_reg[7] [4]),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \sync[6]_i_1 
       (.I0(Q[5]),
        .I1(\sync_reg[7] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sync[7]_i_1 
       (.I0(Q[6]),
        .I1(\sync_reg[7] [6]),
        .O(D[6]));
endmodule

(* ORIG_REF_NAME = "cnt_modulus_c" *) 
module system_axi_sbus_bridge_0_0_cnt_modulus_c
   (\cnt_int_reg[0]_0 ,
    \cnt_int_reg[2]_0 ,
    E,
    \cnt_int_reg[31]_0 ,
    \cnt_int_reg[0]_1 ,
    CLK,
    S,
    D);
  output \cnt_int_reg[0]_0 ;
  output [1:0]\cnt_int_reg[2]_0 ;
  output [0:0]E;
  input \cnt_int_reg[31]_0 ;
  input \cnt_int_reg[0]_1 ;
  input CLK;
  input [0:0]S;
  input [28:0]D;

  wire CLK;
  wire [28:0]D;
  wire [0:0]E;
  wire [0:0]S;
  wire \cnt_int[0]_i_8_n_0 ;
  wire \cnt_int_reg[0]_0 ;
  wire \cnt_int_reg[0]_1 ;
  wire \cnt_int_reg[0]_i_3_n_0 ;
  wire \cnt_int_reg[0]_i_3_n_1 ;
  wire \cnt_int_reg[0]_i_3_n_2 ;
  wire \cnt_int_reg[0]_i_3_n_3 ;
  wire \cnt_int_reg[0]_i_3_n_4 ;
  wire \cnt_int_reg[0]_i_3_n_5 ;
  wire \cnt_int_reg[0]_i_3_n_6 ;
  wire \cnt_int_reg[0]_i_3_n_7 ;
  wire \cnt_int_reg[12]_i_1_n_0 ;
  wire \cnt_int_reg[12]_i_1_n_1 ;
  wire \cnt_int_reg[12]_i_1_n_2 ;
  wire \cnt_int_reg[12]_i_1_n_3 ;
  wire \cnt_int_reg[12]_i_1_n_4 ;
  wire \cnt_int_reg[12]_i_1_n_5 ;
  wire \cnt_int_reg[12]_i_1_n_6 ;
  wire \cnt_int_reg[12]_i_1_n_7 ;
  wire \cnt_int_reg[16]_i_1_n_0 ;
  wire \cnt_int_reg[16]_i_1_n_1 ;
  wire \cnt_int_reg[16]_i_1_n_2 ;
  wire \cnt_int_reg[16]_i_1_n_3 ;
  wire \cnt_int_reg[16]_i_1_n_4 ;
  wire \cnt_int_reg[16]_i_1_n_5 ;
  wire \cnt_int_reg[16]_i_1_n_6 ;
  wire \cnt_int_reg[16]_i_1_n_7 ;
  wire \cnt_int_reg[20]_i_1_n_0 ;
  wire \cnt_int_reg[20]_i_1_n_1 ;
  wire \cnt_int_reg[20]_i_1_n_2 ;
  wire \cnt_int_reg[20]_i_1_n_3 ;
  wire \cnt_int_reg[20]_i_1_n_4 ;
  wire \cnt_int_reg[20]_i_1_n_5 ;
  wire \cnt_int_reg[20]_i_1_n_6 ;
  wire \cnt_int_reg[20]_i_1_n_7 ;
  wire \cnt_int_reg[24]_i_1_n_0 ;
  wire \cnt_int_reg[24]_i_1_n_1 ;
  wire \cnt_int_reg[24]_i_1_n_2 ;
  wire \cnt_int_reg[24]_i_1_n_3 ;
  wire \cnt_int_reg[24]_i_1_n_4 ;
  wire \cnt_int_reg[24]_i_1_n_5 ;
  wire \cnt_int_reg[24]_i_1_n_6 ;
  wire \cnt_int_reg[24]_i_1_n_7 ;
  wire \cnt_int_reg[28]_i_1_n_1 ;
  wire \cnt_int_reg[28]_i_1_n_2 ;
  wire \cnt_int_reg[28]_i_1_n_3 ;
  wire \cnt_int_reg[28]_i_1_n_4 ;
  wire \cnt_int_reg[28]_i_1_n_5 ;
  wire \cnt_int_reg[28]_i_1_n_6 ;
  wire \cnt_int_reg[28]_i_1_n_7 ;
  wire [1:0]\cnt_int_reg[2]_0 ;
  wire \cnt_int_reg[31]_0 ;
  wire \cnt_int_reg[4]_i_1_n_0 ;
  wire \cnt_int_reg[4]_i_1_n_1 ;
  wire \cnt_int_reg[4]_i_1_n_2 ;
  wire \cnt_int_reg[4]_i_1_n_3 ;
  wire \cnt_int_reg[4]_i_1_n_4 ;
  wire \cnt_int_reg[4]_i_1_n_5 ;
  wire \cnt_int_reg[4]_i_1_n_6 ;
  wire \cnt_int_reg[4]_i_1_n_7 ;
  wire \cnt_int_reg[8]_i_1_n_0 ;
  wire \cnt_int_reg[8]_i_1_n_1 ;
  wire \cnt_int_reg[8]_i_1_n_2 ;
  wire \cnt_int_reg[8]_i_1_n_3 ;
  wire \cnt_int_reg[8]_i_1_n_4 ;
  wire \cnt_int_reg[8]_i_1_n_5 ;
  wire \cnt_int_reg[8]_i_1_n_6 ;
  wire \cnt_int_reg[8]_i_1_n_7 ;
  wire \cnt_int_reg_n_0_[10] ;
  wire \cnt_int_reg_n_0_[11] ;
  wire \cnt_int_reg_n_0_[12] ;
  wire \cnt_int_reg_n_0_[13] ;
  wire \cnt_int_reg_n_0_[14] ;
  wire \cnt_int_reg_n_0_[15] ;
  wire \cnt_int_reg_n_0_[16] ;
  wire \cnt_int_reg_n_0_[17] ;
  wire \cnt_int_reg_n_0_[18] ;
  wire \cnt_int_reg_n_0_[19] ;
  wire \cnt_int_reg_n_0_[20] ;
  wire \cnt_int_reg_n_0_[21] ;
  wire \cnt_int_reg_n_0_[22] ;
  wire \cnt_int_reg_n_0_[23] ;
  wire \cnt_int_reg_n_0_[24] ;
  wire \cnt_int_reg_n_0_[25] ;
  wire \cnt_int_reg_n_0_[26] ;
  wire \cnt_int_reg_n_0_[27] ;
  wire \cnt_int_reg_n_0_[28] ;
  wire \cnt_int_reg_n_0_[29] ;
  wire \cnt_int_reg_n_0_[30] ;
  wire \cnt_int_reg_n_0_[31] ;
  wire \cnt_int_reg_n_0_[3] ;
  wire \cnt_int_reg_n_0_[4] ;
  wire \cnt_int_reg_n_0_[5] ;
  wire \cnt_int_reg_n_0_[6] ;
  wire \cnt_int_reg_n_0_[7] ;
  wire \cnt_int_reg_n_0_[8] ;
  wire \cnt_int_reg_n_0_[9] ;
  wire eqOp_carry__0_i_1_n_0;
  wire eqOp_carry__0_i_2_n_0;
  wire eqOp_carry__0_i_3_n_0;
  wire eqOp_carry__0_i_4_n_0;
  wire eqOp_carry__0_n_0;
  wire eqOp_carry__0_n_1;
  wire eqOp_carry__0_n_2;
  wire eqOp_carry__0_n_3;
  wire eqOp_carry__1_i_1_n_0;
  wire eqOp_carry__1_i_2_n_0;
  wire eqOp_carry__1_i_3_n_0;
  wire eqOp_carry__1_n_2;
  wire eqOp_carry__1_n_3;
  wire eqOp_carry_i_1_n_0;
  wire eqOp_carry_i_2_n_0;
  wire eqOp_carry_i_3_n_0;
  wire eqOp_carry_n_0;
  wire eqOp_carry_n_1;
  wire eqOp_carry_n_2;
  wire eqOp_carry_n_3;
  wire [3:3]\NLW_cnt_int_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_eqOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_eqOp_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_eqOp_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_eqOp_carry__1_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt_int[0]_i_8 
       (.I0(\cnt_int_reg[0]_0 ),
        .O(\cnt_int[0]_i_8_n_0 ));
  FDSE \cnt_int_reg[0] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[0]_i_3_n_7 ),
        .Q(\cnt_int_reg[0]_0 ),
        .S(\cnt_int_reg[31]_0 ));
  CARRY4 \cnt_int_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\cnt_int_reg[0]_i_3_n_0 ,\cnt_int_reg[0]_i_3_n_1 ,\cnt_int_reg[0]_i_3_n_2 ,\cnt_int_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_int_reg[0]_i_3_n_4 ,\cnt_int_reg[0]_i_3_n_5 ,\cnt_int_reg[0]_i_3_n_6 ,\cnt_int_reg[0]_i_3_n_7 }),
        .S({\cnt_int_reg_n_0_[3] ,\cnt_int_reg[2]_0 ,\cnt_int[0]_i_8_n_0 }));
  FDRE \cnt_int_reg[10] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[8]_i_1_n_5 ),
        .Q(\cnt_int_reg_n_0_[10] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[11] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[8]_i_1_n_4 ),
        .Q(\cnt_int_reg_n_0_[11] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[12] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[12]_i_1_n_7 ),
        .Q(\cnt_int_reg_n_0_[12] ),
        .R(\cnt_int_reg[31]_0 ));
  CARRY4 \cnt_int_reg[12]_i_1 
       (.CI(\cnt_int_reg[8]_i_1_n_0 ),
        .CO({\cnt_int_reg[12]_i_1_n_0 ,\cnt_int_reg[12]_i_1_n_1 ,\cnt_int_reg[12]_i_1_n_2 ,\cnt_int_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_int_reg[12]_i_1_n_4 ,\cnt_int_reg[12]_i_1_n_5 ,\cnt_int_reg[12]_i_1_n_6 ,\cnt_int_reg[12]_i_1_n_7 }),
        .S({\cnt_int_reg_n_0_[15] ,\cnt_int_reg_n_0_[14] ,\cnt_int_reg_n_0_[13] ,\cnt_int_reg_n_0_[12] }));
  FDRE \cnt_int_reg[13] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[12]_i_1_n_6 ),
        .Q(\cnt_int_reg_n_0_[13] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[14] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[12]_i_1_n_5 ),
        .Q(\cnt_int_reg_n_0_[14] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[15] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[12]_i_1_n_4 ),
        .Q(\cnt_int_reg_n_0_[15] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[16] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[16]_i_1_n_7 ),
        .Q(\cnt_int_reg_n_0_[16] ),
        .R(\cnt_int_reg[31]_0 ));
  CARRY4 \cnt_int_reg[16]_i_1 
       (.CI(\cnt_int_reg[12]_i_1_n_0 ),
        .CO({\cnt_int_reg[16]_i_1_n_0 ,\cnt_int_reg[16]_i_1_n_1 ,\cnt_int_reg[16]_i_1_n_2 ,\cnt_int_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_int_reg[16]_i_1_n_4 ,\cnt_int_reg[16]_i_1_n_5 ,\cnt_int_reg[16]_i_1_n_6 ,\cnt_int_reg[16]_i_1_n_7 }),
        .S({\cnt_int_reg_n_0_[19] ,\cnt_int_reg_n_0_[18] ,\cnt_int_reg_n_0_[17] ,\cnt_int_reg_n_0_[16] }));
  FDRE \cnt_int_reg[17] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[16]_i_1_n_6 ),
        .Q(\cnt_int_reg_n_0_[17] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[18] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[16]_i_1_n_5 ),
        .Q(\cnt_int_reg_n_0_[18] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[19] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[16]_i_1_n_4 ),
        .Q(\cnt_int_reg_n_0_[19] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[1] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[0]_i_3_n_6 ),
        .Q(\cnt_int_reg[2]_0 [0]),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[20] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[20]_i_1_n_7 ),
        .Q(\cnt_int_reg_n_0_[20] ),
        .R(\cnt_int_reg[31]_0 ));
  CARRY4 \cnt_int_reg[20]_i_1 
       (.CI(\cnt_int_reg[16]_i_1_n_0 ),
        .CO({\cnt_int_reg[20]_i_1_n_0 ,\cnt_int_reg[20]_i_1_n_1 ,\cnt_int_reg[20]_i_1_n_2 ,\cnt_int_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_int_reg[20]_i_1_n_4 ,\cnt_int_reg[20]_i_1_n_5 ,\cnt_int_reg[20]_i_1_n_6 ,\cnt_int_reg[20]_i_1_n_7 }),
        .S({\cnt_int_reg_n_0_[23] ,\cnt_int_reg_n_0_[22] ,\cnt_int_reg_n_0_[21] ,\cnt_int_reg_n_0_[20] }));
  FDRE \cnt_int_reg[21] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[20]_i_1_n_6 ),
        .Q(\cnt_int_reg_n_0_[21] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[22] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[20]_i_1_n_5 ),
        .Q(\cnt_int_reg_n_0_[22] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[23] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[20]_i_1_n_4 ),
        .Q(\cnt_int_reg_n_0_[23] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[24] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[24]_i_1_n_7 ),
        .Q(\cnt_int_reg_n_0_[24] ),
        .R(\cnt_int_reg[31]_0 ));
  CARRY4 \cnt_int_reg[24]_i_1 
       (.CI(\cnt_int_reg[20]_i_1_n_0 ),
        .CO({\cnt_int_reg[24]_i_1_n_0 ,\cnt_int_reg[24]_i_1_n_1 ,\cnt_int_reg[24]_i_1_n_2 ,\cnt_int_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_int_reg[24]_i_1_n_4 ,\cnt_int_reg[24]_i_1_n_5 ,\cnt_int_reg[24]_i_1_n_6 ,\cnt_int_reg[24]_i_1_n_7 }),
        .S({\cnt_int_reg_n_0_[27] ,\cnt_int_reg_n_0_[26] ,\cnt_int_reg_n_0_[25] ,\cnt_int_reg_n_0_[24] }));
  FDRE \cnt_int_reg[25] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[24]_i_1_n_6 ),
        .Q(\cnt_int_reg_n_0_[25] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[26] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[24]_i_1_n_5 ),
        .Q(\cnt_int_reg_n_0_[26] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[27] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[24]_i_1_n_4 ),
        .Q(\cnt_int_reg_n_0_[27] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[28] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[28]_i_1_n_7 ),
        .Q(\cnt_int_reg_n_0_[28] ),
        .R(\cnt_int_reg[31]_0 ));
  CARRY4 \cnt_int_reg[28]_i_1 
       (.CI(\cnt_int_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt_int_reg[28]_i_1_CO_UNCONNECTED [3],\cnt_int_reg[28]_i_1_n_1 ,\cnt_int_reg[28]_i_1_n_2 ,\cnt_int_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_int_reg[28]_i_1_n_4 ,\cnt_int_reg[28]_i_1_n_5 ,\cnt_int_reg[28]_i_1_n_6 ,\cnt_int_reg[28]_i_1_n_7 }),
        .S({\cnt_int_reg_n_0_[31] ,\cnt_int_reg_n_0_[30] ,\cnt_int_reg_n_0_[29] ,\cnt_int_reg_n_0_[28] }));
  FDRE \cnt_int_reg[29] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[28]_i_1_n_6 ),
        .Q(\cnt_int_reg_n_0_[29] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[2] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[0]_i_3_n_5 ),
        .Q(\cnt_int_reg[2]_0 [1]),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[30] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[28]_i_1_n_5 ),
        .Q(\cnt_int_reg_n_0_[30] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[31] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[28]_i_1_n_4 ),
        .Q(\cnt_int_reg_n_0_[31] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[3] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[0]_i_3_n_4 ),
        .Q(\cnt_int_reg_n_0_[3] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[4] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[4]_i_1_n_7 ),
        .Q(\cnt_int_reg_n_0_[4] ),
        .R(\cnt_int_reg[31]_0 ));
  CARRY4 \cnt_int_reg[4]_i_1 
       (.CI(\cnt_int_reg[0]_i_3_n_0 ),
        .CO({\cnt_int_reg[4]_i_1_n_0 ,\cnt_int_reg[4]_i_1_n_1 ,\cnt_int_reg[4]_i_1_n_2 ,\cnt_int_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_int_reg[4]_i_1_n_4 ,\cnt_int_reg[4]_i_1_n_5 ,\cnt_int_reg[4]_i_1_n_6 ,\cnt_int_reg[4]_i_1_n_7 }),
        .S({\cnt_int_reg_n_0_[7] ,\cnt_int_reg_n_0_[6] ,\cnt_int_reg_n_0_[5] ,\cnt_int_reg_n_0_[4] }));
  FDRE \cnt_int_reg[5] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[4]_i_1_n_6 ),
        .Q(\cnt_int_reg_n_0_[5] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[6] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[4]_i_1_n_5 ),
        .Q(\cnt_int_reg_n_0_[6] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[7] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[4]_i_1_n_4 ),
        .Q(\cnt_int_reg_n_0_[7] ),
        .R(\cnt_int_reg[31]_0 ));
  FDRE \cnt_int_reg[8] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[8]_i_1_n_7 ),
        .Q(\cnt_int_reg_n_0_[8] ),
        .R(\cnt_int_reg[31]_0 ));
  CARRY4 \cnt_int_reg[8]_i_1 
       (.CI(\cnt_int_reg[4]_i_1_n_0 ),
        .CO({\cnt_int_reg[8]_i_1_n_0 ,\cnt_int_reg[8]_i_1_n_1 ,\cnt_int_reg[8]_i_1_n_2 ,\cnt_int_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_int_reg[8]_i_1_n_4 ,\cnt_int_reg[8]_i_1_n_5 ,\cnt_int_reg[8]_i_1_n_6 ,\cnt_int_reg[8]_i_1_n_7 }),
        .S({\cnt_int_reg_n_0_[11] ,\cnt_int_reg_n_0_[10] ,\cnt_int_reg_n_0_[9] ,\cnt_int_reg_n_0_[8] }));
  FDRE \cnt_int_reg[9] 
       (.C(CLK),
        .CE(\cnt_int_reg[0]_1 ),
        .D(\cnt_int_reg[8]_i_1_n_6 ),
        .Q(\cnt_int_reg_n_0_[9] ),
        .R(\cnt_int_reg[31]_0 ));
  CARRY4 eqOp_carry
       (.CI(1'b0),
        .CO({eqOp_carry_n_0,eqOp_carry_n_1,eqOp_carry_n_2,eqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry_O_UNCONNECTED[3:0]),
        .S({eqOp_carry_i_1_n_0,eqOp_carry_i_2_n_0,eqOp_carry_i_3_n_0,S}));
  CARRY4 eqOp_carry__0
       (.CI(eqOp_carry_n_0),
        .CO({eqOp_carry__0_n_0,eqOp_carry__0_n_1,eqOp_carry__0_n_2,eqOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry__0_O_UNCONNECTED[3:0]),
        .S({eqOp_carry__0_i_1_n_0,eqOp_carry__0_i_2_n_0,eqOp_carry__0_i_3_n_0,eqOp_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__0_i_1
       (.I0(\cnt_int_reg_n_0_[23] ),
        .I1(D[20]),
        .I2(\cnt_int_reg_n_0_[22] ),
        .I3(D[19]),
        .I4(D[18]),
        .I5(\cnt_int_reg_n_0_[21] ),
        .O(eqOp_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__0_i_2
       (.I0(\cnt_int_reg_n_0_[20] ),
        .I1(D[17]),
        .I2(\cnt_int_reg_n_0_[19] ),
        .I3(D[16]),
        .I4(D[15]),
        .I5(\cnt_int_reg_n_0_[18] ),
        .O(eqOp_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__0_i_3
       (.I0(\cnt_int_reg_n_0_[17] ),
        .I1(D[14]),
        .I2(\cnt_int_reg_n_0_[16] ),
        .I3(D[13]),
        .I4(D[12]),
        .I5(\cnt_int_reg_n_0_[15] ),
        .O(eqOp_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__0_i_4
       (.I0(\cnt_int_reg_n_0_[14] ),
        .I1(D[11]),
        .I2(\cnt_int_reg_n_0_[13] ),
        .I3(D[10]),
        .I4(D[9]),
        .I5(\cnt_int_reg_n_0_[12] ),
        .O(eqOp_carry__0_i_4_n_0));
  CARRY4 eqOp_carry__1
       (.CI(eqOp_carry__0_n_0),
        .CO({NLW_eqOp_carry__1_CO_UNCONNECTED[3],E,eqOp_carry__1_n_2,eqOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,eqOp_carry__1_i_1_n_0,eqOp_carry__1_i_2_n_0,eqOp_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    eqOp_carry__1_i_1
       (.I0(\cnt_int_reg_n_0_[31] ),
        .I1(D[28]),
        .I2(\cnt_int_reg_n_0_[30] ),
        .I3(D[27]),
        .O(eqOp_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__1_i_2
       (.I0(\cnt_int_reg_n_0_[29] ),
        .I1(D[26]),
        .I2(\cnt_int_reg_n_0_[28] ),
        .I3(D[25]),
        .I4(D[24]),
        .I5(\cnt_int_reg_n_0_[27] ),
        .O(eqOp_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__1_i_3
       (.I0(\cnt_int_reg_n_0_[26] ),
        .I1(D[23]),
        .I2(\cnt_int_reg_n_0_[25] ),
        .I3(D[22]),
        .I4(D[21]),
        .I5(\cnt_int_reg_n_0_[24] ),
        .O(eqOp_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_1
       (.I0(\cnt_int_reg_n_0_[11] ),
        .I1(D[8]),
        .I2(\cnt_int_reg_n_0_[10] ),
        .I3(D[7]),
        .I4(D[6]),
        .I5(\cnt_int_reg_n_0_[9] ),
        .O(eqOp_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_2
       (.I0(\cnt_int_reg_n_0_[8] ),
        .I1(D[5]),
        .I2(\cnt_int_reg_n_0_[7] ),
        .I3(D[4]),
        .I4(D[3]),
        .I5(\cnt_int_reg_n_0_[6] ),
        .O(eqOp_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_3
       (.I0(\cnt_int_reg_n_0_[5] ),
        .I1(D[2]),
        .I2(\cnt_int_reg_n_0_[4] ),
        .I3(D[1]),
        .I4(D[0]),
        .I5(\cnt_int_reg_n_0_[3] ),
        .O(eqOp_carry_i_3_n_0));
endmodule

(* ORIG_REF_NAME = "profiler" *) 
module system_axi_sbus_bridge_0_0_profiler
   (\sbus_o_5[ack] ,
    \sbus_i_out_reg[addr][15] ,
    \sbus_i_out_reg[addr][11] ,
    \sbus_o_5[rdata] ,
    \sbus_i_out[rd] ,
    clk_o,
    reset_o,
    \sbus_i_out[addr] ,
    \sbus_i_out[we] );
  output \sbus_o_5[ack] ;
  output \sbus_i_out_reg[addr][15] ;
  output \sbus_i_out_reg[addr][11] ;
  output [31:0]\sbus_o_5[rdata] ;
  input \sbus_i_out[rd] ;
  input clk_o;
  input reset_o;
  input [15:0]\sbus_i_out[addr] ;
  input \sbus_i_out[we] ;

  wire [63:32]L;
  wire U_3_i_100_n_0;
  wire U_3_i_101_n_0;
  wire U_3_i_102_n_0;
  wire U_3_i_103_n_0;
  wire U_3_i_104_n_0;
  wire U_3_i_105_n_0;
  wire U_3_i_106_n_0;
  wire U_3_i_107_n_0;
  wire U_3_i_108_n_0;
  wire U_3_i_109_n_0;
  wire U_3_i_110_n_0;
  wire U_3_i_111_n_0;
  wire U_3_i_112_n_0;
  wire U_3_i_113_n_0;
  wire U_3_i_114_n_0;
  wire U_3_i_115_n_0;
  wire U_3_i_116_n_0;
  wire U_3_i_117_n_0;
  wire U_3_i_118_n_0;
  wire U_3_i_119_n_0;
  wire U_3_i_120_n_0;
  wire U_3_i_121_n_0;
  wire U_3_i_122_n_0;
  wire U_3_i_123_n_0;
  wire U_3_i_124_n_0;
  wire U_3_i_125_n_0;
  wire U_3_i_126_n_0;
  wire U_3_i_127_n_0;
  wire U_3_i_128_n_0;
  wire U_3_i_129_n_0;
  wire U_3_i_130_n_0;
  wire U_3_i_131_n_0;
  wire U_3_i_132_n_0;
  wire U_3_i_133_n_0;
  wire U_3_i_134_n_0;
  wire U_3_i_135_n_0;
  wire U_3_i_136_n_0;
  wire U_3_i_137_n_0;
  wire U_3_i_138_n_0;
  wire U_3_i_139_n_0;
  wire U_3_i_140_n_0;
  wire U_3_i_141_n_0;
  wire U_3_i_142_n_0;
  wire U_3_i_143_n_0;
  wire U_3_i_144_n_0;
  wire U_3_i_145_n_0;
  wire U_3_i_146_n_0;
  wire U_3_i_148_n_0;
  wire U_3_i_150_n_0;
  wire U_3_i_151_n_0;
  wire U_3_i_81_n_0;
  wire U_3_i_82_n_0;
  wire U_3_i_83_n_0;
  wire U_3_i_84_n_0;
  wire U_3_i_85_n_0;
  wire U_3_i_86_n_0;
  wire U_3_i_87_n_0;
  wire U_3_i_88_n_0;
  wire U_3_i_89_n_0;
  wire U_3_i_90_n_0;
  wire U_3_i_91_n_0;
  wire U_3_i_92_n_0;
  wire U_3_i_93_n_0;
  wire U_3_i_94_n_0;
  wire U_3_i_95_n_0;
  wire U_3_i_96_n_0;
  wire U_3_i_97_n_0;
  wire U_3_i_98_n_0;
  wire U_3_i_99_n_0;
  wire bus_rd_q_reg_n_0;
  wire clk_o;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[127]_i_3_n_0 ;
  wire \cnt[127]_i_4_n_0 ;
  wire \cnt[128]_i_1_n_0 ;
  wire \cnt[159]_i_3_n_0 ;
  wire \cnt[160]_i_1_n_0 ;
  wire \cnt[191]_i_3_n_0 ;
  wire \cnt[191]_i_4_n_0 ;
  wire \cnt[192]_i_1_n_0 ;
  wire \cnt[31]_i_3_n_0 ;
  wire \cnt[32]_i_1_n_0 ;
  wire \cnt[63]_i_3_n_0 ;
  wire \cnt[63]_i_4_n_0 ;
  wire \cnt[64]_i_1_n_0 ;
  wire \cnt[95]_i_3_n_0 ;
  wire \cnt[96]_i_1_n_0 ;
  wire \cnt_reg[100]_i_1_n_0 ;
  wire \cnt_reg[100]_i_1_n_1 ;
  wire \cnt_reg[100]_i_1_n_2 ;
  wire \cnt_reg[100]_i_1_n_3 ;
  wire \cnt_reg[100]_i_1_n_4 ;
  wire \cnt_reg[100]_i_1_n_5 ;
  wire \cnt_reg[100]_i_1_n_6 ;
  wire \cnt_reg[100]_i_1_n_7 ;
  wire \cnt_reg[104]_i_1_n_0 ;
  wire \cnt_reg[104]_i_1_n_1 ;
  wire \cnt_reg[104]_i_1_n_2 ;
  wire \cnt_reg[104]_i_1_n_3 ;
  wire \cnt_reg[104]_i_1_n_4 ;
  wire \cnt_reg[104]_i_1_n_5 ;
  wire \cnt_reg[104]_i_1_n_6 ;
  wire \cnt_reg[104]_i_1_n_7 ;
  wire \cnt_reg[108]_i_1_n_0 ;
  wire \cnt_reg[108]_i_1_n_1 ;
  wire \cnt_reg[108]_i_1_n_2 ;
  wire \cnt_reg[108]_i_1_n_3 ;
  wire \cnt_reg[108]_i_1_n_4 ;
  wire \cnt_reg[108]_i_1_n_5 ;
  wire \cnt_reg[108]_i_1_n_6 ;
  wire \cnt_reg[108]_i_1_n_7 ;
  wire \cnt_reg[112]_i_1_n_0 ;
  wire \cnt_reg[112]_i_1_n_1 ;
  wire \cnt_reg[112]_i_1_n_2 ;
  wire \cnt_reg[112]_i_1_n_3 ;
  wire \cnt_reg[112]_i_1_n_4 ;
  wire \cnt_reg[112]_i_1_n_5 ;
  wire \cnt_reg[112]_i_1_n_6 ;
  wire \cnt_reg[112]_i_1_n_7 ;
  wire \cnt_reg[116]_i_1_n_0 ;
  wire \cnt_reg[116]_i_1_n_1 ;
  wire \cnt_reg[116]_i_1_n_2 ;
  wire \cnt_reg[116]_i_1_n_3 ;
  wire \cnt_reg[116]_i_1_n_4 ;
  wire \cnt_reg[116]_i_1_n_5 ;
  wire \cnt_reg[116]_i_1_n_6 ;
  wire \cnt_reg[116]_i_1_n_7 ;
  wire \cnt_reg[120]_i_1_n_0 ;
  wire \cnt_reg[120]_i_1_n_1 ;
  wire \cnt_reg[120]_i_1_n_2 ;
  wire \cnt_reg[120]_i_1_n_3 ;
  wire \cnt_reg[120]_i_1_n_4 ;
  wire \cnt_reg[120]_i_1_n_5 ;
  wire \cnt_reg[120]_i_1_n_6 ;
  wire \cnt_reg[120]_i_1_n_7 ;
  wire \cnt_reg[124]_i_1_n_0 ;
  wire \cnt_reg[124]_i_1_n_1 ;
  wire \cnt_reg[124]_i_1_n_2 ;
  wire \cnt_reg[124]_i_1_n_3 ;
  wire \cnt_reg[124]_i_1_n_4 ;
  wire \cnt_reg[124]_i_1_n_5 ;
  wire \cnt_reg[124]_i_1_n_6 ;
  wire \cnt_reg[124]_i_1_n_7 ;
  wire \cnt_reg[127]_i_2_n_2 ;
  wire \cnt_reg[127]_i_2_n_3 ;
  wire \cnt_reg[127]_i_2_n_5 ;
  wire \cnt_reg[127]_i_2_n_6 ;
  wire \cnt_reg[127]_i_2_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[132]_i_1_n_0 ;
  wire \cnt_reg[132]_i_1_n_1 ;
  wire \cnt_reg[132]_i_1_n_2 ;
  wire \cnt_reg[132]_i_1_n_3 ;
  wire \cnt_reg[132]_i_1_n_4 ;
  wire \cnt_reg[132]_i_1_n_5 ;
  wire \cnt_reg[132]_i_1_n_6 ;
  wire \cnt_reg[132]_i_1_n_7 ;
  wire \cnt_reg[136]_i_1_n_0 ;
  wire \cnt_reg[136]_i_1_n_1 ;
  wire \cnt_reg[136]_i_1_n_2 ;
  wire \cnt_reg[136]_i_1_n_3 ;
  wire \cnt_reg[136]_i_1_n_4 ;
  wire \cnt_reg[136]_i_1_n_5 ;
  wire \cnt_reg[136]_i_1_n_6 ;
  wire \cnt_reg[136]_i_1_n_7 ;
  wire \cnt_reg[140]_i_1_n_0 ;
  wire \cnt_reg[140]_i_1_n_1 ;
  wire \cnt_reg[140]_i_1_n_2 ;
  wire \cnt_reg[140]_i_1_n_3 ;
  wire \cnt_reg[140]_i_1_n_4 ;
  wire \cnt_reg[140]_i_1_n_5 ;
  wire \cnt_reg[140]_i_1_n_6 ;
  wire \cnt_reg[140]_i_1_n_7 ;
  wire \cnt_reg[144]_i_1_n_0 ;
  wire \cnt_reg[144]_i_1_n_1 ;
  wire \cnt_reg[144]_i_1_n_2 ;
  wire \cnt_reg[144]_i_1_n_3 ;
  wire \cnt_reg[144]_i_1_n_4 ;
  wire \cnt_reg[144]_i_1_n_5 ;
  wire \cnt_reg[144]_i_1_n_6 ;
  wire \cnt_reg[144]_i_1_n_7 ;
  wire \cnt_reg[148]_i_1_n_0 ;
  wire \cnt_reg[148]_i_1_n_1 ;
  wire \cnt_reg[148]_i_1_n_2 ;
  wire \cnt_reg[148]_i_1_n_3 ;
  wire \cnt_reg[148]_i_1_n_4 ;
  wire \cnt_reg[148]_i_1_n_5 ;
  wire \cnt_reg[148]_i_1_n_6 ;
  wire \cnt_reg[148]_i_1_n_7 ;
  wire \cnt_reg[152]_i_1_n_0 ;
  wire \cnt_reg[152]_i_1_n_1 ;
  wire \cnt_reg[152]_i_1_n_2 ;
  wire \cnt_reg[152]_i_1_n_3 ;
  wire \cnt_reg[152]_i_1_n_4 ;
  wire \cnt_reg[152]_i_1_n_5 ;
  wire \cnt_reg[152]_i_1_n_6 ;
  wire \cnt_reg[152]_i_1_n_7 ;
  wire \cnt_reg[156]_i_1_n_0 ;
  wire \cnt_reg[156]_i_1_n_1 ;
  wire \cnt_reg[156]_i_1_n_2 ;
  wire \cnt_reg[156]_i_1_n_3 ;
  wire \cnt_reg[156]_i_1_n_4 ;
  wire \cnt_reg[156]_i_1_n_5 ;
  wire \cnt_reg[156]_i_1_n_6 ;
  wire \cnt_reg[156]_i_1_n_7 ;
  wire \cnt_reg[159]_i_2_n_2 ;
  wire \cnt_reg[159]_i_2_n_3 ;
  wire \cnt_reg[159]_i_2_n_5 ;
  wire \cnt_reg[159]_i_2_n_6 ;
  wire \cnt_reg[159]_i_2_n_7 ;
  wire \cnt_reg[164]_i_1_n_0 ;
  wire \cnt_reg[164]_i_1_n_1 ;
  wire \cnt_reg[164]_i_1_n_2 ;
  wire \cnt_reg[164]_i_1_n_3 ;
  wire \cnt_reg[164]_i_1_n_4 ;
  wire \cnt_reg[164]_i_1_n_5 ;
  wire \cnt_reg[164]_i_1_n_6 ;
  wire \cnt_reg[164]_i_1_n_7 ;
  wire \cnt_reg[168]_i_1_n_0 ;
  wire \cnt_reg[168]_i_1_n_1 ;
  wire \cnt_reg[168]_i_1_n_2 ;
  wire \cnt_reg[168]_i_1_n_3 ;
  wire \cnt_reg[168]_i_1_n_4 ;
  wire \cnt_reg[168]_i_1_n_5 ;
  wire \cnt_reg[168]_i_1_n_6 ;
  wire \cnt_reg[168]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_0 ;
  wire \cnt_reg[16]_i_1_n_1 ;
  wire \cnt_reg[16]_i_1_n_2 ;
  wire \cnt_reg[16]_i_1_n_3 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[172]_i_1_n_0 ;
  wire \cnt_reg[172]_i_1_n_1 ;
  wire \cnt_reg[172]_i_1_n_2 ;
  wire \cnt_reg[172]_i_1_n_3 ;
  wire \cnt_reg[172]_i_1_n_4 ;
  wire \cnt_reg[172]_i_1_n_5 ;
  wire \cnt_reg[172]_i_1_n_6 ;
  wire \cnt_reg[172]_i_1_n_7 ;
  wire \cnt_reg[176]_i_1_n_0 ;
  wire \cnt_reg[176]_i_1_n_1 ;
  wire \cnt_reg[176]_i_1_n_2 ;
  wire \cnt_reg[176]_i_1_n_3 ;
  wire \cnt_reg[176]_i_1_n_4 ;
  wire \cnt_reg[176]_i_1_n_5 ;
  wire \cnt_reg[176]_i_1_n_6 ;
  wire \cnt_reg[176]_i_1_n_7 ;
  wire \cnt_reg[180]_i_1_n_0 ;
  wire \cnt_reg[180]_i_1_n_1 ;
  wire \cnt_reg[180]_i_1_n_2 ;
  wire \cnt_reg[180]_i_1_n_3 ;
  wire \cnt_reg[180]_i_1_n_4 ;
  wire \cnt_reg[180]_i_1_n_5 ;
  wire \cnt_reg[180]_i_1_n_6 ;
  wire \cnt_reg[180]_i_1_n_7 ;
  wire \cnt_reg[184]_i_1_n_0 ;
  wire \cnt_reg[184]_i_1_n_1 ;
  wire \cnt_reg[184]_i_1_n_2 ;
  wire \cnt_reg[184]_i_1_n_3 ;
  wire \cnt_reg[184]_i_1_n_4 ;
  wire \cnt_reg[184]_i_1_n_5 ;
  wire \cnt_reg[184]_i_1_n_6 ;
  wire \cnt_reg[184]_i_1_n_7 ;
  wire \cnt_reg[188]_i_1_n_0 ;
  wire \cnt_reg[188]_i_1_n_1 ;
  wire \cnt_reg[188]_i_1_n_2 ;
  wire \cnt_reg[188]_i_1_n_3 ;
  wire \cnt_reg[188]_i_1_n_4 ;
  wire \cnt_reg[188]_i_1_n_5 ;
  wire \cnt_reg[188]_i_1_n_6 ;
  wire \cnt_reg[188]_i_1_n_7 ;
  wire \cnt_reg[191]_i_2_n_2 ;
  wire \cnt_reg[191]_i_2_n_3 ;
  wire \cnt_reg[191]_i_2_n_5 ;
  wire \cnt_reg[191]_i_2_n_6 ;
  wire \cnt_reg[191]_i_2_n_7 ;
  wire \cnt_reg[196]_i_1_n_0 ;
  wire \cnt_reg[196]_i_1_n_1 ;
  wire \cnt_reg[196]_i_1_n_2 ;
  wire \cnt_reg[196]_i_1_n_3 ;
  wire \cnt_reg[196]_i_1_n_4 ;
  wire \cnt_reg[196]_i_1_n_5 ;
  wire \cnt_reg[196]_i_1_n_6 ;
  wire \cnt_reg[196]_i_1_n_7 ;
  wire \cnt_reg[200]_i_1_n_0 ;
  wire \cnt_reg[200]_i_1_n_1 ;
  wire \cnt_reg[200]_i_1_n_2 ;
  wire \cnt_reg[200]_i_1_n_3 ;
  wire \cnt_reg[200]_i_1_n_4 ;
  wire \cnt_reg[200]_i_1_n_5 ;
  wire \cnt_reg[200]_i_1_n_6 ;
  wire \cnt_reg[200]_i_1_n_7 ;
  wire \cnt_reg[204]_i_1_n_0 ;
  wire \cnt_reg[204]_i_1_n_1 ;
  wire \cnt_reg[204]_i_1_n_2 ;
  wire \cnt_reg[204]_i_1_n_3 ;
  wire \cnt_reg[204]_i_1_n_4 ;
  wire \cnt_reg[204]_i_1_n_5 ;
  wire \cnt_reg[204]_i_1_n_6 ;
  wire \cnt_reg[204]_i_1_n_7 ;
  wire \cnt_reg[208]_i_1_n_0 ;
  wire \cnt_reg[208]_i_1_n_1 ;
  wire \cnt_reg[208]_i_1_n_2 ;
  wire \cnt_reg[208]_i_1_n_3 ;
  wire \cnt_reg[208]_i_1_n_4 ;
  wire \cnt_reg[208]_i_1_n_5 ;
  wire \cnt_reg[208]_i_1_n_6 ;
  wire \cnt_reg[208]_i_1_n_7 ;
  wire \cnt_reg[20]_i_1_n_0 ;
  wire \cnt_reg[20]_i_1_n_1 ;
  wire \cnt_reg[20]_i_1_n_2 ;
  wire \cnt_reg[20]_i_1_n_3 ;
  wire \cnt_reg[20]_i_1_n_4 ;
  wire \cnt_reg[20]_i_1_n_5 ;
  wire \cnt_reg[20]_i_1_n_6 ;
  wire \cnt_reg[20]_i_1_n_7 ;
  wire \cnt_reg[212]_i_1_n_0 ;
  wire \cnt_reg[212]_i_1_n_1 ;
  wire \cnt_reg[212]_i_1_n_2 ;
  wire \cnt_reg[212]_i_1_n_3 ;
  wire \cnt_reg[212]_i_1_n_4 ;
  wire \cnt_reg[212]_i_1_n_5 ;
  wire \cnt_reg[212]_i_1_n_6 ;
  wire \cnt_reg[212]_i_1_n_7 ;
  wire \cnt_reg[216]_i_1_n_0 ;
  wire \cnt_reg[216]_i_1_n_1 ;
  wire \cnt_reg[216]_i_1_n_2 ;
  wire \cnt_reg[216]_i_1_n_3 ;
  wire \cnt_reg[216]_i_1_n_4 ;
  wire \cnt_reg[216]_i_1_n_5 ;
  wire \cnt_reg[216]_i_1_n_6 ;
  wire \cnt_reg[216]_i_1_n_7 ;
  wire \cnt_reg[220]_i_1_n_0 ;
  wire \cnt_reg[220]_i_1_n_1 ;
  wire \cnt_reg[220]_i_1_n_2 ;
  wire \cnt_reg[220]_i_1_n_3 ;
  wire \cnt_reg[220]_i_1_n_4 ;
  wire \cnt_reg[220]_i_1_n_5 ;
  wire \cnt_reg[220]_i_1_n_6 ;
  wire \cnt_reg[220]_i_1_n_7 ;
  wire \cnt_reg[223]_i_2_n_2 ;
  wire \cnt_reg[223]_i_2_n_3 ;
  wire \cnt_reg[223]_i_2_n_5 ;
  wire \cnt_reg[223]_i_2_n_6 ;
  wire \cnt_reg[223]_i_2_n_7 ;
  wire \cnt_reg[228]_i_1_n_0 ;
  wire \cnt_reg[228]_i_1_n_1 ;
  wire \cnt_reg[228]_i_1_n_2 ;
  wire \cnt_reg[228]_i_1_n_3 ;
  wire \cnt_reg[232]_i_1_n_0 ;
  wire \cnt_reg[232]_i_1_n_1 ;
  wire \cnt_reg[232]_i_1_n_2 ;
  wire \cnt_reg[232]_i_1_n_3 ;
  wire \cnt_reg[236]_i_1_n_0 ;
  wire \cnt_reg[236]_i_1_n_1 ;
  wire \cnt_reg[236]_i_1_n_2 ;
  wire \cnt_reg[236]_i_1_n_3 ;
  wire \cnt_reg[240]_i_1_n_0 ;
  wire \cnt_reg[240]_i_1_n_1 ;
  wire \cnt_reg[240]_i_1_n_2 ;
  wire \cnt_reg[240]_i_1_n_3 ;
  wire \cnt_reg[244]_i_1_n_0 ;
  wire \cnt_reg[244]_i_1_n_1 ;
  wire \cnt_reg[244]_i_1_n_2 ;
  wire \cnt_reg[244]_i_1_n_3 ;
  wire \cnt_reg[248]_i_1_n_0 ;
  wire \cnt_reg[248]_i_1_n_1 ;
  wire \cnt_reg[248]_i_1_n_2 ;
  wire \cnt_reg[248]_i_1_n_3 ;
  wire \cnt_reg[24]_i_1_n_0 ;
  wire \cnt_reg[24]_i_1_n_1 ;
  wire \cnt_reg[24]_i_1_n_2 ;
  wire \cnt_reg[24]_i_1_n_3 ;
  wire \cnt_reg[24]_i_1_n_4 ;
  wire \cnt_reg[24]_i_1_n_5 ;
  wire \cnt_reg[24]_i_1_n_6 ;
  wire \cnt_reg[24]_i_1_n_7 ;
  wire \cnt_reg[252]_i_1_n_0 ;
  wire \cnt_reg[252]_i_1_n_1 ;
  wire \cnt_reg[252]_i_1_n_2 ;
  wire \cnt_reg[252]_i_1_n_3 ;
  wire \cnt_reg[255]_i_2_n_2 ;
  wire \cnt_reg[255]_i_2_n_3 ;
  wire \cnt_reg[28]_i_1_n_0 ;
  wire \cnt_reg[28]_i_1_n_1 ;
  wire \cnt_reg[28]_i_1_n_2 ;
  wire \cnt_reg[28]_i_1_n_3 ;
  wire \cnt_reg[28]_i_1_n_4 ;
  wire \cnt_reg[28]_i_1_n_5 ;
  wire \cnt_reg[28]_i_1_n_6 ;
  wire \cnt_reg[28]_i_1_n_7 ;
  wire \cnt_reg[31]_i_2_n_2 ;
  wire \cnt_reg[31]_i_2_n_3 ;
  wire \cnt_reg[31]_i_2_n_5 ;
  wire \cnt_reg[31]_i_2_n_6 ;
  wire \cnt_reg[31]_i_2_n_7 ;
  wire \cnt_reg[36]_i_1_n_0 ;
  wire \cnt_reg[36]_i_1_n_1 ;
  wire \cnt_reg[36]_i_1_n_2 ;
  wire \cnt_reg[36]_i_1_n_3 ;
  wire \cnt_reg[36]_i_1_n_4 ;
  wire \cnt_reg[36]_i_1_n_5 ;
  wire \cnt_reg[36]_i_1_n_6 ;
  wire \cnt_reg[36]_i_1_n_7 ;
  wire \cnt_reg[40]_i_1_n_0 ;
  wire \cnt_reg[40]_i_1_n_1 ;
  wire \cnt_reg[40]_i_1_n_2 ;
  wire \cnt_reg[40]_i_1_n_3 ;
  wire \cnt_reg[40]_i_1_n_4 ;
  wire \cnt_reg[40]_i_1_n_5 ;
  wire \cnt_reg[40]_i_1_n_6 ;
  wire \cnt_reg[40]_i_1_n_7 ;
  wire \cnt_reg[44]_i_1_n_0 ;
  wire \cnt_reg[44]_i_1_n_1 ;
  wire \cnt_reg[44]_i_1_n_2 ;
  wire \cnt_reg[44]_i_1_n_3 ;
  wire \cnt_reg[44]_i_1_n_4 ;
  wire \cnt_reg[44]_i_1_n_5 ;
  wire \cnt_reg[44]_i_1_n_6 ;
  wire \cnt_reg[44]_i_1_n_7 ;
  wire \cnt_reg[48]_i_1_n_0 ;
  wire \cnt_reg[48]_i_1_n_1 ;
  wire \cnt_reg[48]_i_1_n_2 ;
  wire \cnt_reg[48]_i_1_n_3 ;
  wire \cnt_reg[48]_i_1_n_4 ;
  wire \cnt_reg[48]_i_1_n_5 ;
  wire \cnt_reg[48]_i_1_n_6 ;
  wire \cnt_reg[48]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[52]_i_1_n_0 ;
  wire \cnt_reg[52]_i_1_n_1 ;
  wire \cnt_reg[52]_i_1_n_2 ;
  wire \cnt_reg[52]_i_1_n_3 ;
  wire \cnt_reg[52]_i_1_n_4 ;
  wire \cnt_reg[52]_i_1_n_5 ;
  wire \cnt_reg[52]_i_1_n_6 ;
  wire \cnt_reg[52]_i_1_n_7 ;
  wire \cnt_reg[56]_i_1_n_0 ;
  wire \cnt_reg[56]_i_1_n_1 ;
  wire \cnt_reg[56]_i_1_n_2 ;
  wire \cnt_reg[56]_i_1_n_3 ;
  wire \cnt_reg[56]_i_1_n_4 ;
  wire \cnt_reg[56]_i_1_n_5 ;
  wire \cnt_reg[56]_i_1_n_6 ;
  wire \cnt_reg[56]_i_1_n_7 ;
  wire \cnt_reg[60]_i_1_n_0 ;
  wire \cnt_reg[60]_i_1_n_1 ;
  wire \cnt_reg[60]_i_1_n_2 ;
  wire \cnt_reg[60]_i_1_n_3 ;
  wire \cnt_reg[60]_i_1_n_4 ;
  wire \cnt_reg[60]_i_1_n_5 ;
  wire \cnt_reg[60]_i_1_n_6 ;
  wire \cnt_reg[60]_i_1_n_7 ;
  wire \cnt_reg[63]_i_2_n_2 ;
  wire \cnt_reg[63]_i_2_n_3 ;
  wire \cnt_reg[63]_i_2_n_5 ;
  wire \cnt_reg[63]_i_2_n_6 ;
  wire \cnt_reg[63]_i_2_n_7 ;
  wire \cnt_reg[68]_i_1_n_0 ;
  wire \cnt_reg[68]_i_1_n_1 ;
  wire \cnt_reg[68]_i_1_n_2 ;
  wire \cnt_reg[68]_i_1_n_3 ;
  wire \cnt_reg[68]_i_1_n_4 ;
  wire \cnt_reg[68]_i_1_n_5 ;
  wire \cnt_reg[68]_i_1_n_6 ;
  wire \cnt_reg[68]_i_1_n_7 ;
  wire \cnt_reg[72]_i_1_n_0 ;
  wire \cnt_reg[72]_i_1_n_1 ;
  wire \cnt_reg[72]_i_1_n_2 ;
  wire \cnt_reg[72]_i_1_n_3 ;
  wire \cnt_reg[72]_i_1_n_4 ;
  wire \cnt_reg[72]_i_1_n_5 ;
  wire \cnt_reg[72]_i_1_n_6 ;
  wire \cnt_reg[72]_i_1_n_7 ;
  wire \cnt_reg[76]_i_1_n_0 ;
  wire \cnt_reg[76]_i_1_n_1 ;
  wire \cnt_reg[76]_i_1_n_2 ;
  wire \cnt_reg[76]_i_1_n_3 ;
  wire \cnt_reg[76]_i_1_n_4 ;
  wire \cnt_reg[76]_i_1_n_5 ;
  wire \cnt_reg[76]_i_1_n_6 ;
  wire \cnt_reg[76]_i_1_n_7 ;
  wire \cnt_reg[80]_i_1_n_0 ;
  wire \cnt_reg[80]_i_1_n_1 ;
  wire \cnt_reg[80]_i_1_n_2 ;
  wire \cnt_reg[80]_i_1_n_3 ;
  wire \cnt_reg[80]_i_1_n_4 ;
  wire \cnt_reg[80]_i_1_n_5 ;
  wire \cnt_reg[80]_i_1_n_6 ;
  wire \cnt_reg[80]_i_1_n_7 ;
  wire \cnt_reg[84]_i_1_n_0 ;
  wire \cnt_reg[84]_i_1_n_1 ;
  wire \cnt_reg[84]_i_1_n_2 ;
  wire \cnt_reg[84]_i_1_n_3 ;
  wire \cnt_reg[84]_i_1_n_4 ;
  wire \cnt_reg[84]_i_1_n_5 ;
  wire \cnt_reg[84]_i_1_n_6 ;
  wire \cnt_reg[84]_i_1_n_7 ;
  wire \cnt_reg[88]_i_1_n_0 ;
  wire \cnt_reg[88]_i_1_n_1 ;
  wire \cnt_reg[88]_i_1_n_2 ;
  wire \cnt_reg[88]_i_1_n_3 ;
  wire \cnt_reg[88]_i_1_n_4 ;
  wire \cnt_reg[88]_i_1_n_5 ;
  wire \cnt_reg[88]_i_1_n_6 ;
  wire \cnt_reg[88]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire \cnt_reg[92]_i_1_n_0 ;
  wire \cnt_reg[92]_i_1_n_1 ;
  wire \cnt_reg[92]_i_1_n_2 ;
  wire \cnt_reg[92]_i_1_n_3 ;
  wire \cnt_reg[92]_i_1_n_4 ;
  wire \cnt_reg[92]_i_1_n_5 ;
  wire \cnt_reg[92]_i_1_n_6 ;
  wire \cnt_reg[92]_i_1_n_7 ;
  wire \cnt_reg[95]_i_2_n_2 ;
  wire \cnt_reg[95]_i_2_n_3 ;
  wire \cnt_reg[95]_i_2_n_5 ;
  wire \cnt_reg[95]_i_2_n_6 ;
  wire \cnt_reg[95]_i_2_n_7 ;
  wire \cnt_reg_n_0_[0] ;
  wire \cnt_reg_n_0_[100] ;
  wire \cnt_reg_n_0_[101] ;
  wire \cnt_reg_n_0_[102] ;
  wire \cnt_reg_n_0_[103] ;
  wire \cnt_reg_n_0_[104] ;
  wire \cnt_reg_n_0_[105] ;
  wire \cnt_reg_n_0_[106] ;
  wire \cnt_reg_n_0_[107] ;
  wire \cnt_reg_n_0_[108] ;
  wire \cnt_reg_n_0_[109] ;
  wire \cnt_reg_n_0_[10] ;
  wire \cnt_reg_n_0_[110] ;
  wire \cnt_reg_n_0_[111] ;
  wire \cnt_reg_n_0_[112] ;
  wire \cnt_reg_n_0_[113] ;
  wire \cnt_reg_n_0_[114] ;
  wire \cnt_reg_n_0_[115] ;
  wire \cnt_reg_n_0_[116] ;
  wire \cnt_reg_n_0_[117] ;
  wire \cnt_reg_n_0_[118] ;
  wire \cnt_reg_n_0_[119] ;
  wire \cnt_reg_n_0_[11] ;
  wire \cnt_reg_n_0_[120] ;
  wire \cnt_reg_n_0_[121] ;
  wire \cnt_reg_n_0_[122] ;
  wire \cnt_reg_n_0_[123] ;
  wire \cnt_reg_n_0_[124] ;
  wire \cnt_reg_n_0_[125] ;
  wire \cnt_reg_n_0_[126] ;
  wire \cnt_reg_n_0_[127] ;
  wire \cnt_reg_n_0_[128] ;
  wire \cnt_reg_n_0_[129] ;
  wire \cnt_reg_n_0_[12] ;
  wire \cnt_reg_n_0_[130] ;
  wire \cnt_reg_n_0_[131] ;
  wire \cnt_reg_n_0_[132] ;
  wire \cnt_reg_n_0_[133] ;
  wire \cnt_reg_n_0_[134] ;
  wire \cnt_reg_n_0_[135] ;
  wire \cnt_reg_n_0_[136] ;
  wire \cnt_reg_n_0_[137] ;
  wire \cnt_reg_n_0_[138] ;
  wire \cnt_reg_n_0_[139] ;
  wire \cnt_reg_n_0_[13] ;
  wire \cnt_reg_n_0_[140] ;
  wire \cnt_reg_n_0_[141] ;
  wire \cnt_reg_n_0_[142] ;
  wire \cnt_reg_n_0_[143] ;
  wire \cnt_reg_n_0_[144] ;
  wire \cnt_reg_n_0_[145] ;
  wire \cnt_reg_n_0_[146] ;
  wire \cnt_reg_n_0_[147] ;
  wire \cnt_reg_n_0_[148] ;
  wire \cnt_reg_n_0_[149] ;
  wire \cnt_reg_n_0_[14] ;
  wire \cnt_reg_n_0_[150] ;
  wire \cnt_reg_n_0_[151] ;
  wire \cnt_reg_n_0_[152] ;
  wire \cnt_reg_n_0_[153] ;
  wire \cnt_reg_n_0_[154] ;
  wire \cnt_reg_n_0_[155] ;
  wire \cnt_reg_n_0_[156] ;
  wire \cnt_reg_n_0_[157] ;
  wire \cnt_reg_n_0_[158] ;
  wire \cnt_reg_n_0_[159] ;
  wire \cnt_reg_n_0_[15] ;
  wire \cnt_reg_n_0_[160] ;
  wire \cnt_reg_n_0_[161] ;
  wire \cnt_reg_n_0_[162] ;
  wire \cnt_reg_n_0_[163] ;
  wire \cnt_reg_n_0_[164] ;
  wire \cnt_reg_n_0_[165] ;
  wire \cnt_reg_n_0_[166] ;
  wire \cnt_reg_n_0_[167] ;
  wire \cnt_reg_n_0_[168] ;
  wire \cnt_reg_n_0_[169] ;
  wire \cnt_reg_n_0_[16] ;
  wire \cnt_reg_n_0_[170] ;
  wire \cnt_reg_n_0_[171] ;
  wire \cnt_reg_n_0_[172] ;
  wire \cnt_reg_n_0_[173] ;
  wire \cnt_reg_n_0_[174] ;
  wire \cnt_reg_n_0_[175] ;
  wire \cnt_reg_n_0_[176] ;
  wire \cnt_reg_n_0_[177] ;
  wire \cnt_reg_n_0_[178] ;
  wire \cnt_reg_n_0_[179] ;
  wire \cnt_reg_n_0_[17] ;
  wire \cnt_reg_n_0_[180] ;
  wire \cnt_reg_n_0_[181] ;
  wire \cnt_reg_n_0_[182] ;
  wire \cnt_reg_n_0_[183] ;
  wire \cnt_reg_n_0_[184] ;
  wire \cnt_reg_n_0_[185] ;
  wire \cnt_reg_n_0_[186] ;
  wire \cnt_reg_n_0_[187] ;
  wire \cnt_reg_n_0_[188] ;
  wire \cnt_reg_n_0_[189] ;
  wire \cnt_reg_n_0_[18] ;
  wire \cnt_reg_n_0_[190] ;
  wire \cnt_reg_n_0_[191] ;
  wire \cnt_reg_n_0_[192] ;
  wire \cnt_reg_n_0_[193] ;
  wire \cnt_reg_n_0_[194] ;
  wire \cnt_reg_n_0_[195] ;
  wire \cnt_reg_n_0_[196] ;
  wire \cnt_reg_n_0_[197] ;
  wire \cnt_reg_n_0_[198] ;
  wire \cnt_reg_n_0_[199] ;
  wire \cnt_reg_n_0_[19] ;
  wire \cnt_reg_n_0_[1] ;
  wire \cnt_reg_n_0_[200] ;
  wire \cnt_reg_n_0_[201] ;
  wire \cnt_reg_n_0_[202] ;
  wire \cnt_reg_n_0_[203] ;
  wire \cnt_reg_n_0_[204] ;
  wire \cnt_reg_n_0_[205] ;
  wire \cnt_reg_n_0_[206] ;
  wire \cnt_reg_n_0_[207] ;
  wire \cnt_reg_n_0_[208] ;
  wire \cnt_reg_n_0_[209] ;
  wire \cnt_reg_n_0_[20] ;
  wire \cnt_reg_n_0_[210] ;
  wire \cnt_reg_n_0_[211] ;
  wire \cnt_reg_n_0_[212] ;
  wire \cnt_reg_n_0_[213] ;
  wire \cnt_reg_n_0_[214] ;
  wire \cnt_reg_n_0_[215] ;
  wire \cnt_reg_n_0_[216] ;
  wire \cnt_reg_n_0_[217] ;
  wire \cnt_reg_n_0_[218] ;
  wire \cnt_reg_n_0_[219] ;
  wire \cnt_reg_n_0_[21] ;
  wire \cnt_reg_n_0_[220] ;
  wire \cnt_reg_n_0_[221] ;
  wire \cnt_reg_n_0_[222] ;
  wire \cnt_reg_n_0_[223] ;
  wire \cnt_reg_n_0_[224] ;
  wire \cnt_reg_n_0_[225] ;
  wire \cnt_reg_n_0_[226] ;
  wire \cnt_reg_n_0_[227] ;
  wire \cnt_reg_n_0_[228] ;
  wire \cnt_reg_n_0_[229] ;
  wire \cnt_reg_n_0_[22] ;
  wire \cnt_reg_n_0_[230] ;
  wire \cnt_reg_n_0_[231] ;
  wire \cnt_reg_n_0_[232] ;
  wire \cnt_reg_n_0_[233] ;
  wire \cnt_reg_n_0_[234] ;
  wire \cnt_reg_n_0_[235] ;
  wire \cnt_reg_n_0_[236] ;
  wire \cnt_reg_n_0_[237] ;
  wire \cnt_reg_n_0_[238] ;
  wire \cnt_reg_n_0_[239] ;
  wire \cnt_reg_n_0_[23] ;
  wire \cnt_reg_n_0_[240] ;
  wire \cnt_reg_n_0_[241] ;
  wire \cnt_reg_n_0_[242] ;
  wire \cnt_reg_n_0_[243] ;
  wire \cnt_reg_n_0_[244] ;
  wire \cnt_reg_n_0_[245] ;
  wire \cnt_reg_n_0_[246] ;
  wire \cnt_reg_n_0_[247] ;
  wire \cnt_reg_n_0_[248] ;
  wire \cnt_reg_n_0_[249] ;
  wire \cnt_reg_n_0_[24] ;
  wire \cnt_reg_n_0_[250] ;
  wire \cnt_reg_n_0_[251] ;
  wire \cnt_reg_n_0_[252] ;
  wire \cnt_reg_n_0_[253] ;
  wire \cnt_reg_n_0_[254] ;
  wire \cnt_reg_n_0_[255] ;
  wire \cnt_reg_n_0_[25] ;
  wire \cnt_reg_n_0_[26] ;
  wire \cnt_reg_n_0_[27] ;
  wire \cnt_reg_n_0_[28] ;
  wire \cnt_reg_n_0_[29] ;
  wire \cnt_reg_n_0_[2] ;
  wire \cnt_reg_n_0_[30] ;
  wire \cnt_reg_n_0_[31] ;
  wire \cnt_reg_n_0_[3] ;
  wire \cnt_reg_n_0_[4] ;
  wire \cnt_reg_n_0_[5] ;
  wire \cnt_reg_n_0_[64] ;
  wire \cnt_reg_n_0_[65] ;
  wire \cnt_reg_n_0_[66] ;
  wire \cnt_reg_n_0_[67] ;
  wire \cnt_reg_n_0_[68] ;
  wire \cnt_reg_n_0_[69] ;
  wire \cnt_reg_n_0_[6] ;
  wire \cnt_reg_n_0_[70] ;
  wire \cnt_reg_n_0_[71] ;
  wire \cnt_reg_n_0_[72] ;
  wire \cnt_reg_n_0_[73] ;
  wire \cnt_reg_n_0_[74] ;
  wire \cnt_reg_n_0_[75] ;
  wire \cnt_reg_n_0_[76] ;
  wire \cnt_reg_n_0_[77] ;
  wire \cnt_reg_n_0_[78] ;
  wire \cnt_reg_n_0_[79] ;
  wire \cnt_reg_n_0_[7] ;
  wire \cnt_reg_n_0_[80] ;
  wire \cnt_reg_n_0_[81] ;
  wire \cnt_reg_n_0_[82] ;
  wire \cnt_reg_n_0_[83] ;
  wire \cnt_reg_n_0_[84] ;
  wire \cnt_reg_n_0_[85] ;
  wire \cnt_reg_n_0_[86] ;
  wire \cnt_reg_n_0_[87] ;
  wire \cnt_reg_n_0_[88] ;
  wire \cnt_reg_n_0_[89] ;
  wire \cnt_reg_n_0_[8] ;
  wire \cnt_reg_n_0_[90] ;
  wire \cnt_reg_n_0_[91] ;
  wire \cnt_reg_n_0_[92] ;
  wire \cnt_reg_n_0_[93] ;
  wire \cnt_reg_n_0_[94] ;
  wire \cnt_reg_n_0_[95] ;
  wire \cnt_reg_n_0_[96] ;
  wire \cnt_reg_n_0_[97] ;
  wire \cnt_reg_n_0_[98] ;
  wire \cnt_reg_n_0_[99] ;
  wire \cnt_reg_n_0_[9] ;
  wire [31:0]data0;
  wire [31:0]data1;
  wire [31:0]data2;
  wire [31:0]data3;
  wire [31:0]data4;
  wire [31:0]data5;
  wire [31:0]data6;
  wire p_0_in1_out;
  wire p_1_in;
  wire p_2_in4_out;
  wire p_3_in6_out;
  wire p_4_in;
  wire p_5_in9_out;
  wire p_6_in;
  wire p_7_in12_out;
  wire [255:31]p_8_out;
  wire [255:224]plusOp;
  wire \reg_reg_n_0_[0] ;
  wire \reg_reg_n_0_[10] ;
  wire \reg_reg_n_0_[11] ;
  wire \reg_reg_n_0_[12] ;
  wire \reg_reg_n_0_[13] ;
  wire \reg_reg_n_0_[14] ;
  wire \reg_reg_n_0_[15] ;
  wire \reg_reg_n_0_[16] ;
  wire \reg_reg_n_0_[17] ;
  wire \reg_reg_n_0_[18] ;
  wire \reg_reg_n_0_[19] ;
  wire \reg_reg_n_0_[1] ;
  wire \reg_reg_n_0_[20] ;
  wire \reg_reg_n_0_[21] ;
  wire \reg_reg_n_0_[22] ;
  wire \reg_reg_n_0_[23] ;
  wire \reg_reg_n_0_[24] ;
  wire \reg_reg_n_0_[25] ;
  wire \reg_reg_n_0_[26] ;
  wire \reg_reg_n_0_[27] ;
  wire \reg_reg_n_0_[28] ;
  wire \reg_reg_n_0_[29] ;
  wire \reg_reg_n_0_[2] ;
  wire \reg_reg_n_0_[30] ;
  wire \reg_reg_n_0_[31] ;
  wire \reg_reg_n_0_[3] ;
  wire \reg_reg_n_0_[4] ;
  wire \reg_reg_n_0_[5] ;
  wire \reg_reg_n_0_[6] ;
  wire \reg_reg_n_0_[7] ;
  wire \reg_reg_n_0_[8] ;
  wire \reg_reg_n_0_[9] ;
  wire reset_o;
  wire [15:0]\sbus_i_out[addr] ;
  wire \sbus_i_out[rd] ;
  wire \sbus_i_out[we] ;
  wire \sbus_i_out_reg[addr][11] ;
  wire \sbus_i_out_reg[addr][15] ;
  wire \sbus_o_5[ack] ;
  wire [31:0]\sbus_o_5[rdata] ;
  wire [3:2]\NLW_cnt_reg[127]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[127]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_cnt_reg[159]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[159]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_cnt_reg[191]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[191]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_cnt_reg[223]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[223]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_cnt_reg[255]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[255]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_cnt_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_cnt_reg[63]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[63]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_cnt_reg[95]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[95]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_100
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[23]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[23]),
        .I4(data2[23]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_100_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_101
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[22] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[22]),
        .I4(data5[22]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_101_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_102
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[22]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[22]),
        .I4(data2[22]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_102_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_103
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[21] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[21]),
        .I4(data5[21]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_103_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_104
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[21]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[21]),
        .I4(data2[21]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_104_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_105
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[20] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[20]),
        .I4(data5[20]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_105_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_106
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[20]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[20]),
        .I4(data2[20]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_106_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_107
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[19] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[19]),
        .I4(data5[19]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_107_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_108
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[19]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[19]),
        .I4(data2[19]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_108_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_109
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[18] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[18]),
        .I4(data5[18]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_109_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_110
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[18]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[18]),
        .I4(data2[18]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_110_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_111
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[17] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[17]),
        .I4(data5[17]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_111_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_112
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[17]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[17]),
        .I4(data2[17]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_112_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_113
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[16] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[16]),
        .I4(data5[16]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_113_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_114
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[16]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[16]),
        .I4(data2[16]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_114_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_115
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[15] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[15]),
        .I4(data5[15]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_115_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_116
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[15]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[15]),
        .I4(data2[15]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_116_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_117
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[14] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[14]),
        .I4(data5[14]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_117_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_118
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[14]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[14]),
        .I4(data2[14]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_118_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_119
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[13] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[13]),
        .I4(data5[13]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_119_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_120
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[13]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[13]),
        .I4(data2[13]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_120_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_121
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[12] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[12]),
        .I4(data5[12]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_121_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_122
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[12]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[12]),
        .I4(data2[12]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_122_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_123
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[11] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[11]),
        .I4(data5[11]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_123_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_124
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[11]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[11]),
        .I4(data2[11]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_124_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_125
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[10] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[10]),
        .I4(data5[10]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_125_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_126
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[10]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[10]),
        .I4(data2[10]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_126_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_127
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[9] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[9]),
        .I4(data5[9]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_127_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_128
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[9]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[9]),
        .I4(data2[9]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_128_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_129
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[8] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[8]),
        .I4(data5[8]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_129_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_130
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[8]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[8]),
        .I4(data2[8]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_130_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_131
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[7] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[7]),
        .I4(data5[7]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_131_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_132
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[7]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[7]),
        .I4(data2[7]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_132_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_133
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[6] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[6]),
        .I4(data5[6]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_133_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_134
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[6]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[6]),
        .I4(data2[6]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_134_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_135
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[5] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[5]),
        .I4(data5[5]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_135_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_136
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[5]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[5]),
        .I4(data2[5]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_136_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_137
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[4] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[4]),
        .I4(data5[4]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_137_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_138
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[4]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[4]),
        .I4(data2[4]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_138_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_139
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[3] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[3]),
        .I4(data5[3]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_139_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_140
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[3]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[3]),
        .I4(data2[3]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_140_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_141
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[2] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[2]),
        .I4(data5[2]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_141_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_142
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[2]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[2]),
        .I4(data2[2]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_142_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_143
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[1] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[1]),
        .I4(data5[1]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_143_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_144
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[1]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[1]),
        .I4(data2[1]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_144_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_145
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[0] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[0]),
        .I4(data5[0]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_145_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_146
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[0]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[0]),
        .I4(data2[0]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_146_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    U_3_i_147
       (.I0(\sbus_i_out[addr] [15]),
        .I1(\sbus_i_out[addr] [14]),
        .I2(\sbus_i_out[addr] [13]),
        .I3(\sbus_i_out[addr] [12]),
        .O(\sbus_i_out_reg[addr][15] ));
  LUT4 #(
    .INIT(16'h0001)) 
    U_3_i_148
       (.I0(\sbus_i_out[addr] [6]),
        .I1(\sbus_i_out[addr] [5]),
        .I2(\sbus_i_out[addr] [4]),
        .I3(\sbus_i_out[addr] [3]),
        .O(U_3_i_148_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    U_3_i_149
       (.I0(\sbus_i_out[addr] [11]),
        .I1(\sbus_i_out[addr] [10]),
        .I2(\sbus_i_out[addr] [8]),
        .I3(\sbus_i_out[addr] [7]),
        .O(\sbus_i_out_reg[addr][11] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    U_3_i_150
       (.I0(\sbus_i_out[addr] [9]),
        .I1(\sbus_i_out_reg[addr][11] ),
        .I2(U_3_i_148_n_0),
        .I3(\sbus_i_out_reg[addr][15] ),
        .I4(\sbus_i_out[addr] [0]),
        .O(U_3_i_150_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    U_3_i_151
       (.I0(\sbus_i_out[addr] [9]),
        .I1(\sbus_i_out_reg[addr][11] ),
        .I2(U_3_i_148_n_0),
        .I3(\sbus_i_out_reg[addr][15] ),
        .I4(\sbus_i_out[addr] [0]),
        .O(U_3_i_151_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_34
       (.I0(U_3_i_81_n_0),
        .I1(data1[31]),
        .I2(U_3_i_82_n_0),
        .I3(data0[31]),
        .I4(U_3_i_83_n_0),
        .I5(U_3_i_84_n_0),
        .O(\sbus_o_5[rdata] [31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_35
       (.I0(U_3_i_81_n_0),
        .I1(data1[30]),
        .I2(U_3_i_82_n_0),
        .I3(data0[30]),
        .I4(U_3_i_85_n_0),
        .I5(U_3_i_86_n_0),
        .O(\sbus_o_5[rdata] [30]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_36
       (.I0(U_3_i_81_n_0),
        .I1(data1[29]),
        .I2(U_3_i_82_n_0),
        .I3(data0[29]),
        .I4(U_3_i_87_n_0),
        .I5(U_3_i_88_n_0),
        .O(\sbus_o_5[rdata] [29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_37
       (.I0(U_3_i_81_n_0),
        .I1(data1[28]),
        .I2(U_3_i_82_n_0),
        .I3(data0[28]),
        .I4(U_3_i_89_n_0),
        .I5(U_3_i_90_n_0),
        .O(\sbus_o_5[rdata] [28]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_38
       (.I0(U_3_i_81_n_0),
        .I1(data1[27]),
        .I2(U_3_i_82_n_0),
        .I3(data0[27]),
        .I4(U_3_i_91_n_0),
        .I5(U_3_i_92_n_0),
        .O(\sbus_o_5[rdata] [27]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_39
       (.I0(U_3_i_81_n_0),
        .I1(data1[26]),
        .I2(U_3_i_82_n_0),
        .I3(data0[26]),
        .I4(U_3_i_93_n_0),
        .I5(U_3_i_94_n_0),
        .O(\sbus_o_5[rdata] [26]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_40
       (.I0(U_3_i_81_n_0),
        .I1(data1[25]),
        .I2(U_3_i_82_n_0),
        .I3(data0[25]),
        .I4(U_3_i_95_n_0),
        .I5(U_3_i_96_n_0),
        .O(\sbus_o_5[rdata] [25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_41
       (.I0(U_3_i_81_n_0),
        .I1(data1[24]),
        .I2(U_3_i_82_n_0),
        .I3(data0[24]),
        .I4(U_3_i_97_n_0),
        .I5(U_3_i_98_n_0),
        .O(\sbus_o_5[rdata] [24]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_42
       (.I0(U_3_i_81_n_0),
        .I1(data1[23]),
        .I2(U_3_i_82_n_0),
        .I3(data0[23]),
        .I4(U_3_i_99_n_0),
        .I5(U_3_i_100_n_0),
        .O(\sbus_o_5[rdata] [23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_43
       (.I0(U_3_i_81_n_0),
        .I1(data1[22]),
        .I2(U_3_i_82_n_0),
        .I3(data0[22]),
        .I4(U_3_i_101_n_0),
        .I5(U_3_i_102_n_0),
        .O(\sbus_o_5[rdata] [22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_44
       (.I0(U_3_i_81_n_0),
        .I1(data1[21]),
        .I2(U_3_i_82_n_0),
        .I3(data0[21]),
        .I4(U_3_i_103_n_0),
        .I5(U_3_i_104_n_0),
        .O(\sbus_o_5[rdata] [21]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_45
       (.I0(U_3_i_81_n_0),
        .I1(data1[20]),
        .I2(U_3_i_82_n_0),
        .I3(data0[20]),
        .I4(U_3_i_105_n_0),
        .I5(U_3_i_106_n_0),
        .O(\sbus_o_5[rdata] [20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_46
       (.I0(U_3_i_81_n_0),
        .I1(data1[19]),
        .I2(U_3_i_82_n_0),
        .I3(data0[19]),
        .I4(U_3_i_107_n_0),
        .I5(U_3_i_108_n_0),
        .O(\sbus_o_5[rdata] [19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_47
       (.I0(U_3_i_81_n_0),
        .I1(data1[18]),
        .I2(U_3_i_82_n_0),
        .I3(data0[18]),
        .I4(U_3_i_109_n_0),
        .I5(U_3_i_110_n_0),
        .O(\sbus_o_5[rdata] [18]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_48
       (.I0(U_3_i_81_n_0),
        .I1(data1[17]),
        .I2(U_3_i_82_n_0),
        .I3(data0[17]),
        .I4(U_3_i_111_n_0),
        .I5(U_3_i_112_n_0),
        .O(\sbus_o_5[rdata] [17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_49
       (.I0(U_3_i_81_n_0),
        .I1(data1[16]),
        .I2(U_3_i_82_n_0),
        .I3(data0[16]),
        .I4(U_3_i_113_n_0),
        .I5(U_3_i_114_n_0),
        .O(\sbus_o_5[rdata] [16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_50
       (.I0(U_3_i_81_n_0),
        .I1(data1[15]),
        .I2(U_3_i_82_n_0),
        .I3(data0[15]),
        .I4(U_3_i_115_n_0),
        .I5(U_3_i_116_n_0),
        .O(\sbus_o_5[rdata] [15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_51
       (.I0(U_3_i_81_n_0),
        .I1(data1[14]),
        .I2(U_3_i_82_n_0),
        .I3(data0[14]),
        .I4(U_3_i_117_n_0),
        .I5(U_3_i_118_n_0),
        .O(\sbus_o_5[rdata] [14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_52
       (.I0(U_3_i_81_n_0),
        .I1(data1[13]),
        .I2(U_3_i_82_n_0),
        .I3(data0[13]),
        .I4(U_3_i_119_n_0),
        .I5(U_3_i_120_n_0),
        .O(\sbus_o_5[rdata] [13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_53
       (.I0(U_3_i_81_n_0),
        .I1(data1[12]),
        .I2(U_3_i_82_n_0),
        .I3(data0[12]),
        .I4(U_3_i_121_n_0),
        .I5(U_3_i_122_n_0),
        .O(\sbus_o_5[rdata] [12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_54
       (.I0(U_3_i_81_n_0),
        .I1(data1[11]),
        .I2(U_3_i_82_n_0),
        .I3(data0[11]),
        .I4(U_3_i_123_n_0),
        .I5(U_3_i_124_n_0),
        .O(\sbus_o_5[rdata] [11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_55
       (.I0(U_3_i_81_n_0),
        .I1(data1[10]),
        .I2(U_3_i_82_n_0),
        .I3(data0[10]),
        .I4(U_3_i_125_n_0),
        .I5(U_3_i_126_n_0),
        .O(\sbus_o_5[rdata] [10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_56
       (.I0(U_3_i_81_n_0),
        .I1(data1[9]),
        .I2(U_3_i_82_n_0),
        .I3(data0[9]),
        .I4(U_3_i_127_n_0),
        .I5(U_3_i_128_n_0),
        .O(\sbus_o_5[rdata] [9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_57
       (.I0(U_3_i_81_n_0),
        .I1(data1[8]),
        .I2(U_3_i_82_n_0),
        .I3(data0[8]),
        .I4(U_3_i_129_n_0),
        .I5(U_3_i_130_n_0),
        .O(\sbus_o_5[rdata] [8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_58
       (.I0(U_3_i_81_n_0),
        .I1(data1[7]),
        .I2(U_3_i_82_n_0),
        .I3(data0[7]),
        .I4(U_3_i_131_n_0),
        .I5(U_3_i_132_n_0),
        .O(\sbus_o_5[rdata] [7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_59
       (.I0(U_3_i_81_n_0),
        .I1(data1[6]),
        .I2(U_3_i_82_n_0),
        .I3(data0[6]),
        .I4(U_3_i_133_n_0),
        .I5(U_3_i_134_n_0),
        .O(\sbus_o_5[rdata] [6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_60
       (.I0(U_3_i_81_n_0),
        .I1(data1[5]),
        .I2(U_3_i_82_n_0),
        .I3(data0[5]),
        .I4(U_3_i_135_n_0),
        .I5(U_3_i_136_n_0),
        .O(\sbus_o_5[rdata] [5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_61
       (.I0(U_3_i_81_n_0),
        .I1(data1[4]),
        .I2(U_3_i_82_n_0),
        .I3(data0[4]),
        .I4(U_3_i_137_n_0),
        .I5(U_3_i_138_n_0),
        .O(\sbus_o_5[rdata] [4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_62
       (.I0(U_3_i_81_n_0),
        .I1(data1[3]),
        .I2(U_3_i_82_n_0),
        .I3(data0[3]),
        .I4(U_3_i_139_n_0),
        .I5(U_3_i_140_n_0),
        .O(\sbus_o_5[rdata] [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_63
       (.I0(U_3_i_81_n_0),
        .I1(data1[2]),
        .I2(U_3_i_82_n_0),
        .I3(data0[2]),
        .I4(U_3_i_141_n_0),
        .I5(U_3_i_142_n_0),
        .O(\sbus_o_5[rdata] [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_64
       (.I0(U_3_i_81_n_0),
        .I1(data1[1]),
        .I2(U_3_i_82_n_0),
        .I3(data0[1]),
        .I4(U_3_i_143_n_0),
        .I5(U_3_i_144_n_0),
        .O(\sbus_o_5[rdata] [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_65
       (.I0(U_3_i_81_n_0),
        .I1(data1[0]),
        .I2(U_3_i_82_n_0),
        .I3(data0[0]),
        .I4(U_3_i_145_n_0),
        .I5(U_3_i_146_n_0),
        .O(\sbus_o_5[rdata] [0]));
  LUT6 #(
    .INIT(64'h8000800080000000)) 
    U_3_i_66
       (.I0(\sbus_i_out_reg[addr][15] ),
        .I1(U_3_i_148_n_0),
        .I2(\sbus_i_out_reg[addr][11] ),
        .I3(\sbus_i_out[addr] [9]),
        .I4(\sbus_i_out[we] ),
        .I5(bus_rd_q_reg_n_0),
        .O(\sbus_o_5[ack] ));
  LUT3 #(
    .INIT(8'h80)) 
    U_3_i_81
       (.I0(\sbus_i_out[addr] [2]),
        .I1(\sbus_i_out[addr] [1]),
        .I2(U_3_i_150_n_0),
        .O(U_3_i_81_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    U_3_i_82
       (.I0(\sbus_i_out[addr] [2]),
        .I1(\sbus_i_out[addr] [1]),
        .I2(U_3_i_151_n_0),
        .O(U_3_i_82_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_83
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[31] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[31]),
        .I4(data5[31]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_83_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_84
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[31]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[31]),
        .I4(data2[31]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_84_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_85
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[30] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[30]),
        .I4(data5[30]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_85_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_86
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[30]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[30]),
        .I4(data2[30]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_86_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_87
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[29] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[29]),
        .I4(data5[29]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_87_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_88
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[29]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[29]),
        .I4(data2[29]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_88_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_89
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[28] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[28]),
        .I4(data5[28]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_89_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_90
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[28]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[28]),
        .I4(data2[28]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_90_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_91
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[27] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[27]),
        .I4(data5[27]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_91_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_92
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[27]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[27]),
        .I4(data2[27]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_92_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_93
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[26] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[26]),
        .I4(data5[26]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_93_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_94
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[26]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[26]),
        .I4(data2[26]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_94_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_95
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[25] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[25]),
        .I4(data5[25]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_95_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_96
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[25]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[25]),
        .I4(data2[25]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_96_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_97
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[24] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[24]),
        .I4(data5[24]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_97_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_98
       (.I0(\cnt[127]_i_3_n_0 ),
        .I1(data4[24]),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(data3[24]),
        .I4(data2[24]),
        .I5(\cnt[191]_i_3_n_0 ),
        .O(U_3_i_98_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_99
       (.I0(\cnt[31]_i_3_n_0 ),
        .I1(\reg_reg_n_0_[23] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(data6[23]),
        .I4(data5[23]),
        .I5(\cnt[95]_i_3_n_0 ),
        .O(U_3_i_99_n_0));
  FDRE bus_rd_q_reg
       (.C(clk_o),
        .CE(1'b1),
        .D(\sbus_i_out[rd] ),
        .Q(bus_rd_q_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(\cnt_reg_n_0_[0] ),
        .O(\cnt[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \cnt[127]_i_1 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(\cnt[127]_i_3_n_0 ),
        .I3(reset_o),
        .O(p_8_out[127]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[127]_i_3 
       (.I0(\cnt[127]_i_4_n_0 ),
        .I1(\sbus_i_out[addr] [0]),
        .I2(\sbus_i_out_reg[addr][15] ),
        .I3(U_3_i_148_n_0),
        .I4(\sbus_i_out_reg[addr][11] ),
        .I5(\sbus_i_out[addr] [9]),
        .O(\cnt[127]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[127]_i_4 
       (.I0(\sbus_i_out[addr] [1]),
        .I1(\sbus_i_out[addr] [2]),
        .O(\cnt[127]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[128]_i_1 
       (.I0(\cnt_reg_n_0_[128] ),
        .O(\cnt[128]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \cnt[159]_i_1 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(\cnt[159]_i_3_n_0 ),
        .I3(reset_o),
        .O(p_8_out[159]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \cnt[159]_i_3 
       (.I0(\cnt[191]_i_4_n_0 ),
        .I1(\sbus_i_out[addr] [0]),
        .I2(\sbus_i_out_reg[addr][15] ),
        .I3(U_3_i_148_n_0),
        .I4(\sbus_i_out_reg[addr][11] ),
        .I5(\sbus_i_out[addr] [9]),
        .O(\cnt[159]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[160]_i_1 
       (.I0(\cnt_reg_n_0_[160] ),
        .O(\cnt[160]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \cnt[191]_i_1 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(\cnt[191]_i_3_n_0 ),
        .I3(reset_o),
        .O(p_8_out[191]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[191]_i_3 
       (.I0(\cnt[191]_i_4_n_0 ),
        .I1(\sbus_i_out[addr] [0]),
        .I2(\sbus_i_out_reg[addr][15] ),
        .I3(U_3_i_148_n_0),
        .I4(\sbus_i_out_reg[addr][11] ),
        .I5(\sbus_i_out[addr] [9]),
        .O(\cnt[191]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt[191]_i_4 
       (.I0(\sbus_i_out[addr] [2]),
        .I1(\sbus_i_out[addr] [1]),
        .O(\cnt[191]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[192]_i_1 
       (.I0(\cnt_reg_n_0_[192] ),
        .O(\cnt[192]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF08)) 
    \cnt[223]_i_1 
       (.I0(U_3_i_81_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(bus_rd_q_reg_n_0),
        .I3(reset_o),
        .O(p_8_out[223]));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[224]_i_1 
       (.I0(\cnt_reg_n_0_[224] ),
        .O(plusOp[224]));
  LUT4 #(
    .INIT(16'hFF08)) 
    \cnt[255]_i_1 
       (.I0(U_3_i_82_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(bus_rd_q_reg_n_0),
        .I3(reset_o),
        .O(p_8_out[255]));
  LUT4 #(
    .INIT(16'hFF40)) 
    \cnt[31]_i_1 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(\cnt[31]_i_3_n_0 ),
        .I3(reset_o),
        .O(p_8_out[31]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \cnt[31]_i_3 
       (.I0(\cnt[63]_i_4_n_0 ),
        .I1(\sbus_i_out[addr] [0]),
        .I2(\sbus_i_out_reg[addr][15] ),
        .I3(U_3_i_148_n_0),
        .I4(\sbus_i_out_reg[addr][11] ),
        .I5(\sbus_i_out[addr] [9]),
        .O(\cnt[31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[32]_i_1 
       (.I0(L[32]),
        .O(\cnt[32]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \cnt[63]_i_1 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .I3(reset_o),
        .O(p_8_out[63]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[63]_i_3 
       (.I0(\cnt[63]_i_4_n_0 ),
        .I1(\sbus_i_out[addr] [0]),
        .I2(\sbus_i_out_reg[addr][15] ),
        .I3(U_3_i_148_n_0),
        .I4(\sbus_i_out_reg[addr][11] ),
        .I5(\sbus_i_out[addr] [9]),
        .O(\cnt[63]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt[63]_i_4 
       (.I0(\sbus_i_out[addr] [1]),
        .I1(\sbus_i_out[addr] [2]),
        .O(\cnt[63]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[64]_i_1 
       (.I0(\cnt_reg_n_0_[64] ),
        .O(\cnt[64]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \cnt[95]_i_1 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(\cnt[95]_i_3_n_0 ),
        .I3(reset_o),
        .O(p_8_out[95]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \cnt[95]_i_3 
       (.I0(\cnt[127]_i_4_n_0 ),
        .I1(\sbus_i_out[addr] [0]),
        .I2(\sbus_i_out_reg[addr][15] ),
        .I3(U_3_i_148_n_0),
        .I4(\sbus_i_out_reg[addr][11] ),
        .I5(\sbus_i_out[addr] [9]),
        .O(\cnt[95]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[96]_i_1 
       (.I0(\cnt_reg_n_0_[96] ),
        .O(\cnt[96]_i_1_n_0 ));
  FDRE \cnt_reg[0] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[0] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[100] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[100]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[100] ),
        .R(p_8_out[127]));
  CARRY4 \cnt_reg[100]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[100]_i_1_n_0 ,\cnt_reg[100]_i_1_n_1 ,\cnt_reg[100]_i_1_n_2 ,\cnt_reg[100]_i_1_n_3 }),
        .CYINIT(\cnt_reg_n_0_[96] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[100]_i_1_n_4 ,\cnt_reg[100]_i_1_n_5 ,\cnt_reg[100]_i_1_n_6 ,\cnt_reg[100]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[100] ,\cnt_reg_n_0_[99] ,\cnt_reg_n_0_[98] ,\cnt_reg_n_0_[97] }));
  FDRE \cnt_reg[101] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[104]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[101] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[102] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[104]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[102] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[103] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[104]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[103] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[104] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[104]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[104] ),
        .R(p_8_out[127]));
  CARRY4 \cnt_reg[104]_i_1 
       (.CI(\cnt_reg[100]_i_1_n_0 ),
        .CO({\cnt_reg[104]_i_1_n_0 ,\cnt_reg[104]_i_1_n_1 ,\cnt_reg[104]_i_1_n_2 ,\cnt_reg[104]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[104]_i_1_n_4 ,\cnt_reg[104]_i_1_n_5 ,\cnt_reg[104]_i_1_n_6 ,\cnt_reg[104]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[104] ,\cnt_reg_n_0_[103] ,\cnt_reg_n_0_[102] ,\cnt_reg_n_0_[101] }));
  FDRE \cnt_reg[105] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[108]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[105] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[106] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[108]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[106] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[107] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[108]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[107] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[108] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[108]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[108] ),
        .R(p_8_out[127]));
  CARRY4 \cnt_reg[108]_i_1 
       (.CI(\cnt_reg[104]_i_1_n_0 ),
        .CO({\cnt_reg[108]_i_1_n_0 ,\cnt_reg[108]_i_1_n_1 ,\cnt_reg[108]_i_1_n_2 ,\cnt_reg[108]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[108]_i_1_n_4 ,\cnt_reg[108]_i_1_n_5 ,\cnt_reg[108]_i_1_n_6 ,\cnt_reg[108]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[108] ,\cnt_reg_n_0_[107] ,\cnt_reg_n_0_[106] ,\cnt_reg_n_0_[105] }));
  FDRE \cnt_reg[109] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[112]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[109] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[10] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[10] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[110] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[112]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[110] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[111] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[112]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[111] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[112] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[112]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[112] ),
        .R(p_8_out[127]));
  CARRY4 \cnt_reg[112]_i_1 
       (.CI(\cnt_reg[108]_i_1_n_0 ),
        .CO({\cnt_reg[112]_i_1_n_0 ,\cnt_reg[112]_i_1_n_1 ,\cnt_reg[112]_i_1_n_2 ,\cnt_reg[112]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[112]_i_1_n_4 ,\cnt_reg[112]_i_1_n_5 ,\cnt_reg[112]_i_1_n_6 ,\cnt_reg[112]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[112] ,\cnt_reg_n_0_[111] ,\cnt_reg_n_0_[110] ,\cnt_reg_n_0_[109] }));
  FDRE \cnt_reg[113] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[116]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[113] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[114] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[116]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[114] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[115] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[116]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[115] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[116] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[116]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[116] ),
        .R(p_8_out[127]));
  CARRY4 \cnt_reg[116]_i_1 
       (.CI(\cnt_reg[112]_i_1_n_0 ),
        .CO({\cnt_reg[116]_i_1_n_0 ,\cnt_reg[116]_i_1_n_1 ,\cnt_reg[116]_i_1_n_2 ,\cnt_reg[116]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[116]_i_1_n_4 ,\cnt_reg[116]_i_1_n_5 ,\cnt_reg[116]_i_1_n_6 ,\cnt_reg[116]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[116] ,\cnt_reg_n_0_[115] ,\cnt_reg_n_0_[114] ,\cnt_reg_n_0_[113] }));
  FDRE \cnt_reg[117] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[120]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[117] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[118] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[120]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[118] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[119] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[120]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[119] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[11] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[11] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[120] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[120]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[120] ),
        .R(p_8_out[127]));
  CARRY4 \cnt_reg[120]_i_1 
       (.CI(\cnt_reg[116]_i_1_n_0 ),
        .CO({\cnt_reg[120]_i_1_n_0 ,\cnt_reg[120]_i_1_n_1 ,\cnt_reg[120]_i_1_n_2 ,\cnt_reg[120]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[120]_i_1_n_4 ,\cnt_reg[120]_i_1_n_5 ,\cnt_reg[120]_i_1_n_6 ,\cnt_reg[120]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[120] ,\cnt_reg_n_0_[119] ,\cnt_reg_n_0_[118] ,\cnt_reg_n_0_[117] }));
  FDRE \cnt_reg[121] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[124]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[121] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[122] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[124]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[122] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[123] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[124]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[123] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[124] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[124]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[124] ),
        .R(p_8_out[127]));
  CARRY4 \cnt_reg[124]_i_1 
       (.CI(\cnt_reg[120]_i_1_n_0 ),
        .CO({\cnt_reg[124]_i_1_n_0 ,\cnt_reg[124]_i_1_n_1 ,\cnt_reg[124]_i_1_n_2 ,\cnt_reg[124]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[124]_i_1_n_4 ,\cnt_reg[124]_i_1_n_5 ,\cnt_reg[124]_i_1_n_6 ,\cnt_reg[124]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[124] ,\cnt_reg_n_0_[123] ,\cnt_reg_n_0_[122] ,\cnt_reg_n_0_[121] }));
  FDRE \cnt_reg[125] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[127]_i_2_n_7 ),
        .Q(\cnt_reg_n_0_[125] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[126] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[127]_i_2_n_6 ),
        .Q(\cnt_reg_n_0_[126] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[127] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[127]_i_2_n_5 ),
        .Q(\cnt_reg_n_0_[127] ),
        .R(p_8_out[127]));
  CARRY4 \cnt_reg[127]_i_2 
       (.CI(\cnt_reg[124]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[127]_i_2_CO_UNCONNECTED [3:2],\cnt_reg[127]_i_2_n_2 ,\cnt_reg[127]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[127]_i_2_O_UNCONNECTED [3],\cnt_reg[127]_i_2_n_5 ,\cnt_reg[127]_i_2_n_6 ,\cnt_reg[127]_i_2_n_7 }),
        .S({1'b0,\cnt_reg_n_0_[127] ,\cnt_reg_n_0_[126] ,\cnt_reg_n_0_[125] }));
  FDRE \cnt_reg[128] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt[128]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[128] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[129] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[132]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[129] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[12] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[12] ),
        .R(p_8_out[31]));
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[12] ,\cnt_reg_n_0_[11] ,\cnt_reg_n_0_[10] ,\cnt_reg_n_0_[9] }));
  FDRE \cnt_reg[130] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[132]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[130] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[131] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[132]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[131] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[132] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[132]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[132] ),
        .R(p_8_out[159]));
  CARRY4 \cnt_reg[132]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[132]_i_1_n_0 ,\cnt_reg[132]_i_1_n_1 ,\cnt_reg[132]_i_1_n_2 ,\cnt_reg[132]_i_1_n_3 }),
        .CYINIT(\cnt_reg_n_0_[128] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[132]_i_1_n_4 ,\cnt_reg[132]_i_1_n_5 ,\cnt_reg[132]_i_1_n_6 ,\cnt_reg[132]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[132] ,\cnt_reg_n_0_[131] ,\cnt_reg_n_0_[130] ,\cnt_reg_n_0_[129] }));
  FDRE \cnt_reg[133] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[136]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[133] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[134] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[136]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[134] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[135] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[136]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[135] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[136] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[136]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[136] ),
        .R(p_8_out[159]));
  CARRY4 \cnt_reg[136]_i_1 
       (.CI(\cnt_reg[132]_i_1_n_0 ),
        .CO({\cnt_reg[136]_i_1_n_0 ,\cnt_reg[136]_i_1_n_1 ,\cnt_reg[136]_i_1_n_2 ,\cnt_reg[136]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[136]_i_1_n_4 ,\cnt_reg[136]_i_1_n_5 ,\cnt_reg[136]_i_1_n_6 ,\cnt_reg[136]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[136] ,\cnt_reg_n_0_[135] ,\cnt_reg_n_0_[134] ,\cnt_reg_n_0_[133] }));
  FDRE \cnt_reg[137] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[140]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[137] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[138] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[140]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[138] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[139] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[140]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[139] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[13] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[13] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[140] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[140]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[140] ),
        .R(p_8_out[159]));
  CARRY4 \cnt_reg[140]_i_1 
       (.CI(\cnt_reg[136]_i_1_n_0 ),
        .CO({\cnt_reg[140]_i_1_n_0 ,\cnt_reg[140]_i_1_n_1 ,\cnt_reg[140]_i_1_n_2 ,\cnt_reg[140]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[140]_i_1_n_4 ,\cnt_reg[140]_i_1_n_5 ,\cnt_reg[140]_i_1_n_6 ,\cnt_reg[140]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[140] ,\cnt_reg_n_0_[139] ,\cnt_reg_n_0_[138] ,\cnt_reg_n_0_[137] }));
  FDRE \cnt_reg[141] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[144]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[141] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[142] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[144]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[142] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[143] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[144]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[143] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[144] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[144]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[144] ),
        .R(p_8_out[159]));
  CARRY4 \cnt_reg[144]_i_1 
       (.CI(\cnt_reg[140]_i_1_n_0 ),
        .CO({\cnt_reg[144]_i_1_n_0 ,\cnt_reg[144]_i_1_n_1 ,\cnt_reg[144]_i_1_n_2 ,\cnt_reg[144]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[144]_i_1_n_4 ,\cnt_reg[144]_i_1_n_5 ,\cnt_reg[144]_i_1_n_6 ,\cnt_reg[144]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[144] ,\cnt_reg_n_0_[143] ,\cnt_reg_n_0_[142] ,\cnt_reg_n_0_[141] }));
  FDRE \cnt_reg[145] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[148]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[145] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[146] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[148]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[146] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[147] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[148]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[147] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[148] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[148]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[148] ),
        .R(p_8_out[159]));
  CARRY4 \cnt_reg[148]_i_1 
       (.CI(\cnt_reg[144]_i_1_n_0 ),
        .CO({\cnt_reg[148]_i_1_n_0 ,\cnt_reg[148]_i_1_n_1 ,\cnt_reg[148]_i_1_n_2 ,\cnt_reg[148]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[148]_i_1_n_4 ,\cnt_reg[148]_i_1_n_5 ,\cnt_reg[148]_i_1_n_6 ,\cnt_reg[148]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[148] ,\cnt_reg_n_0_[147] ,\cnt_reg_n_0_[146] ,\cnt_reg_n_0_[145] }));
  FDRE \cnt_reg[149] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[152]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[149] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[14] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[14] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[150] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[152]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[150] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[151] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[152]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[151] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[152] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[152]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[152] ),
        .R(p_8_out[159]));
  CARRY4 \cnt_reg[152]_i_1 
       (.CI(\cnt_reg[148]_i_1_n_0 ),
        .CO({\cnt_reg[152]_i_1_n_0 ,\cnt_reg[152]_i_1_n_1 ,\cnt_reg[152]_i_1_n_2 ,\cnt_reg[152]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[152]_i_1_n_4 ,\cnt_reg[152]_i_1_n_5 ,\cnt_reg[152]_i_1_n_6 ,\cnt_reg[152]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[152] ,\cnt_reg_n_0_[151] ,\cnt_reg_n_0_[150] ,\cnt_reg_n_0_[149] }));
  FDRE \cnt_reg[153] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[156]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[153] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[154] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[156]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[154] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[155] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[156]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[155] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[156] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[156]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[156] ),
        .R(p_8_out[159]));
  CARRY4 \cnt_reg[156]_i_1 
       (.CI(\cnt_reg[152]_i_1_n_0 ),
        .CO({\cnt_reg[156]_i_1_n_0 ,\cnt_reg[156]_i_1_n_1 ,\cnt_reg[156]_i_1_n_2 ,\cnt_reg[156]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[156]_i_1_n_4 ,\cnt_reg[156]_i_1_n_5 ,\cnt_reg[156]_i_1_n_6 ,\cnt_reg[156]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[156] ,\cnt_reg_n_0_[155] ,\cnt_reg_n_0_[154] ,\cnt_reg_n_0_[153] }));
  FDRE \cnt_reg[157] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[159]_i_2_n_7 ),
        .Q(\cnt_reg_n_0_[157] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[158] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[159]_i_2_n_6 ),
        .Q(\cnt_reg_n_0_[158] ),
        .R(p_8_out[159]));
  FDRE \cnt_reg[159] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[159]_i_2_n_5 ),
        .Q(\cnt_reg_n_0_[159] ),
        .R(p_8_out[159]));
  CARRY4 \cnt_reg[159]_i_2 
       (.CI(\cnt_reg[156]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[159]_i_2_CO_UNCONNECTED [3:2],\cnt_reg[159]_i_2_n_2 ,\cnt_reg[159]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[159]_i_2_O_UNCONNECTED [3],\cnt_reg[159]_i_2_n_5 ,\cnt_reg[159]_i_2_n_6 ,\cnt_reg[159]_i_2_n_7 }),
        .S({1'b0,\cnt_reg_n_0_[159] ,\cnt_reg_n_0_[158] ,\cnt_reg_n_0_[157] }));
  FDRE \cnt_reg[15] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[15] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[160] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt[160]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[160] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[161] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[164]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[161] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[162] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[164]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[162] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[163] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[164]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[163] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[164] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[164]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[164] ),
        .R(p_8_out[191]));
  CARRY4 \cnt_reg[164]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[164]_i_1_n_0 ,\cnt_reg[164]_i_1_n_1 ,\cnt_reg[164]_i_1_n_2 ,\cnt_reg[164]_i_1_n_3 }),
        .CYINIT(\cnt_reg_n_0_[160] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[164]_i_1_n_4 ,\cnt_reg[164]_i_1_n_5 ,\cnt_reg[164]_i_1_n_6 ,\cnt_reg[164]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[164] ,\cnt_reg_n_0_[163] ,\cnt_reg_n_0_[162] ,\cnt_reg_n_0_[161] }));
  FDRE \cnt_reg[165] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[168]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[165] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[166] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[168]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[166] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[167] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[168]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[167] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[168] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[168]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[168] ),
        .R(p_8_out[191]));
  CARRY4 \cnt_reg[168]_i_1 
       (.CI(\cnt_reg[164]_i_1_n_0 ),
        .CO({\cnt_reg[168]_i_1_n_0 ,\cnt_reg[168]_i_1_n_1 ,\cnt_reg[168]_i_1_n_2 ,\cnt_reg[168]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[168]_i_1_n_4 ,\cnt_reg[168]_i_1_n_5 ,\cnt_reg[168]_i_1_n_6 ,\cnt_reg[168]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[168] ,\cnt_reg_n_0_[167] ,\cnt_reg_n_0_[166] ,\cnt_reg_n_0_[165] }));
  FDRE \cnt_reg[169] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[172]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[169] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[16] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[16] ),
        .R(p_8_out[31]));
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO({\cnt_reg[16]_i_1_n_0 ,\cnt_reg[16]_i_1_n_1 ,\cnt_reg[16]_i_1_n_2 ,\cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[16] ,\cnt_reg_n_0_[15] ,\cnt_reg_n_0_[14] ,\cnt_reg_n_0_[13] }));
  FDRE \cnt_reg[170] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[172]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[170] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[171] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[172]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[171] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[172] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[172]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[172] ),
        .R(p_8_out[191]));
  CARRY4 \cnt_reg[172]_i_1 
       (.CI(\cnt_reg[168]_i_1_n_0 ),
        .CO({\cnt_reg[172]_i_1_n_0 ,\cnt_reg[172]_i_1_n_1 ,\cnt_reg[172]_i_1_n_2 ,\cnt_reg[172]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[172]_i_1_n_4 ,\cnt_reg[172]_i_1_n_5 ,\cnt_reg[172]_i_1_n_6 ,\cnt_reg[172]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[172] ,\cnt_reg_n_0_[171] ,\cnt_reg_n_0_[170] ,\cnt_reg_n_0_[169] }));
  FDRE \cnt_reg[173] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[176]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[173] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[174] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[176]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[174] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[175] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[176]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[175] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[176] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[176]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[176] ),
        .R(p_8_out[191]));
  CARRY4 \cnt_reg[176]_i_1 
       (.CI(\cnt_reg[172]_i_1_n_0 ),
        .CO({\cnt_reg[176]_i_1_n_0 ,\cnt_reg[176]_i_1_n_1 ,\cnt_reg[176]_i_1_n_2 ,\cnt_reg[176]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[176]_i_1_n_4 ,\cnt_reg[176]_i_1_n_5 ,\cnt_reg[176]_i_1_n_6 ,\cnt_reg[176]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[176] ,\cnt_reg_n_0_[175] ,\cnt_reg_n_0_[174] ,\cnt_reg_n_0_[173] }));
  FDRE \cnt_reg[177] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[180]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[177] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[178] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[180]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[178] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[179] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[180]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[179] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[17] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[17] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[180] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[180]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[180] ),
        .R(p_8_out[191]));
  CARRY4 \cnt_reg[180]_i_1 
       (.CI(\cnt_reg[176]_i_1_n_0 ),
        .CO({\cnt_reg[180]_i_1_n_0 ,\cnt_reg[180]_i_1_n_1 ,\cnt_reg[180]_i_1_n_2 ,\cnt_reg[180]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[180]_i_1_n_4 ,\cnt_reg[180]_i_1_n_5 ,\cnt_reg[180]_i_1_n_6 ,\cnt_reg[180]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[180] ,\cnt_reg_n_0_[179] ,\cnt_reg_n_0_[178] ,\cnt_reg_n_0_[177] }));
  FDRE \cnt_reg[181] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[184]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[181] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[182] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[184]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[182] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[183] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[184]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[183] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[184] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[184]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[184] ),
        .R(p_8_out[191]));
  CARRY4 \cnt_reg[184]_i_1 
       (.CI(\cnt_reg[180]_i_1_n_0 ),
        .CO({\cnt_reg[184]_i_1_n_0 ,\cnt_reg[184]_i_1_n_1 ,\cnt_reg[184]_i_1_n_2 ,\cnt_reg[184]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[184]_i_1_n_4 ,\cnt_reg[184]_i_1_n_5 ,\cnt_reg[184]_i_1_n_6 ,\cnt_reg[184]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[184] ,\cnt_reg_n_0_[183] ,\cnt_reg_n_0_[182] ,\cnt_reg_n_0_[181] }));
  FDRE \cnt_reg[185] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[188]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[185] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[186] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[188]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[186] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[187] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[188]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[187] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[188] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[188]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[188] ),
        .R(p_8_out[191]));
  CARRY4 \cnt_reg[188]_i_1 
       (.CI(\cnt_reg[184]_i_1_n_0 ),
        .CO({\cnt_reg[188]_i_1_n_0 ,\cnt_reg[188]_i_1_n_1 ,\cnt_reg[188]_i_1_n_2 ,\cnt_reg[188]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[188]_i_1_n_4 ,\cnt_reg[188]_i_1_n_5 ,\cnt_reg[188]_i_1_n_6 ,\cnt_reg[188]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[188] ,\cnt_reg_n_0_[187] ,\cnt_reg_n_0_[186] ,\cnt_reg_n_0_[185] }));
  FDRE \cnt_reg[189] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[191]_i_2_n_7 ),
        .Q(\cnt_reg_n_0_[189] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[18] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[18] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[190] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[191]_i_2_n_6 ),
        .Q(\cnt_reg_n_0_[190] ),
        .R(p_8_out[191]));
  FDRE \cnt_reg[191] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[191]_i_2_n_5 ),
        .Q(\cnt_reg_n_0_[191] ),
        .R(p_8_out[191]));
  CARRY4 \cnt_reg[191]_i_2 
       (.CI(\cnt_reg[188]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[191]_i_2_CO_UNCONNECTED [3:2],\cnt_reg[191]_i_2_n_2 ,\cnt_reg[191]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[191]_i_2_O_UNCONNECTED [3],\cnt_reg[191]_i_2_n_5 ,\cnt_reg[191]_i_2_n_6 ,\cnt_reg[191]_i_2_n_7 }),
        .S({1'b0,\cnt_reg_n_0_[191] ,\cnt_reg_n_0_[190] ,\cnt_reg_n_0_[189] }));
  FDRE \cnt_reg[192] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt[192]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[192] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[193] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[196]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[193] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[194] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[196]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[194] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[195] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[196]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[195] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[196] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[196]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[196] ),
        .R(p_8_out[223]));
  CARRY4 \cnt_reg[196]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[196]_i_1_n_0 ,\cnt_reg[196]_i_1_n_1 ,\cnt_reg[196]_i_1_n_2 ,\cnt_reg[196]_i_1_n_3 }),
        .CYINIT(\cnt_reg_n_0_[192] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[196]_i_1_n_4 ,\cnt_reg[196]_i_1_n_5 ,\cnt_reg[196]_i_1_n_6 ,\cnt_reg[196]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[196] ,\cnt_reg_n_0_[195] ,\cnt_reg_n_0_[194] ,\cnt_reg_n_0_[193] }));
  FDRE \cnt_reg[197] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[200]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[197] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[198] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[200]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[198] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[199] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[200]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[199] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[19] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[19] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[1] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[1] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[200] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[200]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[200] ),
        .R(p_8_out[223]));
  CARRY4 \cnt_reg[200]_i_1 
       (.CI(\cnt_reg[196]_i_1_n_0 ),
        .CO({\cnt_reg[200]_i_1_n_0 ,\cnt_reg[200]_i_1_n_1 ,\cnt_reg[200]_i_1_n_2 ,\cnt_reg[200]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[200]_i_1_n_4 ,\cnt_reg[200]_i_1_n_5 ,\cnt_reg[200]_i_1_n_6 ,\cnt_reg[200]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[200] ,\cnt_reg_n_0_[199] ,\cnt_reg_n_0_[198] ,\cnt_reg_n_0_[197] }));
  FDRE \cnt_reg[201] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[204]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[201] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[202] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[204]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[202] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[203] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[204]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[203] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[204] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[204]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[204] ),
        .R(p_8_out[223]));
  CARRY4 \cnt_reg[204]_i_1 
       (.CI(\cnt_reg[200]_i_1_n_0 ),
        .CO({\cnt_reg[204]_i_1_n_0 ,\cnt_reg[204]_i_1_n_1 ,\cnt_reg[204]_i_1_n_2 ,\cnt_reg[204]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[204]_i_1_n_4 ,\cnt_reg[204]_i_1_n_5 ,\cnt_reg[204]_i_1_n_6 ,\cnt_reg[204]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[204] ,\cnt_reg_n_0_[203] ,\cnt_reg_n_0_[202] ,\cnt_reg_n_0_[201] }));
  FDRE \cnt_reg[205] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[208]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[205] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[206] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[208]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[206] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[207] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[208]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[207] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[208] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[208]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[208] ),
        .R(p_8_out[223]));
  CARRY4 \cnt_reg[208]_i_1 
       (.CI(\cnt_reg[204]_i_1_n_0 ),
        .CO({\cnt_reg[208]_i_1_n_0 ,\cnt_reg[208]_i_1_n_1 ,\cnt_reg[208]_i_1_n_2 ,\cnt_reg[208]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[208]_i_1_n_4 ,\cnt_reg[208]_i_1_n_5 ,\cnt_reg[208]_i_1_n_6 ,\cnt_reg[208]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[208] ,\cnt_reg_n_0_[207] ,\cnt_reg_n_0_[206] ,\cnt_reg_n_0_[205] }));
  FDRE \cnt_reg[209] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[212]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[209] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[20] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[20]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[20] ),
        .R(p_8_out[31]));
  CARRY4 \cnt_reg[20]_i_1 
       (.CI(\cnt_reg[16]_i_1_n_0 ),
        .CO({\cnt_reg[20]_i_1_n_0 ,\cnt_reg[20]_i_1_n_1 ,\cnt_reg[20]_i_1_n_2 ,\cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[20]_i_1_n_4 ,\cnt_reg[20]_i_1_n_5 ,\cnt_reg[20]_i_1_n_6 ,\cnt_reg[20]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[20] ,\cnt_reg_n_0_[19] ,\cnt_reg_n_0_[18] ,\cnt_reg_n_0_[17] }));
  FDRE \cnt_reg[210] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[212]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[210] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[211] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[212]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[211] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[212] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[212]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[212] ),
        .R(p_8_out[223]));
  CARRY4 \cnt_reg[212]_i_1 
       (.CI(\cnt_reg[208]_i_1_n_0 ),
        .CO({\cnt_reg[212]_i_1_n_0 ,\cnt_reg[212]_i_1_n_1 ,\cnt_reg[212]_i_1_n_2 ,\cnt_reg[212]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[212]_i_1_n_4 ,\cnt_reg[212]_i_1_n_5 ,\cnt_reg[212]_i_1_n_6 ,\cnt_reg[212]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[212] ,\cnt_reg_n_0_[211] ,\cnt_reg_n_0_[210] ,\cnt_reg_n_0_[209] }));
  FDRE \cnt_reg[213] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[216]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[213] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[214] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[216]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[214] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[215] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[216]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[215] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[216] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[216]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[216] ),
        .R(p_8_out[223]));
  CARRY4 \cnt_reg[216]_i_1 
       (.CI(\cnt_reg[212]_i_1_n_0 ),
        .CO({\cnt_reg[216]_i_1_n_0 ,\cnt_reg[216]_i_1_n_1 ,\cnt_reg[216]_i_1_n_2 ,\cnt_reg[216]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[216]_i_1_n_4 ,\cnt_reg[216]_i_1_n_5 ,\cnt_reg[216]_i_1_n_6 ,\cnt_reg[216]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[216] ,\cnt_reg_n_0_[215] ,\cnt_reg_n_0_[214] ,\cnt_reg_n_0_[213] }));
  FDRE \cnt_reg[217] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[220]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[217] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[218] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[220]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[218] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[219] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[220]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[219] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[21] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[24]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[21] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[220] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[220]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[220] ),
        .R(p_8_out[223]));
  CARRY4 \cnt_reg[220]_i_1 
       (.CI(\cnt_reg[216]_i_1_n_0 ),
        .CO({\cnt_reg[220]_i_1_n_0 ,\cnt_reg[220]_i_1_n_1 ,\cnt_reg[220]_i_1_n_2 ,\cnt_reg[220]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[220]_i_1_n_4 ,\cnt_reg[220]_i_1_n_5 ,\cnt_reg[220]_i_1_n_6 ,\cnt_reg[220]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[220] ,\cnt_reg_n_0_[219] ,\cnt_reg_n_0_[218] ,\cnt_reg_n_0_[217] }));
  FDRE \cnt_reg[221] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[223]_i_2_n_7 ),
        .Q(\cnt_reg_n_0_[221] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[222] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[223]_i_2_n_6 ),
        .Q(\cnt_reg_n_0_[222] ),
        .R(p_8_out[223]));
  FDRE \cnt_reg[223] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[223]_i_2_n_5 ),
        .Q(\cnt_reg_n_0_[223] ),
        .R(p_8_out[223]));
  CARRY4 \cnt_reg[223]_i_2 
       (.CI(\cnt_reg[220]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[223]_i_2_CO_UNCONNECTED [3:2],\cnt_reg[223]_i_2_n_2 ,\cnt_reg[223]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[223]_i_2_O_UNCONNECTED [3],\cnt_reg[223]_i_2_n_5 ,\cnt_reg[223]_i_2_n_6 ,\cnt_reg[223]_i_2_n_7 }),
        .S({1'b0,\cnt_reg_n_0_[223] ,\cnt_reg_n_0_[222] ,\cnt_reg_n_0_[221] }));
  FDRE \cnt_reg[224] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[224]),
        .Q(\cnt_reg_n_0_[224] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[225] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[225]),
        .Q(\cnt_reg_n_0_[225] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[226] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[226]),
        .Q(\cnt_reg_n_0_[226] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[227] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[227]),
        .Q(\cnt_reg_n_0_[227] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[228] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[228]),
        .Q(\cnt_reg_n_0_[228] ),
        .R(p_8_out[255]));
  CARRY4 \cnt_reg[228]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[228]_i_1_n_0 ,\cnt_reg[228]_i_1_n_1 ,\cnt_reg[228]_i_1_n_2 ,\cnt_reg[228]_i_1_n_3 }),
        .CYINIT(\cnt_reg_n_0_[224] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[228:225]),
        .S({\cnt_reg_n_0_[228] ,\cnt_reg_n_0_[227] ,\cnt_reg_n_0_[226] ,\cnt_reg_n_0_[225] }));
  FDRE \cnt_reg[229] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[229]),
        .Q(\cnt_reg_n_0_[229] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[22] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[24]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[22] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[230] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[230]),
        .Q(\cnt_reg_n_0_[230] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[231] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[231]),
        .Q(\cnt_reg_n_0_[231] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[232] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[232]),
        .Q(\cnt_reg_n_0_[232] ),
        .R(p_8_out[255]));
  CARRY4 \cnt_reg[232]_i_1 
       (.CI(\cnt_reg[228]_i_1_n_0 ),
        .CO({\cnt_reg[232]_i_1_n_0 ,\cnt_reg[232]_i_1_n_1 ,\cnt_reg[232]_i_1_n_2 ,\cnt_reg[232]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[232:229]),
        .S({\cnt_reg_n_0_[232] ,\cnt_reg_n_0_[231] ,\cnt_reg_n_0_[230] ,\cnt_reg_n_0_[229] }));
  FDRE \cnt_reg[233] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[233]),
        .Q(\cnt_reg_n_0_[233] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[234] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[234]),
        .Q(\cnt_reg_n_0_[234] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[235] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[235]),
        .Q(\cnt_reg_n_0_[235] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[236] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[236]),
        .Q(\cnt_reg_n_0_[236] ),
        .R(p_8_out[255]));
  CARRY4 \cnt_reg[236]_i_1 
       (.CI(\cnt_reg[232]_i_1_n_0 ),
        .CO({\cnt_reg[236]_i_1_n_0 ,\cnt_reg[236]_i_1_n_1 ,\cnt_reg[236]_i_1_n_2 ,\cnt_reg[236]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[236:233]),
        .S({\cnt_reg_n_0_[236] ,\cnt_reg_n_0_[235] ,\cnt_reg_n_0_[234] ,\cnt_reg_n_0_[233] }));
  FDRE \cnt_reg[237] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[237]),
        .Q(\cnt_reg_n_0_[237] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[238] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[238]),
        .Q(\cnt_reg_n_0_[238] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[239] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[239]),
        .Q(\cnt_reg_n_0_[239] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[23] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[24]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[23] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[240] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[240]),
        .Q(\cnt_reg_n_0_[240] ),
        .R(p_8_out[255]));
  CARRY4 \cnt_reg[240]_i_1 
       (.CI(\cnt_reg[236]_i_1_n_0 ),
        .CO({\cnt_reg[240]_i_1_n_0 ,\cnt_reg[240]_i_1_n_1 ,\cnt_reg[240]_i_1_n_2 ,\cnt_reg[240]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[240:237]),
        .S({\cnt_reg_n_0_[240] ,\cnt_reg_n_0_[239] ,\cnt_reg_n_0_[238] ,\cnt_reg_n_0_[237] }));
  FDRE \cnt_reg[241] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[241]),
        .Q(\cnt_reg_n_0_[241] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[242] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[242]),
        .Q(\cnt_reg_n_0_[242] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[243] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[243]),
        .Q(\cnt_reg_n_0_[243] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[244] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[244]),
        .Q(\cnt_reg_n_0_[244] ),
        .R(p_8_out[255]));
  CARRY4 \cnt_reg[244]_i_1 
       (.CI(\cnt_reg[240]_i_1_n_0 ),
        .CO({\cnt_reg[244]_i_1_n_0 ,\cnt_reg[244]_i_1_n_1 ,\cnt_reg[244]_i_1_n_2 ,\cnt_reg[244]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[244:241]),
        .S({\cnt_reg_n_0_[244] ,\cnt_reg_n_0_[243] ,\cnt_reg_n_0_[242] ,\cnt_reg_n_0_[241] }));
  FDRE \cnt_reg[245] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[245]),
        .Q(\cnt_reg_n_0_[245] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[246] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[246]),
        .Q(\cnt_reg_n_0_[246] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[247] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[247]),
        .Q(\cnt_reg_n_0_[247] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[248] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[248]),
        .Q(\cnt_reg_n_0_[248] ),
        .R(p_8_out[255]));
  CARRY4 \cnt_reg[248]_i_1 
       (.CI(\cnt_reg[244]_i_1_n_0 ),
        .CO({\cnt_reg[248]_i_1_n_0 ,\cnt_reg[248]_i_1_n_1 ,\cnt_reg[248]_i_1_n_2 ,\cnt_reg[248]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[248:245]),
        .S({\cnt_reg_n_0_[248] ,\cnt_reg_n_0_[247] ,\cnt_reg_n_0_[246] ,\cnt_reg_n_0_[245] }));
  FDRE \cnt_reg[249] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[249]),
        .Q(\cnt_reg_n_0_[249] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[24] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[24]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[24] ),
        .R(p_8_out[31]));
  CARRY4 \cnt_reg[24]_i_1 
       (.CI(\cnt_reg[20]_i_1_n_0 ),
        .CO({\cnt_reg[24]_i_1_n_0 ,\cnt_reg[24]_i_1_n_1 ,\cnt_reg[24]_i_1_n_2 ,\cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[24]_i_1_n_4 ,\cnt_reg[24]_i_1_n_5 ,\cnt_reg[24]_i_1_n_6 ,\cnt_reg[24]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[24] ,\cnt_reg_n_0_[23] ,\cnt_reg_n_0_[22] ,\cnt_reg_n_0_[21] }));
  FDRE \cnt_reg[250] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[250]),
        .Q(\cnt_reg_n_0_[250] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[251] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[251]),
        .Q(\cnt_reg_n_0_[251] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[252] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[252]),
        .Q(\cnt_reg_n_0_[252] ),
        .R(p_8_out[255]));
  CARRY4 \cnt_reg[252]_i_1 
       (.CI(\cnt_reg[248]_i_1_n_0 ),
        .CO({\cnt_reg[252]_i_1_n_0 ,\cnt_reg[252]_i_1_n_1 ,\cnt_reg[252]_i_1_n_2 ,\cnt_reg[252]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[252:249]),
        .S({\cnt_reg_n_0_[252] ,\cnt_reg_n_0_[251] ,\cnt_reg_n_0_[250] ,\cnt_reg_n_0_[249] }));
  FDRE \cnt_reg[253] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[253]),
        .Q(\cnt_reg_n_0_[253] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[254] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[254]),
        .Q(\cnt_reg_n_0_[254] ),
        .R(p_8_out[255]));
  FDRE \cnt_reg[255] 
       (.C(clk_o),
        .CE(1'b1),
        .D(plusOp[255]),
        .Q(\cnt_reg_n_0_[255] ),
        .R(p_8_out[255]));
  CARRY4 \cnt_reg[255]_i_2 
       (.CI(\cnt_reg[252]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[255]_i_2_CO_UNCONNECTED [3:2],\cnt_reg[255]_i_2_n_2 ,\cnt_reg[255]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[255]_i_2_O_UNCONNECTED [3],plusOp[255:253]}),
        .S({1'b0,\cnt_reg_n_0_[255] ,\cnt_reg_n_0_[254] ,\cnt_reg_n_0_[253] }));
  FDRE \cnt_reg[25] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[28]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[25] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[26] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[28]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[26] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[27] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[28]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[27] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[28] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[28]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[28] ),
        .R(p_8_out[31]));
  CARRY4 \cnt_reg[28]_i_1 
       (.CI(\cnt_reg[24]_i_1_n_0 ),
        .CO({\cnt_reg[28]_i_1_n_0 ,\cnt_reg[28]_i_1_n_1 ,\cnt_reg[28]_i_1_n_2 ,\cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[28]_i_1_n_4 ,\cnt_reg[28]_i_1_n_5 ,\cnt_reg[28]_i_1_n_6 ,\cnt_reg[28]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[28] ,\cnt_reg_n_0_[27] ,\cnt_reg_n_0_[26] ,\cnt_reg_n_0_[25] }));
  FDRE \cnt_reg[29] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[31]_i_2_n_7 ),
        .Q(\cnt_reg_n_0_[29] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[2] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[2] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[30] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[31]_i_2_n_6 ),
        .Q(\cnt_reg_n_0_[30] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[31] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[31]_i_2_n_5 ),
        .Q(\cnt_reg_n_0_[31] ),
        .R(p_8_out[31]));
  CARRY4 \cnt_reg[31]_i_2 
       (.CI(\cnt_reg[28]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[31]_i_2_CO_UNCONNECTED [3:2],\cnt_reg[31]_i_2_n_2 ,\cnt_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[31]_i_2_O_UNCONNECTED [3],\cnt_reg[31]_i_2_n_5 ,\cnt_reg[31]_i_2_n_6 ,\cnt_reg[31]_i_2_n_7 }),
        .S({1'b0,\cnt_reg_n_0_[31] ,\cnt_reg_n_0_[30] ,\cnt_reg_n_0_[29] }));
  FDRE \cnt_reg[32] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt[32]_i_1_n_0 ),
        .Q(L[32]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[33] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[36]_i_1_n_7 ),
        .Q(L[33]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[34] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[36]_i_1_n_6 ),
        .Q(L[34]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[35] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[36]_i_1_n_5 ),
        .Q(L[35]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[36] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[36]_i_1_n_4 ),
        .Q(L[36]),
        .R(p_8_out[63]));
  CARRY4 \cnt_reg[36]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[36]_i_1_n_0 ,\cnt_reg[36]_i_1_n_1 ,\cnt_reg[36]_i_1_n_2 ,\cnt_reg[36]_i_1_n_3 }),
        .CYINIT(L[32]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[36]_i_1_n_4 ,\cnt_reg[36]_i_1_n_5 ,\cnt_reg[36]_i_1_n_6 ,\cnt_reg[36]_i_1_n_7 }),
        .S(L[36:33]));
  FDRE \cnt_reg[37] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[40]_i_1_n_7 ),
        .Q(L[37]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[38] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[40]_i_1_n_6 ),
        .Q(L[38]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[39] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[40]_i_1_n_5 ),
        .Q(L[39]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[3] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[3] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[40] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[40]_i_1_n_4 ),
        .Q(L[40]),
        .R(p_8_out[63]));
  CARRY4 \cnt_reg[40]_i_1 
       (.CI(\cnt_reg[36]_i_1_n_0 ),
        .CO({\cnt_reg[40]_i_1_n_0 ,\cnt_reg[40]_i_1_n_1 ,\cnt_reg[40]_i_1_n_2 ,\cnt_reg[40]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[40]_i_1_n_4 ,\cnt_reg[40]_i_1_n_5 ,\cnt_reg[40]_i_1_n_6 ,\cnt_reg[40]_i_1_n_7 }),
        .S(L[40:37]));
  FDRE \cnt_reg[41] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[44]_i_1_n_7 ),
        .Q(L[41]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[42] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[44]_i_1_n_6 ),
        .Q(L[42]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[43] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[44]_i_1_n_5 ),
        .Q(L[43]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[44] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[44]_i_1_n_4 ),
        .Q(L[44]),
        .R(p_8_out[63]));
  CARRY4 \cnt_reg[44]_i_1 
       (.CI(\cnt_reg[40]_i_1_n_0 ),
        .CO({\cnt_reg[44]_i_1_n_0 ,\cnt_reg[44]_i_1_n_1 ,\cnt_reg[44]_i_1_n_2 ,\cnt_reg[44]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[44]_i_1_n_4 ,\cnt_reg[44]_i_1_n_5 ,\cnt_reg[44]_i_1_n_6 ,\cnt_reg[44]_i_1_n_7 }),
        .S(L[44:41]));
  FDRE \cnt_reg[45] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[48]_i_1_n_7 ),
        .Q(L[45]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[46] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[48]_i_1_n_6 ),
        .Q(L[46]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[47] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[48]_i_1_n_5 ),
        .Q(L[47]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[48] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[48]_i_1_n_4 ),
        .Q(L[48]),
        .R(p_8_out[63]));
  CARRY4 \cnt_reg[48]_i_1 
       (.CI(\cnt_reg[44]_i_1_n_0 ),
        .CO({\cnt_reg[48]_i_1_n_0 ,\cnt_reg[48]_i_1_n_1 ,\cnt_reg[48]_i_1_n_2 ,\cnt_reg[48]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[48]_i_1_n_4 ,\cnt_reg[48]_i_1_n_5 ,\cnt_reg[48]_i_1_n_6 ,\cnt_reg[48]_i_1_n_7 }),
        .S(L[48:45]));
  FDRE \cnt_reg[49] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[52]_i_1_n_7 ),
        .Q(L[49]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[4] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[4] ),
        .R(p_8_out[31]));
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(\cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[4] ,\cnt_reg_n_0_[3] ,\cnt_reg_n_0_[2] ,\cnt_reg_n_0_[1] }));
  FDRE \cnt_reg[50] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[52]_i_1_n_6 ),
        .Q(L[50]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[51] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[52]_i_1_n_5 ),
        .Q(L[51]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[52] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[52]_i_1_n_4 ),
        .Q(L[52]),
        .R(p_8_out[63]));
  CARRY4 \cnt_reg[52]_i_1 
       (.CI(\cnt_reg[48]_i_1_n_0 ),
        .CO({\cnt_reg[52]_i_1_n_0 ,\cnt_reg[52]_i_1_n_1 ,\cnt_reg[52]_i_1_n_2 ,\cnt_reg[52]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[52]_i_1_n_4 ,\cnt_reg[52]_i_1_n_5 ,\cnt_reg[52]_i_1_n_6 ,\cnt_reg[52]_i_1_n_7 }),
        .S(L[52:49]));
  FDRE \cnt_reg[53] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[56]_i_1_n_7 ),
        .Q(L[53]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[54] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[56]_i_1_n_6 ),
        .Q(L[54]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[55] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[56]_i_1_n_5 ),
        .Q(L[55]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[56] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[56]_i_1_n_4 ),
        .Q(L[56]),
        .R(p_8_out[63]));
  CARRY4 \cnt_reg[56]_i_1 
       (.CI(\cnt_reg[52]_i_1_n_0 ),
        .CO({\cnt_reg[56]_i_1_n_0 ,\cnt_reg[56]_i_1_n_1 ,\cnt_reg[56]_i_1_n_2 ,\cnt_reg[56]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[56]_i_1_n_4 ,\cnt_reg[56]_i_1_n_5 ,\cnt_reg[56]_i_1_n_6 ,\cnt_reg[56]_i_1_n_7 }),
        .S(L[56:53]));
  FDRE \cnt_reg[57] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[60]_i_1_n_7 ),
        .Q(L[57]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[58] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[60]_i_1_n_6 ),
        .Q(L[58]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[59] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[60]_i_1_n_5 ),
        .Q(L[59]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[5] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[5] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[60] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[60]_i_1_n_4 ),
        .Q(L[60]),
        .R(p_8_out[63]));
  CARRY4 \cnt_reg[60]_i_1 
       (.CI(\cnt_reg[56]_i_1_n_0 ),
        .CO({\cnt_reg[60]_i_1_n_0 ,\cnt_reg[60]_i_1_n_1 ,\cnt_reg[60]_i_1_n_2 ,\cnt_reg[60]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[60]_i_1_n_4 ,\cnt_reg[60]_i_1_n_5 ,\cnt_reg[60]_i_1_n_6 ,\cnt_reg[60]_i_1_n_7 }),
        .S(L[60:57]));
  FDRE \cnt_reg[61] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[63]_i_2_n_7 ),
        .Q(L[61]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[62] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[63]_i_2_n_6 ),
        .Q(L[62]),
        .R(p_8_out[63]));
  FDRE \cnt_reg[63] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[63]_i_2_n_5 ),
        .Q(L[63]),
        .R(p_8_out[63]));
  CARRY4 \cnt_reg[63]_i_2 
       (.CI(\cnt_reg[60]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[63]_i_2_CO_UNCONNECTED [3:2],\cnt_reg[63]_i_2_n_2 ,\cnt_reg[63]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[63]_i_2_O_UNCONNECTED [3],\cnt_reg[63]_i_2_n_5 ,\cnt_reg[63]_i_2_n_6 ,\cnt_reg[63]_i_2_n_7 }),
        .S({1'b0,L[63:61]}));
  FDRE \cnt_reg[64] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt[64]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[64] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[65] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[68]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[65] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[66] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[68]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[66] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[67] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[68]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[67] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[68] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[68]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[68] ),
        .R(p_8_out[95]));
  CARRY4 \cnt_reg[68]_i_1 
       (.CI(1'b0),
        .CO({\cnt_reg[68]_i_1_n_0 ,\cnt_reg[68]_i_1_n_1 ,\cnt_reg[68]_i_1_n_2 ,\cnt_reg[68]_i_1_n_3 }),
        .CYINIT(\cnt_reg_n_0_[64] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[68]_i_1_n_4 ,\cnt_reg[68]_i_1_n_5 ,\cnt_reg[68]_i_1_n_6 ,\cnt_reg[68]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[68] ,\cnt_reg_n_0_[67] ,\cnt_reg_n_0_[66] ,\cnt_reg_n_0_[65] }));
  FDRE \cnt_reg[69] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[72]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[69] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[6] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[6] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[70] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[72]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[70] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[71] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[72]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[71] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[72] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[72]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[72] ),
        .R(p_8_out[95]));
  CARRY4 \cnt_reg[72]_i_1 
       (.CI(\cnt_reg[68]_i_1_n_0 ),
        .CO({\cnt_reg[72]_i_1_n_0 ,\cnt_reg[72]_i_1_n_1 ,\cnt_reg[72]_i_1_n_2 ,\cnt_reg[72]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[72]_i_1_n_4 ,\cnt_reg[72]_i_1_n_5 ,\cnt_reg[72]_i_1_n_6 ,\cnt_reg[72]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[72] ,\cnt_reg_n_0_[71] ,\cnt_reg_n_0_[70] ,\cnt_reg_n_0_[69] }));
  FDRE \cnt_reg[73] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[76]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[73] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[74] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[76]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[74] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[75] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[76]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[75] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[76] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[76]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[76] ),
        .R(p_8_out[95]));
  CARRY4 \cnt_reg[76]_i_1 
       (.CI(\cnt_reg[72]_i_1_n_0 ),
        .CO({\cnt_reg[76]_i_1_n_0 ,\cnt_reg[76]_i_1_n_1 ,\cnt_reg[76]_i_1_n_2 ,\cnt_reg[76]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[76]_i_1_n_4 ,\cnt_reg[76]_i_1_n_5 ,\cnt_reg[76]_i_1_n_6 ,\cnt_reg[76]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[76] ,\cnt_reg_n_0_[75] ,\cnt_reg_n_0_[74] ,\cnt_reg_n_0_[73] }));
  FDRE \cnt_reg[77] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[80]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[77] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[78] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[80]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[78] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[79] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[80]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[79] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[7] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[7] ),
        .R(p_8_out[31]));
  FDRE \cnt_reg[80] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[80]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[80] ),
        .R(p_8_out[95]));
  CARRY4 \cnt_reg[80]_i_1 
       (.CI(\cnt_reg[76]_i_1_n_0 ),
        .CO({\cnt_reg[80]_i_1_n_0 ,\cnt_reg[80]_i_1_n_1 ,\cnt_reg[80]_i_1_n_2 ,\cnt_reg[80]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[80]_i_1_n_4 ,\cnt_reg[80]_i_1_n_5 ,\cnt_reg[80]_i_1_n_6 ,\cnt_reg[80]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[80] ,\cnt_reg_n_0_[79] ,\cnt_reg_n_0_[78] ,\cnt_reg_n_0_[77] }));
  FDRE \cnt_reg[81] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[84]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[81] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[82] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[84]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[82] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[83] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[84]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[83] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[84] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[84]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[84] ),
        .R(p_8_out[95]));
  CARRY4 \cnt_reg[84]_i_1 
       (.CI(\cnt_reg[80]_i_1_n_0 ),
        .CO({\cnt_reg[84]_i_1_n_0 ,\cnt_reg[84]_i_1_n_1 ,\cnt_reg[84]_i_1_n_2 ,\cnt_reg[84]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[84]_i_1_n_4 ,\cnt_reg[84]_i_1_n_5 ,\cnt_reg[84]_i_1_n_6 ,\cnt_reg[84]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[84] ,\cnt_reg_n_0_[83] ,\cnt_reg_n_0_[82] ,\cnt_reg_n_0_[81] }));
  FDRE \cnt_reg[85] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[88]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[85] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[86] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[88]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[86] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[87] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[88]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[87] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[88] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[88]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[88] ),
        .R(p_8_out[95]));
  CARRY4 \cnt_reg[88]_i_1 
       (.CI(\cnt_reg[84]_i_1_n_0 ),
        .CO({\cnt_reg[88]_i_1_n_0 ,\cnt_reg[88]_i_1_n_1 ,\cnt_reg[88]_i_1_n_2 ,\cnt_reg[88]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[88]_i_1_n_4 ,\cnt_reg[88]_i_1_n_5 ,\cnt_reg[88]_i_1_n_6 ,\cnt_reg[88]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[88] ,\cnt_reg_n_0_[87] ,\cnt_reg_n_0_[86] ,\cnt_reg_n_0_[85] }));
  FDRE \cnt_reg[89] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[92]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[89] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[8] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[8] ),
        .R(p_8_out[31]));
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[8] ,\cnt_reg_n_0_[7] ,\cnt_reg_n_0_[6] ,\cnt_reg_n_0_[5] }));
  FDRE \cnt_reg[90] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[92]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[90] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[91] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[92]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[91] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[92] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[92]_i_1_n_4 ),
        .Q(\cnt_reg_n_0_[92] ),
        .R(p_8_out[95]));
  CARRY4 \cnt_reg[92]_i_1 
       (.CI(\cnt_reg[88]_i_1_n_0 ),
        .CO({\cnt_reg[92]_i_1_n_0 ,\cnt_reg[92]_i_1_n_1 ,\cnt_reg[92]_i_1_n_2 ,\cnt_reg[92]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[92]_i_1_n_4 ,\cnt_reg[92]_i_1_n_5 ,\cnt_reg[92]_i_1_n_6 ,\cnt_reg[92]_i_1_n_7 }),
        .S({\cnt_reg_n_0_[92] ,\cnt_reg_n_0_[91] ,\cnt_reg_n_0_[90] ,\cnt_reg_n_0_[89] }));
  FDRE \cnt_reg[93] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[95]_i_2_n_7 ),
        .Q(\cnt_reg_n_0_[93] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[94] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[95]_i_2_n_6 ),
        .Q(\cnt_reg_n_0_[94] ),
        .R(p_8_out[95]));
  FDRE \cnt_reg[95] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[95]_i_2_n_5 ),
        .Q(\cnt_reg_n_0_[95] ),
        .R(p_8_out[95]));
  CARRY4 \cnt_reg[95]_i_2 
       (.CI(\cnt_reg[92]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[95]_i_2_CO_UNCONNECTED [3:2],\cnt_reg[95]_i_2_n_2 ,\cnt_reg[95]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[95]_i_2_O_UNCONNECTED [3],\cnt_reg[95]_i_2_n_5 ,\cnt_reg[95]_i_2_n_6 ,\cnt_reg[95]_i_2_n_7 }),
        .S({1'b0,\cnt_reg_n_0_[95] ,\cnt_reg_n_0_[94] ,\cnt_reg_n_0_[93] }));
  FDRE \cnt_reg[96] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt[96]_i_1_n_0 ),
        .Q(\cnt_reg_n_0_[96] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[97] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[100]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[97] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[98] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[100]_i_1_n_6 ),
        .Q(\cnt_reg_n_0_[98] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[99] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[100]_i_1_n_5 ),
        .Q(\cnt_reg_n_0_[99] ),
        .R(p_8_out[127]));
  FDRE \cnt_reg[9] 
       (.C(clk_o),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(\cnt_reg_n_0_[9] ),
        .R(p_8_out[31]));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[127]_i_1__0 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(\cnt[127]_i_3_n_0 ),
        .O(p_3_in6_out));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[159]_i_1 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(\cnt[159]_i_3_n_0 ),
        .O(p_4_in));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[191]_i_1 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(\cnt[191]_i_3_n_0 ),
        .O(p_5_in9_out));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[223]_i_1 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(U_3_i_81_n_0),
        .O(p_6_in));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[255]_i_1 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(U_3_i_82_n_0),
        .O(p_7_in12_out));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[31]_i_1 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(\cnt[31]_i_3_n_0 ),
        .O(p_0_in1_out));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[63]_i_1 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(\cnt[63]_i_3_n_0 ),
        .O(p_1_in));
  LUT3 #(
    .INIT(8'h40)) 
    \reg[95]_i_1__0 
       (.I0(bus_rd_q_reg_n_0),
        .I1(\sbus_i_out[rd] ),
        .I2(\cnt[95]_i_3_n_0 ),
        .O(p_2_in4_out));
  FDRE \reg_reg[0] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[0] ),
        .Q(\reg_reg_n_0_[0] ),
        .R(reset_o));
  FDRE \reg_reg[100] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[100] ),
        .Q(data4[4]),
        .R(reset_o));
  FDRE \reg_reg[101] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[101] ),
        .Q(data4[5]),
        .R(reset_o));
  FDRE \reg_reg[102] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[102] ),
        .Q(data4[6]),
        .R(reset_o));
  FDRE \reg_reg[103] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[103] ),
        .Q(data4[7]),
        .R(reset_o));
  FDRE \reg_reg[104] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[104] ),
        .Q(data4[8]),
        .R(reset_o));
  FDRE \reg_reg[105] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[105] ),
        .Q(data4[9]),
        .R(reset_o));
  FDRE \reg_reg[106] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[106] ),
        .Q(data4[10]),
        .R(reset_o));
  FDRE \reg_reg[107] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[107] ),
        .Q(data4[11]),
        .R(reset_o));
  FDRE \reg_reg[108] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[108] ),
        .Q(data4[12]),
        .R(reset_o));
  FDRE \reg_reg[109] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[109] ),
        .Q(data4[13]),
        .R(reset_o));
  FDRE \reg_reg[10] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[10] ),
        .Q(\reg_reg_n_0_[10] ),
        .R(reset_o));
  FDRE \reg_reg[110] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[110] ),
        .Q(data4[14]),
        .R(reset_o));
  FDRE \reg_reg[111] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[111] ),
        .Q(data4[15]),
        .R(reset_o));
  FDRE \reg_reg[112] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[112] ),
        .Q(data4[16]),
        .R(reset_o));
  FDRE \reg_reg[113] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[113] ),
        .Q(data4[17]),
        .R(reset_o));
  FDRE \reg_reg[114] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[114] ),
        .Q(data4[18]),
        .R(reset_o));
  FDRE \reg_reg[115] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[115] ),
        .Q(data4[19]),
        .R(reset_o));
  FDRE \reg_reg[116] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[116] ),
        .Q(data4[20]),
        .R(reset_o));
  FDRE \reg_reg[117] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[117] ),
        .Q(data4[21]),
        .R(reset_o));
  FDRE \reg_reg[118] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[118] ),
        .Q(data4[22]),
        .R(reset_o));
  FDRE \reg_reg[119] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[119] ),
        .Q(data4[23]),
        .R(reset_o));
  FDRE \reg_reg[11] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[11] ),
        .Q(\reg_reg_n_0_[11] ),
        .R(reset_o));
  FDRE \reg_reg[120] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[120] ),
        .Q(data4[24]),
        .R(reset_o));
  FDRE \reg_reg[121] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[121] ),
        .Q(data4[25]),
        .R(reset_o));
  FDRE \reg_reg[122] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[122] ),
        .Q(data4[26]),
        .R(reset_o));
  FDRE \reg_reg[123] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[123] ),
        .Q(data4[27]),
        .R(reset_o));
  FDRE \reg_reg[124] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[124] ),
        .Q(data4[28]),
        .R(reset_o));
  FDRE \reg_reg[125] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[125] ),
        .Q(data4[29]),
        .R(reset_o));
  FDRE \reg_reg[126] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[126] ),
        .Q(data4[30]),
        .R(reset_o));
  FDRE \reg_reg[127] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[127] ),
        .Q(data4[31]),
        .R(reset_o));
  FDRE \reg_reg[128] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[128] ),
        .Q(data3[0]),
        .R(reset_o));
  FDRE \reg_reg[129] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[129] ),
        .Q(data3[1]),
        .R(reset_o));
  FDRE \reg_reg[12] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[12] ),
        .Q(\reg_reg_n_0_[12] ),
        .R(reset_o));
  FDRE \reg_reg[130] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[130] ),
        .Q(data3[2]),
        .R(reset_o));
  FDRE \reg_reg[131] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[131] ),
        .Q(data3[3]),
        .R(reset_o));
  FDRE \reg_reg[132] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[132] ),
        .Q(data3[4]),
        .R(reset_o));
  FDRE \reg_reg[133] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[133] ),
        .Q(data3[5]),
        .R(reset_o));
  FDRE \reg_reg[134] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[134] ),
        .Q(data3[6]),
        .R(reset_o));
  FDRE \reg_reg[135] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[135] ),
        .Q(data3[7]),
        .R(reset_o));
  FDRE \reg_reg[136] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[136] ),
        .Q(data3[8]),
        .R(reset_o));
  FDRE \reg_reg[137] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[137] ),
        .Q(data3[9]),
        .R(reset_o));
  FDRE \reg_reg[138] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[138] ),
        .Q(data3[10]),
        .R(reset_o));
  FDRE \reg_reg[139] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[139] ),
        .Q(data3[11]),
        .R(reset_o));
  FDRE \reg_reg[13] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[13] ),
        .Q(\reg_reg_n_0_[13] ),
        .R(reset_o));
  FDRE \reg_reg[140] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[140] ),
        .Q(data3[12]),
        .R(reset_o));
  FDRE \reg_reg[141] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[141] ),
        .Q(data3[13]),
        .R(reset_o));
  FDRE \reg_reg[142] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[142] ),
        .Q(data3[14]),
        .R(reset_o));
  FDRE \reg_reg[143] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[143] ),
        .Q(data3[15]),
        .R(reset_o));
  FDRE \reg_reg[144] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[144] ),
        .Q(data3[16]),
        .R(reset_o));
  FDRE \reg_reg[145] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[145] ),
        .Q(data3[17]),
        .R(reset_o));
  FDRE \reg_reg[146] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[146] ),
        .Q(data3[18]),
        .R(reset_o));
  FDRE \reg_reg[147] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[147] ),
        .Q(data3[19]),
        .R(reset_o));
  FDRE \reg_reg[148] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[148] ),
        .Q(data3[20]),
        .R(reset_o));
  FDRE \reg_reg[149] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[149] ),
        .Q(data3[21]),
        .R(reset_o));
  FDRE \reg_reg[14] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[14] ),
        .Q(\reg_reg_n_0_[14] ),
        .R(reset_o));
  FDRE \reg_reg[150] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[150] ),
        .Q(data3[22]),
        .R(reset_o));
  FDRE \reg_reg[151] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[151] ),
        .Q(data3[23]),
        .R(reset_o));
  FDRE \reg_reg[152] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[152] ),
        .Q(data3[24]),
        .R(reset_o));
  FDRE \reg_reg[153] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[153] ),
        .Q(data3[25]),
        .R(reset_o));
  FDRE \reg_reg[154] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[154] ),
        .Q(data3[26]),
        .R(reset_o));
  FDRE \reg_reg[155] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[155] ),
        .Q(data3[27]),
        .R(reset_o));
  FDRE \reg_reg[156] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[156] ),
        .Q(data3[28]),
        .R(reset_o));
  FDRE \reg_reg[157] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[157] ),
        .Q(data3[29]),
        .R(reset_o));
  FDRE \reg_reg[158] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[158] ),
        .Q(data3[30]),
        .R(reset_o));
  FDRE \reg_reg[159] 
       (.C(clk_o),
        .CE(p_4_in),
        .D(\cnt_reg_n_0_[159] ),
        .Q(data3[31]),
        .R(reset_o));
  FDRE \reg_reg[15] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[15] ),
        .Q(\reg_reg_n_0_[15] ),
        .R(reset_o));
  FDRE \reg_reg[160] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[160] ),
        .Q(data2[0]),
        .R(reset_o));
  FDRE \reg_reg[161] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[161] ),
        .Q(data2[1]),
        .R(reset_o));
  FDRE \reg_reg[162] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[162] ),
        .Q(data2[2]),
        .R(reset_o));
  FDRE \reg_reg[163] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[163] ),
        .Q(data2[3]),
        .R(reset_o));
  FDRE \reg_reg[164] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[164] ),
        .Q(data2[4]),
        .R(reset_o));
  FDRE \reg_reg[165] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[165] ),
        .Q(data2[5]),
        .R(reset_o));
  FDRE \reg_reg[166] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[166] ),
        .Q(data2[6]),
        .R(reset_o));
  FDRE \reg_reg[167] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[167] ),
        .Q(data2[7]),
        .R(reset_o));
  FDRE \reg_reg[168] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[168] ),
        .Q(data2[8]),
        .R(reset_o));
  FDRE \reg_reg[169] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[169] ),
        .Q(data2[9]),
        .R(reset_o));
  FDRE \reg_reg[16] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[16] ),
        .Q(\reg_reg_n_0_[16] ),
        .R(reset_o));
  FDRE \reg_reg[170] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[170] ),
        .Q(data2[10]),
        .R(reset_o));
  FDRE \reg_reg[171] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[171] ),
        .Q(data2[11]),
        .R(reset_o));
  FDRE \reg_reg[172] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[172] ),
        .Q(data2[12]),
        .R(reset_o));
  FDRE \reg_reg[173] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[173] ),
        .Q(data2[13]),
        .R(reset_o));
  FDRE \reg_reg[174] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[174] ),
        .Q(data2[14]),
        .R(reset_o));
  FDRE \reg_reg[175] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[175] ),
        .Q(data2[15]),
        .R(reset_o));
  FDRE \reg_reg[176] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[176] ),
        .Q(data2[16]),
        .R(reset_o));
  FDRE \reg_reg[177] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[177] ),
        .Q(data2[17]),
        .R(reset_o));
  FDRE \reg_reg[178] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[178] ),
        .Q(data2[18]),
        .R(reset_o));
  FDRE \reg_reg[179] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[179] ),
        .Q(data2[19]),
        .R(reset_o));
  FDRE \reg_reg[17] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[17] ),
        .Q(\reg_reg_n_0_[17] ),
        .R(reset_o));
  FDRE \reg_reg[180] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[180] ),
        .Q(data2[20]),
        .R(reset_o));
  FDRE \reg_reg[181] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[181] ),
        .Q(data2[21]),
        .R(reset_o));
  FDRE \reg_reg[182] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[182] ),
        .Q(data2[22]),
        .R(reset_o));
  FDRE \reg_reg[183] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[183] ),
        .Q(data2[23]),
        .R(reset_o));
  FDRE \reg_reg[184] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[184] ),
        .Q(data2[24]),
        .R(reset_o));
  FDRE \reg_reg[185] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[185] ),
        .Q(data2[25]),
        .R(reset_o));
  FDRE \reg_reg[186] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[186] ),
        .Q(data2[26]),
        .R(reset_o));
  FDRE \reg_reg[187] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[187] ),
        .Q(data2[27]),
        .R(reset_o));
  FDRE \reg_reg[188] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[188] ),
        .Q(data2[28]),
        .R(reset_o));
  FDRE \reg_reg[189] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[189] ),
        .Q(data2[29]),
        .R(reset_o));
  FDRE \reg_reg[18] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[18] ),
        .Q(\reg_reg_n_0_[18] ),
        .R(reset_o));
  FDRE \reg_reg[190] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[190] ),
        .Q(data2[30]),
        .R(reset_o));
  FDRE \reg_reg[191] 
       (.C(clk_o),
        .CE(p_5_in9_out),
        .D(\cnt_reg_n_0_[191] ),
        .Q(data2[31]),
        .R(reset_o));
  FDRE \reg_reg[192] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[192] ),
        .Q(data1[0]),
        .R(reset_o));
  FDRE \reg_reg[193] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[193] ),
        .Q(data1[1]),
        .R(reset_o));
  FDRE \reg_reg[194] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[194] ),
        .Q(data1[2]),
        .R(reset_o));
  FDRE \reg_reg[195] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[195] ),
        .Q(data1[3]),
        .R(reset_o));
  FDRE \reg_reg[196] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[196] ),
        .Q(data1[4]),
        .R(reset_o));
  FDRE \reg_reg[197] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[197] ),
        .Q(data1[5]),
        .R(reset_o));
  FDRE \reg_reg[198] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[198] ),
        .Q(data1[6]),
        .R(reset_o));
  FDRE \reg_reg[199] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[199] ),
        .Q(data1[7]),
        .R(reset_o));
  FDRE \reg_reg[19] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[19] ),
        .Q(\reg_reg_n_0_[19] ),
        .R(reset_o));
  FDRE \reg_reg[1] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[1] ),
        .Q(\reg_reg_n_0_[1] ),
        .R(reset_o));
  FDRE \reg_reg[200] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[200] ),
        .Q(data1[8]),
        .R(reset_o));
  FDRE \reg_reg[201] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[201] ),
        .Q(data1[9]),
        .R(reset_o));
  FDRE \reg_reg[202] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[202] ),
        .Q(data1[10]),
        .R(reset_o));
  FDRE \reg_reg[203] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[203] ),
        .Q(data1[11]),
        .R(reset_o));
  FDRE \reg_reg[204] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[204] ),
        .Q(data1[12]),
        .R(reset_o));
  FDRE \reg_reg[205] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[205] ),
        .Q(data1[13]),
        .R(reset_o));
  FDRE \reg_reg[206] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[206] ),
        .Q(data1[14]),
        .R(reset_o));
  FDRE \reg_reg[207] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[207] ),
        .Q(data1[15]),
        .R(reset_o));
  FDRE \reg_reg[208] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[208] ),
        .Q(data1[16]),
        .R(reset_o));
  FDRE \reg_reg[209] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[209] ),
        .Q(data1[17]),
        .R(reset_o));
  FDRE \reg_reg[20] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[20] ),
        .Q(\reg_reg_n_0_[20] ),
        .R(reset_o));
  FDRE \reg_reg[210] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[210] ),
        .Q(data1[18]),
        .R(reset_o));
  FDRE \reg_reg[211] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[211] ),
        .Q(data1[19]),
        .R(reset_o));
  FDRE \reg_reg[212] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[212] ),
        .Q(data1[20]),
        .R(reset_o));
  FDRE \reg_reg[213] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[213] ),
        .Q(data1[21]),
        .R(reset_o));
  FDRE \reg_reg[214] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[214] ),
        .Q(data1[22]),
        .R(reset_o));
  FDRE \reg_reg[215] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[215] ),
        .Q(data1[23]),
        .R(reset_o));
  FDRE \reg_reg[216] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[216] ),
        .Q(data1[24]),
        .R(reset_o));
  FDRE \reg_reg[217] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[217] ),
        .Q(data1[25]),
        .R(reset_o));
  FDRE \reg_reg[218] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[218] ),
        .Q(data1[26]),
        .R(reset_o));
  FDRE \reg_reg[219] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[219] ),
        .Q(data1[27]),
        .R(reset_o));
  FDRE \reg_reg[21] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[21] ),
        .Q(\reg_reg_n_0_[21] ),
        .R(reset_o));
  FDRE \reg_reg[220] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[220] ),
        .Q(data1[28]),
        .R(reset_o));
  FDRE \reg_reg[221] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[221] ),
        .Q(data1[29]),
        .R(reset_o));
  FDRE \reg_reg[222] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[222] ),
        .Q(data1[30]),
        .R(reset_o));
  FDRE \reg_reg[223] 
       (.C(clk_o),
        .CE(p_6_in),
        .D(\cnt_reg_n_0_[223] ),
        .Q(data1[31]),
        .R(reset_o));
  FDRE \reg_reg[224] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[224] ),
        .Q(data0[0]),
        .R(reset_o));
  FDRE \reg_reg[225] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[225] ),
        .Q(data0[1]),
        .R(reset_o));
  FDRE \reg_reg[226] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[226] ),
        .Q(data0[2]),
        .R(reset_o));
  FDRE \reg_reg[227] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[227] ),
        .Q(data0[3]),
        .R(reset_o));
  FDRE \reg_reg[228] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[228] ),
        .Q(data0[4]),
        .R(reset_o));
  FDRE \reg_reg[229] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[229] ),
        .Q(data0[5]),
        .R(reset_o));
  FDRE \reg_reg[22] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[22] ),
        .Q(\reg_reg_n_0_[22] ),
        .R(reset_o));
  FDRE \reg_reg[230] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[230] ),
        .Q(data0[6]),
        .R(reset_o));
  FDRE \reg_reg[231] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[231] ),
        .Q(data0[7]),
        .R(reset_o));
  FDRE \reg_reg[232] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[232] ),
        .Q(data0[8]),
        .R(reset_o));
  FDRE \reg_reg[233] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[233] ),
        .Q(data0[9]),
        .R(reset_o));
  FDRE \reg_reg[234] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[234] ),
        .Q(data0[10]),
        .R(reset_o));
  FDRE \reg_reg[235] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[235] ),
        .Q(data0[11]),
        .R(reset_o));
  FDRE \reg_reg[236] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[236] ),
        .Q(data0[12]),
        .R(reset_o));
  FDRE \reg_reg[237] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[237] ),
        .Q(data0[13]),
        .R(reset_o));
  FDRE \reg_reg[238] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[238] ),
        .Q(data0[14]),
        .R(reset_o));
  FDRE \reg_reg[239] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[239] ),
        .Q(data0[15]),
        .R(reset_o));
  FDRE \reg_reg[23] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[23] ),
        .Q(\reg_reg_n_0_[23] ),
        .R(reset_o));
  FDRE \reg_reg[240] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[240] ),
        .Q(data0[16]),
        .R(reset_o));
  FDRE \reg_reg[241] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[241] ),
        .Q(data0[17]),
        .R(reset_o));
  FDRE \reg_reg[242] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[242] ),
        .Q(data0[18]),
        .R(reset_o));
  FDRE \reg_reg[243] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[243] ),
        .Q(data0[19]),
        .R(reset_o));
  FDRE \reg_reg[244] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[244] ),
        .Q(data0[20]),
        .R(reset_o));
  FDRE \reg_reg[245] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[245] ),
        .Q(data0[21]),
        .R(reset_o));
  FDRE \reg_reg[246] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[246] ),
        .Q(data0[22]),
        .R(reset_o));
  FDRE \reg_reg[247] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[247] ),
        .Q(data0[23]),
        .R(reset_o));
  FDRE \reg_reg[248] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[248] ),
        .Q(data0[24]),
        .R(reset_o));
  FDRE \reg_reg[249] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[249] ),
        .Q(data0[25]),
        .R(reset_o));
  FDRE \reg_reg[24] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[24] ),
        .Q(\reg_reg_n_0_[24] ),
        .R(reset_o));
  FDRE \reg_reg[250] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[250] ),
        .Q(data0[26]),
        .R(reset_o));
  FDRE \reg_reg[251] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[251] ),
        .Q(data0[27]),
        .R(reset_o));
  FDRE \reg_reg[252] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[252] ),
        .Q(data0[28]),
        .R(reset_o));
  FDRE \reg_reg[253] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[253] ),
        .Q(data0[29]),
        .R(reset_o));
  FDRE \reg_reg[254] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[254] ),
        .Q(data0[30]),
        .R(reset_o));
  FDRE \reg_reg[255] 
       (.C(clk_o),
        .CE(p_7_in12_out),
        .D(\cnt_reg_n_0_[255] ),
        .Q(data0[31]),
        .R(reset_o));
  FDRE \reg_reg[25] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[25] ),
        .Q(\reg_reg_n_0_[25] ),
        .R(reset_o));
  FDRE \reg_reg[26] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[26] ),
        .Q(\reg_reg_n_0_[26] ),
        .R(reset_o));
  FDRE \reg_reg[27] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[27] ),
        .Q(\reg_reg_n_0_[27] ),
        .R(reset_o));
  FDRE \reg_reg[28] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[28] ),
        .Q(\reg_reg_n_0_[28] ),
        .R(reset_o));
  FDRE \reg_reg[29] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[29] ),
        .Q(\reg_reg_n_0_[29] ),
        .R(reset_o));
  FDRE \reg_reg[2] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[2] ),
        .Q(\reg_reg_n_0_[2] ),
        .R(reset_o));
  FDRE \reg_reg[30] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[30] ),
        .Q(\reg_reg_n_0_[30] ),
        .R(reset_o));
  FDRE \reg_reg[31] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[31] ),
        .Q(\reg_reg_n_0_[31] ),
        .R(reset_o));
  FDRE \reg_reg[32] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[32]),
        .Q(data6[0]),
        .R(reset_o));
  FDRE \reg_reg[33] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[33]),
        .Q(data6[1]),
        .R(reset_o));
  FDRE \reg_reg[34] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[34]),
        .Q(data6[2]),
        .R(reset_o));
  FDRE \reg_reg[35] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[35]),
        .Q(data6[3]),
        .R(reset_o));
  FDRE \reg_reg[36] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[36]),
        .Q(data6[4]),
        .R(reset_o));
  FDRE \reg_reg[37] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[37]),
        .Q(data6[5]),
        .R(reset_o));
  FDRE \reg_reg[38] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[38]),
        .Q(data6[6]),
        .R(reset_o));
  FDRE \reg_reg[39] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[39]),
        .Q(data6[7]),
        .R(reset_o));
  FDRE \reg_reg[3] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[3] ),
        .Q(\reg_reg_n_0_[3] ),
        .R(reset_o));
  FDRE \reg_reg[40] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[40]),
        .Q(data6[8]),
        .R(reset_o));
  FDRE \reg_reg[41] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[41]),
        .Q(data6[9]),
        .R(reset_o));
  FDRE \reg_reg[42] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[42]),
        .Q(data6[10]),
        .R(reset_o));
  FDRE \reg_reg[43] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[43]),
        .Q(data6[11]),
        .R(reset_o));
  FDRE \reg_reg[44] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[44]),
        .Q(data6[12]),
        .R(reset_o));
  FDRE \reg_reg[45] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[45]),
        .Q(data6[13]),
        .R(reset_o));
  FDRE \reg_reg[46] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[46]),
        .Q(data6[14]),
        .R(reset_o));
  FDRE \reg_reg[47] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[47]),
        .Q(data6[15]),
        .R(reset_o));
  FDRE \reg_reg[48] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[48]),
        .Q(data6[16]),
        .R(reset_o));
  FDRE \reg_reg[49] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[49]),
        .Q(data6[17]),
        .R(reset_o));
  FDRE \reg_reg[4] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[4] ),
        .Q(\reg_reg_n_0_[4] ),
        .R(reset_o));
  FDRE \reg_reg[50] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[50]),
        .Q(data6[18]),
        .R(reset_o));
  FDRE \reg_reg[51] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[51]),
        .Q(data6[19]),
        .R(reset_o));
  FDRE \reg_reg[52] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[52]),
        .Q(data6[20]),
        .R(reset_o));
  FDRE \reg_reg[53] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[53]),
        .Q(data6[21]),
        .R(reset_o));
  FDRE \reg_reg[54] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[54]),
        .Q(data6[22]),
        .R(reset_o));
  FDRE \reg_reg[55] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[55]),
        .Q(data6[23]),
        .R(reset_o));
  FDRE \reg_reg[56] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[56]),
        .Q(data6[24]),
        .R(reset_o));
  FDRE \reg_reg[57] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[57]),
        .Q(data6[25]),
        .R(reset_o));
  FDRE \reg_reg[58] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[58]),
        .Q(data6[26]),
        .R(reset_o));
  FDRE \reg_reg[59] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[59]),
        .Q(data6[27]),
        .R(reset_o));
  FDRE \reg_reg[5] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[5] ),
        .Q(\reg_reg_n_0_[5] ),
        .R(reset_o));
  FDRE \reg_reg[60] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[60]),
        .Q(data6[28]),
        .R(reset_o));
  FDRE \reg_reg[61] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[61]),
        .Q(data6[29]),
        .R(reset_o));
  FDRE \reg_reg[62] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[62]),
        .Q(data6[30]),
        .R(reset_o));
  FDRE \reg_reg[63] 
       (.C(clk_o),
        .CE(p_1_in),
        .D(L[63]),
        .Q(data6[31]),
        .R(reset_o));
  FDRE \reg_reg[64] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[64] ),
        .Q(data5[0]),
        .R(reset_o));
  FDRE \reg_reg[65] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[65] ),
        .Q(data5[1]),
        .R(reset_o));
  FDRE \reg_reg[66] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[66] ),
        .Q(data5[2]),
        .R(reset_o));
  FDRE \reg_reg[67] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[67] ),
        .Q(data5[3]),
        .R(reset_o));
  FDRE \reg_reg[68] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[68] ),
        .Q(data5[4]),
        .R(reset_o));
  FDRE \reg_reg[69] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[69] ),
        .Q(data5[5]),
        .R(reset_o));
  FDRE \reg_reg[6] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[6] ),
        .Q(\reg_reg_n_0_[6] ),
        .R(reset_o));
  FDRE \reg_reg[70] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[70] ),
        .Q(data5[6]),
        .R(reset_o));
  FDRE \reg_reg[71] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[71] ),
        .Q(data5[7]),
        .R(reset_o));
  FDRE \reg_reg[72] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[72] ),
        .Q(data5[8]),
        .R(reset_o));
  FDRE \reg_reg[73] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[73] ),
        .Q(data5[9]),
        .R(reset_o));
  FDRE \reg_reg[74] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[74] ),
        .Q(data5[10]),
        .R(reset_o));
  FDRE \reg_reg[75] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[75] ),
        .Q(data5[11]),
        .R(reset_o));
  FDRE \reg_reg[76] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[76] ),
        .Q(data5[12]),
        .R(reset_o));
  FDRE \reg_reg[77] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[77] ),
        .Q(data5[13]),
        .R(reset_o));
  FDRE \reg_reg[78] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[78] ),
        .Q(data5[14]),
        .R(reset_o));
  FDRE \reg_reg[79] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[79] ),
        .Q(data5[15]),
        .R(reset_o));
  FDRE \reg_reg[7] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[7] ),
        .Q(\reg_reg_n_0_[7] ),
        .R(reset_o));
  FDRE \reg_reg[80] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[80] ),
        .Q(data5[16]),
        .R(reset_o));
  FDRE \reg_reg[81] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[81] ),
        .Q(data5[17]),
        .R(reset_o));
  FDRE \reg_reg[82] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[82] ),
        .Q(data5[18]),
        .R(reset_o));
  FDRE \reg_reg[83] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[83] ),
        .Q(data5[19]),
        .R(reset_o));
  FDRE \reg_reg[84] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[84] ),
        .Q(data5[20]),
        .R(reset_o));
  FDRE \reg_reg[85] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[85] ),
        .Q(data5[21]),
        .R(reset_o));
  FDRE \reg_reg[86] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[86] ),
        .Q(data5[22]),
        .R(reset_o));
  FDRE \reg_reg[87] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[87] ),
        .Q(data5[23]),
        .R(reset_o));
  FDRE \reg_reg[88] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[88] ),
        .Q(data5[24]),
        .R(reset_o));
  FDRE \reg_reg[89] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[89] ),
        .Q(data5[25]),
        .R(reset_o));
  FDRE \reg_reg[8] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[8] ),
        .Q(\reg_reg_n_0_[8] ),
        .R(reset_o));
  FDRE \reg_reg[90] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[90] ),
        .Q(data5[26]),
        .R(reset_o));
  FDRE \reg_reg[91] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[91] ),
        .Q(data5[27]),
        .R(reset_o));
  FDRE \reg_reg[92] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[92] ),
        .Q(data5[28]),
        .R(reset_o));
  FDRE \reg_reg[93] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[93] ),
        .Q(data5[29]),
        .R(reset_o));
  FDRE \reg_reg[94] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[94] ),
        .Q(data5[30]),
        .R(reset_o));
  FDRE \reg_reg[95] 
       (.C(clk_o),
        .CE(p_2_in4_out),
        .D(\cnt_reg_n_0_[95] ),
        .Q(data5[31]),
        .R(reset_o));
  FDRE \reg_reg[96] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[96] ),
        .Q(data4[0]),
        .R(reset_o));
  FDRE \reg_reg[97] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[97] ),
        .Q(data4[1]),
        .R(reset_o));
  FDRE \reg_reg[98] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[98] ),
        .Q(data4[2]),
        .R(reset_o));
  FDRE \reg_reg[99] 
       (.C(clk_o),
        .CE(p_3_in6_out),
        .D(\cnt_reg_n_0_[99] ),
        .Q(data4[3]),
        .R(reset_o));
  FDRE \reg_reg[9] 
       (.C(clk_o),
        .CE(p_0_in1_out),
        .D(\cnt_reg_n_0_[9] ),
        .Q(\reg_reg_n_0_[9] ),
        .R(reset_o));
endmodule

(* ORIG_REF_NAME = "register_array_be" *) 
module system_axi_sbus_bridge_0_0_register_array_be
   (\reg_reg[106]_0 ,
    \sbus_i_out_reg[addr][1] ,
    \sbus_i_out_reg[addr][6] ,
    \sbus_i_out_reg[addr][1]_0 ,
    irq_flag_reg,
    \reg_reg[106]_1 ,
    Q,
    S,
    irq_o,
    CLK,
    E,
    SR,
    \sbus_i_out[we] ,
    \sbus_i_out[addr] ,
    U_3_i_79,
    U_3_i_79_0,
    D,
    eqOp_carry,
    eqOp_carry_0,
    bus0_sbus_wdata,
    sync_o);
  output \reg_reg[106]_0 ;
  output \sbus_i_out_reg[addr][1] ;
  output \sbus_i_out_reg[addr][6] ;
  output \sbus_i_out_reg[addr][1]_0 ;
  output irq_flag_reg;
  output \reg_reg[106]_1 ;
  output [62:0]Q;
  output [0:0]S;
  output irq_o;
  input CLK;
  input [0:0]E;
  input [0:0]SR;
  input \sbus_i_out[we] ;
  input [7:0]\sbus_i_out[addr] ;
  input U_3_i_79;
  input U_3_i_79_0;
  input [0:0]D;
  input eqOp_carry;
  input [1:0]eqOp_carry_0;
  input [31:0]bus0_sbus_wdata;
  input [7:0]sync_o;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [62:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire U_3_i_79;
  wire U_3_i_79_0;
  wire [31:0]bus0_sbus_wdata;
  wire \cnt_int[0]_i_10_n_0 ;
  wire \cnt_int[0]_i_11_n_0 ;
  wire \cnt_int[0]_i_12_n_0 ;
  wire \cnt_int[0]_i_4_n_0 ;
  wire \cnt_int[0]_i_5_n_0 ;
  wire \cnt_int[0]_i_6_n_0 ;
  wire \cnt_int[0]_i_7_n_0 ;
  wire \cnt_int[0]_i_9_n_0 ;
  wire eqOp_carry;
  wire [1:0]eqOp_carry_0;
  wire irq_flag_i_3_n_0;
  wire irq_flag_i_4_n_0;
  wire irq_flag_reg;
  wire irq_o;
  wire neqOp;
  wire p_1_in;
  wire [2:2]p_3_out;
  wire \reg_reg[106]_0 ;
  wire \reg_reg[106]_1 ;
  wire [7:0]\sbus_i_out[addr] ;
  wire \sbus_i_out[we] ;
  wire \sbus_i_out_reg[addr][1] ;
  wire \sbus_i_out_reg[addr][1]_0 ;
  wire \sbus_i_out_reg[addr][6] ;
  wire [7:0]sync_o;
  wire [2:2]we;
  wire we1;
  wire we12_out;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    U_3_i_68
       (.I0(\sbus_i_out[addr] [1]),
        .I1(\sbus_i_out[addr] [2]),
        .I2(\sbus_i_out_reg[addr][6] ),
        .I3(\sbus_i_out[addr] [7]),
        .I4(\sbus_i_out[addr] [0]),
        .O(\sbus_i_out_reg[addr][1] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    U_3_i_69
       (.I0(\sbus_i_out[addr] [1]),
        .I1(\sbus_i_out[addr] [2]),
        .I2(\sbus_i_out_reg[addr][6] ),
        .I3(\sbus_i_out[addr] [7]),
        .I4(\sbus_i_out[addr] [0]),
        .O(\sbus_i_out_reg[addr][1]_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    U_3_i_80
       (.I0(U_3_i_79),
        .I1(\sbus_i_out[addr] [6]),
        .I2(\sbus_i_out[addr] [5]),
        .I3(\sbus_i_out[addr] [4]),
        .I4(\sbus_i_out[addr] [3]),
        .I5(U_3_i_79_0),
        .O(\sbus_i_out_reg[addr][6] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \cnt_int[0]_i_1 
       (.I0(\cnt_int[0]_i_4_n_0 ),
        .I1(\cnt_int[0]_i_5_n_0 ),
        .I2(\cnt_int[0]_i_6_n_0 ),
        .I3(\cnt_int[0]_i_7_n_0 ),
        .I4(E),
        .I5(SR),
        .O(\reg_reg[106]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_int[0]_i_10 
       (.I0(Q[36]),
        .I1(Q[35]),
        .I2(Q[38]),
        .I3(Q[37]),
        .O(\cnt_int[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_int[0]_i_11 
       (.I0(Q[60]),
        .I1(Q[59]),
        .I2(Q[62]),
        .I3(Q[61]),
        .O(\cnt_int[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_int[0]_i_12 
       (.I0(Q[52]),
        .I1(Q[51]),
        .I2(Q[54]),
        .I3(Q[53]),
        .O(\cnt_int[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_int[0]_i_2 
       (.I0(\cnt_int[0]_i_4_n_0 ),
        .I1(\cnt_int[0]_i_5_n_0 ),
        .I2(\cnt_int[0]_i_6_n_0 ),
        .I3(\cnt_int[0]_i_7_n_0 ),
        .O(\reg_reg[106]_1 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt_int[0]_i_4 
       (.I0(Q[41]),
        .I1(Q[42]),
        .I2(Q[39]),
        .I3(Q[40]),
        .I4(\cnt_int[0]_i_9_n_0 ),
        .O(\cnt_int[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt_int[0]_i_5 
       (.I0(Q[33]),
        .I1(Q[34]),
        .I2(Q[31]),
        .I3(Q[32]),
        .I4(\cnt_int[0]_i_10_n_0 ),
        .O(\cnt_int[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt_int[0]_i_6 
       (.I0(Q[57]),
        .I1(Q[58]),
        .I2(Q[55]),
        .I3(Q[56]),
        .I4(\cnt_int[0]_i_11_n_0 ),
        .O(\cnt_int[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \cnt_int[0]_i_7 
       (.I0(Q[49]),
        .I1(Q[50]),
        .I2(Q[47]),
        .I3(Q[48]),
        .I4(\cnt_int[0]_i_12_n_0 ),
        .O(\cnt_int[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_int[0]_i_9 
       (.I0(Q[44]),
        .I1(Q[43]),
        .I2(Q[46]),
        .I3(Q[45]),
        .O(\cnt_int[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_4
       (.I0(Q[31]),
        .I1(eqOp_carry),
        .I2(eqOp_carry_0[1]),
        .I3(Q[33]),
        .I4(Q[32]),
        .I5(eqOp_carry_0[0]),
        .O(S));
  LUT5 #(
    .INIT(32'h00545454)) 
    irq_flag_i_1
       (.I0(SR),
        .I1(neqOp),
        .I2(D),
        .I3(p_1_in),
        .I4(we),
        .O(irq_flag_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    irq_flag_i_2
       (.I0(sync_o[1]),
        .I1(Q[8]),
        .I2(sync_o[0]),
        .I3(Q[7]),
        .I4(irq_flag_i_3_n_0),
        .I5(irq_flag_i_4_n_0),
        .O(neqOp));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    irq_flag_i_3
       (.I0(sync_o[7]),
        .I1(Q[14]),
        .I2(sync_o[6]),
        .I3(Q[13]),
        .I4(Q[12]),
        .I5(sync_o[5]),
        .O(irq_flag_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    irq_flag_i_4
       (.I0(sync_o[4]),
        .I1(Q[11]),
        .I2(sync_o[3]),
        .I3(Q[10]),
        .I4(Q[9]),
        .I5(sync_o[2]),
        .O(irq_flag_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    irq_o_INST_0
       (.I0(D),
        .I1(Q[0]),
        .O(irq_o));
  LUT2 #(
    .INIT(4'h8)) 
    \reg[127]_i_1 
       (.I0(\sbus_i_out_reg[addr][1]_0 ),
        .I1(\sbus_i_out[we] ),
        .O(we12_out));
  LUT2 #(
    .INIT(4'h8)) 
    \reg[95]_i_1 
       (.I0(\sbus_i_out_reg[addr][1] ),
        .I1(\sbus_i_out[we] ),
        .O(we1));
  FDRE \reg_reg[100] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[4]),
        .Q(Q[35]),
        .R(SR));
  FDRE \reg_reg[101] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[5]),
        .Q(Q[36]),
        .R(SR));
  FDRE \reg_reg[102] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[6]),
        .Q(Q[37]),
        .R(SR));
  FDRE \reg_reg[103] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[7]),
        .Q(Q[38]),
        .R(SR));
  FDRE \reg_reg[104] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[8]),
        .Q(Q[39]),
        .R(SR));
  FDRE \reg_reg[105] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[9]),
        .Q(Q[40]),
        .R(SR));
  FDRE \reg_reg[106] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[10]),
        .Q(Q[41]),
        .R(SR));
  FDRE \reg_reg[107] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[11]),
        .Q(Q[42]),
        .R(SR));
  FDRE \reg_reg[108] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[12]),
        .Q(Q[43]),
        .R(SR));
  FDRE \reg_reg[109] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[13]),
        .Q(Q[44]),
        .R(SR));
  FDRE \reg_reg[110] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[14]),
        .Q(Q[45]),
        .R(SR));
  FDRE \reg_reg[111] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[15]),
        .Q(Q[46]),
        .R(SR));
  FDRE \reg_reg[112] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[16]),
        .Q(Q[47]),
        .R(SR));
  FDRE \reg_reg[113] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[17]),
        .Q(Q[48]),
        .R(SR));
  FDRE \reg_reg[114] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[18]),
        .Q(Q[49]),
        .R(SR));
  FDRE \reg_reg[115] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[19]),
        .Q(Q[50]),
        .R(SR));
  FDRE \reg_reg[116] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[20]),
        .Q(Q[51]),
        .R(SR));
  FDRE \reg_reg[117] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[21]),
        .Q(Q[52]),
        .R(SR));
  FDRE \reg_reg[118] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[22]),
        .Q(Q[53]),
        .R(SR));
  FDRE \reg_reg[119] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[23]),
        .Q(Q[54]),
        .R(SR));
  FDRE \reg_reg[120] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[24]),
        .Q(Q[55]),
        .R(SR));
  FDRE \reg_reg[121] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[25]),
        .Q(Q[56]),
        .R(SR));
  FDRE \reg_reg[122] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[26]),
        .Q(Q[57]),
        .R(SR));
  FDRE \reg_reg[123] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[27]),
        .Q(Q[58]),
        .R(SR));
  FDRE \reg_reg[124] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[28]),
        .Q(Q[59]),
        .R(SR));
  FDRE \reg_reg[125] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[29]),
        .Q(Q[60]),
        .R(SR));
  FDRE \reg_reg[126] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[30]),
        .Q(Q[61]),
        .R(SR));
  FDRE \reg_reg[127] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[31]),
        .Q(Q[62]),
        .R(SR));
  FDRE \reg_reg[64] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \reg_reg[65] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[1]),
        .Q(p_1_in),
        .R(SR));
  FDRE \reg_reg[66] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[2]),
        .Q(Q[1]),
        .R(SR));
  FDRE \reg_reg[67] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[3]),
        .Q(Q[2]),
        .R(SR));
  FDRE \reg_reg[68] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[4]),
        .Q(Q[3]),
        .R(SR));
  FDRE \reg_reg[69] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[5]),
        .Q(Q[4]),
        .R(SR));
  FDRE \reg_reg[70] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[6]),
        .Q(Q[5]),
        .R(SR));
  FDRE \reg_reg[71] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[7]),
        .Q(Q[6]),
        .R(SR));
  FDRE \reg_reg[72] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[8]),
        .Q(Q[7]),
        .R(SR));
  FDRE \reg_reg[73] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[9]),
        .Q(Q[8]),
        .R(SR));
  FDRE \reg_reg[74] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[10]),
        .Q(Q[9]),
        .R(SR));
  FDRE \reg_reg[75] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[11]),
        .Q(Q[10]),
        .R(SR));
  FDRE \reg_reg[76] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[12]),
        .Q(Q[11]),
        .R(SR));
  FDRE \reg_reg[77] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[13]),
        .Q(Q[12]),
        .R(SR));
  FDRE \reg_reg[78] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[14]),
        .Q(Q[13]),
        .R(SR));
  FDRE \reg_reg[79] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[15]),
        .Q(Q[14]),
        .R(SR));
  FDRE \reg_reg[80] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[16]),
        .Q(Q[15]),
        .R(SR));
  FDRE \reg_reg[81] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[17]),
        .Q(Q[16]),
        .R(SR));
  FDRE \reg_reg[82] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[18]),
        .Q(Q[17]),
        .R(SR));
  FDRE \reg_reg[83] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[19]),
        .Q(Q[18]),
        .R(SR));
  FDRE \reg_reg[84] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[20]),
        .Q(Q[19]),
        .R(SR));
  FDRE \reg_reg[85] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[21]),
        .Q(Q[20]),
        .R(SR));
  FDRE \reg_reg[86] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[22]),
        .Q(Q[21]),
        .R(SR));
  FDRE \reg_reg[87] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[23]),
        .Q(Q[22]),
        .R(SR));
  FDRE \reg_reg[88] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[24]),
        .Q(Q[23]),
        .R(SR));
  FDRE \reg_reg[89] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[25]),
        .Q(Q[24]),
        .R(SR));
  FDRE \reg_reg[90] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[26]),
        .Q(Q[25]),
        .R(SR));
  FDRE \reg_reg[91] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[27]),
        .Q(Q[26]),
        .R(SR));
  FDRE \reg_reg[92] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[28]),
        .Q(Q[27]),
        .R(SR));
  FDRE \reg_reg[93] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[29]),
        .Q(Q[28]),
        .R(SR));
  FDRE \reg_reg[94] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[30]),
        .Q(Q[29]),
        .R(SR));
  FDRE \reg_reg[95] 
       (.C(CLK),
        .CE(we1),
        .D(bus0_sbus_wdata[31]),
        .Q(Q[30]),
        .R(SR));
  FDRE \reg_reg[96] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[0]),
        .Q(Q[31]),
        .R(SR));
  FDRE \reg_reg[97] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[1]),
        .Q(Q[32]),
        .R(SR));
  FDRE \reg_reg[98] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[2]),
        .Q(Q[33]),
        .R(SR));
  FDRE \reg_reg[99] 
       (.C(CLK),
        .CE(we12_out),
        .D(bus0_sbus_wdata[3]),
        .Q(Q[34]),
        .R(SR));
  LUT3 #(
    .INIT(8'h40)) 
    \we[2]_i_1 
       (.I0(SR),
        .I1(\sbus_i_out[we] ),
        .I2(\sbus_i_out_reg[addr][1] ),
        .O(p_3_out));
  FDRE \we_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_3_out),
        .Q(we),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "sbus_mux5" *) 
module system_axi_sbus_bridge_0_0_sbus_mux5
   (clk,
    \sbus_i_in[addr] ,
    \sbus_i_in[wdata] ,
    \sbus_i_in[be] ,
    \sbus_i_in[we] ,
    \sbus_i_in[rd] ,
    \sbus_i_out[addr] ,
    \sbus_i_out[wdata] ,
    \sbus_i_out[be] ,
    \sbus_i_out[we] ,
    \sbus_i_out[rd] ,
    \sbus_o_mux[rdata] ,
    \sbus_o_mux[ack] ,
    \sbus_o_0[rdata] ,
    \sbus_o_0[ack] ,
    \sbus_o_1[rdata] ,
    \sbus_o_1[ack] ,
    \sbus_o_2[rdata] ,
    \sbus_o_2[ack] ,
    \sbus_o_3[rdata] ,
    \sbus_o_3[ack] ,
    \sbus_o_4[rdata] ,
    \sbus_o_4[ack] ,
    \sbus_o_5[rdata] ,
    \sbus_o_5[ack] ,
    \sbus_o_null[rdata] ,
    \sbus_o_null[ack] );
  input clk;
  input [15:0]\sbus_i_in[addr] ;
  input [31:0]\sbus_i_in[wdata] ;
  input [3:0]\sbus_i_in[be] ;
  input \sbus_i_in[we] ;
  input \sbus_i_in[rd] ;
  output [15:0]\sbus_i_out[addr] ;
  output [31:0]\sbus_i_out[wdata] ;
  output [3:0]\sbus_i_out[be] ;
  output \sbus_i_out[we] ;
  output \sbus_i_out[rd] ;
  output [31:0]\sbus_o_mux[rdata] ;
  output \sbus_o_mux[ack] ;
  input [31:0]\sbus_o_0[rdata] ;
  input \sbus_o_0[ack] ;
  input [31:0]\sbus_o_1[rdata] ;
  input \sbus_o_1[ack] ;
  input [31:0]\sbus_o_2[rdata] ;
  input \sbus_o_2[ack] ;
  input [31:0]\sbus_o_3[rdata] ;
  input \sbus_o_3[ack] ;
  input [31:0]\sbus_o_4[rdata] ;
  input \sbus_o_4[ack] ;
  input [31:0]\sbus_o_5[rdata] ;
  input \sbus_o_5[ack] ;
  output [31:0]\sbus_o_null[rdata] ;
  output \sbus_o_null[ack] ;

  wire \<const0> ;
  wire clk;
  wire [15:0]\sbus_i_in[addr] ;
  wire [3:0]\sbus_i_in[be] ;
  wire \sbus_i_in[rd] ;
  wire [31:0]\sbus_i_in[wdata] ;
  wire \sbus_i_in[we] ;
  wire [15:0]\sbus_i_out[addr] ;
  wire [3:0]\sbus_i_out[be] ;
  wire \sbus_i_out[rd] ;
  wire [31:0]\sbus_i_out[wdata] ;
  wire \sbus_i_out[we] ;
  wire \sbus_o_0[ack] ;
  wire [31:0]\sbus_o_0[rdata] ;
  wire \sbus_o_1[ack] ;
  wire [31:0]\sbus_o_1[rdata] ;
  wire \sbus_o_2[ack] ;
  wire [31:0]\sbus_o_2[rdata] ;
  wire \sbus_o_3[ack] ;
  wire [31:0]\sbus_o_3[rdata] ;
  wire \sbus_o_4[ack] ;
  wire [31:0]\sbus_o_4[rdata] ;
  wire \sbus_o_5[ack] ;
  wire [31:0]\sbus_o_5[rdata] ;
  wire \sbus_o_mux[ack] ;
  wire \sbus_o_mux[ack]_i_1_n_0 ;
  wire [31:0]\sbus_o_mux[rdata] ;
  wire \sbus_o_mux[rdata][0]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][10]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][11]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][12]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][13]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][14]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][15]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][16]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][17]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][18]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][19]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][1]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][20]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][21]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][22]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][23]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][24]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][25]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][26]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][27]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][28]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][29]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][2]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][30]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][31]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][3]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][4]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][5]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][6]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][7]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][8]_i_1_n_0 ;
  wire \sbus_o_mux[rdata][9]_i_1_n_0 ;

  assign \sbus_o_null[ack]  = \<const0> ;
  assign \sbus_o_null[rdata] [31] = \<const0> ;
  assign \sbus_o_null[rdata] [30] = \<const0> ;
  assign \sbus_o_null[rdata] [29] = \<const0> ;
  assign \sbus_o_null[rdata] [28] = \<const0> ;
  assign \sbus_o_null[rdata] [27] = \<const0> ;
  assign \sbus_o_null[rdata] [26] = \<const0> ;
  assign \sbus_o_null[rdata] [25] = \<const0> ;
  assign \sbus_o_null[rdata] [24] = \<const0> ;
  assign \sbus_o_null[rdata] [23] = \<const0> ;
  assign \sbus_o_null[rdata] [22] = \<const0> ;
  assign \sbus_o_null[rdata] [21] = \<const0> ;
  assign \sbus_o_null[rdata] [20] = \<const0> ;
  assign \sbus_o_null[rdata] [19] = \<const0> ;
  assign \sbus_o_null[rdata] [18] = \<const0> ;
  assign \sbus_o_null[rdata] [17] = \<const0> ;
  assign \sbus_o_null[rdata] [16] = \<const0> ;
  assign \sbus_o_null[rdata] [15] = \<const0> ;
  assign \sbus_o_null[rdata] [14] = \<const0> ;
  assign \sbus_o_null[rdata] [13] = \<const0> ;
  assign \sbus_o_null[rdata] [12] = \<const0> ;
  assign \sbus_o_null[rdata] [11] = \<const0> ;
  assign \sbus_o_null[rdata] [10] = \<const0> ;
  assign \sbus_o_null[rdata] [9] = \<const0> ;
  assign \sbus_o_null[rdata] [8] = \<const0> ;
  assign \sbus_o_null[rdata] [7] = \<const0> ;
  assign \sbus_o_null[rdata] [6] = \<const0> ;
  assign \sbus_o_null[rdata] [5] = \<const0> ;
  assign \sbus_o_null[rdata] [4] = \<const0> ;
  assign \sbus_o_null[rdata] [3] = \<const0> ;
  assign \sbus_o_null[rdata] [2] = \<const0> ;
  assign \sbus_o_null[rdata] [1] = \<const0> ;
  assign \sbus_o_null[rdata] [0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE \sbus_i_out_reg[addr][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [0]),
        .Q(\sbus_i_out[addr] [0]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [10]),
        .Q(\sbus_i_out[addr] [10]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][11] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [11]),
        .Q(\sbus_i_out[addr] [11]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][12] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [12]),
        .Q(\sbus_i_out[addr] [12]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][13] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [13]),
        .Q(\sbus_i_out[addr] [13]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][14] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [14]),
        .Q(\sbus_i_out[addr] [14]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][15] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [15]),
        .Q(\sbus_i_out[addr] [15]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [1]),
        .Q(\sbus_i_out[addr] [1]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [2]),
        .Q(\sbus_i_out[addr] [2]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [3]),
        .Q(\sbus_i_out[addr] [3]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [4]),
        .Q(\sbus_i_out[addr] [4]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [5]),
        .Q(\sbus_i_out[addr] [5]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [6]),
        .Q(\sbus_i_out[addr] [6]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [7]),
        .Q(\sbus_i_out[addr] [7]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [8]),
        .Q(\sbus_i_out[addr] [8]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[addr][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[addr] [9]),
        .Q(\sbus_i_out[addr] [9]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[be][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[be] [0]),
        .Q(\sbus_i_out[be] [0]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[be][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[be] [1]),
        .Q(\sbus_i_out[be] [1]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[be][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[be] [2]),
        .Q(\sbus_i_out[be] [2]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[be][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[be] [3]),
        .Q(\sbus_i_out[be] [3]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[rd] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[rd] ),
        .Q(\sbus_i_out[rd] ),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [0]),
        .Q(\sbus_i_out[wdata] [0]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [10]),
        .Q(\sbus_i_out[wdata] [10]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][11] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [11]),
        .Q(\sbus_i_out[wdata] [11]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][12] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [12]),
        .Q(\sbus_i_out[wdata] [12]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][13] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [13]),
        .Q(\sbus_i_out[wdata] [13]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][14] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [14]),
        .Q(\sbus_i_out[wdata] [14]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][15] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [15]),
        .Q(\sbus_i_out[wdata] [15]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][16] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [16]),
        .Q(\sbus_i_out[wdata] [16]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][17] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [17]),
        .Q(\sbus_i_out[wdata] [17]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][18] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [18]),
        .Q(\sbus_i_out[wdata] [18]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][19] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [19]),
        .Q(\sbus_i_out[wdata] [19]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [1]),
        .Q(\sbus_i_out[wdata] [1]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][20] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [20]),
        .Q(\sbus_i_out[wdata] [20]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][21] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [21]),
        .Q(\sbus_i_out[wdata] [21]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][22] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [22]),
        .Q(\sbus_i_out[wdata] [22]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][23] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [23]),
        .Q(\sbus_i_out[wdata] [23]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][24] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [24]),
        .Q(\sbus_i_out[wdata] [24]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][25] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [25]),
        .Q(\sbus_i_out[wdata] [25]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][26] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [26]),
        .Q(\sbus_i_out[wdata] [26]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][27] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [27]),
        .Q(\sbus_i_out[wdata] [27]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][28] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [28]),
        .Q(\sbus_i_out[wdata] [28]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][29] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [29]),
        .Q(\sbus_i_out[wdata] [29]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [2]),
        .Q(\sbus_i_out[wdata] [2]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][30] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [30]),
        .Q(\sbus_i_out[wdata] [30]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][31] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [31]),
        .Q(\sbus_i_out[wdata] [31]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [3]),
        .Q(\sbus_i_out[wdata] [3]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [4]),
        .Q(\sbus_i_out[wdata] [4]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [5]),
        .Q(\sbus_i_out[wdata] [5]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [6]),
        .Q(\sbus_i_out[wdata] [6]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [7]),
        .Q(\sbus_i_out[wdata] [7]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [8]),
        .Q(\sbus_i_out[wdata] [8]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[wdata][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[wdata] [9]),
        .Q(\sbus_i_out[wdata] [9]),
        .R(1'b0));
  FDRE \sbus_i_out_reg[we] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_i_in[we] ),
        .Q(\sbus_i_out[we] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[ack]_i_1 
       (.I0(\sbus_o_5[ack] ),
        .I1(\sbus_o_0[ack] ),
        .I2(\sbus_o_2[ack] ),
        .I3(\sbus_o_1[ack] ),
        .I4(\sbus_o_4[ack] ),
        .I5(\sbus_o_3[ack] ),
        .O(\sbus_o_mux[ack]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][0]_i_1 
       (.I0(\sbus_o_5[rdata] [0]),
        .I1(\sbus_o_0[rdata] [0]),
        .I2(\sbus_o_2[rdata] [0]),
        .I3(\sbus_o_1[rdata] [0]),
        .I4(\sbus_o_4[rdata] [0]),
        .I5(\sbus_o_3[rdata] [0]),
        .O(\sbus_o_mux[rdata][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][10]_i_1 
       (.I0(\sbus_o_5[rdata] [10]),
        .I1(\sbus_o_0[rdata] [10]),
        .I2(\sbus_o_2[rdata] [10]),
        .I3(\sbus_o_1[rdata] [10]),
        .I4(\sbus_o_4[rdata] [10]),
        .I5(\sbus_o_3[rdata] [10]),
        .O(\sbus_o_mux[rdata][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][11]_i_1 
       (.I0(\sbus_o_5[rdata] [11]),
        .I1(\sbus_o_0[rdata] [11]),
        .I2(\sbus_o_2[rdata] [11]),
        .I3(\sbus_o_1[rdata] [11]),
        .I4(\sbus_o_4[rdata] [11]),
        .I5(\sbus_o_3[rdata] [11]),
        .O(\sbus_o_mux[rdata][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][12]_i_1 
       (.I0(\sbus_o_5[rdata] [12]),
        .I1(\sbus_o_0[rdata] [12]),
        .I2(\sbus_o_2[rdata] [12]),
        .I3(\sbus_o_1[rdata] [12]),
        .I4(\sbus_o_4[rdata] [12]),
        .I5(\sbus_o_3[rdata] [12]),
        .O(\sbus_o_mux[rdata][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][13]_i_1 
       (.I0(\sbus_o_5[rdata] [13]),
        .I1(\sbus_o_0[rdata] [13]),
        .I2(\sbus_o_2[rdata] [13]),
        .I3(\sbus_o_1[rdata] [13]),
        .I4(\sbus_o_4[rdata] [13]),
        .I5(\sbus_o_3[rdata] [13]),
        .O(\sbus_o_mux[rdata][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][14]_i_1 
       (.I0(\sbus_o_5[rdata] [14]),
        .I1(\sbus_o_0[rdata] [14]),
        .I2(\sbus_o_2[rdata] [14]),
        .I3(\sbus_o_1[rdata] [14]),
        .I4(\sbus_o_4[rdata] [14]),
        .I5(\sbus_o_3[rdata] [14]),
        .O(\sbus_o_mux[rdata][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][15]_i_1 
       (.I0(\sbus_o_5[rdata] [15]),
        .I1(\sbus_o_0[rdata] [15]),
        .I2(\sbus_o_2[rdata] [15]),
        .I3(\sbus_o_1[rdata] [15]),
        .I4(\sbus_o_4[rdata] [15]),
        .I5(\sbus_o_3[rdata] [15]),
        .O(\sbus_o_mux[rdata][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][16]_i_1 
       (.I0(\sbus_o_5[rdata] [16]),
        .I1(\sbus_o_0[rdata] [16]),
        .I2(\sbus_o_2[rdata] [16]),
        .I3(\sbus_o_1[rdata] [16]),
        .I4(\sbus_o_4[rdata] [16]),
        .I5(\sbus_o_3[rdata] [16]),
        .O(\sbus_o_mux[rdata][16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][17]_i_1 
       (.I0(\sbus_o_5[rdata] [17]),
        .I1(\sbus_o_0[rdata] [17]),
        .I2(\sbus_o_2[rdata] [17]),
        .I3(\sbus_o_1[rdata] [17]),
        .I4(\sbus_o_4[rdata] [17]),
        .I5(\sbus_o_3[rdata] [17]),
        .O(\sbus_o_mux[rdata][17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][18]_i_1 
       (.I0(\sbus_o_5[rdata] [18]),
        .I1(\sbus_o_0[rdata] [18]),
        .I2(\sbus_o_2[rdata] [18]),
        .I3(\sbus_o_1[rdata] [18]),
        .I4(\sbus_o_4[rdata] [18]),
        .I5(\sbus_o_3[rdata] [18]),
        .O(\sbus_o_mux[rdata][18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][19]_i_1 
       (.I0(\sbus_o_5[rdata] [19]),
        .I1(\sbus_o_0[rdata] [19]),
        .I2(\sbus_o_2[rdata] [19]),
        .I3(\sbus_o_1[rdata] [19]),
        .I4(\sbus_o_4[rdata] [19]),
        .I5(\sbus_o_3[rdata] [19]),
        .O(\sbus_o_mux[rdata][19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][1]_i_1 
       (.I0(\sbus_o_5[rdata] [1]),
        .I1(\sbus_o_0[rdata] [1]),
        .I2(\sbus_o_2[rdata] [1]),
        .I3(\sbus_o_1[rdata] [1]),
        .I4(\sbus_o_4[rdata] [1]),
        .I5(\sbus_o_3[rdata] [1]),
        .O(\sbus_o_mux[rdata][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][20]_i_1 
       (.I0(\sbus_o_5[rdata] [20]),
        .I1(\sbus_o_0[rdata] [20]),
        .I2(\sbus_o_2[rdata] [20]),
        .I3(\sbus_o_1[rdata] [20]),
        .I4(\sbus_o_4[rdata] [20]),
        .I5(\sbus_o_3[rdata] [20]),
        .O(\sbus_o_mux[rdata][20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][21]_i_1 
       (.I0(\sbus_o_5[rdata] [21]),
        .I1(\sbus_o_0[rdata] [21]),
        .I2(\sbus_o_2[rdata] [21]),
        .I3(\sbus_o_1[rdata] [21]),
        .I4(\sbus_o_4[rdata] [21]),
        .I5(\sbus_o_3[rdata] [21]),
        .O(\sbus_o_mux[rdata][21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][22]_i_1 
       (.I0(\sbus_o_5[rdata] [22]),
        .I1(\sbus_o_0[rdata] [22]),
        .I2(\sbus_o_2[rdata] [22]),
        .I3(\sbus_o_1[rdata] [22]),
        .I4(\sbus_o_4[rdata] [22]),
        .I5(\sbus_o_3[rdata] [22]),
        .O(\sbus_o_mux[rdata][22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][23]_i_1 
       (.I0(\sbus_o_5[rdata] [23]),
        .I1(\sbus_o_0[rdata] [23]),
        .I2(\sbus_o_2[rdata] [23]),
        .I3(\sbus_o_1[rdata] [23]),
        .I4(\sbus_o_4[rdata] [23]),
        .I5(\sbus_o_3[rdata] [23]),
        .O(\sbus_o_mux[rdata][23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][24]_i_1 
       (.I0(\sbus_o_5[rdata] [24]),
        .I1(\sbus_o_0[rdata] [24]),
        .I2(\sbus_o_2[rdata] [24]),
        .I3(\sbus_o_1[rdata] [24]),
        .I4(\sbus_o_4[rdata] [24]),
        .I5(\sbus_o_3[rdata] [24]),
        .O(\sbus_o_mux[rdata][24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][25]_i_1 
       (.I0(\sbus_o_5[rdata] [25]),
        .I1(\sbus_o_0[rdata] [25]),
        .I2(\sbus_o_2[rdata] [25]),
        .I3(\sbus_o_1[rdata] [25]),
        .I4(\sbus_o_4[rdata] [25]),
        .I5(\sbus_o_3[rdata] [25]),
        .O(\sbus_o_mux[rdata][25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][26]_i_1 
       (.I0(\sbus_o_5[rdata] [26]),
        .I1(\sbus_o_0[rdata] [26]),
        .I2(\sbus_o_2[rdata] [26]),
        .I3(\sbus_o_1[rdata] [26]),
        .I4(\sbus_o_4[rdata] [26]),
        .I5(\sbus_o_3[rdata] [26]),
        .O(\sbus_o_mux[rdata][26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][27]_i_1 
       (.I0(\sbus_o_5[rdata] [27]),
        .I1(\sbus_o_0[rdata] [27]),
        .I2(\sbus_o_2[rdata] [27]),
        .I3(\sbus_o_1[rdata] [27]),
        .I4(\sbus_o_4[rdata] [27]),
        .I5(\sbus_o_3[rdata] [27]),
        .O(\sbus_o_mux[rdata][27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][28]_i_1 
       (.I0(\sbus_o_5[rdata] [28]),
        .I1(\sbus_o_0[rdata] [28]),
        .I2(\sbus_o_2[rdata] [28]),
        .I3(\sbus_o_1[rdata] [28]),
        .I4(\sbus_o_4[rdata] [28]),
        .I5(\sbus_o_3[rdata] [28]),
        .O(\sbus_o_mux[rdata][28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][29]_i_1 
       (.I0(\sbus_o_5[rdata] [29]),
        .I1(\sbus_o_0[rdata] [29]),
        .I2(\sbus_o_2[rdata] [29]),
        .I3(\sbus_o_1[rdata] [29]),
        .I4(\sbus_o_4[rdata] [29]),
        .I5(\sbus_o_3[rdata] [29]),
        .O(\sbus_o_mux[rdata][29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][2]_i_1 
       (.I0(\sbus_o_5[rdata] [2]),
        .I1(\sbus_o_0[rdata] [2]),
        .I2(\sbus_o_2[rdata] [2]),
        .I3(\sbus_o_1[rdata] [2]),
        .I4(\sbus_o_4[rdata] [2]),
        .I5(\sbus_o_3[rdata] [2]),
        .O(\sbus_o_mux[rdata][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][30]_i_1 
       (.I0(\sbus_o_5[rdata] [30]),
        .I1(\sbus_o_0[rdata] [30]),
        .I2(\sbus_o_2[rdata] [30]),
        .I3(\sbus_o_1[rdata] [30]),
        .I4(\sbus_o_4[rdata] [30]),
        .I5(\sbus_o_3[rdata] [30]),
        .O(\sbus_o_mux[rdata][30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][31]_i_1 
       (.I0(\sbus_o_5[rdata] [31]),
        .I1(\sbus_o_0[rdata] [31]),
        .I2(\sbus_o_2[rdata] [31]),
        .I3(\sbus_o_1[rdata] [31]),
        .I4(\sbus_o_4[rdata] [31]),
        .I5(\sbus_o_3[rdata] [31]),
        .O(\sbus_o_mux[rdata][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][3]_i_1 
       (.I0(\sbus_o_5[rdata] [3]),
        .I1(\sbus_o_0[rdata] [3]),
        .I2(\sbus_o_2[rdata] [3]),
        .I3(\sbus_o_1[rdata] [3]),
        .I4(\sbus_o_4[rdata] [3]),
        .I5(\sbus_o_3[rdata] [3]),
        .O(\sbus_o_mux[rdata][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][4]_i_1 
       (.I0(\sbus_o_5[rdata] [4]),
        .I1(\sbus_o_0[rdata] [4]),
        .I2(\sbus_o_2[rdata] [4]),
        .I3(\sbus_o_1[rdata] [4]),
        .I4(\sbus_o_4[rdata] [4]),
        .I5(\sbus_o_3[rdata] [4]),
        .O(\sbus_o_mux[rdata][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][5]_i_1 
       (.I0(\sbus_o_5[rdata] [5]),
        .I1(\sbus_o_0[rdata] [5]),
        .I2(\sbus_o_2[rdata] [5]),
        .I3(\sbus_o_1[rdata] [5]),
        .I4(\sbus_o_4[rdata] [5]),
        .I5(\sbus_o_3[rdata] [5]),
        .O(\sbus_o_mux[rdata][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][6]_i_1 
       (.I0(\sbus_o_5[rdata] [6]),
        .I1(\sbus_o_0[rdata] [6]),
        .I2(\sbus_o_2[rdata] [6]),
        .I3(\sbus_o_1[rdata] [6]),
        .I4(\sbus_o_4[rdata] [6]),
        .I5(\sbus_o_3[rdata] [6]),
        .O(\sbus_o_mux[rdata][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][7]_i_1 
       (.I0(\sbus_o_5[rdata] [7]),
        .I1(\sbus_o_0[rdata] [7]),
        .I2(\sbus_o_2[rdata] [7]),
        .I3(\sbus_o_1[rdata] [7]),
        .I4(\sbus_o_4[rdata] [7]),
        .I5(\sbus_o_3[rdata] [7]),
        .O(\sbus_o_mux[rdata][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][8]_i_1 
       (.I0(\sbus_o_5[rdata] [8]),
        .I1(\sbus_o_0[rdata] [8]),
        .I2(\sbus_o_2[rdata] [8]),
        .I3(\sbus_o_1[rdata] [8]),
        .I4(\sbus_o_4[rdata] [8]),
        .I5(\sbus_o_3[rdata] [8]),
        .O(\sbus_o_mux[rdata][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \sbus_o_mux[rdata][9]_i_1 
       (.I0(\sbus_o_5[rdata] [9]),
        .I1(\sbus_o_0[rdata] [9]),
        .I2(\sbus_o_2[rdata] [9]),
        .I3(\sbus_o_1[rdata] [9]),
        .I4(\sbus_o_4[rdata] [9]),
        .I5(\sbus_o_3[rdata] [9]),
        .O(\sbus_o_mux[rdata][9]_i_1_n_0 ));
  FDRE \sbus_o_mux_reg[ack] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[ack]_i_1_n_0 ),
        .Q(\sbus_o_mux[ack] ),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][0]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [0]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][10] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][10]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [10]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][11] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][11]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [11]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][12] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][12]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [12]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][13] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][13]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [13]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][14] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][14]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [14]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][15] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][15]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [15]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][16] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][16]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [16]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][17] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][17]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [17]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][18] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][18]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [18]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][19] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][19]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [19]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][1]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [1]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][20] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][20]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [20]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][21] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][21]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [21]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][22] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][22]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [22]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][23] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][23]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [23]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][24] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][24]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [24]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][25] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][25]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [25]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][26] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][26]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [26]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][27] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][27]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [27]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][28] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][28]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [28]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][29] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][29]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [29]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][2] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][2]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [2]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][30] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][30]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [30]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][31] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][31]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [31]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][3] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][3]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [3]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][4] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][4]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [4]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][5] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][5]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [5]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][6] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][6]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [6]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][7] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][7]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [7]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][8] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][8]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [8]),
        .R(1'b0));
  FDRE \sbus_o_mux_reg[rdata][9] 
       (.C(clk),
        .CE(1'b1),
        .D(\sbus_o_mux[rdata][9]_i_1_n_0 ),
        .Q(\sbus_o_mux[rdata] [9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "top_axi_sbus_bridge" *) 
module system_axi_sbus_bridge_0_0_top_axi_sbus_bridge
   (bus3_sbus_addr,
    bus3_sbus_we,
    bus3_sbus_rd,
    reset_o,
    clk_o,
    s00_axi_awready,
    s00_axi_wready,
    s00_axi_bid,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_arready,
    s00_axi_rid,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rlast,
    s00_axi_rvalid,
    bus0_sbus_wdata,
    bus3_sbus_be,
    sync_o,
    irq_o,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awid,
    s00_axi_awaddr,
    s00_axi_awlen,
    s00_axi_awsize,
    s00_axi_awburst,
    s00_axi_awlock,
    s00_axi_awcache,
    s00_axi_awprot,
    s00_axi_awqos,
    s00_axi_awregion,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wlast,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arid,
    s00_axi_araddr,
    s00_axi_arlen,
    s00_axi_arsize,
    s00_axi_arburst,
    s00_axi_arlock,
    s00_axi_arcache,
    s00_axi_arprot,
    s00_axi_arqos,
    s00_axi_arregion,
    s00_axi_arvalid,
    s00_axi_rready,
    bus0_sbus_rdata,
    bus0_sbus_ack,
    bus1_sbus_rdata,
    bus1_sbus_ack,
    bus2_sbus_rdata,
    bus2_sbus_ack,
    bus3_sbus_rdata,
    bus3_sbus_ack);
  output [15:0]bus3_sbus_addr;
  output bus3_sbus_we;
  output bus3_sbus_rd;
  output reset_o;
  output clk_o;
  output s00_axi_awready;
  output s00_axi_wready;
  output [11:0]s00_axi_bid;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  output s00_axi_arready;
  output [11:0]s00_axi_rid;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rlast;
  output s00_axi_rvalid;
  output [31:0]bus0_sbus_wdata;
  output [3:0]bus3_sbus_be;
  output [7:0]sync_o;
  output irq_o;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [11:0]s00_axi_awid;
  input [17:0]s00_axi_awaddr;
  input [7:0]s00_axi_awlen;
  input [2:0]s00_axi_awsize;
  input [1:0]s00_axi_awburst;
  input s00_axi_awlock;
  input [3:0]s00_axi_awcache;
  input [2:0]s00_axi_awprot;
  input [3:0]s00_axi_awqos;
  input [3:0]s00_axi_awregion;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wlast;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input [11:0]s00_axi_arid;
  input [17:0]s00_axi_araddr;
  input [7:0]s00_axi_arlen;
  input [2:0]s00_axi_arsize;
  input [1:0]s00_axi_arburst;
  input s00_axi_arlock;
  input [3:0]s00_axi_arcache;
  input [2:0]s00_axi_arprot;
  input [3:0]s00_axi_arqos;
  input [3:0]s00_axi_arregion;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [31:0]bus0_sbus_rdata;
  input bus0_sbus_ack;
  input [31:0]bus1_sbus_rdata;
  input bus1_sbus_ack;
  input [31:0]bus2_sbus_rdata;
  input bus2_sbus_ack;
  input [31:0]bus3_sbus_rdata;
  input bus3_sbus_ack;

  wire U_0_n_0;
  wire U_0_n_1;
  wire U_0_n_2;
  wire U_0_n_3;
  wire U_0_n_38;
  wire U_0_n_39;
  wire U_0_n_4;
  wire U_0_n_40;
  wire U_0_n_41;
  wire U_0_n_42;
  wire U_0_n_43;
  wire U_0_n_44;
  wire U_0_n_45;
  wire U_0_n_46;
  wire U_0_n_47;
  wire U_0_n_48;
  wire U_0_n_49;
  wire U_0_n_5;
  wire U_0_n_50;
  wire U_0_n_51;
  wire U_0_n_52;
  wire U_0_n_53;
  wire U_0_n_54;
  wire U_0_n_55;
  wire U_0_n_56;
  wire U_0_n_57;
  wire U_0_n_58;
  wire U_0_n_59;
  wire U_0_n_60;
  wire U_0_n_61;
  wire U_0_n_62;
  wire U_0_n_63;
  wire U_0_n_64;
  wire U_0_n_65;
  wire U_0_n_66;
  wire U_0_n_67;
  wire U_0_n_68;
  wire U_0_n_69;
  wire U_2_n_0;
  wire U_2_n_1;
  wire U_2_n_2;
  wire U_3_i_67_n_0;
  wire U_3_i_70_n_0;
  wire U_3_i_71_n_0;
  wire U_3_i_72_n_0;
  wire U_3_i_73_n_0;
  wire U_3_i_74_n_0;
  wire U_3_i_75_n_0;
  wire U_3_i_76_n_0;
  wire U_3_i_77_n_0;
  wire U_3_i_78_n_0;
  wire U_3_i_79_n_0;
  wire U_4_n_1;
  wire U_5_n_32;
  wire U_7_n_1;
  wire U_7_n_2;
  wire bus0_sbus_ack;
  wire [31:0]bus0_sbus_rdata;
  wire [31:0]bus0_sbus_wdata;
  wire bus1_sbus_ack;
  wire [31:0]bus1_sbus_rdata;
  wire bus2_sbus_ack;
  wire [31:0]bus2_sbus_rdata;
  wire bus3_sbus_ack;
  wire [15:0]bus3_sbus_addr;
  wire [3:0]bus3_sbus_be;
  wire bus3_sbus_rd;
  wire [31:0]bus3_sbus_rdata;
  wire bus3_sbus_we;
  wire clk_o;
  wire [31:0]dout;
  wire enable;
  wire eqOp;
  wire irq_flag;
  wire irq_o;
  wire [31:0]modulus;
  wire [7:1]p_0_out;
  wire [6:0]q;
  wire [127:32]reg_din;
  wire reset_o;
  wire s00_axi_aclk;
  wire [17:0]s00_axi_araddr;
  wire [1:0]s00_axi_arburst;
  wire [3:0]s00_axi_arcache;
  wire s00_axi_aresetn;
  wire [11:0]s00_axi_arid;
  wire [7:0]s00_axi_arlen;
  wire s00_axi_arlock;
  wire [2:0]s00_axi_arprot;
  wire [3:0]s00_axi_arqos;
  wire s00_axi_arready;
  wire [3:0]s00_axi_arregion;
  wire [2:0]s00_axi_arsize;
  wire s00_axi_arvalid;
  wire [17:0]s00_axi_awaddr;
  wire [1:0]s00_axi_awburst;
  wire [3:0]s00_axi_awcache;
  wire [11:0]s00_axi_awid;
  wire [7:0]s00_axi_awlen;
  wire s00_axi_awlock;
  wire [2:0]s00_axi_awprot;
  wire [3:0]s00_axi_awqos;
  wire s00_axi_awready;
  wire [3:0]s00_axi_awregion;
  wire [2:0]s00_axi_awsize;
  wire s00_axi_awvalid;
  wire [11:0]s00_axi_bid;
  wire s00_axi_bready;
  wire [1:0]s00_axi_bresp;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire [11:0]s00_axi_rid;
  wire s00_axi_rlast;
  wire s00_axi_rready;
  wire [1:0]s00_axi_rresp;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wlast;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  (* MARK_DEBUG *) wire [15:0]\sbus_i_in[addr] ;
  (* MARK_DEBUG *) wire [3:0]\sbus_i_in[be] ;
  (* MARK_DEBUG *) wire \sbus_i_in[rd] ;
  (* MARK_DEBUG *) wire [31:0]\sbus_i_in[wdata] ;
  (* MARK_DEBUG *) wire \sbus_i_in[we] ;
  wire \sbus_o_4[ack] ;
  wire [31:0]\sbus_o_4[rdata] ;
  wire \sbus_o_5[ack] ;
  wire [31:0]\sbus_o_5[rdata] ;
  (* MARK_DEBUG *) wire \sbus_o_mux[ack] ;
  (* MARK_DEBUG *) wire [31:0]\sbus_o_mux[rdata] ;
  wire [7:0]sync_o;
  wire [6:0]timer_out;
  wire \NLW_U_3_sbus_o_null[ack]_UNCONNECTED ;
  wire [31:0]\NLW_U_3_sbus_o_null[rdata]_UNCONNECTED ;

  system_axi_sbus_bridge_0_0_register_array_be U_0
       (.CLK(clk_o),
        .D(irq_flag),
        .E(enable),
        .Q({modulus,U_0_n_38,U_0_n_39,U_0_n_40,U_0_n_41,U_0_n_42,U_0_n_43,U_0_n_44,U_0_n_45,U_0_n_46,U_0_n_47,U_0_n_48,U_0_n_49,U_0_n_50,U_0_n_51,U_0_n_52,U_0_n_53,U_0_n_54,U_0_n_55,U_0_n_56,U_0_n_57,U_0_n_58,U_0_n_59,U_0_n_60,U_0_n_61,U_0_n_62,U_0_n_63,U_0_n_64,U_0_n_65,U_0_n_66,U_0_n_67,U_0_n_68}),
        .S(U_0_n_69),
        .SR(reset_o),
        .U_3_i_79(U_7_n_2),
        .U_3_i_79_0(U_7_n_1),
        .bus0_sbus_wdata(bus0_sbus_wdata),
        .eqOp_carry(U_2_n_0),
        .eqOp_carry_0({U_2_n_1,U_2_n_2}),
        .irq_flag_reg(U_0_n_4),
        .irq_o(irq_o),
        .\reg_reg[106]_0 (U_0_n_0),
        .\reg_reg[106]_1 (U_0_n_5),
        .\sbus_i_out[addr] ({bus3_sbus_addr[9],bus3_sbus_addr[6:0]}),
        .\sbus_i_out[we] (bus3_sbus_we),
        .\sbus_i_out_reg[addr][1] (U_0_n_1),
        .\sbus_i_out_reg[addr][1]_0 (U_0_n_3),
        .\sbus_i_out_reg[addr][6] (U_0_n_2),
        .sync_o(sync_o));
  system_axi_sbus_bridge_0_0_cnt_modulus_c U_2
       (.CLK(clk_o),
        .D(modulus[31:3]),
        .E(enable),
        .S(U_0_n_69),
        .\cnt_int_reg[0]_0 (U_2_n_0),
        .\cnt_int_reg[0]_1 (U_0_n_5),
        .\cnt_int_reg[2]_0 ({U_2_n_1,U_2_n_2}),
        .\cnt_int_reg[31]_0 (U_0_n_0));
  system_axi_sbus_bridge_0_0_sbus_mux5 U_3
       (.clk(clk_o),
        .\sbus_i_in[addr] (\sbus_i_in[addr] ),
        .\sbus_i_in[be] (\sbus_i_in[be] ),
        .\sbus_i_in[rd] (\sbus_i_in[rd] ),
        .\sbus_i_in[wdata] (\sbus_i_in[wdata] ),
        .\sbus_i_in[we] (\sbus_i_in[we] ),
        .\sbus_i_out[addr] (bus3_sbus_addr),
        .\sbus_i_out[be] (bus3_sbus_be),
        .\sbus_i_out[rd] (bus3_sbus_rd),
        .\sbus_i_out[wdata] (bus0_sbus_wdata),
        .\sbus_i_out[we] (bus3_sbus_we),
        .\sbus_o_0[ack] (bus0_sbus_ack),
        .\sbus_o_0[rdata] (bus0_sbus_rdata),
        .\sbus_o_1[ack] (bus1_sbus_ack),
        .\sbus_o_1[rdata] (bus1_sbus_rdata),
        .\sbus_o_2[ack] (bus2_sbus_ack),
        .\sbus_o_2[rdata] (bus2_sbus_rdata),
        .\sbus_o_3[ack] (bus3_sbus_ack),
        .\sbus_o_3[rdata] (bus3_sbus_rdata),
        .\sbus_o_4[ack] (\sbus_o_4[ack] ),
        .\sbus_o_4[rdata] (\sbus_o_4[rdata] ),
        .\sbus_o_5[ack] (\sbus_o_5[ack] ),
        .\sbus_o_5[rdata] (\sbus_o_5[rdata] ),
        .\sbus_o_mux[ack] (\sbus_o_mux[ack] ),
        .\sbus_o_mux[rdata] (\sbus_o_mux[rdata] ),
        .\sbus_o_null[ack] (\NLW_U_3_sbus_o_null[ack]_UNCONNECTED ),
        .\sbus_o_null[rdata] (\NLW_U_3_sbus_o_null[rdata]_UNCONNECTED [31:0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_1
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[63]),
        .I2(U_0_n_1),
        .I3(reg_din[95]),
        .I4(reg_din[127]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [31]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_10
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[54]),
        .I2(U_0_n_1),
        .I3(reg_din[86]),
        .I4(reg_din[118]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_11
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[53]),
        .I2(U_0_n_1),
        .I3(reg_din[85]),
        .I4(reg_din[117]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_12
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[52]),
        .I2(U_0_n_1),
        .I3(reg_din[84]),
        .I4(reg_din[116]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_13
       (.I0(U_3_i_70_n_0),
        .I1(reg_din[83]),
        .I2(reg_din[115]),
        .I3(U_0_n_3),
        .I4(U_3_i_71_n_0),
        .I5(U_3_i_72_n_0),
        .O(\sbus_o_4[rdata] [19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_14
       (.I0(U_3_i_70_n_0),
        .I1(reg_din[82]),
        .I2(reg_din[114]),
        .I3(U_0_n_3),
        .I4(U_3_i_73_n_0),
        .I5(U_3_i_72_n_0),
        .O(\sbus_o_4[rdata] [18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_15
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[49]),
        .I2(U_0_n_1),
        .I3(reg_din[81]),
        .I4(reg_din[113]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_16
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[48]),
        .I2(U_0_n_1),
        .I3(reg_din[80]),
        .I4(reg_din[112]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_17
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[47]),
        .I2(U_0_n_1),
        .I3(reg_din[79]),
        .I4(reg_din[111]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_18
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[46]),
        .I2(U_0_n_1),
        .I3(reg_din[78]),
        .I4(reg_din[110]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_19
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[45]),
        .I2(U_0_n_1),
        .I3(reg_din[77]),
        .I4(reg_din[109]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_2
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[62]),
        .I2(U_0_n_1),
        .I3(reg_din[94]),
        .I4(reg_din[126]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_20
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[44]),
        .I2(U_0_n_1),
        .I3(reg_din[76]),
        .I4(reg_din[108]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_21
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[43]),
        .I2(U_0_n_1),
        .I3(reg_din[75]),
        .I4(reg_din[107]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_22
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[42]),
        .I2(U_0_n_1),
        .I3(reg_din[74]),
        .I4(reg_din[106]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_23
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[41]),
        .I2(U_0_n_1),
        .I3(reg_din[73]),
        .I4(reg_din[105]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_24
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[40]),
        .I2(U_0_n_1),
        .I3(reg_din[72]),
        .I4(reg_din[104]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_25
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[39]),
        .I2(U_0_n_1),
        .I3(reg_din[71]),
        .I4(reg_din[103]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_26
       (.I0(U_3_i_70_n_0),
        .I1(reg_din[70]),
        .I2(reg_din[102]),
        .I3(U_0_n_3),
        .I4(U_3_i_74_n_0),
        .I5(U_3_i_72_n_0),
        .O(\sbus_o_4[rdata] [6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_27
       (.I0(U_3_i_70_n_0),
        .I1(reg_din[69]),
        .I2(reg_din[101]),
        .I3(U_0_n_3),
        .I4(U_3_i_75_n_0),
        .I5(U_3_i_72_n_0),
        .O(\sbus_o_4[rdata] [5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_28
       (.I0(U_3_i_70_n_0),
        .I1(reg_din[68]),
        .I2(reg_din[100]),
        .I3(U_0_n_3),
        .I4(U_3_i_76_n_0),
        .I5(U_3_i_72_n_0),
        .O(\sbus_o_4[rdata] [4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_29
       (.I0(U_3_i_70_n_0),
        .I1(reg_din[67]),
        .I2(reg_din[99]),
        .I3(U_0_n_3),
        .I4(U_3_i_77_n_0),
        .I5(U_3_i_72_n_0),
        .O(\sbus_o_4[rdata] [3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_3
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[61]),
        .I2(U_0_n_1),
        .I3(reg_din[93]),
        .I4(reg_din[125]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_30
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[34]),
        .I2(U_0_n_1),
        .I3(reg_din[66]),
        .I4(reg_din[98]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_31
       (.I0(U_3_i_70_n_0),
        .I1(reg_din[65]),
        .I2(reg_din[97]),
        .I3(U_0_n_3),
        .I4(U_3_i_78_n_0),
        .I5(U_3_i_72_n_0),
        .O(\sbus_o_4[rdata] [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    U_3_i_32
       (.I0(U_3_i_70_n_0),
        .I1(reg_din[64]),
        .I2(reg_din[96]),
        .I3(U_0_n_3),
        .I4(U_3_i_79_n_0),
        .I5(U_3_i_72_n_0),
        .O(\sbus_o_4[rdata] [0]));
  LUT5 #(
    .INIT(32'h04040400)) 
    U_3_i_33
       (.I0(bus3_sbus_addr[9]),
        .I1(U_0_n_2),
        .I2(bus3_sbus_addr[2]),
        .I3(bus3_sbus_we),
        .I4(bus3_sbus_rd),
        .O(\sbus_o_4[ack] ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_4
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[60]),
        .I2(U_0_n_1),
        .I3(reg_din[92]),
        .I4(reg_din[124]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_5
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[59]),
        .I2(U_0_n_1),
        .I3(reg_din[91]),
        .I4(reg_din[123]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_6
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[58]),
        .I2(U_0_n_1),
        .I3(reg_din[90]),
        .I4(reg_din[122]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [26]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    U_3_i_67
       (.I0(U_0_n_2),
        .I1(bus3_sbus_addr[9]),
        .I2(bus3_sbus_addr[1]),
        .I3(bus3_sbus_addr[2]),
        .I4(bus3_sbus_addr[0]),
        .O(U_3_i_67_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_7
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[57]),
        .I2(U_0_n_1),
        .I3(reg_din[89]),
        .I4(reg_din[121]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [25]));
  LUT4 #(
    .INIT(16'h0004)) 
    U_3_i_70
       (.I0(bus3_sbus_addr[2]),
        .I1(U_0_n_2),
        .I2(bus3_sbus_addr[9]),
        .I3(bus3_sbus_addr[0]),
        .O(U_3_i_70_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    U_3_i_71
       (.I0(U_0_n_2),
        .I1(bus3_sbus_addr[9]),
        .I2(bus3_sbus_addr[1]),
        .I3(bus3_sbus_addr[2]),
        .I4(reg_din[51]),
        .O(U_3_i_71_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    U_3_i_72
       (.I0(U_0_n_2),
        .I1(bus3_sbus_addr[9]),
        .I2(bus3_sbus_addr[1]),
        .I3(bus3_sbus_addr[2]),
        .I4(bus3_sbus_addr[0]),
        .O(U_3_i_72_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    U_3_i_73
       (.I0(U_0_n_2),
        .I1(bus3_sbus_addr[9]),
        .I2(bus3_sbus_addr[1]),
        .I3(bus3_sbus_addr[2]),
        .I4(reg_din[50]),
        .O(U_3_i_73_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    U_3_i_74
       (.I0(U_0_n_2),
        .I1(bus3_sbus_addr[9]),
        .I2(bus3_sbus_addr[1]),
        .I3(bus3_sbus_addr[2]),
        .I4(reg_din[38]),
        .O(U_3_i_74_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    U_3_i_75
       (.I0(U_0_n_2),
        .I1(bus3_sbus_addr[9]),
        .I2(bus3_sbus_addr[1]),
        .I3(bus3_sbus_addr[2]),
        .I4(reg_din[37]),
        .O(U_3_i_75_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    U_3_i_76
       (.I0(U_0_n_2),
        .I1(bus3_sbus_addr[9]),
        .I2(bus3_sbus_addr[1]),
        .I3(bus3_sbus_addr[2]),
        .I4(reg_din[36]),
        .O(U_3_i_76_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    U_3_i_77
       (.I0(U_0_n_2),
        .I1(bus3_sbus_addr[9]),
        .I2(bus3_sbus_addr[1]),
        .I3(bus3_sbus_addr[2]),
        .I4(reg_din[35]),
        .O(U_3_i_77_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    U_3_i_78
       (.I0(U_0_n_2),
        .I1(bus3_sbus_addr[9]),
        .I2(bus3_sbus_addr[1]),
        .I3(bus3_sbus_addr[2]),
        .I4(reg_din[33]),
        .O(U_3_i_78_n_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    U_3_i_79
       (.I0(U_0_n_2),
        .I1(bus3_sbus_addr[9]),
        .I2(bus3_sbus_addr[1]),
        .I3(bus3_sbus_addr[2]),
        .I4(reg_din[32]),
        .O(U_3_i_79_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_8
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[56]),
        .I2(U_0_n_1),
        .I3(reg_din[88]),
        .I4(reg_din[120]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    U_3_i_9
       (.I0(U_3_i_67_n_0),
        .I1(reg_din[55]),
        .I2(U_0_n_1),
        .I3(reg_din[87]),
        .I4(reg_din[119]),
        .I5(U_0_n_3),
        .O(\sbus_o_4[rdata] [23]));
  system_axi_sbus_bridge_0_0_cnt_modulus U_4
       (.CLK(clk_o),
        .D(dout[31]),
        .SR(reset_o),
        .\cnt_reg[0]_0 (U_4_n_1),
        .\cnt_reg[31] (U_5_n_32),
        .eqOp(eqOp));
  system_axi_sbus_bridge_0_0_cnt_modulus__parameterized1 U_5
       (.D(dout),
        .clk_o(clk_o),
        .\cnt_reg[0]_0 (U_5_n_32),
        .\cnt_reg[31]_0 (U_4_n_1),
        .eqOp(eqOp));
  system_axi_sbus_bridge_0_0_cnt_modulus__parameterized3 U_6
       (.D(p_0_out),
        .E(enable),
        .Q(timer_out),
        .SR(reset_o),
        .clk_o(clk_o),
        .\sync_reg[7] (q));
  system_axi_sbus_bridge_0_0_profiler U_7
       (.clk_o(clk_o),
        .reset_o(reset_o),
        .\sbus_i_out[addr] (bus3_sbus_addr),
        .\sbus_i_out[rd] (bus3_sbus_rd),
        .\sbus_i_out[we] (bus3_sbus_we),
        .\sbus_i_out_reg[addr][11] (U_7_n_2),
        .\sbus_i_out_reg[addr][15] (U_7_n_1),
        .\sbus_o_5[ack] (\sbus_o_5[ack] ),
        .\sbus_o_5[rdata] (\sbus_o_5[rdata] ));
  (* C_SLV_ADDR_WIDTH = "16" *) 
  (* C_SLV_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ADDR_WIDTH = "18" *) 
  (* C_S_AXI_ARUSER_WIDTH = "0" *) 
  (* C_S_AXI_AWUSER_WIDTH = "0" *) 
  (* C_S_AXI_BUSER_WIDTH = "0" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "12" *) 
  (* C_S_AXI_RUSER_WIDTH = "0" *) 
  (* C_S_AXI_WUSER_WIDTH = "0" *) 
  (* pipeline_g = "FALSE" *) 
  system_axi_sbus_bridge_0_0_S00_AXI i_S00_AXI
       (.S_AXI_ACLK(s00_axi_aclk),
        .S_AXI_ARADDR(s00_axi_araddr),
        .S_AXI_ARBURST(s00_axi_arburst),
        .S_AXI_ARCACHE(s00_axi_arcache),
        .S_AXI_ARESETN(s00_axi_aresetn),
        .S_AXI_ARID(s00_axi_arid),
        .S_AXI_ARLEN(s00_axi_arlen),
        .S_AXI_ARLOCK(s00_axi_arlock),
        .S_AXI_ARPROT(s00_axi_arprot),
        .S_AXI_ARQOS(s00_axi_arqos),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_ARREGION(s00_axi_arregion),
        .S_AXI_ARSIZE(s00_axi_arsize),
        .S_AXI_ARVALID(s00_axi_arvalid),
        .S_AXI_AWADDR(s00_axi_awaddr),
        .S_AXI_AWBURST(s00_axi_awburst),
        .S_AXI_AWCACHE(s00_axi_awcache),
        .S_AXI_AWID(s00_axi_awid),
        .S_AXI_AWLEN(s00_axi_awlen),
        .S_AXI_AWLOCK(s00_axi_awlock),
        .S_AXI_AWPROT(s00_axi_awprot),
        .S_AXI_AWQOS(s00_axi_awqos),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_AWREGION(s00_axi_awregion),
        .S_AXI_AWSIZE(s00_axi_awsize),
        .S_AXI_AWVALID(s00_axi_awvalid),
        .S_AXI_BID(s00_axi_bid),
        .S_AXI_BREADY(s00_axi_bready),
        .S_AXI_BRESP(s00_axi_bresp),
        .S_AXI_BVALID(s00_axi_bvalid),
        .S_AXI_RDATA(s00_axi_rdata),
        .S_AXI_RID(s00_axi_rid),
        .S_AXI_RLAST(s00_axi_rlast),
        .S_AXI_RREADY(s00_axi_rready),
        .S_AXI_RRESP(s00_axi_rresp),
        .S_AXI_RVALID(s00_axi_rvalid),
        .S_AXI_WDATA(s00_axi_wdata),
        .S_AXI_WLAST(s00_axi_wlast),
        .S_AXI_WREADY(s00_axi_wready),
        .S_AXI_WSTRB(s00_axi_wstrb),
        .S_AXI_WVALID(s00_axi_wvalid),
        .clk_o(clk_o),
        .reset_o(reset_o),
        .sbus_i_addr(\sbus_i_in[addr] ),
        .sbus_i_be(\sbus_i_in[be] ),
        .sbus_i_rd(\sbus_i_in[rd] ),
        .sbus_i_wdata(\sbus_i_in[wdata] ),
        .sbus_i_we(\sbus_i_in[we] ),
        .sbus_o_ack(\sbus_o_mux[ack] ),
        .sbus_o_rdata(\sbus_o_mux[rdata] ));
  FDRE irq_flag_reg
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_4),
        .Q(irq_flag),
        .R(1'b0));
  FDRE \q_reg[0] 
       (.C(clk_o),
        .CE(1'b1),
        .D(timer_out[0]),
        .Q(q[0]),
        .R(1'b0));
  FDRE \q_reg[1] 
       (.C(clk_o),
        .CE(1'b1),
        .D(timer_out[1]),
        .Q(q[1]),
        .R(1'b0));
  FDRE \q_reg[2] 
       (.C(clk_o),
        .CE(1'b1),
        .D(timer_out[2]),
        .Q(q[2]),
        .R(1'b0));
  FDRE \q_reg[3] 
       (.C(clk_o),
        .CE(1'b1),
        .D(timer_out[3]),
        .Q(q[3]),
        .R(1'b0));
  FDRE \q_reg[4] 
       (.C(clk_o),
        .CE(1'b1),
        .D(timer_out[4]),
        .Q(q[4]),
        .R(1'b0));
  FDRE \q_reg[5] 
       (.C(clk_o),
        .CE(1'b1),
        .D(timer_out[5]),
        .Q(q[5]),
        .R(1'b0));
  FDRE \q_reg[6] 
       (.C(clk_o),
        .CE(1'b1),
        .D(timer_out[6]),
        .Q(q[6]),
        .R(1'b0));
  FDRE \reg_din_reg[100] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[4]),
        .Q(reg_din[100]),
        .R(1'b0));
  FDRE \reg_din_reg[101] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[5]),
        .Q(reg_din[101]),
        .R(1'b0));
  FDRE \reg_din_reg[102] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[6]),
        .Q(reg_din[102]),
        .R(1'b0));
  FDRE \reg_din_reg[103] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[7]),
        .Q(reg_din[103]),
        .R(1'b0));
  FDRE \reg_din_reg[104] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[8]),
        .Q(reg_din[104]),
        .R(1'b0));
  FDRE \reg_din_reg[105] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[9]),
        .Q(reg_din[105]),
        .R(1'b0));
  FDRE \reg_din_reg[106] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[10]),
        .Q(reg_din[106]),
        .R(1'b0));
  FDRE \reg_din_reg[107] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[11]),
        .Q(reg_din[107]),
        .R(1'b0));
  FDRE \reg_din_reg[108] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[12]),
        .Q(reg_din[108]),
        .R(1'b0));
  FDRE \reg_din_reg[109] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[13]),
        .Q(reg_din[109]),
        .R(1'b0));
  FDRE \reg_din_reg[110] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[14]),
        .Q(reg_din[110]),
        .R(1'b0));
  FDRE \reg_din_reg[111] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[15]),
        .Q(reg_din[111]),
        .R(1'b0));
  FDRE \reg_din_reg[112] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[16]),
        .Q(reg_din[112]),
        .R(1'b0));
  FDRE \reg_din_reg[113] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[17]),
        .Q(reg_din[113]),
        .R(1'b0));
  FDRE \reg_din_reg[114] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[18]),
        .Q(reg_din[114]),
        .R(1'b0));
  FDRE \reg_din_reg[115] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[19]),
        .Q(reg_din[115]),
        .R(1'b0));
  FDRE \reg_din_reg[116] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[20]),
        .Q(reg_din[116]),
        .R(1'b0));
  FDRE \reg_din_reg[117] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[21]),
        .Q(reg_din[117]),
        .R(1'b0));
  FDRE \reg_din_reg[118] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[22]),
        .Q(reg_din[118]),
        .R(1'b0));
  FDRE \reg_din_reg[119] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[23]),
        .Q(reg_din[119]),
        .R(1'b0));
  FDRE \reg_din_reg[120] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[24]),
        .Q(reg_din[120]),
        .R(1'b0));
  FDRE \reg_din_reg[121] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[25]),
        .Q(reg_din[121]),
        .R(1'b0));
  FDRE \reg_din_reg[122] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[26]),
        .Q(reg_din[122]),
        .R(1'b0));
  FDRE \reg_din_reg[123] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[27]),
        .Q(reg_din[123]),
        .R(1'b0));
  FDRE \reg_din_reg[124] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[28]),
        .Q(reg_din[124]),
        .R(1'b0));
  FDRE \reg_din_reg[125] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[29]),
        .Q(reg_din[125]),
        .R(1'b0));
  FDRE \reg_din_reg[126] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[30]),
        .Q(reg_din[126]),
        .R(1'b0));
  FDRE \reg_din_reg[127] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[31]),
        .Q(reg_din[127]),
        .R(1'b0));
  FDRE \reg_din_reg[32] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[0]),
        .Q(reg_din[32]),
        .R(1'b0));
  FDRE \reg_din_reg[33] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[1]),
        .Q(reg_din[33]),
        .R(1'b0));
  FDRE \reg_din_reg[34] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[2]),
        .Q(reg_din[34]),
        .R(1'b0));
  FDRE \reg_din_reg[35] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[3]),
        .Q(reg_din[35]),
        .R(1'b0));
  FDRE \reg_din_reg[36] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[4]),
        .Q(reg_din[36]),
        .R(1'b0));
  FDRE \reg_din_reg[37] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[5]),
        .Q(reg_din[37]),
        .R(1'b0));
  FDRE \reg_din_reg[38] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[6]),
        .Q(reg_din[38]),
        .R(1'b0));
  FDRE \reg_din_reg[39] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[7]),
        .Q(reg_din[39]),
        .R(1'b0));
  FDRE \reg_din_reg[40] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[8]),
        .Q(reg_din[40]),
        .R(1'b0));
  FDRE \reg_din_reg[41] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[9]),
        .Q(reg_din[41]),
        .R(1'b0));
  FDRE \reg_din_reg[42] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[10]),
        .Q(reg_din[42]),
        .R(1'b0));
  FDRE \reg_din_reg[43] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[11]),
        .Q(reg_din[43]),
        .R(1'b0));
  FDRE \reg_din_reg[44] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[12]),
        .Q(reg_din[44]),
        .R(1'b0));
  FDRE \reg_din_reg[45] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[13]),
        .Q(reg_din[45]),
        .R(1'b0));
  FDRE \reg_din_reg[46] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[14]),
        .Q(reg_din[46]),
        .R(1'b0));
  FDRE \reg_din_reg[47] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[15]),
        .Q(reg_din[47]),
        .R(1'b0));
  FDRE \reg_din_reg[48] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[16]),
        .Q(reg_din[48]),
        .R(1'b0));
  FDRE \reg_din_reg[49] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[17]),
        .Q(reg_din[49]),
        .R(1'b0));
  FDRE \reg_din_reg[50] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[18]),
        .Q(reg_din[50]),
        .R(1'b0));
  FDRE \reg_din_reg[51] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[19]),
        .Q(reg_din[51]),
        .R(1'b0));
  FDRE \reg_din_reg[52] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[20]),
        .Q(reg_din[52]),
        .R(1'b0));
  FDRE \reg_din_reg[53] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[21]),
        .Q(reg_din[53]),
        .R(1'b0));
  FDRE \reg_din_reg[54] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[22]),
        .Q(reg_din[54]),
        .R(1'b0));
  FDRE \reg_din_reg[55] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[23]),
        .Q(reg_din[55]),
        .R(1'b0));
  FDRE \reg_din_reg[56] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[24]),
        .Q(reg_din[56]),
        .R(1'b0));
  FDRE \reg_din_reg[57] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[25]),
        .Q(reg_din[57]),
        .R(1'b0));
  FDRE \reg_din_reg[58] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[26]),
        .Q(reg_din[58]),
        .R(1'b0));
  FDRE \reg_din_reg[59] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[27]),
        .Q(reg_din[59]),
        .R(1'b0));
  FDRE \reg_din_reg[60] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[28]),
        .Q(reg_din[60]),
        .R(1'b0));
  FDRE \reg_din_reg[61] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[29]),
        .Q(reg_din[61]),
        .R(1'b0));
  FDRE \reg_din_reg[62] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[30]),
        .Q(reg_din[62]),
        .R(1'b0));
  FDRE \reg_din_reg[63] 
       (.C(clk_o),
        .CE(1'b1),
        .D(dout[31]),
        .Q(reg_din[63]),
        .R(1'b0));
  FDRE \reg_din_reg[64] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_68),
        .Q(reg_din[64]),
        .R(1'b0));
  FDRE \reg_din_reg[65] 
       (.C(clk_o),
        .CE(1'b1),
        .D(irq_flag),
        .Q(reg_din[65]),
        .R(1'b0));
  FDRE \reg_din_reg[66] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_67),
        .Q(reg_din[66]),
        .R(1'b0));
  FDRE \reg_din_reg[67] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_66),
        .Q(reg_din[67]),
        .R(1'b0));
  FDRE \reg_din_reg[68] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_65),
        .Q(reg_din[68]),
        .R(1'b0));
  FDRE \reg_din_reg[69] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_64),
        .Q(reg_din[69]),
        .R(1'b0));
  FDRE \reg_din_reg[70] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_63),
        .Q(reg_din[70]),
        .R(1'b0));
  FDRE \reg_din_reg[71] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_62),
        .Q(reg_din[71]),
        .R(1'b0));
  FDRE \reg_din_reg[72] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_61),
        .Q(reg_din[72]),
        .R(1'b0));
  FDRE \reg_din_reg[73] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_60),
        .Q(reg_din[73]),
        .R(1'b0));
  FDRE \reg_din_reg[74] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_59),
        .Q(reg_din[74]),
        .R(1'b0));
  FDRE \reg_din_reg[75] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_58),
        .Q(reg_din[75]),
        .R(1'b0));
  FDRE \reg_din_reg[76] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_57),
        .Q(reg_din[76]),
        .R(1'b0));
  FDRE \reg_din_reg[77] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_56),
        .Q(reg_din[77]),
        .R(1'b0));
  FDRE \reg_din_reg[78] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_55),
        .Q(reg_din[78]),
        .R(1'b0));
  FDRE \reg_din_reg[79] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_54),
        .Q(reg_din[79]),
        .R(1'b0));
  FDRE \reg_din_reg[80] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_53),
        .Q(reg_din[80]),
        .R(1'b0));
  FDRE \reg_din_reg[81] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_52),
        .Q(reg_din[81]),
        .R(1'b0));
  FDRE \reg_din_reg[82] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_51),
        .Q(reg_din[82]),
        .R(1'b0));
  FDRE \reg_din_reg[83] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_50),
        .Q(reg_din[83]),
        .R(1'b0));
  FDRE \reg_din_reg[84] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_49),
        .Q(reg_din[84]),
        .R(1'b0));
  FDRE \reg_din_reg[85] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_48),
        .Q(reg_din[85]),
        .R(1'b0));
  FDRE \reg_din_reg[86] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_47),
        .Q(reg_din[86]),
        .R(1'b0));
  FDRE \reg_din_reg[87] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_46),
        .Q(reg_din[87]),
        .R(1'b0));
  FDRE \reg_din_reg[88] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_45),
        .Q(reg_din[88]),
        .R(1'b0));
  FDRE \reg_din_reg[89] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_44),
        .Q(reg_din[89]),
        .R(1'b0));
  FDRE \reg_din_reg[90] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_43),
        .Q(reg_din[90]),
        .R(1'b0));
  FDRE \reg_din_reg[91] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_42),
        .Q(reg_din[91]),
        .R(1'b0));
  FDRE \reg_din_reg[92] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_41),
        .Q(reg_din[92]),
        .R(1'b0));
  FDRE \reg_din_reg[93] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_40),
        .Q(reg_din[93]),
        .R(1'b0));
  FDRE \reg_din_reg[94] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_39),
        .Q(reg_din[94]),
        .R(1'b0));
  FDRE \reg_din_reg[95] 
       (.C(clk_o),
        .CE(1'b1),
        .D(U_0_n_38),
        .Q(reg_din[95]),
        .R(1'b0));
  FDRE \reg_din_reg[96] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[0]),
        .Q(reg_din[96]),
        .R(1'b0));
  FDRE \reg_din_reg[97] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[1]),
        .Q(reg_din[97]),
        .R(1'b0));
  FDRE \reg_din_reg[98] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[2]),
        .Q(reg_din[98]),
        .R(1'b0));
  FDRE \reg_din_reg[99] 
       (.C(clk_o),
        .CE(1'b1),
        .D(modulus[3]),
        .Q(reg_din[99]),
        .R(1'b0));
  FDRE \sync_reg[0] 
       (.C(clk_o),
        .CE(1'b1),
        .D(enable),
        .Q(sync_o[0]),
        .R(1'b0));
  FDRE \sync_reg[1] 
       (.C(clk_o),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(sync_o[1]),
        .R(1'b0));
  FDRE \sync_reg[2] 
       (.C(clk_o),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(sync_o[2]),
        .R(1'b0));
  FDRE \sync_reg[3] 
       (.C(clk_o),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(sync_o[3]),
        .R(1'b0));
  FDRE \sync_reg[4] 
       (.C(clk_o),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(sync_o[4]),
        .R(1'b0));
  FDRE \sync_reg[5] 
       (.C(clk_o),
        .CE(1'b1),
        .D(p_0_out[5]),
        .Q(sync_o[5]),
        .R(1'b0));
  FDRE \sync_reg[6] 
       (.C(clk_o),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(sync_o[6]),
        .R(1'b0));
  FDRE \sync_reg[7] 
       (.C(clk_o),
        .CE(1'b1),
        .D(p_0_out[7]),
        .Q(sync_o[7]),
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
