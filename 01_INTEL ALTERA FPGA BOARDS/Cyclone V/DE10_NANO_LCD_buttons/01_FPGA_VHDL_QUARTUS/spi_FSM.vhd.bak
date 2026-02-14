--! Project : CORDIC
--! <br>              
--! Author : Mondini - Menegardo        
--! <br>                         
--! Date : AY2022/2023 
--! <br>                           
--! Company : UniBS               
--! <br>                            
--! File : spi_FSM.vhd  

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

--! Macchina a stati per la gestione della comunicazione SPI
entity spi_FSM is
  generic
  (
    DATA_W     : integer                       := 16; --! Dimensione in bit dei dati
    MARGIN     : integer                       := 4; --! Bit agiuntivi per aumentare la precisione dell'angolo
    Start_path : std_logic_vector(15 downto 0) := "1010101010101010" --! Path di riconoscimento dei dai provenienti dal canale SPI

  );
  port
  (
    OSC_FPGA     : in std_logic; --! Segnale di clock per la scansione temporale
    SYS_SPI_MOSI : in std_logic; --! Linea ricezione dati SPI (From HPS to FPGA)
    SYS_SPI_MISO : out std_logic; --! Linea invio dati SPI (From FPGA to HPS)
    SYS_SPI_SCK  : in std_logic; --! Segnale di clock dell'SPI
    RESET        : in std_logic; --! Segnale di reset
    LED          : out std_logic_vector(7 downto 0) := (others => '0') --! Vettore LED
  );
end entity;

architecture rtl of spi_FSM is
  signal start   : std_logic                             := '0'; --! Flag di start dell'algoritmo
  signal dataIn  : std_logic_vector(DATA_W - 1 downto 0) := (others => '0'); --! Dato ricevuto tramite comunicazione SPI
  signal dataOut : std_logic_vector(DATA_W - 1 downto 0) := (others => '0'); --! Dato da inviare tramite comunicazione SPI

  --cordic
  signal x_in  : std_logic_vector(DATA_W - 1 downto 0); --! Valore di x(sin(theta))
  signal y_in  : std_logic_vector(DATA_W - 1 downto 0); --! Valore di y(cos(theta))
  signal z_in  : std_logic_vector(DATA_W + MARGIN - 1 downto 0); --! Angolo theta1
  signal x_out : std_logic_vector(DATA_W - 1 downto 0); --! Valore di x(sin(theta1))
  signal y_out : std_logic_vector(DATA_W - 1 downto 0); --! Valore di y(cos(theta1))
  signal z_out : std_logic_vector(DATA_W + MARGIN - 1 downto 0); --! Residuo dell'angolo
  signal done  : std_logic; --! Flag operazione completata

  signal SPI_done_flag : std_logic := '0'; --! Flag operazione SPI completata (dato ricevuto o inviato con successo)

  --! Stati della FSM
  type STATE_TYPE is (RESET_S, WAIT_PATH_START, READ_X, READ_Y, READ_Z_L,READ_Z_H, START_CORDIC, CORDIC_DONE, WRITE_PATH, WRITE_X, WRITE_Y, WRITE_Z, DONE_S);
  signal state      : STATE_TYPE := RESET_S;
  signal next_state : STATE_TYPE;

begin

  --! Inizializzazione lampeggio led
  blink_hb : entity work.blink_heartbeat port map
    (clk => OSC_FPGA, LED_B => LED(0));

  --! Inizializzazione FSM Cordic
  cordic : entity work.cordic_FSM port
    map
    (
    clk       => OSC_FPGA,
    reset     => reset,
    start     => start,
    x_input   => x_in,
    y_input   => y_in,
    z_input   => z_in,
    x_output  => x_out,
    y_output  => y_out,
    z_output  => z_out,
    done_flag => done
    );

    --! Inizializzazione FW SPI
  spi : entity work.spi_core port
    map
    (
    clk                 => OSC_FPGA,
    reset               => RESET,
    data_out            => dataOut,
    data_in             => dataIn,
    SPI_SCK             => SYS_SPI_SCK,
    SPI_MOSI            => SYS_SPI_MOSI,
    SPI_MISO            => SYS_SPI_MISO,
    SPI_rd_wr_done_flag => SPI_done_flag
    );
	 
  --! Aggiorna lo stato ad ogni fronte del clk
  CLK_PROCESS : process (OSC_FPGA, reset)
  begin
    if (reset = '1') then
      state <= RESET_S;
    elsif (rising_edge(OSC_FPGA)) then
      state <= next_state;
    end if;
  end process CLK_PROCESS;

  --! Gestisce le transizioni di stato.
  --! <br>
  --! Come si può vedere dal diagramma della macchina a stati il sistema rimane in attesa di ricevere la stringa di riconoscimento da parte dell'SPI, questo serve per evitare possibili letture errate.
  --! Dopo di che i successivi dati vengono identificati come X, Y e Z. Il terzo dato è suddiviso in due parti in quanto è un vettore a 20bit mentre SPI lavora su blocchi da 2 Byte.
  --! I dati ricevuti vengono inviati alla macchina a stati del cordic e poi il sistema viene messo in attesa di completamento delle operazioni.
  --! Terminato l'algoritmo, come per la ricezione, viene generato un path di riconoscimento per l'HPS e successivamente vengono inviati i dati X, Y e Z calcolati. 
  FTM_PROCESS : process (state, SPI_done_flag)
  begin
    next_state <= state;
    case state is

      when RESET_S          =>
        dataIn     <= (others => '0');
        start      <= '0';
        next_state <= WAIT_PATH_START;
        

      when WAIT_PATH_START =>
		  dataIn     <= (others => '0');
        if (SPI_done_flag = '1') then
          if (dataOut = Start_path) then
            next_state <= READ_X;
          end if;
        end if;

      when READ_X =>
        if (SPI_done_flag = '1') then
          x_in       <= dataOut;
          next_state <= READ_Y;
        end if;

      when READ_Y =>
        if (SPI_done_flag = '1') then
          y_in       <= dataOut;
          next_state <= READ_Z_L;
        end if;
		  
		--16 bit meno significativi di z
      when READ_Z_L =>
        if (SPI_done_flag = '1') then
          z_in(DATA_W  - 1 downto 0) <= dataOut;        
          next_state                              <= READ_Z_H;
        end if;
		  
		  --4 bit più significativi di z
      when READ_Z_H =>
        if (SPI_done_flag = '1') then
          z_in(DATA_W + MARGIN - 1 downto DATA_W) <= dataOut(MARGIN-1 downto 0);
          next_state                              <= START_CORDIC;
        end if;

      when START_CORDIC =>
        start      <= '1';
        next_state <= CORDIC_DONE;

      when CORDIC_DONE =>
        start <= '0';
        if (done = '1') then
          next_state <= WRITE_PATH;
        end if;

      when WRITE_PATH =>
        dataIn <= Start_path;
        if (SPI_done_flag = '1') then

          next_state <= WRITE_X;
        end if;

      when WRITE_X =>
        dataIn <= x_out;
        if (SPI_done_flag = '1') then
          next_state <= WRITE_Y;
        end if;

      when WRITE_Y =>
        dataIn <= y_out;
        if (SPI_done_flag = '1') then
          next_state <= WRITE_Z;
        end if;

      when WRITE_Z =>
        dataIn <= z_out(DATA_W - 1 downto 0); -- i 16 bit meno significativi, a scopo di debug
        if (SPI_done_flag = '1') then

          next_state <= DONE_S;
        end if;

      when DONE_S =>
        next_state <= WAIT_PATH_START;
    end case;
  end process FTM_PROCESS;
end architecture;