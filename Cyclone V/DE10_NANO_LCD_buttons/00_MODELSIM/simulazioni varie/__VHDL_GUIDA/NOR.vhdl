library ieee;
use ieee.std_logic_1164.all;

entity NOR_GATE is
    port(A,B: in bit;
            C: out bit);
end NOR_GATE;

-- potrebbe avere più architetture
architecture DATA_FLOW of NOR_GATE is
    begin
        c<=A nor B;
    end DATA_FLOW;
