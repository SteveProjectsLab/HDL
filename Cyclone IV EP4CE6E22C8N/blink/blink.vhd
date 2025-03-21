
--call the libraries
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all ; 
use IEEE.math_real.all;

--https://community.intel.com/t5/Programmable-Devices/How-to-set-I-O-standard-on-IP-block-Serial-Flash-Loader/td-p/1342065


-----------------------------------------------------------------------------------------------
--declaration of top entity
entity blink is
	port(
		LED: out std_logic_vector(3 downto 0); -- DE10 leds
		FPGA_CLK1_50: in std_logic	-- DE10 internal 50 MHz clock
--		
--		PCB_RS: out std_logic; --RS of LCD
--		PCB_RW: out std_logic; --Rw of LCD
--		PCB_E: out std_logic;  --E  of LCD
--		
--		PCB_MISO: inout std_logic;--MISO PIN_AA11
--		PCB_MOSI: inout std_logic;--MOSI PIN_AA26
--		PCB_SCK: inout std_logic; --SCK  PIN_AB26
--		
--		PCB_DB: out std_logic_vector(7 downto 0);--DATA BITS of LCD
--		
--		PCB_BT0: in std_logic;--BUTTON (0 when pressed)
--		PCB_BT1: in std_logic;--BUTTON (0 when pressed)
--		PCB_BT2: in std_logic;--BUTTON (0 when pressed)
--		PCB_BT3: in std_logic --BUTTON (0 when pressed)
--		PCB_BT4: in std_logic;--BUTTON (0 when pressed)
--		PCB_BT5: in std_logic;--BUTTON (0 when pressed)
--		PCB_BT6: in std_logic;--BUTTON (0 when pressed)
--		PCB_BT7: in std_logic --BUTTON (0 when pressed)
--		PCB_BT8: in std_logic;--BUTTON (0 when pressed)
--		PCB_BT9: in std_logic;--BUTTON (0 when pressed)
--
--		PCB_BT_UP: in std_logic; --BUTTON (0 when pressed)
--		PCB_BT_DOWN: in std_logic; --BUTTON (0 when pressed)
--		PCB_BT_RIGHT: in std_logic; --BUTTON (0 when pressed)
--		PCB_BT_LEFT: in std_logic --BUTTON (0 when pressed)
		);
		
end blink;


-----------------------------------------------------------------------------------------------

architecture logicfunction of blink is

-----------------------------------------------------------------------------------------------
--internal wires
-----------------------------------------------------------------------------------------------
	signal w_lcd_reset_n: std_logic:='1'; --reset of LCD, acrive L, input of lcd_controller
	signal w_lcd_enable: std_logic:='0';  --enable of LCD, active H, input of lcd_controller
	signal w_lcd_bus    : std_logic_vector(9 downto 0):= (others => '0');--LCD bus RS RW D0 .. D7, 10 bits, input of lcd_controller


	signal w_lcd_data : STD_LOGIC_VECTOR(7 DOWNTO 0);-- LCD D0 .. D7, 8 bits, output of lcd_controller
	signal w_lcd_busy : std_logic; --it's says if it is busy, active H, output of lcd_controller
	signal w_lcd_rw: std_logic;-- RW of LCD, active H, output of lcd_controller
	signal w_lcd_rs: std_logic;-- RS of LCD, active H, output of lcd_controller
	signal w_lcd_e: std_logic;-- E of LCD, active H, output of lcd_controller


	signal w_led0: std_logic;--led 0, active H
	signal w_led1: std_logic;--led 1, active H
	signal w_led2: std_logic;--led 2, active H
	signal w_led3: std_logic;--led 3, active H

	signal w_1Hz: std_logic;--1Hz from clock generator
	signal w_100kHz: std_logic;--100kHz from clock generator
	signal w_50MHz: std_logic;--50 MHz from FPGA clock
	
	signal w_btn_num: std_logic_vector(15 downto 0);-- it indicates which button is pressed ( 0 1 2 3 4 5 6 7 8 9 up down right left)
	signal w_btn_debounced: std_logic;-- active L, monostable output of debounce_fsm
	signal w_btn0: std_logic:='1';-- active L, button input
	signal w_btn1: std_logic:='1';-- active L, button input
	signal w_btn2: std_logic:='1';-- active L, button input
	signal w_btn3: std_logic:='1';-- active L, button input
	signal w_btn4: std_logic:='1';-- active L, button input
	signal w_btn5: std_logic:='1';-- active L, button input
	signal w_btn6: std_logic:='1';-- active L, button input
	signal w_btn7: std_logic:='1';-- active L, button input
	signal w_btn8: std_logic:='1';-- active L, button input
	signal w_btn9: std_logic:='1';-- active L, button input
	signal w_btn10: std_logic:='1';-- active L, button input
	
	signal w_btn_up: std_logic:='1';-- active L, button input
	signal w_btn_down: std_logic:='1';-- active L, button input
	signal w_btn_r: std_logic:='1';-- active L, button input
	signal w_btn_l: std_logic:='1';-- active L, button input
	
	signal w_spi_msg: std_logic_vector(15 downto 0);--message to be sent to SPI MASTER, 16 bit
	signal w_spi_rqst: std_logic:='0';-- active H, it indicates if the spi_msg has to be sent ot not

begin

	-- istantiation of components and mapping
-----------------------------------------------------------------------------------------------		
--	main_fsm:entity work.fsm
--	PORT map(
--		clk=>w_100kHz,
--		reset =>'0',--not used
--		lcd_enable=>w_lcd_enable,
--		lcd_bus=>w_lcd_bus,
--		btn_signal=>w_btn_debounced,
--		spi_msg=>w_spi_msg,
--		spi_rqst=>w_spi_rqst,
--		btn_num=>w_btn_num
--	);	
-------------------------------------------------------------------------------------------------	
--	btn_controller:entity work.debounce_fsm
--	PORT map(
--		clk=>w_100kHz,
--		 reset=>'0',--not used
--		 btn_0=>w_btn0,
--		 btn_1=>w_btn1,
--		 btn_2=>w_btn2,
--		 btn_3=>w_btn3,
--		 btn_4=>w_btn4,
--		 btn_5=>w_btn5,
--		 btn_6=>w_btn6,
--		 btn_7=>w_btn7,
--		 btn_8=>w_btn8,
--		 btn_9=>w_btn9,
--		 btn_up=>w_btn_up,
--		 btn_down=>w_btn_down,
--		 btn_r=>w_btn_r,
--		 btn_l=>w_btn_l,
--		 output=>w_btn_debounced,
--		 btn_num=>w_btn_num
--	);	
--
-------------------------------------------------------------------------------------------------	
--	lcd_controller: entity work.lcd_controller
--	port map(
--		clk => FPGA_CLK1_50,		--inputs
--		reset_n => '1', --not used
--		lcd_enable => w_lcd_enable, 
--		lcd_bus => w_lcd_bus, 
--		busy => w_lcd_busy, --outputs
--		rw => w_lcd_rw, 
--		rs => w_lcd_rs, 
--		e => w_lcd_e, 
--		lcd_data => w_lcd_data
--	);
-------------------------------------------------------------------------------------------------	
--	spi0:entity work.spi_fsm
--	generic map(
--			DATA_W 	=> 16,			-- SPI data width in bits
--			Nbit 	=> 4 					-- log2(data width)
--			)
--	port map(
--		OSC_FPGA => FPGA_CLK1_50,
--		reset => '0',--not used
--		SYS_SPI_MOSI => PCB_MOSI,
--		SYS_SPI_MISO => PCB_MISO,
--		SYS_SPI_SCK => PCB_SCK,
--		spi_msg=>w_spi_msg,
--		spi_rqst=>w_spi_rqst
--		);
-----------------------------------------------------------------------------------------------	
	tim_1Hz:entity work.clock_generator--to drive led 0 to tell if it is alive
	generic map(
		clock_in_speed => 50_000_000, --50MHz
		clock_out_speed => 1--1Hz
		)
	PORT map(
		clock_in=>w_50MHz,
		clock_out =>w_1Hz
	);
-----------------------------------------------------------------------------------------------
--	tim_100kHz:entity work.clock_generator--to drive fsm_main
--	generic map(
--		clock_in_speed => 50_000_000, --50MHz
--		clock_out_speed => 100_000--100kHHz
--		)
--	PORT map(
--		clock_in=>w_50MHz,
--		clock_out =>w_100kHz
--	);
	-----------------------------------------------------------------------------
	-- assignments
	---------------------------------------------------------------------------

		w_50MHz <= FPGA_CLK1_50;


--		LED(0)<=w_led0;
--		LED(1)<=w_led1;
--		LED(2)<=w_led2;
		LED(3)<=w_1Hz;
	
--		PCB_RS <= w_lcd_rs;
--		PCB_RW <= w_lcd_rw;
--		PCB_E  <= w_lcd_e;
--		
--		PCB_DB(0) <= w_lcd_data(0); 
--		PCB_DB(1) <= w_lcd_data(1); 
--		PCB_DB(2) <= w_lcd_data(2); 
--		PCB_DB(3) <= w_lcd_data(3); 
--		PCB_DB(4) <= w_lcd_data(4); 
--		PCB_DB(5) <= w_lcd_data(5); 
--		PCB_DB(6) <= w_lcd_data(6); 
--		PCB_DB(7) <= w_lcd_data(7);
--
--		w_btn0<=PCB_BT0;
--		w_btn1<=PCB_BT1;
--		w_btn2<=PCB_BT2;
--		w_btn3<=PCB_BT3;
--		PCB_BT4 <= w_btn4;
--		PCB_BT5 <= w_btn5;
--		PCB_BT6 <= w_btn6;
--		w_btn7 <= PCB_BT7;
--		PCB_BT8 <= w_btn8;
--		PCB_BT9 <= w_btn9;
--
--		PCB_BT_UP <= w_btn_up;
--		PCB_BT_DOWN <= w_btn_down;
--		PCB_BT_RIGHT <= w_btn_r;
--		PCB_BT_LEFT <= w_btn_l;


		
end logicfunction;
