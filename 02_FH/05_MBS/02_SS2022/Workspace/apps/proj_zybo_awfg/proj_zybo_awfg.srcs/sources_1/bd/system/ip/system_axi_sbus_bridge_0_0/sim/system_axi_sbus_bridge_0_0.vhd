-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: fh-joanneum.local:user:axi_sbus_bridge:1.0
-- IP Revision: 9

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY axi_sbus_bridge;
USE axi_sbus_bridge.top_axi_sbus_bridge;

ENTITY system_axi_sbus_bridge_0_0 IS
  PORT (
    bus0_sbus_ack : IN STD_LOGIC;
    bus0_sbus_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    bus1_sbus_ack : IN STD_LOGIC;
    bus1_sbus_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    bus2_sbus_ack : IN STD_LOGIC;
    bus2_sbus_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    bus3_sbus_ack : IN STD_LOGIC;
    bus3_sbus_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_araddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    s00_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_aresetn : IN STD_LOGIC;
    s00_axi_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s00_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s00_axi_arlock : IN STD_LOGIC;
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_aruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    s00_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    s00_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s00_axi_awlock : IN STD_LOGIC;
    s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wlast : IN STD_LOGIC;
    s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_wuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_wvalid : IN STD_LOGIC;
    bus0_sbus_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    bus0_sbus_be : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    bus0_sbus_rd : OUT STD_LOGIC;
    bus0_sbus_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    bus0_sbus_we : OUT STD_LOGIC;
    bus1_sbus_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    bus1_sbus_be : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    bus1_sbus_rd : OUT STD_LOGIC;
    bus1_sbus_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    bus1_sbus_we : OUT STD_LOGIC;
    bus2_sbus_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    bus2_sbus_be : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    bus2_sbus_rd : OUT STD_LOGIC;
    bus2_sbus_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    bus2_sbus_we : OUT STD_LOGIC;
    bus3_sbus_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    bus3_sbus_be : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    bus3_sbus_rd : OUT STD_LOGIC;
    bus3_sbus_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    bus3_sbus_we : OUT STD_LOGIC;
    clk_o : OUT STD_LOGIC;
    irq_o : OUT STD_LOGIC;
    reset_o : OUT STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_buser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    s00_axi_rlast : OUT STD_LOGIC;
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_ruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    sync_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END system_axi_sbus_bridge_0_0;

ARCHITECTURE system_axi_sbus_bridge_0_0_arch OF system_axi_sbus_bridge_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_axi_sbus_bridge_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT top_axi_sbus_bridge IS
    GENERIC (
      C_S00_AXI_ADDR_WIDTH : INTEGER;
      C_S00_AXI_ARUSER_WIDTH : INTEGER;
      C_S00_AXI_AWUSER_WIDTH : INTEGER;
      C_S00_AXI_BUSER_WIDTH : INTEGER;
      C_S00_AXI_DATA_WIDTH : INTEGER;
      C_S00_AXI_ID_WIDTH : INTEGER;
      C_S00_AXI_RUSER_WIDTH : INTEGER;
      C_S00_AXI_WUSER_WIDTH : INTEGER;
      C_SLV_ADDR_WIDTH : INTEGER;
      C_SLV_DATA_WIDTH : INTEGER;
      C_CORE_CLOCK_FREQ : INTEGER;
      hw_serial_number_g : INTEGER;
      hw_version_g : INTEGER;
      C_SYNC_WIDTH : INTEGER
    );
    PORT (
      bus0_sbus_ack : IN STD_LOGIC;
      bus0_sbus_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      bus1_sbus_ack : IN STD_LOGIC;
      bus1_sbus_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      bus2_sbus_ack : IN STD_LOGIC;
      bus2_sbus_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      bus3_sbus_ack : IN STD_LOGIC;
      bus3_sbus_rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_aclk : IN STD_LOGIC;
      s00_axi_araddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      s00_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_aresetn : IN STD_LOGIC;
      s00_axi_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s00_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s00_axi_arlock : IN STD_LOGIC;
      s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_aruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_arvalid : IN STD_LOGIC;
      s00_axi_awaddr : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
      s00_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      s00_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s00_axi_awlock : IN STD_LOGIC;
      s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s00_axi_awuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_awvalid : IN STD_LOGIC;
      s00_axi_bready : IN STD_LOGIC;
      s00_axi_rready : IN STD_LOGIC;
      s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_wlast : IN STD_LOGIC;
      s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s00_axi_wuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_wvalid : IN STD_LOGIC;
      bus0_sbus_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      bus0_sbus_be : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      bus0_sbus_rd : OUT STD_LOGIC;
      bus0_sbus_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      bus0_sbus_we : OUT STD_LOGIC;
      bus1_sbus_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      bus1_sbus_be : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      bus1_sbus_rd : OUT STD_LOGIC;
      bus1_sbus_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      bus1_sbus_we : OUT STD_LOGIC;
      bus2_sbus_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      bus2_sbus_be : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      bus2_sbus_rd : OUT STD_LOGIC;
      bus2_sbus_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      bus2_sbus_we : OUT STD_LOGIC;
      bus3_sbus_addr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      bus3_sbus_be : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      bus3_sbus_rd : OUT STD_LOGIC;
      bus3_sbus_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      bus3_sbus_we : OUT STD_LOGIC;
      clk_o : OUT STD_LOGIC;
      irq_o : OUT STD_LOGIC;
      reset_o : OUT STD_LOGIC;
      s00_axi_arready : OUT STD_LOGIC;
      s00_axi_awready : OUT STD_LOGIC;
      s00_axi_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_buser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_bvalid : OUT STD_LOGIC;
      s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s00_axi_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      s00_axi_rlast : OUT STD_LOGIC;
      s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s00_axi_ruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axi_rvalid : OUT STD_LOGIC;
      s00_axi_wready : OUT STD_LOGIC;
      sync_o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT top_axi_sbus_bridge;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF system_axi_sbus_bridge_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_ruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_buser: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_o: SIGNAL IS "XIL_INTERFACENAME reset_o, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset_o: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_o RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF irq_o: SIGNAL IS "XIL_INTERFACENAME irq_o, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF irq_o: SIGNAL IS "xilinx.com:signal:interrupt:1.0 irq_o INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF bus3_sbus_we: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_we";
  ATTRIBUTE X_INTERFACE_INFO OF bus3_sbus_wdata: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_wdata";
  ATTRIBUTE X_INTERFACE_INFO OF bus3_sbus_rd: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_rd";
  ATTRIBUTE X_INTERFACE_INFO OF bus3_sbus_be: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_be";
  ATTRIBUTE X_INTERFACE_INFO OF bus3_sbus_addr: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_addr";
  ATTRIBUTE X_INTERFACE_INFO OF bus2_sbus_we: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_we";
  ATTRIBUTE X_INTERFACE_INFO OF bus2_sbus_wdata: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_wdata";
  ATTRIBUTE X_INTERFACE_INFO OF bus2_sbus_rd: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_rd";
  ATTRIBUTE X_INTERFACE_INFO OF bus2_sbus_be: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_be";
  ATTRIBUTE X_INTERFACE_INFO OF bus2_sbus_addr: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_addr";
  ATTRIBUTE X_INTERFACE_INFO OF bus1_sbus_we: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_we";
  ATTRIBUTE X_INTERFACE_INFO OF bus1_sbus_wdata: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_wdata";
  ATTRIBUTE X_INTERFACE_INFO OF bus1_sbus_rd: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_rd";
  ATTRIBUTE X_INTERFACE_INFO OF bus1_sbus_be: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_be";
  ATTRIBUTE X_INTERFACE_INFO OF bus1_sbus_addr: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_addr";
  ATTRIBUTE X_INTERFACE_INFO OF bus0_sbus_we: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_we";
  ATTRIBUTE X_INTERFACE_INFO OF bus0_sbus_wdata: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_wdata";
  ATTRIBUTE X_INTERFACE_INFO OF bus0_sbus_rd: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_rd";
  ATTRIBUTE X_INTERFACE_INFO OF bus0_sbus_be: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_be";
  ATTRIBUTE X_INTERFACE_INFO OF bus0_sbus_addr: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_addr";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awuser: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aruser: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arregion: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aresetn: SIGNAL IS "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARBURST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_araddr: SIGNAL IS "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 12, ADDR_WIDTH 18, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS" & 
" 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s00_axi_aclk: SIGNAL IS "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF bus3_sbus_rdata: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_rdata";
  ATTRIBUTE X_INTERFACE_INFO OF bus3_sbus_ack: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus3 sbus_ack";
  ATTRIBUTE X_INTERFACE_INFO OF bus2_sbus_rdata: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_rdata";
  ATTRIBUTE X_INTERFACE_INFO OF bus2_sbus_ack: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus2 sbus_ack";
  ATTRIBUTE X_INTERFACE_INFO OF bus1_sbus_rdata: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_rdata";
  ATTRIBUTE X_INTERFACE_INFO OF bus1_sbus_ack: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus1 sbus_ack";
  ATTRIBUTE X_INTERFACE_INFO OF bus0_sbus_rdata: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_rdata";
  ATTRIBUTE X_INTERFACE_INFO OF bus0_sbus_ack: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus0 sbus_ack";
BEGIN
  U0 : top_axi_sbus_bridge
    GENERIC MAP (
      C_S00_AXI_ADDR_WIDTH => 18,
      C_S00_AXI_ARUSER_WIDTH => 0,
      C_S00_AXI_AWUSER_WIDTH => 0,
      C_S00_AXI_BUSER_WIDTH => 0,
      C_S00_AXI_DATA_WIDTH => 32,
      C_S00_AXI_ID_WIDTH => 12,
      C_S00_AXI_RUSER_WIDTH => 0,
      C_S00_AXI_WUSER_WIDTH => 0,
      C_SLV_ADDR_WIDTH => 16,
      C_SLV_DATA_WIDTH => 32,
      C_CORE_CLOCK_FREQ => 100000000,
      hw_serial_number_g => 12,
      hw_version_g => 123,
      C_SYNC_WIDTH => 8
    )
    PORT MAP (
      bus0_sbus_ack => bus0_sbus_ack,
      bus0_sbus_rdata => bus0_sbus_rdata,
      bus1_sbus_ack => bus1_sbus_ack,
      bus1_sbus_rdata => bus1_sbus_rdata,
      bus2_sbus_ack => bus2_sbus_ack,
      bus2_sbus_rdata => bus2_sbus_rdata,
      bus3_sbus_ack => bus3_sbus_ack,
      bus3_sbus_rdata => bus3_sbus_rdata,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr => s00_axi_araddr,
      s00_axi_arburst => s00_axi_arburst,
      s00_axi_arcache => s00_axi_arcache,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arid => s00_axi_arid,
      s00_axi_arlen => s00_axi_arlen,
      s00_axi_arlock => s00_axi_arlock,
      s00_axi_arprot => s00_axi_arprot,
      s00_axi_arqos => s00_axi_arqos,
      s00_axi_arregion => s00_axi_arregion,
      s00_axi_arsize => s00_axi_arsize,
      s00_axi_aruser => s00_axi_aruser,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr => s00_axi_awaddr,
      s00_axi_awburst => s00_axi_awburst,
      s00_axi_awcache => s00_axi_awcache,
      s00_axi_awid => s00_axi_awid,
      s00_axi_awlen => s00_axi_awlen,
      s00_axi_awlock => s00_axi_awlock,
      s00_axi_awprot => s00_axi_awprot,
      s00_axi_awqos => s00_axi_awqos,
      s00_axi_awregion => s00_axi_awregion,
      s00_axi_awsize => s00_axi_awsize,
      s00_axi_awuser => s00_axi_awuser,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata => s00_axi_wdata,
      s00_axi_wlast => s00_axi_wlast,
      s00_axi_wstrb => s00_axi_wstrb,
      s00_axi_wuser => s00_axi_wuser,
      s00_axi_wvalid => s00_axi_wvalid,
      bus0_sbus_addr => bus0_sbus_addr,
      bus0_sbus_be => bus0_sbus_be,
      bus0_sbus_rd => bus0_sbus_rd,
      bus0_sbus_wdata => bus0_sbus_wdata,
      bus0_sbus_we => bus0_sbus_we,
      bus1_sbus_addr => bus1_sbus_addr,
      bus1_sbus_be => bus1_sbus_be,
      bus1_sbus_rd => bus1_sbus_rd,
      bus1_sbus_wdata => bus1_sbus_wdata,
      bus1_sbus_we => bus1_sbus_we,
      bus2_sbus_addr => bus2_sbus_addr,
      bus2_sbus_be => bus2_sbus_be,
      bus2_sbus_rd => bus2_sbus_rd,
      bus2_sbus_wdata => bus2_sbus_wdata,
      bus2_sbus_we => bus2_sbus_we,
      bus3_sbus_addr => bus3_sbus_addr,
      bus3_sbus_be => bus3_sbus_be,
      bus3_sbus_rd => bus3_sbus_rd,
      bus3_sbus_wdata => bus3_sbus_wdata,
      bus3_sbus_we => bus3_sbus_we,
      clk_o => clk_o,
      irq_o => irq_o,
      reset_o => reset_o,
      s00_axi_arready => s00_axi_arready,
      s00_axi_awready => s00_axi_awready,
      s00_axi_bid => s00_axi_bid,
      s00_axi_bresp => s00_axi_bresp,
      s00_axi_buser => s00_axi_buser,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata => s00_axi_rdata,
      s00_axi_rid => s00_axi_rid,
      s00_axi_rlast => s00_axi_rlast,
      s00_axi_rresp => s00_axi_rresp,
      s00_axi_ruser => s00_axi_ruser,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wready => s00_axi_wready,
      sync_o => sync_o
    );
END system_axi_sbus_bridge_0_0_arch;
