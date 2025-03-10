--! Project : Asynchronous FIFO    
--! <br>               
--! Author : Emiliano Sisinni                   
--! <br>               
--! Date : AY2023/2024                          
--! <br>               
--! Company : UniBS                             
--! <br>                       
--! File : fifo_write.vhd 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity fifo_write_ctrl is
   generic(N: natural:=4);
   port(
      clkw, resetw: in std_logic;
      wr: in std_logic;
      r_ptr_in: in std_logic_vector(N downto 0);
      full: out std_logic;
      w_ptr_out: out std_logic_vector(N downto 0);
      w_addr: out std_logic_vector(N-1 downto 0)
   );
end fifo_write_ctrl;

architecture gray_arch of fifo_write_ctrl is
   signal w_ptr_reg, w_ptr_next:
      std_logic_vector(N downto 0);
   signal gray1, bin, bin1: std_logic_vector(N downto 0);
   signal waddr_all: std_logic_vector(N-1 downto 0);
   signal waddr_msb, raddr_msb: std_logic;
   signal full_flag: std_logic;
begin
   -- register
   process(clkw,resetw)
   begin
      if (resetw='1') then
          w_ptr_reg <= (others=>'0');
      elsif (clkw'event and clkw='1') then
         w_ptr_reg <= w_ptr_next;
      end if;
   end process;
   -- (N+1)-bit Gray counter
   bin <= w_ptr_reg xor ('0' & bin(N downto 1)); -- from Gray to Binary counter
   bin1 <= std_logic_vector(unsigned(bin) + 1); -- increment Binary counter
   gray1 <= bin1 xor ('0' & bin1(N downto 1)); -- convert to Gray the incremented Bynary counter
   -- update write pointer
   w_ptr_next <= gray1 when wr='1' and full_flag='0' else
                 w_ptr_reg;
   -- N-bit Gray counter
   waddr_msb <=  w_ptr_reg(N) xor w_ptr_reg(N-1); -- MSB Gray code write pointer @ N bit
   waddr_all <= waddr_msb & w_ptr_reg(N-2 downto 0); -- Gray code write pointer @ N bit
   raddr_msb <= r_ptr_in(N) xor r_ptr_in(N-1); -- MSB Gray code read pointer @ N bit
   -- check for FIFO full
   full_flag <=
     '1' when r_ptr_in(N) /=w_ptr_reg(N) and -- MSB Gray code N+1 bit are different
         r_ptr_in(N-2 downto 0)=w_ptr_reg(N-2 downto 0) and -- LSBs Gray code N bit are equal
         raddr_msb = waddr_msb else -- MSB Gray code N bit are equal
     '0';
   -- output
   w_addr <= waddr_all; -- use the Gray code @ N bit for addressing the memory
   w_ptr_out <= w_ptr_reg;
   full <= full_flag;
end gray_arch;