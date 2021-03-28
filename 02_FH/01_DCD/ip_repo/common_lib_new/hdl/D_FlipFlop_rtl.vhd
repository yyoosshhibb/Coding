--
-- VHDL Architecture common_lib.D_FlipFlop.rtl
--
-- Created:
--          by - Yoshi.UNKNOWN (YOSHIS-LAPTOP)
--          at - 15:20:55 22.03.2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity D_FlipFlop is
   port( 
      clk : in     std_logic;
      D   : in     std_logic;
      Q   : out    std_logic
   );

-- Declarations

end D_FlipFlop ;

--
architecture rtl of D_FlipFlop is
  signal q_internal: std_logic;
begin
  process(clk)
  begin
    if rising_edge(clk) then
      q_internal <= D;
    end if;
  end process;
  
  Q <= q_internal;
end architecture rtl;

