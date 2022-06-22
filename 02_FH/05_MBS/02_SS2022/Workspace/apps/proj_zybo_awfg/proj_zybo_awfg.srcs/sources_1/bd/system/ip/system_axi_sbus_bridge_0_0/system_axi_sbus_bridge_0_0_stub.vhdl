-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Jun 21 18:07:17 2022
-- Host        : M00443 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/_Projekte/Alfreda/Workspace/apps/proj_zybo_awfg/proj_zybo_awfg.srcs/sources_1/bd/system/ip/system_axi_sbus_bridge_0_0/system_axi_sbus_bridge_0_0_stub.vhdl
-- Design      : system_axi_sbus_bridge_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_axi_sbus_bridge_0_0 is
  Port ( 
    bus0_sbus_ack : in STD_LOGIC;
    bus0_sbus_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bus1_sbus_ack : in STD_LOGIC;
    bus1_sbus_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2_sbus_ack : in STD_LOGIC;
    bus2_sbus_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bus3_sbus_ack : in STD_LOGIC;
    bus3_sbus_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s00_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arlock : in STD_LOGIC;
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s00_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_awlock : in STD_LOGIC;
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wlast : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wvalid : in STD_LOGIC;
    bus0_sbus_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bus0_sbus_be : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bus0_sbus_rd : out STD_LOGIC;
    bus0_sbus_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus0_sbus_we : out STD_LOGIC;
    bus1_sbus_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bus1_sbus_be : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bus1_sbus_rd : out STD_LOGIC;
    bus1_sbus_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus1_sbus_we : out STD_LOGIC;
    bus2_sbus_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bus2_sbus_be : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bus2_sbus_rd : out STD_LOGIC;
    bus2_sbus_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus2_sbus_we : out STD_LOGIC;
    bus3_sbus_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    bus3_sbus_be : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bus3_sbus_rd : out STD_LOGIC;
    bus3_sbus_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bus3_sbus_we : out STD_LOGIC;
    clk_o : out STD_LOGIC;
    irq_o : out STD_LOGIC;
    reset_o : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_rlast : out STD_LOGIC;
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    sync_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end system_axi_sbus_bridge_0_0;

architecture stub of system_axi_sbus_bridge_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "bus0_sbus_ack,bus0_sbus_rdata[31:0],bus1_sbus_ack,bus1_sbus_rdata[31:0],bus2_sbus_ack,bus2_sbus_rdata[31:0],bus3_sbus_ack,bus3_sbus_rdata[31:0],s00_axi_aclk,s00_axi_araddr[17:0],s00_axi_arburst[1:0],s00_axi_arcache[3:0],s00_axi_aresetn,s00_axi_arid[11:0],s00_axi_arlen[7:0],s00_axi_arlock,s00_axi_arprot[2:0],s00_axi_arqos[3:0],s00_axi_arregion[3:0],s00_axi_arsize[2:0],s00_axi_aruser[0:0],s00_axi_arvalid,s00_axi_awaddr[17:0],s00_axi_awburst[1:0],s00_axi_awcache[3:0],s00_axi_awid[11:0],s00_axi_awlen[7:0],s00_axi_awlock,s00_axi_awprot[2:0],s00_axi_awqos[3:0],s00_axi_awregion[3:0],s00_axi_awsize[2:0],s00_axi_awuser[0:0],s00_axi_awvalid,s00_axi_bready,s00_axi_rready,s00_axi_wdata[31:0],s00_axi_wlast,s00_axi_wstrb[3:0],s00_axi_wuser[0:0],s00_axi_wvalid,bus0_sbus_addr[15:0],bus0_sbus_be[3:0],bus0_sbus_rd,bus0_sbus_wdata[31:0],bus0_sbus_we,bus1_sbus_addr[15:0],bus1_sbus_be[3:0],bus1_sbus_rd,bus1_sbus_wdata[31:0],bus1_sbus_we,bus2_sbus_addr[15:0],bus2_sbus_be[3:0],bus2_sbus_rd,bus2_sbus_wdata[31:0],bus2_sbus_we,bus3_sbus_addr[15:0],bus3_sbus_be[3:0],bus3_sbus_rd,bus3_sbus_wdata[31:0],bus3_sbus_we,clk_o,irq_o,reset_o,s00_axi_arready,s00_axi_awready,s00_axi_bid[11:0],s00_axi_bresp[1:0],s00_axi_buser[0:0],s00_axi_bvalid,s00_axi_rdata[31:0],s00_axi_rid[11:0],s00_axi_rlast,s00_axi_rresp[1:0],s00_axi_ruser[0:0],s00_axi_rvalid,s00_axi_wready,sync_o[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "top_axi_sbus_bridge,Vivado 2019.1";
begin
end;
