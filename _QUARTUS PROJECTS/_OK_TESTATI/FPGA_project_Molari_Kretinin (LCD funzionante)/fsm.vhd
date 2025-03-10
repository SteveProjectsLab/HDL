LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fsm IS
   PORT(
    clk        : IN   	STD_LOGIC;                     --system clock
	 btn_num		: IN 		INTEGER;
    reset    	: IN   	STD_LOGIC;                     --active low reinitializes lcd
	 sw0			: IN   	STD_LOGIC; 
	 led0			: OUT   	STD_LOGIC;
    lcd_enable : OUT   	STD_LOGIC;                     --latches data into lcd controller
    lcd_bus    : OUT   	STD_LOGIC_VECTOR(9 DOWNTO 0));  --data and control signals
		
END fsm;


ARCHITECTURE controller OF fsm IS

	CONSTANT fsm_clock_period : TIME := 10 us;--100kHz					--20 ns; -- 1 MHz
	CONSTANT reset_delay : TIME := 100 ms - fsm_clock_period;
	
	subtype charcode is std_logic_vector( 0 to 7 );
	subtype rsrw is std_logic_vector( 0 to 1 );
	subtype lcd_status is std_logic;
	
	
-----------------------------------------------------------------------------------------------

	-- ENABLE
	constant ONN:   lcd_status := '1';
	constant OFF:  lcd_status := '0';
	
-----------------------------------------------------------------------------------------------

	-- RS & RW
	constant MSG:   rsrw := "10";
	constant CMD:   rsrw := "00";
	
-----------------------------------------------------------------------------------------------

--https://www.electronicwings.com/sensors-modules/lcd-16x2-display-module

	--commands
	constant CLEAR:   				charcode := x"01";	--Clear the display screen	1.64ms
	constant CURS_SHR:   			charcode := x"06";	--Shift the cursor right (e.g. data gets written in an incrementing order, left to right)	40 us
	constant DISP_ON_cURS_OFF:   	charcode := x"0C";	--Display on, cursor off	40 us
	constant DISP_ON_cURS_BLINK:  charcode := x"0E";	--Display on, cursor blinking	40 us
	constant CURS_HOME_1:   		charcode := x"80";	--Force the cursor to the beginning of the 1st line	40 us
	constant CURS_HOME_2:   		charcode := x"C0";	--Force the cursor to the beginning of the 2nd line	40 us
	constant CURS_L:   				charcode := x"10";	--Shift cursor position to the left	40 us
	constant CURS_R:   				charcode := x"14";	--Shift cursor position to the right	40 us
	constant DISP_L:   				charcode := x"18";   --Shift entire display to the left	40 us
	constant DISP_R:   				charcode := x"1C";	--Shift entire display to the right	40 us
	
	--constant xxx:   charcode := x"38";	--2 lines, 5x8 matrix, 8-bit mode	40 us
	--constant xxx:   charcode := x"28";	--2 lines, 5x8 matrix,4-bit mode	40 us
	--constant xxx:   charcode := x"30";	--1 line, 8-bit mode	40us
	--constant xxx:   charcode := x"20";	--1 line, 4-bit mode	40us
	
-----------------------------------------------------------------------------------------------	

	--characters
	constant CHAR_0:   charcode := "0011"&"0000";
	constant CHAR_1:   charcode := "0011"&"0001";
	constant CHAR_2:   charcode := "0011"&"0010";
	constant CHAR_3:   charcode := "0011"&"0011";
	constant CHAR_4:   charcode := "0011"&"0100";
	constant CHAR_5:   charcode := "0011"&"0101";
	constant CHAR_6:   charcode := "0011"&"0110";
	constant CHAR_7:   charcode := "0011"&"0111";
	constant CHAR_8:   charcode := "0011"&"1000";
	constant CHAR_9:   charcode := "0011"&"1001";

-----------------------------------------------------------------------------------------------		

			function time_to_cycles(time_value : TIME; clk_period : TIME) RETURN NATURAL IS
			 BEGIN
				  -- RETURN TO_UNSIGNED((time_value / clk_period), 48); -- Return a 48-Bit 'unsigned'
				  RETURN (time_value / clk_period); -- Return a 32-Bit 'natural'
			 END time_to_cycles;
			 
-----------------------------------------------------------------------------------------------		 
	 
	TYPE state_type IS (
	START, DISPL_CLEAR, WAIT_INPUT, PRSD_CMD, PRSD_MSG, SEND,
	PRESSED_UP, PRSD_DOWN, PRSD_R, PRSD_L,
	PRSD_0, PRSD_1, PRSD_2, PRSD_3, PRSD_4, PRSD_5, PRSD_6, PRSD_7, PRSD_8, PRSD_9
	);
	--SIGNAL next_state : state_type:=START;
   SIGNAL state : state_type:=START;
	SIGNAL delay : NATURAL := time_to_cycles(100 ms - fsm_clock_period, fsm_clock_period); -- a 'natural' Type, Along a 50-MHz Clock, Evaluates To an Upper-Limit of ~85.8993459 Seconds.

-----------------------------------------------------------------------------------------------		
	
BEGIN



PROCESS (clk, reset)
        BEGIN
				--next_state <= state;
				
--				IF (rst1 = '1') THEN
--					rst1 <= '0';
--               w_led0<='1';
--					w_led1<='1';
--					w_led2<='1';
--					w_led3<='1';
--					--w_lcd_reset_n<='0';
--               
--               delay <= time_to_cycles(1000 ms, fsm_clock_period);
--					state <= s0;	
--					
--            ELS
				IF rising_edge(clk) THEN
					--state <= next_state;
                -- default actions such as default outputs first
                -- operate the delay counter
					 
                IF (delay > 0) THEN
                    delay <= delay - 1;
                END IF;
					 
                -- state machine
                CASE state IS
					 -------------------------------------------------------------------------------
                    WHEN START =>	--wait 100ms
								IF (delay = 0) THEN
									delay <= time_to_cycles(30 us, fsm_clock_period);--start next delay transition
									state <= DISPL_CLEAR;
                        END IF;
					-------------------------------------------------------------------------------		
                    WHEN DISPL_CLEAR =>	--clear the display
                        lcd_bus <= CMD & CLEAR;
								lcd_enable <=ONN;
								IF (delay = 0) THEN
                            state <= WAIT_INPUT; 
                        END IF;
					-------------------------------------------------------------------------------
                    WHEN WAIT_INPUT => --wait for a button press
								lcd_enable <=OFF;
								led0<=ONN;
                        IF (sw0 = '0') THEN
									delay <= time_to_cycles(30 us, fsm_clock_period);
                           state <= PRSD_MSG;
                        END IF;
					-------------------------------------------------------------------------------
					-------------------------------------------------------------------------------
                    WHEN PRSD_msg=> --a char is pressed
								
								lcd_enable <=ONN;
								
								case btn_num is
									when 0 =>
										lcd_bus <= MSG & CHAR_0;
									when 1 =>
										lcd_bus <= MSG & CHAR_1;
									when 2 =>
										lcd_bus <= MSG & CHAR_2;
									when 3 =>
										lcd_bus <= MSG & CHAR_3;
									when 4 =>
										lcd_bus <= MSG & CHAR_4;
									when 5 =>
										lcd_bus <= MSG & CHAR_5;
									when 6 =>
										lcd_bus <= MSG & CHAR_6;
									when 7 =>
										lcd_bus <= MSG & CHAR_7;
									when 8 =>
										lcd_bus <= MSG & CHAR_8;
									when 9 =>
										lcd_bus <= MSG & CHAR_9;
									WHEN OTHERS =>
										-- NULL;
							  
								end case;
								
                        IF (delay = 0) THEN
									delay <= time_to_cycles(1000 ms, fsm_clock_period);
                           state <= SEND;
                        END IF;
					-------------------------------------------------------------------------------
					
					      WHEN SEND => --send to SPI
								lcd_enable <=OFF;
								led0<=OFF;
                        IF (delay = 0) THEN
									state <= WAIT_INPUT;
								END IF;
								
					-------------------------------------------------------------------------------
--                    WHEN PRSD_CMD=> --a command is pressed
--			
--                        IF (btn_num = 0) THEN
--									delay <= time_to_cycles(30 us, fsm_clock_period);
--                           state <= PRSD_0;
--								END IF;
					
					-------------------------------------------------------------------------------
--							WHEN PRSD_UP => --go up
--								led0<=OFF;
--								lcd_enable <=ONN;
--								lcd_bus <= MSG & CHAR_0; 
--								
--                        IF (delay = 0) THEN
--									delay <= time_to_cycles(100 ms, fsm_clock_period);
--                           state <= WAIT_INPUT;
--                        END IF;

					-------------------------------------------------------------------------------
						
					      WHEN OTHERS =>
                       -- NULL;
							  state <= WAIT_INPUT;
                END CASE;
            END IF;
        END PROCESS;
END controller;
