--! Project : CORDIC
--! <br>              
--! Author : Mondini - Menegardo        
--! <br>                         
--! Date : AY2022/2023 
--! <br>                           
--! Company : UniBS               
--! <br>                            
--! File : cordic_core.vhd  

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

--! algoritmo Cordic
entity cordic_core is
  generic
  (
    DATA_W        : integer := 16; --! Dimensione in bit dei dati
    EXT_PRECISION : integer := 4; --! Bit agiuntivi per aumentare la precisione dell'angolo
    INDEX_W       : natural := 5 --! Dimensione in bit del contatore
    );

  port
  (

    clk   : in std_logic; --! Segnale di clock per la scansione temporale
    reset : in std_logic; --! Segnale di reset
    -- definizione dei segnali d'ingresso
    x_in       : in std_logic_vector(DATA_W - 1 downto 0); --! Valore di x(sin(theta))
    y_in       : in std_logic_vector(DATA_W - 1 downto 0); --! Valore di y(cos(theta))
    z_in       : in std_logic_vector(DATA_W + EXT_PRECISION - 1 downto 0); --! Angolo theta1
    index_core : in std_logic_vector(INDEX_W - 1 downto 0); --! Indice ciclo
    start_core : in std_logic; --! Flag di start dell'algoritmo
    sgn        : in std_logic; --! segno dell'operazione, se 0 = positivo se 1 = negativo 
    -- definizione dei segnali d'uscita
    x_out          : out std_logic_vector(DATA_W - 1 downto 0);--! Valore di x(sin(theta1))
    y_out          : out std_logic_vector(DATA_W - 1 downto 0);--! Valore di y(cos(theta1))
    z_out          : out std_logic_vector(DATA_W + EXT_PRECISION - 1 downto 0); --! Residuo dell'angolo
    done_core_flag : out std_logic --! Flag operazione completata

  );
end entity;

architecture core of cordic_core is
  type memory is array (natural range 0 to 16) of signed(19 downto 0);
  --! Look up table contenente, in binario, i valori degli angoli necessari all'algoritmo
  constant LUT : memory := (
  "00100000000000000000",
  "00010010111001000000",
  "00001001111110110011",
  "00000101000100010001",
  "00000010100010110000",
  "00000001010001011101",
  "00000000101000101111",
  "00000000010100010111",
  "00000000001010001011",
  "00000000000101000101",
  "00000000000010100010",
  "00000000000001010001",
  "00000000000000101000",
  "00000000000000010100",
  "00000000000000001010",
  "00000000000000000101",
  "00000000000000000010"
  );
  --! Stati dela FSM
  type STATE_TYPE is (IDLE, EXECUTE, DONE);
  signal state, next_state : STATE_TYPE;

begin

  --! Aggiorna lo stato ad ogni fronte del clk 
  CLK_PROCESS : process (clk, reset)
  begin
    if (reset = '1') then
      state <= IDLE;
    elsif (rising_edge(clk)) then
      state <= next_state;
    end if;
  end process CLK_PROCESS;

  --! Gestisce le transizioni di stato
  FSM_PROCESS : process (state, start_core)
  begin
    next_state <= state;
    case state is
      when IDLE =>
        done_core_flag <= '0';
        if (start_core = '1') then
          next_state <= EXECUTE;
        end if;

      when EXECUTE =>

        if (sgn = '0') then
          x_out <= std_logic_vector(signed(x_in) - signed(std_logic_vector(shift_right(signed(y_in), to_integer(unsigned(index_core))))));
          y_out <= std_logic_vector(signed(y_in) + signed(std_logic_vector(shift_right(signed(x_in), to_integer(unsigned(index_core))))));
          z_out <= std_logic_vector(signed(z_in) - LUT(to_integer(unsigned(index_core))));
        else
          x_out <= std_logic_vector(signed(x_in) + signed(std_logic_vector(shift_right(signed(y_in), to_integer(unsigned(index_core))))));
          y_out <= std_logic_vector(signed(y_in) - signed(std_logic_vector(shift_right(signed(x_in), to_integer(unsigned(index_core))))));
          z_out <= std_logic_vector(signed(z_in) + LUT(to_integer(unsigned(index_core))));
        end if;
        next_state <= DONE;
      when DONE =>
        done_core_flag <= '1';
        next_state     <= IDLE;

      when others =>
        next_state <= IDLE;
        assert false report "illegal state FSM" severity warning;

    end case;

  end process FSM_PROCESS;

end architecture;