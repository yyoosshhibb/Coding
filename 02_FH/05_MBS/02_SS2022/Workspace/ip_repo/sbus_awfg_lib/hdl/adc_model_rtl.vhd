--
-- VHDL Architecture alfreda_lib.adc_model.rtl
--
-- Created:
--          by - Net.UNKNOWN (M00443)
--          at - 23:29:19 06.12.2021
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
library work;
use work.utilities.all;
use ieee.std_logic_unsigned.all;

entity adc_model is
   port( 
      adc0        : in     std_logic_vector (15 downto 0);
      adc1        : in     std_logic_vector (15 downto 0);
      adc_cs      : in     std_logic;
      adc_sclk    : in     std_logic;
      ---insert model ports here-----
      adc_sdata0  : out    std_logic;
      adc_sdata1  : out    std_logic;
      next_sample : out    std_logic
   );

-- Declarations

end adc_model ;

--
architecture rtl of adc_model is
  signal sreg0,sreg1: std_logic_vector(15 downto 0);
begin
     
  process(adc_cs,adc_sclk)
  begin
    if falling_edge(adc_cs) then
      sreg0 <= "00" & adc0(15 downto 2);
      sreg1 <=  "00" & adc1(15 downto 2);
    end if;
    if falling_edge(adc_sclk) then
      sreg0 <= sreg0(sreg0'left-1 downto 0) & '0';
      sreg1 <= sreg1(sreg1'left-1 downto 0) & '0';
    end if;
  end process;  
  adc_sdata0 <= sreg0(sreg0'left);
  adc_sdata1 <= sreg1(sreg1'left);
  
end architecture rtl;

