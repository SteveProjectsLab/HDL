library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_timer is
end tb_timer;

architecture rtl of tb_timer is

	-- components declarations
	component clock_generator is
		GENERIC(
			clock_in_speed    : INTEGER := 50_000_000;  
			clock_out_speed : INTEGER := 100);         
		  PORT(
			clock_in: in std_logic;
			clock_out: out std_logic);
	end component;

	-- signals declarations
   	constant system_speed: natural := 50e6;
	constant clock_period : time := 20 ns;  --50 Mhz
  	signal clock_10hz: std_logic:='0';
	signal clock_50Mhz: std_logic:='0';
	signal output: std_logic;

    
    
	begin
	
	clock_50Mhz <= not clock_50Mhz after clock_period/2;

	--component instantiation
	clock_generator_10hz: clock_generator
	generic map(clock_in_speed => system_speed, clock_out_speed => 10)
		port map(
      clock_in => clock_50Mhz,
      clock_out => clock_10hz);
	--functional code
	

	output <= clock_10hz;

  

end architecture rtl;