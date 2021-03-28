--
-- VHDL Architecture common_lib.Connection.rtl
--
-- Created:
--          by - Yoshi.UNKNOWN (YOSHIS-LAPTOP)
--          at - 11:14:29 27.10.2020
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity Connection is
  port(
    inA1: in std_logic;
    inA2: in std_logic;
    inB1: in std_logic;
    inB2: in std_logic;
    outA1: out std_logic;
    outA2: out std_logic;
    outB1: out std_logic;
    outB2: out std_logic
  );
    
end entity Connection;

--
architecture rtl of Connection is
begin
  outA1 <= inA1;
  outA2 <= inA2;
  outB1 <= inB1;
  outB2 <= inB2;
end architecture rtl;

