--
-- VHDL Architecture common_lib.Encoding.rtl
--
-- Created:
--          by - Yoshi.UNKNOWN (YOSHIS-LAPTOP)
--          at - 16:21:32 22.03.2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity Encoding is
   port( 
      clk   : in     std_logic;
      A     : in     std_logic;
      B     : in     std_logic;
      A_ris : in     std_logic;
      B_ris : in     std_logic;
      inc   : out    std_logic;
      dec   : out    std_logic
   );

-- Declarations

end Encoding ;

--
architecture rtl of Encoding is
  signal plus, minus: std_logic;
begin
  process(clk)
  begin
    if rising_edge(clk)then
      if(A and B_ris) then
        plus <= '1';
        minus <= '0';
      elsif (B and A_ris) then
        minus <= '1';
        plus <= '0';
      else
        minus <= '0';
        plus <= '0';
      end if;
    end if;
  end process;
  inc <= plus;
  dec <= minus;

end architecture rtl;

