library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;

entity tb_counter is
end tb_counter;

architecture rtl of tb_counter is

	-- components declarations
	component counter_mod is
		generic(n : positive);
		port(clk, reset, load : in  std_logic;
			 data_in          : in  std_logic_vector(natural(ceil(log2(real(n))))-1 downto 0);
			 q                : out std_logic_vector(natural(ceil(log2(real(n))))-1 downto 0));
	  end component;

	-- signals declarations
   	constant clock_period : time := 20 ns;  --50 Mhz
	constant w_n : positive := 10;  --50 Mhz
	signal w_clock_50Mhz: std_logic:='0';
	signal w_reset: std_logic:='0';
	signal w_load: std_logic:='0';
	signal w_data_in: std_logic_vector(natural(ceil(log2(real(w_n))))-1 downto 0):= (others => '0');
	signal w_q: std_logic_vector(natural(ceil(log2(real(w_n))))-1 downto 0):= (others => '0');
    
	begin
	
	w_clock_50Mhz <= not w_clock_50Mhz after clock_period/2;

	--component instantiation
	counter_100: counter_mod
		generic map(n => w_n)
		port map(
      	clk => w_clock_50Mhz,
      	reset=> w_reset,
		load=> w_load,
		data_in=> w_data_in,
		q=>w_q
		);
	--functional code
	
		
		process
		begin
			wait for 1 us;
			w_data_in <= "0011";
			wait for 1 us;
			w_load <='1';
			wait for 1 us;
			w_load <='0';
			wait;
		end process;

end architecture rtl;