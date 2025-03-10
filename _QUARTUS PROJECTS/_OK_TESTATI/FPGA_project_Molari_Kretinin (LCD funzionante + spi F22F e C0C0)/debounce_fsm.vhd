LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY debounce_fsm IS
  GENERIC(
		fsm_clock_period : TIME := 10 us--100kHz
		);
  PORT(
		 clk     : IN  STD_LOGIC;  --input clock
		 reset  : IN  STD_LOGIC;  	--asynchronous active low reset
		 btn_0  : IN  STD_LOGIC;  	--input signal to be debounced
		 btn_1  : IN  STD_LOGIC;  	--input signal to be debounced
		 btn_2  : IN  STD_LOGIC;  	--input signal to be debounced
		 btn_3  : IN  STD_LOGIC;  	--input signal to be debounced
		 btn_4  : IN  STD_LOGIC;  	--input signal to be debounced
		 btn_5  : IN  STD_LOGIC;  	--input signal to be debounced
		 btn_6  : IN  STD_LOGIC;  	--input signal to be debounced
		 btn_7  : IN  STD_LOGIC;  	--input signal to be debounced
		 btn_8  : IN  STD_LOGIC;  	--input signal to be debounced
		 btn_9  : IN  STD_LOGIC;  	--input signal to be debounced
		 btn_up  : IN  STD_LOGIC;  --input signal to be debounced
		 btn_down  : IN  STD_LOGIC;--input signal to be debounced
		 btn_r  : IN  STD_LOGIC;  	--input signal to be debounced
		 btn_l  : IN  STD_LOGIC;  	--input signal to be debounced
		 output  : OUT STD_LOGIC;	--debounced signal
		 btn_num : OUT INTEGER
		 ); 
END debounce_fsm;


ARCHITECTURE controller OF debounce_fsm IS

	
	CONSTANT reset_delay : TIME := 100 ms - fsm_clock_period;
	
	

-----------------------------------------------------------------------------------------------		

			function time_to_cycles(time_value : TIME; clk_period : TIME) RETURN NATURAL IS
			 BEGIN
				  -- RETURN TO_UNSIGNED((time_value / clk_period), 48); -- Return a 48-Bit 'unsigned'
				  RETURN (time_value / clk_period); -- Return a 32-Bit 'natural'
			 END time_to_cycles;
			 
-----------------------------------------------------------------------------------------------		 
	 
	TYPE state_type IS (WAIT_BTN, DEBOUNCE_WINDOW
	);

   SIGNAL state : state_type:=WAIT_BTN;
	--SIGNAL next_state : state_type:=WAIT_BTN;
	SIGNAL delay : NATURAL := time_to_cycles(100 ms - fsm_clock_period, fsm_clock_period); -- a 'natural' Type, Along a 50-MHz Clock, Evaluates To an Upper-Limit of ~85.8993459 Seconds.

	SIGNAL and_buttons: STD_LOGIC:='1';
-----------------------------------------------------------------------------------------------		
	
BEGIN



	PROCESS (clk, reset)
		BEGIN
		  
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
			 -- state machine proper
			 CASE state IS
			 -------------------------------------------------------------------------------
				WHEN WAIT_BTN =>
					output<='1';
					and_buttons <= btn_0 and btn_1 and btn_2 and btn_3 and btn_4 and btn_5 and btn_6 and btn_7 and btn_8;
				  
					IF (and_buttons = '0') THEN
						
						IF	(btn_0 = '0')THEN
							btn_num<=0;
						ELSIF(btn_1 = '0')THEN
							btn_num<=1;
						ELSIF(btn_2 = '0')THEN
							btn_num<=2;
						ELSIF(btn_3 = '0')THEN
							btn_num<=3;
						ELSIF(btn_4 = '0')THEN
							btn_num<=4;
						ELSIF(btn_5 = '0')THEN
							btn_num<=5;
						ELSIF(btn_6 = '0')THEN
							btn_num<=6;
						ELSIF(btn_7 = '0')THEN
							btn_num<=7;
						ELSIF(btn_8 = '0')THEN
							btn_num<=8;
						ELSIF(btn_9 = '0')THEN
							btn_num<=9;
						ELSIF(btn_up = '0')THEN
							btn_num<=10;
						ELSIF(btn_down = '0')THEN
							btn_num<=11;
						ELSIF(btn_r = '0')THEN
							btn_num<=12;
						ELSIF(btn_l = '0')THEN
							btn_num<=13;
						END IF;
						
						delay <= time_to_cycles(100 ms, fsm_clock_period);--start next delay transition
						state <= DEBOUNCE_WINDOW;
						
					END IF;
				
			-------------------------------------------------------------------------------		
				WHEN DEBOUNCE_WINDOW =>	--clear the display
						
						IF (delay = 0) THEN
							output<='0';
							state <= WAIT_BTN;
						END IF;

			-------------------------------------------------------------------------------
				
				WHEN OTHERS =>
					  -- NULL;
					  state <= WAIT_BTN;
			END CASE;
		END IF;
  END PROCESS;
END controller;
