--! Project : Register    
--! <br>               
--! Author : Emiliano Sisinni                   
--! <br>               
--! Date : AY2023/2024                          
--! <br>               
--! Company : UniBS                             
--! <br>               
--! File : reg_tb.vhd  
--! <br>               
--! Basic testbench for reg entity in reg.vhd. Demonstrates use of random numbers.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity reg_tb is
end reg_tb;

architecture random_tb of reg_tb is

    constant NUM_TESTS : integer := 100;
    constant WIDTH  : positive := 8;

    signal clk_en                        : std_logic := '1';
    signal clk                           : std_logic := '0';
    signal rst, en                       : std_logic;
    signal input, output, output_correct : std_logic_vector(WIDTH-1 downto 0);
    
begin
    
    DUT : entity work.reg
        generic map (
            WIDTH  => WIDTH)
        port map (
            clk    => clk,
            rst    => rst,
            en     => en,
            input  => input,
            output => output
            );

    -- Generate a 100 MHz clock. We gate the clock because the simulation
    -- will continue to run as long as there are events to simulate. Without
    -- the gate, this concurrent statement will run forever. With the gate,
    -- we can disable clk_en, and the clock will stop, causing the simulation
    -- to end.
    clk <= not clk and clk_en after 5 ns;

    process
        variable seed1, seed2 : positive := 1;
        variable rand_val     : real;
    begin
        -- Reset the register
        rst   <= '1';
        en    <= '0';
        input <= (others => '0');

        -- Wait for 4 clock cycles.
        for i in 0 to 3 loop
            wait until rising_edge(clk);
        end loop;

        -- Clear the register for one cycle.
        rst <= '0';
        wait until rising_edge(clk);

        -- Perform NUM_TESTS random tests of both the input and enable, with
        -- the enable being asserted with 75% probability.
        for i in 0 to NUM_TESTS-1 loop
            -- Generating random numbers in VHDL is pretty awkward. We have
            -- to call uniform to get a random real between 0 and 1, and then
            -- manipulate it however we want.
            uniform(seed1, seed2, rand_val);

            -- Generates a random input.
            input <= std_logic_vector(to_unsigned(integer(floor(rand_val * real(2**WIDTH-1))), WIDTH));

            -- Generate a random enable with 75% probability.
            -- uniform(seed1, seed2, rand_val);
            -- if (rand_val > 0.75) then en <= '1'; else en <= '0'; end if;
	        
            -- Otherwise use fixed value
            en <= '1';
            wait until rising_edge(clk);
        end loop;

        -- Disable the clock to terminate the simulation.
        clk_en <= '0';
        report "Tests completed.";
        wait;
    end process;

    -- The output of the register should match the reference model every cycle
    -- that the register isn't being reset.
    assert(not (rising_edge(clk) and rst = '0' and output /= output_correct));

    --------------------------------------------------------------------
    -- Reference model
    --
    -- A testbench for just a register isn't a great example because unless
    -- you have an existing register entity to act as a reference model, you
    -- basically have to use the same sequential code.   
    process(clk, rst)
    begin
        if (rst = '1') then
            output_correct <= (others => '0');        
        elsif (rising_edge(clk)) then
            if (en = '1') then
                output_correct <= input;
            end if;
        end if;
    end process;


    
end random_tb;
