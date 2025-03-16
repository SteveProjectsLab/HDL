library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- DESCRIPTION
-- this tb has been developed to test the whole FPGA circuit, 
-- that is composed of the lcd controller, various debouncing, contrrol logic, and spi slave

entity tb_ALL is
end tb_ALL;

architecture Behavioral of tb_ALL is

  component lcd_controller is
    port (
      clk        : in std_logic; --system clock
      reset_n    : in std_logic; --active low reinitializes lcd
      lcd_enable : in std_logic; --latches data into lcd controller
      lcd_bus    : in std_logic_vector(9 downto 0); --data and control signals
      busy       : out std_logic; --lcd controller busy/idle feedback
      rw, rs, e  : out std_logic; --read/write, setup/data, and enable for lcd
      lcd_data   : out std_logic_vector(7 downto 0)); --data signals for lcd
  end component;

  component buttons_controller IS
  PORT(
    clk     : IN  STD_LOGIC;  --input clock
    reset_n : IN  STD_LOGIC;  --asynchronous active low reset
    btn_0  : IN  STD_LOGIC;  --input signal to be debounced
    btn_1  : IN  STD_LOGIC;  --input signal to be debounced
    btn_2  : IN  STD_LOGIC;  --input signal to be debounced
    btn_3  : IN  STD_LOGIC;  --input signal to be debounced
    btn_4  : IN  STD_LOGIC;  --input signal to be debounced
    btn_5  : IN  STD_LOGIC;  --input signal to be debounced
    btn_6  : IN  STD_LOGIC;  --input signal to be debounced
    btn_7  : IN  STD_LOGIC;  --input signal to be debounced
    btn_8  : IN  STD_LOGIC;  --input signal to be debounced
    btn_9  : IN  STD_LOGIC;  --input signal to be debounced
    btn_up  : IN  STD_LOGIC;  --input signal to be debounced
    btn_down  : IN  STD_LOGIC;  --input signal to be debounced
    btn_r  : IN  STD_LOGIC;  --input signal to be debounced
    btn_l  : IN  STD_LOGIC;  --input signal to be debounced
    output  : OUT STD_LOGIC); --debounced signal
	END component;

  -----------------------------------------------------------
  -----------------------DEBOUNCE SIGNALS
  -----------------------------------------------------------
  --NB it can be pressed only a button at a time!
  
  --input(from tb)------------------------------------------
  signal tb_btn_0 : std_logic := '1';-- resitor on VCC, 0 if button pressed
  signal tb_btn_1 : std_logic := '1';
  signal tb_btn_2 : std_logic := '1';
  signal tb_btn_3 : std_logic := '1';
  signal tb_btn_4 : std_logic := '1';
  signal tb_btn_5 : std_logic := '1';
  signal tb_btn_6 : std_logic := '1';
  signal tb_btn_7 : std_logic := '1';
  signal tb_btn_8 : std_logic := '1';
  signal tb_btn_9 : std_logic := '1';
  signal tb_btn_10 : std_logic := '1';
  signal tb_btn_up : std_logic := '1';
  signal tb_btn_down : std_logic := '1';
  signal tb_btn_r : std_logic := '1';
  signal tb_btn_l : std_logic := '1';

  
  signal tb_reset_n     : std_logic := '1'; -- 1 not active (active low) 

  --output (to custom_logic)------------------------------------------
  signal tb_buttons_output : std_logic := '1';

  -----------------------------------------------------------
  -------------------------LCD SIGNALS
  -----------------------------------------------------------

  --input (from tb)------------------------------------------
  signal tb_lcd_enable : std_logic:='0';
  signal tb_lcd_bus    : std_logic_vector(9 downto 0);
  signal tb_lcd_busy   : std_logic;
  signal tb_lcd_reset_n     : std_logic := '1'; -- 1 not active (active low)
  --signal tb_clk : std_logic:='0';

  --output (to LCD)------------------------------------------
  signal tb_lcd_rw   : std_logic;
  signal tb_lcd_rs   : std_logic;
  signal tb_lcd_e    : std_logic;
  signal tb_lcd_data : STD_LOGIC_VECTOR(7 DOWNTO 0);

  -----------------------------------------------------------
  --------------------CLOCK AND COMMON SIGNALS
  -----------------------------------------------------------
  
  signal tb_clk         : std_logic := '0';
  constant clock_period : time      := 20 ns; --50 Mhz
  -----------------------------------------------------------

begin
  
  
  tb_clk <= not tb_clk after clock_period/2;

  --the buttons_controller module:
  -- receives signals from buttons with bounces,
  -- generates reset signal for the module
  -- produces the filtered output (without bounces)
    DUT1 : buttons_controller
  	PORT MAP(
    clk => tb_clk,
	reset_n => tb_reset_n, 
    btn_0 => tb_btn_0, 
	btn_1 => tb_btn_1,
	btn_2 => tb_btn_2,
	btn_3 => tb_btn_3,
	btn_4 => tb_btn_4,
	btn_5 => tb_btn_5,
	btn_6 => tb_btn_6,
	btn_7 => tb_btn_7,
	btn_8 => tb_btn_8,
	btn_9 => tb_btn_9,
	btn_up => tb_btn_up,
	btn_down => tb_btn_down,
	btn_r => tb_btn_r,
	btn_l => tb_btn_l,
    output => tb_buttons_output);


  DUT2 : lcd_controller
  PORT MAP(
  clk => tb_clk,
  reset_n => tb_lcd_reset_n, 
  lcd_enable => tb_lcd_enable, 
  lcd_bus => tb_lcd_bus, 
  busy => tb_lcd_busy, 
  rw => tb_lcd_rw, 
  rs => tb_lcd_rs, 
  e => tb_lcd_e, 
  lcd_data => tb_lcd_data);

  Testbench_stimulus : process

  VARIABLE char  :  INTEGER RANGE 0 TO 10 := 0;

  begin


  wait for 1 ms;
    --  "button0" press with bounces
    for j in 1 to 10 loop -- number of bounces
      tb_btn_0 <= '0'; -- set tb_input at 0
      wait for 500 us;
      tb_btn_0 <= '1';
      wait for 500 us; -- set tb_input at 1
    end loop;

	wait for 10ms;
  
  -- button right pressed erroneously
  for j in 1 to 10 loop -- number of bounces
    tb_btn_7 <= '0'; -- set tb_input at 0
    wait for 500 us;
    tb_btn_7 <= '1';
    wait for 500 us; -- set tb_input at 1
  end loop;

  wait for 30ms;

  for j in 1 to 10 loop -- number of bounces
    tb_btn_r <= '0'; -- set tb_input at 0
    wait for 500 us;
    tb_btn_r <= '1';
    wait for 500 us; -- set tb_input at 1
  end loop;

  wait for 30ms;

  for j in 1 to 10 loop -- number of bounces
  tb_btn_5 <= '0'; -- set tb_input at 0
  wait for 500 us;
  tb_btn_5 <= '1';
  wait for 500 us; -- set tb_input at 1
  end loop;
  wait for 5ms;


  
  tb_lcd_enable <= '1';
  wait for 500 us;
  tb_lcd_bus <= "00" & "00000001"; --RS=1, RW=0, command= Clear the display
  wait for 500 us;
  tb_lcd_enable <= '0';
  wait for 500 us;

  tb_lcd_enable <= '1';
  wait for 500 us;
  tb_lcd_bus <= "01" & "01000011"; --RS=1, RW=0, data='C'
  wait for 500 us;
  tb_lcd_enable <= '0';
  wait for 500 us;

  tb_lcd_enable <= '1';
  tb_lcd_bus <= "00" & "00000110"; --RS=1, RW=0, command= increment Curson (shift cursor to R)
  wait for 500 us;
  tb_lcd_enable <= '0';
  wait for 500 us;

  tb_lcd_enable <= '1';
  tb_lcd_bus <= "01" & "01001001"; --RS=1, RW=0, data='I'
  wait for 500 us;
  tb_lcd_enable <= '0';
  wait for 500 us;

  tb_lcd_enable <= '1';
  tb_lcd_bus <= "00" & "00000110"; --RS=1, RW=0, command= increment Curson (shift cursor to R)
  wait for 500 us;
  tb_lcd_enable <= '0';
  wait for 500 us;

  tb_lcd_enable <= '1';
  tb_lcd_bus <= "01" & "01000001"; --RS=1, RW=0, data='A'
  wait for 500 us;
  tb_lcd_enable <= '0';
  wait for 500 us;

  tb_lcd_enable <= '1';
  tb_lcd_bus <= "00" & "00000110"; --RS=1, RW=0, command= increment Curson (shift cursor to R)
  wait for 500 us;
  tb_lcd_enable <= '0';
  wait for 500 us;

  tb_lcd_enable <= '1';
  tb_lcd_bus <= "01" & "01001111"; --RS=1, RW=0, data='O'
   wait for 500 us;
  tb_lcd_enable <= '0';
  wait for 500 us;

  tb_lcd_enable <= '1';
  tb_lcd_bus <= "00" & "00000110"; --RS=1, RW=0, command= increment Curson (shift cursor to R)
  wait for 500 us;
  tb_lcd_enable <= '0';
  wait for 500 us;

    wait;
  end process;
  
end Behavioral;



