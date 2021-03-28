--
-- VHDL Architecture common_lib_new.toggle.rtl
--
-- Created:
--          by - Yoshi.UNKNOWN (YOSHIS-LAPTOP)
--          at - 16:19:29 23.03.2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity toggle is
   port( 
      clk    : in     std_logic;
      input  : in     std_logic;
      output : out    std_logic
   );

-- Declarations

end toggle ;

--
architecture rtl of toggle is
  signal temp: std_logic := '0';
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if input then
        temp <= not temp;
      end if;
    end if;
  end process;
  
  output <= temp;
        
end architecture rtl;

