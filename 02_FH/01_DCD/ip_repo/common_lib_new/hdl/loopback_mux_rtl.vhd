--
-- VHDL Architecture sbus_uart_lib.loopback_mux.rtl
--
-- Created:
--          by - Net.UNKNOWN (M00443)
--          at - 11:31:00 24.11.2020
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity loopback_mux is
   port( 
      clk      : in     std_logic;
      reset    : in     std_logic;
      rxd      : in     std_logic;
      txd      : out    std_logic;
      txd_tmp  : in     std_logic;
      loopback : in     std_logic;
      rxd_tmp  : out    std_logic
   );

-- Declarations

end loopback_mux ;

--
architecture rtl of loopback_mux is
begin
end architecture rtl;

