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

-- DATE "01/20/2025 10:40:39"

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
	DB : BUFFER std_logic_vector(7 DOWNTO 0)
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
-- DB[0]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[1]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[2]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[3]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[4]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[6]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DB[7]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_DB : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \FPGA_CLK1_50~input_o\ : std_logic;
SIGNAL \FPGA_CLK1_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \delay[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \delay[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \delay[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \delay[10]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \delay[19]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \delay[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \delay[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \delay[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \delay[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.s0~DUPLICATE_q\ : std_logic;
SIGNAL \w_led0~0_combout\ : std_logic;
SIGNAL \w_led0~q\ : std_logic;
SIGNAL \state.s1~DUPLICATE_q\ : std_logic;
SIGNAL \w_led1~feeder_combout\ : std_logic;
SIGNAL \w_led1~q\ : std_logic;
SIGNAL \w_led2~q\ : std_logic;
SIGNAL \state.s3~DUPLICATE_q\ : std_logic;
SIGNAL \w_led3~feeder_combout\ : std_logic;
SIGNAL \w_led3~q\ : std_logic;
SIGNAL delay : std_logic_vector(30 DOWNTO 0);
SIGNAL ALT_INV_delay : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_delay[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay[19]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.s3~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.s1~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.s0~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_delay[10]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.s3~q\ : std_logic;
SIGNAL \ALT_INV_state.s2~q\ : std_logic;
SIGNAL \ALT_INV_state.s1~q\ : std_logic;
SIGNAL \ALT_INV_state.s0~q\ : std_logic;

BEGIN

ww_SW <= SW;
LED <= ww_LED;
ww_FPGA_CLK1_50 <= FPGA_CLK1_50;
PCB_RS <= ww_PCB_RS;
PCB_RW <= ww_PCB_RW;
PCB_E <= ww_PCB_E;
DB <= ww_DB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_delay(27) <= NOT delay(27);
ALT_INV_delay(26) <= NOT delay(26);
ALT_INV_delay(24) <= NOT delay(24);
ALT_INV_delay(18) <= NOT delay(18);
ALT_INV_delay(16) <= NOT delay(16);
ALT_INV_delay(11) <= NOT delay(11);
ALT_INV_delay(30) <= NOT delay(30);
ALT_INV_delay(8) <= NOT delay(8);
ALT_INV_delay(7) <= NOT delay(7);
ALT_INV_delay(9) <= NOT delay(9);
ALT_INV_delay(29) <= NOT delay(29);
ALT_INV_delay(28) <= NOT delay(28);
ALT_INV_delay(10) <= NOT delay(10);
\ALT_INV_delay[17]~DUPLICATE_q\ <= NOT \delay[17]~DUPLICATE_q\;
\ALT_INV_delay[14]~DUPLICATE_q\ <= NOT \delay[14]~DUPLICATE_q\;
\ALT_INV_delay[6]~DUPLICATE_q\ <= NOT \delay[6]~DUPLICATE_q\;
\ALT_INV_delay[5]~DUPLICATE_q\ <= NOT \delay[5]~DUPLICATE_q\;
\ALT_INV_delay[2]~DUPLICATE_q\ <= NOT \delay[2]~DUPLICATE_q\;
\ALT_INV_delay[19]~DUPLICATE_q\ <= NOT \delay[19]~DUPLICATE_q\;
\ALT_INV_state.s3~DUPLICATE_q\ <= NOT \state.s3~DUPLICATE_q\;
\ALT_INV_state.s1~DUPLICATE_q\ <= NOT \state.s1~DUPLICATE_q\;
\ALT_INV_state.s0~DUPLICATE_q\ <= NOT \state.s0~DUPLICATE_q\;
\ALT_INV_delay[11]~DUPLICATE_q\ <= NOT \delay[11]~DUPLICATE_q\;
\ALT_INV_delay[9]~DUPLICATE_q\ <= NOT \delay[9]~DUPLICATE_q\;
\ALT_INV_delay[10]~DUPLICATE_q\ <= NOT \delay[10]~DUPLICATE_q\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
ALT_INV_delay(17) <= NOT delay(17);
ALT_INV_delay(15) <= NOT delay(15);
ALT_INV_delay(14) <= NOT delay(14);
ALT_INV_delay(13) <= NOT delay(13);
ALT_INV_delay(12) <= NOT delay(12);
ALT_INV_delay(6) <= NOT delay(6);
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
ALT_INV_delay(5) <= NOT delay(5);
ALT_INV_delay(4) <= NOT delay(4);
ALT_INV_delay(3) <= NOT delay(3);
ALT_INV_delay(2) <= NOT delay(2);
ALT_INV_delay(1) <= NOT delay(1);
ALT_INV_delay(0) <= NOT delay(0);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
ALT_INV_delay(25) <= NOT delay(25);
ALT_INV_delay(23) <= NOT delay(23);
ALT_INV_delay(22) <= NOT delay(22);
ALT_INV_delay(21) <= NOT delay(21);
ALT_INV_delay(20) <= NOT delay(20);
ALT_INV_delay(19) <= NOT delay(19);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_state.s3~q\ <= NOT \state.s3~q\;
\ALT_INV_state.s2~q\ <= NOT \state.s2~q\;
\ALT_INV_state.s1~q\ <= NOT \state.s1~q\;
\ALT_INV_state.s0~q\ <= NOT \state.s0~q\;

-- Location: IOOBUF_X89_Y8_N22
\LED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \w_led0~q\,
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
	i => \w_led1~q\,
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
	i => \w_led2~q\,
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
	i => \w_led3~q\,
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

-- Location: IOOBUF_X89_Y6_N22
\DB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \w_led0~q\,
	devoe => ww_devoe,
	o => ww_DB(0));

-- Location: IOOBUF_X68_Y0_N19
\DB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \w_led1~q\,
	devoe => ww_devoe,
	o => ww_DB(1));

-- Location: IOOBUF_X86_Y0_N19
\DB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \w_led2~q\,
	devoe => ww_devoe,
	o => ww_DB(2));

-- Location: IOOBUF_X82_Y0_N76
\DB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \w_led3~q\,
	devoe => ww_devoe,
	o => ww_DB(3));

-- Location: IOOBUF_X89_Y6_N39
\DB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DB(4));

-- Location: IOOBUF_X86_Y0_N36
\DB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DB(5));

-- Location: IOOBUF_X64_Y0_N19
\DB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DB(6));

-- Location: IOOBUF_X64_Y0_N2
\DB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DB(7));

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

-- Location: LABCELL_X85_Y5_N0
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( delay(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~78\ = CARRY(( delay(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(0),
	cin => GND,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X85_Y5_N2
\delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(0));

-- Location: LABCELL_X85_Y5_N3
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( delay(1) ) + ( VCC ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( delay(1) ) + ( VCC ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(1),
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X85_Y5_N5
\delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(1));

-- Location: LABCELL_X85_Y5_N6
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \delay[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( \delay[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_delay[2]~DUPLICATE_q\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X85_Y5_N7
\delay[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay[2]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y5_N9
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( delay(3) ) + ( VCC ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( delay(3) ) + ( VCC ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(3),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X85_Y5_N11
\delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(3));

-- Location: LABCELL_X85_Y5_N12
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( delay(4) ) + ( VCC ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( delay(4) ) + ( VCC ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay(4),
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X85_Y5_N14
\delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(4));

-- Location: LABCELL_X85_Y5_N15
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \delay[5]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( \delay[5]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_delay[5]~DUPLICATE_q\,
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: FF_X85_Y5_N17
\delay[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay[5]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y5_N18
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( \delay[6]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( \delay[6]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_delay[6]~DUPLICATE_q\,
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: FF_X85_Y5_N20
\delay[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay[6]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y5_N21
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( delay(7) ) + ( VCC ) + ( \Add0~102\ ))
-- \Add0~18\ = CARRY(( delay(7) ) + ( VCC ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(7),
	cin => \Add0~102\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X85_Y5_N32
\delay[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay[10]~DUPLICATE_q\);

-- Location: FF_X85_Y5_N8
\delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(2));

-- Location: FF_X85_Y5_N16
\delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(5));

-- Location: MLABCELL_X84_Y5_N45
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !delay(0) & ( !delay(5) & ( (!delay(1) & (!delay(4) & (!delay(3) & !delay(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(1),
	datab => ALT_INV_delay(4),
	datac => ALT_INV_delay(3),
	datad => ALT_INV_delay(2),
	datae => ALT_INV_delay(0),
	dataf => ALT_INV_delay(5),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X85_Y4_N18
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( delay(26) ) + ( VCC ) + ( \Add0~74\ ))
-- \Add0~46\ = CARRY(( delay(26) ) + ( VCC ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(26),
	cin => \Add0~74\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X85_Y4_N21
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( delay(27) ) + ( VCC ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( delay(27) ) + ( VCC ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(27),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X85_Y4_N23
\delay[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(27));

-- Location: LABCELL_X85_Y4_N24
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( delay(28) ) + ( VCC ) + ( \Add0~50\ ))
-- \Add0~6\ = CARRY(( delay(28) ) + ( VCC ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay(28),
	cin => \Add0~50\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X85_Y4_N25
\delay[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(28));

-- Location: LABCELL_X85_Y4_N27
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( delay(29) ) + ( VCC ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( delay(29) ) + ( VCC ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(29),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X85_Y4_N29
\delay[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(29));

-- Location: FF_X85_Y5_N28
\delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(9));

-- Location: LABCELL_X85_Y4_N30
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( delay(30) ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay(30),
	cin => \Add0~10\,
	sumout => \Add0~25_sumout\);

-- Location: FF_X85_Y4_N32
\delay[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(30));

-- Location: LABCELL_X85_Y4_N42
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !delay(7) & ( !delay(8) & ( (!delay(29) & (!delay(28) & (!delay(9) & !delay(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(29),
	datab => ALT_INV_delay(28),
	datac => ALT_INV_delay(9),
	datad => ALT_INV_delay(30),
	datae => ALT_INV_delay(7),
	dataf => ALT_INV_delay(8),
	combout => \Equal0~0_combout\);

-- Location: FF_X85_Y5_N58
\delay[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay[19]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y4_N54
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\delay[19]~DUPLICATE_q\ & ( !delay(23) & ( (!delay(20) & (!delay(25) & (!delay(21) & !delay(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(20),
	datab => ALT_INV_delay(25),
	datac => ALT_INV_delay(21),
	datad => ALT_INV_delay(22),
	datae => \ALT_INV_delay[19]~DUPLICATE_q\,
	dataf => ALT_INV_delay(23),
	combout => \Equal0~2_combout\);

-- Location: FF_X85_Y5_N53
\delay[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(17));

-- Location: FF_X85_Y5_N44
\delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(14));

-- Location: FF_X85_Y5_N19
\delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(6));

-- Location: MLABCELL_X84_Y5_N48
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !delay(6) & ( !delay(15) & ( (!delay(17) & (!delay(12) & (!delay(13) & !delay(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(17),
	datab => ALT_INV_delay(12),
	datac => ALT_INV_delay(13),
	datad => ALT_INV_delay(14),
	datae => ALT_INV_delay(6),
	dataf => ALT_INV_delay(15),
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X85_Y4_N48
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~2_combout\ & ( \Equal0~4_combout\ & ( (\Equal0~1_combout\ & (!\delay[10]~DUPLICATE_q\ & (\Equal0~3_combout\ & \Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_delay[10]~DUPLICATE_q\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~6_combout\);

-- Location: FF_X85_Y5_N23
\delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(7));

-- Location: LABCELL_X85_Y5_N24
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( delay(8) ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( delay(8) ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(8),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X85_Y5_N26
\delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(8));

-- Location: LABCELL_X85_Y5_N27
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \delay[9]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~14\ = CARRY(( \delay[9]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_delay[9]~DUPLICATE_q\,
	cin => \Add0~22\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X85_Y5_N29
\delay[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay[9]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y5_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( delay(10) ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~2\ = CARRY(( delay(10) ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(10),
	cin => \Add0~14\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X85_Y5_N31
\delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(10));

-- Location: LABCELL_X85_Y5_N33
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( delay(11) ) + ( VCC ) + ( \Add0~2\ ))
-- \Add0~30\ = CARRY(( delay(11) ) + ( VCC ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(11),
	cin => \Add0~2\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X85_Y5_N35
\delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(11));

-- Location: LABCELL_X85_Y5_N36
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( delay(12) ) + ( VCC ) + ( \Add0~30\ ))
-- \Add0~106\ = CARRY(( delay(12) ) + ( VCC ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(12),
	cin => \Add0~30\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: FF_X85_Y5_N38
\delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(12));

-- Location: LABCELL_X85_Y5_N39
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( delay(13) ) + ( VCC ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( delay(13) ) + ( VCC ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(13),
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: FF_X85_Y5_N41
\delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(13));

-- Location: LABCELL_X85_Y5_N42
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( \delay[14]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( \delay[14]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_delay[14]~DUPLICATE_q\,
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: FF_X85_Y5_N43
\delay[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay[14]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y5_N45
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( delay(15) ) + ( VCC ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( delay(15) ) + ( VCC ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(15),
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: FF_X85_Y5_N47
\delay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~117_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(15));

-- Location: LABCELL_X85_Y5_N48
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( delay(16) ) + ( VCC ) + ( \Add0~118\ ))
-- \Add0~34\ = CARRY(( delay(16) ) + ( VCC ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(16),
	cin => \Add0~118\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X85_Y5_N50
\delay[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(16));

-- Location: LABCELL_X85_Y5_N51
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( \delay[17]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~34\ ))
-- \Add0~122\ = CARRY(( \delay[17]~DUPLICATE_q\ ) + ( VCC ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_delay[17]~DUPLICATE_q\,
	cin => \Add0~34\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: FF_X85_Y5_N52
\delay[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~121_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay[17]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y5_N54
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( delay(18) ) + ( VCC ) + ( \Add0~122\ ))
-- \Add0~38\ = CARRY(( delay(18) ) + ( VCC ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(18),
	cin => \Add0~122\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X85_Y4_N52
\delay[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \Add0~37_sumout\,
	sclr => \Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(18));

-- Location: LABCELL_X85_Y5_N57
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( delay(19) ) + ( VCC ) + ( \Add0~38\ ))
-- \Add0~54\ = CARRY(( delay(19) ) + ( VCC ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(19),
	cin => \Add0~38\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X85_Y5_N59
\delay[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(19));

-- Location: LABCELL_X85_Y4_N0
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( delay(20) ) + ( VCC ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( delay(20) ) + ( VCC ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(20),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X85_Y4_N2
\delay[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(20));

-- Location: LABCELL_X85_Y4_N3
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( delay(21) ) + ( VCC ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( delay(21) ) + ( VCC ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(21),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X85_Y4_N5
\delay[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(21));

-- Location: LABCELL_X85_Y4_N6
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( delay(22) ) + ( VCC ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( delay(22) ) + ( VCC ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay(22),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X85_Y4_N8
\delay[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(22));

-- Location: LABCELL_X85_Y4_N9
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( delay(23) ) + ( VCC ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( delay(23) ) + ( VCC ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(23),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X85_Y4_N11
\delay[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(23));

-- Location: LABCELL_X85_Y4_N12
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( delay(24) ) + ( VCC ) + ( \Add0~70\ ))
-- \Add0~42\ = CARRY(( delay(24) ) + ( VCC ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay(24),
	cin => \Add0~70\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X85_Y4_N14
\delay[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(24));

-- Location: LABCELL_X85_Y4_N15
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( delay(25) ) + ( VCC ) + ( \Add0~42\ ))
-- \Add0~74\ = CARRY(( delay(25) ) + ( VCC ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(25),
	cin => \Add0~42\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X85_Y4_N17
\delay[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(25));

-- Location: FF_X85_Y4_N20
\delay[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(26));

-- Location: FF_X85_Y5_N34
\delay[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \delay[11]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y4_N36
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !delay(16) & ( !\delay[11]~DUPLICATE_q\ & ( (!delay(26) & (!delay(24) & (!delay(27) & !delay(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(26),
	datab => ALT_INV_delay(24),
	datac => ALT_INV_delay(27),
	datad => ALT_INV_delay(18),
	datae => ALT_INV_delay(16),
	dataf => \ALT_INV_delay[11]~DUPLICATE_q\,
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X84_Y5_N6
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~2_combout\ & ( (\Equal0~3_combout\ & \Equal0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~5_combout\);

-- Location: FF_X84_Y5_N26
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: MLABCELL_X84_Y5_N30
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \state.s1~q\ & ( \delay[10]~DUPLICATE_q\ & ( \state.s0~q\ ) ) ) # ( \state.s1~q\ & ( !\delay[10]~DUPLICATE_q\ & ( !\state.s0~q\ $ (((!\Equal0~0_combout\) # ((!\Equal0~1_combout\) # (!\Equal0~5_combout\)))) ) ) ) # ( !\state.s1~q\ 
-- & ( !\delay[10]~DUPLICATE_q\ & ( (\Equal0~0_combout\ & (\Equal0~1_combout\ & (!\state.s0~q\ & \Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000011110001111000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_state.s0~q\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_state.s1~q\,
	dataf => \ALT_INV_delay[10]~DUPLICATE_q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X84_Y5_N32
\state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~q\);

-- Location: MLABCELL_X84_Y5_N0
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \state.s2~q\ & ( \delay[10]~DUPLICATE_q\ & ( !\state.s1~q\ ) ) ) # ( \state.s2~q\ & ( !\delay[10]~DUPLICATE_q\ & ( !\state.s1~q\ $ (((\Equal0~1_combout\ & (\Equal0~5_combout\ & \Equal0~0_combout\)))) ) ) ) # ( !\state.s2~q\ & ( 
-- !\delay[10]~DUPLICATE_q\ & ( (\Equal0~1_combout\ & (\Equal0~5_combout\ & (\Equal0~0_combout\ & \state.s1~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111100000000100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_state.s1~q\,
	datae => \ALT_INV_state.s2~q\,
	dataf => \ALT_INV_delay[10]~DUPLICATE_q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X84_Y5_N1
\state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s2~q\);

-- Location: MLABCELL_X84_Y5_N39
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \state.s3~q\ & ( \state.s2~q\ & ( (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~5_combout\ & !\delay[10]~DUPLICATE_q\))) ) ) ) # ( !\state.s3~q\ & ( \state.s2~q\ & ( (\Equal0~0_combout\ & (\Equal0~1_combout\ & 
-- (\Equal0~5_combout\ & !\delay[10]~DUPLICATE_q\))) ) ) ) # ( \state.s3~q\ & ( !\state.s2~q\ & ( (!\Equal0~0_combout\) # ((!\Equal0~1_combout\) # ((!\Equal0~5_combout\) # (\delay[10]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111101111111100000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_delay[10]~DUPLICATE_q\,
	datae => \ALT_INV_state.s3~q\,
	dataf => \ALT_INV_state.s2~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X84_Y5_N41
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: MLABCELL_X84_Y5_N24
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \state.s0~q\ & ( \delay[10]~DUPLICATE_q\ ) ) # ( !\state.s0~q\ & ( \delay[10]~DUPLICATE_q\ & ( \state.s3~q\ ) ) ) # ( \state.s0~q\ & ( !\delay[10]~DUPLICATE_q\ & ( (!\Equal0~1_combout\) # ((!\Equal0~5_combout\) # 
-- ((!\Equal0~0_combout\) # (!\state.s3~q\))) ) ) ) # ( !\state.s0~q\ & ( !\delay[10]~DUPLICATE_q\ & ( !\state.s3~q\ $ (((!\Equal0~1_combout\) # ((!\Equal0~5_combout\) # (!\Equal0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111110111111111111111000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_state.s3~q\,
	datae => \ALT_INV_state.s0~q\,
	dataf => \ALT_INV_delay[10]~DUPLICATE_q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X84_Y5_N25
\state.s0~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y5_N12
\w_led0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \w_led0~0_combout\ = ( !\state.s0~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.s0~DUPLICATE_q\,
	combout => \w_led0~0_combout\);

-- Location: FF_X84_Y5_N13
w_led0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \w_led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_led0~q\);

-- Location: FF_X84_Y5_N31
\state.s1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s1~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y5_N57
\w_led1~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w_led1~feeder_combout\ = ( \state.s1~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.s1~DUPLICATE_q\,
	combout => \w_led1~feeder_combout\);

-- Location: FF_X84_Y5_N58
w_led1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \w_led1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_led1~q\);

-- Location: FF_X84_Y5_N37
w_led2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \state.s2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_led2~q\);

-- Location: FF_X84_Y5_N40
\state.s3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y5_N18
\w_led3~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \w_led3~feeder_combout\ = ( \state.s3~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.s3~DUPLICATE_q\,
	combout => \w_led3~feeder_combout\);

-- Location: FF_X84_Y5_N19
w_led3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \w_led3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_led3~q\);

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

-- Location: LABCELL_X50_Y3_N3
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


