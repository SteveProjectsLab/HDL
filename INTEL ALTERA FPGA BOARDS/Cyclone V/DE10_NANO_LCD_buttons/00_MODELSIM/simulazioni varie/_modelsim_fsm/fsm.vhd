--https://stackoverflow.com/questions/31138152/vhdl-state-machine-with-several-delays-best-approach



LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Test123 IS

    PORT (
        clk_in1 : IN std_logic := '0';
        rst1, en1 : IN std_logic;
        );

END ENTITY Test123;

ARCHITECTURE Test123_Arch OF Test123 IS

    -- first, some declarations for readability instead of magic numbers
    CONSTANT clock_period : TIME := 20 ns; -- 50 MHz
    --WARNING : Synplicity has a bug : by default it rounds to nanoseconds!
    CONSTANT reset_delay : TIME := 100 ms - clock_period;
    CONSTANT s1_delay : TIME := 50 us - clock_period;
    CONSTANT s2_delay : TIME := 360 us - clock_period;
    -- NB take care to avoid off-by-1 error!

    -- now the state machine declarations:
    TYPE state_type IS (s0, s1, s2, s3);
    SIGNAL state : state_type;
    --
    --signal delay : unsigned(47 downto 0) := (others => '0'); -- a 48-Bit 'unsigned' Type, Along a 50-MHz Clock, Evaluates To an Upper-Limit of ~90,071,992.5474 Seconds.
    SIGNAL delay : NATURAL := 0; -- a 'natural' Type, Along a 50-MHz Clock, Evaluates To an Upper-Limit of ~85.8993459 Seconds.
    --

    FUNCTION time_to_cycles(time_value : TIME; clk_period : TIME) RETURN NATURAL IS
    BEGIN
        -- RETURN TO_UNSIGNED((time_value / clk_period), 48); -- Return a 48-Bit 'unsigned'
        RETURN (time_value / clk_period); -- Return a 32-Bit 'natural'
    END time_to_cycles;
    --

    BEGIN
        -- now the state machine itself:

        sm0 : PROCESS (clk_in1, rst1)
        BEGIN
            IF (rst1 = '1') THEN
                state <= s0;
                delay <= time_to_cycles(reset_delay, clock_period);

            ELSIF rising_edge(clk_in1) THEN
                -- default actions such as default outputs first
                -- operate the delay counter
                IF (delay > 0) THEN
                    delay <= delay - 1;
                END IF;
                -- state machine proper
                CASE state IS
                    WHEN s0 =>
                        -- do nothing while delay counts down
                        IF (delay = 0) THEN
                            --start 50us delay when entering S1
                            delay <= time_to_cycles(s1_delay, clock_period);
                            state <= s1;
                        END IF;
                    WHEN s1 =>
                        IF (delay = 0) THEN
                            delay <= time_to_cycles(s2_delay, clock_period);
                            state <= s2;
                        END IF;
                    WHEN s2 =>
                        IF (delay = 0) THEN
                            state <= s3;
                        END IF;
                    WHEN OTHERS =>
                        NULL;
                END CASE;
            END IF;
        END PROCESS;

END ARCHITECTURE Test123_Arch;