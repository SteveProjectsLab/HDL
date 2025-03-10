--! Project : Register    
--! <br>               
--! Author : Emiliano Sisinni                   
--! <br>               
--! Date : AY2023/2024                          
--! <br>               
--! Company : UniBS                             
--! <br>               
--! File : reg.vhd  
--! <br>               
--! This example illustrates a variety of different register entities. To
--! simulate/synthesize a different entity, change the comments in the reg
--! entity at the bottom of this file.

library ieee;
use ieee.std_logic_1164.all;

-- Entity: reg_async_rst
-- Description: Implements a register with an active high, asynchronous reset.

entity reg_async_rst is
    generic(
        WIDTH : positive
        );
    port(
        clk    : in  std_logic;
        rst    : in  std_logic;
        input  : in  std_logic_vector(WIDTH-1 downto 0);
        output : out std_logic_vector(WIDTH-1 downto 0)
        );
end reg_async_rst;

architecture BHV of reg_async_rst is
begin


end BHV;


library ieee;
use ieee.std_logic_1164.all;

-- Entity: reg_sync_rst
-- Description: Implements a register with an active high, synchronous reset.

entity reg_sync_rst is
    generic(
        WIDTH : positive
        );
    port(
        clk    : in  std_logic;
        rst    : in  std_logic;
        input  : in  std_logic_vector(WIDTH-1 downto 0);
        output : out std_logic_vector(WIDTH-1 downto 0)
        );
end reg_sync_rst;

architecture BHV of reg_sync_rst is
begin


end BHV;


library ieee;
use ieee.std_logic_1164.all;

-- Entity: reg_en_async_rst
-- Description: Implements a register with an enable, and an active high,
-- asynchronous reset. The register holds its value when enable isn't asserted.

entity reg_en_async_rst is
    generic(
        WIDTH : positive
        );
    port(
        clk    : in  std_logic;
        rst    : in  std_logic;
        en     : in  std_logic;
        input  : in  std_logic_vector(WIDTH-1 downto 0);
        output : out std_logic_vector(WIDTH-1 downto 0)
        );
end reg_en_async_rst;

architecture BHV of reg_en_async_rst is
begin


end BHV;


library ieee;
use ieee.std_logic_1164.all;

-- Entity: reg_en_sync_rst
-- Description: Implements a register with an enable, and an active high,
-- synchronous reset. The register holds its value when enable isn't asserted.

entity reg_en_sync_rst is
    generic(
        WIDTH : positive
        );
    port(
        clk    : in  std_logic;
        rst    : in  std_logic;
        en     : in  std_logic;
        input  : in  std_logic_vector(WIDTH-1 downto 0);
        output : out std_logic_vector(WIDTH-1 downto 0)
        );
end reg_en_sync_rst;


architecture BHV of reg_en_sync_rst is
begin



end BHV;





library ieee;
use ieee.std_logic_1164.all;

-- Entity: reg
-- Description: Provides a top-level reigster entity for evaluating all the
-- implementations shown above.

entity reg is
    generic(
        WIDTH : positive := 8
        );
    port(
        clk    : in  std_logic;
        rst    : in  std_logic;
        en     : in  std_logic;
        input  : in  std_logic_vector(WIDTH-1 downto 0);
        output : out std_logic_vector(WIDTH-1 downto 0)
        );
end reg;

architecture default_arch of reg is
begin

    -- INSTRUCTIONS: Uncomment the architecture/entity that you want to
    -- evaluate.

    --U_REG : entity work.reg_async_rst
    U_REG : entity work.reg_sync_rst
        generic map (WIDTH => WIDTH)
        port map (clk    => clk,
                  rst    => rst,
                  input  => input,
                  output => output);



    --U_REG : entity work.reg_en_async_rst
    --U_REG : entity work.reg_en_sync_rst
    --    generic map (WIDTH => WIDTH)
    --    port map (clk    => clk,
    --              rst    => rst,
    --              en     => en,
    --              input  => input,
    --              output => output);



    
end default_arch;
