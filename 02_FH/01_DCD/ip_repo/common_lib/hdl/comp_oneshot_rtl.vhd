--
-- VHDL Architecture training_lib.comp_oneshot.rtl
--
-- Created:
--          by - Net.UNKNOWN (KPERSM7467)
--          at - 01:01:58 28.10.2017
--
-- using Mentor Graphics HDL Designer(TM) 2016.2 (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity comp_oneshot is
   generic( 
      nbits_g : integer := 16
   );
   port( 
      pulse_length : in     std_logic_vector (nbits_g-1 downto 0);
      trigger      : in     std_logic;
      enable       : in     std_logic;
      reset        : in     std_logic;
      clk          : in     std_logic;
      stb          : out    std_logic;
      pulse        : out    std_logic
   );

-- Declarations

end comp_oneshot ;

--
architecture rtl of comp_oneshot is
begin
    
end architecture rtl;

