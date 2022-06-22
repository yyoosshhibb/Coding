LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

entity bhv_adc_model is
   generic( 
      twos_complement_g : boolean := true;
      width_g           : integer := 8;
      scale_g           : real    := 1.0
   );
   port( 
      adc_i     : in     real;
      adc_o     : out    std_logic_vector (width_g-1 downto 0);
      adc_ov_o  : out    std_logic
   );

end bhv_adc_model ;

architecture behave of bhv_adc_model is

  signal    adc_i_int: real := 0.0;
  signal    adc_o_int: real := 0.0;
  constant  offs_c   : std_logic_vector(adc_o'range):= (adc_o'left=>'1', others => '0');
  signal    adc_int  : std_logic_vector(adc_o'range);
  
 -- function to convert real to std_logic_vector ------------------------------------ 
  function conv_std_logic_vector(arg: real; size: integer) return std_logic_vector is
  	variable result: std_logic_vector(size-1 downto 0);
  	variable temp: real;
  	-- synopsys built_in syn_integer_to_signed
  	-- synopsys subpgm_id 381
  begin
  	-- synopsys synthesis_off
  	temp := arg + 1.0;
  	if temp < 0.0 then
  	   temp := 0.0;
  	elsif temp >= 2.0 then
  	   temp := 1.99999999;
  	end if;      
  	for i in size-1 downto 0 loop
              if (temp >= 1.0) then
  		result(i) := '1';
  	    else 
  		result(i) := '0';
  	    end if;
  	    if temp >= 1.0 then
  		temp := temp - 1.0;
  	    end if;
  	    temp := temp * 2.0;
  	end loop;
  	-- synopsys synthesis_on
  	return result;
  end;

begin
   
   --- amplify input signal with scale factor
   adc_i_int <= adc_i * scale_g WHEN adc_i > -1.0e300 ELSE 0.0; -- handle uninitialized input signal
   
   --- convert scaled signal to std_logic_vector
   adc_int   <= conv_std_logic_vector(adc_i_int,adc_int'length)- offs_c;

   -- add offset when binary offset coding is selected
   adc_o     <= adc_int when twos_complement_g else adc_int xor offs_c;

   -- assert overflow bit if input signal abs value exceeds 1.0
   adc_ov_o  <= '1' when (adc_i > 1.0) or (adc_i < -1.0) else '0';
   
   
   
end behave;