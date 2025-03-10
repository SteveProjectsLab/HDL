
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY spi_tb IS
END spi_tb;
 
ARCHITECTURE behavior OF spi_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT spi
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         data_in : IN  std_logic_vector(7 downto 0);
         data_out : OUT  std_logic_vector(7 downto 0);
         rd : OUT  std_logic;
         wr : OUT  std_logic;
         SCK : IN  std_logic;
         MOSI : IN  std_logic;
         MISO : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal data_in : std_logic_vector(7 downto 0) := (others => '0');
   signal SCK : std_logic := '0';
   -- signal MOSI : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(7 downto 0);
   signal rd : std_logic;
   signal wr : std_logic;
   -- signal MISO : std_logic;

   signal wire_SPI: std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: spi PORT MAP (
          clk => clk,
          reset => reset,
          data_in => data_in,
          data_out => data_out,
          rd => rd,
          wr => wr,
          SCK => SCK,
          -- MOSI => MOSI,
          -- MISO => MISO
          MOSI => wire_SPI,
          MISO => wire_SPI
          );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   sclk_process :process
   begin
		sck <= '0';
		wait for clk_period*5;
		sck <= '1';
		wait for clk_period*5;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
		-- glue signals to fixed values
		data_in <= X"C5";
      -- hold reset state for 100 ns.
		reset <= '1';
      wait for 100 ns;	
		reset <= '0';

      wait for 1500 ns;	
		data_in <= X"A5";

      wait;
   end process;

END;
