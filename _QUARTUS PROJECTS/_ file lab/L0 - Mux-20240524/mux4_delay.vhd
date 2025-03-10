-------------------------------------------------
--! Project : Mux4                             
--! <br>               
--! Author : Emiliano Sisinni                  
--! <br>               
--! Date : AY2023/2024                         
--! <br>               
--! Company : UniBS                            
--! <br>               
--! File : mux4_delay.vhd                      
-------------------------------------------------

--=============================
-- Entity
--=============================
library ieee;
use ieee.std_logic_1164.all;
entity mux4 is
   port(
      a,b,c,d: in std_logic_vector(7 downto 0); --! input signals
      s: in std_logic_vector(1 downto 0); --! selection lines
      x: out std_logic_vector(7 downto 0) --! MUX output
   );
end mux4;

--==========================================
-- Architectures: conditional assignment
--==========================================
architecture cond_arch of mux4 is
begin
   x <= a after 1 ns when (s="00") else
        b after 1 ns when (s="01") else
        c after 1 ns when (s="10") else
        d after 1 ns;
end cond_arch;

--==========================================
-- Architectures: selected assignment
--==========================================
architecture sel_arch of mux4 is
begin
   with s select
     x <= a after 2 ns when "00",
          b after 2 ns when "01",
          c after 2 ns when "10",
          d after 2 ns when others;
end sel_arch;

--==========================================
-- Architectures: process if
--==========================================
architecture if_arch of mux4 is
begin
   process(a,b,c,d,s)
   begin
      if (s="00") then
         x <= a after 3 ns;
      elsif (s="01")then
         x <= b after 3 ns;
      elsif (s="10")then
         x <= c after 3 ns;
      else
         x <= d after 3 ns;
      end if;
   end process;
end if_arch;

--==========================================
-- Architectures: process case
--==========================================
architecture case_arch of mux4 is
begin
   process(a,b,c,d,s)
   begin
      case s is
         when "00" =>
            x <= a after 4 ns;
         when "01" =>
            x <= b after 4 ns;
         when "10" =>
            x <= c after 4 ns;
         when others =>
            x <= d after 4 ns;
      end case;
   end process;
end case_arch;
