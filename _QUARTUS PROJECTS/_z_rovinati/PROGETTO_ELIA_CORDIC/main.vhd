--! Project : CORDIC
--! <br>              
--! Author : Mondini - Menegardo        
--! <br>                         
--! Date : AY2022/2023 
--! <br>                           
--! Company : UniBS               
--! <br>                            
--! File : main.vhd  

library IEEE;
use IEEE.STD_LOGIC_1164.all;

--! Main del sistema, si occupa di inizializzare i pin hardware della scheda FPGA
entity main is
  port
  (
    FPGA_CLK1_50 : in std_logic; --! Clock 50MHz
    SW           : in std_logic_vector(3 downto 0); --! Switch fisici
    LED          : out std_logic_vector(7 downto 0); --! Led
    ARDUINO_IO   : inout std_logic_vector(15 downto 0) --! Pin I/O interni compatibili con board Arduino
  );
  end main;

architecture arc of main is
begin
  --! Inizializzazione macchina a stati SPI
  spi0 : entity work.spi_FSM  
    port map
    (
      OSC_FPGA     => FPGA_CLK1_50,
      SYS_SPI_MOSI => ARDUINO_IO(11),
      SYS_SPI_MISO => ARDUINO_IO(12),
      SYS_SPI_SCK  => ARDUINO_IO(13),
      reset        => SW(0),
      LED          => LED
    );

end architecture;