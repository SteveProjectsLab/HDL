
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;
--use work.pacchetto_coefficienti.all; 
entity spi_fsm is
generic(				-- data width in bits
    DATA_W 	: integer	:= 16;				-- Lunghezza dati inviati su SPI
    Nbit 	: integer	:= 4 	            -- Serve per definire la lunghezza del contatore per il modulo SPI
    );
port(
    OSC_FPGA : in std_logic; --Clock FPGA
    reset : in std_logic; --Pulsante per il reset
    SYS_SPI_MOSI : in std_logic;  --Master OUT Slave IN
    SYS_SPI_SCK : in std_logic;   --CLOCK SPI
    SYS_SPI_MISO: out std_logic;  --Master IN Slave OUT
    led0 : out std_logic; --LED utilizzato per sapere se la scheda DE10-NANO sta funzionando
	 spi_msg: in		std_logic_vector(15 downto 0) ;
	 spi_rqst: in std_logic
);
end spi_fsm;

architecture Behavioral of spi_fsm is

signal data_in:std_logic_vector(DATA_W-1 downto 0); --Ingresso parallelo modulo SPI 
signal data_out:std_logic_vector(DATA_W-1 downto 0); --Uscita parallela modulo SPI
signal leggi: std_logic; --ALTO quando sono arrivati 16 bit sulla linea MOSI
signal scrivi: std_logic; --ALTO quando ha finito di inviare 16 bit sulla linea MISO

signal current_msg:std_logic_vector(DATA_W-1 downto 0); --Ingresso parallelo modulo SPI 
--VARIABILI PER LA MACCHINA A STATI
type state_type is (wait_rqst,send);--send_data,send_back);

signal state: state_type;
signal flag: std_logic:='0';

begin
	
    spi: entity work.spi
		GENERIC MAP (
		DATA_W 	=> DATA_W, 	
		Nbit 	=> Nbit 	
		)
		PORT MAP (
		clk => OSC_FPGA,
        reset => reset,
		  data_in => data_in,
        data_out => data_out,
        rd => leggi,
        wr => scrivi,
        SCK => SYS_SPI_SCK,
        MOSI => SYS_SPI_MOSI,
        MISO => SYS_SPI_MISO
	);

	
	
--	next_state_logic: process(OSC_FPGA,reset) --Sensibile ai fronti di clock e reset
--begin	
--    if(reset='1') then
--        state <= wait_rqst; --Se il reset è a 1 allora si resetta il filtro
--    elsif(rising_edge(OSC_FPGA)) then
--	 
--		if(spi_rqst='1')then
--			flag<='1';
--		end if;
--    --Se è presente un fronte di clock si vede lo stato della macchina
--        case state is 
--            when wait_rqst => 
--            if(data_out = x"F22F") then
--					if(flag='1')then
--						state <= send_data; --Se si riconosce la sequenza allora vuol dire che stanno arrivando gli impulsi 
--						flag<='0';
--					else
--						state <= send_back;
--						flag<='0';
--					end if;
--            end if;
--            
--            when send_data => 
--            if(leggi='1' and data_out /= x"F22F") then --Se "leggi" è ALTO vuol dire che sta arrivando un nuovo dato
--                state <= wait_rqst;  --Serve esplicitare che data out sia diverso dalla sequenza di riconoscimento perchè leggi può rimanere a 1 anche più di ciclo di clock
--            end if;
--            
--				when send_back =>
--				if(leggi='1' and data_out /= x"F22F") then 
--                state <= wait_rqst;  
--            end if;
--     end case;
--    end if;
--
--end process next_state_logic;
--
--
--output_logic: process(state,SYS_SPI_SCK) --Mealy,output sensibile al clock
--begin
--
--    case state is
--			when wait_rqst =>
--        --In verify inizialmente si inizializzano le variabili
--				if(spi_rqst='1') then   -- save the data-send request   
--					current_msg<=spi_msg;
--				end if;
--			led0<='0';				
--				
--			when send_data =>
--        --Se scrivi a 1 vuol dire che il canale MISO è libero e si può inviare il dato sul MISO
--           if(scrivi='1') then      
--                data_in <= current_msg; 
--           end if;
--			led0<='1';
--			
--			when send_back =>
--				if(scrivi='1') then      
--						 data_in <= x"F22F"; 
--				end if;
--end case; 
--end process output_logic;
--
--
--end Behavioral;
	
	

	
	
	
	
	
process(OSC_FPGA,reset)
begin	
    if(reset='1') then
        state <= wait_rqst; 
    elsif(rising_edge(OSC_FPGA)) then
    --Se è presente un fronte di clock si vede lo stato della macchina	 
	 
		 if(spi_rqst='1')then
				flag<='1';
			end if;

        case state is 

		  
            when wait_rqst => 
					
					if(flag='1') then   -- save the data-send request   
						current_msg<=spi_msg;
						flag<='0';	
						state<=send;
					else
						current_msg<=x"F22F";
						state<=send;
					end if;
				
				led0<='1';
--            
            when send =>  -- as soon as possible, send data on MISO
					if(scrivi='1') then      

						data_in <=current_msg;--x"C0C0";--x"CCCC"; 	
								
						state<=wait_rqst;
					end if;
				led0<='0';
					
					
     end case;
    end if;

end process; --next_state_logic;

end Behavioral;


