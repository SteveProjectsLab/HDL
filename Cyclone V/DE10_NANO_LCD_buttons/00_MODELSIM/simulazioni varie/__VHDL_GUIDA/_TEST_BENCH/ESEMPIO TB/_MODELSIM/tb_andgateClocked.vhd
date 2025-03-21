library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_andgateClocked is
end tb_andgateClocked;

architecture Behavioral of tb_andgateClocked is

component and_gate_clocked is
    Port ( Clock : in STD_LOGIC;
				A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end component;

signal A1,B1,C1 : std_logic := '0';
signal Clock : std_logic := '0';
constant clock_period : time := 100 ns;  --10 Mhz

begin

--Clock_process: process
--begin
--	Clock <= '1';
--	wait for clock_period/2;
--	Clock <= '0';
--	wait for clock_period/2;
--end process;

Clock <= not Clock after clock_period/2;

--Instantiate the unit under test(the module we want to test)
ANDGATE : and_gate_clocked port map(
				Clock => Clock,
				A => A1,
				B => B1,
				C => C1);

Stimulus_process: process
begin
	A1 <= '0';	B1 <= '0';   wait for 200 ns;
	A1 <= '0';	B1 <= '1';   wait for 200 ns;
	A1 <= '1';	B1 <= '0';   wait for 200 ns;
	A1 <= '1';	B1 <= '1';   wait for 200 ns;
	wait;

end process;

end Behavioral;
