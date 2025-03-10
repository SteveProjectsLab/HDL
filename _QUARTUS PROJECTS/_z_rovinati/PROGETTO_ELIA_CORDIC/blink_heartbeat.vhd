--! Project : CORDIC
--! <br>              
--! Author : Mondini - Menegardo        
--! <br>                         
--! Date : AY2022/2023 
--! <br>                           
--! Company : UniBS               
--! <br>                            
--! File : blink_heartbeat.vhd  

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

--! Gestisce il lampeggio del LED(0) con periodo pari a 1342.2 ms
entity blink_heartbeat is
  port
  (
    clk   : in std_logic; --! Segnale di clock per la scansione temporale
    LED_B : out std_logic --! Segnale di reset
  );
end blink_heartbeat;

architecture Behavioral of blink_heartbeat is
  -- Led counter
  signal counter_output : unsigned(24 downto 0) := (others => '0'); --! Indice contatore

begin

  --! Process che gestisce l'incremento del contatore ad ogni fronte di salita del clock.
  --! Il contatore non è necessario resettarlo in quanto una volta raggiujnto l'overflow viene riposrtato a 0 in automatico.
  counter:process (clk)
  begin
    if (rising_edge(clk)) then
      counter_output <= counter_output + 1;
    end if;
  end process counter;

  LED_B <= std_logic(counter_output(24));

end Behavioral;