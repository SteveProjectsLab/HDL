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

-- DATE "10/12/2025 11:49:23"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	blink IS
    PORT (
	LED : BUFFER std_logic;
	CLK : IN std_logic
	);
END blink;

-- Design Ports Information


ARCHITECTURE structure OF blink IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LED : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_161\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_162\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_163\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_164\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_165\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_166\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_167\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_168\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_169\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_170\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_171\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_172\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_173\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_174\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_175\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_176\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_177\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~112COUT1_178\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_179\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_180\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~132COUT1_181\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Equal0~7\ : std_logic;
SIGNAL \Add0~137\ : std_logic;
SIGNAL \Add0~137COUT1_182\ : std_logic;
SIGNAL \Add0~142COUT1_183\ : std_logic;
SIGNAL \Add0~147\ : std_logic;
SIGNAL \Add0~147COUT1_184\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \Add0~152\ : std_logic;
SIGNAL \Add0~155_combout\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \Equal0~8\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \clk_div~regout\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);

BEGIN

LED <= ww_LED;
ww_CLK <= CLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: LC_X4_Y2_N4
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = ((!counter(0)))
-- \Add0~42\ = CARRY(((counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout => \Add0~42\);

-- Location: LC_X4_Y2_N1
\counter[0]\ : maxii_lcell
-- Equation(s):
-- counter(0) = DFFEAS(((\Add0~40_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Add0~40_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LC_X4_Y2_N5
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = (counter(1) $ ((\Add0~42\)))
-- \Add0~37\ = CARRY(((!\Add0~42\) # (!counter(1))))
-- \Add0~37COUT1_161\ = CARRY(((!\Add0~42\) # (!counter(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	cin => \Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_161\);

-- Location: LC_X4_Y2_N2
\counter[1]\ : maxii_lcell
-- Equation(s):
-- counter(1) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LC_X4_Y2_N6
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = counter(2) $ ((((!(!\Add0~42\ & \Add0~37\) # (\Add0~42\ & \Add0~37COUT1_161\)))))
-- \Add0~32\ = CARRY((counter(2) & ((!\Add0~37\))))
-- \Add0~32COUT1_162\ = CARRY((counter(2) & ((!\Add0~37COUT1_161\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	cin => \Add0~42\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_162\);

-- Location: LC_X3_Y2_N5
\counter[2]\ : maxii_lcell
-- Equation(s):
-- counter(2) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LC_X4_Y2_N7
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = (counter(3) $ (((!\Add0~42\ & \Add0~32\) # (\Add0~42\ & \Add0~32COUT1_162\))))
-- \Add0~27\ = CARRY(((!\Add0~32\) # (!counter(3))))
-- \Add0~27COUT1_163\ = CARRY(((!\Add0~32COUT1_162\) # (!counter(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	cin => \Add0~42\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_163\);

-- Location: LC_X3_Y2_N4
\counter[3]\ : maxii_lcell
-- Equation(s):
-- counter(3) = DFFEAS((((\Add0~25_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LC_X4_Y2_N8
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = (counter(4) $ ((!(!\Add0~42\ & \Add0~27\) # (\Add0~42\ & \Add0~27COUT1_163\))))
-- \Add0~22\ = CARRY(((counter(4) & !\Add0~27\)))
-- \Add0~22COUT1_164\ = CARRY(((counter(4) & !\Add0~27COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	cin => \Add0~42\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_164\);

-- Location: LC_X4_Y2_N0
\counter[4]\ : maxii_lcell
-- Equation(s):
-- \Equal0~1\ = (!counter(2) & (!counter(1) & (!counter[4] & !counter(3))))
-- counter(4) = DFFEAS(\Equal0~1\, GLOBAL(\CLK~combout\), VCC, , , \Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => counter(2),
	datab => counter(1),
	datac => \Add0~20_combout\,
	datad => counter(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => counter(4));

-- Location: LC_X4_Y2_N9
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = counter(5) $ (((((!\Add0~42\ & \Add0~22\) # (\Add0~42\ & \Add0~22COUT1_164\)))))
-- \Add0~17\ = CARRY(((!\Add0~22COUT1_164\)) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	cin => \Add0~42\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout => \Add0~17\);

-- Location: LC_X4_Y2_N3
\counter[5]\ : maxii_lcell
-- Equation(s):
-- counter(5) = DFFEAS((((\Add0~15_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \Add0~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LC_X5_Y2_N5
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = counter(11) $ ((((\Add0~52\))))
-- \Add0~57\ = CARRY(((!\Add0~52\)) # (!counter(11)))
-- \Add0~57COUT1_169\ = CARRY(((!\Add0~52\)) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	cin => \Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_169\);

-- Location: LC_X4_Y3_N5
\counter[11]\ : maxii_lcell
-- Equation(s):
-- counter(11) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LC_X5_Y2_N0
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = (counter(6) $ ((!\Add0~17\)))
-- \Add0~12\ = CARRY(((counter(6) & !\Add0~17\)))
-- \Add0~12COUT1_165\ = CARRY(((counter(6) & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	cin => \Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_165\);

-- Location: LC_X4_Y3_N7
\counter[6]\ : maxii_lcell
-- Equation(s):
-- counter(6) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~10_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LC_X5_Y2_N1
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = (counter(7) $ (((!\Add0~17\ & \Add0~12\) # (\Add0~17\ & \Add0~12COUT1_165\))))
-- \Add0~2\ = CARRY(((!\Add0~12\) # (!counter(7))))
-- \Add0~2COUT1_166\ = CARRY(((!\Add0~12COUT1_165\) # (!counter(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	cin => \Add0~17\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_166\);

-- Location: LC_X5_Y3_N6
\counter[7]\ : maxii_lcell
-- Equation(s):
-- counter(7) = DFFEAS(((\Add0~0_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~0_combout\,
	datad => \Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LC_X5_Y2_N2
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = (counter(8) $ ((!(!\Add0~17\ & \Add0~2\) # (\Add0~17\ & \Add0~2COUT1_166\))))
-- \Add0~7\ = CARRY(((counter(8) & !\Add0~2\)))
-- \Add0~7COUT1_167\ = CARRY(((counter(8) & !\Add0~2COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	cin => \Add0~17\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_167\);

-- Location: LC_X5_Y3_N0
\counter[8]\ : maxii_lcell
-- Equation(s):
-- \Equal0~0\ = (counter(7) & (!counter(6) & (!counter[8] & !counter(5))))
-- counter(8) = DFFEAS(\Equal0~0\, GLOBAL(\CLK~combout\), VCC, , , \Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => counter(7),
	datab => counter(6),
	datac => \Add0~5_combout\,
	datad => counter(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => counter(8));

-- Location: LC_X5_Y2_N3
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = (counter(9) $ (((!\Add0~17\ & \Add0~7\) # (\Add0~17\ & \Add0~7COUT1_167\))))
-- \Add0~47\ = CARRY(((!\Add0~7\) # (!counter(9))))
-- \Add0~47COUT1_168\ = CARRY(((!\Add0~7COUT1_167\) # (!counter(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	cin => \Add0~17\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_168\);

-- Location: LC_X4_Y3_N0
\counter[9]\ : maxii_lcell
-- Equation(s):
-- \Equal0~2\ = (!counter(11) & (!counter(10) & (!counter[9] & !counter(0))))
-- counter(9) = DFFEAS(\Equal0~2\, GLOBAL(\CLK~combout\), VCC, , , \Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => counter(11),
	datab => counter(10),
	datac => \Add0~45_combout\,
	datad => counter(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => counter(9));

-- Location: LC_X5_Y2_N4
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = counter(10) $ ((((!(!\Add0~17\ & \Add0~47\) # (\Add0~17\ & \Add0~47COUT1_168\)))))
-- \Add0~52\ = CARRY((counter(10) & ((!\Add0~47COUT1_168\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	cin => \Add0~17\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout => \Add0~52\);

-- Location: LC_X4_Y3_N6
\counter[10]\ : maxii_lcell
-- Equation(s):
-- counter(10) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~50_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LC_X5_Y2_N6
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = (counter(12) $ ((!(!\Add0~52\ & \Add0~57\) # (\Add0~52\ & \Add0~57COUT1_169\))))
-- \Add0~62\ = CARRY(((counter(12) & !\Add0~57\)))
-- \Add0~62COUT1_170\ = CARRY(((counter(12) & !\Add0~57COUT1_169\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	cin => \Add0~52\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_170\);

-- Location: LC_X5_Y3_N8
\counter[12]\ : maxii_lcell
-- Equation(s):
-- counter(12) = DFFEAS(((\Add0~60_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LC_X5_Y2_N7
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = (counter(13) $ (((!\Add0~52\ & \Add0~62\) # (\Add0~52\ & \Add0~62COUT1_170\))))
-- \Add0~67\ = CARRY(((!\Add0~62\) # (!counter(13))))
-- \Add0~67COUT1_171\ = CARRY(((!\Add0~62COUT1_170\) # (!counter(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	cin => \Add0~52\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_171\);

-- Location: LC_X5_Y3_N2
\counter[13]\ : maxii_lcell
-- Equation(s):
-- counter(13) = DFFEAS(((\Add0~65_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~4_combout\,
	datac => \Add0~65_combout\,
	datad => \Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LC_X5_Y2_N8
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = counter(14) $ ((((!(!\Add0~52\ & \Add0~67\) # (\Add0~52\ & \Add0~67COUT1_171\)))))
-- \Add0~72\ = CARRY((counter(14) & ((!\Add0~67\))))
-- \Add0~72COUT1_172\ = CARRY((counter(14) & ((!\Add0~67COUT1_171\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	cin => \Add0~52\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_172\);

-- Location: LC_X5_Y3_N1
\counter[14]\ : maxii_lcell
-- Equation(s):
-- counter(14) = DFFEAS(((\Add0~70_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LC_X5_Y2_N9
\Add0~75\ : maxii_lcell
-- Equation(s):
-- \Add0~75_combout\ = (counter(15) $ (((!\Add0~52\ & \Add0~72\) # (\Add0~52\ & \Add0~72COUT1_172\))))
-- \Add0~77\ = CARRY(((!\Add0~72COUT1_172\) # (!counter(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	cin => \Add0~52\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout => \Add0~77\);

-- Location: LC_X5_Y3_N3
\counter[15]\ : maxii_lcell
-- Equation(s):
-- counter(15) = DFFEAS(((\Add0~75_combout\ & ((!\Equal0~9_combout\) # (!\Equal0~4_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~9_combout\,
	datad => \Add0~75_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LC_X5_Y3_N7
\Equal0~3\ : maxii_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (counter(12) & (counter(14) & (counter(15) & counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(14),
	datac => counter(15),
	datad => counter(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X5_Y3_N9
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0\ & (\Equal0~2\ & \Equal0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0\,
	datac => \Equal0~2\,
	datad => \Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X6_Y2_N0
\Add0~90\ : maxii_lcell
-- Equation(s):
-- \Add0~90_combout\ = counter(16) $ ((((!\Add0~77\))))
-- \Add0~92\ = CARRY((counter(16) & ((!\Add0~77\))))
-- \Add0~92COUT1_173\ = CARRY((counter(16) & ((!\Add0~77\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	cin => \Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_173\);

-- Location: LC_X6_Y3_N1
\counter[16]\ : maxii_lcell
-- Equation(s):
-- \Equal0~5\ = (counter(17) & (!counter(18) & (!counter[16] & counter(19))))
-- counter(16) = DFFEAS(\Equal0~5\, GLOBAL(\CLK~combout\), VCC, , , \Add0~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => counter(17),
	datab => counter(18),
	datac => \Add0~90_combout\,
	datad => counter(19),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => counter(16));

-- Location: LC_X6_Y2_N1
\Add0~80\ : maxii_lcell
-- Equation(s):
-- \Add0~80_combout\ = (counter(17) $ (((!\Add0~77\ & \Add0~92\) # (\Add0~77\ & \Add0~92COUT1_173\))))
-- \Add0~82\ = CARRY(((!\Add0~92\) # (!counter(17))))
-- \Add0~82COUT1_174\ = CARRY(((!\Add0~92COUT1_173\) # (!counter(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	cin => \Add0~77\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_174\);

-- Location: LC_X6_Y3_N6
\counter[17]\ : maxii_lcell
-- Equation(s):
-- counter(17) = DFFEAS(((\Add0~80_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LC_X6_Y2_N2
\Add0~95\ : maxii_lcell
-- Equation(s):
-- \Add0~95_combout\ = counter(18) $ ((((!(!\Add0~77\ & \Add0~82\) # (\Add0~77\ & \Add0~82COUT1_174\)))))
-- \Add0~97\ = CARRY((counter(18) & ((!\Add0~82\))))
-- \Add0~97COUT1_175\ = CARRY((counter(18) & ((!\Add0~82COUT1_174\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	cin => \Add0~77\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_175\);

-- Location: LC_X7_Y3_N1
\counter[18]\ : maxii_lcell
-- Equation(s):
-- counter(18) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LC_X6_Y2_N3
\Add0~85\ : maxii_lcell
-- Equation(s):
-- \Add0~85_combout\ = (counter(19) $ (((!\Add0~77\ & \Add0~97\) # (\Add0~77\ & \Add0~97COUT1_175\))))
-- \Add0~87\ = CARRY(((!\Add0~97\) # (!counter(19))))
-- \Add0~87COUT1_176\ = CARRY(((!\Add0~97COUT1_175\) # (!counter(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	cin => \Add0~77\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_176\);

-- Location: LC_X6_Y3_N8
\counter[19]\ : maxii_lcell
-- Equation(s):
-- counter(19) = DFFEAS(((\Add0~85_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LC_X6_Y2_N4
\Add0~100\ : maxii_lcell
-- Equation(s):
-- \Add0~100_combout\ = (counter(20) $ ((!(!\Add0~77\ & \Add0~87\) # (\Add0~77\ & \Add0~87COUT1_176\))))
-- \Add0~102\ = CARRY(((counter(20) & !\Add0~87COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	cin => \Add0~77\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout => \Add0~102\);

-- Location: LC_X6_Y3_N3
\counter[20]\ : maxii_lcell
-- Equation(s):
-- counter(20) = DFFEAS(((\Add0~100_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20));

-- Location: LC_X6_Y2_N5
\Add0~105\ : maxii_lcell
-- Equation(s):
-- \Add0~105_combout\ = (counter(21) $ ((\Add0~102\)))
-- \Add0~107\ = CARRY(((!\Add0~102\) # (!counter(21))))
-- \Add0~107COUT1_177\ = CARRY(((!\Add0~102\) # (!counter(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	cin => \Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_177\);

-- Location: LC_X6_Y3_N2
\counter[21]\ : maxii_lcell
-- Equation(s):
-- counter(21) = DFFEAS(((\Add0~105_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

-- Location: LC_X6_Y2_N6
\Add0~110\ : maxii_lcell
-- Equation(s):
-- \Add0~110_combout\ = counter(22) $ ((((!(!\Add0~102\ & \Add0~107\) # (\Add0~102\ & \Add0~107COUT1_177\)))))
-- \Add0~112\ = CARRY((counter(22) & ((!\Add0~107\))))
-- \Add0~112COUT1_178\ = CARRY((counter(22) & ((!\Add0~107COUT1_177\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	cin => \Add0~102\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout0 => \Add0~112\,
	cout1 => \Add0~112COUT1_178\);

-- Location: LC_X6_Y3_N0
\counter[22]\ : maxii_lcell
-- Equation(s):
-- counter(22) = DFFEAS(((\Add0~110_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(22));

-- Location: LC_X6_Y2_N7
\Add0~115\ : maxii_lcell
-- Equation(s):
-- \Add0~115_combout\ = (counter(23) $ (((!\Add0~102\ & \Add0~112\) # (\Add0~102\ & \Add0~112COUT1_178\))))
-- \Add0~117\ = CARRY(((!\Add0~112\) # (!counter(23))))
-- \Add0~117COUT1_179\ = CARRY(((!\Add0~112COUT1_178\) # (!counter(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	cin => \Add0~102\,
	cin0 => \Add0~112\,
	cin1 => \Add0~112COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_179\);

-- Location: LC_X5_Y3_N5
\counter[23]\ : maxii_lcell
-- Equation(s):
-- counter(23) = DFFEAS(((\Add0~115_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~9_combout\,
	datac => \Add0~115_combout\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(23));

-- Location: LC_X6_Y3_N4
\Equal0~6\ : maxii_lcell
-- Equation(s):
-- \Equal0~6_combout\ = (counter(20) & (counter(22) & (counter(21) & counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datab => counter(22),
	datac => counter(21),
	datad => counter(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: LC_X6_Y2_N8
\Add0~125\ : maxii_lcell
-- Equation(s):
-- \Add0~125_combout\ = (counter(24) $ ((!(!\Add0~102\ & \Add0~117\) # (\Add0~102\ & \Add0~117COUT1_179\))))
-- \Add0~127\ = CARRY(((counter(24) & !\Add0~117\)))
-- \Add0~127COUT1_180\ = CARRY(((counter(24) & !\Add0~117COUT1_179\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	cin => \Add0~102\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_180\);

-- Location: LC_X7_Y2_N0
\Add0~130\ : maxii_lcell
-- Equation(s):
-- \Add0~130_combout\ = (counter(26) $ ((!\Add0~122\)))
-- \Add0~132\ = CARRY(((counter(26) & !\Add0~122\)))
-- \Add0~132COUT1_181\ = CARRY(((counter(26) & !\Add0~122\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	cin => \Add0~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout0 => \Add0~132\,
	cout1 => \Add0~132COUT1_181\);

-- Location: LC_X7_Y2_N6
\counter[26]\ : maxii_lcell
-- Equation(s):
-- counter(26) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(26));

-- Location: LC_X6_Y3_N5
\counter[24]\ : maxii_lcell
-- Equation(s):
-- \Equal0~7\ = (!counter(27) & (counter(25) & (!counter[24] & !counter(26))))
-- counter(24) = DFFEAS(\Equal0~7\, GLOBAL(\CLK~combout\), VCC, , , \Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => counter(27),
	datab => counter(25),
	datac => \Add0~125_combout\,
	datad => counter(26),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7\,
	regout => counter(24));

-- Location: LC_X6_Y2_N9
\Add0~120\ : maxii_lcell
-- Equation(s):
-- \Add0~120_combout\ = (counter(25) $ (((!\Add0~102\ & \Add0~127\) # (\Add0~102\ & \Add0~127COUT1_180\))))
-- \Add0~122\ = CARRY(((!\Add0~127COUT1_180\) # (!counter(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	cin => \Add0~102\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout => \Add0~122\);

-- Location: LC_X6_Y3_N7
\counter[25]\ : maxii_lcell
-- Equation(s):
-- counter(25) = DFFEAS(((\Add0~120_combout\ & ((!\Equal0~4_combout\) # (!\Equal0~9_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add0~120_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(25));

-- Location: LC_X7_Y2_N1
\Add0~135\ : maxii_lcell
-- Equation(s):
-- \Add0~135_combout\ = (counter(27) $ (((!\Add0~122\ & \Add0~132\) # (\Add0~122\ & \Add0~132COUT1_181\))))
-- \Add0~137\ = CARRY(((!\Add0~132\) # (!counter(27))))
-- \Add0~137COUT1_182\ = CARRY(((!\Add0~132COUT1_181\) # (!counter(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(27),
	cin => \Add0~122\,
	cin0 => \Add0~132\,
	cin1 => \Add0~132COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~135_combout\,
	cout0 => \Add0~137\,
	cout1 => \Add0~137COUT1_182\);

-- Location: LC_X7_Y1_N8
\counter[27]\ : maxii_lcell
-- Equation(s):
-- counter(27) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~135_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(27));

-- Location: LC_X7_Y2_N2
\Add0~140\ : maxii_lcell
-- Equation(s):
-- \Add0~140_combout\ = (counter(28) $ ((!(!\Add0~122\ & \Add0~137\) # (\Add0~122\ & \Add0~137COUT1_182\))))
-- \Add0~142\ = CARRY(((counter(28) & !\Add0~137\)))
-- \Add0~142COUT1_183\ = CARRY(((counter(28) & !\Add0~137COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	cin => \Add0~122\,
	cin0 => \Add0~137\,
	cin1 => \Add0~137COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout0 => \Add0~142\,
	cout1 => \Add0~142COUT1_183\);

-- Location: LC_X7_Y2_N3
\Add0~145\ : maxii_lcell
-- Equation(s):
-- \Add0~145_combout\ = counter(29) $ (((((!\Add0~122\ & \Add0~142\) # (\Add0~122\ & \Add0~142COUT1_183\)))))
-- \Add0~147\ = CARRY(((!\Add0~142\)) # (!counter(29)))
-- \Add0~147COUT1_184\ = CARRY(((!\Add0~142COUT1_183\)) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	cin => \Add0~122\,
	cin0 => \Add0~142\,
	cin1 => \Add0~142COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~145_combout\,
	cout0 => \Add0~147\,
	cout1 => \Add0~147COUT1_184\);

-- Location: LC_X7_Y2_N4
\Add0~150\ : maxii_lcell
-- Equation(s):
-- \Add0~150_combout\ = counter(30) $ ((((!(!\Add0~122\ & \Add0~147\) # (\Add0~122\ & \Add0~147COUT1_184\)))))
-- \Add0~152\ = CARRY((counter(30) & ((!\Add0~147COUT1_184\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(30),
	cin => \Add0~122\,
	cin0 => \Add0~147\,
	cin1 => \Add0~147COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~150_combout\,
	cout => \Add0~152\);

-- Location: LC_X7_Y2_N7
\counter[30]\ : maxii_lcell
-- Equation(s):
-- counter(30) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~150_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(30));

-- Location: LC_X7_Y2_N5
\Add0~155\ : maxii_lcell
-- Equation(s):
-- \Add0~155_combout\ = counter(31) $ ((((\Add0~152\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	cin => \Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~155_combout\);

-- Location: LC_X7_Y2_N9
\counter[31]\ : maxii_lcell
-- Equation(s):
-- counter(31) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , , \Add0~155_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \Add0~155_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(31));

-- Location: LC_X7_Y3_N8
\counter[28]\ : maxii_lcell
-- Equation(s):
-- \Equal0~8\ = (!counter(29) & (!counter(30) & (!counter[28] & !counter(31))))
-- counter(28) = DFFEAS(\Equal0~8\, GLOBAL(\CLK~combout\), VCC, , , \Add0~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => counter(29),
	datab => counter(30),
	datac => \Add0~140_combout\,
	datad => counter(31),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8\,
	regout => counter(28));

-- Location: LC_X7_Y2_N8
\counter[29]\ : maxii_lcell
-- Equation(s):
-- counter(29) = DFFEAS((((\Add0~145_combout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \Add0~145_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(29));

-- Location: LC_X6_Y3_N9
\Equal0~9\ : maxii_lcell
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~6_combout\ & (\Equal0~5\ & (\Equal0~7\ & \Equal0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5\,
	datac => \Equal0~7\,
	datad => \Equal0~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9_combout\);

-- Location: LC_X5_Y3_N4
clk_div : maxii_lcell
-- Equation(s):
-- \clk_div~regout\ = DFFEAS((\clk_div~regout\ $ (((\Equal0~9_combout\ & \Equal0~4_combout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datab => \Equal0~9_combout\,
	datac => \clk_div~regout\,
	datad => \Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div~regout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \clk_div~regout\,
	oe => VCC,
	padio => ww_LED);
END structure;


