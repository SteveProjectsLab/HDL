library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;
use work.pacchetto_coefficienti.all; 
 

--Per inviare i coefficienti
entity iir_init is
   
    port(
    OSC_FPGA     : in  std_logic;      -- Clock input
    reset        : in  std_logic;      -- Reset input, active high
    -- Filter Data:
    DatxDI        : in  signed(7 downto 0);  -- Input data
    StrbxSI       : in  std_logic;      -- Input strobe
    -- Output data - Only valid with StrbxSO!
    DatxDO        : out signed(15 downto 0);
    -- Output strobe - Indicates validity of DatxDO                                 
    StrbxSO       : out std_logic
    
    );
   end iir_init;
    architecture Behavioral of iir_init is
        --DEFINISCO COSTANTI E SIGNAL FILTRO
      
    constant NUM_SEC : integer := 8; --Il filtro è del 16° ordine
    constant GAIN_INPUT : integer := 16;   
    constant W_SECT_DAT : integer := 16;
    constant W_COEF : integer := 18;
    constant W_FRAC : integer := 16;
    constant FINALGAIN_EN : boolean := true;
    constant SOSGAIN_EN : boolean := false;
    constant USE_PIPELINE_CORE : boolean := false;
    constant W_DAT_INTF : integer := 20;
    constant W_DAT_INPUT : integer := 8;						
    constant W_DAT_OUTPUT : integer:= 16 ;

    signal SectAddrxDI : std_logic_vector(W_DAT_INTF - 1 downto 0) :=(others =>'0'); --Indirizzo del la sezione a cui si deve inviare il coefficiente
    signal CoeffAddrxDI : std_logic_vector(W_DAT_INTF - 1 downto 0) := (others => '0'); --Indirizzo del coefficiente tra i 6 disponibili
    signal CoeffDatxDI : std_logic_vector(W_DAT_INTF - 1 downto 0) := (others =>'0'); --Valore Coefficiente
    signal CoeffValidxSI : std_logic :='0'; --Validità coefficiente
    signal finish_C : std_logic :='0'; --Serve per capire se sono stati inviati tutti i coefficienti
    signal finish_G: std_logic:='0';  --Serve per capure se l'ultimo coefficiente del guadagno è stato inviato
    begin
    Filtro_IIR : entity work.sos_cascaded_top
    generic map(
      NUM_SEC => NUM_SEC,
      W_DAT_INPUT => W_DAT_INPUT,
      GAIN_INPUT => GAIN_INPUT,
      W_SECT_DAT => W_SECT_DAT,
      W_COEF => W_COEF,
      W_FRAC => W_FRAC,
      SOSGAIN_EN => SOSGAIN_EN,
      FINALGAIN_EN => FINALGAIN_EN,
      W_DAT_OUTPUT => W_DAT_OUTPUT,
      W_DAT_INTF => W_DAT_INTF,
      USE_PIPELINE_CORE => USE_PIPELINE_CORE)
    port map(
      ClkxCI => OSC_FPGA,
      RstxRI => reset,
      DatxDI => DatxDI,
      StrbxSI => StrbxSI,
      DatxDO => DatxDO,
      StrbxSO => StrbxSO,
      SectAddrxDI => SectAddrxDI,
      CoeffAddrxDI => CoeffAddrxDI,
      CoeffDatxDI => CoeffDatxDI,
      CoeffValidxSI => CoeffValidxSI
      );

    
   --Inizializzo il filtro
process(OSC_FPGA)
    --Variabili di appoggio per scegliere la sezione,il numero del coefficiente,contatore e il valore coefficiente
    variable SectIndex : integer range 0 to NUM_SEC - 1 := 0; 
    variable CoeffIndex : integer range 0 to 5 := 0;
    variable CoeffWriteCount : integer:= 0; --Serve per contare per identificare che coefficiente inviare
    variable filedata : signed(W_DAT_INTF-1 downto 0) := (others =>'0');  
begin 
    if rising_edge(OSC_FPGA) then
        if finish_C = '0' then --Se è 0 vuol dire che non sono stati inviati tutti i coefficienti
            if CoeffWriteCount < NUM_SEC * 6 then  --Ci sono 8 sezioni,e 6 coefficieni quindi sono da inviare 48 coefficienti
                -- Scrivi i coefficienti per ogni sezione
                SectIndex := CoeffWriteCount / 6; --Il contatore viene incrementato di 1 ogni colpo di clock ,quindi vuol dire SectIndex rimarrà a 0 per 6 cicli di clock,poi 1 per altri 6 cicli di clock e cosi via
                CoeffIndex := CoeffWriteCount mod 6; --Scelta la sezione,si deve scegliere il tipo di coefficiente,si utilizza il resto cioè se il contatore (ad esempio) è a 3,vuol dire che invio il coefficiente numero 3

                -- Seleziona il coefficiente corretto
                case CoeffIndex is
                    when 0 =>
                        filedata := b0(SectIndex); --Nel pacchetto coefficienti,tutti i coefficienti sono messi in ordine di sezione
                    when 1 =>
                        filedata := b1(SectIndex);
                    when 2 =>
                        filedata := b2(SectIndex);
                    when 3 =>
                        filedata := a1(SectIndex);
                    when 4 =>
                        filedata := a2(SectIndex);
                    when 5 =>
                        filedata := g(SectIndex);
                    when others =>
                        filedata := (others => '0');
                end case;

                -- Assegna i valori ai segnali
                SectAddrxDI   <= std_logic_vector(to_unsigned(SectIndex, W_DAT_INTF));
                CoeffAddrxDI  <= std_logic_vector(to_unsigned(CoeffIndex, W_DAT_INTF));
                CoeffDatxDI   <= std_logic_vector(filedata);
                CoeffValidxSI <= '1'; --Per assegnare il coefficiente si deve mettere a 1 il coefficiente di validità

                -- Incrementa il contatore di scrittura dei coefficienti
               CoeffWriteCount := CoeffWriteCount + 1;

            else
                --Completamento scrittura dei coefficienti
                finish_C <= '1';
               
            end if;
        elsif finish_G = '0' then
            -- Scrivi il coefficiente di guadagno finale
            filedata := fg(0); --final gain
            SectAddrxDI   <= std_logic_vector(to_unsigned(NUM_SEC, W_DAT_INTF));
            CoeffAddrxDI  <= std_logic_vector(to_unsigned(6, W_DAT_INTF));
            CoeffDatxDI   <= std_logic_vector(filedata);
            CoeffValidxSI <= '1';

            -- Imposta il flag di completamento
            finish_G <= '1';
            
        end if;
    end if;

    if finish_G = '1' and rising_edge(OSC_FPGA) then
        CoeffValidxSI <= '0'; -- I prossimi coefficienti non sono validi
    end if;
end process;

end Behavioral;






  




  


