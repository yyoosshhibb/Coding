--
-- VHDL Architecture proj_audio_lib.bhv_dac_model.bhv
--
-- Created:
--          by - net.UNKNOWN (KPERSM7467)
--          at - 22:03:06 04.11.2017
--
-- using Mentor Graphics HDL Designer(TM) 2016.2 (Build 5)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity bhv_dac_model is
   generic( 
      scale_g : real    := 1.0;
      width_g : integer := 24
   );
   port( 
      dac_i : in     std_logic_vector (width_g-1 downto 0);
      dac_o : out    real
   );

-- Declarations

end bhv_dac_model ;

--
architecture bhv of bhv_dac_model is
  function vector_to_real(arg: std_logic_vector) return real is
    variable tmp: real := 0.0;
    variable magnitude: std_logic_vector(arg'range);
    variable sign: real := -1.0;
    variable digit: real := 0.5;
  begin
    --compute absolute value----
    if arg(arg'left)='1' then ---negative value
       magnitude := -arg;
       sign := -1.0;
    else
       magnitude := arg;
       sign := 1.0;
    end if;
    
    for i in arg'left-1 downto 0 loop
      if magnitude(i) = '1' then
        tmp := tmp + digit;
      end if;
      digit := digit *0.5;
    end loop;
    tmp := tmp * sign;
    return tmp;
  end vector_to_real;
    
begin
  dac_o <= vector_to_real(dac_i) * scale_g;
end architecture bhv;

