

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all ; 
use IEEE.math_real.all;

--https://community.intel.com/t5/Programmable-Devices/How-to-set-I-O-standard-on-IP-block-Serial-Flash-Loader/td-p/1342065


-----------------------------------------------------------------------------------------------
entity top is
	port(
		--SW: in std_logic_vector(3 downto 0); 
		--LED: out std_logic_vector(7 downto 0);
		FPGA_CLK1_50: in std_logic;	
		PCB_RS: out std_logic;
		PCB_RW: out std_logic;
		PCB_E: out std_logic;

		PCB_DB: out std_logic_vector(7 downto 0); 
		LED: out std_logic_vector(3 downto 0)
		--PIN_W15: out std_logic;-- LED0
		--PIN_AA24: out std_logic;-- LED1
		--PIN_V16: out std_logic;-- LED2
		--PIN_V15: out std_logic-- LED3
		
		--PCB_BT0: out std_logic;
		--PCB_BT1: out std_logic;
		--PCB_BT2: out std_logic;
		--PCB_BT3: out std_logic;
		--PCB_BT4: out std_logic;
		--PCB_BT5: out std_logic;
		--PCB_BT6: out std_logic;
		--PCB_BT7: out std_logic;
		--PCB_BT8: out std_logic;
		--PCB_BT9: out std_logic;

		--PCB_BT_UP: out std_logic;
		--PCB_BT_DOWN: out std_logic;
		--PCB_BT_RIGHT: out std_logic;
		--PCB_BT_LEFT: out std_logic
		);
		
end top;


-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------
architecture logicfunction of top is
-----------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------
-- costants
-----------------------------------------------------------------------------------------------
	CONSTANT fsm_clock_period : TIME := 20 ns; -- 1 MHz
	CONSTANT reset_delay : TIME := 100 ms - fsm_clock_period;
	CONSTANT s0_delay : TIME := 1000 ms - fsm_clock_period;
	CONSTANT s1_delay : TIME := 1000 ms - fsm_clock_period;
	CONSTANT s2_delay : TIME := 1000 ms - fsm_clock_period;
	CONSTANT s3_delay : TIME := 1000 ms - fsm_clock_period;
	
	TYPE state_type IS (s0, s1, s2, s3);
   SIGNAL state : state_type:=s0;
	SIGNAL delay : NATURAL := 0; -- a 'natural' Type, Along a 50-MHz Clock, Evaluates To an Upper-Limit of ~85.8993459 Seconds.
   SIGNAL rst1 : std_logic:='0';
	--SIGNAL EN1: IN std_logic:='1';
-----------------------------------------------------------------------------------------------
--functions
-----------------------------------------------------------------------------------------------
--signal timer_output : unsigned(24 downto 0) := (others => '0');
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
-----------------------------------------------------------------------------------------------
	function time_to_cycles(time_value : TIME; clk_period : TIME) RETURN NATURAL IS
    BEGIN
        -- RETURN TO_UNSIGNED((time_value / clk_period), 48); -- Return a 48-Bit 'unsigned'
        RETURN (time_value / clk_period); -- Return a 32-Bit 'natural'
    END time_to_cycles;
-----------------------------------------------------------------------------------------------
--inputs
-----------------------------------------------------------------------------------------------
	signal w_lcd_reset_n: std_logic; 
	signal w_lcd_enable: std_logic; 
	signal w_lcd_bus    : std_logic_vector(9 downto 0);

	signal w_50MHz: std_logic;

	signal w_bt0: std_logic;
-----------------------------------------------------------------------------------------------
--outputs
-----------------------------------------------------------------------------------------------
	signal w_lcd_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
	signal w_lcd_busy   : std_logic;
	signal w_lcd_rw: std_logic;
	signal w_lcd_rs: std_logic;
	signal w_lcd_e: std_logic;

	signal w_led0: std_logic;
	signal w_led1: std_logic;
	signal w_led2: std_logic;
	signal w_led3: std_logic;


--counter 0 signlas


	signal w_cnt0_reset: std_logic;
	signal w_cnt0_load: std_logic:='0';
	signal w_cnt0_data_in: std_logic_vector(natural(ceil(log2(real(100000))))-1 downto 0):= (others => '0');
	signal w_cnt0_q: std_logic_vector(natural(ceil(log2(real(100000))))-1 downto 0):= (others => '0');

	signal w_1Hz: std_logic;
	signal w_1KHz: std_logic;
	signal w_1MHz: std_logic;


--unsigned(log2ceil(500) downto 0) := (others => '0');
--q                : out std_logic_vector(natural(ceil(log2(real(n))))-1 downto 0));

begin
	-- istantiation of components
-----------------------------------------------------------------------------------------------	
	lcd_controller: entity work.lcd_controller
	port map(
		
		clk => FPGA_CLK1_50,		--inputs
		reset_n => w_lcd_reset_n, 
		lcd_enable => w_lcd_enable, 
		lcd_bus => w_lcd_bus, 
		busy => w_lcd_busy, --outputs
		rw => w_lcd_rw, 
		rs => w_lcd_rs, 
		e => w_lcd_e, 
		lcd_data => w_lcd_data
	);
-----------------------------------------------------------------------------------------------	
	tim_1Hz:entity work.clock_generator
	generic map(clock_in_speed => 50_000_000, clock_out_speed => 1)
	PORT map(
		clock_in=>w_50MHz,
		clock_out =>w_1Hz
	);
-----------------------------------------------------------------------------------------------
	tim_1MHz:entity work.clock_generator
	generic map(clock_in_speed => 50_000_000, clock_out_speed => 100_000)
	PORT map(
		clock_in=>w_50MHz,
		clock_out =>w_1KHz
	);
-----------------------------------------------------------------------------------------------
--	cnt0: entity work.counter_mod
--	generic map(n => 100_000)
	--	port map(
  --    	clk => w_1kHz,
  --    	reset=> w_cnt0_reset,
	---		load=> w_cnt0_load,
	--		data_in=> w_cnt0_data_in,
	---		q=>w_cnt0_q
	--	);
		
		
		
-----------------------------------------------------------------------------------------------
	--functional code
-----------------------------------------------------------------------------------------------

		
		
	--w_lcd_bus <= "00" & "00000001"; --RS=0, RW=0, command= Clear the display
	-----------------------------------------------------------------------------
	--state machine
	-----------------------------------------------------------------------------
		
	fsm0 : PROCESS (w_50MHz, rst1)
        BEGIN
           -- IF (rst1 = '1') THEN
           --     state <= s0;
            --    delay <= time_to_cycles(reset_delay, fsm_clock_period);

            --ELS
				IF rising_edge(w_50MHz) THEN
                -- default actions such as default outputs first
                -- operate the delay counter
                IF (delay > 0) THEN
                    delay <= delay - 1;
                END IF;
                -- state machine proper
                CASE state IS
					 -------------------------------------------------------------------------------
                    WHEN s0 =>
                        w_led0<='1';
								w_led1<='0';
								w_led2<='0';
								w_led3<='0';
										
                        IF (delay = 0) THEN
                            --start 50us delay when entering S1
                            delay <= time_to_cycles(s1_delay, fsm_clock_period);
                            state <= s1;
                        END IF;
					-------------------------------------------------------------------------------		
                    WHEN s1 =>
								w_led0<='0';
								w_led1<='1';
								w_led2<='0';
								w_led3<='0';
                        IF (delay = 0) THEN
                            delay <= time_to_cycles(s2_delay, fsm_clock_period);
                            state <= s2;
                        END IF;
					-------------------------------------------------------------------------------
                    WHEN s2 =>
						  		w_led0<='0';
								w_led1<='0';
								w_led2<='1';
								w_led3<='0';
                        IF (delay = 0) THEN
									delay <= time_to_cycles(s3_delay, fsm_clock_period);
                           state <= s3;
                        END IF;
					-------------------------------------------------------------------------------
                    WHEN s3 =>
								w_led0<='0';
								w_led1<='0';
								w_led2<='0';
								w_led3<='1';
                        IF (delay = 0) THEN
									delay <= time_to_cycles(s0_delay, fsm_clock_period);
                           state <= s0;
					-------------------------------------------------------------------------------
                        END IF;
                    WHEN OTHERS =>
                        NULL;
                END CASE;
            END IF;
        END PROCESS;
	

	
	
	
	
	-----------------------------------------------------------------------------
	--outputs assignments
	-----------------------------------------------------------------------------
	--PCB_RS <= w_lcd_rw;
	--PCB_RW <= w_lcd_rs;
	--PCB_E  <= w_lcd_e;
	
	
		--static wiring
		w_50MHz <= FPGA_CLK1_50;
		w_cnt0_reset<='0';
		--PIN_W15 <= w_1Hz; --OUTPUT LED
		w_cnt0_data_in<=( others => '0');
		
		LED(0)<=w_led0;
		LED(1)<=w_led1;
		LED(2)<=w_led2;
		LED(3)<=w_led3;
	
	
	
	--PCB_DB(0) <= w_cnt0_q(0); 
	--PCB_DB(1) <= w_cnt0_q(1); 
	--PCB_DB(2) <= w_cnt0_q(2); 
	--PCB_DB(3) <= w_cnt0_q(3); 
	--PCB_DB(4) <= w_cnt0_q(4); 
	--PCB_DB(5) <= w_cnt0_q(5); 
	--PCB_DB(6) <= w_cnt0_q(6); 
	--PCB_DB(7) <= w_cnt0_q(7);
	
	--PCB_DB(0) <= w_lcd_data(0); 
	--PCB_DB(1) <= w_lcd_data(1); 
	--PCB_DB(2) <= w_lcd_data(2); 
	--PCB_DB(3) <= w_lcd_data(3); 
	--PCB_DB(4) <= w_lcd_data(4); 
	--PCB_DB(5) <= w_lcd_data(5); 
	--PCB_DB(6) <= w_lcd_data(6); 
	--PCB_DB(7) <= w_lcd_data(7);

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
