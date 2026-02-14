-- debounce.vhd (versione one-shot con lockout - LA SOLUZIONE CORRETTA)
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debounce is
    generic (
        CLK_FREQ          : integer := 50_000_000; -- Frequenza del clock di sistema
        DEBOUNCE_TIME_MS  : integer := 20;         -- Tempo per filtrare il rumore (standard)
        LOCKOUT_TIME_MS   : integer := 200         -- Tempo di blocco dopo una pressione
    );
    port (
        i_clk        : in  std_logic;
        i_rst        : in  std_logic;
        i_button     : in  std_logic; -- Ingresso dal pulsante (attivo basso)
        o_pulse      : out std_logic  -- Uscita: un singolo impulso pulito
    );
end entity debounce;

architecture rtl of debounce is
    -- Calcolo dei limiti per i contatori
    constant DEBOUNCE_LIMIT : integer := (CLK_FREQ / 1000) * DEBOUNCE_TIME_MS;
    constant LOCKOUT_LIMIT  : integer := (CLK_FREQ / 1000) * LOCKOUT_TIME_MS;
    
    -- Macchina a stati per il ciclo completo
    type state_t is (IDLE, DEBOUNCING, LOCKOUT);
    signal s_state : state_t := IDLE;
    
    signal s_counter : integer range 0 to LOCKOUT_LIMIT := 0;

begin

    process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            s_state   <= IDLE;
            s_counter <= 0;
            o_pulse   <= '0';
        elsif rising_edge(i_clk) then
            
            -- L'uscita è alta solo per un ciclo di clock per default
            o_pulse <= '0';
            
            case s_state is
                
                -- 1. Stato di attesa: aspetta che il pulsante venga premuto
                when IDLE =>
                    if i_button = '0' then
                        s_state <= DEBOUNCING;
                        s_counter <= 0;
                    end if;
                    
                -- 2. Stato di debounce: conferma che la pressione è reale
                when DEBOUNCING =>
                    if i_button = '1' then -- Era un falso allarme (rumore), torna in attesa
                        s_state <= IDLE;
                    elsif s_counter = DEBOUNCE_LIMIT then -- Pressione confermata!
                        o_pulse <= '1'; -- GENERA L'IMPULSO DI USCITA!
                        s_state <= LOCKOUT;
                        s_counter <= 0;
                    else
                        s_counter <= s_counter + 1;
                    end if;
                        
                -- 3. Stato di blocco: ignora il pulsante per 200ms
                when LOCKOUT =>
                    if s_counter = LOCKOUT_LIMIT then -- Timer di blocco scaduto
                        s_state <= IDLE; -- Torna pronto per la prossima pressione
                    else
                        s_counter <= s_counter + 1;
                    end if;
                    
            end case;
        end if;
    end process;

end architecture rtl;