library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all ; 
use IEEE.math_real.all;
-- DESCRIPTION
-- this tb has been developed to test the whole FPGA circuit, 
-- that is composed of the lcd controller, various debouncing, contrrol logic, and spi slave

entity tb_ALL is
end tb_ALL;

architecture Behavioral of tb_ALL is

	function log2ceil(arg : positive) return natural is
		 variable tmp : positive     := 1;
		 variable log : natural      := 0;
	begin
		 if arg = 1 then return 0; end if;
		 while arg > tmp loop
			  tmp := tmp * 2;
			  log := log + 1;
		 end loop;
		 return log;
	end function;
	
	signal w_MOSI: std_logic;
	signal w_MISO: std_logic;
	signal w_SCK: std_logic;

	signal w_lcd_reset_n: std_logic:='1'; 
	signal w_lcd_enable: std_logic:='0'; 
	signal w_lcd_bus    : std_logic_vector(9 downto 0):= (others => '0');


	signal w_lcd_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal w_lcd_busy : std_logic;
	signal w_lcd_rw: std_logic;
	signal w_lcd_rs: std_logic;
	signal w_lcd_e: std_logic;


	signal w_led0: std_logic;
	signal w_led1: std_logic;
	signal w_led2: std_logic;
	signal w_led3: std_logic;

	signal w_sw0: std_logic:='0';

	signal w_cnt0_reset: std_logic;
	signal w_cnt0_load: std_logic:='0';
	signal w_cnt0_data_in: std_logic_vector(natural(ceil(log2(real(100000))))-1 downto 0):= (others => '0');
	signal w_cnt0_q: std_logic_vector(natural(ceil(log2(real(100000))))-1 downto 0):= (others => '0');

	signal w_1Hz: std_logic;
	signal w_1KHz: std_logic;
	signal w_100kHz: std_logic;
	signal w_50MHz: std_logic;
	
	signal w_btn_num: std_logic_vector(15 downto 0); --INTEGER:=0;
	signal w_btn_debounced: std_logic;
	signal w_btn0: std_logic:='1';
	signal w_btn1: std_logic:='1';
	signal w_btn2: std_logic:='1';
	signal w_btn3: std_logic:='1';
	signal w_btn4: std_logic:='1';
	signal w_btn5: std_logic:='1';
	signal w_btn6: std_logic:='1';
	signal w_btn7: std_logic:='1';
	signal w_btn8: std_logic:='1';
	signal w_btn9: std_logic:='1';
	signal w_btn10: std_logic:='1';
	
	signal w_btn_up: std_logic:='1';
	signal w_btn_down: std_logic:='1';
	signal w_btn_r: std_logic:='1';
	signal w_btn_l: std_logic:='1';
	
	signal w_spi_msg: std_logic_vector(15 downto 0);
	signal w_spi_rqst: std_logic:='0';
--unsigned(log2ceil(500) downto 0) := (others => '0');
--q                : out std_logic_vector(natural(ceil(log2(real(n))))-1 downto 0));

  signal tb_clk         : std_logic := '0';
  constant clock_period : time      := 20 ns; --50 Mhz

begin
	-- istantiation of components


-----------------------------------------------------------------------------------------------		
	main_fsm:entity work.fsm
	PORT map(
		clk=>w_100kHz,
		reset =>'0',
		lcd_enable=>w_lcd_enable,
		lcd_bus=>w_lcd_bus,
		btn_signal=>w_btn_debounced,--w_sw0,
		spi_msg=>w_spi_msg,
		spi_rqst=>w_spi_rqst,
		--led0=>w_led0,
		btn_num=>w_btn_num
	);	
-----------------------------------------------------------------------------------------------	
	btn_controller:entity work.debounce_fsm
	PORT map(
		clk=>w_100kHz,
		 reset=>'0',
		 btn_0=>w_btn0,
		 btn_1=>w_btn1,
		 btn_2=>w_btn2,
		 btn_3=>w_btn3,
		 btn_4=>w_btn4,
		 btn_5=>w_btn5,
		 btn_6=>w_btn6,
		 btn_7=>w_btn7,
		 btn_8=>w_btn8,
		 btn_9=>w_btn9,
		 btn_up=>w_btn_up,
		 btn_down=>w_btn_down,
		 btn_r=>w_btn_r,
		 btn_l=>w_btn_l,
		 led1=>w_led1,
		 output=>w_btn_debounced,
		 btn_num=>w_btn_num
	);	

-----------------------------------------------------------------------------------------------	
	lcd_controller: entity work.lcd_controller
	port map(
		clk =>tb_clk,		--inputs
		reset_n => '1', 
		lcd_enable => w_lcd_enable, 
		lcd_bus => w_lcd_bus, 
		busy => w_lcd_busy, --outputs
		rw => w_lcd_rw, 
		rs => w_lcd_rs, 
		e => w_lcd_e, 
		lcd_data => w_lcd_data
	);
-----------------------------------------------------------------------------------------------	
	spi0:entity work.spi_fsm
	generic map(
			DATA_W 	=> 16,			-- FIFO and SPI data width in bits
			Nbit 	=> 4 					-- log2(data width)
			)
	port map(
		OSC_FPGA => tb_clk,
		reset => '0',
		SYS_SPI_MOSI => W_MOSI,--mosi
		SYS_SPI_MISO => W_MISO,
		SYS_SPI_SCK => W_SCK,
		led0=>w_led0,
		spi_msg=>w_spi_msg,
		spi_rqst=>w_spi_rqst
		--LED => LED(1 downto 0)
		
		);
-----------------------------------------------------------------------------------------------	
	tim_1Hz:entity work.clock_generator
	generic map(
		clock_in_speed => 50_000_000, 
		clock_out_speed => 1
		)
	PORT map(
		clock_in=>w_50MHz,
		clock_out =>w_1Hz
	);
-----------------------------------------------------------------------------------------------
	tim_100kHz:entity work.clock_generator
	generic map(
		clock_in_speed => 50_000_000, 
		clock_out_speed => 100_000
		)
	PORT map(
		clock_in=>w_50MHz,
		clock_out =>w_100kHz
	);
	Testbench_stimulus : process
		 begin
			
		wait for 2000 ms;
		w_btn0 <='0';
		wait for 500 ms;
		w_btn0 <='1';
			
			
			
		wait;
	 end process;
  
end Behavioral;



