--
-- VHDL Architecture alfreda_lib.dac_model.rtl
--
-- Created:
--          by - Net.UNKNOWN (M00443)
--          at - 21:13:17 06.12.2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
library work;
use work.utilities.all;
use ieee.std_logic_unsigned.all;

entity dac_model is
   port( 
      dac_sclk  : in     std_logic;
      dac_sdin0 : in     std_logic;
      dac_sdin1 : in     std_logic;
      dac_sync  : in     std_logic;
      dac0      : out    std_logic_vector (15 downto 0);
      dac1      : out    std_logic_vector (15 downto 0)
   );

-- Declarations

end dac_model ;

--
architecture rtl of dac_model is
  signal sreg0,sreg1: std_logic_vector(15 downto 0);
begin
  process(dac_sclk)
  begin
    if falling_edge(dac_sclk) then
      sreg0 <= sreg0(sreg0'left-1 downto 0) & dac_sdin0;
      sreg1 <= sreg1(sreg1'left-1 downto 0) & dac_sdin1;
    end if;
  end process; 
     
  process(dac_sync)
  begin
    if rising_edge(dac_sync) then
      dac0 <= sreg0(13 downto 2) & "0000";
      dac1 <= sreg1(13 downto 2) & "0000";
    end if;
  end process;  
    
end architecture rtl;

