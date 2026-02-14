--! Project : CORDIC
--! <br>              
--! Author : Mondini - Menegardo        
--! <br>                         
--! Date : AY2022/2023 
--! <br>                           
--! Company : UniBS               
--! <br>                            
--! File : spi_core.vhd  

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

--! Firmware dell'SPI
entity spi_core is
  generic
  (
    DATA_W   : natural := 16; --! Dimensione in bit dei dati
    SYNC_BIT : natural := 8 --! Dimensione in bit del synchronizer

  );
  port
  (
    clk                 : in std_logic; --! Segnale di clock per la scansione temporale
    SPI_SCK             : in std_logic; --! Segnale di clock dell'SPI
    SPI_MOSI            : in std_logic; --! Linea ricezione dati SPI (From HPS to FPGA)
    SPI_MISO            : out std_logic; --! Linea invio dati SPI (From FPGA to HPS)
    reset               : in std_logic; --! Segnale di reset
    data_in             : in std_logic_vector(DATA_W - 1 downto 0); --! Dato ricevuto tramite comunicazione SPI
    data_out            : out std_logic_vector(DATA_W - 1 downto 0) := (others => '0'); --! Dato da inviare tramite comunicazione SPI
    SPI_rd_wr_done_flag : out std_logic                             := '0' --! Flag comunicazione SPI
  );
end entity;

architecture rtl of spi_core is
  signal sck_synchronizer : std_logic_vector(SYNC_BIT - 1 downto 0); --! Segnale sincronizzatore tra segnali di clock
  signal data_to_sent     : std_logic_vector(DATA_W - 1 downto 0); --! Dato da inviare
  signal data_to_read     : std_logic_vector(DATA_W - 1 downto 0); --! Dato da leggere
  signal MOSI_counter     : natural range DATA_W downto 0 := 0; --! Indice contatore MOSI
  signal MISO_counter     : natural range DATA_W downto 0 := 0; --! Indice contatore MISO
  signal rise_flag        : std_logic                     := '0'; --! Flag rilevamento fronte di salita  
  signal fall_flag        : std_logic                     := '0'; --! flag rilevamento fronte di discesa

begin

  --! Il process è controllato dal clock dell'FPGA mentre le operazioni al suo interno sono gestite dai flag per la rilevazione dei fronti del clock dell'SPI.
  --! Per determinare il corretto ricevimento dei dati si fa affidamento su dei conuter, mentre per l'acquisizione dei dati si utilizzano shift register.
  --! Questo firmware utilizza una comunicazione di tipo SPI in mode=1, ovvero scrittura sul fronte di salita mentre scrittura sul fronte di discesa.
  SPI_FW:process (clk, reset)
  begin

    if (reset = '1') then
      MOSI_counter <= 0;
      MISO_counter <= 0;
      data_to_sent <= (others => '0');
      data_out     <= (others => '0');

      SPI_rd_wr_done_flag <= '0';

      rise_flag <= '0';
      fall_flag <= '0';

    elsif (rising_edge(clk)) then

      sck_synchronizer    <= std_logic_vector(shift_left(unsigned(sck_synchronizer), 1));
      sck_synchronizer(0) <= SPI_SCK;

      if (MISO_counter = 0) then
        data_to_sent <= data_in;
      end if;

      -- rising edge (send data to hps) 00----11
      if (sck_synchronizer(SYNC_BIT - 1 downto SYNC_BIT - 2) = "00" and sck_synchronizer(1 downto 0) = "11") then
        if (rise_flag = '0') then
          rise_flag <= '1';
          fall_flag <= '0';

          data_to_sent <= std_logic_vector(shift_left(unsigned(data_to_sent), 1));
          SPI_MISO     <= data_to_sent(data_to_sent'left);

          MISO_counter <= MISO_counter + 1;
        end if; -- rise_flag

        --fall edse (read data from hps) 11----00
      elsif (sck_synchronizer(SYNC_BIT - 1 downto SYNC_BIT - 2) = "11" and sck_synchronizer(1 downto 0) = "00") then
        if (fall_flag = '0') then
          rise_flag <= '0';
          fall_flag <= '1';

          data_to_read    <= std_logic_vector(shift_left(unsigned(data_to_read), 1));
          data_to_read(0) <= SPI_MOSI;

          MOSI_counter <= MOSI_counter + 1;
        end if; -- fall_flag
      end if; --sck_synchronizer
      if (MISO_counter = DATA_W) then
        MISO_counter <= 0;
      end if;

      if (MOSI_counter = DATA_W) then
        SPI_rd_wr_done_flag <= '1';
        MOSI_counter        <= 0;
        data_out            <= data_to_read;
      else
        SPI_rd_wr_done_flag <= '0';
      end if; --MOSI_counter
    end if; --reset / clk
  end process SPI_FW;
end architecture;