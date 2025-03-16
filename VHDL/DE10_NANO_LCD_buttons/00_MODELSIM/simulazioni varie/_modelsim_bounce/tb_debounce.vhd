library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- DESCRIPTION
-- this tb has been developed to test te debounce circuit, 
-- that will we applied to every input button of the system.
-- To do that it has been implemented a syntetic bouce signal
-- (duration:10ms, 10 pulses of 500ns, 1ms distant from each other)
-- The clock of the system is 50MHz
-- The stable input windows is set to 50 ms (bigger than bouces duration)

entity tb_debounce is
end tb_debounce;

architecture Behavioral of tb_debounce is

component debounce is
    GENERIC(
        clk_freq    : INTEGER := 50_000_000;  --system clock frequency in Hz
        stable_time : INTEGER := 10);         --time button must remain stable in ms
      PORT(
        clk     : IN  STD_LOGIC;  --input clock
        reset_n : IN  STD_LOGIC;  --asynchronous active low reset
        button  : IN  STD_LOGIC;  --input signal to be debounced
        result  : OUT STD_LOGIC); --debounced signal
end component;

signal tb_reset_n : std_logic:='1'; -- 1 not active (active low) 
signal tb_input : std_logic:='1'; -- resitor on VCC, 0 if button pressed
signal tb_clk : std_logic:='0';
signal tb_output : std_logic:='1';
constant clock_period : time := 20 ns;  --50 Mhz


begin


tb_clk <= not tb_clk after clock_period/2;

--Instantiate the unit under test(the module we want to test)
DUT : debounce port map(
				clk => tb_clk,
				reset_n =>tb_reset_n,
				button=> tb_input,
				result => tb_output);

Stimulus_process: process
begin
	wait for 1 ms;
	-- first button press with bounces
	for i in 1 to 2 loop -- number of button press actions
	
		for j in 1 to 10 loop -- number of bounces
			tb_input <= '0';	    -- set tb_input at 0
			if(j=1)then
				tb_reset_n <= '0'; -- reset active
				wait for 1 us;
				tb_reset_n <= '1'; -- reset not active
				wait for 1 us;	
			end if;
			
			wait for 500 us;
			tb_input <= '1';	   wait for 500 us; -- set tb_input at 1
			
		end loop;

		if(i=1)then
			wait for 30 ms;	-- delay between 2 button press actions
		elsif(i=2)then
			wait for 15 ms; -- final delay
		end if;

	end loop;		

	wait;
end process;
end Behavioral;


