
library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;
--use work.pacchetto_coefficienti.all; 
entity basic_iir is
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
    LED : out std_logic_vector(1 downto 0) := (others => '0') --LED utilizzato per sapere se la scheda DE10-NANO sta funzionando
	-- spi_msg: 
);
end basic_iir;

architecture Behavioral of basic_iir is
	--SIGNAL FILTRO
constant W_DAT_INPUT : integer := 8;	--Lunghezza dati ingresso al filtro					
constant W_DAT_OUTPUT : integer:= 16 ;  --Lunghezza dati in uscita dal filtro
signal DatxDI : signed(W_DAT_INPUT - 1 downto 0); --Ingresso filtro
signal DatxDO : signed(W_DAT_OUTPUT - 1 downto 0); --Uscita filtro
signal StrbxSI : std_logic :='0'; --Da inizializzare a 0 lo strobe di attivazione
signal StrbxSO : std_logic; --Strobe di uscita del filtro ,va ALTO  quando il filtro ha finitro di elaborare
--signal reset : std_logic:='0'; --Serve inizializzare a zero il filtro quando SW=1
signal data_in:std_logic_vector(DATA_W-1 downto 0); --Ingresso parallelo modulo SPI 
signal data_out:std_logic_vector(DATA_W-1 downto 0); --Uscita parallela modulo SPI
signal leggi: std_logic; --ALTO quando sono arrivati 16 bit sulla linea MOSI
signal scrivi: std_logic; --ALTO quando ha finito di inviare 16 bit sulla linea MISO

--VARIABILI PER LA MACCHINA A STATI
type state_type is (verify,waiting,elaboration,set_strobe);
signal state: state_type;


begin
	
--blink_hb : entity work.blink_heartbeat port map(CLK => OSC_FPGA, LED => LED(0)); --Lampeggia quando viene caricato il programma

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
--    Filtro_IIR : entity work.iir_init --Modulo dove viene inizializzato il filtro con i coefficienti
--    port map(
--      OSC_FPGA => OSC_FPGA,
--      reset => reset,
--      DatxDI => DatxDI,
--      StrbxSI => StrbxSI,
--      DatxDO => DatxDO,
--      StrbxSO => StrbxSO
--      );


next_state_logic: process(OSC_FPGA,reset) --Sensibile ai fronti di clock e reset
begin	
    if(reset='1') then
        state <= verify; --Se il reset è a 1 allora si resetta il filtro
    elsif(rising_edge(OSC_FPGA)) then
    --Se è presente un fronte di clock si vede lo stato della macchina
        case state is 
            when verify => 
            if(data_out = x"0F0F") then
                state <= waiting; --Se si riconosce la sequenza allora vuol dire che stanno arrivando gli impulsi 
            else
                state <= verify;
            end if;
            
            when waiting => 
            
				
				
				
				--Se "leggi" è ALTO vuol dire che sta arrivando un nuovo dato
				if(leggi='1' and data_out /= x"0F0F") then 
                
					 state <= verify;  --Serve esplicitare che data out sia diverso dalla sequenza di riconoscimento perchè leggi può rimanere a 1 anche più di ciclo di clock
            else
                state <= waiting;
            end if;
				
			
            when others =>
				
--            when elaboration =>
--            if(StrbxSI='1') then  --Questo if serve per avere lo strobe d'ingresso a 1 solo per un ciclo di clock(necessario per il corretto funzionamento)
--                state <= set_strobe;
--            else
--                state <= elaboration;
--            end if;

--            when set_strobe =>
--            if(StrbxSO ='1') then --Quando lo strobe di uscita va a 1 vuol dire che l'elaborazione è finita,si può inviare il dato sul MISO
--                state <= waiting;
--            else
--                state <= set_strobe;
--            end if;
     end case;
    end if;

end process next_state_logic;


output_logic: process(stat when elaboration =>
            --StrbxSI<='1';--Imposto a 1 lo strobe per potere inviare l'impulso al filtro
            --DatxDI <= signed(data_out(7 downto 0)); --Assegno l'uscita parallela del modulo SPI all'ingresso del filtro
             --SPI è a 16 bit ,e l'ingresso del filtro è a 8 bit.I 8 bit più significativi sono 0
             
e,SYS_SPI_SCK) --Mealy,output sensibile al clock
begin

    case state is
        when verify =>
        --In verify inizialmente si inizializzano le variabili
        --StrbxSI <='0';
			--DatxDI<=;
				LED(0)<='0';
				
        when waiting =>
        --Se scrivi a 1 vuol dire che il canale MISO è libero e si può inviare il dato sul MISO (scrivere all'HPS)
           if(scrivi='1') then      
                data_in <= x"C0C0";--x"CCCC"; 
					 LED(0)<='1';
           end if;
       	
               when set_strobe =>
            -- StrbxSI <='0'; --Dopo un ciclo di clock lo strobe deve tornare a 0
end case; 
end process output_logic;
--
--
end Behavioral;