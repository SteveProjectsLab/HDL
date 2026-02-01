--VHDL code for AND gate 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate_clocked is
    Port ( Clock : in STD_LOGIC;
				A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end and_gate_clocked;

architecture Behavioral of and_gate_clocked is

begin

process(Clock)
begin
	if(rising_edge(Clock)) then
		C <= A and B;
	end if;
end process;

end Behavioral;

