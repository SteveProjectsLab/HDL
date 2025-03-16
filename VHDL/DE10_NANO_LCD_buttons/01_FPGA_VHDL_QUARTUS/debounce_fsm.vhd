LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY debounce_fsm IS
  GENERIC(
		fsm_clock_period : TIME := 10 us--100kHz
		);
  PORT(
		 clk    : IN  STD_LOGIC;  	--input clock
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
		 btn_num : OUT std_logic_vector(15 downto 0)--says which button is pressed
		 ); 
END debounce_fsm;


ARCHITECTURE controller OF debounce_fsm IS

	
	CONSTANT reset_delay : TIME := 100 ms - fsm_clock_period;--initial delay
	
	

-----------------------------------------------------------------------------------------------		

			function time_to_cycles(time_value : TIME; clk_period : TIME) RETURN NATURAL IS
			 BEGIN
				  -- RETURN TO_UNSIGNED((time_value / clk_period), 48); -- Return a 48-Bit 'unsigned'
				  RETURN (time_value / clk_period); -- Return a 32-Bit 'natural'
			 END time_to_cycles;
			 
-----------------------------------------------------------------------------------------------		 
	 
	TYPE state_type IS (WAIT_BTN, DEBOUNCE_WINDOW);--2 states
	

   SIGNAL state : state_type:=WAIT_BTN;
	--SIGNAL next_state : state_type:=WAIT_BTN;
	SIGNAL delay : NATURAL := time_to_cycles(100 ms - fsm_clock_period, fsm_clock_period); -- a 'natural' Type, Along a 50-MHz Clock, Evaluates To an Upper-Limit of ~85.8993459 Seconds.

	SIGNAL and_buttons: STD_LOGIC:='1';--and of all the input buttons, if one is pressed ( active L) and_buttons goes L
-----------------------------------------------------------------------------------------------		
	
BEGIN



	PROCESS (clk, reset)
		BEGIN

		IF rising_edge(clk) THEN
			--decrement the remaining delay to wait
			IF (delay > 0) THEN
				  delay <= delay - 1;
			 END IF;
			 -- state machine proper
			 CASE state IS
			 -------------------------------------------------------------------------------
				WHEN WAIT_BTN =>
				
					output<='1';--no button is pressed before

					and_buttons <= btn_0 and btn_1 and btn_2 and btn_3 and btn_4 and btn_5 and btn_6 and btn_7 and btn_8;--and of all buttons
					
					IF (and_buttons = '0') THEN-- if a button is pressed
						
						-- encode the output to 16 bit
						
						IF	(btn_0 = '0')THEN
							btn_num<=x"0000";
						ELSIF(btn_1 = '0')THEN
							btn_num<=x"0001";
						ELSIF(btn_2 = '0')THEN
							btn_num<=x"0002";
						ELSIF(btn_3 = '0')THEN
							btn_num<=x"0003";
						ELSIF(btn_4 = '0')THEN
							btn_num<=x"0004";
						ELSIF(btn_5 = '0')THEN
							btn_num<=x"0005";
						ELSIF(btn_6 = '0')THEN
							btn_num<=x"0006";
						ELSIF(btn_7 = '0')THEN
							btn_num<=x"0007";
						ELSIF(btn_8 = '0')THEN
							btn_num<=x"0008";
						ELSIF(btn_9 = '0')THEN
							btn_num<=x"0009";
						ELSIF(btn_up = '0')THEN
							btn_num<=x"0010";
						ELSIF(btn_down = '0')THEN
							btn_num<=x"0011";
						ELSIF(btn_r = '0')THEN
							btn_num<=x"0012";
						ELSIF(btn_l = '0')THEN
							btn_num<=x"0013";
						END IF;
						
						delay <= time_to_cycles(100 ms, fsm_clock_period);--start next delay transition
						state <= DEBOUNCE_WINDOW;--change state
						
					END IF;
				
			-------------------------------------------------------------------------------		
				WHEN DEBOUNCE_WINDOW =>	--clear the display
						output<='0';--monostable output, active L

						IF (delay = 0) THEN-- if the delay has ended
							state <= WAIT_BTN;--change state
						END IF;

			-------------------------------------------------------------------------------
				
				WHEN OTHERS =>
					  state <= WAIT_BTN;--default state
			END CASE;
		END IF;
  END PROCESS;
END controller;
