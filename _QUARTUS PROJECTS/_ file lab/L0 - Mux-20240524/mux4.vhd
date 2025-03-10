-------------------------------------------------
--! Project : Mux4                             
--! <br>               
--! Author : Emiliano Sisinni                  
--! <br>               
--! Date : AY2023/2024                         
--! <br>               
--! Company : UniBS                            
--! <br>               
--! File : mux4.vhd                            
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
   x <= a when (s="00") else
        b when (s="01") else
        c when (s="10") else
        d;
end cond_arch;

--==========================================
-- Architectures: selected assignment
--==========================================
architecture sel_arch of mux4 is
begin
   with s select
     x <= a when "00",
          b when "01",
          c when "10",
          d when others;
end sel_arch;

--==========================================
-- Architectures: process if
--==========================================
architecture if_arch of mux4 is
begin
   process(a,b,c,d,s)
   begin
      if (s="00") then
         x <= a;
      elsif (s="01")then
         x <= b;
      elsif (s="10")then
         x <= c;
      else
         x <= d;
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
            x <= a;
         when "01" =>
             x <= b;
         when "10" =>
             x <= c;
         when others =>
             x <= d;
      end case;
   end process;
end case_arch;
