library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
 --Modulo SPI
entity spi is
    Generic(
        DATA_W : integer := 8;      -- larghezza dei dati in bit
        Nbit : integer := 3         -- log2(larghezza dei dati)
    );
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        data_in : in STD_LOGIC_VECTOR (DATA_W-1 downto 0);
        data_out : out STD_LOGIC_VECTOR (DATA_W-1 downto 0) := (others => '0');
        rd : out STD_LOGIC := '0';
        wr : out STD_LOGIC := '0';
        SCK : in STD_LOGIC;
        MOSI : in STD_LOGIC;
        MISO : out STD_LOGIC := '0'
    );
end spi;

architecture Behavioral of spi is
    constant all_ones : unsigned(Nbit-1 downto 0) := (others => '1');
    constant all_zeros : unsigned(Nbit-1 downto 0) := (others => '0');

    signal spi_value : std_logic_vector(DATA_W-1 downto 0) := (others => '0');
    signal spi_readvalue : std_logic_vector(DATA_W-1 downto 0) := (others => '0');
    signal sck_synchronizer : std_logic_vector(5 downto 0) := (others => '0');

    signal rdcnt : unsigned(Nbit-1 downto 0) := (others => '0');
    signal wrcnt : unsigned(Nbit-1 downto 0) := (others => '0');
    signal feed_me : std_logic := '0';
    signal read_me : std_logic := '0';
    signal flag: std_logic :='0';
    signal flag2: std_logic:='0';
begin
    process(clk, reset)
    
    begin
        if rising_edge(clk) then
            -- Sincronizza il clock SPI
            sck_synchronizer <= sck_synchronizer(4 downto 0) & SCK; --6 bit per riconoscere il fronte 
            
            if reset = '1' then
                -- Reset dei segnali
                spi_value <= (others => '0');
                spi_readvalue <= (others => '0');
                MISO <= '0'; 
                rdcnt <= (others => '0');
                wrcnt <= (others => '0');
                rd <= '0';
                wr <= '0';
                read_me <= '0';
                feed_me <= '0';
                data_out <= (others => '0');
            else
                -- SPI MODE 1: clock a riposo basso, attivo in salita, campionato in discesa
                if (sck_synchronizer(5 downto 4)="00" and sck_synchronizer(1 downto 0) ="11" and (flag='0' or flag2='0')) then
                    -- Campiona MISO in salita,per riconoscere il fronte di salita si prende una coppia di bit ,se  i  primi due bit che sono arrivati sono 00 e gli ultimi due sono 11  vuol dire che è fronte di salita
                    -- Poiché il MISO campiona sul fronte di salita e il MOSI su quello di discesa,allora è necessario che al prossimo fronte sia il MOSI a leggere il dato
                    -- Quindi, quando si entra in questo if ,al prossimo evento di clock deve entrare nell'IF del MOSI --> "flag" serve a questo
                    -- "Flag2" serve per entrare in almeno in uno dei due IF la prima volta. Non sapendo con certezza se il primo fronte è del MISO o del MOSI è messo in entrambi. Quando si entra in uno dei due va a 1 e non torna più a 0   
                    flag<='1'; --Imposto a 1 cosi al prossimo fronte è il turno del MISO
                    flag2<='1';
                    spi_value <= spi_value(DATA_W-2 downto 0) & '0';
                    MISO <= spi_value(DATA_W-1); --Viene inviato il bit sul MISO
                    wrcnt <= wrcnt + 1; --Serve per capire che si è inviato 16 bit
                    if wrcnt = all_ones then
                        wrcnt <= (others => '0');
                        feed_me <= '1';
                        rd <= '1'; --Vuol dire che sono stati ricevuti tutti i 16 bit ,flag "leggi" va a 1;
                    end if;
                elsif (sck_synchronizer(5 downto 4)="11" and sck_synchronizer(1 downto 0) ="00" and (flag='1' or flag2='0')) then
                    -- Campiona MOSI solo in discesa

                    flag<='0';  --Imposto a 0 cosi al prossimo fronte è il turno del MOSI
                    flag2<='1';
                    spi_readvalue(DATA_W-1 downto 1) <= spi_readvalue(DATA_W-2 downto 0); --Shift register per memorizzare tutti i bit che arrivano sul MOSI
                    spi_readvalue(0) <= MOSI;
                    rdcnt <= rdcnt + 1; --Quando arrivano 16 bit ,torna a 0
                    if rdcnt = all_ones then
                        rdcnt <= (others => '0');
                        read_me <= '1';
                        wr <= '1'; --Vuol dire che sono stati inviati tutti i 16 bit ,flag "scrivi" va a 1;
                    end if;
                end if;
                
                if feed_me = '1' then 
                    spi_value <= data_in;
                    rd <= '0';
                    feed_me <= '0';
                end if;
                
                if read_me = '1' then
                    data_out <= spi_readvalue;
                    wr <= '0';
                    read_me <= '0';
                end if;
            end if;
        end if;
    end process;
end Behavioral;
