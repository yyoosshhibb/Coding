--
-- VHDL Architecture common_lib.Encoder.rtl
--
-- Created:
--          by - Yoshi.UNKNOWN (YOSHIS-LAPTOP)
--          at - 13:10:43 27.10.2020
--
-- using Mentor Graphics HDL Designer(TM) 2017.1a (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity Encoder is
  port(
    ina: in std_logic_vector(1 downto 0);
    inb: in std_logic_vector(1 downto 0);
    cnt: out std_logic_vector(3 downto 0)
  );
end entity Encoder;

--
architecture rtl of Encoder is
  signal counter: std_logic_vector(cnt'range) := (others => '0');
begin
  process(ina, inb)
  begin
    if rising_edge(ina(1)) then
      if ina(0) then
        counter <= counter + 1;
      elsif ina(0)='0' then
        counter <= counter - 1;
      end if;
    end if;
  end process;

cnt <= counter;
      
end architecture rtl;

