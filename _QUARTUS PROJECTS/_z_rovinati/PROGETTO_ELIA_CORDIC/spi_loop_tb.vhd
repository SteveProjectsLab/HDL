library IEEE;
use IEEE.numeric_std.all;
use IEEE.STD_LOGIC_1164.all;

entity spi_loop_tb is
  generic
  (
    DATA_W         : natural                       := 16;
    X_in           : std_logic_vector(15 downto 0) := "0010011011100100";--0.6073 
    Y_in           : std_logic_vector(15 downto 0) := "0000000000000000";--0
    Z_in           : std_logic_vector(15 downto 0) := "0001000000000000";--45°
    start_path     : std_logic_vector(15 downto 0) := "1010101010101010";--45°
    random_path    : std_logic_vector(15 downto 0) := "1000111011101011";--45°
    CLK_PERIOD     : time                          := 20 ns;
    SPI_CLK_PERIOD : time                          := 5.13 us
  );
end entity;

architecture rtl of spi_loop_tb is
  signal Data_in_X    : std_logic_vector(15 downto 0) := X_in;
  signal Data_in_Y    : std_logic_vector(15 downto 0) := Y_in;
  signal Data_in_Z    : std_logic_vector(15 downto 0) := Z_in;
  signal Data_in_R    : std_logic_vector(15 downto 0) := random_path;
  signal Data_in_S    : std_logic_vector(15 downto 0) := start_path;
  signal Data_out_X   : std_logic_vector(15 downto 0) := (others => '0');
  signal Data_out_Y   : std_logic_vector(15 downto 0) := (others => '0');
  signal Data_out_Z   : std_logic_vector(15 downto 0) := (others => '0');
  signal OSC_FPGA     : std_logic;
  signal reset        : std_logic                    := '1';
  signal SYS_SPI_MOSI : std_logic                    := '0';
  signal SYS_SPI_SCK  : std_logic                    := '0';
  signal SYS_SPI_MISO : std_logic                    := '0';
  signal LED          : std_logic_vector(7 downto 0) := (others => '0');
  signal counter      : natural                      := 0;
  signal state        : natural                      := 0;
  signal mode         : std_logic                    := '0';
  signal sck_start    : std_logic                    := '0';
  signal counter_sck  : natural                      := 0;

begin
  SPI : entity work.spi_FSM
    port map
    (
      OSC_FPGA     => OSC_FPGA,
      reset        => reset,
      SYS_SPI_MOSI => SYS_SPI_MOSI,
      SYS_SPI_SCK  => SYS_SPI_SCK,
      SYS_SPI_MISO => SYS_SPI_MISO,
      LED          => LED
    );

  rst : process
  begin
    wait for 20 ns;
    reset <= '0';
  end process;

  CLK : process
  begin
    OSC_FPGA <= '0';
    wait for CLK_PERIOD/2;
    OSC_FPGA <= '1';
    wait for CLK_PERIOD/2;
  end process;

  SCK : process
  begin
    if (sck_start = '1') then
      SYS_SPI_SCK <= '1';
      wait for SPI_CLK_PERIOD/2;
      SYS_SPI_SCK <= '0';
      wait for SPI_CLK_PERIOD/2;
    else
      SYS_SPI_SCK <= '0';
      wait for SPI_CLK_PERIOD;
    end if;
    if (counter_sck >= 15) then
      counter_sck <= 0;
      sck_start   <= not sck_start;
    else
      counter_sck <= counter_sck + 1;
    end if;
  end process;

  
  MAIN : process (SYS_SPI_SCK)
  begin
    if (reset = '1') then
      state   <= 0;
      counter <= 0;
    end if;
    if (SYS_SPI_SCK'event and SYS_SPI_SCK = '1') then
      case state is

          --Invio path random
        when 0 =>
          if (counter < 16) then
            SYS_SPI_MOSI <= Data_in_R(DATA_W - 1);
            counter      <= counter + 1;
            if (counter >= 0) then
              Data_in_R <= std_logic_vector(shift_left(unsigned(Data_in_R), 1));
            end if;
          end if;
          if (counter = 15) then
            state   <= 1;
            counter <= 0;
          end if;

          -- Invio start path
        when 1 =>
          if (counter < 16) then
            SYS_SPI_MOSI <= Data_in_S(DATA_W - 1);
            counter      <= counter + 1;
            if (counter >= 0) then
              Data_in_S <= std_logic_vector(shift_left(unsigned(Data_in_S), 1));
            end if;
          end if;
          if (counter = 15) then
            state   <= 2;
            counter <= 0;
          end if;

          --Invio dato X  
        when 2 =>
          if (counter < 16) then
            SYS_SPI_MOSI <= Data_in_X(DATA_W - 1);
            counter      <= counter + 1;
            if (counter >= 0) then
              Data_in_X <= std_logic_vector(shift_left(unsigned(Data_in_X), 1));
            end if;
          end if;
          if (counter = 15) then
            state   <= 3;
            counter <= 0;
          end if;

          --Invio dato Y  
        when 3 =>
          if (counter < 16) then
            SYS_SPI_MOSI <= Data_in_Y(DATA_W - 1);
            counter      <= counter + 1;
            if (counter >= 0) then
              Data_in_Y <= std_logic_vector(shift_left(unsigned(Data_in_Y), 1));
            end if;
          end if;
          if (counter = 15) then
            state   <= 4;
            counter <= 0;
          end if;

          --Invio dato Z  
        when 4 =>
          if (counter < 16) then
            SYS_SPI_MOSI <= Data_in_Z(DATA_W - 1);
            counter      <= counter + 1;
            if (counter >= 0) then
              Data_in_Z <= std_logic_vector(shift_left(unsigned(Data_in_Z), 1));
            end if;
          end if;
          if (counter = 15) then
            state   <= 6;
            counter <= 0;
          end if;


          --Risultato X  
        when 6 =>
          if (counter < 16) then
            Data_out_X(DATA_W - 1 downto 1) <= Data_out_X(DATA_W - 2 downto 0);
            Data_out_X(0)                   <= SYS_SPI_MISO;
            counter                         <= counter + 1;
          end if;
          if (counter = 16) then
            state   <= 7;
            counter <= 0;
          end if;

          --Risultato Y  
        when 7 =>
          if (counter < 16) then
            if (counter >= 0) then
              Data_out_Y(DATA_W - 1 downto 1) <= Data_out_Y(DATA_W - 2 downto 0);
            end if;
            Data_out_Y(0) <= SYS_SPI_MISO;
          end if;
          if (counter = 16) then
            state   <= 8;
            counter <= 0;
          end if;

          --Risultato Z  
        when 8 =>
          if (counter < 16) then
            if (counter >= 0) then
              Data_out_Z(DATA_W - 1 downto 1) <= Data_out_Z(DATA_W - 2 downto 0);
            end if;
            Data_out_Z(0) <= SYS_SPI_MISO;
          end if;
          if (counter = 16) then
            state   <= 9;
            counter <= 0;
          end if;
        when others =>
          null;
      end case;
    end if;
  end process;
end architecture;