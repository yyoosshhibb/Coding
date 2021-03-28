--
-- VHDL Architecture tutorial_lib.binary_counter.rtl
--
-- Created:
--          by - bauerjoh17.UNKNOWN (R00717)
--          at - 09:29:04 10/ 8/2020
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity binary_counter is
   generic( 
      nbits_g : integer := 8
   );
   port( 
      clk    : in     std_logic;
      reset  : in     std_logic;
      enable : in     std_logic;
      dir    : in     std_logic;
      cnt    : out    std_logic_vector (nbits_g-1 downto 0)
   );

-- Declarations

end binary_counter ;

--
architecture rtl of binary_counter is
  signal counter: std_logic_vector(cnt'range) := (others => '0');
begin
  
  -- universal synchronus up/down counter with synchronus reset and count enable
  
  process(clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        counter <= (others => '0');
      elsif enable = '1' then
        if dir = '1' then
          counter <= counter + 1;
        else
          counter <= counter - 1;
        end if;
      end if;
    end if;
  end process;
    
    --connect internal signal to output port
    cnt <= counter;
          
end architecture rtl;

