--
-- VHDL Architecture compiso_tb.uart_bridge_16.rtl
--
-- Created:
--          by - net.UNKNOWN (KPERSM7467)
--          at - 15:08:09 13.07.2014
--
-- using Mentor Graphics HDL Designer(TM) 2012.2b (Build 5)
--
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;
library compiso;
use compiso.busdef.all;

ENTITY uart_bridge_32 IS
   GENERIC( 
      core_clk_freq_g : integer := 50000000;
      baudrate_g      : integer := 115200;
      simulate_g      : boolean := false;
      commandfile_g   : string  := "command.txt"
   );
   PORT( 
      clk    : IN     std_logic;
      mbus_i : IN     mbus_i_t;
      reset  : IN     std_logic;
      rxd    : IN     std_logic;
      mbus_o : OUT    mbus_o_t;
      txd    : OUT    std_logic
   );

-- Declarations

END uart_bridge_32 ;

--
ARCHITECTURE rtl OF uart_bridge_32 IS
BEGIN
END ARCHITECTURE rtl;

