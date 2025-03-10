-------------------------------------------------
--! Project : Mux4                            
--! <br>               
--! Author : Emiliano Sisinni                  
--! <br>               
--! Date : AY2023/2024                        
--! <br>               
--! Company : UniBS                            
--! File : mux4_tb.vhd                         
-------------------------------------------------

--=============================
-- Testbench
--=============================
library IEEE;
use IEEE.std_logic_1164.all;

entity mux4_tb is
end mux4_tb;

architecture mux4_tb_arch of mux4_tb is
signal a,b,c,d: std_logic_vector(7 downto 0); --! input signals (8bit bus)
signal s: std_logic_vector(1 downto 0); --! MUX selection lines
signal x_cond, x_sel, x_if, x_case: std_logic_vector(7 downto 0); --! MUX output (for different implementations)             

component mux4 port (
      a,b,c,d: in std_logic_vector(7 downto 0);
      s: in std_logic_vector(1 downto 0);
      x: out std_logic_vector(7 downto 0));  
end component;

for dut1 : mux4
   use entity work.mux4(cond_arch);
for dut2 : mux4
   use entity work.mux4(sel_arch);
for dut3 : mux4
   use entity work.mux4(if_arch);
for dut4 : mux4
   use entity work.mux4(case_arch);

begin
   dut1: mux4 port map (
      a => a,
      b => b,
      c => c,
      d => d,
      s => s,
      x => x_cond);

   dut2: mux4 port map (
      a => a,
      b => b,
      c => c,
      d => d,
      s => s,
      x => x_sel);

   dut3: mux4 port map (
      a => a,
      b => b,
      c => c,
      d => d,
      s => s,
      x => x_if);
               
   dut4: mux4 port map (
      a => a,
      b => b,
      c => c,
      d => d,
      s => s,
      x => x_case);

   stimuli: process
   variable err_cnt: integer :=0;
   begin
      a <= "00000001";
      b <= "00000010";    
      c <= "00000100";
      d <= "00001000";
      s <= "XX";    

      -- case select equal "00"
      wait for 10 ns;
      s <= "00";	  
      wait for 1 ns;
      assert ((x_cond = a) and (x_sel = a) and (x_if = a) and (x_case = a)) report "Error Case 1" severity error;
      if ( (x_cond /= a) and (x_sel /= a) and (x_if /= a) and (x_case /= a) ) then 
         err_cnt := err_cnt+1;
      end if;

      -- case select equal "01"
      wait for 10 ns;
      s <= "01";	  
      wait for 1 ns;
      assert ((x_cond = b) and (x_sel = b) and (x_if = b) and (x_case = b)) report "Error Case 2" severity error;
      if ( (x_cond /= b) and (x_sel /= b) and (x_if /= b) and (x_case /= b) ) then 
         err_cnt := err_cnt+1;
      end if;

      -- case select equal "10"
      wait for 10 ns;
      s <= "10";	  
      wait for 1 ns;
      assert ((x_cond = c) and (x_sel = c) and (x_if = c) and (x_case = c)) report "Error Case 3" severity error;
      if ( (x_cond /= c) and (x_sel /= c) and (x_if /= c) and (x_case /= c) ) then 
         err_cnt := err_cnt+1;
      end if;

      -- case select equal "11"
      wait for 10 ns;
      s <= "11";	  
      wait for 1 ns;
      assert ((x_cond = d) and (x_sel = d) and (x_if = d) and (x_case = d)) report "Error Case 14" severity error;
      if ( (x_cond /= d) and (x_sel /= d) and (x_if /= d) and (x_case /= d) ) then 
         err_cnt := err_cnt+1;
      end if;

     wait;
   end process stimuli;
end mux4_tb_arch; 

