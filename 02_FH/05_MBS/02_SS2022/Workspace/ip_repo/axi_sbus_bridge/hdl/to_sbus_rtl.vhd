--
-- VHDL Architecture axi_sbus_bridge.to_sbus.rtl
--
-- Created:
--          by - net.UNKNOWN (KPERSM7467)
--          at - 14:31:17 04.12.2017
--
-- using Mentor Graphics HDL Designer(TM) 2016.2 (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
library work;
use work.busdef.all;

entity to_sbus is
   port( 
      sbus_ack   : out    std_logic;
      sbus_rd    : in     std_logic;
      sbus_we    : in     std_logic;
      sbus_addr  : in     std_logic_vector (15 downto 0);
      sbus_i     : out    sbus_i_t;
      sbus_o     : in     sbus_o_t;
      sbus_rdata : out    std_logic_vector (31 downto 0);
      sbus_wdata : in     std_logic_vector (31 downto 0)
   );

-- Declarations

end to_sbus ;

--
architecture rtl of to_sbus is
begin
  --assign singel bus members to record-type signal
  sbus_i.addr <= sbus_addr;
  sbus_i.wdata <= sbus_wdata;
  sbus_i.we <= sbus_we;
  sbus_i.rd <= sbus_rd;
  sbus_rdata <= sbus_o.rdata;
  sbus_ack <= sbus_o.ack;
  
end architecture rtl;

