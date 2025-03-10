--! Project : Asynchronous FIFO    
--! <br>               
--! Author : Emiliano Sisinni                   
--! <br>               
--! Date : AY2023/2024                          
--! <br>               
--! Company : UniBS                             
--! <br>                        
--! File : fifo_read.vhd 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity fifo_read_ctrl is
   generic(N: natural:=4);
   port(
      clkr, resetr: in std_logic;
      w_ptr_in: in std_logic_vector(N downto 0);
      rd: in std_logic;
      empty: out std_logic;
      r_ptr_out: out std_logic_vector(N downto 0);
      r_addr: out std_logic_vector(N-1 downto 0)
   );
end fifo_read_ctrl;

architecture gray_arch of fifo_read_ctrl is
   signal r_ptr_reg, r_ptr_next: std_logic_vector(N downto 0);
   signal gray1, bin, bin1: std_logic_vector(N downto 0);
   signal raddr_all: std_logic_vector(N-1 downto 0);
   signal raddr_msb,waddr_msb: std_logic;
   signal empty_flag: std_logic;
begin
   -- register
   process(clkr,resetr)
   begin
      if (resetr='1') then
         r_ptr_reg <= (others=>'0');
      elsif (clkr'event and clkr='1') then
         r_ptr_reg <= r_ptr_next;
      end if;
   end process;
   -- (N+1)-bit Gray counter
   bin <= r_ptr_reg xor ('0' & bin(N downto 1)); -- from Gray to Binary
   bin1 <= std_logic_vector(unsigned(bin) + 1); -- increment Binary counter
   gray1 <= bin1 xor ('0' & bin1(N downto 1)); -- convert to Gray the incremented Bynary counter
   -- update read pointer
   r_ptr_next <= gray1 when rd='1' and empty_flag='0' else
                 r_ptr_reg;
   -- N-bit Gray counter
   raddr_msb <= r_ptr_reg(N) xor r_ptr_reg(N-1); -- MSB Gray code read pointer @ N bit
   raddr_all <= raddr_msb & r_ptr_reg(N-2 downto 0); -- Gray code read pointer @ N bit
   waddr_msb <= w_ptr_in(N) xor w_ptr_in(N-1); -- MSB Gray code write pointer @ N bit
   -- check for FIFO empty
   empty_flag <=
      '1' when w_ptr_in(N)=r_ptr_reg(N) and -- MSB Gray code N+1 bit are equal
          w_ptr_in(N-2 downto 0)=r_ptr_reg(N-2 downto 0) and -- LSBs Gray code N bit are equal
          raddr_msb = waddr_msb else -- MSB Gray code N bit are equal
      '0';
    -- output
    r_addr <= raddr_all; -- use the Gray code @ N bit for addressing the memory
    r_ptr_out <= r_ptr_reg;
    empty <= empty_flag;
end gray_arch;