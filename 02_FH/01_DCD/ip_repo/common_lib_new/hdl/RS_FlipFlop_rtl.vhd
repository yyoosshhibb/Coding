--
-- VHDL Architecture common_lib_new.RS_FlipFlop.rtl
--
-- Created:
--          by - Yoshi.UNKNOWN (YOSHIS-LAPTOP)
--          at - 16:10:53 23.03.2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity RS_FlipFlop is
  port( clk: in std_logic;
        S: in std_logic;
        R: in std_logic;
        Q: out std_logic;
        Qi: out std_logic
      );
end entity RS_FlipFlop;

--
architecture rtl of RS_FlipFlop is
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if R then
        Q <= '0';
        Qi <= '1';
      elsif S then
        Q <= '1';
        Qi <= '0';
      end if;
    end if;
  end process;
    
end architecture rtl;

