-------------------------------------------------
--! Project : SPI FIR       		               
--! <br>               
--! Author : Emiliano Sisinni                   
--! <br>               
--! Date : AY2023/2024                          
--! <br>               
--! Company : UniBS                             
--! <br>              
--! File : top_spifir.vhd  
--! File : blink_heartbeat.vhd   		           
-------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity blink_heartbeat is
    Port ( CLK : in  STD_LOGIC;
           LED : out  STD_LOGIC);
end blink_heartbeat;

architecture Behavioral of blink_heartbeat is
	-- Led counter
	signal counter_output : unsigned(24 downto 0) := (others => '0');

begin

process(CLK)
	begin
		if (rising_edge(CLK)) then		
			counter_output <= counter_output + 1 ;				
		end if;
	end process ;

	LED <= std_logic(counter_output(24));
	
end Behavioral;

