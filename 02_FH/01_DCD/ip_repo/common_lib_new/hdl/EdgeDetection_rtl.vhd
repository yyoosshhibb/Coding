--
-- VHDL Architecture common_lib.EdgeDetection.rtl
--
-- Created:
--          by - Yoshi.UNKNOWN (YOSHIS-LAPTOP)
--          at - 15:39:52 22.03.2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity EdgeDetection is
   port( 
      clk : in     std_logic;
      Qn  : in     std_logic;
      Qn1 : in     std_logic;
      Pos : out    std_logic;
      Neg : out    std_logic
   );

-- Declarations

end EdgeDetection ;

--
architecture rtl of EdgeDetection is
  signal pos_int, neg_int: std_logic;
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if (Qn AND NOT Qn1) then
        neg_int <= '1';
        pos_int <= '0';
      elsif (Qn1 AND NOT Qn) then
        pos_int <= '1';
        neg_int <= '0';
      else
        pos_int <= '0';
        neg_int <= '0';
      end if;
    end if;
  end process;
  
  Pos <= pos_int;
  Neg <= neg_int;
        
end architecture rtl;

