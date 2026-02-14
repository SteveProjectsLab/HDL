-- entità

entity MUX2 is
    port(A,B,SEL: in bit;
        z:out bit);
end MUX2;


-- modello comportamentale

architecture ARC1 of MUX2 is
begin
    P1:process(A,B,SEL)
    begin
        if (SEL='0')then
            Z<=A;
        else
            Z<=B;
        end if;
    end process P1;
end ARC1;

-- modello data-flow 1

architecture DF1 of MUX2 is
    begin
       Z<=A when (SEL='0') else B;
end DF1;

-- modello data-flow 2

architecture DF2 of MUX2 is
    begin
       Z<= (A and not SEL) or (B and SEL)B;
end DF2;

-- modello strutturale
architecture STRUCT of MUX2 is
    component inv is
        port(A: in bit;
        Z: out bit);
    end component

    component and2 is
        port(A,B: in bit;
        Z: out bit);
    end component

    component or2 is
        port(A,B: in bit;
        Z: out bit);
    end component

    signal NOT_SEL, Z1, Z2: bit;
    
    begin
        u1:inv port map(SEL, NOT_SEL);
        u2:and2 port map (A, NOT_SEL, Z1);
        u3:and2 port map(B,SEL. Z2);
        u4:or2 port map (Z1, Z2, Z);
    end STRUCT