library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package pacchetto_coefficienti is
  type coeff_vector is array(natural range <>) of signed(19 downto 0);

  --30.11.2023 - 15:09:56
--Filtro 16° ordine passa basso
 -- generic(
--NUM_SEC : integer := 8;
--W_DAT_INPUT : integer := 8;
--GAIN_INPUT : integer := 16;
--W_SECT_DAT : integer := 16;
--W_COEF : integer := 18;
--W_FRAC : integer := 16;
--SOSGAIN_EN : boolean := false;
--FINALGAIN_EN : boolean := true;
--W_DAT_OUTPUT : integer := 16;
--W_DAT_INTF : integer := SET_SOMETHING;
--USE_PIPELINE_CORE : boolean := SET_SOMETHING
--);


  constant a1 : coeff_vector(0 to 7) := (
  x"044B9",
  x"049DC",
  x"05821",
  x"06C43",
  x"082F2",
  x"0989F",
  x"0A9B5",
  x"0B325"
    );

  constant a2 : coeff_vector(0 to 7) := (
x"0E5F5",
x"0B87C",
x"09175",
x"06F73",
x"05245",
x"03AA0",
x"029BE", 
x"020E6"
  );
  constant b0 : coeff_vector(0 to 7) := (
x"0C597",
x"0B185",
x"0B112",
x"0A83C",
x"09B71",
x"08EF2",
x"0851B",
x"07F35"

  );
  constant b1 : coeff_vector(0 to 7) := (
x"07BD7",
x"07BA6",
x"093FC",
x"0AF1C",
x"0C9F0",
x"0E1DD",
x"0F38A",
x"0FBD9"
  );
  constant b2 : coeff_vector(0 to 7) := (
      x"0C597",
      x"0B185",
      x"0B112",
      x"0A83C",
      x"09B71",
      x"08EF2",
      x"0851B",
      x"07F35"

  );
  constant fg : coeff_vector(0 to 1) :=( x"0BCC5",
 x"00000"
);
  constant g : coeff_vector(0 to 7) := (
    x"00000",
    x"00000",
    x"00000",
    x"00000",
    x"00000",
    x"00000",
    x"00000",
    x"00000"
  
    );
end package pacchetto_coefficienti;