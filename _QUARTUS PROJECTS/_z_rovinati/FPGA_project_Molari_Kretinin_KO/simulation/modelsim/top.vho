-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/19/2025 20:29:03"

-- 
-- Device: Altera 5CSEBA6U23I7S Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	SW : IN std_logic_vector(3 DOWNTO 0);
	LED : BUFFER std_logic_vector(3 DOWNTO 0);
	FPGA_CLK1_50 : IN std_logic;
	PCB_RS : BUFFER std_logic;
	PCB_RW : BUFFER std_logic;
	PCB_E : BUFFER std_logic;
	PCB_DB : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_RS	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_RW	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_E	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[1]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[3]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[4]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[5]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[6]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_DB[7]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_CLK1_50	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_CLK1_50 : std_logic;
SIGNAL ww_PCB_RS : std_logic;
SIGNAL ww_PCB_RW : std_logic;
SIGNAL ww_PCB_E : std_logic;
SIGNAL ww_PCB_DB : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \FPGA_CLK1_50~input_o\ : std_logic;
SIGNAL \FPGA_CLK1_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \tim_1Hz|Add0~85_sumout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~3_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~98\ : std_logic;
SIGNAL \tim_1Hz|Add0~101_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~102\ : std_logic;
SIGNAL \tim_1Hz|Add0~33_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~34\ : std_logic;
SIGNAL \tim_1Hz|Add0~37_sumout\ : std_logic;
SIGNAL \tim_1Hz|counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|Add0~38\ : std_logic;
SIGNAL \tim_1Hz|Add0~41_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~42\ : std_logic;
SIGNAL \tim_1Hz|Add0~45_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~46\ : std_logic;
SIGNAL \tim_1Hz|Add0~49_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~50\ : std_logic;
SIGNAL \tim_1Hz|Add0~53_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~54\ : std_logic;
SIGNAL \tim_1Hz|Add0~9_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~10\ : std_logic;
SIGNAL \tim_1Hz|Add0~13_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~14\ : std_logic;
SIGNAL \tim_1Hz|Add0~17_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~18\ : std_logic;
SIGNAL \tim_1Hz|Add0~21_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~22\ : std_logic;
SIGNAL \tim_1Hz|Add0~25_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~26\ : std_logic;
SIGNAL \tim_1Hz|Add0~29_sumout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~1_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~2_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~30\ : std_logic;
SIGNAL \tim_1Hz|Add0~1_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~2\ : std_logic;
SIGNAL \tim_1Hz|Add0~5_sumout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~0_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~5_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~86\ : std_logic;
SIGNAL \tim_1Hz|Add0~81_sumout\ : std_logic;
SIGNAL \tim_1Hz|counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|Add0~82\ : std_logic;
SIGNAL \tim_1Hz|Add0~77_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~78\ : std_logic;
SIGNAL \tim_1Hz|Add0~73_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~74\ : std_logic;
SIGNAL \tim_1Hz|Add0~69_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~70\ : std_logic;
SIGNAL \tim_1Hz|Add0~65_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~66\ : std_logic;
SIGNAL \tim_1Hz|Add0~61_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~62\ : std_logic;
SIGNAL \tim_1Hz|Add0~57_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~58\ : std_logic;
SIGNAL \tim_1Hz|Add0~89_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~90\ : std_logic;
SIGNAL \tim_1Hz|Add0~93_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~94\ : std_logic;
SIGNAL \tim_1Hz|Add0~97_sumout\ : std_logic;
SIGNAL \tim_1Hz|counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|Equal0~4_combout\ : std_logic;
SIGNAL \tim_1Hz|clock_signal~0_combout\ : std_logic;
SIGNAL \tim_1Hz|clock_signal~q\ : std_logic;
SIGNAL \tim_1Hz|counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \tim_1Hz|ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_counter[13]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_clock_signal~q\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_counter\ : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_SW <= SW;
LED <= ww_LED;
ww_FPGA_CLK1_50 <= FPGA_CLK1_50;
PCB_RS <= ww_PCB_RS;
PCB_RW <= ww_PCB_RW;
PCB_E <= ww_PCB_E;
PCB_DB <= ww_PCB_DB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\tim_1Hz|ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \tim_1Hz|counter[0]~DUPLICATE_q\;
\tim_1Hz|ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \tim_1Hz|counter[1]~DUPLICATE_q\;
\tim_1Hz|ALT_INV_counter[13]~DUPLICATE_q\ <= NOT \tim_1Hz|counter[13]~DUPLICATE_q\;
\tim_1Hz|ALT_INV_Equal0~4_combout\ <= NOT \tim_1Hz|Equal0~4_combout\;
\tim_1Hz|ALT_INV_Equal0~3_combout\ <= NOT \tim_1Hz|Equal0~3_combout\;
\tim_1Hz|ALT_INV_Equal0~2_combout\ <= NOT \tim_1Hz|Equal0~2_combout\;
\tim_1Hz|ALT_INV_Equal0~1_combout\ <= NOT \tim_1Hz|Equal0~1_combout\;
\tim_1Hz|ALT_INV_Equal0~0_combout\ <= NOT \tim_1Hz|Equal0~0_combout\;
\tim_1Hz|ALT_INV_clock_signal~q\ <= NOT \tim_1Hz|clock_signal~q\;
\tim_1Hz|ALT_INV_counter\(11) <= NOT \tim_1Hz|counter\(11);
\tim_1Hz|ALT_INV_counter\(10) <= NOT \tim_1Hz|counter\(10);
\tim_1Hz|ALT_INV_counter\(9) <= NOT \tim_1Hz|counter\(9);
\tim_1Hz|ALT_INV_counter\(8) <= NOT \tim_1Hz|counter\(8);
\tim_1Hz|ALT_INV_counter\(0) <= NOT \tim_1Hz|counter\(0);
\tim_1Hz|ALT_INV_counter\(1) <= NOT \tim_1Hz|counter\(1);
\tim_1Hz|ALT_INV_counter\(2) <= NOT \tim_1Hz|counter\(2);
\tim_1Hz|ALT_INV_counter\(3) <= NOT \tim_1Hz|counter\(3);
\tim_1Hz|ALT_INV_counter\(4) <= NOT \tim_1Hz|counter\(4);
\tim_1Hz|ALT_INV_counter\(5) <= NOT \tim_1Hz|counter\(5);
\tim_1Hz|ALT_INV_counter\(6) <= NOT \tim_1Hz|counter\(6);
\tim_1Hz|ALT_INV_counter\(7) <= NOT \tim_1Hz|counter\(7);
\tim_1Hz|ALT_INV_counter\(17) <= NOT \tim_1Hz|counter\(17);
\tim_1Hz|ALT_INV_counter\(16) <= NOT \tim_1Hz|counter\(16);
\tim_1Hz|ALT_INV_counter\(15) <= NOT \tim_1Hz|counter\(15);
\tim_1Hz|ALT_INV_counter\(14) <= NOT \tim_1Hz|counter\(14);
\tim_1Hz|ALT_INV_counter\(13) <= NOT \tim_1Hz|counter\(13);
\tim_1Hz|ALT_INV_counter\(12) <= NOT \tim_1Hz|counter\(12);
\tim_1Hz|ALT_INV_counter\(23) <= NOT \tim_1Hz|counter\(23);
\tim_1Hz|ALT_INV_counter\(22) <= NOT \tim_1Hz|counter\(22);
\tim_1Hz|ALT_INV_counter\(21) <= NOT \tim_1Hz|counter\(21);
\tim_1Hz|ALT_INV_counter\(20) <= NOT \tim_1Hz|counter\(20);
\tim_1Hz|ALT_INV_counter\(19) <= NOT \tim_1Hz|counter\(19);
\tim_1Hz|ALT_INV_counter\(18) <= NOT \tim_1Hz|counter\(18);
\tim_1Hz|ALT_INV_counter\(25) <= NOT \tim_1Hz|counter\(25);
\tim_1Hz|ALT_INV_counter\(24) <= NOT \tim_1Hz|counter\(24);

-- Location: IOOBUF_X89_Y8_N22
\LED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tim_1Hz|clock_signal~q\,
	devoe => ww_devoe,
	o => ww_LED(0));

-- Location: IOOBUF_X89_Y9_N39
\LED[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(1));

-- Location: IOOBUF_X89_Y9_N5
\LED[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(2));

-- Location: IOOBUF_X89_Y9_N22
\LED[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LED(3));

-- Location: IOOBUF_X56_Y0_N19
\PCB_RS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PCB_RS);

-- Location: IOOBUF_X8_Y0_N2
\PCB_RW~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PCB_RW);

-- Location: IOOBUF_X89_Y25_N56
\PCB_E~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PCB_E);

-- Location: IOOBUF_X89_Y8_N56
\PCB_DB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \tim_1Hz|clock_signal~q\,
	devoe => ww_devoe,
	o => ww_PCB_DB(0));

-- Location: IOOBUF_X80_Y0_N53
\PCB_DB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PCB_DB(1));

-- Location: IOOBUF_X40_Y0_N19
\PCB_DB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PCB_DB(2));

-- Location: IOOBUF_X66_Y0_N76
\PCB_DB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PCB_DB(3));

-- Location: IOOBUF_X82_Y0_N42
\PCB_DB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PCB_DB(4));

-- Location: IOOBUF_X89_Y8_N5
\PCB_DB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PCB_DB(5));

-- Location: IOOBUF_X68_Y0_N36
\PCB_DB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PCB_DB(6));

-- Location: IOOBUF_X50_Y0_N59
\PCB_DB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PCB_DB(7));

-- Location: IOIBUF_X32_Y0_N1
\FPGA_CLK1_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_CLK1_50,
	o => \FPGA_CLK1_50~input_o\);

-- Location: CLKCTRL_G6
\FPGA_CLK1_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \FPGA_CLK1_50~input_o\,
	outclk => \FPGA_CLK1_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y8_N30
\tim_1Hz|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~85_sumout\ = SUM(( \tim_1Hz|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \tim_1Hz|Add0~86\ = CARRY(( \tim_1Hz|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(0),
	cin => GND,
	sumout => \tim_1Hz|Add0~85_sumout\,
	cout => \tim_1Hz|Add0~86\);

-- Location: LABCELL_X88_Y8_N24
\tim_1Hz|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~3_combout\ = ( !\tim_1Hz|counter\(5) & ( !\tim_1Hz|counter\(3) & ( (\tim_1Hz|counter\(6) & (!\tim_1Hz|counter\(4) & (!\tim_1Hz|counter\(2) & !\tim_1Hz|counter\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(6),
	datab => \tim_1Hz|ALT_INV_counter\(4),
	datac => \tim_1Hz|ALT_INV_counter\(2),
	datad => \tim_1Hz|ALT_INV_counter\(7),
	datae => \tim_1Hz|ALT_INV_counter\(5),
	dataf => \tim_1Hz|ALT_INV_counter\(3),
	combout => \tim_1Hz|Equal0~3_combout\);

-- Location: LABCELL_X88_Y7_N0
\tim_1Hz|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~97_sumout\ = SUM(( \tim_1Hz|counter\(10) ) + ( GND ) + ( \tim_1Hz|Add0~94\ ))
-- \tim_1Hz|Add0~98\ = CARRY(( \tim_1Hz|counter\(10) ) + ( GND ) + ( \tim_1Hz|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(10),
	cin => \tim_1Hz|Add0~94\,
	sumout => \tim_1Hz|Add0~97_sumout\,
	cout => \tim_1Hz|Add0~98\);

-- Location: LABCELL_X88_Y7_N3
\tim_1Hz|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~101_sumout\ = SUM(( \tim_1Hz|counter\(11) ) + ( GND ) + ( \tim_1Hz|Add0~98\ ))
-- \tim_1Hz|Add0~102\ = CARRY(( \tim_1Hz|counter\(11) ) + ( GND ) + ( \tim_1Hz|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_1Hz|ALT_INV_counter\(11),
	cin => \tim_1Hz|Add0~98\,
	sumout => \tim_1Hz|Add0~101_sumout\,
	cout => \tim_1Hz|Add0~102\);

-- Location: FF_X88_Y8_N11
\tim_1Hz|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \tim_1Hz|Add0~101_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(11));

-- Location: LABCELL_X88_Y7_N6
\tim_1Hz|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~33_sumout\ = SUM(( \tim_1Hz|counter\(12) ) + ( GND ) + ( \tim_1Hz|Add0~102\ ))
-- \tim_1Hz|Add0~34\ = CARRY(( \tim_1Hz|counter\(12) ) + ( GND ) + ( \tim_1Hz|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_counter\(12),
	cin => \tim_1Hz|Add0~102\,
	sumout => \tim_1Hz|Add0~33_sumout\,
	cout => \tim_1Hz|Add0~34\);

-- Location: FF_X88_Y7_N8
\tim_1Hz|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~33_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(12));

-- Location: LABCELL_X88_Y7_N9
\tim_1Hz|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~37_sumout\ = SUM(( \tim_1Hz|counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \tim_1Hz|Add0~34\ ))
-- \tim_1Hz|Add0~38\ = CARRY(( \tim_1Hz|counter[13]~DUPLICATE_q\ ) + ( GND ) + ( \tim_1Hz|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter[13]~DUPLICATE_q\,
	cin => \tim_1Hz|Add0~34\,
	sumout => \tim_1Hz|Add0~37_sumout\,
	cout => \tim_1Hz|Add0~38\);

-- Location: FF_X88_Y7_N11
\tim_1Hz|counter[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~37_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter[13]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y7_N12
\tim_1Hz|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~41_sumout\ = SUM(( \tim_1Hz|counter\(14) ) + ( GND ) + ( \tim_1Hz|Add0~38\ ))
-- \tim_1Hz|Add0~42\ = CARRY(( \tim_1Hz|counter\(14) ) + ( GND ) + ( \tim_1Hz|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_counter\(14),
	cin => \tim_1Hz|Add0~38\,
	sumout => \tim_1Hz|Add0~41_sumout\,
	cout => \tim_1Hz|Add0~42\);

-- Location: FF_X88_Y7_N14
\tim_1Hz|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~41_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(14));

-- Location: LABCELL_X88_Y7_N15
\tim_1Hz|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~45_sumout\ = SUM(( \tim_1Hz|counter\(15) ) + ( GND ) + ( \tim_1Hz|Add0~42\ ))
-- \tim_1Hz|Add0~46\ = CARRY(( \tim_1Hz|counter\(15) ) + ( GND ) + ( \tim_1Hz|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(15),
	cin => \tim_1Hz|Add0~42\,
	sumout => \tim_1Hz|Add0~45_sumout\,
	cout => \tim_1Hz|Add0~46\);

-- Location: FF_X88_Y7_N17
\tim_1Hz|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~45_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(15));

-- Location: LABCELL_X88_Y7_N18
\tim_1Hz|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~49_sumout\ = SUM(( \tim_1Hz|counter\(16) ) + ( GND ) + ( \tim_1Hz|Add0~46\ ))
-- \tim_1Hz|Add0~50\ = CARRY(( \tim_1Hz|counter\(16) ) + ( GND ) + ( \tim_1Hz|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(16),
	cin => \tim_1Hz|Add0~46\,
	sumout => \tim_1Hz|Add0~49_sumout\,
	cout => \tim_1Hz|Add0~50\);

-- Location: FF_X88_Y7_N20
\tim_1Hz|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~49_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(16));

-- Location: LABCELL_X88_Y7_N21
\tim_1Hz|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~53_sumout\ = SUM(( \tim_1Hz|counter\(17) ) + ( GND ) + ( \tim_1Hz|Add0~50\ ))
-- \tim_1Hz|Add0~54\ = CARRY(( \tim_1Hz|counter\(17) ) + ( GND ) + ( \tim_1Hz|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_1Hz|ALT_INV_counter\(17),
	cin => \tim_1Hz|Add0~50\,
	sumout => \tim_1Hz|Add0~53_sumout\,
	cout => \tim_1Hz|Add0~54\);

-- Location: FF_X88_Y7_N23
\tim_1Hz|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~53_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(17));

-- Location: LABCELL_X88_Y7_N24
\tim_1Hz|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~9_sumout\ = SUM(( \tim_1Hz|counter\(18) ) + ( GND ) + ( \tim_1Hz|Add0~54\ ))
-- \tim_1Hz|Add0~10\ = CARRY(( \tim_1Hz|counter\(18) ) + ( GND ) + ( \tim_1Hz|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(18),
	cin => \tim_1Hz|Add0~54\,
	sumout => \tim_1Hz|Add0~9_sumout\,
	cout => \tim_1Hz|Add0~10\);

-- Location: FF_X88_Y7_N26
\tim_1Hz|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~9_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(18));

-- Location: LABCELL_X88_Y7_N27
\tim_1Hz|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~13_sumout\ = SUM(( \tim_1Hz|counter\(19) ) + ( GND ) + ( \tim_1Hz|Add0~10\ ))
-- \tim_1Hz|Add0~14\ = CARRY(( \tim_1Hz|counter\(19) ) + ( GND ) + ( \tim_1Hz|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(19),
	cin => \tim_1Hz|Add0~10\,
	sumout => \tim_1Hz|Add0~13_sumout\,
	cout => \tim_1Hz|Add0~14\);

-- Location: FF_X88_Y7_N28
\tim_1Hz|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~13_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(19));

-- Location: LABCELL_X88_Y7_N30
\tim_1Hz|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~17_sumout\ = SUM(( \tim_1Hz|counter\(20) ) + ( GND ) + ( \tim_1Hz|Add0~14\ ))
-- \tim_1Hz|Add0~18\ = CARRY(( \tim_1Hz|counter\(20) ) + ( GND ) + ( \tim_1Hz|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_counter\(20),
	cin => \tim_1Hz|Add0~14\,
	sumout => \tim_1Hz|Add0~17_sumout\,
	cout => \tim_1Hz|Add0~18\);

-- Location: FF_X88_Y7_N32
\tim_1Hz|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~17_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(20));

-- Location: LABCELL_X88_Y7_N33
\tim_1Hz|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~21_sumout\ = SUM(( \tim_1Hz|counter\(21) ) + ( GND ) + ( \tim_1Hz|Add0~18\ ))
-- \tim_1Hz|Add0~22\ = CARRY(( \tim_1Hz|counter\(21) ) + ( GND ) + ( \tim_1Hz|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(21),
	cin => \tim_1Hz|Add0~18\,
	sumout => \tim_1Hz|Add0~21_sumout\,
	cout => \tim_1Hz|Add0~22\);

-- Location: FF_X88_Y7_N35
\tim_1Hz|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~21_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(21));

-- Location: LABCELL_X88_Y7_N36
\tim_1Hz|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~25_sumout\ = SUM(( \tim_1Hz|counter\(22) ) + ( GND ) + ( \tim_1Hz|Add0~22\ ))
-- \tim_1Hz|Add0~26\ = CARRY(( \tim_1Hz|counter\(22) ) + ( GND ) + ( \tim_1Hz|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(22),
	cin => \tim_1Hz|Add0~22\,
	sumout => \tim_1Hz|Add0~25_sumout\,
	cout => \tim_1Hz|Add0~26\);

-- Location: FF_X88_Y7_N38
\tim_1Hz|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~25_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(22));

-- Location: LABCELL_X88_Y7_N39
\tim_1Hz|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~29_sumout\ = SUM(( \tim_1Hz|counter\(23) ) + ( GND ) + ( \tim_1Hz|Add0~26\ ))
-- \tim_1Hz|Add0~30\ = CARRY(( \tim_1Hz|counter\(23) ) + ( GND ) + ( \tim_1Hz|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(23),
	cin => \tim_1Hz|Add0~26\,
	sumout => \tim_1Hz|Add0~29_sumout\,
	cout => \tim_1Hz|Add0~30\);

-- Location: FF_X88_Y7_N41
\tim_1Hz|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~29_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(23));

-- Location: LABCELL_X88_Y7_N48
\tim_1Hz|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~1_combout\ = ( \tim_1Hz|counter\(22) & ( !\tim_1Hz|counter\(23) & ( (\tim_1Hz|counter\(21) & (\tim_1Hz|counter\(20) & (\tim_1Hz|counter\(18) & \tim_1Hz|counter\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(21),
	datab => \tim_1Hz|ALT_INV_counter\(20),
	datac => \tim_1Hz|ALT_INV_counter\(18),
	datad => \tim_1Hz|ALT_INV_counter\(19),
	datae => \tim_1Hz|ALT_INV_counter\(22),
	dataf => \tim_1Hz|ALT_INV_counter\(23),
	combout => \tim_1Hz|Equal0~1_combout\);

-- Location: FF_X88_Y7_N10
\tim_1Hz|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~37_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(13));

-- Location: LABCELL_X88_Y7_N54
\tim_1Hz|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~2_combout\ = ( \tim_1Hz|counter\(13) & ( \tim_1Hz|counter\(12) & ( (\tim_1Hz|counter\(16) & (!\tim_1Hz|counter\(15) & (!\tim_1Hz|counter\(17) & \tim_1Hz|counter\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(16),
	datab => \tim_1Hz|ALT_INV_counter\(15),
	datac => \tim_1Hz|ALT_INV_counter\(17),
	datad => \tim_1Hz|ALT_INV_counter\(14),
	datae => \tim_1Hz|ALT_INV_counter\(13),
	dataf => \tim_1Hz|ALT_INV_counter\(12),
	combout => \tim_1Hz|Equal0~2_combout\);

-- Location: LABCELL_X88_Y7_N42
\tim_1Hz|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~1_sumout\ = SUM(( \tim_1Hz|counter\(24) ) + ( GND ) + ( \tim_1Hz|Add0~30\ ))
-- \tim_1Hz|Add0~2\ = CARRY(( \tim_1Hz|counter\(24) ) + ( GND ) + ( \tim_1Hz|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_counter\(24),
	cin => \tim_1Hz|Add0~30\,
	sumout => \tim_1Hz|Add0~1_sumout\,
	cout => \tim_1Hz|Add0~2\);

-- Location: FF_X88_Y7_N44
\tim_1Hz|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~1_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(24));

-- Location: LABCELL_X88_Y7_N45
\tim_1Hz|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~5_sumout\ = SUM(( \tim_1Hz|counter\(25) ) + ( GND ) + ( \tim_1Hz|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(25),
	cin => \tim_1Hz|Add0~2\,
	sumout => \tim_1Hz|Add0~5_sumout\);

-- Location: FF_X88_Y7_N46
\tim_1Hz|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~5_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(25));

-- Location: LABCELL_X88_Y8_N6
\tim_1Hz|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~0_combout\ = ( \tim_1Hz|counter\(24) & ( !\tim_1Hz|counter\(25) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(25),
	datae => \tim_1Hz|ALT_INV_counter\(24),
	combout => \tim_1Hz|Equal0~0_combout\);

-- Location: LABCELL_X88_Y8_N12
\tim_1Hz|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~5_combout\ = ( \tim_1Hz|Equal0~2_combout\ & ( \tim_1Hz|Equal0~0_combout\ & ( (\tim_1Hz|Equal0~4_combout\ & (\tim_1Hz|Equal0~3_combout\ & \tim_1Hz|Equal0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_Equal0~4_combout\,
	datac => \tim_1Hz|ALT_INV_Equal0~3_combout\,
	datad => \tim_1Hz|ALT_INV_Equal0~1_combout\,
	datae => \tim_1Hz|ALT_INV_Equal0~2_combout\,
	dataf => \tim_1Hz|ALT_INV_Equal0~0_combout\,
	combout => \tim_1Hz|Equal0~5_combout\);

-- Location: FF_X88_Y8_N31
\tim_1Hz|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~85_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(0));

-- Location: LABCELL_X88_Y8_N33
\tim_1Hz|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~81_sumout\ = SUM(( \tim_1Hz|counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \tim_1Hz|Add0~86\ ))
-- \tim_1Hz|Add0~82\ = CARRY(( \tim_1Hz|counter[1]~DUPLICATE_q\ ) + ( GND ) + ( \tim_1Hz|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter[1]~DUPLICATE_q\,
	cin => \tim_1Hz|Add0~86\,
	sumout => \tim_1Hz|Add0~81_sumout\,
	cout => \tim_1Hz|Add0~82\);

-- Location: FF_X88_Y8_N35
\tim_1Hz|counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~81_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y8_N36
\tim_1Hz|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~77_sumout\ = SUM(( \tim_1Hz|counter\(2) ) + ( GND ) + ( \tim_1Hz|Add0~82\ ))
-- \tim_1Hz|Add0~78\ = CARRY(( \tim_1Hz|counter\(2) ) + ( GND ) + ( \tim_1Hz|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_1Hz|ALT_INV_counter\(2),
	cin => \tim_1Hz|Add0~82\,
	sumout => \tim_1Hz|Add0~77_sumout\,
	cout => \tim_1Hz|Add0~78\);

-- Location: FF_X88_Y8_N38
\tim_1Hz|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~77_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(2));

-- Location: LABCELL_X88_Y8_N39
\tim_1Hz|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~73_sumout\ = SUM(( \tim_1Hz|counter\(3) ) + ( GND ) + ( \tim_1Hz|Add0~78\ ))
-- \tim_1Hz|Add0~74\ = CARRY(( \tim_1Hz|counter\(3) ) + ( GND ) + ( \tim_1Hz|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(3),
	cin => \tim_1Hz|Add0~78\,
	sumout => \tim_1Hz|Add0~73_sumout\,
	cout => \tim_1Hz|Add0~74\);

-- Location: FF_X88_Y8_N41
\tim_1Hz|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~73_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(3));

-- Location: LABCELL_X88_Y8_N42
\tim_1Hz|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~69_sumout\ = SUM(( \tim_1Hz|counter\(4) ) + ( GND ) + ( \tim_1Hz|Add0~74\ ))
-- \tim_1Hz|Add0~70\ = CARRY(( \tim_1Hz|counter\(4) ) + ( GND ) + ( \tim_1Hz|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_1Hz|ALT_INV_counter\(4),
	cin => \tim_1Hz|Add0~74\,
	sumout => \tim_1Hz|Add0~69_sumout\,
	cout => \tim_1Hz|Add0~70\);

-- Location: FF_X88_Y8_N43
\tim_1Hz|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~69_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(4));

-- Location: LABCELL_X88_Y8_N45
\tim_1Hz|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~65_sumout\ = SUM(( \tim_1Hz|counter\(5) ) + ( GND ) + ( \tim_1Hz|Add0~70\ ))
-- \tim_1Hz|Add0~66\ = CARRY(( \tim_1Hz|counter\(5) ) + ( GND ) + ( \tim_1Hz|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_1Hz|ALT_INV_counter\(5),
	cin => \tim_1Hz|Add0~70\,
	sumout => \tim_1Hz|Add0~65_sumout\,
	cout => \tim_1Hz|Add0~66\);

-- Location: FF_X88_Y8_N47
\tim_1Hz|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~65_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(5));

-- Location: LABCELL_X88_Y8_N48
\tim_1Hz|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~61_sumout\ = SUM(( \tim_1Hz|counter\(6) ) + ( GND ) + ( \tim_1Hz|Add0~66\ ))
-- \tim_1Hz|Add0~62\ = CARRY(( \tim_1Hz|counter\(6) ) + ( GND ) + ( \tim_1Hz|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(6),
	cin => \tim_1Hz|Add0~66\,
	sumout => \tim_1Hz|Add0~61_sumout\,
	cout => \tim_1Hz|Add0~62\);

-- Location: FF_X88_Y8_N50
\tim_1Hz|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~61_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(6));

-- Location: LABCELL_X88_Y8_N51
\tim_1Hz|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~57_sumout\ = SUM(( \tim_1Hz|counter\(7) ) + ( GND ) + ( \tim_1Hz|Add0~62\ ))
-- \tim_1Hz|Add0~58\ = CARRY(( \tim_1Hz|counter\(7) ) + ( GND ) + ( \tim_1Hz|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_1Hz|ALT_INV_counter\(7),
	cin => \tim_1Hz|Add0~62\,
	sumout => \tim_1Hz|Add0~57_sumout\,
	cout => \tim_1Hz|Add0~58\);

-- Location: FF_X88_Y8_N52
\tim_1Hz|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~57_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(7));

-- Location: LABCELL_X88_Y8_N54
\tim_1Hz|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~89_sumout\ = SUM(( \tim_1Hz|counter\(8) ) + ( GND ) + ( \tim_1Hz|Add0~58\ ))
-- \tim_1Hz|Add0~90\ = CARRY(( \tim_1Hz|counter\(8) ) + ( GND ) + ( \tim_1Hz|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_1Hz|ALT_INV_counter\(8),
	cin => \tim_1Hz|Add0~58\,
	sumout => \tim_1Hz|Add0~89_sumout\,
	cout => \tim_1Hz|Add0~90\);

-- Location: FF_X88_Y8_N56
\tim_1Hz|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~89_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(8));

-- Location: LABCELL_X88_Y8_N57
\tim_1Hz|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~93_sumout\ = SUM(( \tim_1Hz|counter\(9) ) + ( GND ) + ( \tim_1Hz|Add0~90\ ))
-- \tim_1Hz|Add0~94\ = CARRY(( \tim_1Hz|counter\(9) ) + ( GND ) + ( \tim_1Hz|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_1Hz|ALT_INV_counter\(9),
	cin => \tim_1Hz|Add0~90\,
	sumout => \tim_1Hz|Add0~93_sumout\,
	cout => \tim_1Hz|Add0~94\);

-- Location: FF_X88_Y8_N59
\tim_1Hz|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~93_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(9));

-- Location: FF_X88_Y8_N5
\tim_1Hz|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \tim_1Hz|Add0~97_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(10));

-- Location: FF_X88_Y8_N32
\tim_1Hz|counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~85_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter[0]~DUPLICATE_q\);

-- Location: FF_X88_Y8_N34
\tim_1Hz|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~81_sumout\,
	sclr => \tim_1Hz|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(1));

-- Location: LABCELL_X88_Y8_N21
\tim_1Hz|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~4_combout\ = ( !\tim_1Hz|counter\(8) & ( \tim_1Hz|counter\(11) & ( (!\tim_1Hz|counter\(10) & (!\tim_1Hz|counter\(9) & (!\tim_1Hz|counter[0]~DUPLICATE_q\ & !\tim_1Hz|counter\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(10),
	datab => \tim_1Hz|ALT_INV_counter\(9),
	datac => \tim_1Hz|ALT_INV_counter[0]~DUPLICATE_q\,
	datad => \tim_1Hz|ALT_INV_counter\(1),
	datae => \tim_1Hz|ALT_INV_counter\(8),
	dataf => \tim_1Hz|ALT_INV_counter\(11),
	combout => \tim_1Hz|Equal0~4_combout\);

-- Location: LABCELL_X88_Y8_N0
\tim_1Hz|clock_signal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|clock_signal~0_combout\ = ( \tim_1Hz|clock_signal~q\ & ( \tim_1Hz|Equal0~3_combout\ & ( (!\tim_1Hz|Equal0~4_combout\) # ((!\tim_1Hz|Equal0~1_combout\) # ((!\tim_1Hz|Equal0~2_combout\) # (!\tim_1Hz|Equal0~0_combout\))) ) ) ) # ( 
-- !\tim_1Hz|clock_signal~q\ & ( \tim_1Hz|Equal0~3_combout\ & ( (\tim_1Hz|Equal0~4_combout\ & (\tim_1Hz|Equal0~1_combout\ & (\tim_1Hz|Equal0~2_combout\ & \tim_1Hz|Equal0~0_combout\))) ) ) ) # ( \tim_1Hz|clock_signal~q\ & ( !\tim_1Hz|Equal0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_Equal0~4_combout\,
	datab => \tim_1Hz|ALT_INV_Equal0~1_combout\,
	datac => \tim_1Hz|ALT_INV_Equal0~2_combout\,
	datad => \tim_1Hz|ALT_INV_Equal0~0_combout\,
	datae => \tim_1Hz|ALT_INV_clock_signal~q\,
	dataf => \tim_1Hz|ALT_INV_Equal0~3_combout\,
	combout => \tim_1Hz|clock_signal~0_combout\);

-- Location: FF_X88_Y8_N1
\tim_1Hz|clock_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|clock_signal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|clock_signal~q\);

-- Location: IOIBUF_X89_Y25_N4
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X37_Y37_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


