

library ieee;
use ieee.std_logic_1164.all;
--https://community.intel.com/t5/Programmable-Devices/How-to-set-I-O-standard-on-IP-block-Serial-Flash-Loader/td-p/1342065


entity test is
	port(
		--! DE10 nano slider switches
		--SW: in std_logic_vector(3 downto 0); 
		SW: in std_logic_vector(3 downto 0); 
		--! DE10 nano green leds
		LED: out std_logic_vector(7 downto 0); 
		PCB_RS: out std_logic;
		PCB_RW: out std_logic;
		PCB_E: out std_logic;

		DB: out std_logic_vector(7 downto 0); 
		
		PCB_BT0: out std_logic;
		PCB_BT1: out std_logic;
		PCB_BT2: out std_logic;
		PCB_BT3: out std_logic;
		PCB_BT4: out std_logic;
		PCB_BT5: out std_logic;
		PCB_BT6: out std_logic;
		PCB_BT7: out std_logic;
		PCB_BT8: out std_logic;
		PCB_BT9: out std_logic;

		PCB_BT_UP: out std_logic;
		PCB_BT_DOWN: out std_logic;
		PCB_BT_RIGHT: out std_logic;
		PCB_BT_LEFT: out std_logic
		);
end test;

architecture logicfunction of test is
--! intermediate/internal signals
signal x1,x2,f: std_logic; 

begin
	x1 <= SW(0);
	LED(0) <= x1;
	--PCB_RS <= x1; --ok
	--PCB_RW <= x1; --ok
	--PCB_E <= x1; --ok

	DB(0) <= x1; --ok
	--DB(1) <= x1; --ok
	--DB(2) <= x1; --ok
	--DB(3) <= x1; --ok
	--DB(4) <= x1; --ok
	--DB(5) <= x1; --ok
	--DB(6) <= x1; --ok
	--DB(7) <= x1; --ok

	--PCB_BT0 <= x1;--ok
	--PCB_BT1 <= x1;--ok
	--PCB_BT2 <= x1;--ok
	--PCB_BT3 <= x1;--ok
	--PCB_BT4 <= x1;--ok
	--PCB_BT5 <= x1;--ok
	--PCB_BT6 <= x1;--ok
	--PCB_BT7 <= x1;--ok
	--PCB_BT8 <= x1;--ok
	--PCB_BT9 <= x1;--ok

	--PCB_BT_UP <= x1;--ok
	--PCB_BT_DOWN <= x1;--ok
	--PCB_BT_RIGHT <= x1;--ok
	--PCB_BT_LEFT <= x1;--ok
end logicfunction;
