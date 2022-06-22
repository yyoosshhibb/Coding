-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Jun 21 21:30:46 2022
-- Host        : M00443 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_sbus_awfg_0_0_stub.vhdl
-- Design      : system_sbus_awfg_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    buttons : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    rxd : in STD_LOGIC;
    sbus_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sbus_be : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sbus_rd : in STD_LOGIC;
    sbus_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sbus_we : in STD_LOGIC;
    sliders : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dac_sclk : out STD_LOGIC;
    dac_sdin0 : out STD_LOGIC;
    dac_sdin1 : out STD_LOGIC;
    dac_sync : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pmod_jc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sbus_ack : out STD_LOGIC;
    sbus_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    txd : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "buttons[3:0],clk,reset,rxd,sbus_addr[15:0],sbus_be[3:0],sbus_rd,sbus_wdata[31:0],sbus_we,sliders[3:0],dac_sclk,dac_sdin0,dac_sdin1,dac_sync,leds[3:0],pmod_jc[7:0],sbus_ack,sbus_rdata[31:0],txd";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "top_awfg,Vivado 2019.1";
begin
end;
