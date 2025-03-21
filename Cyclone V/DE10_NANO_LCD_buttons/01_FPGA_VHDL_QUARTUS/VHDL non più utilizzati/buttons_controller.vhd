lIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY buttons_controller IS
  GENERIC(
    clk_freq    : INTEGER := 50_000_000);  --system clock frequency in Hz
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
END buttons_controller;

ARCHITECTURE box OF buttons_controller IS
  SIGNAL and_buttons : STD_LOGIC:='1'; 
  SIGNAL box_reset : STD_LOGIC:='1';        
  SIGNAL box_output : STD_LOGIC:='1'; 
  signal mem : std_logic:='1';   
  signal buttons_signals : std_logic_vector(13 downto 0);      
  ------------------------------------------------------
  component debounce is
    generic (
      clk_freq    : integer := 50_000_000; --system clock frequency in Hz
      stable_time : integer := 20); --time button must remain stable in ms
    port (
      clk     : in std_logic; --input clock
      reset_n : in std_logic; --asynchronous active low reset
      button  : in std_logic; --input signal to be debounced
      result  : out std_logic); --debounced signal
  end component;
  

------------------------------------------------------
BEGIN
-- and of all buttons signal
and_buttons <= btn_0 and btn_1 and btn_2 and btn_3 and btn_4 and btn_5 and btn_6 and btn_7 and btn_8 and btn_9 and btn_up and btn_down and btn_r and btn_l;
buttons_signals(0) <=btn_0;
buttons_signals(1) <=btn_1;
buttons_signals(2) <=btn_2;
buttons_signals(3) <=btn_3;
buttons_signals(4) <=btn_4;
buttons_signals(5) <=btn_5;
buttons_signals(6) <=btn_6;
buttons_signals(7) <=btn_7;
buttons_signals(8) <=btn_8;
buttons_signals(9) <=btn_9;
buttons_signals(10) <=btn_up;
buttons_signals(11) <=btn_down;
buttons_signals(12) <=btn_r;
buttons_signals(13) <=btn_l;


    sDEBOUNCE1 : debounce
    PORT map(
        clk     => clk,
        reset_n => box_reset,
        button  => and_buttons,
        result  => box_output);



    PROCESS(clk) 
        VARIABLE count :  INTEGER RANGE 0 TO clk_freq*1/1000:=0;  --1ms
    BEGIN
        IF(clk'EVENT and clk = '1') THEN           --rising clock edge

            if (and_buttons='0'and mem='1') then
                --case A
                if(count <5000)then
                    --box_output<='0';
                    box_reset <= '0'; -- reset active 
                    count := count + 1;
                elsif (count >= 5000)then--after 1us
                    box_reset <= '1'; -- reset not active
                    count:=0;
                    mem<='0';
                end if;
                
            end if;
            
           if(box_output='1')then
               mem<='1';
           end if;

            
        end if;

        
          
        END PROCESS;
    
    output<=box_output;

    
END box;