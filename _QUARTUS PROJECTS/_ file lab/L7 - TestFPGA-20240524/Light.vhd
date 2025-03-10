--! Project : Test LEDs and SWs
--! <br>               
--! Author : Emiliano Sisinni                   
--! <br>               
--! Date : AY2023/2024                          
--! <br>               
--! Company : UniBS                             
--! <br>               
--! File : light.vhd 

library ieee;
use ieee.std_logic_1164.all;



entity light is
	port(
		--! DE10 nano slider switches
		SW: in std_logic_vector(3 downto 0); 
		--! DE10 nano green leds
		LED: out std_logic_vector(7 downto 0)); 
end light;

architecture logicfunction of light is
--! intermediate/internal signals
signal x1,x2,f: std_logic; 
begin
	-- Implement the XOR between signals x1 and x2
	f <= (x1 and not x2) or (not x1 and x2);
	-- f <= x1 xor x2;

	-- following assignments needed for binding
	-- internal signals with real HW pins 	
	x1 <= SW(0);
	x2 <= SW(1);
	LED(0) <= f;
	
end logicfunction;
