--! Project : Asynchronous FIFO    
--! <br>               
--! Author : Emiliano Sisinni                   
--! <br>               
--! Date : AY2023/2024                          
--! <br>               
--! Company : UniBS                             
--! <br>                      
--! File : design.vhd 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity async_fifo is
   generic(
       B: natural :=8;
   	   DEPTH: natural:=4);
   port(
      clkw: in std_logic;
      resetw: in std_logic;
      wr: in std_logic;
      full: buffer std_logic;
      dataw: in std_logic_vector (B-1 downto 0);
      clkr: in std_logic;
      resetr: in std_logic;
      rd: in std_logic;
      empty: out std_logic;
      datar: out std_logic_vector (B-1 downto 0)
   );
end async_fifo ;

architecture str_arch of async_fifo is
   signal r_ptr_in: std_logic_vector(DEPTH downto 0);
   signal r_ptr_out: std_logic_vector(DEPTH downto 0);
   signal w_ptr_in: std_logic_vector(DEPTH downto 0);
   signal w_ptr_out: std_logic_vector(DEPTH downto 0);
   signal w_addr: std_logic_vector(DEPTH-1 downto 0);
   signal r_addr: std_logic_vector(DEPTH-1 downto 0);
   
   -- Dual port RAM
   type RAM is array (integer range <>)of std_logic_vector (B-1 downto 0);
   signal Mem : RAM (2**DEPTH-1 downto 0);

   -- component declarations

begin
   -- component instances

               
	-- dual port RAM
    dual_port_ram : process(clkW)
    begin
        if rising_edge(clkw) then
            if wr = '1' and not full = '1' then
                Mem(to_integer(unsigned(w_addr))) <= dataw;
            end if;
      end if;
    end process;
    datar <= Mem(to_integer(unsigned(r_addr)));
                
end str_arch;