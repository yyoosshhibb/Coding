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

-- IP VLNV: fh-joanneum.local:user:sbus_awfg:1.0
-- IP Revision: 6

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY sbus_awfg_lib;
USE sbus_awfg_lib.top_awfg;

ENTITY system_sbus_awfg_0_0 IS
  PORT (
    buttons : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    rxd : IN STD_LOGIC;
    sbus_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    sbus_be : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    sbus_rd : IN STD_LOGIC;
    sbus_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    sbus_we : IN STD_LOGIC;
    sliders : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    dac_sclk : OUT STD_LOGIC;
    dac_sdin0 : OUT STD_LOGIC;
    dac_sdin1 : OUT STD_LOGIC;
    dac_sync : OUT STD_LOGIC;
    leds : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    pmod_jc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    sbus_ack : OUT STD_LOGIC;
    sbus_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    txd : OUT STD_LOGIC
  );
END system_sbus_awfg_0_0;

ARCHITECTURE system_sbus_awfg_0_0_arch OF system_sbus_awfg_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF system_sbus_awfg_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT top_awfg IS
    GENERIC (
      C_SLV_ADDR_BASE : STD_LOGIC_VECTOR;
      C_SLV_ADDR_RANGE : STD_LOGIC_VECTOR;
      C_CORE_CLK_FREQUENCY : INTEGER;
      simulation_g : BOOLEAN
    );
    PORT (
      buttons : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      rxd : IN STD_LOGIC;
      sbus_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      sbus_be : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      sbus_rd : IN STD_LOGIC;
      sbus_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      sbus_we : IN STD_LOGIC;
      sliders : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      dac_sclk : OUT STD_LOGIC;
      dac_sdin0 : OUT STD_LOGIC;
      dac_sdin1 : OUT STD_LOGIC;
      dac_sync : OUT STD_LOGIC;
      leds : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      pmod_jc : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      sbus_ack : OUT STD_LOGIC;
      sbus_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      txd : OUT STD_LOGIC
    );
  END COMPONENT top_awfg;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF system_sbus_awfg_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF sbus_rdata: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_rdata";
  ATTRIBUTE X_INTERFACE_INFO OF sbus_ack: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_ack";
  ATTRIBUTE X_INTERFACE_INFO OF dac_sync: SIGNAL IS "fh-joanneum.local:user:dac_dual:1.0 dac_dual dac_sync";
  ATTRIBUTE X_INTERFACE_INFO OF dac_sdin1: SIGNAL IS "fh-joanneum.local:user:dac_dual:1.0 dac_dual dac_sdin1";
  ATTRIBUTE X_INTERFACE_INFO OF dac_sdin0: SIGNAL IS "fh-joanneum.local:user:dac_dual:1.0 dac_dual dac_sdin0";
  ATTRIBUTE X_INTERFACE_INFO OF dac_sclk: SIGNAL IS "fh-joanneum.local:user:dac_dual:1.0 dac_dual dac_sclk, fh-joanneum.local:user:seg7:1.0 dac sclk";
  ATTRIBUTE X_INTERFACE_INFO OF sbus_we: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_we";
  ATTRIBUTE X_INTERFACE_INFO OF sbus_wdata: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_wdata";
  ATTRIBUTE X_INTERFACE_INFO OF sbus_rd: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_rd";
  ATTRIBUTE X_INTERFACE_INFO OF sbus_be: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_be";
  ATTRIBUTE X_INTERFACE_INFO OF sbus_addr: SIGNAL IS "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_addr";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : top_awfg
    GENERIC MAP (
      C_SLV_ADDR_BASE => X"4000",
      C_SLV_ADDR_RANGE => X"0010",
      C_CORE_CLK_FREQUENCY => 100000000,
      simulation_g => false
    )
    PORT MAP (
      buttons => buttons,
      clk => clk,
      reset => reset,
      rxd => rxd,
      sbus_addr => sbus_addr,
      sbus_be => sbus_be,
      sbus_rd => sbus_rd,
      sbus_wdata => sbus_wdata,
      sbus_we => sbus_we,
      sliders => sliders,
      dac_sclk => dac_sclk,
      dac_sdin0 => dac_sdin0,
      dac_sdin1 => dac_sdin1,
      dac_sync => dac_sync,
      leds => leds,
      pmod_jc => pmod_jc,
      sbus_ack => sbus_ack,
      sbus_rdata => sbus_rdata,
      txd => txd
    );
END system_sbus_awfg_0_0_arch;
