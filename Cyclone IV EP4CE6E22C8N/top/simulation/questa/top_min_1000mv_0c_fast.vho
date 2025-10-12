-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "10/12/2025 11:24:01"

-- 
-- Device: Altera EP4CE6E22C8L Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	LED : BUFFER std_logic_vector(4 DOWNTO 0);
	FPGA_CLK1_50 : IN std_logic
	);
END top;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[4]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_CLK1_50	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_FPGA_CLK1_50 : std_logic;
SIGNAL \FPGA_CLK1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \FPGA_CLK1_50~input_o\ : std_logic;
SIGNAL \FPGA_CLK1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \tim_1Hz|Add0~0_combout\ : std_logic;
SIGNAL \tim_1Hz|counter~1_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~1\ : std_logic;
SIGNAL \tim_1Hz|Add0~2_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~3\ : std_logic;
SIGNAL \tim_1Hz|Add0~4_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~5\ : std_logic;
SIGNAL \tim_1Hz|Add0~6_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~7\ : std_logic;
SIGNAL \tim_1Hz|Add0~8_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~9\ : std_logic;
SIGNAL \tim_1Hz|Add0~10_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~11\ : std_logic;
SIGNAL \tim_1Hz|Add0~12_combout\ : std_logic;
SIGNAL \tim_1Hz|counter~0_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~13\ : std_logic;
SIGNAL \tim_1Hz|Add0~14_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~15\ : std_logic;
SIGNAL \tim_1Hz|Add0~16_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~17\ : std_logic;
SIGNAL \tim_1Hz|Add0~18_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~19\ : std_logic;
SIGNAL \tim_1Hz|Add0~20_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~21\ : std_logic;
SIGNAL \tim_1Hz|Add0~22_combout\ : std_logic;
SIGNAL \tim_1Hz|counter~2_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~23\ : std_logic;
SIGNAL \tim_1Hz|Add0~24_combout\ : std_logic;
SIGNAL \tim_1Hz|counter~3_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~25\ : std_logic;
SIGNAL \tim_1Hz|Add0~26_combout\ : std_logic;
SIGNAL \tim_1Hz|counter~4_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~27\ : std_logic;
SIGNAL \tim_1Hz|Add0~28_combout\ : std_logic;
SIGNAL \tim_1Hz|counter~5_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~29\ : std_logic;
SIGNAL \tim_1Hz|Add0~30_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~31\ : std_logic;
SIGNAL \tim_1Hz|Add0~32_combout\ : std_logic;
SIGNAL \tim_1Hz|counter~6_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~33\ : std_logic;
SIGNAL \tim_1Hz|Add0~34_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~35\ : std_logic;
SIGNAL \tim_1Hz|Add0~36_combout\ : std_logic;
SIGNAL \tim_1Hz|counter~7_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~37\ : std_logic;
SIGNAL \tim_1Hz|Add0~38_combout\ : std_logic;
SIGNAL \tim_1Hz|counter~8_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~5_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~39\ : std_logic;
SIGNAL \tim_1Hz|Add0~40_combout\ : std_logic;
SIGNAL \tim_1Hz|counter~9_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~41\ : std_logic;
SIGNAL \tim_1Hz|Add0~42_combout\ : std_logic;
SIGNAL \tim_1Hz|counter~10_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~43\ : std_logic;
SIGNAL \tim_1Hz|Add0~44_combout\ : std_logic;
SIGNAL \tim_1Hz|counter~11_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~45\ : std_logic;
SIGNAL \tim_1Hz|Add0~46_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~47\ : std_logic;
SIGNAL \tim_1Hz|Add0~48_combout\ : std_logic;
SIGNAL \tim_1Hz|counter~12_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~49\ : std_logic;
SIGNAL \tim_1Hz|Add0~50_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~7_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~6_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~1_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~3_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~0_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~2_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~4_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~8_combout\ : std_logic;
SIGNAL \tim_1Hz|clock_signal~0_combout\ : std_logic;
SIGNAL \tim_1Hz|clock_signal~q\ : std_logic;
SIGNAL \tim_1Hz|counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \tim_1Hz|ALT_INV_clock_signal~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LED <= ww_LED;
ww_FPGA_CLK1_50 <= FPGA_CLK1_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FPGA_CLK1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FPGA_CLK1_50~input_o\);
\tim_1Hz|ALT_INV_clock_signal~q\ <= NOT \tim_1Hz|clock_signal~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y23_N2
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tim_1Hz|clock_signal~q\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tim_1Hz|ALT_INV_clock_signal~q\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tim_1Hz|clock_signal~q\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tim_1Hz|ALT_INV_clock_signal~q\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tim_1Hz|clock_signal~q\,
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\FPGA_CLK1_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_CLK1_50,
	o => \FPGA_CLK1_50~input_o\);

-- Location: CLKCTRL_G4
\FPGA_CLK1_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FPGA_CLK1_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FPGA_CLK1_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X4_Y11_N6
\tim_1Hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~0_combout\ = \tim_1Hz|counter\(0) $ (VCC)
-- \tim_1Hz|Add0~1\ = CARRY(\tim_1Hz|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(0),
	datad => VCC,
	combout => \tim_1Hz|Add0~0_combout\,
	cout => \tim_1Hz|Add0~1\);

-- Location: LCCOMB_X4_Y11_N2
\tim_1Hz|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter~1_combout\ = (\tim_1Hz|Add0~0_combout\ & !\tim_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|Add0~0_combout\,
	datad => \tim_1Hz|Equal0~8_combout\,
	combout => \tim_1Hz|counter~1_combout\);

-- Location: FF_X4_Y11_N3
\tim_1Hz|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(0));

-- Location: LCCOMB_X4_Y11_N8
\tim_1Hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~2_combout\ = (\tim_1Hz|counter\(1) & (!\tim_1Hz|Add0~1\)) # (!\tim_1Hz|counter\(1) & ((\tim_1Hz|Add0~1\) # (GND)))
-- \tim_1Hz|Add0~3\ = CARRY((!\tim_1Hz|Add0~1\) # (!\tim_1Hz|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(1),
	datad => VCC,
	cin => \tim_1Hz|Add0~1\,
	combout => \tim_1Hz|Add0~2_combout\,
	cout => \tim_1Hz|Add0~3\);

-- Location: FF_X4_Y11_N9
\tim_1Hz|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(1));

-- Location: LCCOMB_X4_Y11_N10
\tim_1Hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~4_combout\ = (\tim_1Hz|counter\(2) & (\tim_1Hz|Add0~3\ $ (GND))) # (!\tim_1Hz|counter\(2) & (!\tim_1Hz|Add0~3\ & VCC))
-- \tim_1Hz|Add0~5\ = CARRY((\tim_1Hz|counter\(2) & !\tim_1Hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(2),
	datad => VCC,
	cin => \tim_1Hz|Add0~3\,
	combout => \tim_1Hz|Add0~4_combout\,
	cout => \tim_1Hz|Add0~5\);

-- Location: FF_X4_Y11_N11
\tim_1Hz|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(2));

-- Location: LCCOMB_X4_Y11_N12
\tim_1Hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~6_combout\ = (\tim_1Hz|counter\(3) & (!\tim_1Hz|Add0~5\)) # (!\tim_1Hz|counter\(3) & ((\tim_1Hz|Add0~5\) # (GND)))
-- \tim_1Hz|Add0~7\ = CARRY((!\tim_1Hz|Add0~5\) # (!\tim_1Hz|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(3),
	datad => VCC,
	cin => \tim_1Hz|Add0~5\,
	combout => \tim_1Hz|Add0~6_combout\,
	cout => \tim_1Hz|Add0~7\);

-- Location: FF_X4_Y11_N13
\tim_1Hz|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(3));

-- Location: LCCOMB_X4_Y11_N14
\tim_1Hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~8_combout\ = (\tim_1Hz|counter\(4) & (\tim_1Hz|Add0~7\ $ (GND))) # (!\tim_1Hz|counter\(4) & (!\tim_1Hz|Add0~7\ & VCC))
-- \tim_1Hz|Add0~9\ = CARRY((\tim_1Hz|counter\(4) & !\tim_1Hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(4),
	datad => VCC,
	cin => \tim_1Hz|Add0~7\,
	combout => \tim_1Hz|Add0~8_combout\,
	cout => \tim_1Hz|Add0~9\);

-- Location: FF_X4_Y11_N15
\tim_1Hz|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(4));

-- Location: LCCOMB_X4_Y11_N16
\tim_1Hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~10_combout\ = (\tim_1Hz|counter\(5) & (!\tim_1Hz|Add0~9\)) # (!\tim_1Hz|counter\(5) & ((\tim_1Hz|Add0~9\) # (GND)))
-- \tim_1Hz|Add0~11\ = CARRY((!\tim_1Hz|Add0~9\) # (!\tim_1Hz|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(5),
	datad => VCC,
	cin => \tim_1Hz|Add0~9\,
	combout => \tim_1Hz|Add0~10_combout\,
	cout => \tim_1Hz|Add0~11\);

-- Location: FF_X4_Y11_N17
\tim_1Hz|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(5));

-- Location: LCCOMB_X4_Y11_N18
\tim_1Hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~12_combout\ = (\tim_1Hz|counter\(6) & (\tim_1Hz|Add0~11\ $ (GND))) # (!\tim_1Hz|counter\(6) & (!\tim_1Hz|Add0~11\ & VCC))
-- \tim_1Hz|Add0~13\ = CARRY((\tim_1Hz|counter\(6) & !\tim_1Hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(6),
	datad => VCC,
	cin => \tim_1Hz|Add0~11\,
	combout => \tim_1Hz|Add0~12_combout\,
	cout => \tim_1Hz|Add0~13\);

-- Location: LCCOMB_X4_Y11_N0
\tim_1Hz|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter~0_combout\ = (\tim_1Hz|Add0~12_combout\ & !\tim_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|Add0~12_combout\,
	datad => \tim_1Hz|Equal0~8_combout\,
	combout => \tim_1Hz|counter~0_combout\);

-- Location: FF_X4_Y11_N1
\tim_1Hz|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(6));

-- Location: LCCOMB_X4_Y11_N20
\tim_1Hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~14_combout\ = (\tim_1Hz|counter\(7) & (!\tim_1Hz|Add0~13\)) # (!\tim_1Hz|counter\(7) & ((\tim_1Hz|Add0~13\) # (GND)))
-- \tim_1Hz|Add0~15\ = CARRY((!\tim_1Hz|Add0~13\) # (!\tim_1Hz|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(7),
	datad => VCC,
	cin => \tim_1Hz|Add0~13\,
	combout => \tim_1Hz|Add0~14_combout\,
	cout => \tim_1Hz|Add0~15\);

-- Location: FF_X4_Y11_N21
\tim_1Hz|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(7));

-- Location: LCCOMB_X4_Y11_N22
\tim_1Hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~16_combout\ = (\tim_1Hz|counter\(8) & (\tim_1Hz|Add0~15\ $ (GND))) # (!\tim_1Hz|counter\(8) & (!\tim_1Hz|Add0~15\ & VCC))
-- \tim_1Hz|Add0~17\ = CARRY((\tim_1Hz|counter\(8) & !\tim_1Hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(8),
	datad => VCC,
	cin => \tim_1Hz|Add0~15\,
	combout => \tim_1Hz|Add0~16_combout\,
	cout => \tim_1Hz|Add0~17\);

-- Location: FF_X4_Y11_N23
\tim_1Hz|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(8));

-- Location: LCCOMB_X4_Y11_N24
\tim_1Hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~18_combout\ = (\tim_1Hz|counter\(9) & (!\tim_1Hz|Add0~17\)) # (!\tim_1Hz|counter\(9) & ((\tim_1Hz|Add0~17\) # (GND)))
-- \tim_1Hz|Add0~19\ = CARRY((!\tim_1Hz|Add0~17\) # (!\tim_1Hz|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(9),
	datad => VCC,
	cin => \tim_1Hz|Add0~17\,
	combout => \tim_1Hz|Add0~18_combout\,
	cout => \tim_1Hz|Add0~19\);

-- Location: FF_X4_Y11_N25
\tim_1Hz|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(9));

-- Location: LCCOMB_X4_Y11_N26
\tim_1Hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~20_combout\ = (\tim_1Hz|counter\(10) & (\tim_1Hz|Add0~19\ $ (GND))) # (!\tim_1Hz|counter\(10) & (!\tim_1Hz|Add0~19\ & VCC))
-- \tim_1Hz|Add0~21\ = CARRY((\tim_1Hz|counter\(10) & !\tim_1Hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(10),
	datad => VCC,
	cin => \tim_1Hz|Add0~19\,
	combout => \tim_1Hz|Add0~20_combout\,
	cout => \tim_1Hz|Add0~21\);

-- Location: FF_X4_Y11_N27
\tim_1Hz|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(10));

-- Location: LCCOMB_X4_Y11_N28
\tim_1Hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~22_combout\ = (\tim_1Hz|counter\(11) & (!\tim_1Hz|Add0~21\)) # (!\tim_1Hz|counter\(11) & ((\tim_1Hz|Add0~21\) # (GND)))
-- \tim_1Hz|Add0~23\ = CARRY((!\tim_1Hz|Add0~21\) # (!\tim_1Hz|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(11),
	datad => VCC,
	cin => \tim_1Hz|Add0~21\,
	combout => \tim_1Hz|Add0~22_combout\,
	cout => \tim_1Hz|Add0~23\);

-- Location: LCCOMB_X4_Y11_N4
\tim_1Hz|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter~2_combout\ = (\tim_1Hz|Add0~22_combout\ & !\tim_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|Add0~22_combout\,
	datad => \tim_1Hz|Equal0~8_combout\,
	combout => \tim_1Hz|counter~2_combout\);

-- Location: FF_X4_Y11_N5
\tim_1Hz|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(11));

-- Location: LCCOMB_X4_Y11_N30
\tim_1Hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~24_combout\ = (\tim_1Hz|counter\(12) & (\tim_1Hz|Add0~23\ $ (GND))) # (!\tim_1Hz|counter\(12) & (!\tim_1Hz|Add0~23\ & VCC))
-- \tim_1Hz|Add0~25\ = CARRY((\tim_1Hz|counter\(12) & !\tim_1Hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(12),
	datad => VCC,
	cin => \tim_1Hz|Add0~23\,
	combout => \tim_1Hz|Add0~24_combout\,
	cout => \tim_1Hz|Add0~25\);

-- Location: LCCOMB_X5_Y10_N14
\tim_1Hz|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter~3_combout\ = (\tim_1Hz|Add0~24_combout\ & !\tim_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|Add0~24_combout\,
	datad => \tim_1Hz|Equal0~8_combout\,
	combout => \tim_1Hz|counter~3_combout\);

-- Location: FF_X5_Y10_N15
\tim_1Hz|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(12));

-- Location: LCCOMB_X4_Y10_N0
\tim_1Hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~26_combout\ = (\tim_1Hz|counter\(13) & (!\tim_1Hz|Add0~25\)) # (!\tim_1Hz|counter\(13) & ((\tim_1Hz|Add0~25\) # (GND)))
-- \tim_1Hz|Add0~27\ = CARRY((!\tim_1Hz|Add0~25\) # (!\tim_1Hz|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(13),
	datad => VCC,
	cin => \tim_1Hz|Add0~25\,
	combout => \tim_1Hz|Add0~26_combout\,
	cout => \tim_1Hz|Add0~27\);

-- Location: LCCOMB_X5_Y10_N20
\tim_1Hz|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter~4_combout\ = (\tim_1Hz|Add0~26_combout\ & !\tim_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|Add0~26_combout\,
	datad => \tim_1Hz|Equal0~8_combout\,
	combout => \tim_1Hz|counter~4_combout\);

-- Location: FF_X5_Y10_N21
\tim_1Hz|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(13));

-- Location: LCCOMB_X4_Y10_N2
\tim_1Hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~28_combout\ = (\tim_1Hz|counter\(14) & (\tim_1Hz|Add0~27\ $ (GND))) # (!\tim_1Hz|counter\(14) & (!\tim_1Hz|Add0~27\ & VCC))
-- \tim_1Hz|Add0~29\ = CARRY((\tim_1Hz|counter\(14) & !\tim_1Hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(14),
	datad => VCC,
	cin => \tim_1Hz|Add0~27\,
	combout => \tim_1Hz|Add0~28_combout\,
	cout => \tim_1Hz|Add0~29\);

-- Location: LCCOMB_X5_Y10_N22
\tim_1Hz|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter~5_combout\ = (!\tim_1Hz|Equal0~8_combout\ & \tim_1Hz|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|Equal0~8_combout\,
	datad => \tim_1Hz|Add0~28_combout\,
	combout => \tim_1Hz|counter~5_combout\);

-- Location: FF_X5_Y10_N23
\tim_1Hz|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(14));

-- Location: LCCOMB_X4_Y10_N4
\tim_1Hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~30_combout\ = (\tim_1Hz|counter\(15) & (!\tim_1Hz|Add0~29\)) # (!\tim_1Hz|counter\(15) & ((\tim_1Hz|Add0~29\) # (GND)))
-- \tim_1Hz|Add0~31\ = CARRY((!\tim_1Hz|Add0~29\) # (!\tim_1Hz|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(15),
	datad => VCC,
	cin => \tim_1Hz|Add0~29\,
	combout => \tim_1Hz|Add0~30_combout\,
	cout => \tim_1Hz|Add0~31\);

-- Location: FF_X4_Y10_N5
\tim_1Hz|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(15));

-- Location: LCCOMB_X4_Y10_N6
\tim_1Hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~32_combout\ = (\tim_1Hz|counter\(16) & (\tim_1Hz|Add0~31\ $ (GND))) # (!\tim_1Hz|counter\(16) & (!\tim_1Hz|Add0~31\ & VCC))
-- \tim_1Hz|Add0~33\ = CARRY((\tim_1Hz|counter\(16) & !\tim_1Hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(16),
	datad => VCC,
	cin => \tim_1Hz|Add0~31\,
	combout => \tim_1Hz|Add0~32_combout\,
	cout => \tim_1Hz|Add0~33\);

-- Location: LCCOMB_X5_Y10_N4
\tim_1Hz|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter~6_combout\ = (\tim_1Hz|Add0~32_combout\ & !\tim_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|Add0~32_combout\,
	datad => \tim_1Hz|Equal0~8_combout\,
	combout => \tim_1Hz|counter~6_combout\);

-- Location: FF_X5_Y10_N5
\tim_1Hz|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(16));

-- Location: LCCOMB_X4_Y10_N8
\tim_1Hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~34_combout\ = (\tim_1Hz|counter\(17) & (!\tim_1Hz|Add0~33\)) # (!\tim_1Hz|counter\(17) & ((\tim_1Hz|Add0~33\) # (GND)))
-- \tim_1Hz|Add0~35\ = CARRY((!\tim_1Hz|Add0~33\) # (!\tim_1Hz|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(17),
	datad => VCC,
	cin => \tim_1Hz|Add0~33\,
	combout => \tim_1Hz|Add0~34_combout\,
	cout => \tim_1Hz|Add0~35\);

-- Location: FF_X4_Y10_N9
\tim_1Hz|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(17));

-- Location: LCCOMB_X4_Y10_N10
\tim_1Hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~36_combout\ = (\tim_1Hz|counter\(18) & (\tim_1Hz|Add0~35\ $ (GND))) # (!\tim_1Hz|counter\(18) & (!\tim_1Hz|Add0~35\ & VCC))
-- \tim_1Hz|Add0~37\ = CARRY((\tim_1Hz|counter\(18) & !\tim_1Hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(18),
	datad => VCC,
	cin => \tim_1Hz|Add0~35\,
	combout => \tim_1Hz|Add0~36_combout\,
	cout => \tim_1Hz|Add0~37\);

-- Location: LCCOMB_X5_Y10_N26
\tim_1Hz|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter~7_combout\ = (!\tim_1Hz|Equal0~8_combout\ & \tim_1Hz|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|Equal0~8_combout\,
	datad => \tim_1Hz|Add0~36_combout\,
	combout => \tim_1Hz|counter~7_combout\);

-- Location: FF_X5_Y10_N27
\tim_1Hz|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(18));

-- Location: LCCOMB_X4_Y10_N12
\tim_1Hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~38_combout\ = (\tim_1Hz|counter\(19) & (!\tim_1Hz|Add0~37\)) # (!\tim_1Hz|counter\(19) & ((\tim_1Hz|Add0~37\) # (GND)))
-- \tim_1Hz|Add0~39\ = CARRY((!\tim_1Hz|Add0~37\) # (!\tim_1Hz|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(19),
	datad => VCC,
	cin => \tim_1Hz|Add0~37\,
	combout => \tim_1Hz|Add0~38_combout\,
	cout => \tim_1Hz|Add0~39\);

-- Location: LCCOMB_X4_Y10_N26
\tim_1Hz|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter~8_combout\ = (!\tim_1Hz|Equal0~8_combout\ & \tim_1Hz|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|Equal0~8_combout\,
	datad => \tim_1Hz|Add0~38_combout\,
	combout => \tim_1Hz|counter~8_combout\);

-- Location: FF_X4_Y10_N27
\tim_1Hz|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(19));

-- Location: LCCOMB_X5_Y10_N12
\tim_1Hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~5_combout\ = (\tim_1Hz|counter\(19) & (\tim_1Hz|counter\(16) & (\tim_1Hz|counter\(18) & !\tim_1Hz|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(19),
	datab => \tim_1Hz|counter\(16),
	datac => \tim_1Hz|counter\(18),
	datad => \tim_1Hz|counter\(17),
	combout => \tim_1Hz|Equal0~5_combout\);

-- Location: LCCOMB_X4_Y10_N14
\tim_1Hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~40_combout\ = (\tim_1Hz|counter\(20) & (\tim_1Hz|Add0~39\ $ (GND))) # (!\tim_1Hz|counter\(20) & (!\tim_1Hz|Add0~39\ & VCC))
-- \tim_1Hz|Add0~41\ = CARRY((\tim_1Hz|counter\(20) & !\tim_1Hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(20),
	datad => VCC,
	cin => \tim_1Hz|Add0~39\,
	combout => \tim_1Hz|Add0~40_combout\,
	cout => \tim_1Hz|Add0~41\);

-- Location: LCCOMB_X5_Y10_N30
\tim_1Hz|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter~9_combout\ = (!\tim_1Hz|Equal0~8_combout\ & \tim_1Hz|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|Equal0~8_combout\,
	datad => \tim_1Hz|Add0~40_combout\,
	combout => \tim_1Hz|counter~9_combout\);

-- Location: FF_X5_Y10_N31
\tim_1Hz|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(20));

-- Location: LCCOMB_X4_Y10_N16
\tim_1Hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~42_combout\ = (\tim_1Hz|counter\(21) & (!\tim_1Hz|Add0~41\)) # (!\tim_1Hz|counter\(21) & ((\tim_1Hz|Add0~41\) # (GND)))
-- \tim_1Hz|Add0~43\ = CARRY((!\tim_1Hz|Add0~41\) # (!\tim_1Hz|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(21),
	datad => VCC,
	cin => \tim_1Hz|Add0~41\,
	combout => \tim_1Hz|Add0~42_combout\,
	cout => \tim_1Hz|Add0~43\);

-- Location: LCCOMB_X4_Y10_N28
\tim_1Hz|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter~10_combout\ = (!\tim_1Hz|Equal0~8_combout\ & \tim_1Hz|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|Equal0~8_combout\,
	datad => \tim_1Hz|Add0~42_combout\,
	combout => \tim_1Hz|counter~10_combout\);

-- Location: FF_X4_Y10_N29
\tim_1Hz|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(21));

-- Location: LCCOMB_X4_Y10_N18
\tim_1Hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~44_combout\ = (\tim_1Hz|counter\(22) & (\tim_1Hz|Add0~43\ $ (GND))) # (!\tim_1Hz|counter\(22) & (!\tim_1Hz|Add0~43\ & VCC))
-- \tim_1Hz|Add0~45\ = CARRY((\tim_1Hz|counter\(22) & !\tim_1Hz|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(22),
	datad => VCC,
	cin => \tim_1Hz|Add0~43\,
	combout => \tim_1Hz|Add0~44_combout\,
	cout => \tim_1Hz|Add0~45\);

-- Location: LCCOMB_X4_Y10_N30
\tim_1Hz|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter~11_combout\ = (!\tim_1Hz|Equal0~8_combout\ & \tim_1Hz|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|Equal0~8_combout\,
	datad => \tim_1Hz|Add0~44_combout\,
	combout => \tim_1Hz|counter~11_combout\);

-- Location: FF_X4_Y10_N31
\tim_1Hz|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(22));

-- Location: LCCOMB_X4_Y10_N20
\tim_1Hz|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~46_combout\ = (\tim_1Hz|counter\(23) & (!\tim_1Hz|Add0~45\)) # (!\tim_1Hz|counter\(23) & ((\tim_1Hz|Add0~45\) # (GND)))
-- \tim_1Hz|Add0~47\ = CARRY((!\tim_1Hz|Add0~45\) # (!\tim_1Hz|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(23),
	datad => VCC,
	cin => \tim_1Hz|Add0~45\,
	combout => \tim_1Hz|Add0~46_combout\,
	cout => \tim_1Hz|Add0~47\);

-- Location: FF_X4_Y10_N21
\tim_1Hz|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(23));

-- Location: LCCOMB_X4_Y10_N22
\tim_1Hz|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~48_combout\ = (\tim_1Hz|counter\(24) & (\tim_1Hz|Add0~47\ $ (GND))) # (!\tim_1Hz|counter\(24) & (!\tim_1Hz|Add0~47\ & VCC))
-- \tim_1Hz|Add0~49\ = CARRY((\tim_1Hz|counter\(24) & !\tim_1Hz|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(24),
	datad => VCC,
	cin => \tim_1Hz|Add0~47\,
	combout => \tim_1Hz|Add0~48_combout\,
	cout => \tim_1Hz|Add0~49\);

-- Location: LCCOMB_X5_Y10_N2
\tim_1Hz|counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter~12_combout\ = (!\tim_1Hz|Equal0~8_combout\ & \tim_1Hz|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|Equal0~8_combout\,
	datad => \tim_1Hz|Add0~48_combout\,
	combout => \tim_1Hz|counter~12_combout\);

-- Location: FF_X5_Y10_N3
\tim_1Hz|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(24));

-- Location: LCCOMB_X4_Y10_N24
\tim_1Hz|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~50_combout\ = \tim_1Hz|Add0~49\ $ (\tim_1Hz|counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \tim_1Hz|counter\(25),
	cin => \tim_1Hz|Add0~49\,
	combout => \tim_1Hz|Add0~50_combout\);

-- Location: FF_X4_Y10_N25
\tim_1Hz|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(25));

-- Location: LCCOMB_X5_Y10_N16
\tim_1Hz|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~7_combout\ = (\tim_1Hz|counter\(24) & !\tim_1Hz|counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|counter\(24),
	datad => \tim_1Hz|counter\(25),
	combout => \tim_1Hz|Equal0~7_combout\);

-- Location: LCCOMB_X5_Y10_N8
\tim_1Hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~6_combout\ = (\tim_1Hz|counter\(21) & (\tim_1Hz|counter\(22) & (\tim_1Hz|counter\(20) & !\tim_1Hz|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(21),
	datab => \tim_1Hz|counter\(22),
	datac => \tim_1Hz|counter\(20),
	datad => \tim_1Hz|counter\(23),
	combout => \tim_1Hz|Equal0~6_combout\);

-- Location: LCCOMB_X5_Y11_N30
\tim_1Hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~1_combout\ = (!\tim_1Hz|counter\(2) & (!\tim_1Hz|counter\(0) & (!\tim_1Hz|counter\(3) & !\tim_1Hz|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(2),
	datab => \tim_1Hz|counter\(0),
	datac => \tim_1Hz|counter\(3),
	datad => \tim_1Hz|counter\(1),
	combout => \tim_1Hz|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y10_N24
\tim_1Hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~3_combout\ = (\tim_1Hz|counter\(14) & (\tim_1Hz|counter\(12) & (!\tim_1Hz|counter\(15) & \tim_1Hz|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(14),
	datab => \tim_1Hz|counter\(12),
	datac => \tim_1Hz|counter\(15),
	datad => \tim_1Hz|counter\(13),
	combout => \tim_1Hz|Equal0~3_combout\);

-- Location: LCCOMB_X5_Y11_N0
\tim_1Hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~0_combout\ = (!\tim_1Hz|counter\(5) & (!\tim_1Hz|counter\(7) & (\tim_1Hz|counter\(6) & !\tim_1Hz|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(5),
	datab => \tim_1Hz|counter\(7),
	datac => \tim_1Hz|counter\(6),
	datad => \tim_1Hz|counter\(4),
	combout => \tim_1Hz|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y11_N8
\tim_1Hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~2_combout\ = (!\tim_1Hz|counter\(10) & (!\tim_1Hz|counter\(9) & (\tim_1Hz|counter\(11) & !\tim_1Hz|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|counter\(10),
	datab => \tim_1Hz|counter\(9),
	datac => \tim_1Hz|counter\(11),
	datad => \tim_1Hz|counter\(8),
	combout => \tim_1Hz|Equal0~2_combout\);

-- Location: LCCOMB_X5_Y10_N18
\tim_1Hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~4_combout\ = (\tim_1Hz|Equal0~1_combout\ & (\tim_1Hz|Equal0~3_combout\ & (\tim_1Hz|Equal0~0_combout\ & \tim_1Hz|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|Equal0~1_combout\,
	datab => \tim_1Hz|Equal0~3_combout\,
	datac => \tim_1Hz|Equal0~0_combout\,
	datad => \tim_1Hz|Equal0~2_combout\,
	combout => \tim_1Hz|Equal0~4_combout\);

-- Location: LCCOMB_X5_Y10_N6
\tim_1Hz|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~8_combout\ = (\tim_1Hz|Equal0~5_combout\ & (\tim_1Hz|Equal0~7_combout\ & (\tim_1Hz|Equal0~6_combout\ & \tim_1Hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|Equal0~5_combout\,
	datab => \tim_1Hz|Equal0~7_combout\,
	datac => \tim_1Hz|Equal0~6_combout\,
	datad => \tim_1Hz|Equal0~4_combout\,
	combout => \tim_1Hz|Equal0~8_combout\);

-- Location: LCCOMB_X5_Y10_N28
\tim_1Hz|clock_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \tim_1Hz|clock_signal~0_combout\ = \tim_1Hz|clock_signal~q\ $ (\tim_1Hz|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|clock_signal~q\,
	datad => \tim_1Hz|Equal0~8_combout\,
	combout => \tim_1Hz|clock_signal~0_combout\);

-- Location: FF_X5_Y10_N29
\tim_1Hz|clock_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputclkctrl_outclk\,
	d => \tim_1Hz|clock_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|clock_signal~q\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;
END structure;


