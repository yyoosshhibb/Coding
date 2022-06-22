-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Jun 22 11:52:53 2022
-- Host        : M00443 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_sbus_awfg_0_0_sim_netlist.vhdl
-- Design      : system_sbus_awfg_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bus_bridge_16 is
  port (
    response_en_rx_reg_0 : out STD_LOGIC;
    cmd_par : out STD_LOGIC;
    rx_csm_current_state : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \rx_csm_current_state_reg[0]_0\ : out STD_LOGIC;
    \rx_csm_current_state_reg[2]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rx_csm_current_state_reg[4]_0\ : out STD_LOGIC;
    \rx_csm_current_state_reg[4]_1\ : out STD_LOGIC;
    \rx_csm_current_state_reg[5]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bus_addr_int_reg[0]_0\ : out STD_LOGIC;
    \bus_addr_int_reg[1]_0\ : out STD_LOGIC;
    \bus_addr_int_reg[1]_1\ : out STD_LOGIC;
    \bus_dout_int_reg[31]_0\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    sbus_ack0 : out STD_LOGIC;
    bus_we : out STD_LOGIC;
    rx_ack_cld_reg : out STD_LOGIC;
    \rx_csm_current_state_reg[2]_1\ : out STD_LOGIC;
    \rx_csm_current_state_reg[3]_0\ : out STD_LOGIC;
    \bus_addr_int_reg[15]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \num_reg[2]_0\ : out STD_LOGIC;
    \num_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \response_nibble_rx_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    lock_rx_reg_0 : out STD_LOGIC;
    \response_nibble_rx_reg[1]_0\ : out STD_LOGIC;
    lock_rx_reg_1 : out STD_LOGIC;
    lock_rx_reg_2 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    cmd_par_reg_0 : in STD_LOGIC;
    cmd_we : in STD_LOGIC;
    tx_ack : in STD_LOGIC;
    \rx_csm_current_state_reg[4]_2\ : in STD_LOGIC;
    \bus_dout_int_reg[16]_0\ : in STD_LOGIC;
    \sbus_rdata_reg[31]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \sbus_rdata_reg[30]\ : in STD_LOGIC;
    \sbus_rdata_reg[29]\ : in STD_LOGIC;
    \sbus_rdata_reg[28]\ : in STD_LOGIC;
    \sbus_rdata_reg[27]\ : in STD_LOGIC;
    \sbus_rdata_reg[26]\ : in STD_LOGIC;
    \sbus_rdata_reg[25]\ : in STD_LOGIC;
    \sbus_rdata_reg[24]\ : in STD_LOGIC;
    \sbus_rdata_reg[23]\ : in STD_LOGIC;
    \sbus_rdata_reg[22]\ : in STD_LOGIC;
    \sbus_rdata_reg[21]\ : in STD_LOGIC;
    \sbus_rdata_reg[20]\ : in STD_LOGIC;
    \sbus_rdata_reg[19]\ : in STD_LOGIC;
    \sbus_rdata_reg[18]\ : in STD_LOGIC;
    \sbus_rdata_reg[17]\ : in STD_LOGIC;
    \sbus_rdata_reg[16]\ : in STD_LOGIC;
    \sbus_rdata_reg[15]\ : in STD_LOGIC;
    \sbus_rdata_reg[14]\ : in STD_LOGIC;
    \sbus_rdata_reg[13]\ : in STD_LOGIC;
    \sbus_rdata_reg[12]\ : in STD_LOGIC;
    \sbus_rdata_reg[11]\ : in STD_LOGIC;
    \sbus_rdata_reg[10]\ : in STD_LOGIC;
    \sbus_rdata_reg[9]\ : in STD_LOGIC;
    \sbus_rdata_reg[8]\ : in STD_LOGIC;
    \sbus_rdata_reg[7]\ : in STD_LOGIC;
    \sbus_rdata_reg[6]\ : in STD_LOGIC;
    \sbus_rdata_reg[5]\ : in STD_LOGIC;
    \sbus_rdata_reg[4]\ : in STD_LOGIC;
    \sbus_rdata_reg[3]\ : in STD_LOGIC;
    \sbus_rdata_reg[2]\ : in STD_LOGIC;
    \sbus_rdata_reg[1]\ : in STD_LOGIC;
    \sbus_rdata_reg[0]\ : in STD_LOGIC;
    current_state : in STD_LOGIC;
    \rx_csm_current_state_reg[2]_2\ : in STD_LOGIC;
    \rx_csm_current_state_reg[2]_3\ : in STD_LOGIC;
    \rx_csm_current_state_reg[4]_3\ : in STD_LOGIC;
    \rx_csm_current_state_reg[4]_4\ : in STD_LOGIC;
    \rx_csm_current_state_reg[3]_1\ : in STD_LOGIC;
    \rx_csm_current_state_reg[3]_2\ : in STD_LOGIC;
    \rx_csm_current_state_reg[2]_4\ : in STD_LOGIC;
    \bus_dout_int_reg[20]_0\ : in STD_LOGIC;
    bus_ack : in STD_LOGIC;
    \reg_reg[95]\ : in STD_LOGIC;
    bus_addr_int : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bus_addr_int_reg[0]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \num_reg[5]_1\ : in STD_LOGIC;
    \tx_reg_reg[4]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rx_csm_current_state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \num_reg[5]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bus_din_tmp_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bus_din_tmp_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \bus_addr_int_reg[14]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bus_bridge_16;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bus_bridge_16 is
  signal bus_addr_int0 : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal \bus_addr_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \bus_addr_int[11]_i_1_n_0\ : STD_LOGIC;
  signal \bus_addr_int[11]_i_2_n_0\ : STD_LOGIC;
  signal \bus_addr_int[12]_i_1_n_0\ : STD_LOGIC;
  signal \bus_addr_int[15]_i_1_n_0\ : STD_LOGIC;
  signal \bus_addr_int[15]_i_2_n_0\ : STD_LOGIC;
  signal \bus_addr_int[15]_i_3_n_0\ : STD_LOGIC;
  signal \bus_addr_int[15]_i_4_n_0\ : STD_LOGIC;
  signal \bus_addr_int[15]_i_5_n_0\ : STD_LOGIC;
  signal \bus_addr_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus_addr_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus_addr_int[3]_i_2_n_0\ : STD_LOGIC;
  signal \bus_addr_int[3]_i_3_n_0\ : STD_LOGIC;
  signal \bus_addr_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus_addr_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \bus_addr_int[7]_i_2_n_0\ : STD_LOGIC;
  signal \bus_addr_int[7]_i_3_n_0\ : STD_LOGIC;
  signal \bus_addr_int[7]_i_4_n_0\ : STD_LOGIC;
  signal \bus_addr_int[7]_i_5_n_0\ : STD_LOGIC;
  signal \bus_addr_int[8]_i_1_n_0\ : STD_LOGIC;
  signal \^bus_addr_int_reg[0]_0\ : STD_LOGIC;
  signal \bus_addr_int_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \bus_addr_int_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \bus_addr_int_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \bus_addr_int_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \bus_addr_int_reg[15]_i_6_n_2\ : STD_LOGIC;
  signal \bus_addr_int_reg[15]_i_6_n_3\ : STD_LOGIC;
  signal \bus_addr_int_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \bus_addr_int_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \bus_addr_int_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \bus_addr_int_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \bus_addr_int_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \bus_addr_int_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \bus_addr_int_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \bus_addr_int_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[0]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[10]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[11]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[12]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[13]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[14]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[15]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[1]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[3]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[4]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[5]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[6]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[7]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[8]\ : STD_LOGIC;
  signal \bus_addr_int_reg_n_0_[9]\ : STD_LOGIC;
  signal \bus_din_tmp_reg_n_0_[0]\ : STD_LOGIC;
  signal \bus_din_tmp_reg_n_0_[1]\ : STD_LOGIC;
  signal \bus_din_tmp_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus_din_tmp_reg_n_0_[3]\ : STD_LOGIC;
  signal bus_dout_int : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal \bus_dout_int[27]_i_2_n_0\ : STD_LOGIC;
  signal \^bus_dout_int_reg[31]_0\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^cmd_par\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal lock_rx : STD_LOGIC;
  signal lock_rx_i_1_n_0 : STD_LOGIC;
  signal lock_rx_i_2_n_0 : STD_LOGIC;
  signal lock_rx_i_3_n_0 : STD_LOGIC;
  signal lock_rx_i_4_n_0 : STD_LOGIC;
  signal lock_rx_i_5_n_0 : STD_LOGIC;
  signal \^lock_rx_reg_0\ : STD_LOGIC;
  signal num : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \num[0]_i_1_n_0\ : STD_LOGIC;
  signal \num[1]_i_1_n_0\ : STD_LOGIC;
  signal \num[2]_i_1_n_0\ : STD_LOGIC;
  signal \num[3]_i_1_n_0\ : STD_LOGIC;
  signal \num[3]_i_2_n_0\ : STD_LOGIC;
  signal \num[3]_i_3_n_0\ : STD_LOGIC;
  signal \num[4]_i_1_n_0\ : STD_LOGIC;
  signal \num[4]_i_2_n_0\ : STD_LOGIC;
  signal \num[6]_i_1_n_0\ : STD_LOGIC;
  signal \num[7]_i_1_n_0\ : STD_LOGIC;
  signal \num[7]_i_2_n_0\ : STD_LOGIC;
  signal \num[7]_i_5_n_0\ : STD_LOGIC;
  signal \num[7]_i_6_n_0\ : STD_LOGIC;
  signal \^num_reg[2]_0\ : STD_LOGIC;
  signal \^num_reg[5]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \reg[127]_i_2__0_n_0\ : STD_LOGIC;
  signal \reg[31]_i_4_n_0\ : STD_LOGIC;
  signal response_en_rx : STD_LOGIC;
  signal \^response_en_rx_reg_0\ : STD_LOGIC;
  signal response_nibble_rx : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \response_nibble_rx[0]_i_2_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[0]_i_3_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[0]_i_4_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[1]_i_2_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[1]_i_3_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[1]_i_4_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[2]_i_2_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[2]_i_3_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[2]_i_4_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[3]_i_1_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[3]_i_3_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[3]_i_4_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[3]_i_5_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[3]_i_6_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[3]_i_7_n_0\ : STD_LOGIC;
  signal \response_nibble_rx[3]_i_8_n_0\ : STD_LOGIC;
  signal response_nibble_rx_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rx_csm_current_state\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \rx_csm_current_state[0]_i_10_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[0]_i_11_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[0]_i_9_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[2]_i_13_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[2]_i_14_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[2]_i_16_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[3]_i_8_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[3]_i_9_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[4]_i_11_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[4]_i_7_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[5]_i_4_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[5]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \sbus_rdata[31]_i_3__0_n_0\ : STD_LOGIC;
  signal \sbus_rdata[31]_i_5__0_n_0\ : STD_LOGIC;
  signal \sbus_rdata[31]_i_6__0_n_0\ : STD_LOGIC;
  signal \NLW_bus_addr_int_reg[15]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bus_addr_int_reg[15]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bus_addr_int[0]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \bus_addr_int[12]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \bus_addr_int[15]_i_4\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \bus_addr_int[3]_i_3\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \bus_addr_int[4]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \bus_addr_int[8]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \bus_dout_int[27]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of lock_rx_i_5 : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \num[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \num[3]_i_3\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \num[4]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \num[7]_i_5\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \num[7]_i_6\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \reg[0]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \reg[10]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \reg[11]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \reg[127]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \reg[12]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \reg[13]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \reg[14]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \reg[15]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \reg[16]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \reg[17]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \reg[18]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \reg[19]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \reg[1]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \reg[20]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \reg[21]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \reg[22]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \reg[23]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \reg[24]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \reg[25]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \reg[26]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \reg[27]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \reg[28]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \reg[29]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \reg[2]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \reg[30]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \reg[31]_i_2__0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \reg[3]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \reg[4]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \reg[5]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \reg[63]_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \reg[6]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \reg[7]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \reg[8]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \reg[95]_i_1__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \reg[9]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \response_nibble_rx[2]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \response_nibble_rx[3]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \response_nibble_rx[3]_i_3\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \response_nibble_rx[3]_i_6\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rx_csm_current_state[0]_i_4\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rx_csm_current_state[0]_i_9\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rx_csm_current_state[1]_i_6\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rx_csm_current_state[1]_i_7\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rx_csm_current_state[2]_i_10\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rx_csm_current_state[2]_i_11\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rx_csm_current_state[2]_i_13\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rx_csm_current_state[2]_i_15\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rx_csm_current_state[2]_i_16\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rx_csm_current_state[2]_i_5\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rx_csm_current_state[3]_i_5\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rx_csm_current_state[3]_i_6\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rx_csm_current_state[3]_i_8\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rx_csm_current_state[4]_i_11\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rx_csm_current_state[5]_i_5\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \sbus_ack_i_1__0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \tx_reg[1]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \tx_reg[2]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \tx_reg[3]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \tx_reg[7]_i_2\ : label is "soft_lutpair59";
begin
  \bus_addr_int_reg[0]_0\ <= \^bus_addr_int_reg[0]_0\;
  \bus_dout_int_reg[31]_0\(63 downto 0) <= \^bus_dout_int_reg[31]_0\(63 downto 0);
  cmd_par <= \^cmd_par\;
  lock_rx_reg_0 <= \^lock_rx_reg_0\;
  \num_reg[2]_0\ <= \^num_reg[2]_0\;
  \num_reg[5]_0\(0) <= \^num_reg[5]_0\(0);
  response_en_rx_reg_0 <= \^response_en_rx_reg_0\;
  rx_csm_current_state(5 downto 0) <= \^rx_csm_current_state\(5 downto 0);
\bit_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^response_en_rx_reg_0\,
      I1 => current_state,
      I2 => reset,
      O => SR(0)
    );
\bus_addr_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0666F666"
    )
        port map (
      I0 => \bus_addr_int_reg[0]_1\(2),
      I1 => \bus_addr_int_reg[0]_1\(0),
      I2 => \^rx_csm_current_state\(3),
      I3 => \^rx_csm_current_state\(2),
      I4 => \bus_addr_int_reg_n_0_[0]\,
      O => \bus_addr_int[0]_i_1_n_0\
    );
\bus_addr_int[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44010001"
    )
        port map (
      I0 => reset,
      I1 => \bus_addr_int[15]_i_3_n_0\,
      I2 => \bus_addr_int[15]_i_4_n_0\,
      I3 => \bus_addr_int[15]_i_5_n_0\,
      I4 => cmd_we,
      O => \bus_addr_int[11]_i_1_n_0\
    );
\bus_addr_int[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus_addr_int0(11),
      I1 => \^rx_csm_current_state\(3),
      I2 => bus_addr_int(3),
      O => \bus_addr_int[11]_i_2_n_0\
    );
\bus_addr_int[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => bus_addr_int0(12),
      I1 => \^rx_csm_current_state\(3),
      I2 => \bus_addr_int_reg[0]_1\(2),
      I3 => \bus_addr_int_reg[0]_1\(0),
      O => \bus_addr_int[12]_i_1_n_0\
    );
\bus_addr_int[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004045"
    )
        port map (
      I0 => reset,
      I1 => cmd_we,
      I2 => \bus_addr_int[15]_i_3_n_0\,
      I3 => \bus_addr_int[15]_i_4_n_0\,
      I4 => \bus_addr_int[15]_i_5_n_0\,
      O => \bus_addr_int[15]_i_1_n_0\
    );
\bus_addr_int[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus_addr_int0(15),
      I1 => \^rx_csm_current_state\(3),
      I2 => bus_addr_int(3),
      O => \bus_addr_int[15]_i_2_n_0\
    );
\bus_addr_int[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100200000B29"
    )
        port map (
      I0 => \^rx_csm_current_state\(2),
      I1 => \^rx_csm_current_state\(5),
      I2 => \^rx_csm_current_state\(4),
      I3 => \^rx_csm_current_state\(0),
      I4 => \^rx_csm_current_state\(3),
      I5 => \^rx_csm_current_state\(1),
      O => \bus_addr_int[15]_i_3_n_0\
    );
\bus_addr_int[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAEFFFEF"
    )
        port map (
      I0 => \bus_addr_int[7]_i_3_n_0\,
      I1 => \^cmd_par\,
      I2 => tx_ack,
      I3 => \bus_addr_int[7]_i_5_n_0\,
      I4 => bus_ack,
      O => \bus_addr_int[15]_i_4_n_0\
    );
\bus_addr_int[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0012112200000012"
    )
        port map (
      I0 => \^rx_csm_current_state\(1),
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(0),
      I3 => \^rx_csm_current_state\(4),
      I4 => \^rx_csm_current_state\(5),
      I5 => \^rx_csm_current_state\(2),
      O => \bus_addr_int[15]_i_5_n_0\
    );
\bus_addr_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => bus_addr_int(2),
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(2),
      I3 => bus_addr_int0(2),
      O => \bus_addr_int[2]_i_1_n_0\
    );
\bus_addr_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E222"
    )
        port map (
      I0 => \bus_addr_int[3]_i_3_n_0\,
      I1 => \bus_addr_int[7]_i_3_n_0\,
      I2 => cmd_we,
      I3 => \bus_addr_int[7]_i_5_n_0\,
      I4 => \bus_addr_int[7]_i_4_n_0\,
      I5 => reset,
      O => \bus_addr_int[3]_i_1_n_0\
    );
\bus_addr_int[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA2A"
    )
        port map (
      I0 => bus_addr_int(3),
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(2),
      I3 => bus_addr_int0(3),
      O => \bus_addr_int[3]_i_2_n_0\
    );
\bus_addr_int[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => bus_ack,
      I1 => \bus_addr_int[7]_i_5_n_0\,
      I2 => tx_ack,
      I3 => \^cmd_par\,
      O => \bus_addr_int[3]_i_3_n_0\
    );
\bus_addr_int[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => bus_addr_int0(4),
      I1 => \^rx_csm_current_state\(3),
      I2 => \bus_addr_int_reg[0]_1\(2),
      I3 => \bus_addr_int_reg[0]_1\(0),
      O => \bus_addr_int[4]_i_1_n_0\
    );
\bus_addr_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000015050505"
    )
        port map (
      I0 => reset,
      I1 => \bus_addr_int[7]_i_3_n_0\,
      I2 => \bus_addr_int[7]_i_4_n_0\,
      I3 => cmd_we,
      I4 => \bus_addr_int[7]_i_5_n_0\,
      I5 => \bus_addr_int[15]_i_4_n_0\,
      O => \bus_addr_int[7]_i_1_n_0\
    );
\bus_addr_int[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus_addr_int0(7),
      I1 => \^rx_csm_current_state\(3),
      I2 => bus_addr_int(3),
      O => \bus_addr_int[7]_i_2_n_0\
    );
\bus_addr_int[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFDF4F7FFD6DF"
    )
        port map (
      I0 => \^rx_csm_current_state\(2),
      I1 => \^rx_csm_current_state\(5),
      I2 => \^rx_csm_current_state\(4),
      I3 => \^rx_csm_current_state\(0),
      I4 => \^rx_csm_current_state\(3),
      I5 => \^rx_csm_current_state\(1),
      O => \bus_addr_int[7]_i_3_n_0\
    );
\bus_addr_int[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0013033202010003"
    )
        port map (
      I0 => \^rx_csm_current_state\(0),
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(5),
      I3 => \^rx_csm_current_state\(4),
      I4 => \^rx_csm_current_state\(1),
      I5 => \^rx_csm_current_state\(2),
      O => \bus_addr_int[7]_i_4_n_0\
    );
\bus_addr_int[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04021B2000022C03"
    )
        port map (
      I0 => \^rx_csm_current_state\(1),
      I1 => \^rx_csm_current_state\(5),
      I2 => \^rx_csm_current_state\(4),
      I3 => \^rx_csm_current_state\(2),
      I4 => \^rx_csm_current_state\(3),
      I5 => \^rx_csm_current_state\(0),
      O => \bus_addr_int[7]_i_5_n_0\
    );
\bus_addr_int[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => bus_addr_int0(8),
      I1 => \^rx_csm_current_state\(3),
      I2 => \bus_addr_int_reg[0]_1\(2),
      I3 => \bus_addr_int_reg[0]_1\(0),
      O => \bus_addr_int[8]_i_1_n_0\
    );
\bus_addr_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[3]_i_1_n_0\,
      D => \bus_addr_int[0]_i_1_n_0\,
      Q => \bus_addr_int_reg_n_0_[0]\,
      R => '0'
    );
\bus_addr_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[11]_i_1_n_0\,
      D => \bus_addr_int_reg[14]_0\(4),
      Q => \bus_addr_int_reg_n_0_[10]\,
      R => '0'
    );
\bus_addr_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[11]_i_1_n_0\,
      D => \bus_addr_int[11]_i_2_n_0\,
      Q => \bus_addr_int_reg_n_0_[11]\,
      R => '0'
    );
\bus_addr_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[15]_i_1_n_0\,
      D => \bus_addr_int[12]_i_1_n_0\,
      Q => \bus_addr_int_reg_n_0_[12]\,
      R => '0'
    );
\bus_addr_int_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bus_addr_int_reg[8]_i_2_n_0\,
      CO(3) => \bus_addr_int_reg[12]_i_2_n_0\,
      CO(2) => \bus_addr_int_reg[12]_i_2_n_1\,
      CO(1) => \bus_addr_int_reg[12]_i_2_n_2\,
      CO(0) => \bus_addr_int_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => bus_addr_int0(12 downto 11),
      O(1 downto 0) => \bus_addr_int_reg[15]_0\(4 downto 3),
      S(3) => \bus_addr_int_reg_n_0_[12]\,
      S(2) => \bus_addr_int_reg_n_0_[11]\,
      S(1) => \bus_addr_int_reg_n_0_[10]\,
      S(0) => \bus_addr_int_reg_n_0_[9]\
    );
\bus_addr_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[15]_i_1_n_0\,
      D => \bus_addr_int_reg[14]_0\(5),
      Q => \bus_addr_int_reg_n_0_[13]\,
      R => '0'
    );
\bus_addr_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[15]_i_1_n_0\,
      D => \bus_addr_int_reg[14]_0\(6),
      Q => \bus_addr_int_reg_n_0_[14]\,
      R => '0'
    );
\bus_addr_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[15]_i_1_n_0\,
      D => \bus_addr_int[15]_i_2_n_0\,
      Q => \bus_addr_int_reg_n_0_[15]\,
      R => '0'
    );
\bus_addr_int_reg[15]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \bus_addr_int_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_bus_addr_int_reg[15]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \bus_addr_int_reg[15]_i_6_n_2\,
      CO(0) => \bus_addr_int_reg[15]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_bus_addr_int_reg[15]_i_6_O_UNCONNECTED\(3),
      O(2) => bus_addr_int0(15),
      O(1 downto 0) => \bus_addr_int_reg[15]_0\(6 downto 5),
      S(3) => '0',
      S(2) => \bus_addr_int_reg_n_0_[15]\,
      S(1) => \bus_addr_int_reg_n_0_[14]\,
      S(0) => \bus_addr_int_reg_n_0_[13]\
    );
\bus_addr_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[3]_i_1_n_0\,
      D => \bus_addr_int_reg[14]_0\(0),
      Q => \bus_addr_int_reg_n_0_[1]\,
      R => '0'
    );
\bus_addr_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[3]_i_1_n_0\,
      D => \bus_addr_int[2]_i_1_n_0\,
      Q => \bus_addr_int_reg_n_0_[2]\,
      R => '0'
    );
\bus_addr_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[3]_i_1_n_0\,
      D => \bus_addr_int[3]_i_2_n_0\,
      Q => \bus_addr_int_reg_n_0_[3]\,
      R => '0'
    );
\bus_addr_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[7]_i_1_n_0\,
      D => \bus_addr_int[4]_i_1_n_0\,
      Q => \bus_addr_int_reg_n_0_[4]\,
      R => '0'
    );
\bus_addr_int_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bus_addr_int_reg[4]_i_2_n_0\,
      CO(2) => \bus_addr_int_reg[4]_i_2_n_1\,
      CO(1) => \bus_addr_int_reg[4]_i_2_n_2\,
      CO(0) => \bus_addr_int_reg[4]_i_2_n_3\,
      CYINIT => \bus_addr_int_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => bus_addr_int0(4 downto 2),
      O(0) => \bus_addr_int_reg[15]_0\(0),
      S(3) => \bus_addr_int_reg_n_0_[4]\,
      S(2) => \bus_addr_int_reg_n_0_[3]\,
      S(1) => \bus_addr_int_reg_n_0_[2]\,
      S(0) => \bus_addr_int_reg_n_0_[1]\
    );
\bus_addr_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[7]_i_1_n_0\,
      D => \bus_addr_int_reg[14]_0\(1),
      Q => \bus_addr_int_reg_n_0_[5]\,
      R => '0'
    );
\bus_addr_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[7]_i_1_n_0\,
      D => \bus_addr_int_reg[14]_0\(2),
      Q => \bus_addr_int_reg_n_0_[6]\,
      R => '0'
    );
\bus_addr_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[7]_i_1_n_0\,
      D => \bus_addr_int[7]_i_2_n_0\,
      Q => \bus_addr_int_reg_n_0_[7]\,
      R => '0'
    );
\bus_addr_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[11]_i_1_n_0\,
      D => \bus_addr_int[8]_i_1_n_0\,
      Q => \bus_addr_int_reg_n_0_[8]\,
      R => '0'
    );
\bus_addr_int_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bus_addr_int_reg[4]_i_2_n_0\,
      CO(3) => \bus_addr_int_reg[8]_i_2_n_0\,
      CO(2) => \bus_addr_int_reg[8]_i_2_n_1\,
      CO(1) => \bus_addr_int_reg[8]_i_2_n_2\,
      CO(0) => \bus_addr_int_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => bus_addr_int0(8 downto 7),
      O(1 downto 0) => \bus_addr_int_reg[15]_0\(2 downto 1),
      S(3) => \bus_addr_int_reg_n_0_[8]\,
      S(2) => \bus_addr_int_reg_n_0_[7]\,
      S(1) => \bus_addr_int_reg_n_0_[6]\,
      S(0) => \bus_addr_int_reg_n_0_[5]\
    );
\bus_addr_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_addr_int[11]_i_1_n_0\,
      D => \bus_addr_int_reg[14]_0\(3),
      Q => \bus_addr_int_reg_n_0_[9]\,
      R => '0'
    );
\bus_din_tmp[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFDFBFFF"
    )
        port map (
      I0 => \^rx_csm_current_state\(2),
      I1 => \^rx_csm_current_state\(1),
      I2 => \^rx_csm_current_state\(0),
      I3 => \^rx_csm_current_state\(5),
      I4 => \^rx_csm_current_state\(3),
      I5 => \^rx_csm_current_state\(4),
      O => \rx_csm_current_state_reg[2]_1\
    );
\bus_din_tmp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(0),
      Q => \bus_din_tmp_reg_n_0_[0]\,
      R => '0'
    );
\bus_din_tmp_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(10),
      Q => data5(2),
      R => '0'
    );
\bus_din_tmp_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(11),
      Q => data5(3),
      R => '0'
    );
\bus_din_tmp_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(12),
      Q => data3(0),
      R => '0'
    );
\bus_din_tmp_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(13),
      Q => data3(1),
      R => '0'
    );
\bus_din_tmp_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(14),
      Q => data3(2),
      R => '0'
    );
\bus_din_tmp_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(15),
      Q => data3(3),
      R => '0'
    );
\bus_din_tmp_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(16),
      Q => data2(0),
      R => '0'
    );
\bus_din_tmp_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(17),
      Q => data2(1),
      R => '0'
    );
\bus_din_tmp_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(18),
      Q => data2(2),
      R => '0'
    );
\bus_din_tmp_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(19),
      Q => data2(3),
      R => '0'
    );
\bus_din_tmp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(1),
      Q => \bus_din_tmp_reg_n_0_[1]\,
      R => '0'
    );
\bus_din_tmp_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(20),
      Q => data1(0),
      R => '0'
    );
\bus_din_tmp_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(21),
      Q => data1(1),
      R => '0'
    );
\bus_din_tmp_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(22),
      Q => data1(2),
      R => '0'
    );
\bus_din_tmp_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(23),
      Q => data1(3),
      R => '0'
    );
\bus_din_tmp_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(24),
      Q => data0(0),
      R => '0'
    );
\bus_din_tmp_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(25),
      Q => data0(1),
      R => '0'
    );
\bus_din_tmp_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(26),
      Q => data0(2),
      R => '0'
    );
\bus_din_tmp_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(27),
      Q => data0(3),
      R => '0'
    );
\bus_din_tmp_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(28),
      Q => data4(0),
      R => '0'
    );
\bus_din_tmp_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(29),
      Q => data4(1),
      R => '0'
    );
\bus_din_tmp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(2),
      Q => \bus_din_tmp_reg_n_0_[2]\,
      R => '0'
    );
\bus_din_tmp_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(30),
      Q => data4(2),
      R => '0'
    );
\bus_din_tmp_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(31),
      Q => data4(3),
      R => '0'
    );
\bus_din_tmp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(3),
      Q => \bus_din_tmp_reg_n_0_[3]\,
      R => '0'
    );
\bus_din_tmp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(4),
      Q => data6(0),
      R => '0'
    );
\bus_din_tmp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(5),
      Q => data6(1),
      R => '0'
    );
\bus_din_tmp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(6),
      Q => data6(2),
      R => '0'
    );
\bus_din_tmp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(7),
      Q => data6(3),
      R => '0'
    );
\bus_din_tmp_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(8),
      Q => data5(0),
      R => '0'
    );
\bus_din_tmp_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \bus_din_tmp_reg[0]_0\(0),
      D => \bus_din_tmp_reg[31]_0\(9),
      Q => data5(1),
      R => '0'
    );
\bus_dout_int[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004200"
    )
        port map (
      I0 => \^rx_csm_current_state\(1),
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(5),
      I3 => \bus_dout_int_reg[16]_0\,
      I4 => \^rx_csm_current_state\(2),
      I5 => \^rx_csm_current_state\(4),
      O => bus_dout_int(11)
    );
\bus_dout_int[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000024000000"
    )
        port map (
      I0 => \^rx_csm_current_state\(4),
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(1),
      I3 => \bus_dout_int_reg[20]_0\,
      I4 => \^rx_csm_current_state\(5),
      I5 => \^rx_csm_current_state\(2),
      O => bus_dout_int(15)
    );
\bus_dout_int[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \bus_dout_int_reg[16]_0\,
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(4),
      I3 => \^rx_csm_current_state\(5),
      I4 => \^rx_csm_current_state\(2),
      I5 => \^rx_csm_current_state\(1),
      O => bus_dout_int(19)
    );
\bus_dout_int[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \bus_dout_int_reg[20]_0\,
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(4),
      I3 => \^rx_csm_current_state\(5),
      I4 => \^rx_csm_current_state\(2),
      I5 => \^rx_csm_current_state\(1),
      O => bus_dout_int(23)
    );
\bus_dout_int[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => cmd_we,
      I1 => \^rx_csm_current_state\(0),
      I2 => \^rx_csm_current_state\(1),
      I3 => \^rx_csm_current_state\(4),
      I4 => \^rx_csm_current_state\(5),
      I5 => \bus_dout_int[27]_i_2_n_0\,
      O => bus_dout_int(27)
    );
\bus_dout_int[27]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^rx_csm_current_state\(3),
      I1 => \^rx_csm_current_state\(2),
      O => \bus_dout_int[27]_i_2_n_0\
    );
\bus_dout_int[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \^rx_csm_current_state\(4),
      I1 => \bus_dout_int_reg[20]_0\,
      I2 => \^rx_csm_current_state\(2),
      I3 => \^rx_csm_current_state\(5),
      I4 => \^rx_csm_current_state\(1),
      I5 => \^rx_csm_current_state\(3),
      O => bus_dout_int(31)
    );
\bus_dout_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000060000000"
    )
        port map (
      I0 => \^rx_csm_current_state\(5),
      I1 => \^rx_csm_current_state\(2),
      I2 => \^rx_csm_current_state\(1),
      I3 => \bus_dout_int_reg[16]_0\,
      I4 => \^rx_csm_current_state\(3),
      I5 => \^rx_csm_current_state\(4),
      O => bus_dout_int(3)
    );
\bus_dout_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000040"
    )
        port map (
      I0 => \^rx_csm_current_state\(1),
      I1 => \^rx_csm_current_state\(2),
      I2 => \bus_dout_int_reg[20]_0\,
      I3 => \^rx_csm_current_state\(4),
      I4 => \^rx_csm_current_state\(3),
      I5 => \^rx_csm_current_state\(5),
      O => bus_dout_int(7)
    );
\bus_dout_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(3),
      D => bus_addr_int(0),
      Q => \^bus_dout_int_reg[31]_0\(32),
      R => reset
    );
\bus_dout_int_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(11),
      D => bus_addr_int(2),
      Q => \^bus_dout_int_reg[31]_0\(42),
      R => reset
    );
\bus_dout_int_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(11),
      D => bus_addr_int(3),
      Q => \^bus_dout_int_reg[31]_0\(43),
      R => reset
    );
\bus_dout_int_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(15),
      D => bus_addr_int(0),
      Q => \^bus_dout_int_reg[31]_0\(44),
      R => reset
    );
\bus_dout_int_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(15),
      D => bus_addr_int(1),
      Q => \^bus_dout_int_reg[31]_0\(45),
      R => reset
    );
\bus_dout_int_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(15),
      D => bus_addr_int(2),
      Q => \^bus_dout_int_reg[31]_0\(46),
      R => reset
    );
\bus_dout_int_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(15),
      D => bus_addr_int(3),
      Q => \^bus_dout_int_reg[31]_0\(47),
      R => reset
    );
\bus_dout_int_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(19),
      D => bus_addr_int(0),
      Q => \^bus_dout_int_reg[31]_0\(48),
      R => reset
    );
\bus_dout_int_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(19),
      D => bus_addr_int(1),
      Q => \^bus_dout_int_reg[31]_0\(49),
      R => reset
    );
\bus_dout_int_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(19),
      D => bus_addr_int(2),
      Q => \^bus_dout_int_reg[31]_0\(50),
      R => reset
    );
\bus_dout_int_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(19),
      D => bus_addr_int(3),
      Q => \^bus_dout_int_reg[31]_0\(51),
      R => reset
    );
\bus_dout_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(3),
      D => bus_addr_int(1),
      Q => \^bus_dout_int_reg[31]_0\(33),
      R => reset
    );
\bus_dout_int_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(23),
      D => bus_addr_int(0),
      Q => \^bus_dout_int_reg[31]_0\(52),
      R => reset
    );
\bus_dout_int_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(23),
      D => bus_addr_int(1),
      Q => \^bus_dout_int_reg[31]_0\(53),
      R => reset
    );
\bus_dout_int_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(23),
      D => bus_addr_int(2),
      Q => \^bus_dout_int_reg[31]_0\(54),
      R => reset
    );
\bus_dout_int_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(23),
      D => bus_addr_int(3),
      Q => \^bus_dout_int_reg[31]_0\(55),
      R => reset
    );
\bus_dout_int_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(27),
      D => bus_addr_int(0),
      Q => \^bus_dout_int_reg[31]_0\(56),
      R => reset
    );
\bus_dout_int_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(27),
      D => bus_addr_int(1),
      Q => \^bus_dout_int_reg[31]_0\(57),
      R => reset
    );
\bus_dout_int_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(27),
      D => bus_addr_int(2),
      Q => \^bus_dout_int_reg[31]_0\(58),
      R => reset
    );
\bus_dout_int_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(27),
      D => bus_addr_int(3),
      Q => \^bus_dout_int_reg[31]_0\(59),
      R => reset
    );
\bus_dout_int_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(31),
      D => bus_addr_int(0),
      Q => \^bus_dout_int_reg[31]_0\(60),
      R => reset
    );
\bus_dout_int_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(31),
      D => bus_addr_int(1),
      Q => \^bus_dout_int_reg[31]_0\(61),
      R => reset
    );
\bus_dout_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(3),
      D => bus_addr_int(2),
      Q => \^bus_dout_int_reg[31]_0\(34),
      R => reset
    );
\bus_dout_int_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(31),
      D => bus_addr_int(2),
      Q => \^bus_dout_int_reg[31]_0\(62),
      R => reset
    );
\bus_dout_int_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(31),
      D => bus_addr_int(3),
      Q => \^bus_dout_int_reg[31]_0\(63),
      R => reset
    );
\bus_dout_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(3),
      D => bus_addr_int(3),
      Q => \^bus_dout_int_reg[31]_0\(35),
      R => reset
    );
\bus_dout_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(7),
      D => bus_addr_int(0),
      Q => \^bus_dout_int_reg[31]_0\(36),
      R => reset
    );
\bus_dout_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(7),
      D => bus_addr_int(1),
      Q => \^bus_dout_int_reg[31]_0\(37),
      R => reset
    );
\bus_dout_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(7),
      D => bus_addr_int(2),
      Q => \^bus_dout_int_reg[31]_0\(38),
      R => reset
    );
\bus_dout_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(7),
      D => bus_addr_int(3),
      Q => \^bus_dout_int_reg[31]_0\(39),
      R => reset
    );
\bus_dout_int_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(11),
      D => bus_addr_int(0),
      Q => \^bus_dout_int_reg[31]_0\(40),
      R => reset
    );
\bus_dout_int_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bus_dout_int(11),
      D => bus_addr_int(1),
      Q => \^bus_dout_int_reg[31]_0\(41),
      R => reset
    );
bus_we_q_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000020"
    )
        port map (
      I0 => \^rx_csm_current_state\(0),
      I1 => \^rx_csm_current_state\(1),
      I2 => \^rx_csm_current_state\(5),
      I3 => \^rx_csm_current_state\(4),
      I4 => \^rx_csm_current_state\(2),
      I5 => \^rx_csm_current_state\(3),
      O => bus_we
    );
cmd_par_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cmd_par_reg_0,
      Q => \^cmd_par\,
      R => '0'
    );
lock_rx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F11BFBF1011B0B0"
    )
        port map (
      I0 => \^rx_csm_current_state\(0),
      I1 => \^rx_csm_current_state\(5),
      I2 => lock_rx_i_2_n_0,
      I3 => lock_rx_i_3_n_0,
      I4 => lock_rx_i_4_n_0,
      I5 => lock_rx,
      O => lock_rx_i_1_n_0
    );
lock_rx_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040300030"
    )
        port map (
      I0 => \^rx_csm_current_state\(3),
      I1 => \^rx_csm_current_state\(5),
      I2 => \^rx_csm_current_state\(4),
      I3 => \^rx_csm_current_state\(2),
      I4 => tx_ack,
      I5 => lock_rx_i_5_n_0,
      O => lock_rx_i_2_n_0
    );
lock_rx_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFF"
    )
        port map (
      I0 => \^rx_csm_current_state\(1),
      I1 => \^rx_csm_current_state\(0),
      I2 => \^rx_csm_current_state\(2),
      I3 => \^rx_csm_current_state\(3),
      I4 => \^rx_csm_current_state\(4),
      I5 => \^rx_csm_current_state\(5),
      O => lock_rx_i_3_n_0
    );
lock_rx_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^num_reg[2]_0\,
      I1 => num(6),
      I2 => num(7),
      I3 => \^num_reg[5]_0\(0),
      O => lock_rx_i_4_n_0
    );
lock_rx_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^rx_csm_current_state\(0),
      I1 => \^rx_csm_current_state\(1),
      O => lock_rx_i_5_n_0
    );
lock_rx_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => lock_rx_i_1_n_0,
      Q => lock_rx,
      R => reset
    );
\num[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4774"
    )
        port map (
      I0 => num(0),
      I1 => \^rx_csm_current_state\(1),
      I2 => \bus_addr_int_reg[0]_1\(2),
      I3 => \bus_addr_int_reg[0]_1\(0),
      O => \num[0]_i_1_n_0\
    );
\num[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909F9F909F909F90"
    )
        port map (
      I0 => num(1),
      I1 => num(0),
      I2 => \^rx_csm_current_state\(1),
      I3 => \bus_addr_int_reg[0]_1\(1),
      I4 => \bus_addr_int_reg[0]_1\(0),
      I5 => \bus_addr_int_reg[0]_1\(2),
      O => \num[1]_i_1_n_0\
    );
\num[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E1FFE100"
    )
        port map (
      I0 => num(1),
      I1 => num(0),
      I2 => num(2),
      I3 => \^rx_csm_current_state\(1),
      I4 => bus_addr_int(2),
      O => \num[2]_i_1_n_0\
    );
\num[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000050040004"
    )
        port map (
      I0 => reset,
      I1 => cmd_we,
      I2 => \^rx_csm_current_state\(2),
      I3 => \^rx_csm_current_state\(1),
      I4 => tx_ack,
      I5 => \num[3]_i_3_n_0\,
      O => \num[3]_i_1_n_0\
    );
\num[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => num(3),
      I1 => num(1),
      I2 => num(0),
      I3 => num(2),
      I4 => \^rx_csm_current_state\(1),
      I5 => bus_addr_int(3),
      O => \num[3]_i_2_n_0\
    );
\num[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \^rx_csm_current_state\(4),
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(0),
      I3 => \^rx_csm_current_state\(5),
      O => \num[3]_i_3_n_0\
    );
\num[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => bus_addr_int(0),
      I1 => \^rx_csm_current_state\(0),
      I2 => num(4),
      I3 => num(2),
      I4 => num(3),
      I5 => \num[4]_i_2_n_0\,
      O => \num[4]_i_1_n_0\
    );
\num[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => num(1),
      I1 => num(0),
      O => \num[4]_i_2_n_0\
    );
\num[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88BB8B8"
    )
        port map (
      I0 => bus_addr_int(2),
      I1 => \^rx_csm_current_state\(0),
      I2 => num(6),
      I3 => \^num_reg[5]_0\(0),
      I4 => \^num_reg[2]_0\,
      O => \num[6]_i_1_n_0\
    );
\num[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E200"
    )
        port map (
      I0 => \bus_dout_int_reg[16]_0\,
      I1 => \^rx_csm_current_state\(3),
      I2 => \num_reg[5]_1\,
      I3 => \num[7]_i_5_n_0\,
      I4 => reset,
      I5 => \num[7]_i_6_n_0\,
      O => \num[7]_i_1_n_0\
    );
\num[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B88BB8B8"
    )
        port map (
      I0 => bus_addr_int(3),
      I1 => \^rx_csm_current_state\(0),
      I2 => num(7),
      I3 => num(6),
      I4 => \^num_reg[2]_0\,
      I5 => \^num_reg[5]_0\(0),
      O => \num[7]_i_2_n_0\
    );
\num[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rx_csm_current_state\(4),
      I1 => \^rx_csm_current_state\(5),
      O => \num[7]_i_5_n_0\
    );
\num[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^rx_csm_current_state\(2),
      I1 => \^rx_csm_current_state\(1),
      O => \num[7]_i_6_n_0\
    );
\num[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => num(2),
      I1 => num(3),
      I2 => num(1),
      I3 => num(0),
      I4 => num(4),
      O => \^num_reg[2]_0\
    );
\num_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \num[3]_i_1_n_0\,
      D => \num[0]_i_1_n_0\,
      Q => num(0),
      R => '0'
    );
\num_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \num[3]_i_1_n_0\,
      D => \num[1]_i_1_n_0\,
      Q => num(1),
      R => '0'
    );
\num_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \num[3]_i_1_n_0\,
      D => \num[2]_i_1_n_0\,
      Q => num(2),
      R => '0'
    );
\num_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \num[3]_i_1_n_0\,
      D => \num[3]_i_2_n_0\,
      Q => num(3),
      R => '0'
    );
\num_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \num[7]_i_1_n_0\,
      D => \num[4]_i_1_n_0\,
      Q => num(4),
      R => '0'
    );
\num_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \num[7]_i_1_n_0\,
      D => \num_reg[5]_2\(0),
      Q => \^num_reg[5]_0\(0),
      R => '0'
    );
\num_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \num[7]_i_1_n_0\,
      D => \num[6]_i_1_n_0\,
      Q => num(6),
      R => '0'
    );
\num_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \num[7]_i_1_n_0\,
      D => \num[7]_i_2_n_0\,
      Q => num(7),
      R => '0'
    );
\reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(32),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(0)
    );
\reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(42),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(10)
    );
\reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(43),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(11)
    );
\reg[127]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \reg[127]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[0]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[1]\,
      I4 => \sbus_rdata[31]_i_2__0_n_0\,
      O => E(3)
    );
\reg[127]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000090000"
    )
        port map (
      I0 => \^rx_csm_current_state\(3),
      I1 => \^rx_csm_current_state\(2),
      I2 => \rx_csm_current_state[2]_i_5_n_0\,
      I3 => \^rx_csm_current_state\(1),
      I4 => \^rx_csm_current_state\(0),
      I5 => \reg_reg[95]\,
      O => \reg[127]_i_2__0_n_0\
    );
\reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(44),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(12)
    );
\reg[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(45),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(13)
    );
\reg[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(46),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(14)
    );
\reg[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(47),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(15)
    );
\reg[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(48),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(16)
    );
\reg[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(49),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(17)
    );
\reg[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(50),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(18)
    );
\reg[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(51),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(19)
    );
\reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(33),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(1)
    );
\reg[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(52),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(20)
    );
\reg[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(53),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(21)
    );
\reg[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(54),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(22)
    );
\reg[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(55),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(23)
    );
\reg[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(56),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(24)
    );
\reg[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(57),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(25)
    );
\reg[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(58),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(26)
    );
\reg[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(59),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(27)
    );
\reg[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(60),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(28)
    );
\reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(61),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(29)
    );
\reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(34),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(2)
    );
\reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(62),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(30)
    );
\reg[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \reg[127]_i_2__0_n_0\,
      I1 => \^bus_addr_int_reg[0]_0\,
      O => E(0)
    );
\reg[31]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(63),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(31)
    );
\reg[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0F0F0F0E"
    )
        port map (
      I0 => \bus_addr_int_reg_n_0_[0]\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \reg[31]_i_4_n_0\,
      I4 => \sbus_rdata[31]_i_6__0_n_0\,
      I5 => \sbus_rdata[31]_i_5__0_n_0\,
      O => \^bus_addr_int_reg[0]_0\
    );
\reg[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bus_addr_int_reg_n_0_[9]\,
      I1 => \bus_addr_int_reg_n_0_[7]\,
      I2 => \bus_addr_int_reg_n_0_[14]\,
      I3 => \bus_addr_int_reg_n_0_[5]\,
      O => \reg[31]_i_4_n_0\
    );
\reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(35),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(3)
    );
\reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(36),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(4)
    );
\reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(37),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(5)
    );
\reg[63]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \reg[127]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_2__0_n_0\,
      I3 => \sbus_rdata[31]_i_3__0_n_0\,
      I4 => \bus_addr_int_reg_n_0_[0]\,
      O => E(1)
    );
\reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(38),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(6)
    );
\reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(39),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(7)
    );
\reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(40),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(8)
    );
\reg[95]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \reg[127]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[0]\,
      I2 => \sbus_rdata[31]_i_2__0_n_0\,
      I3 => \sbus_rdata[31]_i_3__0_n_0\,
      I4 => \bus_addr_int_reg_n_0_[1]\,
      O => E(2)
    );
\reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus_dout_int_reg[31]_0\(41),
      I1 => \sbus_rdata[31]_i_3__0_n_0\,
      O => \^bus_dout_int_reg[31]_0\(9)
    );
response_en_rx_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => \response_nibble_rx[3]_i_3_n_0\,
      I1 => \response_nibble_rx[3]_i_4_n_0\,
      I2 => \response_nibble_rx[3]_i_5_n_0\,
      O => response_en_rx
    );
response_en_rx_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => response_en_rx,
      Q => \^response_en_rx_reg_0\,
      R => reset
    );
\response_nibble_rx[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \response_nibble_rx[0]_i_2_n_0\,
      I1 => \^rx_csm_current_state\(2),
      I2 => \response_nibble_rx[0]_i_3_n_0\,
      I3 => \^rx_csm_current_state\(1),
      I4 => \response_nibble_rx[0]_i_4_n_0\,
      O => response_nibble_rx_0(0)
    );
\response_nibble_rx[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \bus_din_tmp_reg_n_0_[0]\,
      I1 => \^rx_csm_current_state\(0),
      I2 => data2(0),
      I3 => \^rx_csm_current_state\(1),
      I4 => data6(0),
      O => \response_nibble_rx[0]_i_2_n_0\
    );
\response_nibble_rx[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data5(0),
      I1 => \^rx_csm_current_state\(0),
      I2 => data3(0),
      I3 => \^rx_csm_current_state\(3),
      I4 => data4(0),
      O => \response_nibble_rx[0]_i_3_n_0\
    );
\response_nibble_rx[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data1(0),
      I1 => \^rx_csm_current_state\(0),
      I2 => data0(0),
      I3 => \^rx_csm_current_state\(3),
      I4 => data3(0),
      O => \response_nibble_rx[0]_i_4_n_0\
    );
\response_nibble_rx[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \response_nibble_rx[1]_i_2_n_0\,
      I1 => \^rx_csm_current_state\(2),
      I2 => \response_nibble_rx[1]_i_3_n_0\,
      I3 => \^rx_csm_current_state\(1),
      I4 => \response_nibble_rx[1]_i_4_n_0\,
      O => response_nibble_rx_0(1)
    );
\response_nibble_rx[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \bus_din_tmp_reg_n_0_[1]\,
      I1 => \^rx_csm_current_state\(0),
      I2 => data2(1),
      I3 => \^rx_csm_current_state\(1),
      I4 => data6(1),
      O => \response_nibble_rx[1]_i_2_n_0\
    );
\response_nibble_rx[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data5(1),
      I1 => \^rx_csm_current_state\(0),
      I2 => data3(1),
      I3 => \^rx_csm_current_state\(3),
      I4 => data4(1),
      O => \response_nibble_rx[1]_i_3_n_0\
    );
\response_nibble_rx[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data1(1),
      I1 => \^rx_csm_current_state\(0),
      I2 => data0(1),
      I3 => \^rx_csm_current_state\(3),
      I4 => data3(1),
      O => \response_nibble_rx[1]_i_4_n_0\
    );
\response_nibble_rx[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \response_nibble_rx[2]_i_2_n_0\,
      I1 => \^rx_csm_current_state\(2),
      I2 => \response_nibble_rx[2]_i_3_n_0\,
      I3 => \^rx_csm_current_state\(1),
      I4 => \response_nibble_rx[2]_i_4_n_0\,
      O => response_nibble_rx_0(2)
    );
\response_nibble_rx[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \bus_din_tmp_reg_n_0_[2]\,
      I1 => \^rx_csm_current_state\(0),
      I2 => data2(2),
      I3 => \^rx_csm_current_state\(1),
      I4 => data6(2),
      O => \response_nibble_rx[2]_i_2_n_0\
    );
\response_nibble_rx[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data5(2),
      I1 => \^rx_csm_current_state\(0),
      I2 => data3(2),
      I3 => \^rx_csm_current_state\(3),
      I4 => data4(2),
      O => \response_nibble_rx[2]_i_3_n_0\
    );
\response_nibble_rx[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data1(2),
      I1 => \^rx_csm_current_state\(0),
      I2 => data0(2),
      I3 => \^rx_csm_current_state\(3),
      I4 => data3(2),
      O => \response_nibble_rx[2]_i_4_n_0\
    );
\response_nibble_rx[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000B"
    )
        port map (
      I0 => \response_nibble_rx[3]_i_3_n_0\,
      I1 => \response_nibble_rx[3]_i_4_n_0\,
      I2 => \response_nibble_rx[3]_i_5_n_0\,
      I3 => reset,
      O => \response_nibble_rx[3]_i_1_n_0\
    );
\response_nibble_rx[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \response_nibble_rx[3]_i_6_n_0\,
      I1 => \^rx_csm_current_state\(2),
      I2 => \response_nibble_rx[3]_i_7_n_0\,
      I3 => \^rx_csm_current_state\(1),
      I4 => \response_nibble_rx[3]_i_8_n_0\,
      O => response_nibble_rx_0(3)
    );
\response_nibble_rx[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFC3C3EC"
    )
        port map (
      I0 => \^rx_csm_current_state\(4),
      I1 => \^rx_csm_current_state\(5),
      I2 => \^rx_csm_current_state\(3),
      I3 => \^rx_csm_current_state\(2),
      I4 => \^rx_csm_current_state\(1),
      O => \response_nibble_rx[3]_i_3_n_0\
    );
\response_nibble_rx[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003F020000F282"
    )
        port map (
      I0 => \^rx_csm_current_state\(3),
      I1 => \^rx_csm_current_state\(1),
      I2 => \^rx_csm_current_state\(2),
      I3 => \^rx_csm_current_state\(4),
      I4 => tx_ack,
      I5 => \^rx_csm_current_state\(0),
      O => \response_nibble_rx[3]_i_4_n_0\
    );
\response_nibble_rx[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9F9FEF69EBDFFFF"
    )
        port map (
      I0 => \^rx_csm_current_state\(1),
      I1 => \^rx_csm_current_state\(2),
      I2 => \^rx_csm_current_state\(5),
      I3 => \^rx_csm_current_state\(0),
      I4 => \^rx_csm_current_state\(4),
      I5 => \^rx_csm_current_state\(3),
      O => \response_nibble_rx[3]_i_5_n_0\
    );
\response_nibble_rx[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \bus_din_tmp_reg_n_0_[3]\,
      I1 => \^rx_csm_current_state\(0),
      I2 => data2(3),
      I3 => \^rx_csm_current_state\(1),
      I4 => data6(3),
      O => \response_nibble_rx[3]_i_6_n_0\
    );
\response_nibble_rx[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => data5(3),
      I1 => \^rx_csm_current_state\(0),
      I2 => data3(3),
      I3 => \^rx_csm_current_state\(3),
      I4 => data4(3),
      O => \response_nibble_rx[3]_i_7_n_0\
    );
\response_nibble_rx[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => data1(3),
      I1 => \^rx_csm_current_state\(0),
      I2 => data0(3),
      I3 => \^rx_csm_current_state\(3),
      I4 => data3(3),
      O => \response_nibble_rx[3]_i_8_n_0\
    );
\response_nibble_rx_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response_nibble_rx[3]_i_1_n_0\,
      D => response_nibble_rx_0(0),
      Q => response_nibble_rx(0),
      R => '0'
    );
\response_nibble_rx_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response_nibble_rx[3]_i_1_n_0\,
      D => response_nibble_rx_0(1),
      Q => response_nibble_rx(1),
      R => '0'
    );
\response_nibble_rx_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response_nibble_rx[3]_i_1_n_0\,
      D => response_nibble_rx_0(2),
      Q => response_nibble_rx(2),
      R => '0'
    );
\response_nibble_rx_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \response_nibble_rx[3]_i_1_n_0\,
      D => response_nibble_rx_0(3),
      Q => response_nibble_rx(3),
      R => '0'
    );
\rx_csm_current_state[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404444044444440"
    )
        port map (
      I0 => \^rx_csm_current_state\(2),
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(0),
      I3 => cmd_we,
      I4 => \^rx_csm_current_state\(1),
      I5 => tx_ack,
      O => \rx_csm_current_state[0]_i_10_n_0\
    );
\rx_csm_current_state[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0BB330CF088FF3F"
    )
        port map (
      I0 => bus_ack,
      I1 => \^rx_csm_current_state\(2),
      I2 => cmd_we,
      I3 => \^rx_csm_current_state\(1),
      I4 => \^rx_csm_current_state\(0),
      I5 => tx_ack,
      O => \rx_csm_current_state[0]_i_11_n_0\
    );
\rx_csm_current_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300020FF30002000"
    )
        port map (
      I0 => \rx_csm_current_state[0]_i_5_n_0\,
      I1 => \rx_csm_current_state[0]_i_6_n_0\,
      I2 => \rx_csm_current_state[0]_i_7_n_0\,
      I3 => \^rx_csm_current_state\(5),
      I4 => \^rx_csm_current_state\(4),
      I5 => \rx_csm_current_state[0]_i_8_n_0\,
      O => \rx_csm_current_state_reg[5]_0\
    );
\rx_csm_current_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800088888880000"
    )
        port map (
      I0 => \^rx_csm_current_state\(2),
      I1 => \^rx_csm_current_state\(3),
      I2 => lock_rx_i_4_n_0,
      I3 => \^rx_csm_current_state\(1),
      I4 => tx_ack,
      I5 => \^rx_csm_current_state\(0),
      O => \rx_csm_current_state_reg[2]_0\
    );
\rx_csm_current_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \rx_csm_current_state[0]_i_9_n_0\,
      I1 => \^rx_csm_current_state\(4),
      I2 => \^rx_csm_current_state\(5),
      I3 => \rx_csm_current_state[0]_i_10_n_0\,
      O => \rx_csm_current_state_reg[4]_1\
    );
\rx_csm_current_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB3FF3B7FB3F7337"
    )
        port map (
      I0 => \^rx_csm_current_state\(2),
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(0),
      I3 => cmd_we,
      I4 => \^rx_csm_current_state\(1),
      I5 => bus_ack,
      O => \rx_csm_current_state[0]_i_5_n_0\
    );
\rx_csm_current_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA22A0AA0022A0"
    )
        port map (
      I0 => \rx_csm_current_state[1]_i_7_n_0\,
      I1 => bus_ack,
      I2 => \^rx_csm_current_state\(1),
      I3 => \^rx_csm_current_state\(0),
      I4 => \^rx_csm_current_state\(2),
      I5 => cmd_we,
      O => \rx_csm_current_state[0]_i_6_n_0\
    );
\rx_csm_current_state[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B3BFE12DFFFFFFFF"
    )
        port map (
      I0 => tx_ack,
      I1 => \rx_csm_current_state[2]_i_10_n_0\,
      I2 => \^rx_csm_current_state\(0),
      I3 => cmd_we,
      I4 => \^rx_csm_current_state\(1),
      I5 => \rx_csm_current_state[1]_i_6_n_0\,
      O => \rx_csm_current_state[0]_i_7_n_0\
    );
\rx_csm_current_state[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBB88888B88BBBB"
    )
        port map (
      I0 => \rx_csm_current_state[0]_i_11_n_0\,
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(2),
      I3 => \^rx_csm_current_state\(1),
      I4 => cmd_we,
      I5 => \^rx_csm_current_state\(0),
      O => \rx_csm_current_state[0]_i_8_n_0\
    );
\rx_csm_current_state[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04501551"
    )
        port map (
      I0 => \^rx_csm_current_state\(3),
      I1 => \^rx_csm_current_state\(2),
      I2 => \^rx_csm_current_state\(0),
      I3 => cmd_we,
      I4 => \^rx_csm_current_state\(1),
      O => \rx_csm_current_state[0]_i_9_n_0\
    );
\rx_csm_current_state[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33032200CFFFF0C0"
    )
        port map (
      I0 => tx_ack,
      I1 => \^rx_csm_current_state\(2),
      I2 => cmd_we,
      I3 => \^rx_csm_current_state\(0),
      I4 => \^rx_csm_current_state\(1),
      I5 => \^rx_csm_current_state\(3),
      O => \rx_csm_current_state[1]_i_10_n_0\
    );
\rx_csm_current_state[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880080008808880"
    )
        port map (
      I0 => \^rx_csm_current_state\(4),
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(0),
      I3 => \^rx_csm_current_state\(1),
      I4 => tx_ack,
      I5 => \^rx_csm_current_state\(2),
      O => \rx_csm_current_state[1]_i_11_n_0\
    );
\rx_csm_current_state[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A802A8020A02000"
    )
        port map (
      I0 => \rx_csm_current_state[1]_i_6_n_0\,
      I1 => cmd_we,
      I2 => \^rx_csm_current_state\(0),
      I3 => \^rx_csm_current_state\(1),
      I4 => tx_ack,
      I5 => \^rx_csm_current_state\(2),
      O => \rx_csm_current_state[1]_i_12_n_0\
    );
\rx_csm_current_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"85E78FE7FFFFFFFF"
    )
        port map (
      I0 => \^rx_csm_current_state\(0),
      I1 => tx_ack,
      I2 => \^rx_csm_current_state\(1),
      I3 => \rx_csm_current_state[2]_i_10_n_0\,
      I4 => cmd_we,
      I5 => \rx_csm_current_state[1]_i_6_n_0\,
      O => \rx_csm_current_state_reg[0]_0\
    );
\rx_csm_current_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF78C00000"
    )
        port map (
      I0 => cmd_we,
      I1 => \^rx_csm_current_state\(2),
      I2 => \^rx_csm_current_state\(1),
      I3 => \^rx_csm_current_state\(0),
      I4 => \rx_csm_current_state[1]_i_7_n_0\,
      I5 => \rx_csm_current_state[1]_i_8_n_0\,
      O => rx_ack_cld_reg
    );
\rx_csm_current_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF0D"
    )
        port map (
      I0 => \rx_csm_current_state[1]_i_9_n_0\,
      I1 => \rx_csm_current_state[1]_i_10_n_0\,
      I2 => \^rx_csm_current_state\(4),
      I3 => \^rx_csm_current_state\(5),
      I4 => \rx_csm_current_state[1]_i_11_n_0\,
      I5 => \rx_csm_current_state[1]_i_12_n_0\,
      O => \rx_csm_current_state_reg[4]_0\
    );
\rx_csm_current_state[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rx_csm_current_state\(4),
      I1 => \^rx_csm_current_state\(3),
      O => \rx_csm_current_state[1]_i_6_n_0\
    );
\rx_csm_current_state[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rx_csm_current_state\(3),
      I1 => \^rx_csm_current_state\(4),
      O => \rx_csm_current_state[1]_i_7_n_0\
    );
\rx_csm_current_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01000C00FFFFFFFF"
    )
        port map (
      I0 => \^rx_csm_current_state\(2),
      I1 => \^rx_csm_current_state\(1),
      I2 => \^rx_csm_current_state\(4),
      I3 => \^rx_csm_current_state\(3),
      I4 => \bus_dout_int_reg[16]_0\,
      I5 => \^rx_csm_current_state\(5),
      O => \rx_csm_current_state[1]_i_8_n_0\
    );
\rx_csm_current_state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAFBABFFAAABABF"
    )
        port map (
      I0 => \bus_dout_int[27]_i_2_n_0\,
      I1 => bus_ack,
      I2 => \^rx_csm_current_state\(0),
      I3 => cmd_we,
      I4 => \^rx_csm_current_state\(1),
      I5 => tx_ack,
      O => \rx_csm_current_state[1]_i_9_n_0\
    );
\rx_csm_current_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABABABBBBBBBBBB"
    )
        port map (
      I0 => \rx_csm_current_state_reg[2]_2\,
      I1 => \rx_csm_current_state_reg[2]_3\,
      I2 => \rx_csm_current_state[2]_i_4_n_0\,
      I3 => \rx_csm_current_state[2]_i_5_n_0\,
      I4 => \rx_csm_current_state[2]_i_6_n_0\,
      I5 => \rx_csm_current_state[2]_i_7_n_0\,
      O => \rx_csm_current_state[2]_i_1_n_0\
    );
\rx_csm_current_state[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \^rx_csm_current_state\(4),
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(2),
      O => \rx_csm_current_state[2]_i_10_n_0\
    );
\rx_csm_current_state[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^rx_csm_current_state\(3),
      I1 => \^rx_csm_current_state\(4),
      I2 => \^rx_csm_current_state\(5),
      O => \rx_csm_current_state[2]_i_11_n_0\
    );
\rx_csm_current_state[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8840884000FFFF00"
    )
        port map (
      I0 => \rx_csm_current_state[2]_i_15_n_0\,
      I1 => \^rx_csm_current_state\(4),
      I2 => tx_ack,
      I3 => \^rx_csm_current_state\(2),
      I4 => \rx_csm_current_state[2]_i_16_n_0\,
      I5 => \^rx_csm_current_state\(3),
      O => \rx_csm_current_state[2]_i_12_n_0\
    );
\rx_csm_current_state[2]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^rx_csm_current_state\(1),
      I1 => \^rx_csm_current_state\(0),
      I2 => cmd_we,
      O => \rx_csm_current_state[2]_i_13_n_0\
    );
\rx_csm_current_state[2]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \^rx_csm_current_state\(1),
      I1 => \^rx_csm_current_state\(0),
      I2 => tx_ack,
      O => \rx_csm_current_state[2]_i_14_n_0\
    );
\rx_csm_current_state[2]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^rx_csm_current_state\(1),
      I1 => \^rx_csm_current_state\(0),
      O => \rx_csm_current_state[2]_i_15_n_0\
    );
\rx_csm_current_state[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^rx_csm_current_state\(1),
      I1 => \^rx_csm_current_state\(0),
      I2 => cmd_we,
      O => \rx_csm_current_state[2]_i_16_n_0\
    );
\rx_csm_current_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEBABABBB"
    )
        port map (
      I0 => \rx_csm_current_state_reg[2]_4\,
      I1 => \rx_csm_current_state[2]_i_10_n_0\,
      I2 => \^rx_csm_current_state\(1),
      I3 => \^rx_csm_current_state\(0),
      I4 => tx_ack,
      I5 => \rx_csm_current_state[2]_i_11_n_0\,
      O => \rx_csm_current_state[2]_i_4_n_0\
    );
\rx_csm_current_state[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^rx_csm_current_state\(4),
      I1 => \^rx_csm_current_state\(5),
      O => \rx_csm_current_state[2]_i_5_n_0\
    );
\rx_csm_current_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F38F0C0F0F8F0C0F"
    )
        port map (
      I0 => bus_ack,
      I1 => \^rx_csm_current_state\(3),
      I2 => \^rx_csm_current_state\(2),
      I3 => \^rx_csm_current_state\(1),
      I4 => \^rx_csm_current_state\(0),
      I5 => cmd_we,
      O => \rx_csm_current_state[2]_i_6_n_0\
    );
\rx_csm_current_state[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABABABABABA"
    )
        port map (
      I0 => \^rx_csm_current_state\(5),
      I1 => \rx_csm_current_state[2]_i_12_n_0\,
      I2 => \rx_csm_current_state[3]_i_8_n_0\,
      I3 => \^rx_csm_current_state\(2),
      I4 => \rx_csm_current_state[2]_i_13_n_0\,
      I5 => \rx_csm_current_state[2]_i_14_n_0\,
      O => \rx_csm_current_state[2]_i_7_n_0\
    );
\rx_csm_current_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A888A8A8A888A88"
    )
        port map (
      I0 => \rx_csm_current_state_reg[3]_1\,
      I1 => \rx_csm_current_state_reg[3]_2\,
      I2 => \^rx_csm_current_state\(5),
      I3 => \rx_csm_current_state[3]_i_4_n_0\,
      I4 => \rx_csm_current_state[3]_i_5_n_0\,
      I5 => \rx_csm_current_state[3]_i_6_n_0\,
      O => \rx_csm_current_state[3]_i_1_n_0\
    );
\rx_csm_current_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF51555555"
    )
        port map (
      I0 => \rx_csm_current_state[3]_i_8_n_0\,
      I1 => \^rx_csm_current_state\(1),
      I2 => \^rx_csm_current_state\(2),
      I3 => \^rx_csm_current_state\(0),
      I4 => cmd_we,
      I5 => \rx_csm_current_state[3]_i_9_n_0\,
      O => \rx_csm_current_state[3]_i_4_n_0\
    );
\rx_csm_current_state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^rx_csm_current_state\(3),
      I1 => \^rx_csm_current_state\(4),
      O => \rx_csm_current_state[3]_i_5_n_0\
    );
\rx_csm_current_state[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7DFD"
    )
        port map (
      I0 => \^rx_csm_current_state\(0),
      I1 => \^rx_csm_current_state\(1),
      I2 => \^rx_csm_current_state\(2),
      I3 => lock_rx_i_4_n_0,
      O => \rx_csm_current_state[3]_i_6_n_0\
    );
\rx_csm_current_state[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A511555555005555"
    )
        port map (
      I0 => \^rx_csm_current_state\(3),
      I1 => bus_ack,
      I2 => cmd_we,
      I3 => \^rx_csm_current_state\(2),
      I4 => \^rx_csm_current_state\(1),
      I5 => \^rx_csm_current_state\(0),
      O => \rx_csm_current_state_reg[3]_0\
    );
\rx_csm_current_state[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F8FF"
    )
        port map (
      I0 => \^rx_csm_current_state\(2),
      I1 => \rx_csm_current_state_reg[4]_2\,
      I2 => \^rx_csm_current_state\(4),
      I3 => \^rx_csm_current_state\(3),
      O => \rx_csm_current_state[3]_i_8_n_0\
    );
\rx_csm_current_state[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000840400008600"
    )
        port map (
      I0 => \^rx_csm_current_state\(2),
      I1 => \^rx_csm_current_state\(1),
      I2 => \^rx_csm_current_state\(0),
      I3 => cmd_we,
      I4 => \^rx_csm_current_state\(3),
      I5 => \^rx_csm_current_state\(4),
      O => \rx_csm_current_state[3]_i_9_n_0\
    );
\rx_csm_current_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBABBBABBBBBBBA"
    )
        port map (
      I0 => \rx_csm_current_state_reg[4]_3\,
      I1 => \rx_csm_current_state_reg[4]_4\,
      I2 => \rx_csm_current_state[4]_i_4_n_0\,
      I3 => \rx_csm_current_state[4]_i_5_n_0\,
      I4 => \rx_csm_current_state[4]_i_6_n_0\,
      I5 => \rx_csm_current_state[4]_i_7_n_0\,
      O => \rx_csm_current_state[4]_i_1_n_0\
    );
\rx_csm_current_state[4]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C4C7FFFF"
    )
        port map (
      I0 => cmd_we,
      I1 => \rx_csm_current_state[2]_i_10_n_0\,
      I2 => \^rx_csm_current_state\(0),
      I3 => tx_ack,
      I4 => \^rx_csm_current_state\(1),
      O => \rx_csm_current_state[4]_i_11_n_0\
    );
\rx_csm_current_state[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EFEDEDE00000000"
    )
        port map (
      I0 => \^rx_csm_current_state\(0),
      I1 => \^rx_csm_current_state\(2),
      I2 => \^rx_csm_current_state\(3),
      I3 => lock_rx_i_4_n_0,
      I4 => \^rx_csm_current_state\(1),
      I5 => \num[7]_i_5_n_0\,
      O => \rx_csm_current_state[4]_i_4_n_0\
    );
\rx_csm_current_state[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00008000000080"
    )
        port map (
      I0 => \^rx_csm_current_state\(2),
      I1 => \rx_csm_current_state_reg[4]_2\,
      I2 => \^rx_csm_current_state\(3),
      I3 => \^rx_csm_current_state\(4),
      I4 => \^rx_csm_current_state\(5),
      I5 => \rx_csm_current_state[4]_i_11_n_0\,
      O => \rx_csm_current_state[4]_i_5_n_0\
    );
\rx_csm_current_state[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA0000EAAA"
    )
        port map (
      I0 => \^rx_csm_current_state\(3),
      I1 => \^rx_csm_current_state\(1),
      I2 => \^rx_csm_current_state\(0),
      I3 => bus_ack,
      I4 => \^rx_csm_current_state\(4),
      I5 => \^rx_csm_current_state\(2),
      O => \rx_csm_current_state[4]_i_6_n_0\
    );
\rx_csm_current_state[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF0000FFFFFFFF"
    )
        port map (
      I0 => \^rx_csm_current_state\(0),
      I1 => \^rx_csm_current_state\(1),
      I2 => \^rx_csm_current_state\(2),
      I3 => cmd_we,
      I4 => \^rx_csm_current_state\(3),
      I5 => \^rx_csm_current_state\(5),
      O => \rx_csm_current_state[4]_i_7_n_0\
    );
\rx_csm_current_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BABABABB"
    )
        port map (
      I0 => \rx_csm_current_state[5]_i_2_n_0\,
      I1 => \^rx_csm_current_state\(5),
      I2 => \rx_csm_current_state[5]_i_3_n_0\,
      I3 => \rx_csm_current_state[3]_i_5_n_0\,
      I4 => \rx_csm_current_state[3]_i_6_n_0\,
      I5 => \rx_csm_current_state_reg[2]_3\,
      O => \rx_csm_current_state[5]_i_1_n_0\
    );
\rx_csm_current_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44444440"
    )
        port map (
      I0 => \rx_csm_current_state[5]_i_4_n_0\,
      I1 => \^rx_csm_current_state\(5),
      I2 => \rx_csm_current_state[5]_i_5_n_0\,
      I3 => \^rx_csm_current_state\(4),
      I4 => \^rx_csm_current_state\(3),
      I5 => \rx_csm_current_state_reg[2]_4\,
      O => \rx_csm_current_state[5]_i_2_n_0\
    );
\rx_csm_current_state[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAABABAAAAAAAA"
    )
        port map (
      I0 => \rx_csm_current_state[5]_i_6_n_0\,
      I1 => \^rx_csm_current_state\(1),
      I2 => \^rx_csm_current_state\(2),
      I3 => tx_ack,
      I4 => \^rx_csm_current_state\(0),
      I5 => \rx_csm_current_state[1]_i_6_n_0\,
      O => \rx_csm_current_state[5]_i_3_n_0\
    );
\rx_csm_current_state[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \^rx_csm_current_state\(3),
      I1 => \^rx_csm_current_state\(4),
      I2 => cmd_we,
      I3 => \^rx_csm_current_state\(0),
      I4 => \^rx_csm_current_state\(2),
      I5 => \^rx_csm_current_state\(1),
      O => \rx_csm_current_state[5]_i_4_n_0\
    );
\rx_csm_current_state[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => \^rx_csm_current_state\(1),
      I1 => \^rx_csm_current_state\(2),
      I2 => bus_ack,
      I3 => \^rx_csm_current_state\(0),
      O => \rx_csm_current_state[5]_i_5_n_0\
    );
\rx_csm_current_state[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000002000"
    )
        port map (
      I0 => \^rx_csm_current_state\(3),
      I1 => \^rx_csm_current_state\(4),
      I2 => \^rx_csm_current_state\(2),
      I3 => cmd_we,
      I4 => \^rx_csm_current_state\(0),
      I5 => \^rx_csm_current_state\(1),
      O => \rx_csm_current_state[5]_i_6_n_0\
    );
\rx_csm_current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rx_csm_current_state_reg[1]_0\(0),
      Q => \^rx_csm_current_state\(0),
      R => '0'
    );
\rx_csm_current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rx_csm_current_state_reg[1]_0\(1),
      Q => \^rx_csm_current_state\(1),
      R => '0'
    );
\rx_csm_current_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rx_csm_current_state[2]_i_1_n_0\,
      Q => \^rx_csm_current_state\(2),
      R => '0'
    );
\rx_csm_current_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rx_csm_current_state[3]_i_1_n_0\,
      Q => \^rx_csm_current_state\(3),
      R => '0'
    );
\rx_csm_current_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rx_csm_current_state[4]_i_1_n_0\,
      Q => \^rx_csm_current_state\(4),
      R => '0'
    );
\rx_csm_current_state_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \rx_csm_current_state[5]_i_1_n_0\,
      Q => \^rx_csm_current_state\(5),
      S => reset
    );
\sbus_ack_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sbus_rdata[31]_i_3__0_n_0\,
      I1 => \sbus_rdata[31]_i_2__0_n_0\,
      O => sbus_ack0
    );
\sbus_rdata[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[0]\,
      I5 => Q(0),
      O => D(0)
    );
\sbus_rdata[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[10]\,
      I5 => Q(10),
      O => D(10)
    );
\sbus_rdata[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[11]\,
      I5 => Q(11),
      O => D(11)
    );
\sbus_rdata[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[12]\,
      I5 => Q(12),
      O => D(12)
    );
\sbus_rdata[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[13]\,
      I5 => Q(13),
      O => D(13)
    );
\sbus_rdata[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[14]\,
      I5 => Q(14),
      O => D(14)
    );
\sbus_rdata[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[15]\,
      I5 => Q(15),
      O => D(15)
    );
\sbus_rdata[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[16]\,
      I5 => Q(16),
      O => D(16)
    );
\sbus_rdata[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[17]\,
      I5 => Q(17),
      O => D(17)
    );
\sbus_rdata[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[18]\,
      I5 => Q(18),
      O => D(18)
    );
\sbus_rdata[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[19]\,
      I5 => Q(19),
      O => D(19)
    );
\sbus_rdata[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[1]\,
      I5 => Q(1),
      O => D(1)
    );
\sbus_rdata[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[20]\,
      I5 => Q(20),
      O => D(20)
    );
\sbus_rdata[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[21]\,
      I5 => Q(21),
      O => D(21)
    );
\sbus_rdata[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[22]\,
      I5 => Q(22),
      O => D(22)
    );
\sbus_rdata[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[23]\,
      I5 => Q(23),
      O => D(23)
    );
\sbus_rdata[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[24]\,
      I5 => Q(24),
      O => D(24)
    );
\sbus_rdata[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[25]\,
      I5 => Q(25),
      O => D(25)
    );
\sbus_rdata[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[26]\,
      I5 => Q(26),
      O => D(26)
    );
\sbus_rdata[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[27]\,
      I5 => Q(27),
      O => D(27)
    );
\sbus_rdata[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[28]\,
      I5 => Q(28),
      O => D(28)
    );
\sbus_rdata[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[29]\,
      I5 => Q(29),
      O => D(29)
    );
\sbus_rdata[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[2]\,
      I5 => Q(2),
      O => D(2)
    );
\sbus_rdata[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[30]\,
      I5 => Q(30),
      O => D(30)
    );
\sbus_rdata[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[31]\,
      I5 => Q(31),
      O => D(31)
    );
\sbus_rdata[31]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[31]_i_5__0_n_0\,
      I1 => \sbus_rdata[31]_i_6__0_n_0\,
      I2 => \bus_addr_int_reg_n_0_[9]\,
      I3 => \bus_addr_int_reg_n_0_[7]\,
      I4 => \bus_addr_int_reg_n_0_[14]\,
      I5 => \bus_addr_int_reg_n_0_[5]\,
      O => \sbus_rdata[31]_i_2__0_n_0\
    );
\sbus_rdata[31]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFF6F7FFFFFFFF"
    )
        port map (
      I0 => \^rx_csm_current_state\(3),
      I1 => \^rx_csm_current_state\(2),
      I2 => \^rx_csm_current_state\(4),
      I3 => \^rx_csm_current_state\(5),
      I4 => \^rx_csm_current_state\(1),
      I5 => \^rx_csm_current_state\(0),
      O => \sbus_rdata[31]_i_3__0_n_0\
    );
\sbus_rdata[31]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \bus_addr_int_reg_n_0_[15]\,
      I1 => \bus_addr_int_reg_n_0_[10]\,
      I2 => \bus_addr_int_reg_n_0_[2]\,
      I3 => \bus_addr_int_reg_n_0_[6]\,
      I4 => \bus_addr_int_reg_n_0_[4]\,
      I5 => \bus_addr_int_reg_n_0_[8]\,
      O => \sbus_rdata[31]_i_5__0_n_0\
    );
\sbus_rdata[31]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bus_addr_int_reg_n_0_[13]\,
      I1 => \bus_addr_int_reg_n_0_[12]\,
      I2 => \bus_addr_int_reg_n_0_[11]\,
      I3 => \bus_addr_int_reg_n_0_[3]\,
      O => \sbus_rdata[31]_i_6__0_n_0\
    );
\sbus_rdata[31]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \sbus_rdata[31]_i_5__0_n_0\,
      I1 => \sbus_rdata[31]_i_6__0_n_0\,
      I2 => \reg[31]_i_4_n_0\,
      I3 => \bus_addr_int_reg_n_0_[1]\,
      I4 => \sbus_rdata[31]_i_3__0_n_0\,
      I5 => \bus_addr_int_reg_n_0_[0]\,
      O => \bus_addr_int_reg[1]_1\
    );
\sbus_rdata[31]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \sbus_rdata[31]_i_5__0_n_0\,
      I1 => \sbus_rdata[31]_i_6__0_n_0\,
      I2 => \reg[31]_i_4_n_0\,
      I3 => \sbus_rdata[31]_i_3__0_n_0\,
      I4 => \bus_addr_int_reg_n_0_[1]\,
      I5 => \bus_addr_int_reg_n_0_[0]\,
      O => \bus_addr_int_reg[1]_0\
    );
\sbus_rdata[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[3]\,
      I5 => Q(3),
      O => D(3)
    );
\sbus_rdata[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[4]\,
      I5 => Q(4),
      O => D(4)
    );
\sbus_rdata[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[5]\,
      I5 => Q(5),
      O => D(5)
    );
\sbus_rdata[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[6]\,
      I5 => Q(6),
      O => D(6)
    );
\sbus_rdata[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[7]\,
      I5 => Q(7),
      O => D(7)
    );
\sbus_rdata[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[8]\,
      I5 => Q(8),
      O => D(8)
    );
\sbus_rdata[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0400FFFF0000"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2__0_n_0\,
      I1 => \bus_addr_int_reg_n_0_[1]\,
      I2 => \sbus_rdata[31]_i_3__0_n_0\,
      I3 => \bus_addr_int_reg_n_0_[0]\,
      I4 => \sbus_rdata_reg[9]\,
      I5 => Q(9),
      O => D(9)
    );
\tx_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FE00000"
    )
        port map (
      I0 => response_nibble_rx(1),
      I1 => response_nibble_rx(2),
      I2 => response_nibble_rx(3),
      I3 => response_nibble_rx(0),
      I4 => lock_rx,
      O => \response_nibble_rx_reg[1]_0\
    );
\tx_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8A2000"
    )
        port map (
      I0 => lock_rx,
      I1 => response_nibble_rx(0),
      I2 => response_nibble_rx(3),
      I3 => response_nibble_rx(2),
      I4 => response_nibble_rx(1),
      O => lock_rx_reg_1
    );
\tx_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A080A0"
    )
        port map (
      I0 => lock_rx,
      I1 => response_nibble_rx(1),
      I2 => response_nibble_rx(2),
      I3 => response_nibble_rx(3),
      I4 => response_nibble_rx(0),
      O => lock_rx_reg_2
    );
\tx_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF400040"
    )
        port map (
      I0 => \^lock_rx_reg_0\,
      I1 => response_nibble_rx(3),
      I2 => lock_rx,
      I3 => current_state,
      I4 => \tx_reg_reg[4]\(0),
      I5 => reset,
      O => \response_nibble_rx_reg[3]_0\(0)
    );
\tx_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => lock_rx,
      I1 => response_nibble_rx(3),
      I2 => response_nibble_rx(2),
      I3 => response_nibble_rx(1),
      O => \^lock_rx_reg_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnt_modulus is
  port (
    \cnt_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \cnt_reg[15]_0\ : out STD_LOGIC;
    \cnt_reg[14]_0\ : out STD_LOGIC;
    \cnt_reg[13]_0\ : out STD_LOGIC;
    \cnt_reg[12]_0\ : out STD_LOGIC;
    \cnt_reg[11]_0\ : out STD_LOGIC;
    \cnt_reg[10]_0\ : out STD_LOGIC;
    \cnt_reg[9]_0\ : out STD_LOGIC;
    \cnt_reg[8]_0\ : out STD_LOGIC;
    \cnt_reg[7]_1\ : out STD_LOGIC;
    \cnt_reg[6]_0\ : out STD_LOGIC;
    \cnt_reg[5]_0\ : out STD_LOGIC;
    \cnt_reg[4]_0\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dac1_reg[15]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnt_modulus;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnt_modulus is
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \^cnt_reg[7]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cnt[0]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cnt[0]_i_5\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cnt[0]_i_6\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \dac0[10]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \dac0[11]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \dac0[12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \dac0[13]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \dac0[14]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \dac0[15]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \dac0[8]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \dac0[9]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \dac1[10]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \dac1[11]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \dac1[12]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \dac1[13]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \dac1[14]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \dac1[15]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \dac1[8]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \dac1[9]_i_1\ : label is "soft_lutpair46";
begin
  \cnt_reg[7]_0\(3 downto 0) <= \^cnt_reg[7]_0\(3 downto 0);
\cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => reset,
      I1 => \cnt[0]_i_3_n_0\,
      I2 => \cnt[0]_i_4_n_0\,
      I3 => \cnt[0]_i_5_n_0\,
      I4 => \cnt[0]_i_6_n_0\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt_reg(9),
      I1 => \^cnt_reg[7]_0\(0),
      I2 => cnt_reg(14),
      I3 => cnt_reg(2),
      O => \cnt[0]_i_3_n_0\
    );
\cnt[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt_reg(13),
      I1 => \^cnt_reg[7]_0\(3),
      I2 => cnt_reg(15),
      I3 => \^cnt_reg[7]_0\(1),
      O => \cnt[0]_i_4_n_0\
    );
\cnt[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => cnt_reg(0),
      I2 => cnt_reg(1),
      I3 => cnt_reg(3),
      O => \cnt[0]_i_5_n_0\
    );
\cnt[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => cnt_reg(11),
      I2 => cnt_reg(8),
      I3 => \^cnt_reg[7]_0\(2),
      O => \cnt[0]_i_6_n_0\
    );
\cnt[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => \cnt[0]_i_7_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_7\,
      Q => cnt_reg(0),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_2_n_0\,
      CO(2) => \cnt_reg[0]_i_2_n_1\,
      CO(1) => \cnt_reg[0]_i_2_n_2\,
      CO(0) => \cnt_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_reg[0]_i_2_n_4\,
      O(2) => \cnt_reg[0]_i_2_n_5\,
      O(1) => \cnt_reg[0]_i_2_n_6\,
      O(0) => \cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => cnt_reg(3 downto 1),
      S(0) => \cnt[0]_i_7_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_5\,
      Q => cnt_reg(10),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_4\,
      Q => cnt_reg(11),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_7\,
      Q => cnt_reg(12),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_1_n_0\,
      CO(3) => \NLW_cnt_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_reg[12]_i_1_n_1\,
      CO(1) => \cnt_reg[12]_i_1_n_2\,
      CO(0) => \cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[12]_i_1_n_4\,
      O(2) => \cnt_reg[12]_i_1_n_5\,
      O(1) => \cnt_reg[12]_i_1_n_6\,
      O(0) => \cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(15 downto 12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_6\,
      Q => cnt_reg(13),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_5\,
      Q => cnt_reg(14),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_4\,
      Q => cnt_reg(15),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_6\,
      Q => cnt_reg(1),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_5\,
      Q => cnt_reg(2),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_4\,
      Q => cnt_reg(3),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_7\,
      Q => \^cnt_reg[7]_0\(0),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_2_n_0\,
      CO(3) => \cnt_reg[4]_i_1_n_0\,
      CO(2) => \cnt_reg[4]_i_1_n_1\,
      CO(1) => \cnt_reg[4]_i_1_n_2\,
      CO(0) => \cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^cnt_reg[7]_0\(3 downto 0)
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_6\,
      Q => \^cnt_reg[7]_0\(1),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_5\,
      Q => \^cnt_reg[7]_0\(2),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_4\,
      Q => \^cnt_reg[7]_0\(3),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_7\,
      Q => cnt_reg(8),
      R => \cnt[0]_i_1_n_0\
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_1_n_0\,
      CO(3) => \cnt_reg[8]_i_1_n_0\,
      CO(2) => \cnt_reg[8]_i_1_n_1\,
      CO(1) => \cnt_reg[8]_i_1_n_2\,
      CO(0) => \cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_1_n_4\,
      O(2) => \cnt_reg[8]_i_1_n_5\,
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(11 downto 8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_6\,
      Q => cnt_reg(9),
      R => \cnt[0]_i_1_n_0\
    );
\dac0[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(10),
      O => \cnt_reg[10]_0\
    );
\dac0[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(11),
      O => \cnt_reg[11]_0\
    );
\dac0[12]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(12),
      O => \cnt_reg[12]_0\
    );
\dac0[13]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(13),
      O => \cnt_reg[13]_0\
    );
\dac0[14]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(14),
      O => \cnt_reg[14]_0\
    );
\dac0[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(15),
      O => \cnt_reg[15]_0\
    );
\dac0[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cnt_reg[7]_0\(0),
      O => \cnt_reg[4]_0\
    );
\dac0[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cnt_reg[7]_0\(1),
      O => \cnt_reg[5]_0\
    );
\dac0[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cnt_reg[7]_0\(2),
      O => \cnt_reg[6]_0\
    );
\dac0[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cnt_reg[7]_0\(3),
      O => \cnt_reg[7]_1\
    );
\dac0[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(8),
      O => \cnt_reg[8]_0\
    );
\dac0[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(9),
      O => \cnt_reg[9]_0\
    );
\dac1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => Q(0),
      I2 => \dac1_reg[15]\(2),
      O => D(2)
    );
\dac1[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cnt_reg(11),
      I1 => Q(0),
      I2 => \dac1_reg[15]\(3),
      O => D(3)
    );
\dac1[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => Q(0),
      I2 => \dac1_reg[15]\(4),
      O => D(4)
    );
\dac1[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cnt_reg(13),
      I1 => Q(0),
      I2 => \dac1_reg[15]\(5),
      O => D(5)
    );
\dac1[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cnt_reg(14),
      I1 => Q(0),
      I2 => \dac1_reg[15]\(6),
      O => D(6)
    );
\dac1[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cnt_reg(15),
      I1 => Q(0),
      I2 => \dac1_reg[15]\(7),
      O => D(7)
    );
\dac1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => Q(0),
      I2 => \dac1_reg[15]\(0),
      O => D(0)
    );
\dac1[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => cnt_reg(9),
      I1 => Q(0),
      I2 => \dac1_reg[15]\(1),
      O => D(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comp_signal_synchr is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comp_signal_synchr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comp_signal_synchr is
  signal signal_vec_q0 : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal signal_vec_q1 : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal signal_vec_q2 : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal \signal_vec_q2[11]_i_1_n_0\ : STD_LOGIC;
  signal \signal_vec_q2[11]_i_2_n_0\ : STD_LOGIC;
  signal \signal_vec_q2[11]_i_3_n_0\ : STD_LOGIC;
  signal \signal_vec_q2[11]_i_4_n_0\ : STD_LOGIC;
  signal \signal_vec_q2[11]_i_5_n_0\ : STD_LOGIC;
  signal \signal_vec_q2[11]_i_6_n_0\ : STD_LOGIC;
  signal \signal_vec_q2[11]_i_7_n_0\ : STD_LOGIC;
  signal \timer_debounce[0]_i_2_n_0\ : STD_LOGIC;
  signal timer_debounce_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \timer_debounce_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \timer_debounce_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \timer_debounce_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \timer_debounce_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \timer_debounce_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \timer_debounce_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \timer_debounce_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \timer_debounce_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \timer_debounce_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \timer_debounce_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \timer_debounce_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \timer_debounce_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \timer_debounce_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \timer_debounce_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \timer_debounce_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \timer_debounce_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \timer_debounce_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \timer_debounce_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \timer_debounce_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \timer_debounce_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \timer_debounce_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \timer_debounce_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \timer_debounce_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \timer_debounce_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \timer_debounce_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \timer_debounce_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \timer_debounce_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \timer_debounce_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \timer_debounce_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \timer_debounce_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \timer_debounce_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \timer_debounce_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \timer_debounce_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \timer_debounce_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \timer_debounce_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \timer_debounce_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \timer_debounce_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \timer_debounce_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \timer_debounce_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \timer_debounce_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \timer_debounce_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \timer_debounce_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \timer_debounce_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \timer_debounce_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \timer_debounce_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \timer_debounce_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \timer_debounce_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \timer_debounce_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \timer_debounce_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \timer_debounce_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \timer_debounce_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \timer_debounce_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \timer_debounce_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \timer_debounce_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \timer_debounce_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_timer_debounce_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\signal_vec_q0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(6),
      Q => signal_vec_q0(10),
      R => '0'
    );
\signal_vec_q0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(7),
      Q => signal_vec_q0(11),
      R => '0'
    );
\signal_vec_q0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => signal_vec_q0(4),
      R => '0'
    );
\signal_vec_q0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(1),
      Q => signal_vec_q0(5),
      R => '0'
    );
\signal_vec_q0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(2),
      Q => signal_vec_q0(6),
      R => '0'
    );
\signal_vec_q0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(3),
      Q => signal_vec_q0(7),
      R => '0'
    );
\signal_vec_q0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(4),
      Q => signal_vec_q0(8),
      R => '0'
    );
\signal_vec_q0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(5),
      Q => signal_vec_q0(9),
      R => '0'
    );
\signal_vec_q1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q0(10),
      Q => signal_vec_q1(10),
      R => '0'
    );
\signal_vec_q1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q0(11),
      Q => signal_vec_q1(11),
      R => '0'
    );
\signal_vec_q1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q0(4),
      Q => signal_vec_q1(4),
      R => '0'
    );
\signal_vec_q1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q0(5),
      Q => signal_vec_q1(5),
      R => '0'
    );
\signal_vec_q1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q0(6),
      Q => signal_vec_q1(6),
      R => '0'
    );
\signal_vec_q1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q0(7),
      Q => signal_vec_q1(7),
      R => '0'
    );
\signal_vec_q1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q0(8),
      Q => signal_vec_q1(8),
      R => '0'
    );
\signal_vec_q1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q0(9),
      Q => signal_vec_q1(9),
      R => '0'
    );
\signal_vec_q2[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \signal_vec_q2[11]_i_2_n_0\,
      I1 => timer_debounce_reg(27),
      I2 => timer_debounce_reg(22),
      I3 => timer_debounce_reg(24),
      I4 => timer_debounce_reg(3),
      I5 => \signal_vec_q2[11]_i_3_n_0\,
      O => \signal_vec_q2[11]_i_1_n_0\
    );
\signal_vec_q2[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => timer_debounce_reg(17),
      I1 => timer_debounce_reg(25),
      I2 => timer_debounce_reg(7),
      I3 => timer_debounce_reg(2),
      I4 => \signal_vec_q2[11]_i_4_n_0\,
      O => \signal_vec_q2[11]_i_2_n_0\
    );
\signal_vec_q2[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBFFF"
    )
        port map (
      I0 => \signal_vec_q2[11]_i_5_n_0\,
      I1 => timer_debounce_reg(11),
      I2 => timer_debounce_reg(16),
      I3 => timer_debounce_reg(15),
      I4 => timer_debounce_reg(4),
      I5 => \signal_vec_q2[11]_i_6_n_0\,
      O => \signal_vec_q2[11]_i_3_n_0\
    );
\signal_vec_q2[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => timer_debounce_reg(19),
      I1 => timer_debounce_reg(8),
      I2 => timer_debounce_reg(13),
      I3 => timer_debounce_reg(21),
      O => \signal_vec_q2[11]_i_4_n_0\
    );
\signal_vec_q2[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => timer_debounce_reg(23),
      I1 => timer_debounce_reg(9),
      I2 => timer_debounce_reg(14),
      I3 => timer_debounce_reg(5),
      O => \signal_vec_q2[11]_i_5_n_0\
    );
\signal_vec_q2[11]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => timer_debounce_reg(18),
      I1 => timer_debounce_reg(1),
      I2 => timer_debounce_reg(10),
      I3 => timer_debounce_reg(0),
      I4 => \signal_vec_q2[11]_i_7_n_0\,
      O => \signal_vec_q2[11]_i_6_n_0\
    );
\signal_vec_q2[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => timer_debounce_reg(6),
      I1 => timer_debounce_reg(26),
      I2 => timer_debounce_reg(12),
      I3 => timer_debounce_reg(20),
      O => \signal_vec_q2[11]_i_7_n_0\
    );
\signal_vec_q2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \signal_vec_q2[11]_i_1_n_0\,
      D => signal_vec_q1(10),
      Q => signal_vec_q2(10),
      R => '0'
    );
\signal_vec_q2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \signal_vec_q2[11]_i_1_n_0\,
      D => signal_vec_q1(11),
      Q => signal_vec_q2(11),
      R => '0'
    );
\signal_vec_q2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \signal_vec_q2[11]_i_1_n_0\,
      D => signal_vec_q1(4),
      Q => signal_vec_q2(4),
      R => '0'
    );
\signal_vec_q2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \signal_vec_q2[11]_i_1_n_0\,
      D => signal_vec_q1(5),
      Q => signal_vec_q2(5),
      R => '0'
    );
\signal_vec_q2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \signal_vec_q2[11]_i_1_n_0\,
      D => signal_vec_q1(6),
      Q => signal_vec_q2(6),
      R => '0'
    );
\signal_vec_q2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \signal_vec_q2[11]_i_1_n_0\,
      D => signal_vec_q1(7),
      Q => signal_vec_q2(7),
      R => '0'
    );
\signal_vec_q2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \signal_vec_q2[11]_i_1_n_0\,
      D => signal_vec_q1(8),
      Q => signal_vec_q2(8),
      R => '0'
    );
\signal_vec_q2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \signal_vec_q2[11]_i_1_n_0\,
      D => signal_vec_q1(9),
      Q => signal_vec_q2(9),
      R => '0'
    );
\signal_vec_q3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q2(10),
      Q => Q(6),
      R => '0'
    );
\signal_vec_q3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q2(11),
      Q => Q(7),
      R => '0'
    );
\signal_vec_q3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q2(4),
      Q => Q(0),
      R => '0'
    );
\signal_vec_q3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q2(5),
      Q => Q(1),
      R => '0'
    );
\signal_vec_q3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q2(6),
      Q => Q(2),
      R => '0'
    );
\signal_vec_q3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q2(7),
      Q => Q(3),
      R => '0'
    );
\signal_vec_q3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q2(8),
      Q => Q(4),
      R => '0'
    );
\signal_vec_q3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => signal_vec_q2(9),
      Q => Q(5),
      R => '0'
    );
\timer_debounce[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer_debounce_reg(0),
      O => \timer_debounce[0]_i_2_n_0\
    );
\timer_debounce_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[0]_i_1_n_7\,
      Q => timer_debounce_reg(0),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \timer_debounce_reg[0]_i_1_n_0\,
      CO(2) => \timer_debounce_reg[0]_i_1_n_1\,
      CO(1) => \timer_debounce_reg[0]_i_1_n_2\,
      CO(0) => \timer_debounce_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \timer_debounce_reg[0]_i_1_n_4\,
      O(2) => \timer_debounce_reg[0]_i_1_n_5\,
      O(1) => \timer_debounce_reg[0]_i_1_n_6\,
      O(0) => \timer_debounce_reg[0]_i_1_n_7\,
      S(3 downto 1) => timer_debounce_reg(3 downto 1),
      S(0) => \timer_debounce[0]_i_2_n_0\
    );
\timer_debounce_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[8]_i_1_n_5\,
      Q => timer_debounce_reg(10),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[8]_i_1_n_4\,
      Q => timer_debounce_reg(11),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[12]_i_1_n_7\,
      Q => timer_debounce_reg(12),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_debounce_reg[8]_i_1_n_0\,
      CO(3) => \timer_debounce_reg[12]_i_1_n_0\,
      CO(2) => \timer_debounce_reg[12]_i_1_n_1\,
      CO(1) => \timer_debounce_reg[12]_i_1_n_2\,
      CO(0) => \timer_debounce_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_debounce_reg[12]_i_1_n_4\,
      O(2) => \timer_debounce_reg[12]_i_1_n_5\,
      O(1) => \timer_debounce_reg[12]_i_1_n_6\,
      O(0) => \timer_debounce_reg[12]_i_1_n_7\,
      S(3 downto 0) => timer_debounce_reg(15 downto 12)
    );
\timer_debounce_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[12]_i_1_n_6\,
      Q => timer_debounce_reg(13),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[12]_i_1_n_5\,
      Q => timer_debounce_reg(14),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[12]_i_1_n_4\,
      Q => timer_debounce_reg(15),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[16]_i_1_n_7\,
      Q => timer_debounce_reg(16),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_debounce_reg[12]_i_1_n_0\,
      CO(3) => \timer_debounce_reg[16]_i_1_n_0\,
      CO(2) => \timer_debounce_reg[16]_i_1_n_1\,
      CO(1) => \timer_debounce_reg[16]_i_1_n_2\,
      CO(0) => \timer_debounce_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_debounce_reg[16]_i_1_n_4\,
      O(2) => \timer_debounce_reg[16]_i_1_n_5\,
      O(1) => \timer_debounce_reg[16]_i_1_n_6\,
      O(0) => \timer_debounce_reg[16]_i_1_n_7\,
      S(3 downto 0) => timer_debounce_reg(19 downto 16)
    );
\timer_debounce_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[16]_i_1_n_6\,
      Q => timer_debounce_reg(17),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[16]_i_1_n_5\,
      Q => timer_debounce_reg(18),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[16]_i_1_n_4\,
      Q => timer_debounce_reg(19),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[0]_i_1_n_6\,
      Q => timer_debounce_reg(1),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[20]_i_1_n_7\,
      Q => timer_debounce_reg(20),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_debounce_reg[16]_i_1_n_0\,
      CO(3) => \timer_debounce_reg[20]_i_1_n_0\,
      CO(2) => \timer_debounce_reg[20]_i_1_n_1\,
      CO(1) => \timer_debounce_reg[20]_i_1_n_2\,
      CO(0) => \timer_debounce_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_debounce_reg[20]_i_1_n_4\,
      O(2) => \timer_debounce_reg[20]_i_1_n_5\,
      O(1) => \timer_debounce_reg[20]_i_1_n_6\,
      O(0) => \timer_debounce_reg[20]_i_1_n_7\,
      S(3 downto 0) => timer_debounce_reg(23 downto 20)
    );
\timer_debounce_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[20]_i_1_n_6\,
      Q => timer_debounce_reg(21),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[20]_i_1_n_5\,
      Q => timer_debounce_reg(22),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[20]_i_1_n_4\,
      Q => timer_debounce_reg(23),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[24]_i_1_n_7\,
      Q => timer_debounce_reg(24),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_debounce_reg[20]_i_1_n_0\,
      CO(3) => \NLW_timer_debounce_reg[24]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \timer_debounce_reg[24]_i_1_n_1\,
      CO(1) => \timer_debounce_reg[24]_i_1_n_2\,
      CO(0) => \timer_debounce_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_debounce_reg[24]_i_1_n_4\,
      O(2) => \timer_debounce_reg[24]_i_1_n_5\,
      O(1) => \timer_debounce_reg[24]_i_1_n_6\,
      O(0) => \timer_debounce_reg[24]_i_1_n_7\,
      S(3 downto 0) => timer_debounce_reg(27 downto 24)
    );
\timer_debounce_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[24]_i_1_n_6\,
      Q => timer_debounce_reg(25),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[24]_i_1_n_5\,
      Q => timer_debounce_reg(26),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[24]_i_1_n_4\,
      Q => timer_debounce_reg(27),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[0]_i_1_n_5\,
      Q => timer_debounce_reg(2),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[0]_i_1_n_4\,
      Q => timer_debounce_reg(3),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[4]_i_1_n_7\,
      Q => timer_debounce_reg(4),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_debounce_reg[0]_i_1_n_0\,
      CO(3) => \timer_debounce_reg[4]_i_1_n_0\,
      CO(2) => \timer_debounce_reg[4]_i_1_n_1\,
      CO(1) => \timer_debounce_reg[4]_i_1_n_2\,
      CO(0) => \timer_debounce_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_debounce_reg[4]_i_1_n_4\,
      O(2) => \timer_debounce_reg[4]_i_1_n_5\,
      O(1) => \timer_debounce_reg[4]_i_1_n_6\,
      O(0) => \timer_debounce_reg[4]_i_1_n_7\,
      S(3 downto 0) => timer_debounce_reg(7 downto 4)
    );
\timer_debounce_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[4]_i_1_n_6\,
      Q => timer_debounce_reg(5),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[4]_i_1_n_5\,
      Q => timer_debounce_reg(6),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[4]_i_1_n_4\,
      Q => timer_debounce_reg(7),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[8]_i_1_n_7\,
      Q => timer_debounce_reg(8),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
\timer_debounce_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_debounce_reg[4]_i_1_n_0\,
      CO(3) => \timer_debounce_reg[8]_i_1_n_0\,
      CO(2) => \timer_debounce_reg[8]_i_1_n_1\,
      CO(1) => \timer_debounce_reg[8]_i_1_n_2\,
      CO(0) => \timer_debounce_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_debounce_reg[8]_i_1_n_4\,
      O(2) => \timer_debounce_reg[8]_i_1_n_5\,
      O(1) => \timer_debounce_reg[8]_i_1_n_6\,
      O(0) => \timer_debounce_reg[8]_i_1_n_7\,
      S(3 downto 0) => timer_debounce_reg(11 downto 8)
    );
\timer_debounce_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_debounce_reg[8]_i_1_n_6\,
      Q => timer_debounce_reg(9),
      R => \signal_vec_q2[11]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comp_timer is
  port (
    sample_daq : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comp_timer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comp_timer is
  signal \^sample_daq\ : STD_LOGIC;
  signal \timer[0]_i_10_n_0\ : STD_LOGIC;
  signal \timer[0]_i_11_n_0\ : STD_LOGIC;
  signal \timer[0]_i_12_n_0\ : STD_LOGIC;
  signal \timer[0]_i_1_n_0\ : STD_LOGIC;
  signal \timer[0]_i_4_n_0\ : STD_LOGIC;
  signal \timer[0]_i_5_n_0\ : STD_LOGIC;
  signal \timer[0]_i_6_n_0\ : STD_LOGIC;
  signal \timer[0]_i_7_n_0\ : STD_LOGIC;
  signal \timer[0]_i_8_n_0\ : STD_LOGIC;
  signal \timer[0]_i_9_n_0\ : STD_LOGIC;
  signal timer_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \timer_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \timer_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \timer_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_timer_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  sample_daq <= \^sample_daq\;
\timer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset,
      I1 => \^sample_daq\,
      O => \timer[0]_i_1_n_0\
    );
\timer[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => timer_reg(4),
      I1 => timer_reg(3),
      I2 => timer_reg(1),
      I3 => timer_reg(15),
      O => \timer[0]_i_10_n_0\
    );
\timer[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(23),
      I1 => timer_reg(7),
      I2 => timer_reg(25),
      I3 => timer_reg(13),
      O => \timer[0]_i_11_n_0\
    );
\timer[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => timer_reg(0),
      I1 => timer_reg(17),
      I2 => timer_reg(6),
      I3 => timer_reg(2),
      O => \timer[0]_i_12_n_0\
    );
\timer[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \timer[0]_i_5_n_0\,
      I1 => \timer[0]_i_6_n_0\,
      I2 => \timer[0]_i_7_n_0\,
      I3 => \timer[0]_i_8_n_0\,
      O => \^sample_daq\
    );
\timer[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => timer_reg(0),
      O => \timer[0]_i_4_n_0\
    );
\timer[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => timer_reg(8),
      I1 => timer_reg(28),
      I2 => timer_reg(11),
      I3 => timer_reg(24),
      I4 => \timer[0]_i_9_n_0\,
      O => \timer[0]_i_5_n_0\
    );
\timer[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => timer_reg(22),
      I1 => timer_reg(16),
      I2 => timer_reg(10),
      I3 => timer_reg(31),
      I4 => \timer[0]_i_10_n_0\,
      O => \timer[0]_i_6_n_0\
    );
\timer[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => timer_reg(12),
      I1 => timer_reg(5),
      I2 => timer_reg(21),
      I3 => timer_reg(19),
      I4 => \timer[0]_i_11_n_0\,
      O => \timer[0]_i_7_n_0\
    );
\timer[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => timer_reg(20),
      I1 => timer_reg(18),
      I2 => timer_reg(9),
      I3 => timer_reg(29),
      I4 => \timer[0]_i_12_n_0\,
      O => \timer[0]_i_8_n_0\
    );
\timer[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => timer_reg(26),
      I1 => timer_reg(14),
      I2 => timer_reg(30),
      I3 => timer_reg(27),
      O => \timer[0]_i_9_n_0\
    );
\timer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[0]_i_2_n_7\,
      Q => timer_reg(0),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \timer_reg[0]_i_2_n_0\,
      CO(2) => \timer_reg[0]_i_2_n_1\,
      CO(1) => \timer_reg[0]_i_2_n_2\,
      CO(0) => \timer_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \timer_reg[0]_i_2_n_4\,
      O(2) => \timer_reg[0]_i_2_n_5\,
      O(1) => \timer_reg[0]_i_2_n_6\,
      O(0) => \timer_reg[0]_i_2_n_7\,
      S(3 downto 1) => timer_reg(3 downto 1),
      S(0) => \timer[0]_i_4_n_0\
    );
\timer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[8]_i_1_n_5\,
      Q => timer_reg(10),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[8]_i_1_n_4\,
      Q => timer_reg(11),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[12]_i_1_n_7\,
      Q => timer_reg(12),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[8]_i_1_n_0\,
      CO(3) => \timer_reg[12]_i_1_n_0\,
      CO(2) => \timer_reg[12]_i_1_n_1\,
      CO(1) => \timer_reg[12]_i_1_n_2\,
      CO(0) => \timer_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[12]_i_1_n_4\,
      O(2) => \timer_reg[12]_i_1_n_5\,
      O(1) => \timer_reg[12]_i_1_n_6\,
      O(0) => \timer_reg[12]_i_1_n_7\,
      S(3 downto 0) => timer_reg(15 downto 12)
    );
\timer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[12]_i_1_n_6\,
      Q => timer_reg(13),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[12]_i_1_n_5\,
      Q => timer_reg(14),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[12]_i_1_n_4\,
      Q => timer_reg(15),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[16]_i_1_n_7\,
      Q => timer_reg(16),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[12]_i_1_n_0\,
      CO(3) => \timer_reg[16]_i_1_n_0\,
      CO(2) => \timer_reg[16]_i_1_n_1\,
      CO(1) => \timer_reg[16]_i_1_n_2\,
      CO(0) => \timer_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[16]_i_1_n_4\,
      O(2) => \timer_reg[16]_i_1_n_5\,
      O(1) => \timer_reg[16]_i_1_n_6\,
      O(0) => \timer_reg[16]_i_1_n_7\,
      S(3 downto 0) => timer_reg(19 downto 16)
    );
\timer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[16]_i_1_n_6\,
      Q => timer_reg(17),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[16]_i_1_n_5\,
      Q => timer_reg(18),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[16]_i_1_n_4\,
      Q => timer_reg(19),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[0]_i_2_n_6\,
      Q => timer_reg(1),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[20]_i_1_n_7\,
      Q => timer_reg(20),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[16]_i_1_n_0\,
      CO(3) => \timer_reg[20]_i_1_n_0\,
      CO(2) => \timer_reg[20]_i_1_n_1\,
      CO(1) => \timer_reg[20]_i_1_n_2\,
      CO(0) => \timer_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[20]_i_1_n_4\,
      O(2) => \timer_reg[20]_i_1_n_5\,
      O(1) => \timer_reg[20]_i_1_n_6\,
      O(0) => \timer_reg[20]_i_1_n_7\,
      S(3 downto 0) => timer_reg(23 downto 20)
    );
\timer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[20]_i_1_n_6\,
      Q => timer_reg(21),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[20]_i_1_n_5\,
      Q => timer_reg(22),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[20]_i_1_n_4\,
      Q => timer_reg(23),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[24]_i_1_n_7\,
      Q => timer_reg(24),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[20]_i_1_n_0\,
      CO(3) => \timer_reg[24]_i_1_n_0\,
      CO(2) => \timer_reg[24]_i_1_n_1\,
      CO(1) => \timer_reg[24]_i_1_n_2\,
      CO(0) => \timer_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[24]_i_1_n_4\,
      O(2) => \timer_reg[24]_i_1_n_5\,
      O(1) => \timer_reg[24]_i_1_n_6\,
      O(0) => \timer_reg[24]_i_1_n_7\,
      S(3 downto 0) => timer_reg(27 downto 24)
    );
\timer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[24]_i_1_n_6\,
      Q => timer_reg(25),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[24]_i_1_n_5\,
      Q => timer_reg(26),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[24]_i_1_n_4\,
      Q => timer_reg(27),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[28]_i_1_n_7\,
      Q => timer_reg(28),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[24]_i_1_n_0\,
      CO(3) => \NLW_timer_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \timer_reg[28]_i_1_n_1\,
      CO(1) => \timer_reg[28]_i_1_n_2\,
      CO(0) => \timer_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[28]_i_1_n_4\,
      O(2) => \timer_reg[28]_i_1_n_5\,
      O(1) => \timer_reg[28]_i_1_n_6\,
      O(0) => \timer_reg[28]_i_1_n_7\,
      S(3 downto 0) => timer_reg(31 downto 28)
    );
\timer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[28]_i_1_n_6\,
      Q => timer_reg(29),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[0]_i_2_n_5\,
      Q => timer_reg(2),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[28]_i_1_n_5\,
      Q => timer_reg(30),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[28]_i_1_n_4\,
      Q => timer_reg(31),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[0]_i_2_n_4\,
      Q => timer_reg(3),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[4]_i_1_n_7\,
      Q => timer_reg(4),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[0]_i_2_n_0\,
      CO(3) => \timer_reg[4]_i_1_n_0\,
      CO(2) => \timer_reg[4]_i_1_n_1\,
      CO(1) => \timer_reg[4]_i_1_n_2\,
      CO(0) => \timer_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[4]_i_1_n_4\,
      O(2) => \timer_reg[4]_i_1_n_5\,
      O(1) => \timer_reg[4]_i_1_n_6\,
      O(0) => \timer_reg[4]_i_1_n_7\,
      S(3 downto 0) => timer_reg(7 downto 4)
    );
\timer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[4]_i_1_n_6\,
      Q => timer_reg(5),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[4]_i_1_n_5\,
      Q => timer_reg(6),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[4]_i_1_n_4\,
      Q => timer_reg(7),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[8]_i_1_n_7\,
      Q => timer_reg(8),
      R => \timer[0]_i_1_n_0\
    );
\timer_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \timer_reg[4]_i_1_n_0\,
      CO(3) => \timer_reg[8]_i_1_n_0\,
      CO(2) => \timer_reg[8]_i_1_n_1\,
      CO(1) => \timer_reg[8]_i_1_n_2\,
      CO(0) => \timer_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \timer_reg[8]_i_1_n_4\,
      O(2) => \timer_reg[8]_i_1_n_5\,
      O(1) => \timer_reg[8]_i_1_n_6\,
      O(0) => \timer_reg[8]_i_1_n_7\,
      S(3 downto 0) => timer_reg(11 downto 8)
    );
\timer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \timer_reg[8]_i_1_n_6\,
      Q => timer_reg(9),
      R => \timer[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_ctrl is
  port (
    dac_sclk : out STD_LOGIC;
    dac_sync : out STD_LOGIC;
    dac_sdin0 : out STD_LOGIC;
    dac_sdin1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    dac0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dac1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sample_daq : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_ctrl is
  signal \FSM_sequential_current_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^dac_sclk\ : STD_LOGIC;
  signal \^dac_sync\ : STD_LOGIC;
  signal fsm_en_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \fsm_en_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \fsm_en_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \fsm_en_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal sample_dac_reg : STD_LOGIC;
  signal sample_dac_reg_i_1_n_0 : STD_LOGIC;
  signal sclk_tmp_i_1_n_0 : STD_LOGIC;
  signal sclk_tmp_i_2_n_0 : STD_LOGIC;
  signal sync_tmp : STD_LOGIC;
  signal sync_tmp_i_1_n_0 : STD_LOGIC;
  signal sync_tmp_i_2_n_0 : STD_LOGIC;
  signal txreg0 : STD_LOGIC_VECTOR ( 14 downto 2 );
  signal txreg00_in : STD_LOGIC_VECTOR ( 13 downto 2 );
  signal \txreg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \txreg0[15]_i_2_n_0\ : STD_LOGIC;
  signal txreg1 : STD_LOGIC_VECTOR ( 13 downto 2 );
  signal \txreg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \txreg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \txreg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \txreg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \txreg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \txreg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \txreg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \txreg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \txreg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \txreg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \txreg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \txreg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \txreg1_reg_n_0_[9]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "s1:10,s_wait:00,s0:01,s_end:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "s1:10,s_wait:00,s0:01,s_end:11";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bit_cnt[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \fsm_en_cnt[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \fsm_en_cnt[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of sample_dac_reg_i_1 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of sclk_tmp_i_2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of sync_tmp_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \txreg0[10]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \txreg0[11]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \txreg0[12]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \txreg0[13]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \txreg0[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \txreg0[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \txreg0[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \txreg0[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \txreg0[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \txreg0[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \txreg0[8]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \txreg0[9]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \txreg1[10]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \txreg1[11]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \txreg1[12]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \txreg1[13]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \txreg1[3]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \txreg1[4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \txreg1[5]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \txreg1[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \txreg1[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \txreg1[8]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \txreg1[9]_i_1\ : label is "soft_lutpair34";
begin
  dac_sclk <= \^dac_sclk\;
  dac_sync <= \^dac_sync\;
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0FF00000E00"
    )
        port map (
      I0 => sample_dac_reg,
      I1 => current_state(1),
      I2 => fsm_en_cnt(0),
      I3 => fsm_en_cnt(1),
      I4 => fsm_en_cnt(2),
      I5 => current_state(0),
      O => \FSM_sequential_current_state[0]_i_1_n_0\
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF4FF00000E00"
    )
        port map (
      I0 => current_state(0),
      I1 => sync_tmp,
      I2 => fsm_en_cnt(0),
      I3 => fsm_en_cnt(1),
      I4 => fsm_en_cnt(2),
      I5 => current_state(1),
      O => \FSM_sequential_current_state[1]_i_1_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_state[0]_i_1_n_0\,
      Q => current_state(0),
      R => reset
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_current_state[1]_i_1_n_0\,
      Q => current_state(1),
      R => reset
    );
\bit_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      O => \bit_cnt[0]_i_1__0_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => current_state(1),
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      O => \bit_cnt[2]_i_1__0_n_0\
    );
\bit_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \bit_cnt[3]_i_1__0_n_0\
    );
\bit_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[4]\,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      O => \bit_cnt[4]_i_1_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => \bit_cnt[0]_i_1__0_n_0\,
      Q => \bit_cnt_reg_n_0_[0]\,
      R => \txreg0[15]_i_1_n_0\
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => \bit_cnt[1]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[1]\,
      R => '0'
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => \bit_cnt[2]_i_1__0_n_0\,
      Q => \bit_cnt_reg_n_0_[2]\,
      R => \txreg0[15]_i_1_n_0\
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => \bit_cnt[3]_i_1__0_n_0\,
      Q => \bit_cnt_reg_n_0_[3]\,
      R => \txreg0[15]_i_1_n_0\
    );
\bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => \bit_cnt[4]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[4]\,
      R => \txreg0[15]_i_1_n_0\
    );
\fsm_en_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0051"
    )
        port map (
      I0 => fsm_en_cnt(0),
      I1 => fsm_en_cnt(1),
      I2 => fsm_en_cnt(2),
      I3 => reset,
      O => \fsm_en_cnt[0]_i_1_n_0\
    );
\fsm_en_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0062"
    )
        port map (
      I0 => fsm_en_cnt(0),
      I1 => fsm_en_cnt(1),
      I2 => fsm_en_cnt(2),
      I3 => reset,
      O => \fsm_en_cnt[1]_i_1_n_0\
    );
\fsm_en_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => fsm_en_cnt(0),
      I1 => fsm_en_cnt(1),
      I2 => fsm_en_cnt(2),
      I3 => reset,
      O => \fsm_en_cnt[2]_i_1_n_0\
    );
\fsm_en_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \fsm_en_cnt[0]_i_1_n_0\,
      Q => fsm_en_cnt(0),
      R => '0'
    );
\fsm_en_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \fsm_en_cnt[1]_i_1_n_0\,
      Q => fsm_en_cnt(1),
      R => '0'
    );
\fsm_en_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \fsm_en_cnt[2]_i_1_n_0\,
      Q => fsm_en_cnt(2),
      R => '0'
    );
sample_dac_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFAAAA"
    )
        port map (
      I0 => sample_daq,
      I1 => fsm_en_cnt(2),
      I2 => fsm_en_cnt(1),
      I3 => fsm_en_cnt(0),
      I4 => sample_dac_reg,
      O => sample_dac_reg_i_1_n_0
    );
sample_dac_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sample_dac_reg_i_1_n_0,
      Q => sample_dac_reg,
      R => reset
    );
sclk_tmp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDDFF00005400"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => sample_dac_reg,
      I3 => sclk_tmp_i_2_n_0,
      I4 => sync_tmp,
      I5 => \^dac_sclk\,
      O => sclk_tmp_i_1_n_0
    );
sclk_tmp_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => fsm_en_cnt(0),
      I1 => fsm_en_cnt(1),
      I2 => fsm_en_cnt(2),
      O => sclk_tmp_i_2_n_0
    );
sclk_tmp_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => current_state(1),
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[3]\,
      I5 => \bit_cnt_reg_n_0_[4]\,
      O => sync_tmp
    );
sclk_tmp_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => sclk_tmp_i_1_n_0,
      Q => \^dac_sclk\,
      S => reset
    );
sync_tmp_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFFFFF11000000"
    )
        port map (
      I0 => sync_tmp_i_2_n_0,
      I1 => current_state(0),
      I2 => sample_dac_reg,
      I3 => current_state(1),
      I4 => sclk_tmp_i_2_n_0,
      I5 => \^dac_sync\,
      O => sync_tmp_i_1_n_0
    );
sync_tmp_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[4]\,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      O => sync_tmp_i_2_n_0
    );
sync_tmp_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => sync_tmp_i_1_n_0,
      Q => \^dac_sync\,
      S => reset
    );
\txreg0[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => txreg0(9),
      I1 => current_state(1),
      I2 => dac0(8),
      O => txreg00_in(10)
    );
\txreg0[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => txreg0(10),
      I1 => current_state(1),
      I2 => dac0(9),
      O => txreg00_in(11)
    );
\txreg0[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => txreg0(11),
      I1 => current_state(1),
      I2 => dac0(10),
      O => txreg00_in(12)
    );
\txreg0[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => txreg0(12),
      I1 => dac0(11),
      I2 => current_state(1),
      O => txreg00_in(13)
    );
\txreg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => sclk_tmp_i_2_n_0,
      I1 => current_state(1),
      I2 => sample_dac_reg,
      I3 => current_state(0),
      I4 => reset,
      I5 => sync_tmp,
      O => \txreg0[15]_i_1_n_0\
    );
\txreg0[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000A8"
    )
        port map (
      I0 => sclk_tmp_i_2_n_0,
      I1 => current_state(1),
      I2 => sample_dac_reg,
      I3 => current_state(0),
      I4 => reset,
      I5 => sync_tmp,
      O => \txreg0[15]_i_2_n_0\
    );
\txreg0[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dac0(0),
      I1 => current_state(1),
      O => txreg00_in(2)
    );
\txreg0[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => txreg0(2),
      I1 => current_state(1),
      I2 => dac0(1),
      O => txreg00_in(3)
    );
\txreg0[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => txreg0(3),
      I1 => current_state(1),
      I2 => dac0(2),
      O => txreg00_in(4)
    );
\txreg0[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => txreg0(4),
      I1 => current_state(1),
      I2 => dac0(3),
      O => txreg00_in(5)
    );
\txreg0[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => txreg0(5),
      I1 => current_state(1),
      I2 => dac0(4),
      O => txreg00_in(6)
    );
\txreg0[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => txreg0(6),
      I1 => current_state(1),
      I2 => dac0(5),
      O => txreg00_in(7)
    );
\txreg0[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => txreg0(7),
      I1 => current_state(1),
      I2 => dac0(6),
      O => txreg00_in(8)
    );
\txreg0[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => txreg0(8),
      I1 => current_state(1),
      I2 => dac0(7),
      O => txreg00_in(9)
    );
\txreg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg00_in(10),
      Q => txreg0(10),
      R => '0'
    );
\txreg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg00_in(11),
      Q => txreg0(11),
      R => '0'
    );
\txreg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg00_in(12),
      Q => txreg0(12),
      R => '0'
    );
\txreg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg00_in(13),
      Q => txreg0(13),
      R => '0'
    );
\txreg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg0(13),
      Q => txreg0(14),
      R => \txreg0[15]_i_1_n_0\
    );
\txreg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg0(14),
      Q => dac_sdin0,
      R => \txreg0[15]_i_1_n_0\
    );
\txreg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg00_in(2),
      Q => txreg0(2),
      R => '0'
    );
\txreg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg00_in(3),
      Q => txreg0(3),
      R => '0'
    );
\txreg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg00_in(4),
      Q => txreg0(4),
      R => '0'
    );
\txreg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg00_in(5),
      Q => txreg0(5),
      R => '0'
    );
\txreg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg00_in(6),
      Q => txreg0(6),
      R => '0'
    );
\txreg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg00_in(7),
      Q => txreg0(7),
      R => '0'
    );
\txreg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg00_in(8),
      Q => txreg0(8),
      R => '0'
    );
\txreg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg00_in(9),
      Q => txreg0(9),
      R => '0'
    );
\txreg1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \txreg1_reg_n_0_[9]\,
      I1 => current_state(1),
      I2 => dac1(8),
      O => txreg1(10)
    );
\txreg1[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \txreg1_reg_n_0_[10]\,
      I1 => current_state(1),
      I2 => dac1(9),
      O => txreg1(11)
    );
\txreg1[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \txreg1_reg_n_0_[11]\,
      I1 => current_state(1),
      I2 => dac1(10),
      O => txreg1(12)
    );
\txreg1[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \txreg1_reg_n_0_[12]\,
      I1 => dac1(11),
      I2 => current_state(1),
      O => txreg1(13)
    );
\txreg1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dac1(0),
      I1 => current_state(1),
      O => txreg1(2)
    );
\txreg1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \txreg1_reg_n_0_[2]\,
      I1 => current_state(1),
      I2 => dac1(1),
      O => txreg1(3)
    );
\txreg1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \txreg1_reg_n_0_[3]\,
      I1 => current_state(1),
      I2 => dac1(2),
      O => txreg1(4)
    );
\txreg1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \txreg1_reg_n_0_[4]\,
      I1 => current_state(1),
      I2 => dac1(3),
      O => txreg1(5)
    );
\txreg1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \txreg1_reg_n_0_[5]\,
      I1 => current_state(1),
      I2 => dac1(4),
      O => txreg1(6)
    );
\txreg1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \txreg1_reg_n_0_[6]\,
      I1 => current_state(1),
      I2 => dac1(5),
      O => txreg1(7)
    );
\txreg1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \txreg1_reg_n_0_[7]\,
      I1 => current_state(1),
      I2 => dac1(6),
      O => txreg1(8)
    );
\txreg1[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \txreg1_reg_n_0_[8]\,
      I1 => current_state(1),
      I2 => dac1(7),
      O => txreg1(9)
    );
\txreg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg1(10),
      Q => \txreg1_reg_n_0_[10]\,
      R => '0'
    );
\txreg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg1(11),
      Q => \txreg1_reg_n_0_[11]\,
      R => '0'
    );
\txreg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg1(12),
      Q => \txreg1_reg_n_0_[12]\,
      R => '0'
    );
\txreg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg1(13),
      Q => \txreg1_reg_n_0_[13]\,
      R => '0'
    );
\txreg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => \txreg1_reg_n_0_[13]\,
      Q => \txreg1_reg_n_0_[14]\,
      R => \txreg0[15]_i_1_n_0\
    );
\txreg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => \txreg1_reg_n_0_[14]\,
      Q => dac_sdin1,
      R => \txreg0[15]_i_1_n_0\
    );
\txreg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg1(2),
      Q => \txreg1_reg_n_0_[2]\,
      R => '0'
    );
\txreg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg1(3),
      Q => \txreg1_reg_n_0_[3]\,
      R => '0'
    );
\txreg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg1(4),
      Q => \txreg1_reg_n_0_[4]\,
      R => '0'
    );
\txreg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg1(5),
      Q => \txreg1_reg_n_0_[5]\,
      R => '0'
    );
\txreg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg1(6),
      Q => \txreg1_reg_n_0_[6]\,
      R => '0'
    );
\txreg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg1(7),
      Q => \txreg1_reg_n_0_[7]\,
      R => '0'
    );
\txreg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg1(8),
      Q => \txreg1_reg_n_0_[8]\,
      R => '0'
    );
\txreg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \txreg0[15]_i_2_n_0\,
      D => txreg1(9),
      Q => \txreg1_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_registers is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \reg_reg[483]_0\ : out STD_LOGIC_VECTOR ( 75 downto 0 );
    sbus_ack : out STD_LOGIC;
    sbus_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    sbus_we : in STD_LOGIC;
    reset : in STD_LOGIC;
    sbus_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_din_reg[479]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_din_reg[447]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sbus_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sbus_rd : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_registers;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_registers is
  signal Addr : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal C0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal C1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal C2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal C3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal M : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Reset_HDL : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Write : STD_LOGIC;
  signal bus_we_q_reg_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data11 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data12 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data13 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data14 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data8 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data9 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal pmod_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg : STD_LOGIC_VECTOR ( 511 downto 33 );
  signal \reg[127]_i_1_n_0\ : STD_LOGIC;
  signal \reg[127]_i_2_n_0\ : STD_LOGIC;
  signal \reg[159]_i_1_n_0\ : STD_LOGIC;
  signal \reg[159]_i_2_n_0\ : STD_LOGIC;
  signal \reg[191]_i_1_n_0\ : STD_LOGIC;
  signal \reg[191]_i_2_n_0\ : STD_LOGIC;
  signal \reg[223]_i_1_n_0\ : STD_LOGIC;
  signal \reg[223]_i_2_n_0\ : STD_LOGIC;
  signal \reg[255]_i_1_n_0\ : STD_LOGIC;
  signal \reg[255]_i_2_n_0\ : STD_LOGIC;
  signal \reg[287]_i_1_n_0\ : STD_LOGIC;
  signal \reg[287]_i_2_n_0\ : STD_LOGIC;
  signal \reg[319]_i_1_n_0\ : STD_LOGIC;
  signal \reg[319]_i_2_n_0\ : STD_LOGIC;
  signal \reg[319]_i_3_n_0\ : STD_LOGIC;
  signal \reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg[351]_i_1_n_0\ : STD_LOGIC;
  signal \reg[351]_i_2_n_0\ : STD_LOGIC;
  signal \reg[351]_i_3_n_0\ : STD_LOGIC;
  signal \reg[383]_i_1_n_0\ : STD_LOGIC;
  signal \reg[383]_i_2_n_0\ : STD_LOGIC;
  signal \reg[415]_i_1_n_0\ : STD_LOGIC;
  signal \reg[415]_i_2_n_0\ : STD_LOGIC;
  signal \reg[415]_i_3_n_0\ : STD_LOGIC;
  signal \reg[483]_i_1_n_0\ : STD_LOGIC;
  signal \reg[483]_i_2_n_0\ : STD_LOGIC;
  signal \reg[483]_i_3_n_0\ : STD_LOGIC;
  signal \reg[483]_i_4_n_0\ : STD_LOGIC;
  signal \reg[483]_i_5_n_0\ : STD_LOGIC;
  signal \reg[483]_i_6_n_0\ : STD_LOGIC;
  signal \reg[63]_i_1_n_0\ : STD_LOGIC;
  signal \reg[63]_i_2_n_0\ : STD_LOGIC;
  signal \reg[95]_i_1_n_0\ : STD_LOGIC;
  signal \reg[95]_i_2_n_0\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[15]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[16]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[17]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[18]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[19]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[20]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[21]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[22]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[23]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[24]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[25]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[26]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[27]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[28]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[29]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[30]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[31]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg_din_reg_n_0_[9]\ : STD_LOGIC;
  signal \^reg_reg[483]_0\ : STD_LOGIC_VECTOR ( 75 downto 0 );
  signal sbus_ack0 : STD_LOGIC;
  signal sbus_ack_i_2_n_0 : STD_LOGIC;
  signal \sbus_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[10]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[10]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[10]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[11]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[11]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[11]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[12]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[12]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[12]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[13]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[13]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[13]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[14]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[14]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[14]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[15]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[15]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[16]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[16]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[16]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[17]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[17]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[17]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[18]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[18]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[19]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[19]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[19]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[20]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[20]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[20]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[21]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[21]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[21]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[22]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[22]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[22]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[23]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[23]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[23]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[23]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[24]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[24]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[24]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[24]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[25]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[25]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[25]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[25]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[26]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[26]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[26]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[26]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[27]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[27]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[27]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[27]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[28]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[28]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[28]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[28]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[29]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[29]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[29]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[29]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[2]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[30]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[30]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[30]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[30]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[31]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[31]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[31]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[31]_i_8_n_0\ : STD_LOGIC;
  signal \sbus_rdata[31]_i_9_n_0\ : STD_LOGIC;
  signal \sbus_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[5]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[8]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \sbus_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \sbus_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \sbus_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \sbus_rdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \sbus_rdata[9]_i_5_n_0\ : STD_LOGIC;
  signal \sbus_rdata[9]_i_6_n_0\ : STD_LOGIC;
  signal \sbus_rdata[9]_i_7_n_0\ : STD_LOGIC;
  signal tper_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pmod_jc[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pmod_jc[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pmod_jc[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pmod_jc[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pmod_jc[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pmod_jc[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pmod_jc[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pmod_jc[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg[319]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg[351]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg[415]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg[483]_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sbus_rdata[0]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sbus_rdata[10]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sbus_rdata[11]_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sbus_rdata[12]_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sbus_rdata[13]_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \sbus_rdata[14]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sbus_rdata[15]_i_6\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sbus_rdata[16]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sbus_rdata[17]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sbus_rdata[18]_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sbus_rdata[19]_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sbus_rdata[1]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sbus_rdata[20]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sbus_rdata[21]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sbus_rdata[22]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sbus_rdata[23]_i_6\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \sbus_rdata[24]_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sbus_rdata[25]_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sbus_rdata[26]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sbus_rdata[27]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \sbus_rdata[28]_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sbus_rdata[29]_i_6\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sbus_rdata[2]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sbus_rdata[30]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sbus_rdata[31]_i_6\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sbus_rdata[3]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sbus_rdata[4]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sbus_rdata[5]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sbus_rdata[6]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sbus_rdata[7]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sbus_rdata[8]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sbus_rdata[9]_i_6\ : label is "soft_lutpair8";
begin
  \reg_reg[483]_0\(75 downto 0) <= \^reg_reg[483]_0\(75 downto 0);
bus_we_q_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sbus_we,
      Q => bus_we_q_reg_n_0,
      R => '0'
    );
\pmod_jc[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pmod_o(0),
      I1 => Q(0),
      I2 => \^reg_reg[483]_0\(0),
      O => D(0)
    );
\pmod_jc[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pmod_o(1),
      I1 => Q(0),
      I2 => \^reg_reg[483]_0\(1),
      O => D(1)
    );
\pmod_jc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pmod_o(2),
      I1 => Q(0),
      I2 => \^reg_reg[483]_0\(2),
      O => D(2)
    );
\pmod_jc[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pmod_o(3),
      I1 => Q(0),
      I2 => \^reg_reg[483]_0\(3),
      O => D(3)
    );
\pmod_jc[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pmod_o(4),
      I1 => Q(0),
      I2 => \^reg_reg[483]_0\(4),
      O => D(4)
    );
\pmod_jc[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pmod_o(5),
      I1 => Q(0),
      I2 => \^reg_reg[483]_0\(5),
      O => D(5)
    );
\pmod_jc[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pmod_o(6),
      I1 => Q(0),
      I2 => \^reg_reg[483]_0\(6),
      O => D(6)
    );
\pmod_jc[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pmod_o(7),
      I1 => Q(0),
      I2 => Write,
      O => D(7)
    );
\reg[127]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[127]_i_2_n_0\,
      O => \reg[127]_i_1_n_0\
    );
\reg[127]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => sbus_addr(3),
      I1 => \reg[483]_i_3_n_0\,
      I2 => \reg[483]_i_4_n_0\,
      I3 => \reg[483]_i_5_n_0\,
      I4 => sbus_addr(2),
      I5 => \reg[483]_i_6_n_0\,
      O => \reg[127]_i_2_n_0\
    );
\reg[159]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[159]_i_2_n_0\,
      O => \reg[159]_i_1_n_0\
    );
\reg[159]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => sbus_addr(3),
      I1 => \reg[483]_i_3_n_0\,
      I2 => \reg[483]_i_4_n_0\,
      I3 => \reg[483]_i_5_n_0\,
      I4 => sbus_addr(2),
      I5 => \reg[415]_i_3_n_0\,
      O => \reg[159]_i_2_n_0\
    );
\reg[191]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[191]_i_2_n_0\,
      O => \reg[191]_i_1_n_0\
    );
\reg[191]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \reg[319]_i_3_n_0\,
      I1 => sbus_addr(3),
      I2 => \reg[483]_i_3_n_0\,
      I3 => \reg[483]_i_4_n_0\,
      I4 => \reg[483]_i_5_n_0\,
      I5 => sbus_addr(2),
      O => \reg[191]_i_2_n_0\
    );
\reg[223]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[223]_i_2_n_0\,
      O => \reg[223]_i_1_n_0\
    );
\reg[223]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \reg[351]_i_3_n_0\,
      I1 => sbus_addr(3),
      I2 => \reg[483]_i_3_n_0\,
      I3 => \reg[483]_i_4_n_0\,
      I4 => \reg[483]_i_5_n_0\,
      I5 => sbus_addr(2),
      O => \reg[223]_i_2_n_0\
    );
\reg[255]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[255]_i_2_n_0\,
      O => \reg[255]_i_1_n_0\
    );
\reg[255]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => sbus_addr(3),
      I1 => \reg[483]_i_3_n_0\,
      I2 => \reg[483]_i_4_n_0\,
      I3 => \reg[483]_i_5_n_0\,
      I4 => sbus_addr(2),
      I5 => \reg[483]_i_6_n_0\,
      O => \reg[255]_i_2_n_0\
    );
\reg[287]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[287]_i_2_n_0\,
      O => \reg[287]_i_1_n_0\
    );
\reg[287]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => sbus_addr(3),
      I1 => \reg[483]_i_3_n_0\,
      I2 => \reg[483]_i_4_n_0\,
      I3 => \reg[483]_i_5_n_0\,
      I4 => sbus_addr(2),
      I5 => \reg[415]_i_3_n_0\,
      O => \reg[287]_i_2_n_0\
    );
\reg[319]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[319]_i_2_n_0\,
      O => \reg[319]_i_1_n_0\
    );
\reg[319]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \reg[319]_i_3_n_0\,
      I1 => sbus_addr(3),
      I2 => \reg[483]_i_3_n_0\,
      I3 => \reg[483]_i_4_n_0\,
      I4 => \reg[483]_i_5_n_0\,
      I5 => sbus_addr(2),
      O => \reg[319]_i_2_n_0\
    );
\reg[319]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sbus_addr(0),
      I1 => sbus_addr(1),
      O => \reg[319]_i_3_n_0\
    );
\reg[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[31]_i_2_n_0\,
      O => \reg[31]_i_1_n_0\
    );
\reg[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => sbus_addr(3),
      I1 => \reg[483]_i_3_n_0\,
      I2 => \reg[483]_i_4_n_0\,
      I3 => \reg[483]_i_5_n_0\,
      I4 => sbus_addr(2),
      I5 => \reg[415]_i_3_n_0\,
      O => \reg[31]_i_2_n_0\
    );
\reg[351]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[351]_i_2_n_0\,
      O => \reg[351]_i_1_n_0\
    );
\reg[351]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \reg[351]_i_3_n_0\,
      I1 => sbus_addr(3),
      I2 => \reg[483]_i_3_n_0\,
      I3 => \reg[483]_i_4_n_0\,
      I4 => \reg[483]_i_5_n_0\,
      I5 => sbus_addr(2),
      O => \reg[351]_i_2_n_0\
    );
\reg[351]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sbus_addr(1),
      I1 => sbus_addr(0),
      O => \reg[351]_i_3_n_0\
    );
\reg[383]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[383]_i_2_n_0\,
      O => \reg[383]_i_1_n_0\
    );
\reg[383]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => sbus_addr(3),
      I1 => \reg[483]_i_3_n_0\,
      I2 => \reg[483]_i_4_n_0\,
      I3 => \reg[483]_i_5_n_0\,
      I4 => sbus_addr(2),
      I5 => \reg[483]_i_6_n_0\,
      O => \reg[383]_i_2_n_0\
    );
\reg[415]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[415]_i_2_n_0\,
      O => \reg[415]_i_1_n_0\
    );
\reg[415]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sbus_addr(3),
      I1 => \reg[483]_i_3_n_0\,
      I2 => \reg[483]_i_4_n_0\,
      I3 => \reg[483]_i_5_n_0\,
      I4 => sbus_addr(2),
      I5 => \reg[415]_i_3_n_0\,
      O => \reg[415]_i_2_n_0\
    );
\reg[415]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sbus_addr(0),
      I1 => sbus_addr(1),
      O => \reg[415]_i_3_n_0\
    );
\reg[483]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[483]_i_2_n_0\,
      O => \reg[483]_i_1_n_0\
    );
\reg[483]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sbus_addr(3),
      I1 => \reg[483]_i_3_n_0\,
      I2 => \reg[483]_i_4_n_0\,
      I3 => \reg[483]_i_5_n_0\,
      I4 => sbus_addr(2),
      I5 => \reg[483]_i_6_n_0\,
      O => \reg[483]_i_2_n_0\
    );
\reg[483]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => sbus_addr(15),
      I1 => sbus_addr(14),
      I2 => sbus_addr(13),
      I3 => sbus_addr(12),
      O => \reg[483]_i_3_n_0\
    );
\reg[483]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sbus_addr(7),
      I1 => sbus_addr(6),
      I2 => sbus_addr(5),
      I3 => sbus_addr(4),
      O => \reg[483]_i_4_n_0\
    );
\reg[483]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => sbus_addr(11),
      I1 => sbus_addr(10),
      I2 => sbus_addr(9),
      I3 => sbus_addr(8),
      O => \reg[483]_i_5_n_0\
    );
\reg[483]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sbus_addr(0),
      I1 => sbus_addr(1),
      O => \reg[483]_i_6_n_0\
    );
\reg[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[63]_i_2_n_0\,
      O => \reg[63]_i_1_n_0\
    );
\reg[63]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \reg[319]_i_3_n_0\,
      I1 => sbus_addr(3),
      I2 => \reg[483]_i_3_n_0\,
      I3 => \reg[483]_i_4_n_0\,
      I4 => \reg[483]_i_5_n_0\,
      I5 => sbus_addr(2),
      O => \reg[63]_i_2_n_0\
    );
\reg[95]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => bus_we_q_reg_n_0,
      I1 => sbus_we,
      I2 => \reg[95]_i_2_n_0\,
      O => \reg[95]_i_1_n_0\
    );
\reg[95]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \reg[351]_i_3_n_0\,
      I1 => sbus_addr(3),
      I2 => \reg[483]_i_3_n_0\,
      I3 => \reg[483]_i_4_n_0\,
      I4 => \reg[483]_i_5_n_0\,
      I5 => sbus_addr(2),
      O => \reg[95]_i_2_n_0\
    );
\reg_din_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(0),
      Q => \reg_din_reg_n_0_[0]\,
      R => '0'
    );
\reg_din_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(4),
      Q => data12(4),
      R => '0'
    );
\reg_din_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(5),
      Q => data12(5),
      R => '0'
    );
\reg_din_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(6),
      Q => data12(6),
      R => '0'
    );
\reg_din_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(7),
      Q => data12(7),
      R => '0'
    );
\reg_din_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(8),
      Q => data12(8),
      R => '0'
    );
\reg_din_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(9),
      Q => data12(9),
      R => '0'
    );
\reg_din_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(10),
      Q => data12(10),
      R => '0'
    );
\reg_din_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(11),
      Q => data12(11),
      R => '0'
    );
\reg_din_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(12),
      Q => data12(12),
      R => '0'
    );
\reg_din_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(13),
      Q => data12(13),
      R => '0'
    );
\reg_din_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(10),
      Q => \reg_din_reg_n_0_[10]\,
      R => '0'
    );
\reg_din_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(14),
      Q => data12(14),
      R => '0'
    );
\reg_din_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(15),
      Q => data12(15),
      R => '0'
    );
\reg_din_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(16),
      Q => data12(16),
      R => '0'
    );
\reg_din_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(17),
      Q => data12(17),
      R => '0'
    );
\reg_din_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(18),
      Q => data12(18),
      R => '0'
    );
\reg_din_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(19),
      Q => data12(19),
      R => '0'
    );
\reg_din_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(20),
      Q => data12(20),
      R => '0'
    );
\reg_din_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(21),
      Q => data12(21),
      R => '0'
    );
\reg_din_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(22),
      Q => data12(22),
      R => '0'
    );
\reg_din_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(23),
      Q => data12(23),
      R => '0'
    );
\reg_din_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(11),
      Q => \reg_din_reg_n_0_[11]\,
      R => '0'
    );
\reg_din_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(24),
      Q => data12(24),
      R => '0'
    );
\reg_din_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(25),
      Q => data12(25),
      R => '0'
    );
\reg_din_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(26),
      Q => data12(26),
      R => '0'
    );
\reg_din_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(27),
      Q => data12(27),
      R => '0'
    );
\reg_din_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(28),
      Q => data12(28),
      R => '0'
    );
\reg_din_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(29),
      Q => data12(29),
      R => '0'
    );
\reg_din_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(30),
      Q => data12(30),
      R => '0'
    );
\reg_din_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(31),
      Q => data12(31),
      R => '0'
    );
\reg_din_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(0),
      Q => data11(0),
      R => '0'
    );
\reg_din_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(1),
      Q => data11(1),
      R => '0'
    );
\reg_din_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(12),
      Q => \reg_din_reg_n_0_[12]\,
      R => '0'
    );
\reg_din_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(2),
      Q => data11(2),
      R => '0'
    );
\reg_din_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(3),
      Q => data11(3),
      R => '0'
    );
\reg_din_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(4),
      Q => data11(4),
      R => '0'
    );
\reg_din_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(5),
      Q => data11(5),
      R => '0'
    );
\reg_din_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(6),
      Q => data11(6),
      R => '0'
    );
\reg_din_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(7),
      Q => data11(7),
      R => '0'
    );
\reg_din_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(8),
      Q => data11(8),
      R => '0'
    );
\reg_din_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(9),
      Q => data11(9),
      R => '0'
    );
\reg_din_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(10),
      Q => data11(10),
      R => '0'
    );
\reg_din_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(11),
      Q => data11(11),
      R => '0'
    );
\reg_din_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(13),
      Q => \reg_din_reg_n_0_[13]\,
      R => '0'
    );
\reg_din_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(12),
      Q => data11(12),
      R => '0'
    );
\reg_din_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(13),
      Q => data11(13),
      R => '0'
    );
\reg_din_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(14),
      Q => data11(14),
      R => '0'
    );
\reg_din_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(15),
      Q => data11(15),
      R => '0'
    );
\reg_din_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(16),
      Q => data11(16),
      R => '0'
    );
\reg_din_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(17),
      Q => data11(17),
      R => '0'
    );
\reg_din_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(18),
      Q => data11(18),
      R => '0'
    );
\reg_din_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(19),
      Q => data11(19),
      R => '0'
    );
\reg_din_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(20),
      Q => data11(20),
      R => '0'
    );
\reg_din_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(21),
      Q => data11(21),
      R => '0'
    );
\reg_din_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(14),
      Q => \reg_din_reg_n_0_[14]\,
      R => '0'
    );
\reg_din_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(22),
      Q => data11(22),
      R => '0'
    );
\reg_din_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(23),
      Q => data11(23),
      R => '0'
    );
\reg_din_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(24),
      Q => data11(24),
      R => '0'
    );
\reg_din_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(25),
      Q => data11(25),
      R => '0'
    );
\reg_din_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(26),
      Q => data11(26),
      R => '0'
    );
\reg_din_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(27),
      Q => data11(27),
      R => '0'
    );
\reg_din_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(28),
      Q => data11(28),
      R => '0'
    );
\reg_din_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(29),
      Q => data11(29),
      R => '0'
    );
\reg_din_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(30),
      Q => data11(30),
      R => '0'
    );
\reg_din_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C2(31),
      Q => data11(31),
      R => '0'
    );
\reg_din_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(15),
      Q => \reg_din_reg_n_0_[15]\,
      R => '0'
    );
\reg_din_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(0),
      Q => data10(0),
      R => '0'
    );
\reg_din_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(1),
      Q => data10(1),
      R => '0'
    );
\reg_din_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(2),
      Q => data10(2),
      R => '0'
    );
\reg_din_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(3),
      Q => data10(3),
      R => '0'
    );
\reg_din_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(4),
      Q => data10(4),
      R => '0'
    );
\reg_din_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(5),
      Q => data10(5),
      R => '0'
    );
\reg_din_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(6),
      Q => data10(6),
      R => '0'
    );
\reg_din_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(7),
      Q => data10(7),
      R => '0'
    );
\reg_din_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(8),
      Q => data10(8),
      R => '0'
    );
\reg_din_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(9),
      Q => data10(9),
      R => '0'
    );
\reg_din_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(16),
      Q => \reg_din_reg_n_0_[16]\,
      R => '0'
    );
\reg_din_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(10),
      Q => data10(10),
      R => '0'
    );
\reg_din_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(11),
      Q => data10(11),
      R => '0'
    );
\reg_din_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(12),
      Q => data10(12),
      R => '0'
    );
\reg_din_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(13),
      Q => data10(13),
      R => '0'
    );
\reg_din_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(14),
      Q => data10(14),
      R => '0'
    );
\reg_din_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(15),
      Q => data10(15),
      R => '0'
    );
\reg_din_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(16),
      Q => data10(16),
      R => '0'
    );
\reg_din_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(17),
      Q => data10(17),
      R => '0'
    );
\reg_din_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(18),
      Q => data10(18),
      R => '0'
    );
\reg_din_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(19),
      Q => data10(19),
      R => '0'
    );
\reg_din_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(17),
      Q => \reg_din_reg_n_0_[17]\,
      R => '0'
    );
\reg_din_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(20),
      Q => data10(20),
      R => '0'
    );
\reg_din_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(21),
      Q => data10(21),
      R => '0'
    );
\reg_din_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(22),
      Q => data10(22),
      R => '0'
    );
\reg_din_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(23),
      Q => data10(23),
      R => '0'
    );
\reg_din_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(24),
      Q => data10(24),
      R => '0'
    );
\reg_din_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(25),
      Q => data10(25),
      R => '0'
    );
\reg_din_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(26),
      Q => data10(26),
      R => '0'
    );
\reg_din_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(27),
      Q => data10(27),
      R => '0'
    );
\reg_din_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(28),
      Q => data10(28),
      R => '0'
    );
\reg_din_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(29),
      Q => data10(29),
      R => '0'
    );
\reg_din_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(18),
      Q => \reg_din_reg_n_0_[18]\,
      R => '0'
    );
\reg_din_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(30),
      Q => data10(30),
      R => '0'
    );
\reg_din_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C3(31),
      Q => data10(31),
      R => '0'
    );
\reg_din_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(0),
      Q => data9(0),
      R => '0'
    );
\reg_din_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(1),
      Q => data9(1),
      R => '0'
    );
\reg_din_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(2),
      Q => data9(2),
      R => '0'
    );
\reg_din_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(3),
      Q => data9(3),
      R => '0'
    );
\reg_din_reg[196]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(4),
      Q => data9(4),
      R => '0'
    );
\reg_din_reg[197]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(5),
      Q => data9(5),
      R => '0'
    );
\reg_din_reg[198]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(6),
      Q => data9(6),
      R => '0'
    );
\reg_din_reg[199]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(7),
      Q => data9(7),
      R => '0'
    );
\reg_din_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(19),
      Q => \reg_din_reg_n_0_[19]\,
      R => '0'
    );
\reg_din_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(1),
      Q => \reg_din_reg_n_0_[1]\,
      R => '0'
    );
\reg_din_reg[200]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(8),
      Q => data9(8),
      R => '0'
    );
\reg_din_reg[201]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(9),
      Q => data9(9),
      R => '0'
    );
\reg_din_reg[202]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(10),
      Q => data9(10),
      R => '0'
    );
\reg_din_reg[203]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(11),
      Q => data9(11),
      R => '0'
    );
\reg_din_reg[204]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(12),
      Q => data9(12),
      R => '0'
    );
\reg_din_reg[205]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(13),
      Q => data9(13),
      R => '0'
    );
\reg_din_reg[206]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(14),
      Q => data9(14),
      R => '0'
    );
\reg_din_reg[207]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(15),
      Q => data9(15),
      R => '0'
    );
\reg_din_reg[208]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(16),
      Q => data9(16),
      R => '0'
    );
\reg_din_reg[209]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(17),
      Q => data9(17),
      R => '0'
    );
\reg_din_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(20),
      Q => \reg_din_reg_n_0_[20]\,
      R => '0'
    );
\reg_din_reg[210]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(18),
      Q => data9(18),
      R => '0'
    );
\reg_din_reg[211]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(19),
      Q => data9(19),
      R => '0'
    );
\reg_din_reg[212]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(20),
      Q => data9(20),
      R => '0'
    );
\reg_din_reg[213]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(21),
      Q => data9(21),
      R => '0'
    );
\reg_din_reg[214]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(22),
      Q => data9(22),
      R => '0'
    );
\reg_din_reg[215]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(23),
      Q => data9(23),
      R => '0'
    );
\reg_din_reg[216]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(24),
      Q => data9(24),
      R => '0'
    );
\reg_din_reg[217]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(25),
      Q => data9(25),
      R => '0'
    );
\reg_din_reg[218]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(26),
      Q => data9(26),
      R => '0'
    );
\reg_din_reg[219]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(27),
      Q => data9(27),
      R => '0'
    );
\reg_din_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(21),
      Q => \reg_din_reg_n_0_[21]\,
      R => '0'
    );
\reg_din_reg[220]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(28),
      Q => data9(28),
      R => '0'
    );
\reg_din_reg[221]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(29),
      Q => data9(29),
      R => '0'
    );
\reg_din_reg[222]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(30),
      Q => data9(30),
      R => '0'
    );
\reg_din_reg[223]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M(31),
      Q => data9(31),
      R => '0'
    );
\reg_din_reg[224]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(0),
      Q => data8(0),
      R => '0'
    );
\reg_din_reg[225]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(1),
      Q => data8(1),
      R => '0'
    );
\reg_din_reg[226]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(2),
      Q => data8(2),
      R => '0'
    );
\reg_din_reg[227]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(3),
      Q => data8(3),
      R => '0'
    );
\reg_din_reg[228]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(4),
      Q => data8(4),
      R => '0'
    );
\reg_din_reg[229]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(5),
      Q => data8(5),
      R => '0'
    );
\reg_din_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(22),
      Q => \reg_din_reg_n_0_[22]\,
      R => '0'
    );
\reg_din_reg[230]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(6),
      Q => data8(6),
      R => '0'
    );
\reg_din_reg[231]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(7),
      Q => data8(7),
      R => '0'
    );
\reg_din_reg[232]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(8),
      Q => data8(8),
      R => '0'
    );
\reg_din_reg[233]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(9),
      Q => data8(9),
      R => '0'
    );
\reg_din_reg[234]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(10),
      Q => data8(10),
      R => '0'
    );
\reg_din_reg[235]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(11),
      Q => data8(11),
      R => '0'
    );
\reg_din_reg[236]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(12),
      Q => data8(12),
      R => '0'
    );
\reg_din_reg[237]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(13),
      Q => data8(13),
      R => '0'
    );
\reg_din_reg[238]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(14),
      Q => data8(14),
      R => '0'
    );
\reg_din_reg[239]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(15),
      Q => data8(15),
      R => '0'
    );
\reg_din_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(23),
      Q => \reg_din_reg_n_0_[23]\,
      R => '0'
    );
\reg_din_reg[240]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(16),
      Q => data8(16),
      R => '0'
    );
\reg_din_reg[241]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(17),
      Q => data8(17),
      R => '0'
    );
\reg_din_reg[242]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(18),
      Q => data8(18),
      R => '0'
    );
\reg_din_reg[243]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(19),
      Q => data8(19),
      R => '0'
    );
\reg_din_reg[244]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(20),
      Q => data8(20),
      R => '0'
    );
\reg_din_reg[245]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(21),
      Q => data8(21),
      R => '0'
    );
\reg_din_reg[246]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(22),
      Q => data8(22),
      R => '0'
    );
\reg_din_reg[247]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(23),
      Q => data8(23),
      R => '0'
    );
\reg_din_reg[248]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(24),
      Q => data8(24),
      R => '0'
    );
\reg_din_reg[249]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(25),
      Q => data8(25),
      R => '0'
    );
\reg_din_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(24),
      Q => \reg_din_reg_n_0_[24]\,
      R => '0'
    );
\reg_din_reg[250]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(26),
      Q => data8(26),
      R => '0'
    );
\reg_din_reg[251]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(27),
      Q => data8(27),
      R => '0'
    );
\reg_din_reg[252]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(28),
      Q => data8(28),
      R => '0'
    );
\reg_din_reg[253]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(29),
      Q => data8(29),
      R => '0'
    );
\reg_din_reg[254]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(30),
      Q => data8(30),
      R => '0'
    );
\reg_din_reg[255]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tper_cnt(31),
      Q => data8(31),
      R => '0'
    );
\reg_din_reg[256]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(0),
      Q => data7(0),
      R => '0'
    );
\reg_din_reg[257]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(1),
      Q => data7(1),
      R => '0'
    );
\reg_din_reg[258]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(2),
      Q => data7(2),
      R => '0'
    );
\reg_din_reg[259]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(3),
      Q => data7(3),
      R => '0'
    );
\reg_din_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(25),
      Q => \reg_din_reg_n_0_[25]\,
      R => '0'
    );
\reg_din_reg[260]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(4),
      Q => data7(4),
      R => '0'
    );
\reg_din_reg[261]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(5),
      Q => data7(5),
      R => '0'
    );
\reg_din_reg[262]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(6),
      Q => data7(6),
      R => '0'
    );
\reg_din_reg[263]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(7),
      Q => data7(7),
      R => '0'
    );
\reg_din_reg[264]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(8),
      Q => data7(8),
      R => '0'
    );
\reg_din_reg[265]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(9),
      Q => data7(9),
      R => '0'
    );
\reg_din_reg[266]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(10),
      Q => data7(10),
      R => '0'
    );
\reg_din_reg[267]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(11),
      Q => data7(11),
      R => '0'
    );
\reg_din_reg[268]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(12),
      Q => data7(12),
      R => '0'
    );
\reg_din_reg[269]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(13),
      Q => data7(13),
      R => '0'
    );
\reg_din_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(26),
      Q => \reg_din_reg_n_0_[26]\,
      R => '0'
    );
\reg_din_reg[270]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(14),
      Q => data7(14),
      R => '0'
    );
\reg_din_reg[271]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(15),
      Q => data7(15),
      R => '0'
    );
\reg_din_reg[272]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(16),
      Q => data7(16),
      R => '0'
    );
\reg_din_reg[273]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(17),
      Q => data7(17),
      R => '0'
    );
\reg_din_reg[274]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(18),
      Q => data7(18),
      R => '0'
    );
\reg_din_reg[275]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(19),
      Q => data7(19),
      R => '0'
    );
\reg_din_reg[276]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(20),
      Q => data7(20),
      R => '0'
    );
\reg_din_reg[277]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(21),
      Q => data7(21),
      R => '0'
    );
\reg_din_reg[278]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(22),
      Q => data7(22),
      R => '0'
    );
\reg_din_reg[279]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(23),
      Q => data7(23),
      R => '0'
    );
\reg_din_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(27),
      Q => \reg_din_reg_n_0_[27]\,
      R => '0'
    );
\reg_din_reg[280]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(24),
      Q => data7(24),
      R => '0'
    );
\reg_din_reg[281]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(25),
      Q => data7(25),
      R => '0'
    );
\reg_din_reg[282]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(26),
      Q => data7(26),
      R => '0'
    );
\reg_din_reg[283]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(27),
      Q => data7(27),
      R => '0'
    );
\reg_din_reg[284]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(28),
      Q => data7(28),
      R => '0'
    );
\reg_din_reg[285]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(29),
      Q => data7(29),
      R => '0'
    );
\reg_din_reg[286]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(30),
      Q => data7(30),
      R => '0'
    );
\reg_din_reg[287]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Reset_HDL(31),
      Q => data7(31),
      R => '0'
    );
\reg_din_reg[288]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(8),
      Q => data6(0),
      R => '0'
    );
\reg_din_reg[289]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(9),
      Q => data6(1),
      R => '0'
    );
\reg_din_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(28),
      Q => \reg_din_reg_n_0_[28]\,
      R => '0'
    );
\reg_din_reg[290]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(10),
      Q => data6(2),
      R => '0'
    );
\reg_din_reg[291]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(11),
      Q => data6(3),
      R => '0'
    );
\reg_din_reg[292]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(12),
      Q => data6(4),
      R => '0'
    );
\reg_din_reg[293]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(13),
      Q => data6(5),
      R => '0'
    );
\reg_din_reg[294]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(14),
      Q => data6(6),
      R => '0'
    );
\reg_din_reg[295]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(15),
      Q => data6(7),
      R => '0'
    );
\reg_din_reg[296]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(16),
      Q => data6(8),
      R => '0'
    );
\reg_din_reg[297]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(17),
      Q => data6(9),
      R => '0'
    );
\reg_din_reg[298]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(18),
      Q => data6(10),
      R => '0'
    );
\reg_din_reg[299]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(19),
      Q => data6(11),
      R => '0'
    );
\reg_din_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(29),
      Q => \reg_din_reg_n_0_[29]\,
      R => '0'
    );
\reg_din_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(2),
      Q => \reg_din_reg_n_0_[2]\,
      R => '0'
    );
\reg_din_reg[300]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(20),
      Q => data6(12),
      R => '0'
    );
\reg_din_reg[301]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(21),
      Q => data6(13),
      R => '0'
    );
\reg_din_reg[302]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(22),
      Q => data6(14),
      R => '0'
    );
\reg_din_reg[303]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(23),
      Q => data6(15),
      R => '0'
    );
\reg_din_reg[304]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(24),
      Q => data6(16),
      R => '0'
    );
\reg_din_reg[305]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(25),
      Q => data6(17),
      R => '0'
    );
\reg_din_reg[306]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(26),
      Q => data6(18),
      R => '0'
    );
\reg_din_reg[307]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(27),
      Q => data6(19),
      R => '0'
    );
\reg_din_reg[308]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(28),
      Q => data6(20),
      R => '0'
    );
\reg_din_reg[309]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(29),
      Q => data6(21),
      R => '0'
    );
\reg_din_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(30),
      Q => \reg_din_reg_n_0_[30]\,
      R => '0'
    );
\reg_din_reg[310]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(30),
      Q => data6(22),
      R => '0'
    );
\reg_din_reg[311]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(31),
      Q => data6(23),
      R => '0'
    );
\reg_din_reg[312]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(32),
      Q => data6(24),
      R => '0'
    );
\reg_din_reg[313]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(33),
      Q => data6(25),
      R => '0'
    );
\reg_din_reg[314]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(34),
      Q => data6(26),
      R => '0'
    );
\reg_din_reg[315]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(35),
      Q => data6(27),
      R => '0'
    );
\reg_din_reg[316]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(36),
      Q => data6(28),
      R => '0'
    );
\reg_din_reg[317]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(37),
      Q => data6(29),
      R => '0'
    );
\reg_din_reg[318]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(38),
      Q => data6(30),
      R => '0'
    );
\reg_din_reg[319]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(39),
      Q => data6(31),
      R => '0'
    );
\reg_din_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(31),
      Q => \reg_din_reg_n_0_[31]\,
      R => '0'
    );
\reg_din_reg[320]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(40),
      Q => data5(0),
      R => '0'
    );
\reg_din_reg[321]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(41),
      Q => data5(1),
      R => '0'
    );
\reg_din_reg[322]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(42),
      Q => data5(2),
      R => '0'
    );
\reg_din_reg[323]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(43),
      Q => data5(3),
      R => '0'
    );
\reg_din_reg[324]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(44),
      Q => data5(4),
      R => '0'
    );
\reg_din_reg[325]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(45),
      Q => data5(5),
      R => '0'
    );
\reg_din_reg[326]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(46),
      Q => data5(6),
      R => '0'
    );
\reg_din_reg[327]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(47),
      Q => data5(7),
      R => '0'
    );
\reg_din_reg[328]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(48),
      Q => data5(8),
      R => '0'
    );
\reg_din_reg[329]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(49),
      Q => data5(9),
      R => '0'
    );
\reg_din_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Write,
      Q => data14(0),
      R => '0'
    );
\reg_din_reg[330]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(50),
      Q => data5(10),
      R => '0'
    );
\reg_din_reg[331]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(51),
      Q => data5(11),
      R => '0'
    );
\reg_din_reg[332]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(52),
      Q => data5(12),
      R => '0'
    );
\reg_din_reg[333]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(53),
      Q => data5(13),
      R => '0'
    );
\reg_din_reg[334]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(54),
      Q => data5(14),
      R => '0'
    );
\reg_din_reg[335]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(55),
      Q => data5(15),
      R => '0'
    );
\reg_din_reg[336]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(56),
      Q => data5(16),
      R => '0'
    );
\reg_din_reg[337]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(57),
      Q => data5(17),
      R => '0'
    );
\reg_din_reg[338]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(58),
      Q => data5(18),
      R => '0'
    );
\reg_din_reg[339]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(59),
      Q => data5(19),
      R => '0'
    );
\reg_din_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(33),
      Q => data14(1),
      R => '0'
    );
\reg_din_reg[340]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(60),
      Q => data5(20),
      R => '0'
    );
\reg_din_reg[341]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(61),
      Q => data5(21),
      R => '0'
    );
\reg_din_reg[342]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(62),
      Q => data5(22),
      R => '0'
    );
\reg_din_reg[343]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(63),
      Q => data5(23),
      R => '0'
    );
\reg_din_reg[344]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(64),
      Q => data5(24),
      R => '0'
    );
\reg_din_reg[345]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(65),
      Q => data5(25),
      R => '0'
    );
\reg_din_reg[346]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(66),
      Q => data5(26),
      R => '0'
    );
\reg_din_reg[347]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(67),
      Q => data5(27),
      R => '0'
    );
\reg_din_reg[348]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(68),
      Q => data5(28),
      R => '0'
    );
\reg_din_reg[349]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(69),
      Q => data5(29),
      R => '0'
    );
\reg_din_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(34),
      Q => data14(2),
      R => '0'
    );
\reg_din_reg[350]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(70),
      Q => data5(30),
      R => '0'
    );
\reg_din_reg[351]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(71),
      Q => data5(31),
      R => '0'
    );
\reg_din_reg[352]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(4),
      Q => data4(0),
      R => '0'
    );
\reg_din_reg[353]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(5),
      Q => data4(1),
      R => '0'
    );
\reg_din_reg[354]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(6),
      Q => data4(2),
      R => '0'
    );
\reg_din_reg[355]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(7),
      Q => data4(3),
      R => '0'
    );
\reg_din_reg[356]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => data4(4),
      R => '0'
    );
\reg_din_reg[357]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(1),
      Q => data4(5),
      R => '0'
    );
\reg_din_reg[358]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(2),
      Q => data4(6),
      R => '0'
    );
\reg_din_reg[359]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(3),
      Q => data4(7),
      R => '0'
    );
\reg_din_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(35),
      Q => data14(3),
      R => '0'
    );
\reg_din_reg[360]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(360),
      Q => data4(8),
      R => '0'
    );
\reg_din_reg[361]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(361),
      Q => data4(9),
      R => '0'
    );
\reg_din_reg[362]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(362),
      Q => data4(10),
      R => '0'
    );
\reg_din_reg[363]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(363),
      Q => data4(11),
      R => '0'
    );
\reg_din_reg[364]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(364),
      Q => data4(12),
      R => '0'
    );
\reg_din_reg[365]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(365),
      Q => data4(13),
      R => '0'
    );
\reg_din_reg[366]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(366),
      Q => data4(14),
      R => '0'
    );
\reg_din_reg[367]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(367),
      Q => data4(15),
      R => '0'
    );
\reg_din_reg[368]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(368),
      Q => data4(16),
      R => '0'
    );
\reg_din_reg[369]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(369),
      Q => data4(17),
      R => '0'
    );
\reg_din_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(36),
      Q => data14(4),
      R => '0'
    );
\reg_din_reg[370]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(370),
      Q => data4(18),
      R => '0'
    );
\reg_din_reg[371]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(371),
      Q => data4(19),
      R => '0'
    );
\reg_din_reg[372]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(372),
      Q => data4(20),
      R => '0'
    );
\reg_din_reg[373]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(373),
      Q => data4(21),
      R => '0'
    );
\reg_din_reg[374]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(374),
      Q => data4(22),
      R => '0'
    );
\reg_din_reg[375]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(375),
      Q => data4(23),
      R => '0'
    );
\reg_din_reg[376]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(376),
      Q => data4(24),
      R => '0'
    );
\reg_din_reg[377]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(377),
      Q => data4(25),
      R => '0'
    );
\reg_din_reg[378]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(378),
      Q => data4(26),
      R => '0'
    );
\reg_din_reg[379]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(379),
      Q => data4(27),
      R => '0'
    );
\reg_din_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(37),
      Q => data14(5),
      R => '0'
    );
\reg_din_reg[380]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(380),
      Q => data4(28),
      R => '0'
    );
\reg_din_reg[381]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(381),
      Q => data4(29),
      R => '0'
    );
\reg_din_reg[382]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(382),
      Q => data4(30),
      R => '0'
    );
\reg_din_reg[383]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(383),
      Q => data4(31),
      R => '0'
    );
\reg_din_reg[384]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pmod_o(0),
      Q => data3(0),
      R => '0'
    );
\reg_din_reg[385]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pmod_o(1),
      Q => data3(1),
      R => '0'
    );
\reg_din_reg[386]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pmod_o(2),
      Q => data3(2),
      R => '0'
    );
\reg_din_reg[387]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pmod_o(3),
      Q => data3(3),
      R => '0'
    );
\reg_din_reg[388]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pmod_o(4),
      Q => data3(4),
      R => '0'
    );
\reg_din_reg[389]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pmod_o(5),
      Q => data3(5),
      R => '0'
    );
\reg_din_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(38),
      Q => data14(6),
      R => '0'
    );
\reg_din_reg[390]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pmod_o(6),
      Q => data3(6),
      R => '0'
    );
\reg_din_reg[391]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pmod_o(7),
      Q => data3(7),
      R => '0'
    );
\reg_din_reg[392]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(392),
      Q => data3(8),
      R => '0'
    );
\reg_din_reg[393]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(393),
      Q => data3(9),
      R => '0'
    );
\reg_din_reg[394]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(394),
      Q => data3(10),
      R => '0'
    );
\reg_din_reg[395]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(395),
      Q => data3(11),
      R => '0'
    );
\reg_din_reg[396]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(396),
      Q => data3(12),
      R => '0'
    );
\reg_din_reg[397]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(397),
      Q => data3(13),
      R => '0'
    );
\reg_din_reg[398]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(398),
      Q => data3(14),
      R => '0'
    );
\reg_din_reg[399]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(399),
      Q => data3(15),
      R => '0'
    );
\reg_din_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(39),
      Q => data14(7),
      R => '0'
    );
\reg_din_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(3),
      Q => \reg_din_reg_n_0_[3]\,
      R => '0'
    );
\reg_din_reg[400]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(400),
      Q => data3(16),
      R => '0'
    );
\reg_din_reg[401]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(401),
      Q => data3(17),
      R => '0'
    );
\reg_din_reg[402]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(402),
      Q => data3(18),
      R => '0'
    );
\reg_din_reg[403]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(403),
      Q => data3(19),
      R => '0'
    );
\reg_din_reg[404]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(404),
      Q => data3(20),
      R => '0'
    );
\reg_din_reg[405]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(405),
      Q => data3(21),
      R => '0'
    );
\reg_din_reg[406]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(406),
      Q => data3(22),
      R => '0'
    );
\reg_din_reg[407]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(407),
      Q => data3(23),
      R => '0'
    );
\reg_din_reg[408]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(408),
      Q => data3(24),
      R => '0'
    );
\reg_din_reg[409]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(409),
      Q => data3(25),
      R => '0'
    );
\reg_din_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(40),
      Q => data14(8),
      R => '0'
    );
\reg_din_reg[410]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(410),
      Q => data3(26),
      R => '0'
    );
\reg_din_reg[411]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(411),
      Q => data3(27),
      R => '0'
    );
\reg_din_reg[412]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(412),
      Q => data3(28),
      R => '0'
    );
\reg_din_reg[413]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(413),
      Q => data3(29),
      R => '0'
    );
\reg_din_reg[414]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(414),
      Q => data3(30),
      R => '0'
    );
\reg_din_reg[415]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(415),
      Q => data3(31),
      R => '0'
    );
\reg_din_reg[416]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(0),
      Q => data2(0),
      R => '0'
    );
\reg_din_reg[417]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(1),
      Q => data2(1),
      R => '0'
    );
\reg_din_reg[418]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(2),
      Q => data2(2),
      R => '0'
    );
\reg_din_reg[419]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(3),
      Q => data2(3),
      R => '0'
    );
\reg_din_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(41),
      Q => data14(9),
      R => '0'
    );
\reg_din_reg[420]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(4),
      Q => data2(4),
      R => '0'
    );
\reg_din_reg[421]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(5),
      Q => data2(5),
      R => '0'
    );
\reg_din_reg[422]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(6),
      Q => data2(6),
      R => '0'
    );
\reg_din_reg[423]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(7),
      Q => data2(7),
      R => '0'
    );
\reg_din_reg[424]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(8),
      Q => data2(8),
      R => '0'
    );
\reg_din_reg[425]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(9),
      Q => data2(9),
      R => '0'
    );
\reg_din_reg[426]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(10),
      Q => data2(10),
      R => '0'
    );
\reg_din_reg[427]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(11),
      Q => data2(11),
      R => '0'
    );
\reg_din_reg[428]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(12),
      Q => data2(12),
      R => '0'
    );
\reg_din_reg[429]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(13),
      Q => data2(13),
      R => '0'
    );
\reg_din_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(42),
      Q => data14(10),
      R => '0'
    );
\reg_din_reg[430]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(14),
      Q => data2(14),
      R => '0'
    );
\reg_din_reg[431]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(15),
      Q => data2(15),
      R => '0'
    );
\reg_din_reg[432]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(16),
      Q => data2(16),
      R => '0'
    );
\reg_din_reg[433]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(17),
      Q => data2(17),
      R => '0'
    );
\reg_din_reg[434]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(18),
      Q => data2(18),
      R => '0'
    );
\reg_din_reg[435]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(19),
      Q => data2(19),
      R => '0'
    );
\reg_din_reg[436]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(20),
      Q => data2(20),
      R => '0'
    );
\reg_din_reg[437]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(21),
      Q => data2(21),
      R => '0'
    );
\reg_din_reg[438]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(22),
      Q => data2(22),
      R => '0'
    );
\reg_din_reg[439]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(23),
      Q => data2(23),
      R => '0'
    );
\reg_din_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(43),
      Q => data14(11),
      R => '0'
    );
\reg_din_reg[440]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(24),
      Q => data2(24),
      R => '0'
    );
\reg_din_reg[441]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(25),
      Q => data2(25),
      R => '0'
    );
\reg_din_reg[442]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(26),
      Q => data2(26),
      R => '0'
    );
\reg_din_reg[443]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(27),
      Q => data2(27),
      R => '0'
    );
\reg_din_reg[444]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(28),
      Q => data2(28),
      R => '0'
    );
\reg_din_reg[445]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(29),
      Q => data2(29),
      R => '0'
    );
\reg_din_reg[446]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(30),
      Q => data2(30),
      R => '0'
    );
\reg_din_reg[447]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[447]_0\(31),
      Q => data2(31),
      R => '0'
    );
\reg_din_reg[448]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(0),
      Q => data1(0),
      R => '0'
    );
\reg_din_reg[449]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(1),
      Q => data1(1),
      R => '0'
    );
\reg_din_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(44),
      Q => data14(12),
      R => '0'
    );
\reg_din_reg[450]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(2),
      Q => data1(2),
      R => '0'
    );
\reg_din_reg[451]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(3),
      Q => data1(3),
      R => '0'
    );
\reg_din_reg[452]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(4),
      Q => data1(4),
      R => '0'
    );
\reg_din_reg[453]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(5),
      Q => data1(5),
      R => '0'
    );
\reg_din_reg[454]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(6),
      Q => data1(6),
      R => '0'
    );
\reg_din_reg[455]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(7),
      Q => data1(7),
      R => '0'
    );
\reg_din_reg[456]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(8),
      Q => data1(8),
      R => '0'
    );
\reg_din_reg[457]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(9),
      Q => data1(9),
      R => '0'
    );
\reg_din_reg[458]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(10),
      Q => data1(10),
      R => '0'
    );
\reg_din_reg[459]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(11),
      Q => data1(11),
      R => '0'
    );
\reg_din_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(45),
      Q => data14(13),
      R => '0'
    );
\reg_din_reg[460]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(12),
      Q => data1(12),
      R => '0'
    );
\reg_din_reg[461]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(13),
      Q => data1(13),
      R => '0'
    );
\reg_din_reg[462]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(14),
      Q => data1(14),
      R => '0'
    );
\reg_din_reg[463]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(15),
      Q => data1(15),
      R => '0'
    );
\reg_din_reg[464]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(16),
      Q => data1(16),
      R => '0'
    );
\reg_din_reg[465]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(17),
      Q => data1(17),
      R => '0'
    );
\reg_din_reg[466]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(18),
      Q => data1(18),
      R => '0'
    );
\reg_din_reg[467]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(19),
      Q => data1(19),
      R => '0'
    );
\reg_din_reg[468]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(20),
      Q => data1(20),
      R => '0'
    );
\reg_din_reg[469]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(21),
      Q => data1(21),
      R => '0'
    );
\reg_din_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(46),
      Q => data14(14),
      R => '0'
    );
\reg_din_reg[470]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(22),
      Q => data1(22),
      R => '0'
    );
\reg_din_reg[471]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(23),
      Q => data1(23),
      R => '0'
    );
\reg_din_reg[472]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(24),
      Q => data1(24),
      R => '0'
    );
\reg_din_reg[473]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(25),
      Q => data1(25),
      R => '0'
    );
\reg_din_reg[474]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(26),
      Q => data1(26),
      R => '0'
    );
\reg_din_reg[475]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(27),
      Q => data1(27),
      R => '0'
    );
\reg_din_reg[476]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(28),
      Q => data1(28),
      R => '0'
    );
\reg_din_reg[477]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(29),
      Q => data1(29),
      R => '0'
    );
\reg_din_reg[478]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(30),
      Q => data1(30),
      R => '0'
    );
\reg_din_reg[479]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg_din_reg[479]_0\(31),
      Q => data1(31),
      R => '0'
    );
\reg_din_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(47),
      Q => data14(15),
      R => '0'
    );
\reg_din_reg[480]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(72),
      Q => data0(0),
      R => '0'
    );
\reg_din_reg[481]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(73),
      Q => data0(1),
      R => '0'
    );
\reg_din_reg[482]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(74),
      Q => data0(2),
      R => '0'
    );
\reg_din_reg[483]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(75),
      Q => data0(3),
      R => '0'
    );
\reg_din_reg[484]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(484),
      Q => data0(4),
      R => '0'
    );
\reg_din_reg[485]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(485),
      Q => data0(5),
      R => '0'
    );
\reg_din_reg[486]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(486),
      Q => data0(6),
      R => '0'
    );
\reg_din_reg[487]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(487),
      Q => data0(7),
      R => '0'
    );
\reg_din_reg[488]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(488),
      Q => data0(8),
      R => '0'
    );
\reg_din_reg[489]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(489),
      Q => data0(9),
      R => '0'
    );
\reg_din_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(48),
      Q => data14(16),
      R => '0'
    );
\reg_din_reg[490]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(490),
      Q => data0(10),
      R => '0'
    );
\reg_din_reg[491]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(491),
      Q => data0(11),
      R => '0'
    );
\reg_din_reg[492]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(492),
      Q => data0(12),
      R => '0'
    );
\reg_din_reg[493]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(493),
      Q => data0(13),
      R => '0'
    );
\reg_din_reg[494]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(494),
      Q => data0(14),
      R => '0'
    );
\reg_din_reg[495]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(495),
      Q => data0(15),
      R => '0'
    );
\reg_din_reg[496]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(496),
      Q => data0(16),
      R => '0'
    );
\reg_din_reg[497]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(497),
      Q => data0(17),
      R => '0'
    );
\reg_din_reg[498]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(498),
      Q => data0(18),
      R => '0'
    );
\reg_din_reg[499]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(499),
      Q => data0(19),
      R => '0'
    );
\reg_din_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(49),
      Q => data14(17),
      R => '0'
    );
\reg_din_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(4),
      Q => \reg_din_reg_n_0_[4]\,
      R => '0'
    );
\reg_din_reg[500]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(500),
      Q => data0(20),
      R => '0'
    );
\reg_din_reg[501]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(501),
      Q => data0(21),
      R => '0'
    );
\reg_din_reg[502]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(502),
      Q => data0(22),
      R => '0'
    );
\reg_din_reg[503]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(503),
      Q => data0(23),
      R => '0'
    );
\reg_din_reg[504]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(504),
      Q => data0(24),
      R => '0'
    );
\reg_din_reg[505]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(505),
      Q => data0(25),
      R => '0'
    );
\reg_din_reg[506]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(506),
      Q => data0(26),
      R => '0'
    );
\reg_din_reg[507]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(507),
      Q => data0(27),
      R => '0'
    );
\reg_din_reg[508]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(508),
      Q => data0(28),
      R => '0'
    );
\reg_din_reg[509]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(509),
      Q => data0(29),
      R => '0'
    );
\reg_din_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(50),
      Q => data14(18),
      R => '0'
    );
\reg_din_reg[510]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(510),
      Q => data0(30),
      R => '0'
    );
\reg_din_reg[511]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(511),
      Q => data0(31),
      R => '0'
    );
\reg_din_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(51),
      Q => data14(19),
      R => '0'
    );
\reg_din_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(52),
      Q => data14(20),
      R => '0'
    );
\reg_din_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(53),
      Q => data14(21),
      R => '0'
    );
\reg_din_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(54),
      Q => data14(22),
      R => '0'
    );
\reg_din_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(55),
      Q => data14(23),
      R => '0'
    );
\reg_din_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(56),
      Q => data14(24),
      R => '0'
    );
\reg_din_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(57),
      Q => data14(25),
      R => '0'
    );
\reg_din_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(58),
      Q => data14(26),
      R => '0'
    );
\reg_din_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(59),
      Q => data14(27),
      R => '0'
    );
\reg_din_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(5),
      Q => \reg_din_reg_n_0_[5]\,
      R => '0'
    );
\reg_din_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(60),
      Q => data14(28),
      R => '0'
    );
\reg_din_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(61),
      Q => data14(29),
      R => '0'
    );
\reg_din_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(62),
      Q => data14(30),
      R => '0'
    );
\reg_din_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(63),
      Q => data14(31),
      R => '0'
    );
\reg_din_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(0),
      Q => data13(0),
      R => '0'
    );
\reg_din_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(1),
      Q => data13(1),
      R => '0'
    );
\reg_din_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(2),
      Q => data13(2),
      R => '0'
    );
\reg_din_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(3),
      Q => data13(3),
      R => '0'
    );
\reg_din_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(4),
      Q => data13(4),
      R => '0'
    );
\reg_din_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(5),
      Q => data13(5),
      R => '0'
    );
\reg_din_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(6),
      Q => \reg_din_reg_n_0_[6]\,
      R => '0'
    );
\reg_din_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(6),
      Q => data13(6),
      R => '0'
    );
\reg_din_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(7),
      Q => data13(7),
      R => '0'
    );
\reg_din_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(8),
      Q => data13(8),
      R => '0'
    );
\reg_din_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(9),
      Q => data13(9),
      R => '0'
    );
\reg_din_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(10),
      Q => data13(10),
      R => '0'
    );
\reg_din_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(11),
      Q => data13(11),
      R => '0'
    );
\reg_din_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(12),
      Q => data13(12),
      R => '0'
    );
\reg_din_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(13),
      Q => data13(13),
      R => '0'
    );
\reg_din_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(14),
      Q => data13(14),
      R => '0'
    );
\reg_din_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(15),
      Q => data13(15),
      R => '0'
    );
\reg_din_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[483]_0\(7),
      Q => \reg_din_reg_n_0_[7]\,
      R => '0'
    );
\reg_din_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(16),
      Q => data13(16),
      R => '0'
    );
\reg_din_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(17),
      Q => data13(17),
      R => '0'
    );
\reg_din_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(18),
      Q => data13(18),
      R => '0'
    );
\reg_din_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(19),
      Q => data13(19),
      R => '0'
    );
\reg_din_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(20),
      Q => data13(20),
      R => '0'
    );
\reg_din_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(21),
      Q => data13(21),
      R => '0'
    );
\reg_din_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(22),
      Q => data13(22),
      R => '0'
    );
\reg_din_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(23),
      Q => data13(23),
      R => '0'
    );
\reg_din_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(24),
      Q => data13(24),
      R => '0'
    );
\reg_din_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(25),
      Q => data13(25),
      R => '0'
    );
\reg_din_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(8),
      Q => \reg_din_reg_n_0_[8]\,
      R => '0'
    );
\reg_din_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(26),
      Q => data13(26),
      R => '0'
    );
\reg_din_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(27),
      Q => data13(27),
      R => '0'
    );
\reg_din_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(28),
      Q => data13(28),
      R => '0'
    );
\reg_din_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(29),
      Q => data13(29),
      R => '0'
    );
\reg_din_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(30),
      Q => data13(30),
      R => '0'
    );
\reg_din_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C0(31),
      Q => data13(31),
      R => '0'
    );
\reg_din_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(0),
      Q => data12(0),
      R => '0'
    );
\reg_din_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(1),
      Q => data12(1),
      R => '0'
    );
\reg_din_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(2),
      Q => data12(2),
      R => '0'
    );
\reg_din_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => C1(3),
      Q => data12(3),
      R => '0'
    );
\reg_din_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Addr(9),
      Q => \reg_din_reg_n_0_[9]\,
      R => '0'
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(0),
      Q => \^reg_reg[483]_0\(0),
      R => reset
    );
\reg_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(4),
      Q => C1(4),
      R => reset
    );
\reg_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(5),
      Q => C1(5),
      R => reset
    );
\reg_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(6),
      Q => C1(6),
      R => reset
    );
\reg_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(7),
      Q => C1(7),
      R => reset
    );
\reg_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => C1(8),
      R => reset
    );
\reg_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => C1(9),
      R => reset
    );
\reg_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => C1(10),
      R => reset
    );
\reg_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => C1(11),
      R => reset
    );
\reg_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => C1(12),
      R => reset
    );
\reg_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => C1(13),
      R => reset
    );
\reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => Addr(10),
      R => reset
    );
\reg_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => C1(14),
      R => reset
    );
\reg_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => C1(15),
      R => reset
    );
\reg_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => C1(16),
      R => reset
    );
\reg_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => C1(17),
      R => reset
    );
\reg_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => C1(18),
      R => reset
    );
\reg_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => C1(19),
      R => reset
    );
\reg_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => C1(20),
      R => reset
    );
\reg_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => C1(21),
      R => reset
    );
\reg_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => C1(22),
      R => reset
    );
\reg_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => C1(23),
      R => reset
    );
\reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => Addr(11),
      R => reset
    );
\reg_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => C1(24),
      R => reset
    );
\reg_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => C1(25),
      R => reset
    );
\reg_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => C1(26),
      R => reset
    );
\reg_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => C1(27),
      R => reset
    );
\reg_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => C1(28),
      R => reset
    );
\reg_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => C1(29),
      R => reset
    );
\reg_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => C1(30),
      R => reset
    );
\reg_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => C1(31),
      R => reset
    );
\reg_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(0),
      Q => C2(0),
      R => reset
    );
\reg_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(1),
      Q => C2(1),
      R => reset
    );
\reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => Addr(12),
      R => reset
    );
\reg_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(2),
      Q => C2(2),
      R => reset
    );
\reg_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(3),
      Q => C2(3),
      R => reset
    );
\reg_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(4),
      Q => C2(4),
      R => reset
    );
\reg_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(5),
      Q => C2(5),
      R => reset
    );
\reg_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(6),
      Q => C2(6),
      R => reset
    );
\reg_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(7),
      Q => C2(7),
      R => reset
    );
\reg_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => C2(8),
      R => reset
    );
\reg_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => C2(9),
      R => reset
    );
\reg_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => C2(10),
      R => reset
    );
\reg_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => C2(11),
      R => reset
    );
\reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => Addr(13),
      R => reset
    );
\reg_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => C2(12),
      R => reset
    );
\reg_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => C2(13),
      R => reset
    );
\reg_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => C2(14),
      R => reset
    );
\reg_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => C2(15),
      R => reset
    );
\reg_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => C2(16),
      R => reset
    );
\reg_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => C2(17),
      R => reset
    );
\reg_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => C2(18),
      R => reset
    );
\reg_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => C2(19),
      R => reset
    );
\reg_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => C2(20),
      R => reset
    );
\reg_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => C2(21),
      R => reset
    );
\reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => Addr(14),
      R => reset
    );
\reg_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => C2(22),
      R => reset
    );
\reg_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => C2(23),
      R => reset
    );
\reg_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => C2(24),
      R => reset
    );
\reg_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => C2(25),
      R => reset
    );
\reg_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => C2(26),
      R => reset
    );
\reg_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => C2(27),
      R => reset
    );
\reg_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => C2(28),
      R => reset
    );
\reg_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => C2(29),
      R => reset
    );
\reg_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => C2(30),
      R => reset
    );
\reg_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[159]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => C2(31),
      R => reset
    );
\reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => Addr(15),
      R => reset
    );
\reg_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(0),
      Q => C3(0),
      R => reset
    );
\reg_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(1),
      Q => C3(1),
      R => reset
    );
\reg_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(2),
      Q => C3(2),
      R => reset
    );
\reg_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(3),
      Q => C3(3),
      R => reset
    );
\reg_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(4),
      Q => C3(4),
      R => reset
    );
\reg_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(5),
      Q => C3(5),
      R => reset
    );
\reg_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(6),
      Q => C3(6),
      R => reset
    );
\reg_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(7),
      Q => C3(7),
      R => reset
    );
\reg_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => C3(8),
      R => reset
    );
\reg_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => C3(9),
      R => reset
    );
\reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => Addr(16),
      R => reset
    );
\reg_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => C3(10),
      R => reset
    );
\reg_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => C3(11),
      R => reset
    );
\reg_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => C3(12),
      R => reset
    );
\reg_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => C3(13),
      R => reset
    );
\reg_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => C3(14),
      R => reset
    );
\reg_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => C3(15),
      R => reset
    );
\reg_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => C3(16),
      R => reset
    );
\reg_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => C3(17),
      R => reset
    );
\reg_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => C3(18),
      R => reset
    );
\reg_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => C3(19),
      R => reset
    );
\reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => Addr(17),
      R => reset
    );
\reg_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => C3(20),
      R => reset
    );
\reg_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => C3(21),
      R => reset
    );
\reg_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => C3(22),
      R => reset
    );
\reg_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => C3(23),
      R => reset
    );
\reg_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => C3(24),
      R => reset
    );
\reg_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => C3(25),
      R => reset
    );
\reg_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => C3(26),
      R => reset
    );
\reg_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => C3(27),
      R => reset
    );
\reg_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => C3(28),
      R => reset
    );
\reg_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => C3(29),
      R => reset
    );
\reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => Addr(18),
      R => reset
    );
\reg_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => C3(30),
      R => reset
    );
\reg_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[191]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => C3(31),
      R => reset
    );
\reg_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(0),
      Q => M(0),
      R => reset
    );
\reg_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(1),
      Q => M(1),
      R => reset
    );
\reg_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(2),
      Q => M(2),
      R => reset
    );
\reg_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(3),
      Q => M(3),
      R => reset
    );
\reg_reg[196]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(4),
      Q => M(4),
      R => reset
    );
\reg_reg[197]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(5),
      Q => M(5),
      R => reset
    );
\reg_reg[198]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(6),
      Q => M(6),
      R => reset
    );
\reg_reg[199]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(7),
      Q => M(7),
      R => reset
    );
\reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => Addr(19),
      R => reset
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(1),
      Q => \^reg_reg[483]_0\(1),
      R => reset
    );
\reg_reg[200]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => M(8),
      R => reset
    );
\reg_reg[201]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => M(9),
      R => reset
    );
\reg_reg[202]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => M(10),
      R => reset
    );
\reg_reg[203]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => M(11),
      R => reset
    );
\reg_reg[204]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => M(12),
      R => reset
    );
\reg_reg[205]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => M(13),
      R => reset
    );
\reg_reg[206]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => M(14),
      R => reset
    );
\reg_reg[207]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => M(15),
      R => reset
    );
\reg_reg[208]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => M(16),
      R => reset
    );
\reg_reg[209]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => M(17),
      R => reset
    );
\reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => Addr(20),
      R => reset
    );
\reg_reg[210]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => M(18),
      R => reset
    );
\reg_reg[211]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => M(19),
      R => reset
    );
\reg_reg[212]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => M(20),
      R => reset
    );
\reg_reg[213]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => M(21),
      R => reset
    );
\reg_reg[214]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => M(22),
      R => reset
    );
\reg_reg[215]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => M(23),
      R => reset
    );
\reg_reg[216]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => M(24),
      R => reset
    );
\reg_reg[217]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => M(25),
      R => reset
    );
\reg_reg[218]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => M(26),
      R => reset
    );
\reg_reg[219]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => M(27),
      R => reset
    );
\reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => Addr(21),
      R => reset
    );
\reg_reg[220]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => M(28),
      R => reset
    );
\reg_reg[221]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => M(29),
      R => reset
    );
\reg_reg[222]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => M(30),
      R => reset
    );
\reg_reg[223]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[223]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => M(31),
      R => reset
    );
\reg_reg[224]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(0),
      Q => tper_cnt(0),
      R => reset
    );
\reg_reg[225]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(1),
      Q => tper_cnt(1),
      R => reset
    );
\reg_reg[226]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(2),
      Q => tper_cnt(2),
      R => reset
    );
\reg_reg[227]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(3),
      Q => tper_cnt(3),
      R => reset
    );
\reg_reg[228]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(4),
      Q => tper_cnt(4),
      R => reset
    );
\reg_reg[229]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(5),
      Q => tper_cnt(5),
      R => reset
    );
\reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => Addr(22),
      R => reset
    );
\reg_reg[230]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(6),
      Q => tper_cnt(6),
      R => reset
    );
\reg_reg[231]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(7),
      Q => tper_cnt(7),
      R => reset
    );
\reg_reg[232]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => tper_cnt(8),
      R => reset
    );
\reg_reg[233]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => tper_cnt(9),
      R => reset
    );
\reg_reg[234]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => tper_cnt(10),
      R => reset
    );
\reg_reg[235]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => tper_cnt(11),
      R => reset
    );
\reg_reg[236]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => tper_cnt(12),
      R => reset
    );
\reg_reg[237]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => tper_cnt(13),
      R => reset
    );
\reg_reg[238]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => tper_cnt(14),
      R => reset
    );
\reg_reg[239]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => tper_cnt(15),
      R => reset
    );
\reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => Addr(23),
      R => reset
    );
\reg_reg[240]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => tper_cnt(16),
      R => reset
    );
\reg_reg[241]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => tper_cnt(17),
      R => reset
    );
\reg_reg[242]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => tper_cnt(18),
      R => reset
    );
\reg_reg[243]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => tper_cnt(19),
      R => reset
    );
\reg_reg[244]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => tper_cnt(20),
      R => reset
    );
\reg_reg[245]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => tper_cnt(21),
      R => reset
    );
\reg_reg[246]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => tper_cnt(22),
      R => reset
    );
\reg_reg[247]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => tper_cnt(23),
      R => reset
    );
\reg_reg[248]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => tper_cnt(24),
      R => reset
    );
\reg_reg[249]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => tper_cnt(25),
      R => reset
    );
\reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => Addr(24),
      R => reset
    );
\reg_reg[250]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => tper_cnt(26),
      R => reset
    );
\reg_reg[251]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => tper_cnt(27),
      R => reset
    );
\reg_reg[252]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => tper_cnt(28),
      R => reset
    );
\reg_reg[253]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => tper_cnt(29),
      R => reset
    );
\reg_reg[254]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => tper_cnt(30),
      R => reset
    );
\reg_reg[255]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[255]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => tper_cnt(31),
      R => reset
    );
\reg_reg[256]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(0),
      Q => Reset_HDL(0),
      R => reset
    );
\reg_reg[257]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(1),
      Q => Reset_HDL(1),
      R => reset
    );
\reg_reg[258]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(2),
      Q => Reset_HDL(2),
      R => reset
    );
\reg_reg[259]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(3),
      Q => Reset_HDL(3),
      R => reset
    );
\reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => Addr(25),
      R => reset
    );
\reg_reg[260]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(4),
      Q => Reset_HDL(4),
      R => reset
    );
\reg_reg[261]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(5),
      Q => Reset_HDL(5),
      R => reset
    );
\reg_reg[262]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(6),
      Q => Reset_HDL(6),
      R => reset
    );
\reg_reg[263]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(7),
      Q => Reset_HDL(7),
      R => reset
    );
\reg_reg[264]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => Reset_HDL(8),
      R => reset
    );
\reg_reg[265]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => Reset_HDL(9),
      R => reset
    );
\reg_reg[266]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => Reset_HDL(10),
      R => reset
    );
\reg_reg[267]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => Reset_HDL(11),
      R => reset
    );
\reg_reg[268]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => Reset_HDL(12),
      R => reset
    );
\reg_reg[269]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => Reset_HDL(13),
      R => reset
    );
\reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => Addr(26),
      R => reset
    );
\reg_reg[270]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => Reset_HDL(14),
      R => reset
    );
\reg_reg[271]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => Reset_HDL(15),
      R => reset
    );
\reg_reg[272]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => Reset_HDL(16),
      R => reset
    );
\reg_reg[273]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => Reset_HDL(17),
      R => reset
    );
\reg_reg[274]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => Reset_HDL(18),
      R => reset
    );
\reg_reg[275]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => Reset_HDL(19),
      R => reset
    );
\reg_reg[276]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => Reset_HDL(20),
      R => reset
    );
\reg_reg[277]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => Reset_HDL(21),
      R => reset
    );
\reg_reg[278]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => Reset_HDL(22),
      R => reset
    );
\reg_reg[279]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => Reset_HDL(23),
      R => reset
    );
\reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => Addr(27),
      R => reset
    );
\reg_reg[280]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => Reset_HDL(24),
      R => reset
    );
\reg_reg[281]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => Reset_HDL(25),
      R => reset
    );
\reg_reg[282]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => Reset_HDL(26),
      R => reset
    );
\reg_reg[283]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => Reset_HDL(27),
      R => reset
    );
\reg_reg[284]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => Reset_HDL(28),
      R => reset
    );
\reg_reg[285]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => Reset_HDL(29),
      R => reset
    );
\reg_reg[286]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => Reset_HDL(30),
      R => reset
    );
\reg_reg[287]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[287]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => Reset_HDL(31),
      R => reset
    );
\reg_reg[288]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(0),
      Q => \^reg_reg[483]_0\(8),
      R => reset
    );
\reg_reg[289]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(1),
      Q => \^reg_reg[483]_0\(9),
      R => reset
    );
\reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => Addr(28),
      R => reset
    );
\reg_reg[290]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(2),
      Q => \^reg_reg[483]_0\(10),
      R => reset
    );
\reg_reg[291]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(3),
      Q => \^reg_reg[483]_0\(11),
      R => reset
    );
\reg_reg[292]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(4),
      Q => \^reg_reg[483]_0\(12),
      R => reset
    );
\reg_reg[293]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(5),
      Q => \^reg_reg[483]_0\(13),
      R => reset
    );
\reg_reg[294]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(6),
      Q => \^reg_reg[483]_0\(14),
      R => reset
    );
\reg_reg[295]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(7),
      Q => \^reg_reg[483]_0\(15),
      R => reset
    );
\reg_reg[296]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => \^reg_reg[483]_0\(16),
      R => reset
    );
\reg_reg[297]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => \^reg_reg[483]_0\(17),
      R => reset
    );
\reg_reg[298]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => \^reg_reg[483]_0\(18),
      R => reset
    );
\reg_reg[299]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => \^reg_reg[483]_0\(19),
      R => reset
    );
\reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => Addr(29),
      R => reset
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(2),
      Q => \^reg_reg[483]_0\(2),
      R => reset
    );
\reg_reg[300]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => \^reg_reg[483]_0\(20),
      R => reset
    );
\reg_reg[301]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => \^reg_reg[483]_0\(21),
      R => reset
    );
\reg_reg[302]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => \^reg_reg[483]_0\(22),
      R => reset
    );
\reg_reg[303]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => \^reg_reg[483]_0\(23),
      R => reset
    );
\reg_reg[304]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => \^reg_reg[483]_0\(24),
      R => reset
    );
\reg_reg[305]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => \^reg_reg[483]_0\(25),
      R => reset
    );
\reg_reg[306]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => \^reg_reg[483]_0\(26),
      R => reset
    );
\reg_reg[307]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => \^reg_reg[483]_0\(27),
      R => reset
    );
\reg_reg[308]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => \^reg_reg[483]_0\(28),
      R => reset
    );
\reg_reg[309]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => \^reg_reg[483]_0\(29),
      R => reset
    );
\reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => Addr(30),
      R => reset
    );
\reg_reg[310]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => \^reg_reg[483]_0\(30),
      R => reset
    );
\reg_reg[311]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => \^reg_reg[483]_0\(31),
      R => reset
    );
\reg_reg[312]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => \^reg_reg[483]_0\(32),
      R => reset
    );
\reg_reg[313]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => \^reg_reg[483]_0\(33),
      R => reset
    );
\reg_reg[314]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => \^reg_reg[483]_0\(34),
      R => reset
    );
\reg_reg[315]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => \^reg_reg[483]_0\(35),
      R => reset
    );
\reg_reg[316]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => \^reg_reg[483]_0\(36),
      R => reset
    );
\reg_reg[317]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => \^reg_reg[483]_0\(37),
      R => reset
    );
\reg_reg[318]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => \^reg_reg[483]_0\(38),
      R => reset
    );
\reg_reg[319]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[319]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => \^reg_reg[483]_0\(39),
      R => reset
    );
\reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => Addr(31),
      R => reset
    );
\reg_reg[320]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(0),
      Q => \^reg_reg[483]_0\(40),
      R => reset
    );
\reg_reg[321]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(1),
      Q => \^reg_reg[483]_0\(41),
      R => reset
    );
\reg_reg[322]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(2),
      Q => \^reg_reg[483]_0\(42),
      R => reset
    );
\reg_reg[323]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(3),
      Q => \^reg_reg[483]_0\(43),
      R => reset
    );
\reg_reg[324]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(4),
      Q => \^reg_reg[483]_0\(44),
      R => reset
    );
\reg_reg[325]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(5),
      Q => \^reg_reg[483]_0\(45),
      R => reset
    );
\reg_reg[326]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(6),
      Q => \^reg_reg[483]_0\(46),
      R => reset
    );
\reg_reg[327]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(7),
      Q => \^reg_reg[483]_0\(47),
      R => reset
    );
\reg_reg[328]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => \^reg_reg[483]_0\(48),
      R => reset
    );
\reg_reg[329]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => \^reg_reg[483]_0\(49),
      R => reset
    );
\reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(0),
      Q => Write,
      R => reset
    );
\reg_reg[330]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => \^reg_reg[483]_0\(50),
      R => reset
    );
\reg_reg[331]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => \^reg_reg[483]_0\(51),
      R => reset
    );
\reg_reg[332]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => \^reg_reg[483]_0\(52),
      R => reset
    );
\reg_reg[333]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => \^reg_reg[483]_0\(53),
      R => reset
    );
\reg_reg[334]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => \^reg_reg[483]_0\(54),
      R => reset
    );
\reg_reg[335]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => \^reg_reg[483]_0\(55),
      R => reset
    );
\reg_reg[336]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => \^reg_reg[483]_0\(56),
      R => reset
    );
\reg_reg[337]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => \^reg_reg[483]_0\(57),
      R => reset
    );
\reg_reg[338]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => \^reg_reg[483]_0\(58),
      R => reset
    );
\reg_reg[339]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => \^reg_reg[483]_0\(59),
      R => reset
    );
\reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(1),
      Q => reg(33),
      R => reset
    );
\reg_reg[340]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => \^reg_reg[483]_0\(60),
      R => reset
    );
\reg_reg[341]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => \^reg_reg[483]_0\(61),
      R => reset
    );
\reg_reg[342]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => \^reg_reg[483]_0\(62),
      R => reset
    );
\reg_reg[343]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => \^reg_reg[483]_0\(63),
      R => reset
    );
\reg_reg[344]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => \^reg_reg[483]_0\(64),
      R => reset
    );
\reg_reg[345]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => \^reg_reg[483]_0\(65),
      R => reset
    );
\reg_reg[346]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => \^reg_reg[483]_0\(66),
      R => reset
    );
\reg_reg[347]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => \^reg_reg[483]_0\(67),
      R => reset
    );
\reg_reg[348]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => \^reg_reg[483]_0\(68),
      R => reset
    );
\reg_reg[349]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => \^reg_reg[483]_0\(69),
      R => reset
    );
\reg_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(2),
      Q => reg(34),
      R => reset
    );
\reg_reg[350]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => \^reg_reg[483]_0\(70),
      R => reset
    );
\reg_reg[351]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[351]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => \^reg_reg[483]_0\(71),
      R => reset
    );
\reg_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(3),
      Q => reg(35),
      R => reset
    );
\reg_reg[360]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => reg(360),
      R => reset
    );
\reg_reg[361]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => reg(361),
      R => reset
    );
\reg_reg[362]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => reg(362),
      R => reset
    );
\reg_reg[363]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => reg(363),
      R => reset
    );
\reg_reg[364]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => reg(364),
      R => reset
    );
\reg_reg[365]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => reg(365),
      R => reset
    );
\reg_reg[366]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => reg(366),
      R => reset
    );
\reg_reg[367]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => reg(367),
      R => reset
    );
\reg_reg[368]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => reg(368),
      R => reset
    );
\reg_reg[369]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => reg(369),
      R => reset
    );
\reg_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(4),
      Q => reg(36),
      R => reset
    );
\reg_reg[370]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => reg(370),
      R => reset
    );
\reg_reg[371]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => reg(371),
      R => reset
    );
\reg_reg[372]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => reg(372),
      R => reset
    );
\reg_reg[373]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => reg(373),
      R => reset
    );
\reg_reg[374]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => reg(374),
      R => reset
    );
\reg_reg[375]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => reg(375),
      R => reset
    );
\reg_reg[376]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => reg(376),
      R => reset
    );
\reg_reg[377]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => reg(377),
      R => reset
    );
\reg_reg[378]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => reg(378),
      R => reset
    );
\reg_reg[379]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => reg(379),
      R => reset
    );
\reg_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(5),
      Q => reg(37),
      R => reset
    );
\reg_reg[380]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => reg(380),
      R => reset
    );
\reg_reg[381]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => reg(381),
      R => reset
    );
\reg_reg[382]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => reg(382),
      R => reset
    );
\reg_reg[383]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[383]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => reg(383),
      R => reset
    );
\reg_reg[384]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(0),
      Q => pmod_o(0),
      R => reset
    );
\reg_reg[385]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(1),
      Q => pmod_o(1),
      R => reset
    );
\reg_reg[386]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(2),
      Q => pmod_o(2),
      R => reset
    );
\reg_reg[387]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(3),
      Q => pmod_o(3),
      R => reset
    );
\reg_reg[388]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(4),
      Q => pmod_o(4),
      R => reset
    );
\reg_reg[389]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(5),
      Q => pmod_o(5),
      R => reset
    );
\reg_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(6),
      Q => reg(38),
      R => reset
    );
\reg_reg[390]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(6),
      Q => pmod_o(6),
      R => reset
    );
\reg_reg[391]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(7),
      Q => pmod_o(7),
      R => reset
    );
\reg_reg[392]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => reg(392),
      R => reset
    );
\reg_reg[393]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => reg(393),
      R => reset
    );
\reg_reg[394]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => reg(394),
      R => reset
    );
\reg_reg[395]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => reg(395),
      R => reset
    );
\reg_reg[396]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => reg(396),
      R => reset
    );
\reg_reg[397]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => reg(397),
      R => reset
    );
\reg_reg[398]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => reg(398),
      R => reset
    );
\reg_reg[399]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => reg(399),
      R => reset
    );
\reg_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(7),
      Q => reg(39),
      R => reset
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(3),
      Q => \^reg_reg[483]_0\(3),
      R => reset
    );
\reg_reg[400]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => reg(400),
      R => reset
    );
\reg_reg[401]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => reg(401),
      R => reset
    );
\reg_reg[402]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => reg(402),
      R => reset
    );
\reg_reg[403]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => reg(403),
      R => reset
    );
\reg_reg[404]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => reg(404),
      R => reset
    );
\reg_reg[405]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => reg(405),
      R => reset
    );
\reg_reg[406]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => reg(406),
      R => reset
    );
\reg_reg[407]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => reg(407),
      R => reset
    );
\reg_reg[408]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => reg(408),
      R => reset
    );
\reg_reg[409]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => reg(409),
      R => reset
    );
\reg_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => reg(40),
      R => reset
    );
\reg_reg[410]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => reg(410),
      R => reset
    );
\reg_reg[411]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => reg(411),
      R => reset
    );
\reg_reg[412]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => reg(412),
      R => reset
    );
\reg_reg[413]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => reg(413),
      R => reset
    );
\reg_reg[414]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => reg(414),
      R => reset
    );
\reg_reg[415]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[415]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => reg(415),
      R => reset
    );
\reg_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => reg(41),
      R => reset
    );
\reg_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => reg(42),
      R => reset
    );
\reg_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => reg(43),
      R => reset
    );
\reg_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => reg(44),
      R => reset
    );
\reg_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => reg(45),
      R => reset
    );
\reg_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => reg(46),
      R => reset
    );
\reg_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => reg(47),
      R => reset
    );
\reg_reg[480]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(0),
      Q => \^reg_reg[483]_0\(72),
      R => reset
    );
\reg_reg[481]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(1),
      Q => \^reg_reg[483]_0\(73),
      S => reset
    );
\reg_reg[482]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(2),
      Q => \^reg_reg[483]_0\(74),
      S => reset
    );
\reg_reg[483]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(3),
      Q => \^reg_reg[483]_0\(75),
      R => reset
    );
\reg_reg[484]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(4),
      Q => reg(484),
      R => reset
    );
\reg_reg[485]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(5),
      Q => reg(485),
      R => reset
    );
\reg_reg[486]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(6),
      Q => reg(486),
      R => reset
    );
\reg_reg[487]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(7),
      Q => reg(487),
      R => reset
    );
\reg_reg[488]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => reg(488),
      R => reset
    );
\reg_reg[489]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => reg(489),
      R => reset
    );
\reg_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => reg(48),
      R => reset
    );
\reg_reg[490]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => reg(490),
      R => reset
    );
\reg_reg[491]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => reg(491),
      R => reset
    );
\reg_reg[492]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => reg(492),
      R => reset
    );
\reg_reg[493]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => reg(493),
      R => reset
    );
\reg_reg[494]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => reg(494),
      R => reset
    );
\reg_reg[495]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => reg(495),
      R => reset
    );
\reg_reg[496]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => reg(496),
      R => reset
    );
\reg_reg[497]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => reg(497),
      R => reset
    );
\reg_reg[498]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => reg(498),
      R => reset
    );
\reg_reg[499]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => reg(499),
      R => reset
    );
\reg_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => reg(49),
      R => reset
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(4),
      Q => \^reg_reg[483]_0\(4),
      R => reset
    );
\reg_reg[500]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => reg(500),
      R => reset
    );
\reg_reg[501]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => reg(501),
      R => reset
    );
\reg_reg[502]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => reg(502),
      R => reset
    );
\reg_reg[503]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => reg(503),
      R => reset
    );
\reg_reg[504]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => reg(504),
      R => reset
    );
\reg_reg[505]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => reg(505),
      R => reset
    );
\reg_reg[506]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => reg(506),
      R => reset
    );
\reg_reg[507]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => reg(507),
      R => reset
    );
\reg_reg[508]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => reg(508),
      R => reset
    );
\reg_reg[509]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => reg(509),
      R => reset
    );
\reg_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => reg(50),
      R => reset
    );
\reg_reg[510]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => reg(510),
      R => reset
    );
\reg_reg[511]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[483]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => reg(511),
      R => reset
    );
\reg_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => reg(51),
      R => reset
    );
\reg_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => reg(52),
      R => reset
    );
\reg_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => reg(53),
      R => reset
    );
\reg_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => reg(54),
      R => reset
    );
\reg_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => reg(55),
      R => reset
    );
\reg_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => reg(56),
      R => reset
    );
\reg_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => reg(57),
      R => reset
    );
\reg_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => reg(58),
      R => reset
    );
\reg_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => reg(59),
      R => reset
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(5),
      Q => \^reg_reg[483]_0\(5),
      R => reset
    );
\reg_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => reg(60),
      R => reset
    );
\reg_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => reg(61),
      R => reset
    );
\reg_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => reg(62),
      R => reset
    );
\reg_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[63]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => reg(63),
      R => reset
    );
\reg_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(0),
      Q => C0(0),
      R => reset
    );
\reg_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(1),
      Q => C0(1),
      R => reset
    );
\reg_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(2),
      Q => C0(2),
      R => reset
    );
\reg_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(3),
      Q => C0(3),
      R => reset
    );
\reg_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(4),
      Q => C0(4),
      R => reset
    );
\reg_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(5),
      Q => C0(5),
      R => reset
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(6),
      Q => \^reg_reg[483]_0\(6),
      R => reset
    );
\reg_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(6),
      Q => C0(6),
      R => reset
    );
\reg_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(7),
      Q => C0(7),
      R => reset
    );
\reg_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => C0(8),
      R => reset
    );
\reg_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => C0(9),
      R => reset
    );
\reg_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(10),
      Q => C0(10),
      R => reset
    );
\reg_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(11),
      Q => C0(11),
      R => reset
    );
\reg_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(12),
      Q => C0(12),
      R => reset
    );
\reg_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(13),
      Q => C0(13),
      R => reset
    );
\reg_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(14),
      Q => C0(14),
      R => reset
    );
\reg_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(15),
      Q => C0(15),
      R => reset
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(7),
      Q => \^reg_reg[483]_0\(7),
      R => reset
    );
\reg_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(16),
      Q => C0(16),
      R => reset
    );
\reg_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(17),
      Q => C0(17),
      R => reset
    );
\reg_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(18),
      Q => C0(18),
      R => reset
    );
\reg_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(19),
      Q => C0(19),
      R => reset
    );
\reg_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(20),
      Q => C0(20),
      R => reset
    );
\reg_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(21),
      Q => C0(21),
      R => reset
    );
\reg_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(22),
      Q => C0(22),
      R => reset
    );
\reg_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(23),
      Q => C0(23),
      R => reset
    );
\reg_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(24),
      Q => C0(24),
      R => reset
    );
\reg_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(25),
      Q => C0(25),
      R => reset
    );
\reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(8),
      Q => Addr(8),
      R => reset
    );
\reg_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(26),
      Q => C0(26),
      R => reset
    );
\reg_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(27),
      Q => C0(27),
      R => reset
    );
\reg_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(28),
      Q => C0(28),
      R => reset
    );
\reg_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(29),
      Q => C0(29),
      R => reset
    );
\reg_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(30),
      Q => C0(30),
      R => reset
    );
\reg_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[95]_i_1_n_0\,
      D => sbus_wdata(31),
      Q => C0(31),
      R => reset
    );
\reg_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(0),
      Q => C1(0),
      R => reset
    );
\reg_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(1),
      Q => C1(1),
      R => reset
    );
\reg_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(2),
      Q => C1(2),
      R => reset
    );
\reg_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[127]_i_1_n_0\,
      D => sbus_wdata(3),
      Q => C1(3),
      R => reset
    );
\reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg[31]_i_1_n_0\,
      D => sbus_wdata(9),
      Q => Addr(9),
      R => reset
    );
sbus_ack_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => sbus_rd,
      I1 => sbus_we,
      I2 => sbus_ack_i_2_n_0,
      O => sbus_ack0
    );
sbus_ack_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \reg[483]_i_5_n_0\,
      I1 => sbus_addr(7),
      I2 => sbus_addr(6),
      I3 => sbus_addr(5),
      I4 => sbus_addr(4),
      I5 => \reg[483]_i_3_n_0\,
      O => sbus_ack_i_2_n_0
    );
sbus_ack_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sbus_ack0,
      Q => sbus_ack,
      R => '0'
    );
\sbus_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[0]_i_2_n_0\,
      I1 => \sbus_rdata[0]_i_3_n_0\,
      I2 => \sbus_rdata[0]_i_4_n_0\,
      I3 => \sbus_rdata[0]_i_5_n_0\,
      I4 => \sbus_rdata[0]_i_6_n_0\,
      I5 => \sbus_rdata[0]_i_7_n_0\,
      O => \sbus_rdata[0]_i_1_n_0\
    );
\sbus_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(0),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(0),
      I4 => data4(0),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[0]_i_2_n_0\
    );
\sbus_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(0),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(0),
      I4 => data7(0),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[0]_i_3_n_0\
    );
\sbus_rdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[0]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(0),
      I4 => data13(0),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[0]_i_4_n_0\
    );
\sbus_rdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(0),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(0),
      I4 => data10(0),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[0]_i_5_n_0\
    );
\sbus_rdata[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(0),
      O => \sbus_rdata[0]_i_6_n_0\
    );
\sbus_rdata[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(0),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(0),
      I4 => data1(0),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[0]_i_7_n_0\
    );
\sbus_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[10]_i_2_n_0\,
      I1 => \sbus_rdata[10]_i_3_n_0\,
      I2 => \sbus_rdata[10]_i_4_n_0\,
      I3 => \sbus_rdata[10]_i_5_n_0\,
      I4 => \sbus_rdata[10]_i_6_n_0\,
      I5 => \sbus_rdata[10]_i_7_n_0\,
      O => \sbus_rdata[10]_i_1_n_0\
    );
\sbus_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(10),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(10),
      I4 => data4(10),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[10]_i_2_n_0\
    );
\sbus_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(10),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(10),
      I4 => data7(10),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[10]_i_3_n_0\
    );
\sbus_rdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[10]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(10),
      I4 => data13(10),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[10]_i_4_n_0\
    );
\sbus_rdata[10]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(10),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(10),
      I4 => data10(10),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[10]_i_5_n_0\
    );
\sbus_rdata[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(10),
      O => \sbus_rdata[10]_i_6_n_0\
    );
\sbus_rdata[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(10),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(10),
      I4 => data1(10),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[10]_i_7_n_0\
    );
\sbus_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[11]_i_2_n_0\,
      I1 => \sbus_rdata[11]_i_3_n_0\,
      I2 => \sbus_rdata[11]_i_4_n_0\,
      I3 => \sbus_rdata[11]_i_5_n_0\,
      I4 => \sbus_rdata[11]_i_6_n_0\,
      I5 => \sbus_rdata[11]_i_7_n_0\,
      O => \sbus_rdata[11]_i_1_n_0\
    );
\sbus_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(11),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(11),
      I4 => data4(11),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[11]_i_2_n_0\
    );
\sbus_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(11),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(11),
      I4 => data7(11),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[11]_i_3_n_0\
    );
\sbus_rdata[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[11]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(11),
      I4 => data13(11),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[11]_i_4_n_0\
    );
\sbus_rdata[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(11),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(11),
      I4 => data10(11),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[11]_i_5_n_0\
    );
\sbus_rdata[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(11),
      O => \sbus_rdata[11]_i_6_n_0\
    );
\sbus_rdata[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(11),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(11),
      I4 => data1(11),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[11]_i_7_n_0\
    );
\sbus_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[12]_i_2_n_0\,
      I1 => \sbus_rdata[12]_i_3_n_0\,
      I2 => \sbus_rdata[12]_i_4_n_0\,
      I3 => \sbus_rdata[12]_i_5_n_0\,
      I4 => \sbus_rdata[12]_i_6_n_0\,
      I5 => \sbus_rdata[12]_i_7_n_0\,
      O => \sbus_rdata[12]_i_1_n_0\
    );
\sbus_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(12),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(12),
      I4 => data4(12),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[12]_i_2_n_0\
    );
\sbus_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(12),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(12),
      I4 => data7(12),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[12]_i_3_n_0\
    );
\sbus_rdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[12]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(12),
      I4 => data13(12),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[12]_i_4_n_0\
    );
\sbus_rdata[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(12),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(12),
      I4 => data10(12),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[12]_i_5_n_0\
    );
\sbus_rdata[12]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(12),
      O => \sbus_rdata[12]_i_6_n_0\
    );
\sbus_rdata[12]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(12),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(12),
      I4 => data1(12),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[12]_i_7_n_0\
    );
\sbus_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[13]_i_2_n_0\,
      I1 => \sbus_rdata[13]_i_3_n_0\,
      I2 => \sbus_rdata[13]_i_4_n_0\,
      I3 => \sbus_rdata[13]_i_5_n_0\,
      I4 => \sbus_rdata[13]_i_6_n_0\,
      I5 => \sbus_rdata[13]_i_7_n_0\,
      O => \sbus_rdata[13]_i_1_n_0\
    );
\sbus_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(13),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(13),
      I4 => data4(13),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[13]_i_2_n_0\
    );
\sbus_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(13),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(13),
      I4 => data7(13),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[13]_i_3_n_0\
    );
\sbus_rdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[13]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(13),
      I4 => data13(13),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[13]_i_4_n_0\
    );
\sbus_rdata[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(13),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(13),
      I4 => data10(13),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[13]_i_5_n_0\
    );
\sbus_rdata[13]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(13),
      O => \sbus_rdata[13]_i_6_n_0\
    );
\sbus_rdata[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(13),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(13),
      I4 => data1(13),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[13]_i_7_n_0\
    );
\sbus_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[14]_i_2_n_0\,
      I1 => \sbus_rdata[14]_i_3_n_0\,
      I2 => \sbus_rdata[14]_i_4_n_0\,
      I3 => \sbus_rdata[14]_i_5_n_0\,
      I4 => \sbus_rdata[14]_i_6_n_0\,
      I5 => \sbus_rdata[14]_i_7_n_0\,
      O => \sbus_rdata[14]_i_1_n_0\
    );
\sbus_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(14),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(14),
      I4 => data4(14),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[14]_i_2_n_0\
    );
\sbus_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(14),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(14),
      I4 => data7(14),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[14]_i_3_n_0\
    );
\sbus_rdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[14]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(14),
      I4 => data13(14),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[14]_i_4_n_0\
    );
\sbus_rdata[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(14),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(14),
      I4 => data10(14),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[14]_i_5_n_0\
    );
\sbus_rdata[14]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(14),
      O => \sbus_rdata[14]_i_6_n_0\
    );
\sbus_rdata[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(14),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(14),
      I4 => data1(14),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[14]_i_7_n_0\
    );
\sbus_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[15]_i_2_n_0\,
      I1 => \sbus_rdata[15]_i_3_n_0\,
      I2 => \sbus_rdata[15]_i_4_n_0\,
      I3 => \sbus_rdata[15]_i_5_n_0\,
      I4 => \sbus_rdata[15]_i_6_n_0\,
      I5 => \sbus_rdata[15]_i_7_n_0\,
      O => \sbus_rdata[15]_i_1_n_0\
    );
\sbus_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(15),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(15),
      I4 => data4(15),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[15]_i_2_n_0\
    );
\sbus_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(15),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(15),
      I4 => data7(15),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[15]_i_3_n_0\
    );
\sbus_rdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[15]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(15),
      I4 => data13(15),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[15]_i_4_n_0\
    );
\sbus_rdata[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(15),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(15),
      I4 => data10(15),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[15]_i_5_n_0\
    );
\sbus_rdata[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(15),
      O => \sbus_rdata[15]_i_6_n_0\
    );
\sbus_rdata[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(15),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(15),
      I4 => data1(15),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[15]_i_7_n_0\
    );
\sbus_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[16]_i_2_n_0\,
      I1 => \sbus_rdata[16]_i_3_n_0\,
      I2 => \sbus_rdata[16]_i_4_n_0\,
      I3 => \sbus_rdata[16]_i_5_n_0\,
      I4 => \sbus_rdata[16]_i_6_n_0\,
      I5 => \sbus_rdata[16]_i_7_n_0\,
      O => \sbus_rdata[16]_i_1_n_0\
    );
\sbus_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(16),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(16),
      I4 => data4(16),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[16]_i_2_n_0\
    );
\sbus_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(16),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(16),
      I4 => data7(16),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[16]_i_3_n_0\
    );
\sbus_rdata[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[16]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(16),
      I4 => data13(16),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[16]_i_4_n_0\
    );
\sbus_rdata[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(16),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(16),
      I4 => data10(16),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[16]_i_5_n_0\
    );
\sbus_rdata[16]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(16),
      O => \sbus_rdata[16]_i_6_n_0\
    );
\sbus_rdata[16]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(16),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(16),
      I4 => data1(16),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[16]_i_7_n_0\
    );
\sbus_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[17]_i_2_n_0\,
      I1 => \sbus_rdata[17]_i_3_n_0\,
      I2 => \sbus_rdata[17]_i_4_n_0\,
      I3 => \sbus_rdata[17]_i_5_n_0\,
      I4 => \sbus_rdata[17]_i_6_n_0\,
      I5 => \sbus_rdata[17]_i_7_n_0\,
      O => \sbus_rdata[17]_i_1_n_0\
    );
\sbus_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(17),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(17),
      I4 => data4(17),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[17]_i_2_n_0\
    );
\sbus_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(17),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(17),
      I4 => data7(17),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[17]_i_3_n_0\
    );
\sbus_rdata[17]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[17]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(17),
      I4 => data13(17),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[17]_i_4_n_0\
    );
\sbus_rdata[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(17),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(17),
      I4 => data10(17),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[17]_i_5_n_0\
    );
\sbus_rdata[17]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(17),
      O => \sbus_rdata[17]_i_6_n_0\
    );
\sbus_rdata[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(17),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(17),
      I4 => data1(17),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[17]_i_7_n_0\
    );
\sbus_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[18]_i_2_n_0\,
      I1 => \sbus_rdata[18]_i_3_n_0\,
      I2 => \sbus_rdata[18]_i_4_n_0\,
      I3 => \sbus_rdata[18]_i_5_n_0\,
      I4 => \sbus_rdata[18]_i_6_n_0\,
      I5 => \sbus_rdata[18]_i_7_n_0\,
      O => \sbus_rdata[18]_i_1_n_0\
    );
\sbus_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(18),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(18),
      I4 => data4(18),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[18]_i_2_n_0\
    );
\sbus_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(18),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(18),
      I4 => data7(18),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[18]_i_3_n_0\
    );
\sbus_rdata[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[18]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(18),
      I4 => data13(18),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[18]_i_4_n_0\
    );
\sbus_rdata[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(18),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(18),
      I4 => data10(18),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[18]_i_5_n_0\
    );
\sbus_rdata[18]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(18),
      O => \sbus_rdata[18]_i_6_n_0\
    );
\sbus_rdata[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(18),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(18),
      I4 => data1(18),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[18]_i_7_n_0\
    );
\sbus_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[19]_i_2_n_0\,
      I1 => \sbus_rdata[19]_i_3_n_0\,
      I2 => \sbus_rdata[19]_i_4_n_0\,
      I3 => \sbus_rdata[19]_i_5_n_0\,
      I4 => \sbus_rdata[19]_i_6_n_0\,
      I5 => \sbus_rdata[19]_i_7_n_0\,
      O => \sbus_rdata[19]_i_1_n_0\
    );
\sbus_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(19),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(19),
      I4 => data4(19),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[19]_i_2_n_0\
    );
\sbus_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(19),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(19),
      I4 => data7(19),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[19]_i_3_n_0\
    );
\sbus_rdata[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[19]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(19),
      I4 => data13(19),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[19]_i_4_n_0\
    );
\sbus_rdata[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(19),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(19),
      I4 => data10(19),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[19]_i_5_n_0\
    );
\sbus_rdata[19]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(19),
      O => \sbus_rdata[19]_i_6_n_0\
    );
\sbus_rdata[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(19),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(19),
      I4 => data1(19),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[19]_i_7_n_0\
    );
\sbus_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[1]_i_2_n_0\,
      I1 => \sbus_rdata[1]_i_3_n_0\,
      I2 => \sbus_rdata[1]_i_4_n_0\,
      I3 => \sbus_rdata[1]_i_5_n_0\,
      I4 => \sbus_rdata[1]_i_6_n_0\,
      I5 => \sbus_rdata[1]_i_7_n_0\,
      O => \sbus_rdata[1]_i_1_n_0\
    );
\sbus_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(1),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(1),
      I4 => data4(1),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[1]_i_2_n_0\
    );
\sbus_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(1),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(1),
      I4 => data7(1),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[1]_i_3_n_0\
    );
\sbus_rdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[1]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(1),
      I4 => data13(1),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[1]_i_4_n_0\
    );
\sbus_rdata[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(1),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(1),
      I4 => data10(1),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[1]_i_5_n_0\
    );
\sbus_rdata[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(1),
      O => \sbus_rdata[1]_i_6_n_0\
    );
\sbus_rdata[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(1),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(1),
      I4 => data1(1),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[1]_i_7_n_0\
    );
\sbus_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[20]_i_2_n_0\,
      I1 => \sbus_rdata[20]_i_3_n_0\,
      I2 => \sbus_rdata[20]_i_4_n_0\,
      I3 => \sbus_rdata[20]_i_5_n_0\,
      I4 => \sbus_rdata[20]_i_6_n_0\,
      I5 => \sbus_rdata[20]_i_7_n_0\,
      O => \sbus_rdata[20]_i_1_n_0\
    );
\sbus_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(20),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(20),
      I4 => data4(20),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[20]_i_2_n_0\
    );
\sbus_rdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(20),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(20),
      I4 => data7(20),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[20]_i_3_n_0\
    );
\sbus_rdata[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[20]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(20),
      I4 => data13(20),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[20]_i_4_n_0\
    );
\sbus_rdata[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(20),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(20),
      I4 => data10(20),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[20]_i_5_n_0\
    );
\sbus_rdata[20]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(20),
      O => \sbus_rdata[20]_i_6_n_0\
    );
\sbus_rdata[20]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(20),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(20),
      I4 => data1(20),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[20]_i_7_n_0\
    );
\sbus_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[21]_i_2_n_0\,
      I1 => \sbus_rdata[21]_i_3_n_0\,
      I2 => \sbus_rdata[21]_i_4_n_0\,
      I3 => \sbus_rdata[21]_i_5_n_0\,
      I4 => \sbus_rdata[21]_i_6_n_0\,
      I5 => \sbus_rdata[21]_i_7_n_0\,
      O => \sbus_rdata[21]_i_1_n_0\
    );
\sbus_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(21),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(21),
      I4 => data4(21),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[21]_i_2_n_0\
    );
\sbus_rdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(21),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(21),
      I4 => data7(21),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[21]_i_3_n_0\
    );
\sbus_rdata[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[21]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(21),
      I4 => data13(21),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[21]_i_4_n_0\
    );
\sbus_rdata[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(21),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(21),
      I4 => data10(21),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[21]_i_5_n_0\
    );
\sbus_rdata[21]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(21),
      O => \sbus_rdata[21]_i_6_n_0\
    );
\sbus_rdata[21]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(21),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(21),
      I4 => data1(21),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[21]_i_7_n_0\
    );
\sbus_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[22]_i_2_n_0\,
      I1 => \sbus_rdata[22]_i_3_n_0\,
      I2 => \sbus_rdata[22]_i_4_n_0\,
      I3 => \sbus_rdata[22]_i_5_n_0\,
      I4 => \sbus_rdata[22]_i_6_n_0\,
      I5 => \sbus_rdata[22]_i_7_n_0\,
      O => \sbus_rdata[22]_i_1_n_0\
    );
\sbus_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(22),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(22),
      I4 => data4(22),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[22]_i_2_n_0\
    );
\sbus_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(22),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(22),
      I4 => data7(22),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[22]_i_3_n_0\
    );
\sbus_rdata[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[22]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(22),
      I4 => data13(22),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[22]_i_4_n_0\
    );
\sbus_rdata[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(22),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(22),
      I4 => data10(22),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[22]_i_5_n_0\
    );
\sbus_rdata[22]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(22),
      O => \sbus_rdata[22]_i_6_n_0\
    );
\sbus_rdata[22]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(22),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(22),
      I4 => data1(22),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[22]_i_7_n_0\
    );
\sbus_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[23]_i_2_n_0\,
      I1 => \sbus_rdata[23]_i_3_n_0\,
      I2 => \sbus_rdata[23]_i_4_n_0\,
      I3 => \sbus_rdata[23]_i_5_n_0\,
      I4 => \sbus_rdata[23]_i_6_n_0\,
      I5 => \sbus_rdata[23]_i_7_n_0\,
      O => \sbus_rdata[23]_i_1_n_0\
    );
\sbus_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(23),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(23),
      I4 => data4(23),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[23]_i_2_n_0\
    );
\sbus_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(23),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(23),
      I4 => data7(23),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[23]_i_3_n_0\
    );
\sbus_rdata[23]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[23]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(23),
      I4 => data13(23),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[23]_i_4_n_0\
    );
\sbus_rdata[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(23),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(23),
      I4 => data10(23),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[23]_i_5_n_0\
    );
\sbus_rdata[23]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(23),
      O => \sbus_rdata[23]_i_6_n_0\
    );
\sbus_rdata[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(23),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(23),
      I4 => data1(23),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[23]_i_7_n_0\
    );
\sbus_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[24]_i_2_n_0\,
      I1 => \sbus_rdata[24]_i_3_n_0\,
      I2 => \sbus_rdata[24]_i_4_n_0\,
      I3 => \sbus_rdata[24]_i_5_n_0\,
      I4 => \sbus_rdata[24]_i_6_n_0\,
      I5 => \sbus_rdata[24]_i_7_n_0\,
      O => \sbus_rdata[24]_i_1_n_0\
    );
\sbus_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(24),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(24),
      I4 => data4(24),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[24]_i_2_n_0\
    );
\sbus_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(24),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(24),
      I4 => data7(24),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[24]_i_3_n_0\
    );
\sbus_rdata[24]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[24]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(24),
      I4 => data13(24),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[24]_i_4_n_0\
    );
\sbus_rdata[24]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(24),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(24),
      I4 => data10(24),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[24]_i_5_n_0\
    );
\sbus_rdata[24]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(24),
      O => \sbus_rdata[24]_i_6_n_0\
    );
\sbus_rdata[24]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(24),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(24),
      I4 => data1(24),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[24]_i_7_n_0\
    );
\sbus_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[25]_i_2_n_0\,
      I1 => \sbus_rdata[25]_i_3_n_0\,
      I2 => \sbus_rdata[25]_i_4_n_0\,
      I3 => \sbus_rdata[25]_i_5_n_0\,
      I4 => \sbus_rdata[25]_i_6_n_0\,
      I5 => \sbus_rdata[25]_i_7_n_0\,
      O => \sbus_rdata[25]_i_1_n_0\
    );
\sbus_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(25),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(25),
      I4 => data4(25),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[25]_i_2_n_0\
    );
\sbus_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(25),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(25),
      I4 => data7(25),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[25]_i_3_n_0\
    );
\sbus_rdata[25]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[25]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(25),
      I4 => data13(25),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[25]_i_4_n_0\
    );
\sbus_rdata[25]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(25),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(25),
      I4 => data10(25),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[25]_i_5_n_0\
    );
\sbus_rdata[25]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(25),
      O => \sbus_rdata[25]_i_6_n_0\
    );
\sbus_rdata[25]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(25),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(25),
      I4 => data1(25),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[25]_i_7_n_0\
    );
\sbus_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[26]_i_2_n_0\,
      I1 => \sbus_rdata[26]_i_3_n_0\,
      I2 => \sbus_rdata[26]_i_4_n_0\,
      I3 => \sbus_rdata[26]_i_5_n_0\,
      I4 => \sbus_rdata[26]_i_6_n_0\,
      I5 => \sbus_rdata[26]_i_7_n_0\,
      O => \sbus_rdata[26]_i_1_n_0\
    );
\sbus_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(26),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(26),
      I4 => data4(26),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[26]_i_2_n_0\
    );
\sbus_rdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(26),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(26),
      I4 => data7(26),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[26]_i_3_n_0\
    );
\sbus_rdata[26]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[26]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(26),
      I4 => data13(26),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[26]_i_4_n_0\
    );
\sbus_rdata[26]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(26),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(26),
      I4 => data10(26),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[26]_i_5_n_0\
    );
\sbus_rdata[26]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(26),
      O => \sbus_rdata[26]_i_6_n_0\
    );
\sbus_rdata[26]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(26),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(26),
      I4 => data1(26),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[26]_i_7_n_0\
    );
\sbus_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[27]_i_2_n_0\,
      I1 => \sbus_rdata[27]_i_3_n_0\,
      I2 => \sbus_rdata[27]_i_4_n_0\,
      I3 => \sbus_rdata[27]_i_5_n_0\,
      I4 => \sbus_rdata[27]_i_6_n_0\,
      I5 => \sbus_rdata[27]_i_7_n_0\,
      O => \sbus_rdata[27]_i_1_n_0\
    );
\sbus_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(27),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(27),
      I4 => data4(27),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[27]_i_2_n_0\
    );
\sbus_rdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(27),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(27),
      I4 => data7(27),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[27]_i_3_n_0\
    );
\sbus_rdata[27]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[27]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(27),
      I4 => data13(27),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[27]_i_4_n_0\
    );
\sbus_rdata[27]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(27),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(27),
      I4 => data10(27),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[27]_i_5_n_0\
    );
\sbus_rdata[27]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(27),
      O => \sbus_rdata[27]_i_6_n_0\
    );
\sbus_rdata[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(27),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(27),
      I4 => data1(27),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[27]_i_7_n_0\
    );
\sbus_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[28]_i_2_n_0\,
      I1 => \sbus_rdata[28]_i_3_n_0\,
      I2 => \sbus_rdata[28]_i_4_n_0\,
      I3 => \sbus_rdata[28]_i_5_n_0\,
      I4 => \sbus_rdata[28]_i_6_n_0\,
      I5 => \sbus_rdata[28]_i_7_n_0\,
      O => \sbus_rdata[28]_i_1_n_0\
    );
\sbus_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(28),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(28),
      I4 => data4(28),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[28]_i_2_n_0\
    );
\sbus_rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(28),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(28),
      I4 => data7(28),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[28]_i_3_n_0\
    );
\sbus_rdata[28]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[28]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(28),
      I4 => data13(28),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[28]_i_4_n_0\
    );
\sbus_rdata[28]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(28),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(28),
      I4 => data10(28),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[28]_i_5_n_0\
    );
\sbus_rdata[28]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(28),
      O => \sbus_rdata[28]_i_6_n_0\
    );
\sbus_rdata[28]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(28),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(28),
      I4 => data1(28),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[28]_i_7_n_0\
    );
\sbus_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[29]_i_2_n_0\,
      I1 => \sbus_rdata[29]_i_3_n_0\,
      I2 => \sbus_rdata[29]_i_4_n_0\,
      I3 => \sbus_rdata[29]_i_5_n_0\,
      I4 => \sbus_rdata[29]_i_6_n_0\,
      I5 => \sbus_rdata[29]_i_7_n_0\,
      O => \sbus_rdata[29]_i_1_n_0\
    );
\sbus_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(29),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(29),
      I4 => data4(29),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[29]_i_2_n_0\
    );
\sbus_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(29),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(29),
      I4 => data7(29),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[29]_i_3_n_0\
    );
\sbus_rdata[29]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[29]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(29),
      I4 => data13(29),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[29]_i_4_n_0\
    );
\sbus_rdata[29]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(29),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(29),
      I4 => data10(29),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[29]_i_5_n_0\
    );
\sbus_rdata[29]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(29),
      O => \sbus_rdata[29]_i_6_n_0\
    );
\sbus_rdata[29]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(29),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(29),
      I4 => data1(29),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[29]_i_7_n_0\
    );
\sbus_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[2]_i_2_n_0\,
      I1 => \sbus_rdata[2]_i_3_n_0\,
      I2 => \sbus_rdata[2]_i_4_n_0\,
      I3 => \sbus_rdata[2]_i_5_n_0\,
      I4 => \sbus_rdata[2]_i_6_n_0\,
      I5 => \sbus_rdata[2]_i_7_n_0\,
      O => \sbus_rdata[2]_i_1_n_0\
    );
\sbus_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(2),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(2),
      I4 => data4(2),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[2]_i_2_n_0\
    );
\sbus_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(2),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(2),
      I4 => data7(2),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[2]_i_3_n_0\
    );
\sbus_rdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[2]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(2),
      I4 => data13(2),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[2]_i_4_n_0\
    );
\sbus_rdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(2),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(2),
      I4 => data10(2),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[2]_i_5_n_0\
    );
\sbus_rdata[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(2),
      O => \sbus_rdata[2]_i_6_n_0\
    );
\sbus_rdata[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(2),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(2),
      I4 => data1(2),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[2]_i_7_n_0\
    );
\sbus_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[30]_i_2_n_0\,
      I1 => \sbus_rdata[30]_i_3_n_0\,
      I2 => \sbus_rdata[30]_i_4_n_0\,
      I3 => \sbus_rdata[30]_i_5_n_0\,
      I4 => \sbus_rdata[30]_i_6_n_0\,
      I5 => \sbus_rdata[30]_i_7_n_0\,
      O => \sbus_rdata[30]_i_1_n_0\
    );
\sbus_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(30),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(30),
      I4 => data4(30),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[30]_i_2_n_0\
    );
\sbus_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(30),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(30),
      I4 => data7(30),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[30]_i_3_n_0\
    );
\sbus_rdata[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[30]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(30),
      I4 => data13(30),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[30]_i_4_n_0\
    );
\sbus_rdata[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(30),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(30),
      I4 => data10(30),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[30]_i_5_n_0\
    );
\sbus_rdata[30]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(30),
      O => \sbus_rdata[30]_i_6_n_0\
    );
\sbus_rdata[30]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(30),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(30),
      I4 => data1(30),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[30]_i_7_n_0\
    );
\sbus_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[31]_i_2_n_0\,
      I1 => \sbus_rdata[31]_i_3_n_0\,
      I2 => \sbus_rdata[31]_i_4_n_0\,
      I3 => \sbus_rdata[31]_i_5_n_0\,
      I4 => \sbus_rdata[31]_i_6_n_0\,
      I5 => \sbus_rdata[31]_i_7_n_0\,
      O => \sbus_rdata[31]_i_1_n_0\
    );
\sbus_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(31),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(31),
      I4 => data4(31),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[31]_i_2_n_0\
    );
\sbus_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(31),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(31),
      I4 => data7(31),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[31]_i_3_n_0\
    );
\sbus_rdata[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[31]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(31),
      I4 => data13(31),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[31]_i_4_n_0\
    );
\sbus_rdata[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(31),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(31),
      I4 => data10(31),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[31]_i_5_n_0\
    );
\sbus_rdata[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(31),
      O => \sbus_rdata[31]_i_6_n_0\
    );
\sbus_rdata[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(31),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(31),
      I4 => data1(31),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[31]_i_7_n_0\
    );
\sbus_rdata[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sbus_addr(3),
      I1 => \reg[483]_i_3_n_0\,
      I2 => \reg[483]_i_4_n_0\,
      I3 => \reg[483]_i_5_n_0\,
      I4 => sbus_addr(2),
      I5 => \reg[319]_i_3_n_0\,
      O => \sbus_rdata[31]_i_8_n_0\
    );
\sbus_rdata[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => sbus_addr(3),
      I1 => \reg[483]_i_3_n_0\,
      I2 => \reg[483]_i_4_n_0\,
      I3 => \reg[483]_i_5_n_0\,
      I4 => sbus_addr(2),
      I5 => \reg[351]_i_3_n_0\,
      O => \sbus_rdata[31]_i_9_n_0\
    );
\sbus_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[3]_i_2_n_0\,
      I1 => \sbus_rdata[3]_i_3_n_0\,
      I2 => \sbus_rdata[3]_i_4_n_0\,
      I3 => \sbus_rdata[3]_i_5_n_0\,
      I4 => \sbus_rdata[3]_i_6_n_0\,
      I5 => \sbus_rdata[3]_i_7_n_0\,
      O => \sbus_rdata[3]_i_1_n_0\
    );
\sbus_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(3),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(3),
      I4 => data4(3),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[3]_i_2_n_0\
    );
\sbus_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(3),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(3),
      I4 => data7(3),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[3]_i_3_n_0\
    );
\sbus_rdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[3]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(3),
      I4 => data13(3),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[3]_i_4_n_0\
    );
\sbus_rdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(3),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(3),
      I4 => data10(3),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[3]_i_5_n_0\
    );
\sbus_rdata[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(3),
      O => \sbus_rdata[3]_i_6_n_0\
    );
\sbus_rdata[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(3),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(3),
      I4 => data1(3),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[3]_i_7_n_0\
    );
\sbus_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[4]_i_2_n_0\,
      I1 => \sbus_rdata[4]_i_3_n_0\,
      I2 => \sbus_rdata[4]_i_4_n_0\,
      I3 => \sbus_rdata[4]_i_5_n_0\,
      I4 => \sbus_rdata[4]_i_6_n_0\,
      I5 => \sbus_rdata[4]_i_7_n_0\,
      O => \sbus_rdata[4]_i_1_n_0\
    );
\sbus_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(4),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(4),
      I4 => data4(4),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[4]_i_2_n_0\
    );
\sbus_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(4),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(4),
      I4 => data7(4),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[4]_i_3_n_0\
    );
\sbus_rdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[4]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(4),
      I4 => data13(4),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[4]_i_4_n_0\
    );
\sbus_rdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(4),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(4),
      I4 => data10(4),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[4]_i_5_n_0\
    );
\sbus_rdata[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(4),
      O => \sbus_rdata[4]_i_6_n_0\
    );
\sbus_rdata[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(4),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(4),
      I4 => data1(4),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[4]_i_7_n_0\
    );
\sbus_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[5]_i_2_n_0\,
      I1 => \sbus_rdata[5]_i_3_n_0\,
      I2 => \sbus_rdata[5]_i_4_n_0\,
      I3 => \sbus_rdata[5]_i_5_n_0\,
      I4 => \sbus_rdata[5]_i_6_n_0\,
      I5 => \sbus_rdata[5]_i_7_n_0\,
      O => \sbus_rdata[5]_i_1_n_0\
    );
\sbus_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(5),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(5),
      I4 => data4(5),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[5]_i_2_n_0\
    );
\sbus_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(5),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(5),
      I4 => data7(5),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[5]_i_3_n_0\
    );
\sbus_rdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[5]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(5),
      I4 => data13(5),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[5]_i_4_n_0\
    );
\sbus_rdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(5),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(5),
      I4 => data10(5),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[5]_i_5_n_0\
    );
\sbus_rdata[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(5),
      O => \sbus_rdata[5]_i_6_n_0\
    );
\sbus_rdata[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(5),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(5),
      I4 => data1(5),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[5]_i_7_n_0\
    );
\sbus_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[6]_i_2_n_0\,
      I1 => \sbus_rdata[6]_i_3_n_0\,
      I2 => \sbus_rdata[6]_i_4_n_0\,
      I3 => \sbus_rdata[6]_i_5_n_0\,
      I4 => \sbus_rdata[6]_i_6_n_0\,
      I5 => \sbus_rdata[6]_i_7_n_0\,
      O => \sbus_rdata[6]_i_1_n_0\
    );
\sbus_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(6),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(6),
      I4 => data4(6),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[6]_i_2_n_0\
    );
\sbus_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(6),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(6),
      I4 => data7(6),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[6]_i_3_n_0\
    );
\sbus_rdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[6]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(6),
      I4 => data13(6),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[6]_i_4_n_0\
    );
\sbus_rdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(6),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(6),
      I4 => data10(6),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[6]_i_5_n_0\
    );
\sbus_rdata[6]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(6),
      O => \sbus_rdata[6]_i_6_n_0\
    );
\sbus_rdata[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(6),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(6),
      I4 => data1(6),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[6]_i_7_n_0\
    );
\sbus_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[7]_i_2_n_0\,
      I1 => \sbus_rdata[7]_i_3_n_0\,
      I2 => \sbus_rdata[7]_i_4_n_0\,
      I3 => \sbus_rdata[7]_i_5_n_0\,
      I4 => \sbus_rdata[7]_i_6_n_0\,
      I5 => \sbus_rdata[7]_i_7_n_0\,
      O => \sbus_rdata[7]_i_1_n_0\
    );
\sbus_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(7),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(7),
      I4 => data4(7),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[7]_i_2_n_0\
    );
\sbus_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(7),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(7),
      I4 => data7(7),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[7]_i_3_n_0\
    );
\sbus_rdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[7]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(7),
      I4 => data13(7),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[7]_i_4_n_0\
    );
\sbus_rdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(7),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(7),
      I4 => data10(7),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[7]_i_5_n_0\
    );
\sbus_rdata[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(7),
      O => \sbus_rdata[7]_i_6_n_0\
    );
\sbus_rdata[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(7),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(7),
      I4 => data1(7),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[7]_i_7_n_0\
    );
\sbus_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[8]_i_2_n_0\,
      I1 => \sbus_rdata[8]_i_3_n_0\,
      I2 => \sbus_rdata[8]_i_4_n_0\,
      I3 => \sbus_rdata[8]_i_5_n_0\,
      I4 => \sbus_rdata[8]_i_6_n_0\,
      I5 => \sbus_rdata[8]_i_7_n_0\,
      O => \sbus_rdata[8]_i_1_n_0\
    );
\sbus_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(8),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(8),
      I4 => data4(8),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[8]_i_2_n_0\
    );
\sbus_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(8),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(8),
      I4 => data7(8),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[8]_i_3_n_0\
    );
\sbus_rdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[8]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(8),
      I4 => data13(8),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[8]_i_4_n_0\
    );
\sbus_rdata[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(8),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(8),
      I4 => data10(8),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[8]_i_5_n_0\
    );
\sbus_rdata[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(8),
      O => \sbus_rdata[8]_i_6_n_0\
    );
\sbus_rdata[8]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(8),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(8),
      I4 => data1(8),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[8]_i_7_n_0\
    );
\sbus_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \sbus_rdata[9]_i_2_n_0\,
      I1 => \sbus_rdata[9]_i_3_n_0\,
      I2 => \sbus_rdata[9]_i_4_n_0\,
      I3 => \sbus_rdata[9]_i_5_n_0\,
      I4 => \sbus_rdata[9]_i_6_n_0\,
      I5 => \sbus_rdata[9]_i_7_n_0\,
      O => \sbus_rdata[9]_i_1_n_0\
    );
\sbus_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[319]_i_2_n_0\,
      I1 => data6(9),
      I2 => \reg[351]_i_2_n_0\,
      I3 => data5(9),
      I4 => data4(9),
      I5 => \reg[383]_i_2_n_0\,
      O => \sbus_rdata[9]_i_2_n_0\
    );
\sbus_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[223]_i_2_n_0\,
      I1 => data9(9),
      I2 => \reg[255]_i_2_n_0\,
      I3 => data8(9),
      I4 => data7(9),
      I5 => \reg[287]_i_2_n_0\,
      O => \sbus_rdata[9]_i_3_n_0\
    );
\sbus_rdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg_din_reg_n_0_[9]\,
      I2 => \reg[63]_i_2_n_0\,
      I3 => data14(9),
      I4 => data13(9),
      I5 => \reg[95]_i_2_n_0\,
      O => \sbus_rdata[9]_i_4_n_0\
    );
\sbus_rdata[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[127]_i_2_n_0\,
      I1 => data12(9),
      I2 => \reg[159]_i_2_n_0\,
      I3 => data11(9),
      I4 => data10(9),
      I5 => \reg[191]_i_2_n_0\,
      O => \sbus_rdata[9]_i_5_n_0\
    );
\sbus_rdata[9]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \reg[483]_i_2_n_0\,
      I1 => data0(9),
      O => \sbus_rdata[9]_i_6_n_0\
    );
\sbus_rdata[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \reg[415]_i_2_n_0\,
      I1 => data3(9),
      I2 => \sbus_rdata[31]_i_8_n_0\,
      I3 => data2(9),
      I4 => data1(9),
      I5 => \sbus_rdata[31]_i_9_n_0\,
      O => \sbus_rdata[9]_i_7_n_0\
    );
\sbus_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[0]_i_1_n_0\,
      Q => sbus_rdata(0),
      R => '0'
    );
\sbus_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[10]_i_1_n_0\,
      Q => sbus_rdata(10),
      R => '0'
    );
\sbus_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[11]_i_1_n_0\,
      Q => sbus_rdata(11),
      R => '0'
    );
\sbus_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[12]_i_1_n_0\,
      Q => sbus_rdata(12),
      R => '0'
    );
\sbus_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[13]_i_1_n_0\,
      Q => sbus_rdata(13),
      R => '0'
    );
\sbus_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[14]_i_1_n_0\,
      Q => sbus_rdata(14),
      R => '0'
    );
\sbus_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[15]_i_1_n_0\,
      Q => sbus_rdata(15),
      R => '0'
    );
\sbus_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[16]_i_1_n_0\,
      Q => sbus_rdata(16),
      R => '0'
    );
\sbus_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[17]_i_1_n_0\,
      Q => sbus_rdata(17),
      R => '0'
    );
\sbus_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[18]_i_1_n_0\,
      Q => sbus_rdata(18),
      R => '0'
    );
\sbus_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[19]_i_1_n_0\,
      Q => sbus_rdata(19),
      R => '0'
    );
\sbus_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[1]_i_1_n_0\,
      Q => sbus_rdata(1),
      R => '0'
    );
\sbus_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[20]_i_1_n_0\,
      Q => sbus_rdata(20),
      R => '0'
    );
\sbus_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[21]_i_1_n_0\,
      Q => sbus_rdata(21),
      R => '0'
    );
\sbus_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[22]_i_1_n_0\,
      Q => sbus_rdata(22),
      R => '0'
    );
\sbus_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[23]_i_1_n_0\,
      Q => sbus_rdata(23),
      R => '0'
    );
\sbus_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[24]_i_1_n_0\,
      Q => sbus_rdata(24),
      R => '0'
    );
\sbus_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[25]_i_1_n_0\,
      Q => sbus_rdata(25),
      R => '0'
    );
\sbus_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[26]_i_1_n_0\,
      Q => sbus_rdata(26),
      R => '0'
    );
\sbus_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[27]_i_1_n_0\,
      Q => sbus_rdata(27),
      R => '0'
    );
\sbus_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[28]_i_1_n_0\,
      Q => sbus_rdata(28),
      R => '0'
    );
\sbus_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[29]_i_1_n_0\,
      Q => sbus_rdata(29),
      R => '0'
    );
\sbus_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[2]_i_1_n_0\,
      Q => sbus_rdata(2),
      R => '0'
    );
\sbus_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[30]_i_1_n_0\,
      Q => sbus_rdata(30),
      R => '0'
    );
\sbus_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[31]_i_1_n_0\,
      Q => sbus_rdata(31),
      R => '0'
    );
\sbus_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[3]_i_1_n_0\,
      Q => sbus_rdata(3),
      R => '0'
    );
\sbus_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[4]_i_1_n_0\,
      Q => sbus_rdata(4),
      R => '0'
    );
\sbus_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[5]_i_1_n_0\,
      Q => sbus_rdata(5),
      R => '0'
    );
\sbus_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[6]_i_1_n_0\,
      Q => sbus_rdata(6),
      R => '0'
    );
\sbus_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[7]_i_1_n_0\,
      Q => sbus_rdata(7),
      R => '0'
    );
\sbus_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[8]_i_1_n_0\,
      Q => sbus_rdata(8),
      R => '0'
    );
\sbus_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sbus_rdata[9]_i_1_n_0\,
      Q => sbus_rdata(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_regs is
  port (
    bus_ack : out STD_LOGIC;
    bus_we_q_reg_0 : out STD_LOGIC;
    \reg_din_reg[32]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_din_reg[33]_0\ : out STD_LOGIC;
    \reg_din_reg[34]_0\ : out STD_LOGIC;
    \reg_din_reg[35]_0\ : out STD_LOGIC;
    \reg_din_reg[36]_0\ : out STD_LOGIC;
    \reg_din_reg[37]_0\ : out STD_LOGIC;
    \reg_din_reg[38]_0\ : out STD_LOGIC;
    \reg_din_reg[39]_0\ : out STD_LOGIC;
    \reg_din_reg[40]_0\ : out STD_LOGIC;
    \reg_din_reg[41]_0\ : out STD_LOGIC;
    \reg_din_reg[42]_0\ : out STD_LOGIC;
    \reg_din_reg[43]_0\ : out STD_LOGIC;
    \reg_din_reg[44]_0\ : out STD_LOGIC;
    \reg_din_reg[45]_0\ : out STD_LOGIC;
    \reg_din_reg[46]_0\ : out STD_LOGIC;
    \reg_din_reg[47]_0\ : out STD_LOGIC;
    \reg_din_reg[48]_0\ : out STD_LOGIC;
    \reg_din_reg[49]_0\ : out STD_LOGIC;
    \reg_din_reg[50]_0\ : out STD_LOGIC;
    \reg_din_reg[51]_0\ : out STD_LOGIC;
    \reg_din_reg[52]_0\ : out STD_LOGIC;
    \reg_din_reg[53]_0\ : out STD_LOGIC;
    \reg_din_reg[54]_0\ : out STD_LOGIC;
    \reg_din_reg[55]_0\ : out STD_LOGIC;
    \reg_din_reg[56]_0\ : out STD_LOGIC;
    \reg_din_reg[57]_0\ : out STD_LOGIC;
    \reg_din_reg[58]_0\ : out STD_LOGIC;
    \reg_din_reg[59]_0\ : out STD_LOGIC;
    \reg_din_reg[60]_0\ : out STD_LOGIC;
    \reg_din_reg[61]_0\ : out STD_LOGIC;
    \reg_din_reg[62]_0\ : out STD_LOGIC;
    \reg_din_reg[63]_0\ : out STD_LOGIC;
    reset_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sbus_rdata_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \reg_reg[63]_0\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    sbus_ack0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    bus_we : in STD_LOGIC;
    \sbus_rdata_reg[0]_0\ : in STD_LOGIC;
    \sbus_rdata_reg[0]_1\ : in STD_LOGIC;
    \sbus_rdata_reg[0]_2\ : in STD_LOGIC;
    reset : in STD_LOGIC;
    \bus_din_tmp_reg[0]\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_reg[127]_0\ : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_regs;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_regs is
  signal \^bus_ack\ : STD_LOGIC;
  signal reg : STD_LOGIC_VECTOR ( 127 downto 64 );
  signal reg_din : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal \^reg_reg[63]_0\ : STD_LOGIC_VECTOR ( 63 downto 0 );
begin
  bus_ack <= \^bus_ack\;
  \reg_reg[63]_0\(63 downto 0) <= \^reg_reg[63]_0\(63 downto 0);
\bus_din_tmp[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => reset,
      I1 => \^bus_ack\,
      I2 => \bus_din_tmp_reg[0]\,
      O => reset_0(0)
    );
bus_we_q_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => bus_we,
      Q => bus_we_q_reg_0,
      R => '0'
    );
\reg_din_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(0),
      Q => reg_din(0),
      R => '0'
    );
\reg_din_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(100),
      Q => Q(4),
      R => '0'
    );
\reg_din_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(101),
      Q => Q(5),
      R => '0'
    );
\reg_din_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(102),
      Q => Q(6),
      R => '0'
    );
\reg_din_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(103),
      Q => Q(7),
      R => '0'
    );
\reg_din_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(104),
      Q => Q(8),
      R => '0'
    );
\reg_din_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(105),
      Q => Q(9),
      R => '0'
    );
\reg_din_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(106),
      Q => Q(10),
      R => '0'
    );
\reg_din_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(107),
      Q => Q(11),
      R => '0'
    );
\reg_din_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(108),
      Q => Q(12),
      R => '0'
    );
\reg_din_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(109),
      Q => Q(13),
      R => '0'
    );
\reg_din_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(10),
      Q => reg_din(10),
      R => '0'
    );
\reg_din_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(110),
      Q => Q(14),
      R => '0'
    );
\reg_din_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(111),
      Q => Q(15),
      R => '0'
    );
\reg_din_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(112),
      Q => Q(16),
      R => '0'
    );
\reg_din_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(113),
      Q => Q(17),
      R => '0'
    );
\reg_din_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(114),
      Q => Q(18),
      R => '0'
    );
\reg_din_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(115),
      Q => Q(19),
      R => '0'
    );
\reg_din_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(116),
      Q => Q(20),
      R => '0'
    );
\reg_din_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(117),
      Q => Q(21),
      R => '0'
    );
\reg_din_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(118),
      Q => Q(22),
      R => '0'
    );
\reg_din_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(119),
      Q => Q(23),
      R => '0'
    );
\reg_din_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(11),
      Q => reg_din(11),
      R => '0'
    );
\reg_din_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(120),
      Q => Q(24),
      R => '0'
    );
\reg_din_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(121),
      Q => Q(25),
      R => '0'
    );
\reg_din_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(122),
      Q => Q(26),
      R => '0'
    );
\reg_din_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(123),
      Q => Q(27),
      R => '0'
    );
\reg_din_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(124),
      Q => Q(28),
      R => '0'
    );
\reg_din_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(125),
      Q => Q(29),
      R => '0'
    );
\reg_din_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(126),
      Q => Q(30),
      R => '0'
    );
\reg_din_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(127),
      Q => Q(31),
      R => '0'
    );
\reg_din_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(12),
      Q => reg_din(12),
      R => '0'
    );
\reg_din_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(13),
      Q => reg_din(13),
      R => '0'
    );
\reg_din_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(14),
      Q => reg_din(14),
      R => '0'
    );
\reg_din_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(15),
      Q => reg_din(15),
      R => '0'
    );
\reg_din_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(16),
      Q => reg_din(16),
      R => '0'
    );
\reg_din_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(17),
      Q => reg_din(17),
      R => '0'
    );
\reg_din_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(18),
      Q => reg_din(18),
      R => '0'
    );
\reg_din_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(19),
      Q => reg_din(19),
      R => '0'
    );
\reg_din_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(1),
      Q => reg_din(1),
      R => '0'
    );
\reg_din_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(20),
      Q => reg_din(20),
      R => '0'
    );
\reg_din_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(21),
      Q => reg_din(21),
      R => '0'
    );
\reg_din_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(22),
      Q => reg_din(22),
      R => '0'
    );
\reg_din_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(23),
      Q => reg_din(23),
      R => '0'
    );
\reg_din_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(24),
      Q => reg_din(24),
      R => '0'
    );
\reg_din_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(25),
      Q => reg_din(25),
      R => '0'
    );
\reg_din_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(26),
      Q => reg_din(26),
      R => '0'
    );
\reg_din_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(27),
      Q => reg_din(27),
      R => '0'
    );
\reg_din_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(28),
      Q => reg_din(28),
      R => '0'
    );
\reg_din_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(29),
      Q => reg_din(29),
      R => '0'
    );
\reg_din_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(2),
      Q => reg_din(2),
      R => '0'
    );
\reg_din_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(30),
      Q => reg_din(30),
      R => '0'
    );
\reg_din_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(31),
      Q => reg_din(31),
      R => '0'
    );
\reg_din_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(32),
      Q => reg_din(32),
      R => '0'
    );
\reg_din_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(33),
      Q => reg_din(33),
      R => '0'
    );
\reg_din_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(34),
      Q => reg_din(34),
      R => '0'
    );
\reg_din_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(35),
      Q => reg_din(35),
      R => '0'
    );
\reg_din_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(36),
      Q => reg_din(36),
      R => '0'
    );
\reg_din_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(37),
      Q => reg_din(37),
      R => '0'
    );
\reg_din_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(38),
      Q => reg_din(38),
      R => '0'
    );
\reg_din_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(39),
      Q => reg_din(39),
      R => '0'
    );
\reg_din_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(3),
      Q => reg_din(3),
      R => '0'
    );
\reg_din_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(40),
      Q => reg_din(40),
      R => '0'
    );
\reg_din_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(41),
      Q => reg_din(41),
      R => '0'
    );
\reg_din_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(42),
      Q => reg_din(42),
      R => '0'
    );
\reg_din_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(43),
      Q => reg_din(43),
      R => '0'
    );
\reg_din_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(44),
      Q => reg_din(44),
      R => '0'
    );
\reg_din_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(45),
      Q => reg_din(45),
      R => '0'
    );
\reg_din_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(46),
      Q => reg_din(46),
      R => '0'
    );
\reg_din_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(47),
      Q => reg_din(47),
      R => '0'
    );
\reg_din_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(48),
      Q => reg_din(48),
      R => '0'
    );
\reg_din_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(49),
      Q => reg_din(49),
      R => '0'
    );
\reg_din_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(4),
      Q => reg_din(4),
      R => '0'
    );
\reg_din_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(50),
      Q => reg_din(50),
      R => '0'
    );
\reg_din_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(51),
      Q => reg_din(51),
      R => '0'
    );
\reg_din_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(52),
      Q => reg_din(52),
      R => '0'
    );
\reg_din_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(53),
      Q => reg_din(53),
      R => '0'
    );
\reg_din_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(54),
      Q => reg_din(54),
      R => '0'
    );
\reg_din_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(55),
      Q => reg_din(55),
      R => '0'
    );
\reg_din_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(56),
      Q => reg_din(56),
      R => '0'
    );
\reg_din_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(57),
      Q => reg_din(57),
      R => '0'
    );
\reg_din_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(58),
      Q => reg_din(58),
      R => '0'
    );
\reg_din_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(59),
      Q => reg_din(59),
      R => '0'
    );
\reg_din_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(5),
      Q => reg_din(5),
      R => '0'
    );
\reg_din_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(60),
      Q => reg_din(60),
      R => '0'
    );
\reg_din_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(61),
      Q => reg_din(61),
      R => '0'
    );
\reg_din_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(62),
      Q => reg_din(62),
      R => '0'
    );
\reg_din_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(63),
      Q => reg_din(63),
      R => '0'
    );
\reg_din_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(64),
      Q => reg_din(64),
      R => '0'
    );
\reg_din_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(65),
      Q => reg_din(65),
      R => '0'
    );
\reg_din_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(66),
      Q => reg_din(66),
      R => '0'
    );
\reg_din_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(67),
      Q => reg_din(67),
      R => '0'
    );
\reg_din_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(68),
      Q => reg_din(68),
      R => '0'
    );
\reg_din_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(69),
      Q => reg_din(69),
      R => '0'
    );
\reg_din_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(6),
      Q => reg_din(6),
      R => '0'
    );
\reg_din_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(70),
      Q => reg_din(70),
      R => '0'
    );
\reg_din_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(71),
      Q => reg_din(71),
      R => '0'
    );
\reg_din_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(72),
      Q => reg_din(72),
      R => '0'
    );
\reg_din_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(73),
      Q => reg_din(73),
      R => '0'
    );
\reg_din_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(74),
      Q => reg_din(74),
      R => '0'
    );
\reg_din_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(75),
      Q => reg_din(75),
      R => '0'
    );
\reg_din_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(76),
      Q => reg_din(76),
      R => '0'
    );
\reg_din_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(77),
      Q => reg_din(77),
      R => '0'
    );
\reg_din_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(78),
      Q => reg_din(78),
      R => '0'
    );
\reg_din_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(79),
      Q => reg_din(79),
      R => '0'
    );
\reg_din_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(7),
      Q => reg_din(7),
      R => '0'
    );
\reg_din_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(80),
      Q => reg_din(80),
      R => '0'
    );
\reg_din_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(81),
      Q => reg_din(81),
      R => '0'
    );
\reg_din_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(82),
      Q => reg_din(82),
      R => '0'
    );
\reg_din_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(83),
      Q => reg_din(83),
      R => '0'
    );
\reg_din_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(84),
      Q => reg_din(84),
      R => '0'
    );
\reg_din_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(85),
      Q => reg_din(85),
      R => '0'
    );
\reg_din_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(86),
      Q => reg_din(86),
      R => '0'
    );
\reg_din_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(87),
      Q => reg_din(87),
      R => '0'
    );
\reg_din_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(88),
      Q => reg_din(88),
      R => '0'
    );
\reg_din_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(89),
      Q => reg_din(89),
      R => '0'
    );
\reg_din_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(8),
      Q => reg_din(8),
      R => '0'
    );
\reg_din_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(90),
      Q => reg_din(90),
      R => '0'
    );
\reg_din_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(91),
      Q => reg_din(91),
      R => '0'
    );
\reg_din_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(92),
      Q => reg_din(92),
      R => '0'
    );
\reg_din_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(93),
      Q => reg_din(93),
      R => '0'
    );
\reg_din_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(94),
      Q => reg_din(94),
      R => '0'
    );
\reg_din_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(95),
      Q => reg_din(95),
      R => '0'
    );
\reg_din_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(96),
      Q => Q(0),
      R => '0'
    );
\reg_din_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(97),
      Q => Q(1),
      R => '0'
    );
\reg_din_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(98),
      Q => Q(2),
      R => '0'
    );
\reg_din_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => reg(99),
      Q => Q(3),
      R => '0'
    );
\reg_din_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^reg_reg[63]_0\(9),
      Q => reg_din(9),
      R => '0'
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(0),
      Q => \^reg_reg[63]_0\(0),
      R => reset
    );
\reg_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(36),
      Q => reg(100),
      R => reset
    );
\reg_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(37),
      Q => reg(101),
      R => reset
    );
\reg_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(38),
      Q => reg(102),
      R => reset
    );
\reg_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(39),
      Q => reg(103),
      R => reset
    );
\reg_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(40),
      Q => reg(104),
      R => reset
    );
\reg_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(41),
      Q => reg(105),
      R => reset
    );
\reg_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(42),
      Q => reg(106),
      R => reset
    );
\reg_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(43),
      Q => reg(107),
      R => reset
    );
\reg_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(44),
      Q => reg(108),
      R => reset
    );
\reg_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(45),
      Q => reg(109),
      R => reset
    );
\reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(10),
      Q => \^reg_reg[63]_0\(10),
      R => reset
    );
\reg_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(46),
      Q => reg(110),
      R => reset
    );
\reg_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(47),
      Q => reg(111),
      R => reset
    );
\reg_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(48),
      Q => reg(112),
      R => reset
    );
\reg_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(49),
      Q => reg(113),
      R => reset
    );
\reg_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(50),
      Q => reg(114),
      R => reset
    );
\reg_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(51),
      Q => reg(115),
      R => reset
    );
\reg_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(52),
      Q => reg(116),
      R => reset
    );
\reg_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(53),
      Q => reg(117),
      R => reset
    );
\reg_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(54),
      Q => reg(118),
      R => reset
    );
\reg_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(55),
      Q => reg(119),
      R => reset
    );
\reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(11),
      Q => \^reg_reg[63]_0\(11),
      R => reset
    );
\reg_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(56),
      Q => reg(120),
      R => reset
    );
\reg_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(57),
      Q => reg(121),
      R => reset
    );
\reg_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(58),
      Q => reg(122),
      R => reset
    );
\reg_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(59),
      Q => reg(123),
      R => reset
    );
\reg_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(60),
      Q => reg(124),
      R => reset
    );
\reg_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(61),
      Q => reg(125),
      R => reset
    );
\reg_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(62),
      Q => reg(126),
      R => reset
    );
\reg_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(63),
      Q => reg(127),
      R => reset
    );
\reg_reg[12]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(12),
      Q => \^reg_reg[63]_0\(12),
      S => reset
    );
\reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(13),
      Q => \^reg_reg[63]_0\(13),
      R => reset
    );
\reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(14),
      Q => \^reg_reg[63]_0\(14),
      R => reset
    );
\reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(15),
      Q => \^reg_reg[63]_0\(15),
      R => reset
    );
\reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(16),
      Q => \^reg_reg[63]_0\(16),
      R => reset
    );
\reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(17),
      Q => \^reg_reg[63]_0\(17),
      R => reset
    );
\reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(18),
      Q => \^reg_reg[63]_0\(18),
      R => reset
    );
\reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(19),
      Q => \^reg_reg[63]_0\(19),
      R => reset
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(1),
      Q => \^reg_reg[63]_0\(1),
      R => reset
    );
\reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(20),
      Q => \^reg_reg[63]_0\(20),
      R => reset
    );
\reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(21),
      Q => \^reg_reg[63]_0\(21),
      R => reset
    );
\reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(22),
      Q => \^reg_reg[63]_0\(22),
      R => reset
    );
\reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(23),
      Q => \^reg_reg[63]_0\(23),
      R => reset
    );
\reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(24),
      Q => \^reg_reg[63]_0\(24),
      R => reset
    );
\reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(25),
      Q => \^reg_reg[63]_0\(25),
      R => reset
    );
\reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(26),
      Q => \^reg_reg[63]_0\(26),
      R => reset
    );
\reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(27),
      Q => \^reg_reg[63]_0\(27),
      R => reset
    );
\reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(28),
      Q => \^reg_reg[63]_0\(28),
      R => reset
    );
\reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(29),
      Q => \^reg_reg[63]_0\(29),
      R => reset
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(2),
      Q => \^reg_reg[63]_0\(2),
      R => reset
    );
\reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(30),
      Q => \^reg_reg[63]_0\(30),
      R => reset
    );
\reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(31),
      Q => \^reg_reg[63]_0\(31),
      R => reset
    );
\reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(32),
      Q => \^reg_reg[63]_0\(32),
      R => reset
    );
\reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(33),
      Q => \^reg_reg[63]_0\(33),
      R => reset
    );
\reg_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(34),
      Q => \^reg_reg[63]_0\(34),
      R => reset
    );
\reg_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(35),
      Q => \^reg_reg[63]_0\(35),
      R => reset
    );
\reg_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(36),
      Q => \^reg_reg[63]_0\(36),
      R => reset
    );
\reg_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(37),
      Q => \^reg_reg[63]_0\(37),
      R => reset
    );
\reg_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(38),
      Q => \^reg_reg[63]_0\(38),
      R => reset
    );
\reg_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(39),
      Q => \^reg_reg[63]_0\(39),
      R => reset
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(3),
      Q => \^reg_reg[63]_0\(3),
      R => reset
    );
\reg_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(40),
      Q => \^reg_reg[63]_0\(40),
      R => reset
    );
\reg_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(41),
      Q => \^reg_reg[63]_0\(41),
      R => reset
    );
\reg_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(42),
      Q => \^reg_reg[63]_0\(42),
      R => reset
    );
\reg_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(43),
      Q => \^reg_reg[63]_0\(43),
      R => reset
    );
\reg_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(44),
      Q => \^reg_reg[63]_0\(44),
      R => reset
    );
\reg_reg[45]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(45),
      Q => \^reg_reg[63]_0\(45),
      S => reset
    );
\reg_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(46),
      Q => \^reg_reg[63]_0\(46),
      R => reset
    );
\reg_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(47),
      Q => \^reg_reg[63]_0\(47),
      R => reset
    );
\reg_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(48),
      Q => \^reg_reg[63]_0\(48),
      R => reset
    );
\reg_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(49),
      Q => \^reg_reg[63]_0\(49),
      R => reset
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(4),
      Q => \^reg_reg[63]_0\(4),
      R => reset
    );
\reg_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(50),
      Q => \^reg_reg[63]_0\(50),
      R => reset
    );
\reg_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(51),
      Q => \^reg_reg[63]_0\(51),
      R => reset
    );
\reg_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(52),
      Q => \^reg_reg[63]_0\(52),
      R => reset
    );
\reg_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(53),
      Q => \^reg_reg[63]_0\(53),
      R => reset
    );
\reg_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(54),
      Q => \^reg_reg[63]_0\(54),
      R => reset
    );
\reg_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(55),
      Q => \^reg_reg[63]_0\(55),
      R => reset
    );
\reg_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(56),
      Q => \^reg_reg[63]_0\(56),
      R => reset
    );
\reg_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(57),
      Q => \^reg_reg[63]_0\(57),
      R => reset
    );
\reg_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(58),
      Q => \^reg_reg[63]_0\(58),
      R => reset
    );
\reg_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(59),
      Q => \^reg_reg[63]_0\(59),
      R => reset
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(5),
      Q => \^reg_reg[63]_0\(5),
      R => reset
    );
\reg_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(60),
      Q => \^reg_reg[63]_0\(60),
      R => reset
    );
\reg_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(61),
      Q => \^reg_reg[63]_0\(61),
      R => reset
    );
\reg_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(62),
      Q => \^reg_reg[63]_0\(62),
      R => reset
    );
\reg_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(1),
      D => \reg_reg[127]_0\(63),
      Q => \^reg_reg[63]_0\(63),
      R => reset
    );
\reg_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(32),
      Q => reg(64),
      R => reset
    );
\reg_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(33),
      Q => reg(65),
      R => reset
    );
\reg_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(34),
      Q => reg(66),
      R => reset
    );
\reg_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(35),
      Q => reg(67),
      R => reset
    );
\reg_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(36),
      Q => reg(68),
      R => reset
    );
\reg_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(37),
      Q => reg(69),
      R => reset
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(6),
      Q => \^reg_reg[63]_0\(6),
      R => reset
    );
\reg_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(38),
      Q => reg(70),
      R => reset
    );
\reg_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(39),
      Q => reg(71),
      R => reset
    );
\reg_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(40),
      Q => reg(72),
      R => reset
    );
\reg_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(41),
      Q => reg(73),
      R => reset
    );
\reg_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(42),
      Q => reg(74),
      R => reset
    );
\reg_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(43),
      Q => reg(75),
      R => reset
    );
\reg_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(44),
      Q => reg(76),
      R => reset
    );
\reg_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(45),
      Q => reg(77),
      R => reset
    );
\reg_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(46),
      Q => reg(78),
      R => reset
    );
\reg_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(47),
      Q => reg(79),
      R => reset
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(7),
      Q => \^reg_reg[63]_0\(7),
      R => reset
    );
\reg_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(48),
      Q => reg(80),
      R => reset
    );
\reg_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(49),
      Q => reg(81),
      R => reset
    );
\reg_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(50),
      Q => reg(82),
      R => reset
    );
\reg_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(51),
      Q => reg(83),
      R => reset
    );
\reg_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(52),
      Q => reg(84),
      R => reset
    );
\reg_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(53),
      Q => reg(85),
      R => reset
    );
\reg_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(54),
      Q => reg(86),
      R => reset
    );
\reg_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(55),
      Q => reg(87),
      R => reset
    );
\reg_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(56),
      Q => reg(88),
      R => reset
    );
\reg_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(57),
      Q => reg(89),
      R => reset
    );
\reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(8),
      Q => \^reg_reg[63]_0\(8),
      R => reset
    );
\reg_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(58),
      Q => reg(90),
      R => reset
    );
\reg_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(59),
      Q => reg(91),
      R => reset
    );
\reg_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(60),
      Q => reg(92),
      R => reset
    );
\reg_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(61),
      Q => reg(93),
      R => reset
    );
\reg_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(62),
      Q => reg(94),
      R => reset
    );
\reg_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(2),
      D => \reg_reg[127]_0\(63),
      Q => reg(95),
      R => reset
    );
\reg_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(32),
      Q => reg(96),
      R => reset
    );
\reg_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(33),
      Q => reg(97),
      R => reset
    );
\reg_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(34),
      Q => reg(98),
      R => reset
    );
\reg_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(3),
      D => \reg_reg[127]_0\(35),
      Q => reg(99),
      R => reset
    );
\reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \reg_reg[127]_0\(9),
      Q => \^reg_reg[63]_0\(9),
      R => reset
    );
sbus_ack_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sbus_ack0,
      Q => \^bus_ack\,
      R => '0'
    );
\sbus_rdata[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(32),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(0),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(64),
      O => \reg_din_reg[32]_0\
    );
\sbus_rdata[10]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(42),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(10),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(74),
      O => \reg_din_reg[42]_0\
    );
\sbus_rdata[11]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(43),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(11),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(75),
      O => \reg_din_reg[43]_0\
    );
\sbus_rdata[12]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(44),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(12),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(76),
      O => \reg_din_reg[44]_0\
    );
\sbus_rdata[13]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(45),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(13),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(77),
      O => \reg_din_reg[45]_0\
    );
\sbus_rdata[14]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(46),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(14),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(78),
      O => \reg_din_reg[46]_0\
    );
\sbus_rdata[15]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(47),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(15),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(79),
      O => \reg_din_reg[47]_0\
    );
\sbus_rdata[16]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(48),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(16),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(80),
      O => \reg_din_reg[48]_0\
    );
\sbus_rdata[17]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(49),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(17),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(81),
      O => \reg_din_reg[49]_0\
    );
\sbus_rdata[18]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(50),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(18),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(82),
      O => \reg_din_reg[50]_0\
    );
\sbus_rdata[19]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(51),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(19),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(83),
      O => \reg_din_reg[51]_0\
    );
\sbus_rdata[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(33),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(1),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(65),
      O => \reg_din_reg[33]_0\
    );
\sbus_rdata[20]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(52),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(20),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(84),
      O => \reg_din_reg[52]_0\
    );
\sbus_rdata[21]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(53),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(21),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(85),
      O => \reg_din_reg[53]_0\
    );
\sbus_rdata[22]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(54),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(22),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(86),
      O => \reg_din_reg[54]_0\
    );
\sbus_rdata[23]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(55),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(23),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(87),
      O => \reg_din_reg[55]_0\
    );
\sbus_rdata[24]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(56),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(24),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(88),
      O => \reg_din_reg[56]_0\
    );
\sbus_rdata[25]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(57),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(25),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(89),
      O => \reg_din_reg[57]_0\
    );
\sbus_rdata[26]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(58),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(26),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(90),
      O => \reg_din_reg[58]_0\
    );
\sbus_rdata[27]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(59),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(27),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(91),
      O => \reg_din_reg[59]_0\
    );
\sbus_rdata[28]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(60),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(28),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(92),
      O => \reg_din_reg[60]_0\
    );
\sbus_rdata[29]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(61),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(29),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(93),
      O => \reg_din_reg[61]_0\
    );
\sbus_rdata[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(34),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(2),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(66),
      O => \reg_din_reg[34]_0\
    );
\sbus_rdata[30]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(62),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(30),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(94),
      O => \reg_din_reg[62]_0\
    );
\sbus_rdata[31]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(63),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(31),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(95),
      O => \reg_din_reg[63]_0\
    );
\sbus_rdata[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(35),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(3),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(67),
      O => \reg_din_reg[35]_0\
    );
\sbus_rdata[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(36),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(4),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(68),
      O => \reg_din_reg[36]_0\
    );
\sbus_rdata[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(37),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(5),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(69),
      O => \reg_din_reg[37]_0\
    );
\sbus_rdata[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(38),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(6),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(70),
      O => \reg_din_reg[38]_0\
    );
\sbus_rdata[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(39),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(7),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(71),
      O => \reg_din_reg[39]_0\
    );
\sbus_rdata[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(40),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(8),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(72),
      O => \reg_din_reg[40]_0\
    );
\sbus_rdata[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => reg_din(41),
      I1 => \sbus_rdata_reg[0]_0\,
      I2 => reg_din(9),
      I3 => \sbus_rdata_reg[0]_1\,
      I4 => \sbus_rdata_reg[0]_2\,
      I5 => reg_din(73),
      O => \reg_din_reg[41]_0\
    );
\sbus_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => \sbus_rdata_reg[31]_0\(0),
      R => '0'
    );
\sbus_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(10),
      Q => \sbus_rdata_reg[31]_0\(10),
      R => '0'
    );
\sbus_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(11),
      Q => \sbus_rdata_reg[31]_0\(11),
      R => '0'
    );
\sbus_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(12),
      Q => \sbus_rdata_reg[31]_0\(12),
      R => '0'
    );
\sbus_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(13),
      Q => \sbus_rdata_reg[31]_0\(13),
      R => '0'
    );
\sbus_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(14),
      Q => \sbus_rdata_reg[31]_0\(14),
      R => '0'
    );
\sbus_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(15),
      Q => \sbus_rdata_reg[31]_0\(15),
      R => '0'
    );
\sbus_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(16),
      Q => \sbus_rdata_reg[31]_0\(16),
      R => '0'
    );
\sbus_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(17),
      Q => \sbus_rdata_reg[31]_0\(17),
      R => '0'
    );
\sbus_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(18),
      Q => \sbus_rdata_reg[31]_0\(18),
      R => '0'
    );
\sbus_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(19),
      Q => \sbus_rdata_reg[31]_0\(19),
      R => '0'
    );
\sbus_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(1),
      Q => \sbus_rdata_reg[31]_0\(1),
      R => '0'
    );
\sbus_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(20),
      Q => \sbus_rdata_reg[31]_0\(20),
      R => '0'
    );
\sbus_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(21),
      Q => \sbus_rdata_reg[31]_0\(21),
      R => '0'
    );
\sbus_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(22),
      Q => \sbus_rdata_reg[31]_0\(22),
      R => '0'
    );
\sbus_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(23),
      Q => \sbus_rdata_reg[31]_0\(23),
      R => '0'
    );
\sbus_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(24),
      Q => \sbus_rdata_reg[31]_0\(24),
      R => '0'
    );
\sbus_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(25),
      Q => \sbus_rdata_reg[31]_0\(25),
      R => '0'
    );
\sbus_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(26),
      Q => \sbus_rdata_reg[31]_0\(26),
      R => '0'
    );
\sbus_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(27),
      Q => \sbus_rdata_reg[31]_0\(27),
      R => '0'
    );
\sbus_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(28),
      Q => \sbus_rdata_reg[31]_0\(28),
      R => '0'
    );
\sbus_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(29),
      Q => \sbus_rdata_reg[31]_0\(29),
      R => '0'
    );
\sbus_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(2),
      Q => \sbus_rdata_reg[31]_0\(2),
      R => '0'
    );
\sbus_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(30),
      Q => \sbus_rdata_reg[31]_0\(30),
      R => '0'
    );
\sbus_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(31),
      Q => \sbus_rdata_reg[31]_0\(31),
      R => '0'
    );
\sbus_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(3),
      Q => \sbus_rdata_reg[31]_0\(3),
      R => '0'
    );
\sbus_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(4),
      Q => \sbus_rdata_reg[31]_0\(4),
      R => '0'
    );
\sbus_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(5),
      Q => \sbus_rdata_reg[31]_0\(5),
      R => '0'
    );
\sbus_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(6),
      Q => \sbus_rdata_reg[31]_0\(6),
      R => '0'
    );
\sbus_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(7),
      Q => \sbus_rdata_reg[31]_0\(7),
      R => '0'
    );
\sbus_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(8),
      Q => \sbus_rdata_reg[31]_0\(8),
      R => '0'
    );
\sbus_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(9),
      Q => \sbus_rdata_reg[31]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  port (
    rx_ack_cld_reg_0 : out STD_LOGIC;
    \dout_int_reg[6]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \dout_int_reg[4]_0\ : out STD_LOGIC;
    \dout_int_reg[4]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \dout_int_reg[2]_0\ : out STD_LOGIC;
    \dout_int_reg[4]_2\ : out STD_LOGIC;
    \dout_int_reg[2]_1\ : out STD_LOGIC;
    cmd_par_reg : out STD_LOGIC;
    \dout_int_reg[2]_2\ : out STD_LOGIC;
    \dout_int_reg[6]_1\ : out STD_LOGIC;
    \rx_csm_current_state_reg[3]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \dout_int_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_ack_cld_reg_1 : out STD_LOGIC;
    rx_ack_cld_reg_2 : out STD_LOGIC;
    rx_ack_cld_reg_3 : out STD_LOGIC;
    bus_addr_int : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    rxd : in STD_LOGIC;
    clk : in STD_LOGIC;
    \rx_csm_current_state_reg[0]\ : in STD_LOGIC;
    \rx_csm_current_state_reg[0]_0\ : in STD_LOGIC;
    \rx_csm_current_state_reg[0]_1\ : in STD_LOGIC;
    \rx_csm_current_state_reg[1]\ : in STD_LOGIC;
    \rx_csm_current_state_reg[1]_0\ : in STD_LOGIC;
    \rx_csm_current_state_reg[1]_1\ : in STD_LOGIC;
    cmd_par : in STD_LOGIC;
    \rx_csm_current_state_reg[3]_0\ : in STD_LOGIC;
    rx_csm_current_state : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \bus_addr_int_reg[14]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \num_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \num_reg[5]_0\ : in STD_LOGIC;
    tx_ack : in STD_LOGIC;
    bus_ack : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  signal \FSM_sequential_current_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_current_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \bdcnt[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \bdcnt[6]_i_3_n_0\ : STD_LOGIC;
  signal bdcnt_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal dout_int : STD_LOGIC;
  signal \^dout_int_reg[2]_0\ : STD_LOGIC;
  signal \^dout_int_reg[4]_0\ : STD_LOGIC;
  signal \^dout_int_reg[4]_2\ : STD_LOGIC;
  signal \^dout_int_reg[6]_0\ : STD_LOGIC;
  signal \dout_int_reg_n_0_[2]\ : STD_LOGIC;
  signal \dout_int_reg_n_0_[3]\ : STD_LOGIC;
  signal \dout_int_reg_n_0_[4]\ : STD_LOGIC;
  signal \dout_int_reg_n_0_[5]\ : STD_LOGIC;
  signal \dout_int_reg_n_0_[7]\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal rx_ack_cld_i_1_n_0 : STD_LOGIC;
  signal \^rx_ack_cld_reg_0\ : STD_LOGIC;
  signal \rx_csm_current_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[4]_i_8_n_0\ : STD_LOGIC;
  signal \rx_csm_current_state[4]_i_9_n_0\ : STD_LOGIC;
  signal rx_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rx_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \rx_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal rxd_q1 : STD_LOGIC;
  signal rxd_q2 : STD_LOGIC;
  signal \sample_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \sample_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \sample_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \sample_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \sample_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal symbol_val : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \symbol_val[3]_i_1_n_0\ : STD_LOGIC;
  signal \symbol_val[3]_i_2_n_0\ : STD_LOGIC;
  signal \symbol_val[3]_i_3_n_0\ : STD_LOGIC;
  signal \symbol_val_reg_n_0_[0]\ : STD_LOGIC;
  signal \symbol_val_reg_n_0_[1]\ : STD_LOGIC;
  signal \symbol_val_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_2\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \FSM_sequential_current_state[0]_i_3\ : label is "soft_lutpair87";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "s_wait:00,s_reg:11,s_rx1:10,s_rx:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "s_wait:00,s_reg:11,s_rx1:10,s_rx:01";
  attribute SOFT_HLUTNM of \bdcnt[0]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \bdcnt[1]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \bdcnt[2]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \bdcnt[3]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \bdcnt[4]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \bdcnt[6]_i_3\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \bus_addr_int[5]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \bus_addr_int[9]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \bus_dout_int[28]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \bus_dout_int[29]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \bus_dout_int[30]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \bus_dout_int[31]_i_2\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \bus_dout_int[31]_i_3\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \num[7]_i_3\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of rx_ack_cld_i_1 : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \rx_csm_current_state[4]_i_10\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \rx_csm_current_state[4]_i_3\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \rx_csm_current_state[4]_i_9\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \rx_reg[0]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \rx_reg[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \rx_reg[2]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \rx_reg[3]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \rx_reg[4]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \rx_reg[5]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \rx_reg[6]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \rx_reg[7]_i_2\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \symbol_val[0]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \symbol_val[1]_i_1\ : label is "soft_lutpair90";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \dout_int_reg[2]_0\ <= \^dout_int_reg[2]_0\;
  \dout_int_reg[4]_0\ <= \^dout_int_reg[4]_0\;
  \dout_int_reg[4]_2\ <= \^dout_int_reg[4]_2\;
  \dout_int_reg[6]_0\ <= \^dout_int_reg[6]_0\;
  rx_ack_cld_reg_0 <= \^rx_ack_cld_reg_0\;
\FSM_sequential_current_state[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DDDDDDDDDDDDDDD"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_current_state[0]_i_3_n_0\,
      I2 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I3 => \sample_cnt_reg_n_0_[0]\,
      I4 => \sample_cnt_reg_n_0_[1]\,
      I5 => \sample_cnt_reg_n_0_[2]\,
      O => next_state(0)
    );
\FSM_sequential_current_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFDDF0"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I1 => \FSM_sequential_current_state[0]_i_4_n_0\,
      I2 => rxd_q2,
      I3 => current_state(1),
      I4 => current_state(0),
      O => \FSM_sequential_current_state[0]_i_2_n_0\
    );
\FSM_sequential_current_state[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      O => \FSM_sequential_current_state[0]_i_3_n_0\
    );
\FSM_sequential_current_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400040004000000"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      I4 => p_0_in_0,
      I5 => \symbol_val_reg_n_0_[2]\,
      O => \FSM_sequential_current_state[0]_i_4_n_0\
    );
\FSM_sequential_current_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2C30203020302030"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_2_n_0\,
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I4 => \FSM_sequential_current_state[1]_i_4_n_0\,
      I5 => \sample_cnt_reg_n_0_[2]\,
      O => next_state(1)
    );
\FSM_sequential_current_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      O => \FSM_sequential_current_state[1]_i_2_n_0\
    );
\FSM_sequential_current_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => bdcnt_reg(4),
      I1 => bdcnt_reg(3),
      I2 => bdcnt_reg(5),
      I3 => bdcnt_reg(2),
      I4 => bdcnt_reg(6),
      I5 => \bdcnt[6]_i_3_n_0\,
      O => \FSM_sequential_current_state[1]_i_3_n_0\
    );
\FSM_sequential_current_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \sample_cnt_reg_n_0_[0]\,
      I1 => \sample_cnt_reg_n_0_[1]\,
      O => \FSM_sequential_current_state[1]_i_4_n_0\
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => next_state(0),
      Q => current_state(0),
      R => reset
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => next_state(1),
      Q => current_state(1),
      R => reset
    );
\bdcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bdcnt_reg(0),
      O => p_0_in(0)
    );
\bdcnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bdcnt_reg(0),
      I1 => bdcnt_reg(1),
      O => p_0_in(1)
    );
\bdcnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I1 => bdcnt_reg(0),
      I2 => bdcnt_reg(1),
      I3 => bdcnt_reg(2),
      O => p_0_in(2)
    );
\bdcnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => bdcnt_reg(2),
      I1 => bdcnt_reg(1),
      I2 => bdcnt_reg(0),
      I3 => bdcnt_reg(3),
      I4 => \FSM_sequential_current_state[1]_i_3_n_0\,
      O => p_0_in(3)
    );
\bdcnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => bdcnt_reg(4),
      I1 => bdcnt_reg(2),
      I2 => bdcnt_reg(1),
      I3 => bdcnt_reg(0),
      I4 => bdcnt_reg(3),
      O => p_0_in(4)
    );
\bdcnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AF50FF00FB00FF00"
    )
        port map (
      I0 => \bdcnt[6]_i_3_n_0\,
      I1 => bdcnt_reg(6),
      I2 => bdcnt_reg(2),
      I3 => bdcnt_reg(5),
      I4 => bdcnt_reg(3),
      I5 => bdcnt_reg(4),
      O => p_0_in(5)
    );
\bdcnt[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      O => \bdcnt[6]_i_1__0_n_0\
    );
\bdcnt[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9CCCCCCCC8CCCCCC"
    )
        port map (
      I0 => \bdcnt[6]_i_3_n_0\,
      I1 => bdcnt_reg(6),
      I2 => bdcnt_reg(2),
      I3 => bdcnt_reg(5),
      I4 => bdcnt_reg(3),
      I5 => bdcnt_reg(4),
      O => p_0_in(6)
    );
\bdcnt[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => bdcnt_reg(0),
      I1 => bdcnt_reg(1),
      O => \bdcnt[6]_i_3_n_0\
    );
\bdcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => bdcnt_reg(0),
      R => \bdcnt[6]_i_1__0_n_0\
    );
\bdcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => bdcnt_reg(1),
      R => \bdcnt[6]_i_1__0_n_0\
    );
\bdcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => bdcnt_reg(2),
      R => \bdcnt[6]_i_1__0_n_0\
    );
\bdcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => bdcnt_reg(3),
      R => \bdcnt[6]_i_1__0_n_0\
    );
\bdcnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(4),
      Q => bdcnt_reg(4),
      R => \bdcnt[6]_i_1__0_n_0\
    );
\bdcnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(5),
      Q => bdcnt_reg(5),
      R => \bdcnt[6]_i_1__0_n_0\
    );
\bdcnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(6),
      Q => bdcnt_reg(6),
      R => \bdcnt[6]_i_1__0_n_0\
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7A"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => current_state(1),
      I2 => \bit_cnt[3]_i_2__0_n_0\,
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F20"
    )
        port map (
      I0 => current_state(1),
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt[3]_i_2__0_n_0\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8FF0200"
    )
        port map (
      I0 => current_state(1),
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt[3]_i_2__0_n_0\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF01FF0000"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => current_state(1),
      I4 => \bit_cnt[3]_i_2__0_n_0\,
      I5 => \bit_cnt_reg_n_0_[3]\,
      O => \bit_cnt[3]_i_1_n_0\
    );
\bit_cnt[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001101100010001"
    )
        port map (
      I0 => reset,
      I1 => current_state(0),
      I2 => current_state(1),
      I3 => rxd_q2,
      I4 => \FSM_sequential_current_state[0]_i_4_n_0\,
      I5 => \FSM_sequential_current_state[1]_i_3_n_0\,
      O => \bit_cnt[3]_i_2__0_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[0]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[0]\,
      R => '0'
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[1]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[1]\,
      R => '0'
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[2]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[2]\,
      R => '0'
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[3]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[3]\,
      R => '0'
    );
\bus_addr_int[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \bus_addr_int_reg[14]\(4),
      I1 => rx_csm_current_state(3),
      I2 => \dout_int_reg_n_0_[2]\,
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \rx_csm_current_state_reg[3]\(4)
    );
\bus_addr_int[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \bus_addr_int_reg[14]\(5),
      I1 => rx_csm_current_state(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \rx_csm_current_state_reg[3]\(5)
    );
\bus_addr_int[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \bus_addr_int_reg[14]\(6),
      I1 => rx_csm_current_state(3),
      I2 => \dout_int_reg_n_0_[2]\,
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \rx_csm_current_state_reg[3]\(6)
    );
\bus_addr_int[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6A6A6A006A6A6A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => rx_csm_current_state(3),
      I4 => rx_csm_current_state(2),
      I5 => \bus_addr_int_reg[14]\(0),
      O => \rx_csm_current_state_reg[3]\(0)
    );
\bus_addr_int[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \bus_addr_int_reg[14]\(1),
      I1 => rx_csm_current_state(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \rx_csm_current_state_reg[3]\(1)
    );
\bus_addr_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => \bus_addr_int_reg[14]\(2),
      I1 => rx_csm_current_state(3),
      I2 => \dout_int_reg_n_0_[2]\,
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \rx_csm_current_state_reg[3]\(2)
    );
\bus_addr_int[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BB8B8B8"
    )
        port map (
      I0 => \bus_addr_int_reg[14]\(3),
      I1 => rx_csm_current_state(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      O => \rx_csm_current_state_reg[3]\(3)
    );
\bus_dout_int[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      O => bus_addr_int(0)
    );
\bus_dout_int[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => bus_addr_int(1)
    );
\bus_dout_int[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \dout_int_reg_n_0_[2]\,
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => bus_addr_int(2)
    );
\bus_dout_int[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"807FFF00"
    )
        port map (
      I0 => \dout_int_reg_n_0_[2]\,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \dout_int_reg_n_0_[3]\,
      I4 => \^q\(2),
      O => bus_addr_int(3)
    );
\bus_dout_int[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^rx_ack_cld_reg_0\,
      I1 => rx_csm_current_state(0),
      O => rx_ack_cld_reg_3
    );
cmd_par_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => cmd_par,
      I1 => \dout_int_reg_n_0_[2]\,
      I2 => \^dout_int_reg[4]_2\,
      O => cmd_par_reg
    );
\dout_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => reset,
      O => dout_int
    );
\dout_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_int,
      D => \rx_reg_reg_n_0_[0]\,
      Q => \^q\(0),
      R => '0'
    );
\dout_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_int,
      D => p_1_in(0),
      Q => \^q\(1),
      R => '0'
    );
\dout_int_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_int,
      D => p_1_in(1),
      Q => \dout_int_reg_n_0_[2]\,
      R => '0'
    );
\dout_int_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_int,
      D => p_1_in(2),
      Q => \dout_int_reg_n_0_[3]\,
      R => '0'
    );
\dout_int_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_int,
      D => p_1_in(3),
      Q => \dout_int_reg_n_0_[4]\,
      R => '0'
    );
\dout_int_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_int,
      D => p_1_in(4),
      Q => \dout_int_reg_n_0_[5]\,
      R => '0'
    );
\dout_int_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_int,
      D => p_1_in(5),
      Q => \^q\(2),
      R => '0'
    );
\dout_int_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => dout_int,
      D => p_1_in(6),
      Q => \dout_int_reg_n_0_[7]\,
      R => '0'
    );
\num[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A006AFF6AFF6A00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => rx_csm_current_state(0),
      I4 => \num_reg[5]\(0),
      I5 => \num_reg[5]_0\,
      O => \dout_int_reg[1]_0\(0)
    );
\num[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^rx_ack_cld_reg_0\,
      I1 => rx_csm_current_state(0),
      O => rx_ack_cld_reg_2
    );
rx_ack_cld_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => \^rx_ack_cld_reg_0\,
      I1 => reset,
      I2 => current_state(1),
      I3 => current_state(0),
      O => rx_ack_cld_i_1_n_0
    );
rx_ack_cld_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rx_ack_cld_i_1_n_0,
      Q => \^rx_ack_cld_reg_0\,
      R => '0'
    );
\rx_csm_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1110"
    )
        port map (
      I0 => \^dout_int_reg[6]_0\,
      I1 => \rx_csm_current_state_reg[0]\,
      I2 => \rx_csm_current_state_reg[0]_0\,
      I3 => \rx_csm_current_state_reg[0]_1\,
      I4 => \^dout_int_reg[2]_0\,
      I5 => \^dout_int_reg[4]_2\,
      O => \dout_int_reg[4]_1\(0)
    );
\rx_csm_current_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFEEEEAAAAAAAA"
    )
        port map (
      I0 => \^dout_int_reg[4]_2\,
      I1 => \rx_csm_current_state[1]_i_2_n_0\,
      I2 => \rx_csm_current_state_reg[1]\,
      I3 => \rx_csm_current_state_reg[1]_0\,
      I4 => \rx_csm_current_state_reg[1]_1\,
      I5 => \^dout_int_reg[4]_0\,
      O => \dout_int_reg[4]_1\(1)
    );
\rx_csm_current_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \dout_int_reg_n_0_[5]\,
      I1 => \dout_int_reg_n_0_[7]\,
      I2 => \^q\(2),
      O => \rx_csm_current_state[1]_i_2_n_0\
    );
\rx_csm_current_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \dout_int_reg_n_0_[2]\,
      I1 => \^q\(0),
      I2 => \rx_csm_current_state[2]_i_8_n_0\,
      I3 => reset,
      O => \^dout_int_reg[2]_0\
    );
\rx_csm_current_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CECDCCCFCCCCCCCC"
    )
        port map (
      I0 => \dout_int_reg_n_0_[2]\,
      I1 => reset,
      I2 => \rx_csm_current_state[4]_i_8_n_0\,
      I3 => \^q\(0),
      I4 => \dout_int_reg_n_0_[4]\,
      I5 => \rx_csm_current_state[4]_i_9_n_0\,
      O => \dout_int_reg[2]_1\
    );
\rx_csm_current_state[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \dout_int_reg_n_0_[7]\,
      I1 => \^q\(2),
      I2 => \dout_int_reg_n_0_[5]\,
      I3 => \dout_int_reg_n_0_[4]\,
      I4 => \dout_int_reg_n_0_[3]\,
      I5 => \^q\(1),
      O => \rx_csm_current_state[2]_i_8_n_0\
    );
\rx_csm_current_state[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080808080808FF"
    )
        port map (
      I0 => \dout_int_reg_n_0_[2]\,
      I1 => \rx_csm_current_state[2]_i_8_n_0\,
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \dout_int_reg_n_0_[7]\,
      I5 => \dout_int_reg_n_0_[5]\,
      O => \dout_int_reg[2]_2\
    );
\rx_csm_current_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF750000FFF5"
    )
        port map (
      I0 => \rx_csm_current_state[4]_i_9_n_0\,
      I1 => \dout_int_reg_n_0_[4]\,
      I2 => \^q\(0),
      I3 => \rx_csm_current_state[4]_i_8_n_0\,
      I4 => reset,
      I5 => \dout_int_reg_n_0_[2]\,
      O => \^dout_int_reg[4]_0\
    );
\rx_csm_current_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010101FF01010101"
    )
        port map (
      I0 => \^q\(2),
      I1 => \dout_int_reg_n_0_[7]\,
      I2 => \dout_int_reg_n_0_[5]\,
      I3 => \rx_csm_current_state_reg[3]_0\,
      I4 => rx_csm_current_state(4),
      I5 => rx_csm_current_state(5),
      O => \dout_int_reg[6]_1\
    );
\rx_csm_current_state[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \^rx_ack_cld_reg_0\,
      I1 => tx_ack,
      I2 => rx_csm_current_state(1),
      I3 => bus_ack,
      I4 => rx_csm_current_state(0),
      O => rx_ack_cld_reg_1
    );
\rx_csm_current_state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \rx_csm_current_state[4]_i_8_n_0\,
      I1 => \dout_int_reg_n_0_[4]\,
      I2 => \rx_csm_current_state[4]_i_9_n_0\,
      I3 => \^q\(0),
      I4 => reset,
      O => \^dout_int_reg[4]_2\
    );
\rx_csm_current_state[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \dout_int_reg_n_0_[7]\,
      I2 => \dout_int_reg_n_0_[5]\,
      I3 => \^dout_int_reg[4]_0\,
      O => \^dout_int_reg[6]_0\
    );
\rx_csm_current_state[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \dout_int_reg_n_0_[3]\,
      I1 => \^q\(1),
      O => \rx_csm_current_state[4]_i_8_n_0\
    );
\rx_csm_current_state[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \dout_int_reg_n_0_[5]\,
      I1 => \^q\(2),
      I2 => \dout_int_reg_n_0_[7]\,
      O => \rx_csm_current_state[4]_i_9_n_0\
    );
\rx_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(0),
      I1 => current_state(1),
      I2 => rxd_q2,
      O => rx_reg(0)
    );
\rx_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(1),
      I1 => current_state(1),
      I2 => rxd_q2,
      O => rx_reg(1)
    );
\rx_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(2),
      I1 => current_state(1),
      I2 => rxd_q2,
      O => rx_reg(2)
    );
\rx_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(3),
      I1 => current_state(1),
      I2 => rxd_q2,
      O => rx_reg(3)
    );
\rx_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(4),
      I1 => current_state(1),
      I2 => rxd_q2,
      O => rx_reg(4)
    );
\rx_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(5),
      I1 => current_state(1),
      I2 => rxd_q2,
      O => rx_reg(5)
    );
\rx_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_1_in(6),
      I1 => current_state(1),
      I2 => rxd_q2,
      O => rx_reg(6)
    );
\rx_reg[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \FSM_sequential_current_state[0]_i_2_n_0\,
      O => \rx_reg[7]_i_1_n_0\
    );
\rx_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAA"
    )
        port map (
      I0 => rxd_q2,
      I1 => p_0_in_0,
      I2 => \symbol_val_reg_n_0_[2]\,
      I3 => current_state(1),
      O => rx_reg(7)
    );
\rx_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_reg[7]_i_1_n_0\,
      D => rx_reg(0),
      Q => \rx_reg_reg_n_0_[0]\,
      R => reset
    );
\rx_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_reg[7]_i_1_n_0\,
      D => rx_reg(1),
      Q => p_1_in(0),
      R => reset
    );
\rx_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_reg[7]_i_1_n_0\,
      D => rx_reg(2),
      Q => p_1_in(1),
      R => reset
    );
\rx_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_reg[7]_i_1_n_0\,
      D => rx_reg(3),
      Q => p_1_in(2),
      R => reset
    );
\rx_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_reg[7]_i_1_n_0\,
      D => rx_reg(4),
      Q => p_1_in(3),
      R => reset
    );
\rx_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_reg[7]_i_1_n_0\,
      D => rx_reg(5),
      Q => p_1_in(4),
      R => reset
    );
\rx_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_reg[7]_i_1_n_0\,
      D => rx_reg(6),
      Q => p_1_in(5),
      R => reset
    );
\rx_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rx_reg[7]_i_1_n_0\,
      D => rx_reg(7),
      Q => p_1_in(6),
      R => reset
    );
rxd_q1_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => rxd,
      Q => rxd_q1,
      S => reset
    );
rxd_q2_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => rxd_q1,
      Q => rxd_q2,
      S => reset
    );
\sample_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFDDDD00303333"
    )
        port map (
      I0 => current_state(0),
      I1 => reset,
      I2 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I3 => \sample_cnt[0]_i_2_n_0\,
      I4 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I5 => \sample_cnt_reg_n_0_[0]\,
      O => \sample_cnt[0]_i_1_n_0\
    );
\sample_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8000FFFFFFFF"
    )
        port map (
      I0 => \sample_cnt_reg_n_0_[2]\,
      I1 => \sample_cnt_reg_n_0_[1]\,
      I2 => \sample_cnt_reg_n_0_[0]\,
      I3 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I4 => current_state(1),
      I5 => current_state(0),
      O => \sample_cnt[0]_i_2_n_0\
    );
\sample_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4F408000808"
    )
        port map (
      I0 => \sample_cnt_reg_n_0_[0]\,
      I1 => current_state(0),
      I2 => reset,
      I3 => \sample_cnt[2]_i_2_n_0\,
      I4 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I5 => \sample_cnt_reg_n_0_[1]\,
      O => \sample_cnt[1]_i_1_n_0\
    );
\sample_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4FFF4F408000808"
    )
        port map (
      I0 => \FSM_sequential_current_state[1]_i_4_n_0\,
      I1 => current_state(0),
      I2 => reset,
      I3 => \sample_cnt[2]_i_2_n_0\,
      I4 => \FSM_sequential_current_state[0]_i_2_n_0\,
      I5 => \sample_cnt_reg_n_0_[2]\,
      O => \sample_cnt[2]_i_1_n_0\
    );
\sample_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020202020202020"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I3 => \sample_cnt_reg_n_0_[0]\,
      I4 => \sample_cnt_reg_n_0_[1]\,
      I5 => \sample_cnt_reg_n_0_[2]\,
      O => \sample_cnt[2]_i_2_n_0\
    );
\sample_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_cnt[0]_i_1_n_0\,
      Q => \sample_cnt_reg_n_0_[0]\,
      R => '0'
    );
\sample_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_cnt[1]_i_1_n_0\,
      Q => \sample_cnt_reg_n_0_[1]\,
      R => '0'
    );
\sample_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_cnt[2]_i_1_n_0\,
      Q => \sample_cnt_reg_n_0_[2]\,
      R => '0'
    );
\symbol_val[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA3A"
    )
        port map (
      I0 => rxd_q2,
      I1 => \symbol_val_reg_n_0_[0]\,
      I2 => current_state(0),
      I3 => current_state(1),
      O => symbol_val(0)
    );
\symbol_val[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002EE2"
    )
        port map (
      I0 => rxd_q2,
      I1 => current_state(0),
      I2 => \symbol_val_reg_n_0_[1]\,
      I3 => \symbol_val_reg_n_0_[0]\,
      I4 => current_state(1),
      O => symbol_val(1)
    );
\symbol_val[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002EEEE222"
    )
        port map (
      I0 => rxd_q2,
      I1 => current_state(0),
      I2 => \symbol_val_reg_n_0_[0]\,
      I3 => \symbol_val_reg_n_0_[1]\,
      I4 => \symbol_val_reg_n_0_[2]\,
      I5 => current_state(1),
      O => symbol_val(2)
    );
\symbol_val[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000055555555"
    )
        port map (
      I0 => reset,
      I1 => current_state(0),
      I2 => rxd_q2,
      I3 => current_state(1),
      I4 => \FSM_sequential_current_state[1]_i_3_n_0\,
      I5 => \FSM_sequential_current_state[0]_i_2_n_0\,
      O => \symbol_val[3]_i_1_n_0\
    );
\symbol_val[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555511104444000"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(0),
      I2 => \symbol_val_reg_n_0_[2]\,
      I3 => \symbol_val[3]_i_3_n_0\,
      I4 => p_0_in_0,
      I5 => rxd_q2,
      O => \symbol_val[3]_i_2_n_0\
    );
\symbol_val[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \symbol_val_reg_n_0_[0]\,
      I1 => \symbol_val_reg_n_0_[1]\,
      O => \symbol_val[3]_i_3_n_0\
    );
\symbol_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbol_val[3]_i_1_n_0\,
      D => symbol_val(0),
      Q => \symbol_val_reg_n_0_[0]\,
      R => '0'
    );
\symbol_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbol_val[3]_i_1_n_0\,
      D => symbol_val(1),
      Q => \symbol_val_reg_n_0_[1]\,
      R => '0'
    );
\symbol_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbol_val[3]_i_1_n_0\,
      D => symbol_val(2),
      Q => \symbol_val_reg_n_0_[2]\,
      R => '0'
    );
\symbol_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \symbol_val[3]_i_1_n_0\,
      D => \symbol_val[3]_i_2_n_0\,
      Q => p_0_in_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx is
  port (
    current_state_reg_0 : out STD_LOGIC;
    tx_ack : out STD_LOGIC;
    tx_ack_cld_reg_0 : out STD_LOGIC;
    \tx_reg_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    txd : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    current_state_reg_1 : in STD_LOGIC;
    \tx_reg_reg[3]_0\ : in STD_LOGIC;
    \tx_reg_reg[6]_0\ : in STD_LOGIC;
    rx_csm_current_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tx_reg_reg[1]_0\ : in STD_LOGIC;
    \tx_reg_reg[2]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx is
  signal \bdcnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \bdcnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \bdcnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \bdcnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \bdcnt[9]_i_4_n_0\ : STD_LOGIC;
  signal \bdcnt[9]_i_5_n_0\ : STD_LOGIC;
  signal bdcnt_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal bit_cnt : STD_LOGIC;
  signal bit_cnt0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \bit_cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal bit_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal current_state_i_2_n_0 : STD_LOGIC;
  signal \^current_state_reg_0\ : STD_LOGIC;
  signal next_state : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^tx_ack\ : STD_LOGIC;
  signal tx_ack_cld_i_1_n_0 : STD_LOGIC;
  signal tx_ack_cld_i_2_n_0 : STD_LOGIC;
  signal tx_reg : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \tx_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \tx_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \tx_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \tx_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \tx_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \^txd\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bdcnt[1]_i_1__0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \bdcnt[2]_i_1__0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \bdcnt[3]_i_1__0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \bdcnt[4]_i_1__0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \bdcnt[5]_i_2\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \bdcnt[7]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \bdcnt[8]_i_2\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \bdcnt[9]_i_4\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_3\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of tx_ack_cld_i_2 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \tx_reg[3]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \tx_reg[5]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \tx_reg[7]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \tx_reg[8]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \tx_reg[8]_i_3\ : label is "soft_lutpair106";
begin
  current_state_reg_0 <= \^current_state_reg_0\;
  tx_ack <= \^tx_ack\;
  txd <= \^txd\;
\bdcnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bdcnt_reg(0),
      O => \p_0_in__0\(0)
    );
\bdcnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bdcnt_reg(0),
      I1 => bdcnt_reg(1),
      O => \p_0_in__0\(1)
    );
\bdcnt[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => bdcnt_reg(0),
      I1 => bdcnt_reg(1),
      I2 => bdcnt_reg(2),
      I3 => \tx_reg[8]_i_4_n_0\,
      O => \p_0_in__0\(2)
    );
\bdcnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => bdcnt_reg(3),
      I1 => bdcnt_reg(1),
      I2 => bdcnt_reg(0),
      I3 => bdcnt_reg(2),
      O => \p_0_in__0\(3)
    );
\bdcnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => bdcnt_reg(4),
      I1 => bdcnt_reg(2),
      I2 => bdcnt_reg(0),
      I3 => bdcnt_reg(1),
      I4 => bdcnt_reg(3),
      O => \p_0_in__0\(4)
    );
\bdcnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAA08000000"
    )
        port map (
      I0 => \bdcnt[9]_i_3_n_0\,
      I1 => bdcnt_reg(3),
      I2 => \bdcnt[5]_i_2_n_0\,
      I3 => bdcnt_reg(2),
      I4 => bdcnt_reg(4),
      I5 => bdcnt_reg(5),
      O => \p_0_in__0\(5)
    );
\bdcnt[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => bdcnt_reg(0),
      I1 => bdcnt_reg(1),
      O => \bdcnt[5]_i_2_n_0\
    );
\bdcnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \bdcnt[9]_i_3_n_0\,
      I1 => \bdcnt[8]_i_2_n_0\,
      I2 => bdcnt_reg(5),
      I3 => bdcnt_reg(6),
      O => \p_0_in__0\(6)
    );
\bdcnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => bdcnt_reg(5),
      I1 => \bdcnt[8]_i_2_n_0\,
      I2 => bdcnt_reg(6),
      I3 => bdcnt_reg(7),
      O => \p_0_in__0\(7)
    );
\bdcnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAA00800000"
    )
        port map (
      I0 => \bdcnt[9]_i_3_n_0\,
      I1 => bdcnt_reg(7),
      I2 => bdcnt_reg(6),
      I3 => \bdcnt[8]_i_2_n_0\,
      I4 => bdcnt_reg(5),
      I5 => bdcnt_reg(8),
      O => \p_0_in__0\(8)
    );
\bdcnt[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => bdcnt_reg(3),
      I1 => bdcnt_reg(1),
      I2 => bdcnt_reg(0),
      I3 => bdcnt_reg(2),
      I4 => bdcnt_reg(4),
      O => \bdcnt[8]_i_2_n_0\
    );
\bdcnt[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^current_state_reg_0\,
      O => \bdcnt[9]_i_1_n_0\
    );
\bdcnt[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \bdcnt[9]_i_3_n_0\,
      I1 => \bdcnt[9]_i_4_n_0\,
      I2 => bdcnt_reg(8),
      I3 => bdcnt_reg(9),
      O => \p_0_in__0\(9)
    );
\bdcnt[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFF"
    )
        port map (
      I0 => bdcnt_reg(7),
      I1 => bdcnt_reg(8),
      I2 => \bdcnt[9]_i_5_n_0\,
      I3 => bdcnt_reg(6),
      I4 => bdcnt_reg(9),
      O => \bdcnt[9]_i_3_n_0\
    );
\bdcnt[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => bdcnt_reg(7),
      I1 => bdcnt_reg(6),
      I2 => \bdcnt[8]_i_2_n_0\,
      I3 => bdcnt_reg(5),
      O => \bdcnt[9]_i_4_n_0\
    );
\bdcnt[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => bdcnt_reg(3),
      I1 => bdcnt_reg(2),
      I2 => bdcnt_reg(1),
      I3 => bdcnt_reg(0),
      I4 => bdcnt_reg(5),
      I5 => bdcnt_reg(4),
      O => \bdcnt[9]_i_5_n_0\
    );
\bdcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => bdcnt_reg(0),
      R => \bdcnt[9]_i_1_n_0\
    );
\bdcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => bdcnt_reg(1),
      R => \bdcnt[9]_i_1_n_0\
    );
\bdcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => bdcnt_reg(2),
      R => \bdcnt[9]_i_1_n_0\
    );
\bdcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => bdcnt_reg(3),
      R => \bdcnt[9]_i_1_n_0\
    );
\bdcnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => bdcnt_reg(4),
      R => \bdcnt[9]_i_1_n_0\
    );
\bdcnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => bdcnt_reg(5),
      R => \bdcnt[9]_i_1_n_0\
    );
\bdcnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => bdcnt_reg(6),
      R => \bdcnt[9]_i_1_n_0\
    );
\bdcnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => bdcnt_reg(7),
      R => \bdcnt[9]_i_1_n_0\
    );
\bdcnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => bdcnt_reg(8),
      R => \bdcnt[9]_i_1_n_0\
    );
\bdcnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => bdcnt_reg(9),
      R => \bdcnt[9]_i_1_n_0\
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bit_cnt_reg(0),
      O => bit_cnt0(0)
    );
\bit_cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => bit_cnt_reg(0),
      I1 => bit_cnt_reg(1),
      O => \bit_cnt[1]_i_1__0_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => bit_cnt_reg(2),
      I1 => bit_cnt_reg(1),
      I2 => bit_cnt_reg(0),
      O => bit_cnt0(2)
    );
\bit_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bit_cnt[3]_i_4_n_0\,
      I1 => reset,
      O => bit_cnt
    );
\bit_cnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => bit_cnt_reg(3),
      I1 => bit_cnt_reg(2),
      I2 => bit_cnt_reg(0),
      I3 => bit_cnt_reg(1),
      O => bit_cnt0(3)
    );
\bit_cnt[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => \^current_state_reg_0\,
      I1 => \tx_reg[8]_i_4_n_0\,
      I2 => bit_cnt_reg(1),
      I3 => bit_cnt_reg(0),
      I4 => bit_cnt_reg(2),
      I5 => bit_cnt_reg(3),
      O => \bit_cnt[3]_i_4_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => bit_cnt,
      D => bit_cnt0(0),
      Q => bit_cnt_reg(0),
      S => SR(0)
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bit_cnt,
      D => \bit_cnt[1]_i_1__0_n_0\,
      Q => bit_cnt_reg(1),
      R => SR(0)
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => bit_cnt,
      D => bit_cnt0(2),
      Q => bit_cnt_reg(2),
      R => SR(0)
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => bit_cnt,
      D => bit_cnt0(3),
      Q => bit_cnt_reg(3),
      S => SR(0)
    );
current_state_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \^current_state_reg_0\,
      I1 => current_state_reg_1,
      I2 => current_state_i_2_n_0,
      O => next_state
    );
current_state_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00010000FFFFFFFF"
    )
        port map (
      I0 => bit_cnt_reg(3),
      I1 => bit_cnt_reg(2),
      I2 => bit_cnt_reg(0),
      I3 => bit_cnt_reg(1),
      I4 => \tx_reg[8]_i_4_n_0\,
      I5 => \^current_state_reg_0\,
      O => current_state_i_2_n_0
    );
current_state_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => next_state,
      Q => \^current_state_reg_0\,
      R => reset
    );
\num[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^tx_ack\,
      I1 => rx_csm_current_state(0),
      O => tx_ack_cld_reg_0
    );
tx_ack_cld_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => tx_ack_cld_i_2_n_0,
      I1 => \^current_state_reg_0\,
      I2 => reset,
      O => tx_ack_cld_i_1_n_0
    );
tx_ack_cld_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \tx_reg[8]_i_4_n_0\,
      I1 => bit_cnt_reg(1),
      I2 => bit_cnt_reg(0),
      I3 => bit_cnt_reg(2),
      I4 => bit_cnt_reg(3),
      O => tx_ack_cld_i_2_n_0
    );
tx_ack_cld_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => tx_ack_cld_i_1_n_0,
      Q => \^tx_ack\,
      R => '0'
    );
\tx_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAAC0AA"
    )
        port map (
      I0 => \^txd\,
      I1 => tx_reg(1),
      I2 => \^current_state_reg_0\,
      I3 => \tx_reg[8]_i_1_n_0\,
      I4 => reset,
      O => \tx_reg[0]_i_1_n_0\
    );
\tx_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAFC0CAAAA"
    )
        port map (
      I0 => tx_reg(1),
      I1 => \tx_reg_reg[1]_0\,
      I2 => \^current_state_reg_0\,
      I3 => tx_reg(2),
      I4 => \tx_reg[8]_i_1_n_0\,
      I5 => reset,
      O => \tx_reg[1]_i_1_n_0\
    );
\tx_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAFC0CAAAA"
    )
        port map (
      I0 => tx_reg(2),
      I1 => \tx_reg_reg[2]_0\,
      I2 => \^current_state_reg_0\,
      I3 => tx_reg(3),
      I4 => \tx_reg[8]_i_1_n_0\,
      I5 => reset,
      O => \tx_reg[2]_i_1_n_0\
    );
\tx_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FAFC"
    )
        port map (
      I0 => tx_reg(4),
      I1 => \tx_reg_reg[3]_0\,
      I2 => reset,
      I3 => \^current_state_reg_0\,
      O => \tx_reg[3]_i_1_n_0\
    );
\tx_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCDD"
    )
        port map (
      I0 => \tx_reg_reg[6]_0\,
      I1 => reset,
      I2 => tx_reg(6),
      I3 => \^current_state_reg_0\,
      O => \tx_reg[5]_i_1_n_0\
    );
\tx_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8B"
    )
        port map (
      I0 => tx_reg(7),
      I1 => \^current_state_reg_0\,
      I2 => \tx_reg_reg[6]_0\,
      I3 => reset,
      O => \tx_reg[6]_i_1_n_0\
    );
\tx_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FAFC"
    )
        port map (
      I0 => tx_reg(8),
      I1 => \tx_reg_reg[6]_0\,
      I2 => reset,
      I3 => \^current_state_reg_0\,
      O => \tx_reg[7]_i_1_n_0\
    );
\tx_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFB0B0FF00"
    )
        port map (
      I0 => bit_cnt_reg(3),
      I1 => \tx_reg[8]_i_3_n_0\,
      I2 => \tx_reg[8]_i_4_n_0\,
      I3 => current_state_reg_1,
      I4 => \^current_state_reg_0\,
      I5 => reset,
      O => \tx_reg[8]_i_1_n_0\
    );
\tx_reg[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^current_state_reg_0\,
      I1 => reset,
      O => \tx_reg[8]_i_2_n_0\
    );
\tx_reg[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => bit_cnt_reg(1),
      I1 => bit_cnt_reg(0),
      I2 => bit_cnt_reg(2),
      O => \tx_reg[8]_i_3_n_0\
    );
\tx_reg[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => bdcnt_reg(3),
      I1 => bdcnt_reg(7),
      I2 => bdcnt_reg(2),
      I3 => bdcnt_reg(4),
      I4 => \tx_reg[8]_i_5_n_0\,
      O => \tx_reg[8]_i_4_n_0\
    );
\tx_reg[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => bdcnt_reg(1),
      I1 => bdcnt_reg(0),
      I2 => bdcnt_reg(8),
      I3 => bdcnt_reg(9),
      I4 => bdcnt_reg(5),
      I5 => bdcnt_reg(6),
      O => \tx_reg[8]_i_5_n_0\
    );
\tx_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_reg[0]_i_1_n_0\,
      Q => \^txd\,
      R => '0'
    );
\tx_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_reg[1]_i_1_n_0\,
      Q => tx_reg(1),
      R => '0'
    );
\tx_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_reg[2]_i_1_n_0\,
      Q => tx_reg(2),
      R => '0'
    );
\tx_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_reg[8]_i_1_n_0\,
      D => \tx_reg[3]_i_1_n_0\,
      Q => tx_reg(3),
      R => '0'
    );
\tx_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_reg[8]_i_1_n_0\,
      D => D(0),
      Q => tx_reg(4),
      R => '0'
    );
\tx_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_reg[8]_i_1_n_0\,
      D => \tx_reg[5]_i_1_n_0\,
      Q => \tx_reg_reg[5]_0\(0),
      R => '0'
    );
\tx_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_reg[8]_i_1_n_0\,
      D => \tx_reg[6]_i_1_n_0\,
      Q => tx_reg(6),
      R => '0'
    );
\tx_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_reg[8]_i_1_n_0\,
      D => \tx_reg[7]_i_1_n_0\,
      Q => tx_reg(7),
      R => '0'
    );
\tx_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \tx_reg[8]_i_1_n_0\,
      D => \tx_reg[8]_i_2_n_0\,
      Q => tx_reg(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top is
  port (
    current_state : out STD_LOGIC;
    cmd_we : out STD_LOGIC;
    tx_ack : out STD_LOGIC;
    \dout_int_reg[6]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \dout_int_reg[4]\ : out STD_LOGIC;
    \tx_reg_reg[5]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \dout_int_reg[4]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \dout_int_reg[2]\ : out STD_LOGIC;
    \dout_int_reg[4]_1\ : out STD_LOGIC;
    \dout_int_reg[2]_0\ : out STD_LOGIC;
    cmd_par_reg : out STD_LOGIC;
    \dout_int_reg[2]_1\ : out STD_LOGIC;
    \dout_int_reg[6]_0\ : out STD_LOGIC;
    \rx_csm_current_state_reg[3]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \dout_int_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_ack_cld_reg : out STD_LOGIC;
    tx_ack_cld_reg : out STD_LOGIC;
    rx_ack_cld_reg_0 : out STD_LOGIC;
    rx_ack_cld_reg_1 : out STD_LOGIC;
    bus_addr_int : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txd : out STD_LOGIC;
    reset : in STD_LOGIC;
    rxd : in STD_LOGIC;
    clk : in STD_LOGIC;
    current_state_reg : in STD_LOGIC;
    \tx_reg_reg[3]\ : in STD_LOGIC;
    \tx_reg_reg[6]\ : in STD_LOGIC;
    \rx_csm_current_state_reg[0]\ : in STD_LOGIC;
    \rx_csm_current_state_reg[0]_0\ : in STD_LOGIC;
    \rx_csm_current_state_reg[0]_1\ : in STD_LOGIC;
    \rx_csm_current_state_reg[1]\ : in STD_LOGIC;
    \rx_csm_current_state_reg[1]_0\ : in STD_LOGIC;
    \rx_csm_current_state_reg[1]_1\ : in STD_LOGIC;
    cmd_par : in STD_LOGIC;
    \rx_csm_current_state_reg[3]_0\ : in STD_LOGIC;
    rx_csm_current_state : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \bus_addr_int_reg[14]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \num_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \num_reg[5]_0\ : in STD_LOGIC;
    bus_ack : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tx_reg_reg[1]\ : in STD_LOGIC;
    \tx_reg_reg[2]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top is
  signal \^tx_ack\ : STD_LOGIC;
begin
  tx_ack <= \^tx_ack\;
I0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
     port map (
      Q(2 downto 0) => Q(2 downto 0),
      bus_ack => bus_ack,
      bus_addr_int(3 downto 0) => bus_addr_int(3 downto 0),
      \bus_addr_int_reg[14]\(6 downto 0) => \bus_addr_int_reg[14]\(6 downto 0),
      clk => clk,
      cmd_par => cmd_par,
      cmd_par_reg => cmd_par_reg,
      \dout_int_reg[1]_0\(0) => \dout_int_reg[1]\(0),
      \dout_int_reg[2]_0\ => \dout_int_reg[2]\,
      \dout_int_reg[2]_1\ => \dout_int_reg[2]_0\,
      \dout_int_reg[2]_2\ => \dout_int_reg[2]_1\,
      \dout_int_reg[4]_0\ => \dout_int_reg[4]\,
      \dout_int_reg[4]_1\(1 downto 0) => \dout_int_reg[4]_0\(1 downto 0),
      \dout_int_reg[4]_2\ => \dout_int_reg[4]_1\,
      \dout_int_reg[6]_0\ => \dout_int_reg[6]\,
      \dout_int_reg[6]_1\ => \dout_int_reg[6]_0\,
      \num_reg[5]\(0) => \num_reg[5]\(0),
      \num_reg[5]_0\ => \num_reg[5]_0\,
      reset => reset,
      rx_ack_cld_reg_0 => cmd_we,
      rx_ack_cld_reg_1 => rx_ack_cld_reg,
      rx_ack_cld_reg_2 => rx_ack_cld_reg_0,
      rx_ack_cld_reg_3 => rx_ack_cld_reg_1,
      rx_csm_current_state(5 downto 0) => rx_csm_current_state(5 downto 0),
      \rx_csm_current_state_reg[0]\ => \rx_csm_current_state_reg[0]\,
      \rx_csm_current_state_reg[0]_0\ => \rx_csm_current_state_reg[0]_0\,
      \rx_csm_current_state_reg[0]_1\ => \rx_csm_current_state_reg[0]_1\,
      \rx_csm_current_state_reg[1]\ => \rx_csm_current_state_reg[1]\,
      \rx_csm_current_state_reg[1]_0\ => \rx_csm_current_state_reg[1]_0\,
      \rx_csm_current_state_reg[1]_1\ => \rx_csm_current_state_reg[1]_1\,
      \rx_csm_current_state_reg[3]\(6 downto 0) => \rx_csm_current_state_reg[3]\(6 downto 0),
      \rx_csm_current_state_reg[3]_0\ => \rx_csm_current_state_reg[3]_0\,
      rxd => rxd,
      tx_ack => \^tx_ack\
    );
I1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx
     port map (
      D(0) => D(0),
      SR(0) => SR(0),
      clk => clk,
      current_state_reg_0 => current_state,
      current_state_reg_1 => current_state_reg,
      reset => reset,
      rx_csm_current_state(0) => rx_csm_current_state(0),
      tx_ack => \^tx_ack\,
      tx_ack_cld_reg_0 => tx_ack_cld_reg,
      \tx_reg_reg[1]_0\ => \tx_reg_reg[1]\,
      \tx_reg_reg[2]_0\ => \tx_reg_reg[2]\,
      \tx_reg_reg[3]_0\ => \tx_reg_reg[3]\,
      \tx_reg_reg[5]_0\(0) => \tx_reg_reg[5]\(0),
      \tx_reg_reg[6]_0\ => \tx_reg_reg[6]\,
      txd => txd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_bridge_32 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    E : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bus_addr_int_reg[0]\ : out STD_LOGIC;
    \bus_addr_int_reg[1]\ : out STD_LOGIC;
    \bus_addr_int_reg[1]_0\ : out STD_LOGIC;
    \bus_dout_int_reg[31]\ : out STD_LOGIC_VECTOR ( 63 downto 0 );
    sbus_ack0 : out STD_LOGIC;
    bus_we : out STD_LOGIC;
    \rx_csm_current_state_reg[2]\ : out STD_LOGIC;
    txd : out STD_LOGIC;
    reset : in STD_LOGIC;
    rxd : in STD_LOGIC;
    clk : in STD_LOGIC;
    \sbus_rdata_reg[31]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \sbus_rdata_reg[30]\ : in STD_LOGIC;
    \sbus_rdata_reg[29]\ : in STD_LOGIC;
    \sbus_rdata_reg[28]\ : in STD_LOGIC;
    \sbus_rdata_reg[27]\ : in STD_LOGIC;
    \sbus_rdata_reg[26]\ : in STD_LOGIC;
    \sbus_rdata_reg[25]\ : in STD_LOGIC;
    \sbus_rdata_reg[24]\ : in STD_LOGIC;
    \sbus_rdata_reg[23]\ : in STD_LOGIC;
    \sbus_rdata_reg[22]\ : in STD_LOGIC;
    \sbus_rdata_reg[21]\ : in STD_LOGIC;
    \sbus_rdata_reg[20]\ : in STD_LOGIC;
    \sbus_rdata_reg[19]\ : in STD_LOGIC;
    \sbus_rdata_reg[18]\ : in STD_LOGIC;
    \sbus_rdata_reg[17]\ : in STD_LOGIC;
    \sbus_rdata_reg[16]\ : in STD_LOGIC;
    \sbus_rdata_reg[15]\ : in STD_LOGIC;
    \sbus_rdata_reg[14]\ : in STD_LOGIC;
    \sbus_rdata_reg[13]\ : in STD_LOGIC;
    \sbus_rdata_reg[12]\ : in STD_LOGIC;
    \sbus_rdata_reg[11]\ : in STD_LOGIC;
    \sbus_rdata_reg[10]\ : in STD_LOGIC;
    \sbus_rdata_reg[9]\ : in STD_LOGIC;
    \sbus_rdata_reg[8]\ : in STD_LOGIC;
    \sbus_rdata_reg[7]\ : in STD_LOGIC;
    \sbus_rdata_reg[6]\ : in STD_LOGIC;
    \sbus_rdata_reg[5]\ : in STD_LOGIC;
    \sbus_rdata_reg[4]\ : in STD_LOGIC;
    \sbus_rdata_reg[3]\ : in STD_LOGIC;
    \sbus_rdata_reg[2]\ : in STD_LOGIC;
    \sbus_rdata_reg[1]\ : in STD_LOGIC;
    \sbus_rdata_reg[0]\ : in STD_LOGIC;
    bus_ack : in STD_LOGIC;
    \reg_reg[95]\ : in STD_LOGIC;
    \bus_din_tmp_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bus_din_tmp_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_bridge_32;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_bridge_32 is
  signal \I1/current_state\ : STD_LOGIC;
  signal bus_addr_int : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bus_addr_int0 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal cmd_par : STD_LOGIC;
  signal cmd_we : STD_LOGIC;
  signal \g0.I1_n_0\ : STD_LOGIC;
  signal \g0.I1_n_119\ : STD_LOGIC;
  signal \g0.I1_n_121\ : STD_LOGIC;
  signal \g0.I1_n_129\ : STD_LOGIC;
  signal \g0.I1_n_131\ : STD_LOGIC;
  signal \g0.I1_n_132\ : STD_LOGIC;
  signal \g0.I1_n_133\ : STD_LOGIC;
  signal \g0.I1_n_134\ : STD_LOGIC;
  signal \g0.I1_n_135\ : STD_LOGIC;
  signal \g0.I1_n_42\ : STD_LOGIC;
  signal \g0.I1_n_43\ : STD_LOGIC;
  signal \g0.I1_n_44\ : STD_LOGIC;
  signal \g0.I1_n_45\ : STD_LOGIC;
  signal \g0.I1_n_8\ : STD_LOGIC;
  signal \g0.I1_n_9\ : STD_LOGIC;
  signal \g0.I6_n_10\ : STD_LOGIC;
  signal \g0.I6_n_11\ : STD_LOGIC;
  signal \g0.I6_n_12\ : STD_LOGIC;
  signal \g0.I6_n_13\ : STD_LOGIC;
  signal \g0.I6_n_14\ : STD_LOGIC;
  signal \g0.I6_n_15\ : STD_LOGIC;
  signal \g0.I6_n_16\ : STD_LOGIC;
  signal \g0.I6_n_17\ : STD_LOGIC;
  signal \g0.I6_n_18\ : STD_LOGIC;
  signal \g0.I6_n_19\ : STD_LOGIC;
  signal \g0.I6_n_20\ : STD_LOGIC;
  signal \g0.I6_n_21\ : STD_LOGIC;
  signal \g0.I6_n_22\ : STD_LOGIC;
  signal \g0.I6_n_23\ : STD_LOGIC;
  signal \g0.I6_n_24\ : STD_LOGIC;
  signal \g0.I6_n_25\ : STD_LOGIC;
  signal \g0.I6_n_26\ : STD_LOGIC;
  signal \g0.I6_n_27\ : STD_LOGIC;
  signal \g0.I6_n_28\ : STD_LOGIC;
  signal \g0.I6_n_3\ : STD_LOGIC;
  signal \g0.I6_n_5\ : STD_LOGIC;
  signal \g0.I6_n_6\ : STD_LOGIC;
  signal \g0.I6_n_7\ : STD_LOGIC;
  signal \g0.I6_n_9\ : STD_LOGIC;
  signal num : STD_LOGIC_VECTOR ( 5 to 5 );
  signal p_0_in0 : STD_LOGIC;
  signal rx_csm_current_state : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal tx_ack : STD_LOGIC;
  signal tx_reg : STD_LOGIC_VECTOR ( 5 to 5 );
begin
\g0.I1\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bus_bridge_16
     port map (
      D(31 downto 0) => D(31 downto 0),
      E(3 downto 0) => E(3 downto 0),
      Q(31 downto 0) => Q(31 downto 0),
      SR(0) => \g0.I1_n_42\,
      bus_ack => bus_ack,
      bus_addr_int(3 downto 0) => bus_addr_int(3 downto 0),
      \bus_addr_int_reg[0]_0\ => \bus_addr_int_reg[0]\,
      \bus_addr_int_reg[0]_1\(2) => p_0_in0,
      \bus_addr_int_reg[0]_1\(1) => \g0.I6_n_5\,
      \bus_addr_int_reg[0]_1\(0) => \g0.I6_n_6\,
      \bus_addr_int_reg[14]_0\(6) => \g0.I6_n_17\,
      \bus_addr_int_reg[14]_0\(5) => \g0.I6_n_18\,
      \bus_addr_int_reg[14]_0\(4) => \g0.I6_n_19\,
      \bus_addr_int_reg[14]_0\(3) => \g0.I6_n_20\,
      \bus_addr_int_reg[14]_0\(2) => \g0.I6_n_21\,
      \bus_addr_int_reg[14]_0\(1) => \g0.I6_n_22\,
      \bus_addr_int_reg[14]_0\(0) => \g0.I6_n_23\,
      \bus_addr_int_reg[15]_0\(6 downto 5) => bus_addr_int0(14 downto 13),
      \bus_addr_int_reg[15]_0\(4 downto 3) => bus_addr_int0(10 downto 9),
      \bus_addr_int_reg[15]_0\(2 downto 1) => bus_addr_int0(6 downto 5),
      \bus_addr_int_reg[15]_0\(0) => bus_addr_int0(1),
      \bus_addr_int_reg[1]_0\ => \bus_addr_int_reg[1]\,
      \bus_addr_int_reg[1]_1\ => \bus_addr_int_reg[1]_0\,
      \bus_din_tmp_reg[0]_0\(0) => \bus_din_tmp_reg[0]\(0),
      \bus_din_tmp_reg[31]_0\(31 downto 0) => \bus_din_tmp_reg[31]\(31 downto 0),
      \bus_dout_int_reg[16]_0\ => \g0.I6_n_27\,
      \bus_dout_int_reg[20]_0\ => \g0.I6_n_28\,
      \bus_dout_int_reg[31]_0\(63 downto 0) => \bus_dout_int_reg[31]\(63 downto 0),
      bus_we => bus_we,
      clk => clk,
      cmd_par => cmd_par,
      cmd_par_reg_0 => \g0.I6_n_14\,
      cmd_we => cmd_we,
      current_state => \I1/current_state\,
      lock_rx_reg_0 => \g0.I1_n_132\,
      lock_rx_reg_1 => \g0.I1_n_134\,
      lock_rx_reg_2 => \g0.I1_n_135\,
      \num_reg[2]_0\ => \g0.I1_n_129\,
      \num_reg[5]_0\(0) => num(5),
      \num_reg[5]_1\ => \g0.I6_n_26\,
      \num_reg[5]_2\(0) => \g0.I6_n_24\,
      \reg_reg[95]\ => \reg_reg[95]\,
      reset => reset,
      response_en_rx_reg_0 => \g0.I1_n_0\,
      \response_nibble_rx_reg[1]_0\ => \g0.I1_n_133\,
      \response_nibble_rx_reg[3]_0\(0) => \g0.I1_n_131\,
      rx_ack_cld_reg => \g0.I1_n_119\,
      rx_csm_current_state(5 downto 0) => rx_csm_current_state(5 downto 0),
      \rx_csm_current_state_reg[0]_0\ => \g0.I1_n_8\,
      \rx_csm_current_state_reg[1]_0\(1) => \g0.I6_n_9\,
      \rx_csm_current_state_reg[1]_0\(0) => \g0.I6_n_10\,
      \rx_csm_current_state_reg[2]_0\ => \g0.I1_n_9\,
      \rx_csm_current_state_reg[2]_1\ => \rx_csm_current_state_reg[2]\,
      \rx_csm_current_state_reg[2]_2\ => \g0.I6_n_11\,
      \rx_csm_current_state_reg[2]_3\ => \g0.I6_n_13\,
      \rx_csm_current_state_reg[2]_4\ => \g0.I6_n_15\,
      \rx_csm_current_state_reg[3]_0\ => \g0.I1_n_121\,
      \rx_csm_current_state_reg[3]_1\ => \g0.I6_n_7\,
      \rx_csm_current_state_reg[3]_2\ => \g0.I6_n_16\,
      \rx_csm_current_state_reg[4]_0\ => \g0.I1_n_43\,
      \rx_csm_current_state_reg[4]_1\ => \g0.I1_n_44\,
      \rx_csm_current_state_reg[4]_2\ => \g0.I6_n_25\,
      \rx_csm_current_state_reg[4]_3\ => \g0.I6_n_12\,
      \rx_csm_current_state_reg[4]_4\ => \g0.I6_n_3\,
      \rx_csm_current_state_reg[5]_0\ => \g0.I1_n_45\,
      sbus_ack0 => sbus_ack0,
      \sbus_rdata_reg[0]\ => \sbus_rdata_reg[0]\,
      \sbus_rdata_reg[10]\ => \sbus_rdata_reg[10]\,
      \sbus_rdata_reg[11]\ => \sbus_rdata_reg[11]\,
      \sbus_rdata_reg[12]\ => \sbus_rdata_reg[12]\,
      \sbus_rdata_reg[13]\ => \sbus_rdata_reg[13]\,
      \sbus_rdata_reg[14]\ => \sbus_rdata_reg[14]\,
      \sbus_rdata_reg[15]\ => \sbus_rdata_reg[15]\,
      \sbus_rdata_reg[16]\ => \sbus_rdata_reg[16]\,
      \sbus_rdata_reg[17]\ => \sbus_rdata_reg[17]\,
      \sbus_rdata_reg[18]\ => \sbus_rdata_reg[18]\,
      \sbus_rdata_reg[19]\ => \sbus_rdata_reg[19]\,
      \sbus_rdata_reg[1]\ => \sbus_rdata_reg[1]\,
      \sbus_rdata_reg[20]\ => \sbus_rdata_reg[20]\,
      \sbus_rdata_reg[21]\ => \sbus_rdata_reg[21]\,
      \sbus_rdata_reg[22]\ => \sbus_rdata_reg[22]\,
      \sbus_rdata_reg[23]\ => \sbus_rdata_reg[23]\,
      \sbus_rdata_reg[24]\ => \sbus_rdata_reg[24]\,
      \sbus_rdata_reg[25]\ => \sbus_rdata_reg[25]\,
      \sbus_rdata_reg[26]\ => \sbus_rdata_reg[26]\,
      \sbus_rdata_reg[27]\ => \sbus_rdata_reg[27]\,
      \sbus_rdata_reg[28]\ => \sbus_rdata_reg[28]\,
      \sbus_rdata_reg[29]\ => \sbus_rdata_reg[29]\,
      \sbus_rdata_reg[2]\ => \sbus_rdata_reg[2]\,
      \sbus_rdata_reg[30]\ => \sbus_rdata_reg[30]\,
      \sbus_rdata_reg[31]\ => \sbus_rdata_reg[31]\,
      \sbus_rdata_reg[3]\ => \sbus_rdata_reg[3]\,
      \sbus_rdata_reg[4]\ => \sbus_rdata_reg[4]\,
      \sbus_rdata_reg[5]\ => \sbus_rdata_reg[5]\,
      \sbus_rdata_reg[6]\ => \sbus_rdata_reg[6]\,
      \sbus_rdata_reg[7]\ => \sbus_rdata_reg[7]\,
      \sbus_rdata_reg[8]\ => \sbus_rdata_reg[8]\,
      \sbus_rdata_reg[9]\ => \sbus_rdata_reg[9]\,
      tx_ack => tx_ack,
      \tx_reg_reg[4]\(0) => tx_reg(5)
    );
\g0.I6\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top
     port map (
      D(0) => \g0.I1_n_131\,
      Q(2) => p_0_in0,
      Q(1) => \g0.I6_n_5\,
      Q(0) => \g0.I6_n_6\,
      SR(0) => \g0.I1_n_42\,
      bus_ack => bus_ack,
      bus_addr_int(3 downto 0) => bus_addr_int(3 downto 0),
      \bus_addr_int_reg[14]\(6 downto 5) => bus_addr_int0(14 downto 13),
      \bus_addr_int_reg[14]\(4 downto 3) => bus_addr_int0(10 downto 9),
      \bus_addr_int_reg[14]\(2 downto 1) => bus_addr_int0(6 downto 5),
      \bus_addr_int_reg[14]\(0) => bus_addr_int0(1),
      clk => clk,
      cmd_par => cmd_par,
      cmd_par_reg => \g0.I6_n_14\,
      cmd_we => cmd_we,
      current_state => \I1/current_state\,
      current_state_reg => \g0.I1_n_0\,
      \dout_int_reg[1]\(0) => \g0.I6_n_24\,
      \dout_int_reg[2]\ => \g0.I6_n_11\,
      \dout_int_reg[2]_0\ => \g0.I6_n_13\,
      \dout_int_reg[2]_1\ => \g0.I6_n_15\,
      \dout_int_reg[4]\ => \g0.I6_n_7\,
      \dout_int_reg[4]_0\(1) => \g0.I6_n_9\,
      \dout_int_reg[4]_0\(0) => \g0.I6_n_10\,
      \dout_int_reg[4]_1\ => \g0.I6_n_12\,
      \dout_int_reg[6]\ => \g0.I6_n_3\,
      \dout_int_reg[6]_0\ => \g0.I6_n_16\,
      \num_reg[5]\(0) => num(5),
      \num_reg[5]_0\ => \g0.I1_n_129\,
      reset => reset,
      rx_ack_cld_reg => \g0.I6_n_25\,
      rx_ack_cld_reg_0 => \g0.I6_n_27\,
      rx_ack_cld_reg_1 => \g0.I6_n_28\,
      rx_csm_current_state(5 downto 0) => rx_csm_current_state(5 downto 0),
      \rx_csm_current_state_reg[0]\ => \g0.I1_n_45\,
      \rx_csm_current_state_reg[0]_0\ => \g0.I1_n_9\,
      \rx_csm_current_state_reg[0]_1\ => \g0.I1_n_44\,
      \rx_csm_current_state_reg[1]\ => \g0.I1_n_8\,
      \rx_csm_current_state_reg[1]_0\ => \g0.I1_n_119\,
      \rx_csm_current_state_reg[1]_1\ => \g0.I1_n_43\,
      \rx_csm_current_state_reg[3]\(6) => \g0.I6_n_17\,
      \rx_csm_current_state_reg[3]\(5) => \g0.I6_n_18\,
      \rx_csm_current_state_reg[3]\(4) => \g0.I6_n_19\,
      \rx_csm_current_state_reg[3]\(3) => \g0.I6_n_20\,
      \rx_csm_current_state_reg[3]\(2) => \g0.I6_n_21\,
      \rx_csm_current_state_reg[3]\(1) => \g0.I6_n_22\,
      \rx_csm_current_state_reg[3]\(0) => \g0.I6_n_23\,
      \rx_csm_current_state_reg[3]_0\ => \g0.I1_n_121\,
      rxd => rxd,
      tx_ack => tx_ack,
      tx_ack_cld_reg => \g0.I6_n_26\,
      \tx_reg_reg[1]\ => \g0.I1_n_133\,
      \tx_reg_reg[2]\ => \g0.I1_n_134\,
      \tx_reg_reg[3]\ => \g0.I1_n_135\,
      \tx_reg_reg[5]\(0) => tx_reg(5),
      \tx_reg_reg[6]\ => \g0.I1_n_132\,
      txd => txd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_awfg is
  port (
    sbus_ack : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sbus_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dac_sdin0 : out STD_LOGIC;
    dac_sdin1 : out STD_LOGIC;
    txd : out STD_LOGIC;
    pmod_jc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dac_sclk : out STD_LOGIC;
    dac_sync : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    sbus_we : in STD_LOGIC;
    sbus_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sbus_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sbus_rd : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rxd : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_awfg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_awfg is
  signal Addr : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal U_1_n_0 : STD_LOGIC;
  signal U_1_n_1 : STD_LOGIC;
  signal U_1_n_2 : STD_LOGIC;
  signal U_1_n_3 : STD_LOGIC;
  signal U_1_n_4 : STD_LOGIC;
  signal U_1_n_5 : STD_LOGIC;
  signal U_1_n_6 : STD_LOGIC;
  signal U_1_n_7 : STD_LOGIC;
  signal U_3_n_5 : STD_LOGIC;
  signal U_3_n_7 : STD_LOGIC;
  signal U_4_n_10 : STD_LOGIC;
  signal U_4_n_11 : STD_LOGIC;
  signal U_4_n_12 : STD_LOGIC;
  signal U_4_n_13 : STD_LOGIC;
  signal U_4_n_14 : STD_LOGIC;
  signal U_4_n_15 : STD_LOGIC;
  signal U_4_n_16 : STD_LOGIC;
  signal U_4_n_17 : STD_LOGIC;
  signal U_4_n_18 : STD_LOGIC;
  signal U_4_n_19 : STD_LOGIC;
  signal U_4_n_20 : STD_LOGIC;
  signal U_4_n_21 : STD_LOGIC;
  signal U_4_n_22 : STD_LOGIC;
  signal U_4_n_23 : STD_LOGIC;
  signal U_4_n_4 : STD_LOGIC;
  signal U_4_n_5 : STD_LOGIC;
  signal U_4_n_6 : STD_LOGIC;
  signal U_4_n_7 : STD_LOGIC;
  signal U_4_n_8 : STD_LOGIC;
  signal U_4_n_9 : STD_LOGIC;
  signal U_5_n_0 : STD_LOGIC;
  signal U_5_n_1 : STD_LOGIC;
  signal U_5_n_10 : STD_LOGIC;
  signal U_5_n_105 : STD_LOGIC;
  signal U_5_n_11 : STD_LOGIC;
  signal U_5_n_12 : STD_LOGIC;
  signal U_5_n_13 : STD_LOGIC;
  signal U_5_n_14 : STD_LOGIC;
  signal U_5_n_15 : STD_LOGIC;
  signal U_5_n_16 : STD_LOGIC;
  signal U_5_n_17 : STD_LOGIC;
  signal U_5_n_18 : STD_LOGIC;
  signal U_5_n_19 : STD_LOGIC;
  signal U_5_n_2 : STD_LOGIC;
  signal U_5_n_20 : STD_LOGIC;
  signal U_5_n_21 : STD_LOGIC;
  signal U_5_n_22 : STD_LOGIC;
  signal U_5_n_23 : STD_LOGIC;
  signal U_5_n_24 : STD_LOGIC;
  signal U_5_n_25 : STD_LOGIC;
  signal U_5_n_26 : STD_LOGIC;
  signal U_5_n_27 : STD_LOGIC;
  signal U_5_n_28 : STD_LOGIC;
  signal U_5_n_29 : STD_LOGIC;
  signal U_5_n_3 : STD_LOGIC;
  signal U_5_n_30 : STD_LOGIC;
  signal U_5_n_31 : STD_LOGIC;
  signal U_5_n_32 : STD_LOGIC;
  signal U_5_n_33 : STD_LOGIC;
  signal U_5_n_34 : STD_LOGIC;
  signal U_5_n_35 : STD_LOGIC;
  signal U_5_n_36 : STD_LOGIC;
  signal U_5_n_37 : STD_LOGIC;
  signal U_5_n_38 : STD_LOGIC;
  signal U_5_n_4 : STD_LOGIC;
  signal U_5_n_5 : STD_LOGIC;
  signal U_5_n_6 : STD_LOGIC;
  signal U_5_n_7 : STD_LOGIC;
  signal U_5_n_8 : STD_LOGIC;
  signal U_5_n_9 : STD_LOGIC;
  signal U_6_n_1 : STD_LOGIC;
  signal U_6_n_2 : STD_LOGIC;
  signal U_6_n_35 : STD_LOGIC;
  signal U_6_n_36 : STD_LOGIC;
  signal U_6_n_37 : STD_LOGIC;
  signal U_6_n_38 : STD_LOGIC;
  signal U_6_n_39 : STD_LOGIC;
  signal U_6_n_40 : STD_LOGIC;
  signal U_6_n_41 : STD_LOGIC;
  signal U_6_n_42 : STD_LOGIC;
  signal U_6_n_43 : STD_LOGIC;
  signal U_6_n_44 : STD_LOGIC;
  signal U_6_n_45 : STD_LOGIC;
  signal U_6_n_46 : STD_LOGIC;
  signal U_6_n_47 : STD_LOGIC;
  signal U_6_n_48 : STD_LOGIC;
  signal U_6_n_49 : STD_LOGIC;
  signal U_6_n_50 : STD_LOGIC;
  signal U_6_n_51 : STD_LOGIC;
  signal U_6_n_52 : STD_LOGIC;
  signal U_6_n_53 : STD_LOGIC;
  signal U_6_n_54 : STD_LOGIC;
  signal U_6_n_55 : STD_LOGIC;
  signal U_6_n_56 : STD_LOGIC;
  signal U_6_n_57 : STD_LOGIC;
  signal U_6_n_58 : STD_LOGIC;
  signal U_6_n_59 : STD_LOGIC;
  signal U_6_n_60 : STD_LOGIC;
  signal U_6_n_61 : STD_LOGIC;
  signal U_6_n_62 : STD_LOGIC;
  signal U_6_n_63 : STD_LOGIC;
  signal U_6_n_64 : STD_LOGIC;
  signal U_6_n_65 : STD_LOGIC;
  signal U_6_n_66 : STD_LOGIC;
  signal \amplitude[0]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[10]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[11]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[12]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[13]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[14]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[15]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[16]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[17]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[18]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[19]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[1]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[20]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[21]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[22]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[23]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[24]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[25]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[26]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[27]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[28]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[29]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[2]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[30]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[31]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[3]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[4]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[5]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[6]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[7]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[8]_i_1_n_0\ : STD_LOGIC;
  signal \amplitude[9]_i_1_n_0\ : STD_LOGIC;
  signal amplitude_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \amplitude_reg_n_0_[0]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[10]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[11]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[12]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[13]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[14]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[15]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[16]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[17]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[18]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[19]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[1]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[20]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[21]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[22]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[23]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[24]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[25]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[26]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[27]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[28]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[29]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[2]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[30]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[31]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[3]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[4]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[5]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[6]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[7]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[8]\ : STD_LOGIC;
  signal \amplitude_reg_n_0_[9]\ : STD_LOGIC;
  signal bus_ack : STD_LOGIC;
  signal bus_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bus_dout_int : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bus_we : STD_LOGIC;
  signal buttons_s : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal cnt_reg : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal dac0 : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \dac0[15]_i_1_n_0\ : STD_LOGIC;
  signal dac1 : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \frequency[0]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[10]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[11]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[12]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[13]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[14]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[15]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[16]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[17]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[18]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[19]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[1]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[20]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[21]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[22]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[23]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[24]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[25]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[26]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[27]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[28]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[29]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[2]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[30]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[31]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[3]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[4]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[5]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[6]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[7]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[8]_i_1_n_0\ : STD_LOGIC;
  signal \frequency[9]_i_1_n_0\ : STD_LOGIC;
  signal frequency_o : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \frequency_reg_n_0_[0]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[10]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[11]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[12]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[13]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[14]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[15]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[16]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[17]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[18]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[19]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[1]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[20]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[21]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[22]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[23]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[24]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[25]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[26]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[27]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[28]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[29]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[2]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[30]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[31]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[3]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[4]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[5]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[6]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[7]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[8]\ : STD_LOGIC;
  signal \frequency_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal reg : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal reg_din : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal sample_daq : STD_LOGIC;
  signal sbus_ack0 : STD_LOGIC;
  signal \sbus_rdata__0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \amplitude[0]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \amplitude[10]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \amplitude[11]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \amplitude[12]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \amplitude[13]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \amplitude[14]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \amplitude[15]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \amplitude[16]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \amplitude[17]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \amplitude[18]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \amplitude[19]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \amplitude[1]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \amplitude[20]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \amplitude[21]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \amplitude[22]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \amplitude[23]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \amplitude[24]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \amplitude[25]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \amplitude[26]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \amplitude[27]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \amplitude[28]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \amplitude[29]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \amplitude[2]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \amplitude[30]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \amplitude[31]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \amplitude[3]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \amplitude[4]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \amplitude[5]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \amplitude[6]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \amplitude[7]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \amplitude[8]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \amplitude[9]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \frequency[0]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \frequency[10]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \frequency[11]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \frequency[12]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \frequency[13]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \frequency[14]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \frequency[15]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \frequency[16]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \frequency[17]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \frequency[18]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \frequency[19]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \frequency[1]_i_1\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \frequency[20]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \frequency[21]_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \frequency[22]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \frequency[23]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \frequency[24]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \frequency[25]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \frequency[26]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \frequency[27]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \frequency[28]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \frequency[29]_i_1\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \frequency[2]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \frequency[30]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \frequency[31]_i_1\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \frequency[3]_i_1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \frequency[4]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \frequency[5]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \frequency[6]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \frequency[7]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \frequency[8]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \frequency[9]_i_1\ : label is "soft_lutpair128";
begin
U_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_registers
     port map (
      D(7) => U_1_n_0,
      D(6) => U_1_n_1,
      D(5) => U_1_n_2,
      D(4) => U_1_n_3,
      D(3) => U_1_n_4,
      D(2) => U_1_n_5,
      D(1) => U_1_n_6,
      D(0) => U_1_n_7,
      Q(7 downto 4) => buttons_s(3 downto 0),
      Q(3) => p_0_in_0,
      Q(2) => U_3_n_5,
      Q(1) => p_1_in,
      Q(0) => U_3_n_7,
      clk => clk,
      \reg_din_reg[447]_0\(31) => \amplitude_reg_n_0_[31]\,
      \reg_din_reg[447]_0\(30) => \amplitude_reg_n_0_[30]\,
      \reg_din_reg[447]_0\(29) => \amplitude_reg_n_0_[29]\,
      \reg_din_reg[447]_0\(28) => \amplitude_reg_n_0_[28]\,
      \reg_din_reg[447]_0\(27) => \amplitude_reg_n_0_[27]\,
      \reg_din_reg[447]_0\(26) => \amplitude_reg_n_0_[26]\,
      \reg_din_reg[447]_0\(25) => \amplitude_reg_n_0_[25]\,
      \reg_din_reg[447]_0\(24) => \amplitude_reg_n_0_[24]\,
      \reg_din_reg[447]_0\(23) => \amplitude_reg_n_0_[23]\,
      \reg_din_reg[447]_0\(22) => \amplitude_reg_n_0_[22]\,
      \reg_din_reg[447]_0\(21) => \amplitude_reg_n_0_[21]\,
      \reg_din_reg[447]_0\(20) => \amplitude_reg_n_0_[20]\,
      \reg_din_reg[447]_0\(19) => \amplitude_reg_n_0_[19]\,
      \reg_din_reg[447]_0\(18) => \amplitude_reg_n_0_[18]\,
      \reg_din_reg[447]_0\(17) => \amplitude_reg_n_0_[17]\,
      \reg_din_reg[447]_0\(16) => \amplitude_reg_n_0_[16]\,
      \reg_din_reg[447]_0\(15) => \amplitude_reg_n_0_[15]\,
      \reg_din_reg[447]_0\(14) => \amplitude_reg_n_0_[14]\,
      \reg_din_reg[447]_0\(13) => \amplitude_reg_n_0_[13]\,
      \reg_din_reg[447]_0\(12) => \amplitude_reg_n_0_[12]\,
      \reg_din_reg[447]_0\(11) => \amplitude_reg_n_0_[11]\,
      \reg_din_reg[447]_0\(10) => \amplitude_reg_n_0_[10]\,
      \reg_din_reg[447]_0\(9) => \amplitude_reg_n_0_[9]\,
      \reg_din_reg[447]_0\(8) => \amplitude_reg_n_0_[8]\,
      \reg_din_reg[447]_0\(7) => \amplitude_reg_n_0_[7]\,
      \reg_din_reg[447]_0\(6) => \amplitude_reg_n_0_[6]\,
      \reg_din_reg[447]_0\(5) => \amplitude_reg_n_0_[5]\,
      \reg_din_reg[447]_0\(4) => \amplitude_reg_n_0_[4]\,
      \reg_din_reg[447]_0\(3) => \amplitude_reg_n_0_[3]\,
      \reg_din_reg[447]_0\(2) => \amplitude_reg_n_0_[2]\,
      \reg_din_reg[447]_0\(1) => \amplitude_reg_n_0_[1]\,
      \reg_din_reg[447]_0\(0) => \amplitude_reg_n_0_[0]\,
      \reg_din_reg[479]_0\(31) => \frequency_reg_n_0_[31]\,
      \reg_din_reg[479]_0\(30) => \frequency_reg_n_0_[30]\,
      \reg_din_reg[479]_0\(29) => \frequency_reg_n_0_[29]\,
      \reg_din_reg[479]_0\(28) => \frequency_reg_n_0_[28]\,
      \reg_din_reg[479]_0\(27) => \frequency_reg_n_0_[27]\,
      \reg_din_reg[479]_0\(26) => \frequency_reg_n_0_[26]\,
      \reg_din_reg[479]_0\(25) => \frequency_reg_n_0_[25]\,
      \reg_din_reg[479]_0\(24) => \frequency_reg_n_0_[24]\,
      \reg_din_reg[479]_0\(23) => \frequency_reg_n_0_[23]\,
      \reg_din_reg[479]_0\(22) => \frequency_reg_n_0_[22]\,
      \reg_din_reg[479]_0\(21) => \frequency_reg_n_0_[21]\,
      \reg_din_reg[479]_0\(20) => \frequency_reg_n_0_[20]\,
      \reg_din_reg[479]_0\(19) => \frequency_reg_n_0_[19]\,
      \reg_din_reg[479]_0\(18) => \frequency_reg_n_0_[18]\,
      \reg_din_reg[479]_0\(17) => \frequency_reg_n_0_[17]\,
      \reg_din_reg[479]_0\(16) => \frequency_reg_n_0_[16]\,
      \reg_din_reg[479]_0\(15) => \frequency_reg_n_0_[15]\,
      \reg_din_reg[479]_0\(14) => \frequency_reg_n_0_[14]\,
      \reg_din_reg[479]_0\(13) => \frequency_reg_n_0_[13]\,
      \reg_din_reg[479]_0\(12) => \frequency_reg_n_0_[12]\,
      \reg_din_reg[479]_0\(11) => \frequency_reg_n_0_[11]\,
      \reg_din_reg[479]_0\(10) => \frequency_reg_n_0_[10]\,
      \reg_din_reg[479]_0\(9) => \frequency_reg_n_0_[9]\,
      \reg_din_reg[479]_0\(8) => \frequency_reg_n_0_[8]\,
      \reg_din_reg[479]_0\(7) => \frequency_reg_n_0_[7]\,
      \reg_din_reg[479]_0\(6) => \frequency_reg_n_0_[6]\,
      \reg_din_reg[479]_0\(5) => \frequency_reg_n_0_[5]\,
      \reg_din_reg[479]_0\(4) => \frequency_reg_n_0_[4]\,
      \reg_din_reg[479]_0\(3) => \frequency_reg_n_0_[3]\,
      \reg_din_reg[479]_0\(2) => \frequency_reg_n_0_[2]\,
      \reg_din_reg[479]_0\(1) => \frequency_reg_n_0_[1]\,
      \reg_din_reg[479]_0\(0) => \frequency_reg_n_0_[0]\,
      \reg_reg[483]_0\(75 downto 72) => leds(3 downto 0),
      \reg_reg[483]_0\(71 downto 40) => amplitude_o(31 downto 0),
      \reg_reg[483]_0\(39 downto 8) => frequency_o(31 downto 0),
      \reg_reg[483]_0\(7 downto 0) => Addr(7 downto 0),
      reset => reset,
      sbus_ack => sbus_ack,
      sbus_addr(15 downto 0) => sbus_addr(15 downto 0),
      sbus_rd => sbus_rd,
      sbus_rdata(31 downto 0) => sbus_rdata(31 downto 0),
      sbus_wdata(31 downto 0) => sbus_wdata(31 downto 0),
      sbus_we => sbus_we
    );
U_2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dac_ctrl
     port map (
      clk => clk,
      dac0(11 downto 0) => dac0(15 downto 4),
      dac1(11 downto 0) => dac1(15 downto 4),
      dac_sclk => dac_sclk,
      dac_sdin0 => dac_sdin0,
      dac_sdin1 => dac_sdin1,
      dac_sync => dac_sync,
      reset => reset,
      sample_daq => sample_daq
    );
U_3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comp_signal_synchr
     port map (
      D(7 downto 0) => D(7 downto 0),
      Q(7 downto 4) => buttons_s(3 downto 0),
      Q(3) => p_0_in_0,
      Q(2) => U_3_n_5,
      Q(1) => p_1_in,
      Q(0) => U_3_n_7,
      clk => clk
    );
U_4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnt_modulus
     port map (
      D(7) => U_4_n_4,
      D(6) => U_4_n_5,
      D(5) => U_4_n_6,
      D(4) => U_4_n_7,
      D(3) => U_4_n_8,
      D(2) => U_4_n_9,
      D(1) => U_4_n_10,
      D(0) => U_4_n_11,
      Q(0) => p_1_in,
      clk => clk,
      \cnt_reg[10]_0\ => U_4_n_17,
      \cnt_reg[11]_0\ => U_4_n_16,
      \cnt_reg[12]_0\ => U_4_n_15,
      \cnt_reg[13]_0\ => U_4_n_14,
      \cnt_reg[14]_0\ => U_4_n_13,
      \cnt_reg[15]_0\ => U_4_n_12,
      \cnt_reg[4]_0\ => U_4_n_23,
      \cnt_reg[5]_0\ => U_4_n_22,
      \cnt_reg[6]_0\ => U_4_n_21,
      \cnt_reg[7]_0\(3 downto 0) => cnt_reg(7 downto 4),
      \cnt_reg[7]_1\ => U_4_n_20,
      \cnt_reg[8]_0\ => U_4_n_19,
      \cnt_reg[9]_0\ => U_4_n_18,
      \dac1_reg[15]\(7 downto 0) => Addr(7 downto 0),
      reset => reset
    );
U_5: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_bridge_32
     port map (
      D(31) => U_5_n_0,
      D(30) => U_5_n_1,
      D(29) => U_5_n_2,
      D(28) => U_5_n_3,
      D(27) => U_5_n_4,
      D(26) => U_5_n_5,
      D(25) => U_5_n_6,
      D(24) => U_5_n_7,
      D(23) => U_5_n_8,
      D(22) => U_5_n_9,
      D(21) => U_5_n_10,
      D(20) => U_5_n_11,
      D(19) => U_5_n_12,
      D(18) => U_5_n_13,
      D(17) => U_5_n_14,
      D(16) => U_5_n_15,
      D(15) => U_5_n_16,
      D(14) => U_5_n_17,
      D(13) => U_5_n_18,
      D(12) => U_5_n_19,
      D(11) => U_5_n_20,
      D(10) => U_5_n_21,
      D(9) => U_5_n_22,
      D(8) => U_5_n_23,
      D(7) => U_5_n_24,
      D(6) => U_5_n_25,
      D(5) => U_5_n_26,
      D(4) => U_5_n_27,
      D(3) => U_5_n_28,
      D(2) => U_5_n_29,
      D(1) => U_5_n_30,
      D(0) => U_5_n_31,
      E(3) => U_5_n_32,
      E(2) => U_5_n_33,
      E(1) => U_5_n_34,
      E(0) => U_5_n_35,
      Q(31 downto 0) => reg_din(127 downto 96),
      bus_ack => bus_ack,
      \bus_addr_int_reg[0]\ => U_5_n_36,
      \bus_addr_int_reg[1]\ => U_5_n_37,
      \bus_addr_int_reg[1]_0\ => U_5_n_38,
      \bus_din_tmp_reg[0]\(0) => U_6_n_66,
      \bus_din_tmp_reg[31]\(31 downto 0) => \sbus_rdata__0\(31 downto 0),
      \bus_dout_int_reg[31]\(63 downto 32) => bus_dout_int(31 downto 0),
      \bus_dout_int_reg[31]\(31 downto 0) => bus_dout(31 downto 0),
      bus_we => bus_we,
      clk => clk,
      \reg_reg[95]\ => U_6_n_1,
      reset => reset,
      \rx_csm_current_state_reg[2]\ => U_5_n_105,
      rxd => rxd,
      sbus_ack0 => sbus_ack0,
      \sbus_rdata_reg[0]\ => U_6_n_2,
      \sbus_rdata_reg[10]\ => U_6_n_44,
      \sbus_rdata_reg[11]\ => U_6_n_45,
      \sbus_rdata_reg[12]\ => U_6_n_46,
      \sbus_rdata_reg[13]\ => U_6_n_47,
      \sbus_rdata_reg[14]\ => U_6_n_48,
      \sbus_rdata_reg[15]\ => U_6_n_49,
      \sbus_rdata_reg[16]\ => U_6_n_50,
      \sbus_rdata_reg[17]\ => U_6_n_51,
      \sbus_rdata_reg[18]\ => U_6_n_52,
      \sbus_rdata_reg[19]\ => U_6_n_53,
      \sbus_rdata_reg[1]\ => U_6_n_35,
      \sbus_rdata_reg[20]\ => U_6_n_54,
      \sbus_rdata_reg[21]\ => U_6_n_55,
      \sbus_rdata_reg[22]\ => U_6_n_56,
      \sbus_rdata_reg[23]\ => U_6_n_57,
      \sbus_rdata_reg[24]\ => U_6_n_58,
      \sbus_rdata_reg[25]\ => U_6_n_59,
      \sbus_rdata_reg[26]\ => U_6_n_60,
      \sbus_rdata_reg[27]\ => U_6_n_61,
      \sbus_rdata_reg[28]\ => U_6_n_62,
      \sbus_rdata_reg[29]\ => U_6_n_63,
      \sbus_rdata_reg[2]\ => U_6_n_36,
      \sbus_rdata_reg[30]\ => U_6_n_64,
      \sbus_rdata_reg[31]\ => U_6_n_65,
      \sbus_rdata_reg[3]\ => U_6_n_37,
      \sbus_rdata_reg[4]\ => U_6_n_38,
      \sbus_rdata_reg[5]\ => U_6_n_39,
      \sbus_rdata_reg[6]\ => U_6_n_40,
      \sbus_rdata_reg[7]\ => U_6_n_41,
      \sbus_rdata_reg[8]\ => U_6_n_42,
      \sbus_rdata_reg[9]\ => U_6_n_43,
      txd => txd
    );
U_6: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_regs
     port map (
      D(31) => U_5_n_0,
      D(30) => U_5_n_1,
      D(29) => U_5_n_2,
      D(28) => U_5_n_3,
      D(27) => U_5_n_4,
      D(26) => U_5_n_5,
      D(25) => U_5_n_6,
      D(24) => U_5_n_7,
      D(23) => U_5_n_8,
      D(22) => U_5_n_9,
      D(21) => U_5_n_10,
      D(20) => U_5_n_11,
      D(19) => U_5_n_12,
      D(18) => U_5_n_13,
      D(17) => U_5_n_14,
      D(16) => U_5_n_15,
      D(15) => U_5_n_16,
      D(14) => U_5_n_17,
      D(13) => U_5_n_18,
      D(12) => U_5_n_19,
      D(11) => U_5_n_20,
      D(10) => U_5_n_21,
      D(9) => U_5_n_22,
      D(8) => U_5_n_23,
      D(7) => U_5_n_24,
      D(6) => U_5_n_25,
      D(5) => U_5_n_26,
      D(4) => U_5_n_27,
      D(3) => U_5_n_28,
      D(2) => U_5_n_29,
      D(1) => U_5_n_30,
      D(0) => U_5_n_31,
      E(3) => U_5_n_32,
      E(2) => U_5_n_33,
      E(1) => U_5_n_34,
      E(0) => U_5_n_35,
      Q(31 downto 0) => reg_din(127 downto 96),
      bus_ack => bus_ack,
      \bus_din_tmp_reg[0]\ => U_5_n_105,
      bus_we => bus_we,
      bus_we_q_reg_0 => U_6_n_1,
      clk => clk,
      \reg_din_reg[32]_0\ => U_6_n_2,
      \reg_din_reg[33]_0\ => U_6_n_35,
      \reg_din_reg[34]_0\ => U_6_n_36,
      \reg_din_reg[35]_0\ => U_6_n_37,
      \reg_din_reg[36]_0\ => U_6_n_38,
      \reg_din_reg[37]_0\ => U_6_n_39,
      \reg_din_reg[38]_0\ => U_6_n_40,
      \reg_din_reg[39]_0\ => U_6_n_41,
      \reg_din_reg[40]_0\ => U_6_n_42,
      \reg_din_reg[41]_0\ => U_6_n_43,
      \reg_din_reg[42]_0\ => U_6_n_44,
      \reg_din_reg[43]_0\ => U_6_n_45,
      \reg_din_reg[44]_0\ => U_6_n_46,
      \reg_din_reg[45]_0\ => U_6_n_47,
      \reg_din_reg[46]_0\ => U_6_n_48,
      \reg_din_reg[47]_0\ => U_6_n_49,
      \reg_din_reg[48]_0\ => U_6_n_50,
      \reg_din_reg[49]_0\ => U_6_n_51,
      \reg_din_reg[50]_0\ => U_6_n_52,
      \reg_din_reg[51]_0\ => U_6_n_53,
      \reg_din_reg[52]_0\ => U_6_n_54,
      \reg_din_reg[53]_0\ => U_6_n_55,
      \reg_din_reg[54]_0\ => U_6_n_56,
      \reg_din_reg[55]_0\ => U_6_n_57,
      \reg_din_reg[56]_0\ => U_6_n_58,
      \reg_din_reg[57]_0\ => U_6_n_59,
      \reg_din_reg[58]_0\ => U_6_n_60,
      \reg_din_reg[59]_0\ => U_6_n_61,
      \reg_din_reg[60]_0\ => U_6_n_62,
      \reg_din_reg[61]_0\ => U_6_n_63,
      \reg_din_reg[62]_0\ => U_6_n_64,
      \reg_din_reg[63]_0\ => U_6_n_65,
      \reg_reg[127]_0\(63 downto 32) => bus_dout_int(31 downto 0),
      \reg_reg[127]_0\(31 downto 0) => bus_dout(31 downto 0),
      \reg_reg[63]_0\(63 downto 0) => reg(63 downto 0),
      reset => reset,
      reset_0(0) => U_6_n_66,
      sbus_ack0 => sbus_ack0,
      \sbus_rdata_reg[0]_0\ => U_5_n_38,
      \sbus_rdata_reg[0]_1\ => U_5_n_36,
      \sbus_rdata_reg[0]_2\ => U_5_n_37,
      \sbus_rdata_reg[31]_0\(31 downto 0) => \sbus_rdata__0\(31 downto 0)
    );
U_7: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_comp_timer
     port map (
      clk => clk,
      reset => reset,
      sample_daq => sample_daq
    );
\amplitude[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(0),
      I1 => amplitude_o(0),
      I2 => p_0_in_0,
      O => \amplitude[0]_i_1_n_0\
    );
\amplitude[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(10),
      I1 => amplitude_o(10),
      I2 => p_0_in_0,
      O => \amplitude[10]_i_1_n_0\
    );
\amplitude[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(11),
      I1 => amplitude_o(11),
      I2 => p_0_in_0,
      O => \amplitude[11]_i_1_n_0\
    );
\amplitude[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(12),
      I1 => amplitude_o(12),
      I2 => p_0_in_0,
      O => \amplitude[12]_i_1_n_0\
    );
\amplitude[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(13),
      I1 => amplitude_o(13),
      I2 => p_0_in_0,
      O => \amplitude[13]_i_1_n_0\
    );
\amplitude[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(14),
      I1 => amplitude_o(14),
      I2 => p_0_in_0,
      O => \amplitude[14]_i_1_n_0\
    );
\amplitude[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(15),
      I1 => amplitude_o(15),
      I2 => p_0_in_0,
      O => \amplitude[15]_i_1_n_0\
    );
\amplitude[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(16),
      I1 => amplitude_o(16),
      I2 => p_0_in_0,
      O => \amplitude[16]_i_1_n_0\
    );
\amplitude[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(17),
      I1 => amplitude_o(17),
      I2 => p_0_in_0,
      O => \amplitude[17]_i_1_n_0\
    );
\amplitude[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(18),
      I1 => amplitude_o(18),
      I2 => p_0_in_0,
      O => \amplitude[18]_i_1_n_0\
    );
\amplitude[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(19),
      I1 => amplitude_o(19),
      I2 => p_0_in_0,
      O => \amplitude[19]_i_1_n_0\
    );
\amplitude[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(1),
      I1 => amplitude_o(1),
      I2 => p_0_in_0,
      O => \amplitude[1]_i_1_n_0\
    );
\amplitude[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(20),
      I1 => amplitude_o(20),
      I2 => p_0_in_0,
      O => \amplitude[20]_i_1_n_0\
    );
\amplitude[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(21),
      I1 => amplitude_o(21),
      I2 => p_0_in_0,
      O => \amplitude[21]_i_1_n_0\
    );
\amplitude[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(22),
      I1 => amplitude_o(22),
      I2 => p_0_in_0,
      O => \amplitude[22]_i_1_n_0\
    );
\amplitude[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(23),
      I1 => amplitude_o(23),
      I2 => p_0_in_0,
      O => \amplitude[23]_i_1_n_0\
    );
\amplitude[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(24),
      I1 => amplitude_o(24),
      I2 => p_0_in_0,
      O => \amplitude[24]_i_1_n_0\
    );
\amplitude[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(25),
      I1 => amplitude_o(25),
      I2 => p_0_in_0,
      O => \amplitude[25]_i_1_n_0\
    );
\amplitude[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(26),
      I1 => amplitude_o(26),
      I2 => p_0_in_0,
      O => \amplitude[26]_i_1_n_0\
    );
\amplitude[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(27),
      I1 => amplitude_o(27),
      I2 => p_0_in_0,
      O => \amplitude[27]_i_1_n_0\
    );
\amplitude[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(28),
      I1 => amplitude_o(28),
      I2 => p_0_in_0,
      O => \amplitude[28]_i_1_n_0\
    );
\amplitude[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(29),
      I1 => amplitude_o(29),
      I2 => p_0_in_0,
      O => \amplitude[29]_i_1_n_0\
    );
\amplitude[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(2),
      I1 => amplitude_o(2),
      I2 => p_0_in_0,
      O => \amplitude[2]_i_1_n_0\
    );
\amplitude[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(30),
      I1 => amplitude_o(30),
      I2 => p_0_in_0,
      O => \amplitude[30]_i_1_n_0\
    );
\amplitude[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(31),
      I1 => amplitude_o(31),
      I2 => p_0_in_0,
      O => \amplitude[31]_i_1_n_0\
    );
\amplitude[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(3),
      I1 => amplitude_o(3),
      I2 => p_0_in_0,
      O => \amplitude[3]_i_1_n_0\
    );
\amplitude[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(4),
      I1 => amplitude_o(4),
      I2 => p_0_in_0,
      O => \amplitude[4]_i_1_n_0\
    );
\amplitude[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(5),
      I1 => amplitude_o(5),
      I2 => p_0_in_0,
      O => \amplitude[5]_i_1_n_0\
    );
\amplitude[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(6),
      I1 => amplitude_o(6),
      I2 => p_0_in_0,
      O => \amplitude[6]_i_1_n_0\
    );
\amplitude[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(7),
      I1 => amplitude_o(7),
      I2 => p_0_in_0,
      O => \amplitude[7]_i_1_n_0\
    );
\amplitude[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(8),
      I1 => amplitude_o(8),
      I2 => p_0_in_0,
      O => \amplitude[8]_i_1_n_0\
    );
\amplitude[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => reg(9),
      I1 => amplitude_o(9),
      I2 => p_0_in_0,
      O => \amplitude[9]_i_1_n_0\
    );
\amplitude_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[0]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[0]\,
      R => '0'
    );
\amplitude_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[10]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[10]\,
      R => '0'
    );
\amplitude_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[11]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[11]\,
      R => '0'
    );
\amplitude_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[12]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[12]\,
      R => '0'
    );
\amplitude_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[13]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[13]\,
      R => '0'
    );
\amplitude_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[14]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[14]\,
      R => '0'
    );
\amplitude_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[15]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[15]\,
      R => '0'
    );
\amplitude_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[16]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[16]\,
      R => '0'
    );
\amplitude_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[17]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[17]\,
      R => '0'
    );
\amplitude_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[18]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[18]\,
      R => '0'
    );
\amplitude_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[19]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[19]\,
      R => '0'
    );
\amplitude_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[1]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[1]\,
      R => '0'
    );
\amplitude_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[20]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[20]\,
      R => '0'
    );
\amplitude_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[21]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[21]\,
      R => '0'
    );
\amplitude_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[22]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[22]\,
      R => '0'
    );
\amplitude_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[23]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[23]\,
      R => '0'
    );
\amplitude_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[24]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[24]\,
      R => '0'
    );
\amplitude_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[25]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[25]\,
      R => '0'
    );
\amplitude_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[26]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[26]\,
      R => '0'
    );
\amplitude_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[27]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[27]\,
      R => '0'
    );
\amplitude_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[28]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[28]\,
      R => '0'
    );
\amplitude_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[29]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[29]\,
      R => '0'
    );
\amplitude_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[2]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[2]\,
      R => '0'
    );
\amplitude_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[30]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[30]\,
      R => '0'
    );
\amplitude_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[31]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[31]\,
      R => '0'
    );
\amplitude_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[3]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[3]\,
      R => '0'
    );
\amplitude_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[4]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[4]\,
      R => '0'
    );
\amplitude_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[5]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[5]\,
      R => '0'
    );
\amplitude_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[6]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[6]\,
      R => '0'
    );
\amplitude_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[7]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[7]\,
      R => '0'
    );
\amplitude_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[8]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[8]\,
      R => '0'
    );
\amplitude_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \amplitude[9]_i_1_n_0\,
      Q => \amplitude_reg_n_0_[9]\,
      R => '0'
    );
\dac0[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_1_in,
      O => \dac0[15]_i_1_n_0\
    );
\dac0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_17,
      Q => dac0(10),
      R => \dac0[15]_i_1_n_0\
    );
\dac0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_16,
      Q => dac0(11),
      R => \dac0[15]_i_1_n_0\
    );
\dac0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_15,
      Q => dac0(12),
      R => \dac0[15]_i_1_n_0\
    );
\dac0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_14,
      Q => dac0(13),
      R => \dac0[15]_i_1_n_0\
    );
\dac0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_13,
      Q => dac0(14),
      R => \dac0[15]_i_1_n_0\
    );
\dac0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_12,
      Q => dac0(15),
      R => \dac0[15]_i_1_n_0\
    );
\dac0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_23,
      Q => dac0(4),
      R => \dac0[15]_i_1_n_0\
    );
\dac0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_22,
      Q => dac0(5),
      R => \dac0[15]_i_1_n_0\
    );
\dac0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_21,
      Q => dac0(6),
      R => \dac0[15]_i_1_n_0\
    );
\dac0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_20,
      Q => dac0(7),
      R => \dac0[15]_i_1_n_0\
    );
\dac0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_19,
      Q => dac0(8),
      R => \dac0[15]_i_1_n_0\
    );
\dac0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_18,
      Q => dac0(9),
      R => \dac0[15]_i_1_n_0\
    );
\dac1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_9,
      Q => dac1(10),
      R => '0'
    );
\dac1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_8,
      Q => dac1(11),
      R => '0'
    );
\dac1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_7,
      Q => dac1(12),
      R => '0'
    );
\dac1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_6,
      Q => dac1(13),
      R => '0'
    );
\dac1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_5,
      Q => dac1(14),
      R => '0'
    );
\dac1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_4,
      Q => dac1(15),
      R => '0'
    );
\dac1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_reg(4),
      Q => dac1(4),
      R => \dac0[15]_i_1_n_0\
    );
\dac1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_reg(5),
      Q => dac1(5),
      R => \dac0[15]_i_1_n_0\
    );
\dac1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_reg(6),
      Q => dac1(6),
      R => \dac0[15]_i_1_n_0\
    );
\dac1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt_reg(7),
      Q => dac1(7),
      R => \dac0[15]_i_1_n_0\
    );
\dac1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_11,
      Q => dac1(8),
      R => '0'
    );
\dac1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_4_n_10,
      Q => dac1(9),
      R => '0'
    );
\frequency[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(32),
      I1 => p_0_in_0,
      I2 => frequency_o(0),
      O => \frequency[0]_i_1_n_0\
    );
\frequency[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(42),
      I1 => p_0_in_0,
      I2 => frequency_o(10),
      O => \frequency[10]_i_1_n_0\
    );
\frequency[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(43),
      I1 => p_0_in_0,
      I2 => frequency_o(11),
      O => \frequency[11]_i_1_n_0\
    );
\frequency[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(44),
      I1 => p_0_in_0,
      I2 => frequency_o(12),
      O => \frequency[12]_i_1_n_0\
    );
\frequency[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(45),
      I1 => p_0_in_0,
      I2 => frequency_o(13),
      O => \frequency[13]_i_1_n_0\
    );
\frequency[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(46),
      I1 => p_0_in_0,
      I2 => frequency_o(14),
      O => \frequency[14]_i_1_n_0\
    );
\frequency[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(47),
      I1 => p_0_in_0,
      I2 => frequency_o(15),
      O => \frequency[15]_i_1_n_0\
    );
\frequency[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(48),
      I1 => p_0_in_0,
      I2 => frequency_o(16),
      O => \frequency[16]_i_1_n_0\
    );
\frequency[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(49),
      I1 => p_0_in_0,
      I2 => frequency_o(17),
      O => \frequency[17]_i_1_n_0\
    );
\frequency[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(50),
      I1 => p_0_in_0,
      I2 => frequency_o(18),
      O => \frequency[18]_i_1_n_0\
    );
\frequency[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(51),
      I1 => p_0_in_0,
      I2 => frequency_o(19),
      O => \frequency[19]_i_1_n_0\
    );
\frequency[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(33),
      I1 => p_0_in_0,
      I2 => frequency_o(1),
      O => \frequency[1]_i_1_n_0\
    );
\frequency[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(52),
      I1 => p_0_in_0,
      I2 => frequency_o(20),
      O => \frequency[20]_i_1_n_0\
    );
\frequency[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(53),
      I1 => p_0_in_0,
      I2 => frequency_o(21),
      O => \frequency[21]_i_1_n_0\
    );
\frequency[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(54),
      I1 => p_0_in_0,
      I2 => frequency_o(22),
      O => \frequency[22]_i_1_n_0\
    );
\frequency[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(55),
      I1 => p_0_in_0,
      I2 => frequency_o(23),
      O => \frequency[23]_i_1_n_0\
    );
\frequency[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(56),
      I1 => p_0_in_0,
      I2 => frequency_o(24),
      O => \frequency[24]_i_1_n_0\
    );
\frequency[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(57),
      I1 => p_0_in_0,
      I2 => frequency_o(25),
      O => \frequency[25]_i_1_n_0\
    );
\frequency[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(58),
      I1 => p_0_in_0,
      I2 => frequency_o(26),
      O => \frequency[26]_i_1_n_0\
    );
\frequency[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(59),
      I1 => p_0_in_0,
      I2 => frequency_o(27),
      O => \frequency[27]_i_1_n_0\
    );
\frequency[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(60),
      I1 => p_0_in_0,
      I2 => frequency_o(28),
      O => \frequency[28]_i_1_n_0\
    );
\frequency[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(61),
      I1 => p_0_in_0,
      I2 => frequency_o(29),
      O => \frequency[29]_i_1_n_0\
    );
\frequency[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(34),
      I1 => p_0_in_0,
      I2 => frequency_o(2),
      O => \frequency[2]_i_1_n_0\
    );
\frequency[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(62),
      I1 => p_0_in_0,
      I2 => frequency_o(30),
      O => \frequency[30]_i_1_n_0\
    );
\frequency[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(63),
      I1 => p_0_in_0,
      I2 => frequency_o(31),
      O => \frequency[31]_i_1_n_0\
    );
\frequency[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(35),
      I1 => p_0_in_0,
      I2 => frequency_o(3),
      O => \frequency[3]_i_1_n_0\
    );
\frequency[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(36),
      I1 => p_0_in_0,
      I2 => frequency_o(4),
      O => \frequency[4]_i_1_n_0\
    );
\frequency[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(37),
      I1 => p_0_in_0,
      I2 => frequency_o(5),
      O => \frequency[5]_i_1_n_0\
    );
\frequency[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(38),
      I1 => p_0_in_0,
      I2 => frequency_o(6),
      O => \frequency[6]_i_1_n_0\
    );
\frequency[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(39),
      I1 => p_0_in_0,
      I2 => frequency_o(7),
      O => \frequency[7]_i_1_n_0\
    );
\frequency[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(40),
      I1 => p_0_in_0,
      I2 => frequency_o(8),
      O => \frequency[8]_i_1_n_0\
    );
\frequency[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => reg(41),
      I1 => p_0_in_0,
      I2 => frequency_o(9),
      O => \frequency[9]_i_1_n_0\
    );
\frequency_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[0]_i_1_n_0\,
      Q => \frequency_reg_n_0_[0]\,
      R => '0'
    );
\frequency_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[10]_i_1_n_0\,
      Q => \frequency_reg_n_0_[10]\,
      R => '0'
    );
\frequency_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[11]_i_1_n_0\,
      Q => \frequency_reg_n_0_[11]\,
      R => '0'
    );
\frequency_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[12]_i_1_n_0\,
      Q => \frequency_reg_n_0_[12]\,
      R => '0'
    );
\frequency_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[13]_i_1_n_0\,
      Q => \frequency_reg_n_0_[13]\,
      R => '0'
    );
\frequency_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[14]_i_1_n_0\,
      Q => \frequency_reg_n_0_[14]\,
      R => '0'
    );
\frequency_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[15]_i_1_n_0\,
      Q => \frequency_reg_n_0_[15]\,
      R => '0'
    );
\frequency_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[16]_i_1_n_0\,
      Q => \frequency_reg_n_0_[16]\,
      R => '0'
    );
\frequency_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[17]_i_1_n_0\,
      Q => \frequency_reg_n_0_[17]\,
      R => '0'
    );
\frequency_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[18]_i_1_n_0\,
      Q => \frequency_reg_n_0_[18]\,
      R => '0'
    );
\frequency_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[19]_i_1_n_0\,
      Q => \frequency_reg_n_0_[19]\,
      R => '0'
    );
\frequency_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[1]_i_1_n_0\,
      Q => \frequency_reg_n_0_[1]\,
      R => '0'
    );
\frequency_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[20]_i_1_n_0\,
      Q => \frequency_reg_n_0_[20]\,
      R => '0'
    );
\frequency_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[21]_i_1_n_0\,
      Q => \frequency_reg_n_0_[21]\,
      R => '0'
    );
\frequency_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[22]_i_1_n_0\,
      Q => \frequency_reg_n_0_[22]\,
      R => '0'
    );
\frequency_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[23]_i_1_n_0\,
      Q => \frequency_reg_n_0_[23]\,
      R => '0'
    );
\frequency_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[24]_i_1_n_0\,
      Q => \frequency_reg_n_0_[24]\,
      R => '0'
    );
\frequency_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[25]_i_1_n_0\,
      Q => \frequency_reg_n_0_[25]\,
      R => '0'
    );
\frequency_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[26]_i_1_n_0\,
      Q => \frequency_reg_n_0_[26]\,
      R => '0'
    );
\frequency_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[27]_i_1_n_0\,
      Q => \frequency_reg_n_0_[27]\,
      R => '0'
    );
\frequency_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[28]_i_1_n_0\,
      Q => \frequency_reg_n_0_[28]\,
      R => '0'
    );
\frequency_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[29]_i_1_n_0\,
      Q => \frequency_reg_n_0_[29]\,
      R => '0'
    );
\frequency_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[2]_i_1_n_0\,
      Q => \frequency_reg_n_0_[2]\,
      R => '0'
    );
\frequency_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[30]_i_1_n_0\,
      Q => \frequency_reg_n_0_[30]\,
      R => '0'
    );
\frequency_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[31]_i_1_n_0\,
      Q => \frequency_reg_n_0_[31]\,
      R => '0'
    );
\frequency_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[3]_i_1_n_0\,
      Q => \frequency_reg_n_0_[3]\,
      R => '0'
    );
\frequency_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[4]_i_1_n_0\,
      Q => \frequency_reg_n_0_[4]\,
      R => '0'
    );
\frequency_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[5]_i_1_n_0\,
      Q => \frequency_reg_n_0_[5]\,
      R => '0'
    );
\frequency_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[6]_i_1_n_0\,
      Q => \frequency_reg_n_0_[6]\,
      R => '0'
    );
\frequency_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[7]_i_1_n_0\,
      Q => \frequency_reg_n_0_[7]\,
      R => '0'
    );
\frequency_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[8]_i_1_n_0\,
      Q => \frequency_reg_n_0_[8]\,
      R => '0'
    );
\frequency_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \frequency[9]_i_1_n_0\,
      Q => \frequency_reg_n_0_[9]\,
      R => '0'
    );
\pmod_jc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_1_n_7,
      Q => pmod_jc(0),
      R => '0'
    );
\pmod_jc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_1_n_6,
      Q => pmod_jc(1),
      R => '0'
    );
\pmod_jc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_1_n_5,
      Q => pmod_jc(2),
      R => '0'
    );
\pmod_jc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_1_n_4,
      Q => pmod_jc(3),
      R => '0'
    );
\pmod_jc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_1_n_3,
      Q => pmod_jc(4),
      R => '0'
    );
\pmod_jc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_1_n_2,
      Q => pmod_jc(5),
      R => '0'
    );
\pmod_jc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_1_n_1,
      Q => pmod_jc(6),
      R => '0'
    );
\pmod_jc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => U_1_n_0,
      Q => pmod_jc(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_sbus_awfg_0_0,top_awfg,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_awfg,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of dac_sclk : signal is "fh-joanneum.local:user:dac_dual:1.0 dac_dual dac_sclk, fh-joanneum.local:user:seg7:1.0 dac sclk";
  attribute x_interface_info of dac_sdin0 : signal is "fh-joanneum.local:user:dac_dual:1.0 dac_dual dac_sdin0";
  attribute x_interface_info of dac_sdin1 : signal is "fh-joanneum.local:user:dac_dual:1.0 dac_dual dac_sdin1";
  attribute x_interface_info of dac_sync : signal is "fh-joanneum.local:user:dac_dual:1.0 dac_dual dac_sync";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute x_interface_info of sbus_ack : signal is "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_ack";
  attribute x_interface_info of sbus_rd : signal is "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_rd";
  attribute x_interface_info of sbus_we : signal is "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_we";
  attribute x_interface_info of sbus_addr : signal is "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_addr";
  attribute x_interface_info of sbus_be : signal is "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_be";
  attribute x_interface_info of sbus_rdata : signal is "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_rdata";
  attribute x_interface_info of sbus_wdata : signal is "fh-joanneum.local:user:sbus:1.0 sbus_slv sbus_wdata";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_awfg
     port map (
      D(7 downto 4) => buttons(3 downto 0),
      D(3 downto 0) => sliders(3 downto 0),
      clk => clk,
      dac_sclk => dac_sclk,
      dac_sdin0 => dac_sdin0,
      dac_sdin1 => dac_sdin1,
      dac_sync => dac_sync,
      leds(3 downto 0) => leds(3 downto 0),
      pmod_jc(7 downto 0) => pmod_jc(7 downto 0),
      reset => reset,
      rxd => rxd,
      sbus_ack => sbus_ack,
      sbus_addr(15 downto 0) => sbus_addr(15 downto 0),
      sbus_rd => sbus_rd,
      sbus_rdata(31 downto 0) => sbus_rdata(31 downto 0),
      sbus_wdata(31 downto 0) => sbus_wdata(31 downto 0),
      sbus_we => sbus_we,
      txd => txd
    );
end STRUCTURE;
