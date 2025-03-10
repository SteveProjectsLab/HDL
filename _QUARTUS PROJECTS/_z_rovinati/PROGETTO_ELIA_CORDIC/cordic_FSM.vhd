--! Project : CORDIC
--! <br>              
--! Author : Mondini - Menegardo        
--! <br>                         
--! Date : AY2022/2023 
--! <br>                           
--! Company : UniBS               
--! <br>                            
--! File : cordic_FSM.vhd  

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

--! Macchina a stati per il controllo dell'algoritmo cordic
entity cordic_FSM is
  generic
  (
    INPUT_BIT     : natural := 16; --! Dimensione in bit dei dati
    EXT_PRECISION : natural := 4; --! Bit agiuntivi per aumentare la precisione dell'angolo
    INDEX_BIT     : natural := 5 --! Dimensione in bit del contatore

  );
  port
  (
    clk       : in std_logic; --! Segnale di clock per la scansione temporale
    reset     : in std_logic; --! Segnale di reset
    start     : in std_logic; --! Flag di start dell'algoritmo
    x_input   : in std_logic_vector(INPUT_BIT - 1 downto 0); --! Valore di x(sin(theta))
    y_input   : in std_logic_vector(INPUT_BIT - 1 downto 0); --! Valore di y(cos(theta))
    z_input   : in std_logic_vector(INPUT_BIT + EXT_PRECISION - 1 downto 0); --! Angolo theta1
    x_output  : out std_logic_vector(INPUT_BIT - 1 downto 0); --! Valore di x(sin(theta1))
    y_output  : out std_logic_vector(INPUT_BIT - 1 downto 0); --! Valore di y(cos(theta1))
    z_output  : out std_logic_vector(INPUT_BIT + EXT_PRECISION - 1 downto 0); --! Residuo dell'angolo
    done_flag : out std_logic --! Flag operazione completata
  );
end entity;

architecture FSM of cordic_FSM is
  signal x_in_c  : std_logic_vector(INPUT_BIT - 1 downto 0); --!Valore di x dato in ingresso all'algoritmo cordic per l'elaborazione
  signal y_in_c  : std_logic_vector(INPUT_BIT - 1 downto 0); --!Valore di y dato in ingresso all'algoritmo cordic per l'elaborazione
  signal z_in_c  : std_logic_vector(INPUT_BIT + EXT_PRECISION - 1 downto 0); --!Valore dell'angolo dato in ingresso all'algoritmo cordic per l'elaborazione
  signal x_out_c : std_logic_vector(INPUT_BIT - 1 downto 0); --!Valore di x calcolato dall'algoritmo cordic
  signal y_out_c : std_logic_vector(INPUT_BIT - 1 downto 0); --!Valore di y calcolato dall'algoritmo cordic
  signal z_out_c : std_logic_vector(INPUT_BIT + EXT_PRECISION - 1 downto 0); --!Residuo dell'angolo calcolato dall'algoritmo cordic 

  signal index          : std_logic_vector(INDEX_BIT - 1 downto 0) := (others => '0'); --! Indice ciclo
  signal sgn            : std_logic                                := '0'; --! Segno dell'operazione, se 0 = positivo se 1 = negativo 
  signal start_core     : std_logic                                := '0'; --! Flag di start dell'algoritmo
  signal done_core_flag : std_logic                                := '0'; --! Flag operazione completata

  signal index_loop : unsigned(INDEX_BIT - 1 downto 0) := (others => '0'); --! Indice ciclo
  --! Stati dela FSM
  type STATE_TYPE is (IDLE, LOAD_DATA, START_STATE, WAIT_CORE_DONE, ADD_INDEX_LOOP, CHECK_R, DONE);
  signal state, next_state : STATE_TYPE;

begin
  --! Iniziazlizzazione algoritmo cordic con mapping dei segnali
  core : entity work.cordic_core port map
    (
    clk            => clk,
    reset          => reset,
    x_in           => x_in_c,
    y_in           => y_in_c,
    z_in           => z_in_c,
    index_core     => index,
    start_core     => start_core,
    sgn            => sgn,
    x_out          => x_out_c,
    y_out          => y_out_c,
    z_out          => z_out_c,
    done_core_flag => done_core_flag
    );

  --! Aggiorna lo stato ad ogni fronte del clk 
  CLK_PROCESS : process (clk, reset)
  begin
    if (reset = '1') then
      state <= IDLE;
    elsif (rising_edge(clk)) then
      state <= next_state;
    end if;
  end process CLK_PROCESS;

  --! Aggiorna l'indice del numero di cicli del cordic_core
  INDEX_PROCESS : process (clk, reset)
  begin
    if (reset = '1') then
      index_loop <= (others => '0');
    elsif (rising_edge(clk)) then
      if (state = CHECK_R and next_state = LOAD_DATA) then
        index_loop <= index_loop + 1;
      end if;
      if (state = DONE and next_state = IDLE) then

        index_loop <= (others => '0');
      end if;
    end if;
  end process INDEX_PROCESS;

  --! Gestisce le transizioni di stato
  --! <br>   
  --! Come si può vedere dal diagramam della macchina a stati il sistema rimane in attesa fino a che non riceve il segnale di start.
  --! Dopodiche entra in un loop per un numero di giri pari a INPUT__BIT.
  --! Al primo giro i valori posti in ingresso al'algoritmo cordi sono x_in y_in e Z_in provenienti dall'SPI, mentre per i cicli successivi
  --! in ingresso viene riportata l'uscita dal ciclo precedente. Al termine delle iterazioni il flag Done viene posto ad 1. 
  FSM_PROCESS : process (state, start, done_core_flag)
  begin

    next_state <= state;

    case state is

        --IDLE
      when IDLE =>
        sgn        <= '0';
        start_core <= '0';
        done_flag  <= '0';
        if (start = '1') then
          next_state <= LOAD_DATA;
        end if;

        --LOAD_DATA
      when LOAD_DATA =>
        if (index_loop = "00000") then
          x_in_c <= x_input;
          y_in_c <= y_input;
          z_in_c <= z_input;
          sgn    <= z_input(z_input'left);
        else
          x_in_c <= x_out_c;
          y_in_c <= y_out_c;
          z_in_c <= z_out_c;
          sgn    <= z_out_c(z_out_c'left);
        end if;
        index      <= std_logic_vector(index_loop);
        next_state <= START_STATE;

        --CORDIC
      when START_STATE =>
        start_core <= '1';
        next_state <= WAIT_CORE_DONE;

        --CORDIC
      when WAIT_CORE_DONE =>
        start_core <= '0';
        if (done_core_flag = '1') then
          next_state <= CHECK_R;
        end if;

        --CHECK_R
      when CHECK_R =>
        if (index_loop = "01111") then
          next_state <= DONE;
        else
          next_state <= LOAD_DATA;
        end if;

        --DONE
      when DONE =>
        x_output   <= x_out_c;
        y_output   <= y_out_c;
        z_output   <= z_out_c;
        done_flag  <= '1';
        next_state <= IDLE;

      when others =>
        next_state <= IDLE;
        assert false report "illegal state FSM" severity warning;
    end case;
  end process FSM_PROCESS;
end architecture;