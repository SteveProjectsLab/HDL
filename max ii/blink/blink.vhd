library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity blink is
Port ( LED : out STD_LOGIC;
CLK : in STD_LOGIC);
end blink;

architecture Behavioral of blink is
	
	signal counter : INTEGER := 0;
	signal clk_div : STD_LOGIC:= '0';
	
	begin
	process (CLK)
		begin
		if rising_edge(CLK) then
		if counter = 50000000 then --Adjust the value based on your clock frequency
			counter <= 0;
			clk_div <= not clk_div;
		else
			counter <= counter + 1;
		end if;
		end if;
	end process;

	LED <= clk_div; --Connect the LED to the divided clock signal
end Behavioral;