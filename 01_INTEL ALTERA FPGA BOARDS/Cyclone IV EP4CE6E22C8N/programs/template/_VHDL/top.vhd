--call the libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.math_real.all;

--https://community.intel.com/t5/Programmable-Devices/How-to-set-I-O-standard-on-IP-block-Serial-Flash-Loader/td-p/1342065


-----------------------------------------------------------------------------------------------
--declaration of top entity
entity top is
	port(
		LED: out std_logic_vector(4 downto 0); -- leds
		FPGA_CLK1_50: in std_logic;	-- quartz 50 MHz clock
		FPGA_CLK2_27: in std_logic;	-- quartz 27 MHz clock
		PCB_BT0: in std_logic; --BUTTON (0 when pressed)
		PCB_BT1: in std_logic; --BUTTON (0 when pressed)
		PCB_BT2: in std_logic; --BUTTON (0 when pressed)
		PCB_BT3: in std_logic; --BUTTON (0 when pressed)
		PCB_BT4: in std_logic  --BUTTON (0 when pressed)
		
	);
		
end top;

-----------------------------------------------------------------------------------------------

architecture logicfunction of top is

-----------------------------------------------------------------------------------------------
--internal wires
-----------------------------------------------------------------------------------------------
	-- CLOCKING
	signal w_1Hz: std_logic;--1Hz from clock generator
	signal w_reset: std_logic := '0'; -- Segnale di reset (legato a 0)

	-- LEDS
	signal w_led0: std_logic;--led 0, active H
	signal w_led1: std_logic;--led 1, active H
	signal w_led2: std_logic;--led 2, active H
	signal w_led3: std_logic;--led 3, active H
	
	-- BUTTONS
	signal w_btn0: std_logic:='1';-- active L, button input
	signal w_btn1: std_logic:='1';-- active L, button input
	signal w_btn2: std_logic:='1';-- active L, button input
	signal w_btn3: std_logic:='1';-- active L, button input
	signal w_btn4: std_logic:='1';-- active L, button input
	
	signal w_deb_btn0: std_logic:='1';-- active H, pulse output
	signal w_deb_btn1: std_logic:='1';-- active H, pulse output
	signal w_deb_btn2: std_logic:='1';-- active H, pulse output
	signal w_deb_btn3: std_logic:='1';-- active H, pulse output
	signal w_deb_btn4: std_logic:='1';-- active H, pulse output


begin

-----------------------------------------------------------------------------------------------		
	-- COMPONENTS INSTANTIATION AND MAPPING
-----------------------------------------------------------------------------------------------	
	Debounce_btn0: entity work.debounce generic map(DEBOUNCE_TIME_MS => 20, LOCKOUT_TIME_MS => 200) port map (i_clk => FPGA_CLK1_50, i_rst => w_reset, i_button => PCB_BT0, o_pulse => w_deb_btn0);
	Debounce_btn1: entity work.debounce generic map(DEBOUNCE_TIME_MS => 20, LOCKOUT_TIME_MS => 200) port map (i_clk => FPGA_CLK1_50, i_rst => w_reset, i_button => PCB_BT1, o_pulse => w_deb_btn1);
	Debounce_btn2: entity work.debounce generic map(DEBOUNCE_TIME_MS => 20, LOCKOUT_TIME_MS => 200) port map (i_clk => FPGA_CLK1_50, i_rst => w_reset, i_button => PCB_BT2, o_pulse => w_deb_btn2);
	Debounce_btn3: entity work.debounce generic map(DEBOUNCE_TIME_MS => 20, LOCKOUT_TIME_MS => 200) port map (i_clk => FPGA_CLK1_50, i_rst => w_reset, i_button => PCB_BT3, o_pulse => w_deb_btn3);
	Debounce_btn4: entity work.debounce generic map(DEBOUNCE_TIME_MS => 20, LOCKOUT_TIME_MS => 200) port map (i_clk => FPGA_CLK1_50, i_rst => w_reset, i_button => PCB_BT4, o_pulse => w_deb_btn4);
	
		
	gen_1Hz: entity work.clock_generator generic map(clock_in_speed => 50_000_000, clock_out_speed => 1) port map(clock_in => FPGA_CLK1_50, clock_out => w_1Hz);
		
     
--------------------------------------------------------------------------
-- ASSIGNMENTS
---------------------------------------------------------------------------

		w_btn0<=PCB_BT0;
		w_btn1<=PCB_BT1;
		w_btn2<=PCB_BT2;
		w_btn3<=PCB_BT3;
		w_btn4<=PCB_BT4;


		LED(0)<=w_1Hz;
		LED(1)<= not w_1Hz;
		LED(2)<=w_1Hz;
		LED(3)<= not w_1Hz;
		LED(4)<=w_1Hz;

		
end logicfunction;