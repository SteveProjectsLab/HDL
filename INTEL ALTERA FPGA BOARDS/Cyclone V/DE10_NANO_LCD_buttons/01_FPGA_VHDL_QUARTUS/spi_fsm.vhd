
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

entity spi_fsm is
generic(				
    DATA_W 		: integer	:= 16;					-- Lunghezza dati (in bit) inviati su SPI
    Nbit 		: integer	:= 4 					-- Serve per definire la lunghezza del contatore per il modulo SPI
    );
port(
    OSC_FPGA	: in std_logic; 					-- Clock FPGA
    reset 		: in std_logic; 					-- Pulsante per il reset
    SYS_SPI_MOSI: in std_logic;						-- Master Out Slave In
    SYS_SPI_SCK : in std_logic; 					-- CLOCK SPI
	spi_msg		: in std_logic_vector(15 downto 0);	-- messagio da mandare al master
	spi_rqst	: in std_logic;						-- richiesta di invio messaggio al master, attivo alto
	SYS_SPI_MISO: out std_logic						-- Master In Slave Out
);
end spi_fsm;

architecture Behavioral of spi_fsm is

signal data_in 	:	std_logic_vector(DATA_W-1 downto 0); --Ingresso parallelo modulo SPI 
signal data_out	:	std_logic_vector(DATA_W-1 downto 0); --Uscita parallela modulo SPI
signal leggi	:	std_logic; --ALTO quando sono arrivati 16 bit sulla linea MOSI
signal scrivi	: 	std_logic; --ALTO quando ha finito di inviare 16 bit sulla linea MISO

signal current_msg:std_logic_vector(DATA_W-1 downto 0); --Ingresso parallelo modulo SPI 

type state_type is (wait_rqst,send);			-- 2 variabili per la macchina stati

signal state	: state_type;
signal flag		: std_logic:='0';				-- flag che si alza se c'è una richiesta di invio dati al master

begin
	-- istanza e mapping del core spi
    spi: entity work.spi
		GENERIC MAP (
		DATA_W 	=> DATA_W, 	
		Nbit 	=> Nbit 	
		)
		PORT MAP (
		clk		=> OSC_FPGA,
        reset 	=> reset,
		data_in => data_in,
        data_out=> data_out,
        rd 		=> leggi,
        wr 		=> scrivi,
        SCK 	=> SYS_SPI_SCK,
        MOSI 	=> SYS_SPI_MOSI,
        MISO 	=> SYS_SPI_MISO
	);
	
process(OSC_FPGA,reset)							-- next_state_logic;
begin	
    if(reset='1') then							-- gestione del reset
        state <= wait_rqst; 
    elsif(rising_edge(OSC_FPGA)) then			-- sensibile al fronte del clock

		 if(spi_rqst='1')then					-- se c'è una richiesta di invio messaggio 
				flag<='1';						-- alza il flag
			end if;

        case state is 
		  
            when wait_rqst => 
					if(flag='1') then   		-- salva la richiesta di invio dati al master   
						current_msg<=spi_msg;	-- carica il messaggio da mandare
						flag<='0';				-- abbassa il flag
						state<=send;			-- cambia stato
					else
						current_msg<=x"F22F";	-- manda indietro i byte mandati dal master
						state<=send;			-- cambia stato
					end if;
        
            when send =>  						-- appena possibile, manda il dato su MISO
					if(scrivi='1') then   		-- se è abilitata la scrittura su MISO
						data_in <=current_msg;	-- manda il messaggio al core spi
						state<=wait_rqst;		-- cambia stato
					end if;
     end case;
    end if;
end process; 

end Behavioral;


