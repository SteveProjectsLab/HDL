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

-- DATE "01/20/2025 17:28:20"

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
	LED : OUT std_logic_vector(3 DOWNTO 0);
	FPGA_CLK1_50 : IN std_logic;
	PCB_RS : OUT std_logic;
	PCB_RW : OUT std_logic;
	PCB_E : OUT std_logic;
	DB : OUT std_logic_vector(7 DOWNTO 0)
	);
END top;

-- Design Ports Information
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
-- SW[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \FPGA_CLK1_50~input_o\ : std_logic;
SIGNAL \FPGA_CLK1_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \w_led1~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \state.s5~q\ : std_logic;
SIGNAL \state.s0~0_combout\ : std_logic;
SIGNAL \state.s0~DUPLICATE_q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.s1~q\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \state.s0~q\ : std_logic;
SIGNAL \delay[5]~0_combout\ : std_logic;
SIGNAL \delay[5]~21_combout\ : std_logic;
SIGNAL \w_led2~0_combout\ : std_logic;
SIGNAL \delay[3]~26_combout\ : std_logic;
SIGNAL \delay[18]~27_combout\ : std_logic;
SIGNAL \delay[5]~23_combout\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \delay[0]~24_combout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \delay[1]~25_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \delay[2]~28_combout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \delay[3]~29_combout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \delay[5]~30_combout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \delay[5]~22_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \delay[22]~3_combout\ : std_logic;
SIGNAL \delay[8]~31_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \delay[10]~32_combout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \delay[11]~33_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \delay[12]~15_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \delay[13]~16_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \delay[14]~17_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \delay[15]~18_combout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \delay[16]~19_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \delay[17]~20_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \delay[18]~9_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \delay[19]~10_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \delay[20]~11_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \delay[21]~12_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \delay[22]~13_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \delay[23]~14_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \delay[24]~2_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \delay[25]~4_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \delay[26]~5_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \delay[27]~6_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \delay[28]~7_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \delay[29]~8_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \delay[30]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.s2~q\ : std_logic;
SIGNAL \state.s3~q\ : std_logic;
SIGNAL \state.s4~q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \w_led0~q\ : std_logic;
SIGNAL \w_led1~q\ : std_logic;
SIGNAL \w_led2~q\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector42~1_combout\ : std_logic;
SIGNAL \w_lcd_enable~q\ : std_logic;
SIGNAL \lcd_controller|Add0~125_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~126\ : std_logic;
SIGNAL \lcd_controller|Add0~121_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~122\ : std_logic;
SIGNAL \lcd_controller|Add0~113_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~114\ : std_logic;
SIGNAL \lcd_controller|Add0~105_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~106\ : std_logic;
SIGNAL \lcd_controller|Add0~97_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~98\ : std_logic;
SIGNAL \lcd_controller|Add0~101_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~102\ : std_logic;
SIGNAL \lcd_controller|Add0~93_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~94\ : std_logic;
SIGNAL \lcd_controller|Add0~73_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~74\ : std_logic;
SIGNAL \lcd_controller|Add0~77_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~78\ : std_logic;
SIGNAL \lcd_controller|Add0~85_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~86\ : std_logic;
SIGNAL \lcd_controller|Add0~89_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~90\ : std_logic;
SIGNAL \lcd_controller|Add0~81_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~82\ : std_logic;
SIGNAL \lcd_controller|Add0~69_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~70\ : std_logic;
SIGNAL \lcd_controller|Add0~61_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~62\ : std_logic;
SIGNAL \lcd_controller|Add0~65_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~66\ : std_logic;
SIGNAL \lcd_controller|Add0~53_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~54\ : std_logic;
SIGNAL \lcd_controller|Add0~57_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~58\ : std_logic;
SIGNAL \lcd_controller|Add0~13_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~14\ : std_logic;
SIGNAL \lcd_controller|Add0~17_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~18\ : std_logic;
SIGNAL \lcd_controller|Add0~21_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~22\ : std_logic;
SIGNAL \lcd_controller|Add0~25_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~26\ : std_logic;
SIGNAL \lcd_controller|Add0~29_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~30\ : std_logic;
SIGNAL \lcd_controller|Add0~33_sumout\ : std_logic;
SIGNAL \lcd_controller|clk_count[22]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|Add0~34\ : std_logic;
SIGNAL \lcd_controller|Add0~37_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~38\ : std_logic;
SIGNAL \lcd_controller|Add0~41_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~42\ : std_logic;
SIGNAL \lcd_controller|Add0~45_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~46\ : std_logic;
SIGNAL \lcd_controller|Add0~49_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~50\ : std_logic;
SIGNAL \lcd_controller|Add0~1_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~2\ : std_logic;
SIGNAL \lcd_controller|Add0~5_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~6\ : std_logic;
SIGNAL \lcd_controller|Add0~9_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~10\ : std_logic;
SIGNAL \lcd_controller|Add0~109_sumout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~5_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~1_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[20]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|LessThan0~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~5_combout\ : std_logic;
SIGNAL \lcd_controller|Selector34~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector35~0_combout\ : std_logic;
SIGNAL \lcd_controller|state.send~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|LessThan0~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~6_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~7_combout\ : std_logic;
SIGNAL \lcd_controller|lcd_data[4]~3_combout\ : std_logic;
SIGNAL \lcd_controller|state.power_up~q\ : std_logic;
SIGNAL \lcd_controller|clk_count[5]~1_combout\ : std_logic;
SIGNAL \lcd_controller|lcd_data[4]~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~6_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[5]~3_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[5]~4_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[5]~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan7~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan1~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan7~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan8~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan8~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan8~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~5_combout\ : std_logic;
SIGNAL \lcd_controller|lcd_data[4]~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~10_combout\ : std_logic;
SIGNAL \lcd_controller|state~7_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan5~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector43~4_combout\ : std_logic;
SIGNAL \lcd_controller|Selector43~0_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[5]~2_combout\ : std_logic;
SIGNAL \lcd_controller|Add0~110\ : std_logic;
SIGNAL \lcd_controller|Add0~117_sumout\ : std_logic;
SIGNAL \lcd_controller|state.send~q\ : std_logic;
SIGNAL \lcd_controller|Selector34~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan7~2_combout\ : std_logic;
SIGNAL \lcd_controller|state~6_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan8~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~9_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~8_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~0_combout\ : std_logic;
SIGNAL \lcd_controller|busy~3_combout\ : std_logic;
SIGNAL \lcd_controller|state~8_combout\ : std_logic;
SIGNAL \lcd_controller|state.initialize~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|Selector33~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector33~1_combout\ : std_logic;
SIGNAL \lcd_controller|state.initialize~q\ : std_logic;
SIGNAL \lcd_controller|lcd_data[4]~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector34~2_combout\ : std_logic;
SIGNAL \lcd_controller|state.ready~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|Selector45~0_combout\ : std_logic;
SIGNAL \lcd_controller|rs~0_combout\ : std_logic;
SIGNAL \lcd_controller|rs~q\ : std_logic;
SIGNAL \lcd_controller|Selector46~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan11~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan11~1_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|LessThan12~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan12~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan12~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan10~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan10~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan10~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~7_combout\ : std_logic;
SIGNAL \lcd_controller|e~q\ : std_logic;
SIGNAL \lcd_controller|Selector46~8_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan2~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan2~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan4~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan4~1_combout\ : std_logic;
SIGNAL \lcd_controller|busy~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~7_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan1~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan1~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~5_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~6_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan5~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan5~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~9_combout\ : std_logic;
SIGNAL \lcd_controller|e~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|state.ready~q\ : std_logic;
SIGNAL \lcd_controller|Selector45~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector45~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector45~3_combout\ : std_logic;
SIGNAL \lcd_controller|lcd_data[4]~2_combout\ : std_logic;
SIGNAL \lcd_controller|lcd_data[1]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|Selector44~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector44~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector44~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector42~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector43~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~11_combout\ : std_logic;
SIGNAL \lcd_controller|Selector43~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan2~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector43~3_combout\ : std_logic;
SIGNAL \lcd_controller|Selector42~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector42~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector41~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector41~1_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd_controller|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL w_lcd_bus : std_logic_vector(9 DOWNTO 0);
SIGNAL delay : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd_controller|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan12~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan12~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan12~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan11~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan11~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan10~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~6_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_busy~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state.send~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state.initialize~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector45~0_combout\ : std_logic;
SIGNAL \ALT_INV_w_lcd_enable~q\ : std_logic;
SIGNAL ALT_INV_w_lcd_bus : std_logic_vector(1 DOWNTO 0);
SIGNAL \lcd_controller|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state.ready~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state.power_up~q\ : std_logic;
SIGNAL \ALT_INV_w_led2~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.s5~q\ : std_logic;
SIGNAL \ALT_INV_w_led1~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.s3~q\ : std_logic;
SIGNAL \ALT_INV_delay[5]~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.s2~q\ : std_logic;
SIGNAL \ALT_INV_state.s0~q\ : std_logic;
SIGNAL \ALT_INV_state.s4~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_lcd_data\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \lcd_controller|ALT_INV_e~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_rs~q\ : std_logic;
SIGNAL \ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Selector32~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector32~0_combout\ : std_logic;
SIGNAL \ALT_INV_delay[18]~27_combout\ : std_logic;
SIGNAL \ALT_INV_delay[3]~26_combout\ : std_logic;
SIGNAL \ALT_INV_delay[5]~23_combout\ : std_logic;
SIGNAL \ALT_INV_delay[5]~22_combout\ : std_logic;
SIGNAL \ALT_INV_delay[5]~21_combout\ : std_logic;
SIGNAL \ALT_INV_delay[22]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector24~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector33~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state~8_combout\ : std_logic;
SIGNAL \ALT_INV_Selector42~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[5]~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[5]~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_lcd_data[4]~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector34~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector34~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.s1~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL ALT_INV_delay : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector41~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector42~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector43~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector42~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector43~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector43~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~11_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector44~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector44~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_lcd_data[4]~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_lcd_data[4]~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state~7_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state~6_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan7~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan8~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~10_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector45~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector45~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_busy~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~8_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~7_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan10~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan10~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state.send~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state.ready~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_state.s0~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_lcd_data[1]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_e~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[22]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[5]~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[5]~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector43~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan8~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~0_combout\ : std_logic;

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
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\lcd_controller|ALT_INV_clk_count\(1) <= NOT \lcd_controller|clk_count\(1);
\lcd_controller|ALT_INV_clk_count\(2) <= NOT \lcd_controller|clk_count\(2);
\lcd_controller|ALT_INV_clk_count\(3) <= NOT \lcd_controller|clk_count\(3);
\lcd_controller|ALT_INV_clk_count\(4) <= NOT \lcd_controller|clk_count\(4);
\lcd_controller|ALT_INV_Add0~117_sumout\ <= NOT \lcd_controller|Add0~117_sumout\;
\lcd_controller|ALT_INV_Add0~113_sumout\ <= NOT \lcd_controller|Add0~113_sumout\;
\lcd_controller|ALT_INV_Add0~109_sumout\ <= NOT \lcd_controller|Add0~109_sumout\;
\lcd_controller|ALT_INV_Add0~105_sumout\ <= NOT \lcd_controller|Add0~105_sumout\;
\lcd_controller|ALT_INV_Add0~101_sumout\ <= NOT \lcd_controller|Add0~101_sumout\;
\lcd_controller|ALT_INV_Add0~97_sumout\ <= NOT \lcd_controller|Add0~97_sumout\;
\lcd_controller|ALT_INV_Add0~93_sumout\ <= NOT \lcd_controller|Add0~93_sumout\;
\lcd_controller|ALT_INV_Add0~89_sumout\ <= NOT \lcd_controller|Add0~89_sumout\;
\lcd_controller|ALT_INV_Add0~85_sumout\ <= NOT \lcd_controller|Add0~85_sumout\;
\lcd_controller|ALT_INV_Add0~81_sumout\ <= NOT \lcd_controller|Add0~81_sumout\;
\lcd_controller|ALT_INV_Add0~77_sumout\ <= NOT \lcd_controller|Add0~77_sumout\;
\lcd_controller|ALT_INV_Add0~73_sumout\ <= NOT \lcd_controller|Add0~73_sumout\;
\lcd_controller|ALT_INV_Add0~69_sumout\ <= NOT \lcd_controller|Add0~69_sumout\;
\lcd_controller|ALT_INV_Add0~65_sumout\ <= NOT \lcd_controller|Add0~65_sumout\;
\lcd_controller|ALT_INV_Add0~61_sumout\ <= NOT \lcd_controller|Add0~61_sumout\;
\lcd_controller|ALT_INV_Add0~57_sumout\ <= NOT \lcd_controller|Add0~57_sumout\;
\lcd_controller|ALT_INV_Add0~53_sumout\ <= NOT \lcd_controller|Add0~53_sumout\;
\lcd_controller|ALT_INV_Add0~49_sumout\ <= NOT \lcd_controller|Add0~49_sumout\;
\lcd_controller|ALT_INV_Add0~45_sumout\ <= NOT \lcd_controller|Add0~45_sumout\;
\lcd_controller|ALT_INV_Add0~41_sumout\ <= NOT \lcd_controller|Add0~41_sumout\;
\lcd_controller|ALT_INV_Add0~37_sumout\ <= NOT \lcd_controller|Add0~37_sumout\;
\lcd_controller|ALT_INV_Add0~33_sumout\ <= NOT \lcd_controller|Add0~33_sumout\;
\lcd_controller|ALT_INV_Add0~29_sumout\ <= NOT \lcd_controller|Add0~29_sumout\;
\lcd_controller|ALT_INV_Add0~25_sumout\ <= NOT \lcd_controller|Add0~25_sumout\;
\lcd_controller|ALT_INV_Add0~21_sumout\ <= NOT \lcd_controller|Add0~21_sumout\;
\lcd_controller|ALT_INV_Add0~17_sumout\ <= NOT \lcd_controller|Add0~17_sumout\;
\lcd_controller|ALT_INV_Add0~13_sumout\ <= NOT \lcd_controller|Add0~13_sumout\;
\lcd_controller|ALT_INV_Add0~9_sumout\ <= NOT \lcd_controller|Add0~9_sumout\;
\lcd_controller|ALT_INV_Add0~5_sumout\ <= NOT \lcd_controller|Add0~5_sumout\;
\lcd_controller|ALT_INV_Add0~1_sumout\ <= NOT \lcd_controller|Add0~1_sumout\;
\lcd_controller|ALT_INV_clk_count\(29) <= NOT \lcd_controller|clk_count\(29);
\lcd_controller|ALT_INV_clk_count\(30) <= NOT \lcd_controller|clk_count\(30);
\lcd_controller|ALT_INV_clk_count\(28) <= NOT \lcd_controller|clk_count\(28);
\lcd_controller|ALT_INV_clk_count\(27) <= NOT \lcd_controller|clk_count\(27);
\lcd_controller|ALT_INV_clk_count\(26) <= NOT \lcd_controller|clk_count\(26);
\lcd_controller|ALT_INV_clk_count\(25) <= NOT \lcd_controller|clk_count\(25);
\lcd_controller|ALT_INV_clk_count\(24) <= NOT \lcd_controller|clk_count\(24);
\lcd_controller|ALT_INV_clk_count\(23) <= NOT \lcd_controller|clk_count\(23);
\lcd_controller|ALT_INV_clk_count\(22) <= NOT \lcd_controller|clk_count\(22);
\lcd_controller|ALT_INV_clk_count\(31) <= NOT \lcd_controller|clk_count\(31);
\lcd_controller|ALT_INV_clk_count\(18) <= NOT \lcd_controller|clk_count\(18);
\lcd_controller|ALT_INV_clk_count\(17) <= NOT \lcd_controller|clk_count\(17);
\lcd_controller|ALT_INV_clk_count\(20) <= NOT \lcd_controller|clk_count\(20);
\lcd_controller|ALT_INV_clk_count\(19) <= NOT \lcd_controller|clk_count\(19);
\lcd_controller|ALT_INV_clk_count\(16) <= NOT \lcd_controller|clk_count\(16);
\lcd_controller|ALT_INV_clk_count\(15) <= NOT \lcd_controller|clk_count\(15);
\lcd_controller|ALT_INV_clk_count\(14) <= NOT \lcd_controller|clk_count\(14);
\lcd_controller|ALT_INV_clk_count\(8) <= NOT \lcd_controller|clk_count\(8);
\lcd_controller|ALT_INV_clk_count\(7) <= NOT \lcd_controller|clk_count\(7);
\lcd_controller|ALT_INV_clk_count\(6) <= NOT \lcd_controller|clk_count\(6);
\lcd_controller|ALT_INV_clk_count\(5) <= NOT \lcd_controller|clk_count\(5);
\lcd_controller|ALT_INV_clk_count\(9) <= NOT \lcd_controller|clk_count\(9);
\lcd_controller|ALT_INV_clk_count\(10) <= NOT \lcd_controller|clk_count\(10);
\lcd_controller|ALT_INV_clk_count\(12) <= NOT \lcd_controller|clk_count\(12);
\lcd_controller|ALT_INV_clk_count\(11) <= NOT \lcd_controller|clk_count\(11);
\lcd_controller|ALT_INV_clk_count\(13) <= NOT \lcd_controller|clk_count\(13);
\lcd_controller|ALT_INV_clk_count\(21) <= NOT \lcd_controller|clk_count\(21);
\lcd_controller|ALT_INV_LessThan12~2_combout\ <= NOT \lcd_controller|LessThan12~2_combout\;
\lcd_controller|ALT_INV_LessThan12~1_combout\ <= NOT \lcd_controller|LessThan12~1_combout\;
\lcd_controller|ALT_INV_LessThan12~0_combout\ <= NOT \lcd_controller|LessThan12~0_combout\;
\lcd_controller|ALT_INV_LessThan11~1_combout\ <= NOT \lcd_controller|LessThan11~1_combout\;
\lcd_controller|ALT_INV_LessThan11~0_combout\ <= NOT \lcd_controller|LessThan11~0_combout\;
\lcd_controller|ALT_INV_LessThan10~0_combout\ <= NOT \lcd_controller|LessThan10~0_combout\;
\lcd_controller|ALT_INV_LessThan9~2_combout\ <= NOT \lcd_controller|LessThan9~2_combout\;
\lcd_controller|ALT_INV_LessThan9~1_combout\ <= NOT \lcd_controller|LessThan9~1_combout\;
\lcd_controller|ALT_INV_Selector46~6_combout\ <= NOT \lcd_controller|Selector46~6_combout\;
\lcd_controller|ALT_INV_Selector46~5_combout\ <= NOT \lcd_controller|Selector46~5_combout\;
\lcd_controller|ALT_INV_LessThan1~2_combout\ <= NOT \lcd_controller|LessThan1~2_combout\;
\lcd_controller|ALT_INV_LessThan6~4_combout\ <= NOT \lcd_controller|LessThan6~4_combout\;
\lcd_controller|ALT_INV_LessThan1~1_combout\ <= NOT \lcd_controller|LessThan1~1_combout\;
\lcd_controller|ALT_INV_LessThan3~7_combout\ <= NOT \lcd_controller|LessThan3~7_combout\;
\lcd_controller|ALT_INV_LessThan3~6_combout\ <= NOT \lcd_controller|LessThan3~6_combout\;
\lcd_controller|ALT_INV_Selector46~4_combout\ <= NOT \lcd_controller|Selector46~4_combout\;
\lcd_controller|ALT_INV_busy~2_combout\ <= NOT \lcd_controller|busy~2_combout\;
\lcd_controller|ALT_INV_LessThan6~3_combout\ <= NOT \lcd_controller|LessThan6~3_combout\;
\lcd_controller|ALT_INV_LessThan6~2_combout\ <= NOT \lcd_controller|LessThan6~2_combout\;
\lcd_controller|ALT_INV_LessThan6~1_combout\ <= NOT \lcd_controller|LessThan6~1_combout\;
\lcd_controller|ALT_INV_Selector46~3_combout\ <= NOT \lcd_controller|Selector46~3_combout\;
\lcd_controller|ALT_INV_Selector46~2_combout\ <= NOT \lcd_controller|Selector46~2_combout\;
\lcd_controller|ALT_INV_LessThan7~1_combout\ <= NOT \lcd_controller|LessThan7~1_combout\;
\lcd_controller|ALT_INV_LessThan7~0_combout\ <= NOT \lcd_controller|LessThan7~0_combout\;
\lcd_controller|ALT_INV_LessThan1~0_combout\ <= NOT \lcd_controller|LessThan1~0_combout\;
\lcd_controller|ALT_INV_LessThan8~0_combout\ <= NOT \lcd_controller|LessThan8~0_combout\;
\lcd_controller|ALT_INV_LessThan6~0_combout\ <= NOT \lcd_controller|LessThan6~0_combout\;
\lcd_controller|ALT_INV_LessThan3~5_combout\ <= NOT \lcd_controller|LessThan3~5_combout\;
\lcd_controller|ALT_INV_LessThan3~4_combout\ <= NOT \lcd_controller|LessThan3~4_combout\;
\lcd_controller|ALT_INV_Selector46~1_combout\ <= NOT \lcd_controller|Selector46~1_combout\;
\lcd_controller|ALT_INV_LessThan5~2_combout\ <= NOT \lcd_controller|LessThan5~2_combout\;
\lcd_controller|ALT_INV_LessThan5~1_combout\ <= NOT \lcd_controller|LessThan5~1_combout\;
\lcd_controller|ALT_INV_LessThan5~0_combout\ <= NOT \lcd_controller|LessThan5~0_combout\;
\lcd_controller|ALT_INV_LessThan4~1_combout\ <= NOT \lcd_controller|LessThan4~1_combout\;
\lcd_controller|ALT_INV_LessThan4~0_combout\ <= NOT \lcd_controller|LessThan4~0_combout\;
\lcd_controller|ALT_INV_LessThan2~1_combout\ <= NOT \lcd_controller|LessThan2~1_combout\;
\lcd_controller|ALT_INV_LessThan2~0_combout\ <= NOT \lcd_controller|LessThan2~0_combout\;
\lcd_controller|ALT_INV_LessThan3~3_combout\ <= NOT \lcd_controller|LessThan3~3_combout\;
\lcd_controller|ALT_INV_LessThan3~2_combout\ <= NOT \lcd_controller|LessThan3~2_combout\;
\lcd_controller|ALT_INV_LessThan3~1_combout\ <= NOT \lcd_controller|LessThan3~1_combout\;
\lcd_controller|ALT_INV_LessThan3~0_combout\ <= NOT \lcd_controller|LessThan3~0_combout\;
\lcd_controller|ALT_INV_Selector46~0_combout\ <= NOT \lcd_controller|Selector46~0_combout\;
\lcd_controller|ALT_INV_state.send~q\ <= NOT \lcd_controller|state.send~q\;
\lcd_controller|ALT_INV_state.initialize~q\ <= NOT \lcd_controller|state.initialize~q\;
\lcd_controller|ALT_INV_Selector45~0_combout\ <= NOT \lcd_controller|Selector45~0_combout\;
\ALT_INV_w_lcd_enable~q\ <= NOT \w_lcd_enable~q\;
ALT_INV_w_lcd_bus(0) <= NOT w_lcd_bus(0);
\lcd_controller|ALT_INV_LessThan0~7_combout\ <= NOT \lcd_controller|LessThan0~7_combout\;
\lcd_controller|ALT_INV_LessThan0~6_combout\ <= NOT \lcd_controller|LessThan0~6_combout\;
\lcd_controller|ALT_INV_LessThan9~0_combout\ <= NOT \lcd_controller|LessThan9~0_combout\;
\lcd_controller|ALT_INV_LessThan0~5_combout\ <= NOT \lcd_controller|LessThan0~5_combout\;
\lcd_controller|ALT_INV_LessThan0~4_combout\ <= NOT \lcd_controller|LessThan0~4_combout\;
\lcd_controller|ALT_INV_LessThan0~3_combout\ <= NOT \lcd_controller|LessThan0~3_combout\;
\lcd_controller|ALT_INV_LessThan0~2_combout\ <= NOT \lcd_controller|LessThan0~2_combout\;
\lcd_controller|ALT_INV_LessThan0~1_combout\ <= NOT \lcd_controller|LessThan0~1_combout\;
\lcd_controller|ALT_INV_LessThan0~0_combout\ <= NOT \lcd_controller|LessThan0~0_combout\;
\lcd_controller|ALT_INV_state.ready~q\ <= NOT \lcd_controller|state.ready~q\;
\lcd_controller|ALT_INV_state.power_up~q\ <= NOT \lcd_controller|state.power_up~q\;
\ALT_INV_w_led2~0_combout\ <= NOT \w_led2~0_combout\;
\ALT_INV_state.s5~q\ <= NOT \state.s5~q\;
\ALT_INV_w_led1~0_combout\ <= NOT \w_led1~0_combout\;
\ALT_INV_state.s3~q\ <= NOT \state.s3~q\;
\ALT_INV_delay[5]~0_combout\ <= NOT \delay[5]~0_combout\;
\ALT_INV_state.s2~q\ <= NOT \state.s2~q\;
\ALT_INV_state.s0~q\ <= NOT \state.s0~q\;
\ALT_INV_state.s4~q\ <= NOT \state.s4~q\;
\lcd_controller|ALT_INV_lcd_data\(1) <= NOT \lcd_controller|lcd_data\(1);
\lcd_controller|ALT_INV_e~q\ <= NOT \lcd_controller|e~q\;
\lcd_controller|ALT_INV_rs~q\ <= NOT \lcd_controller|rs~q\;
\lcd_controller|ALT_INV_clk_count\(0) <= NOT \lcd_controller|clk_count\(0);
\ALT_INV_Add0~121_sumout\ <= NOT \Add0~121_sumout\;
\ALT_INV_Add0~117_sumout\ <= NOT \Add0~117_sumout\;
\ALT_INV_Add0~113_sumout\ <= NOT \Add0~113_sumout\;
\ALT_INV_Add0~109_sumout\ <= NOT \Add0~109_sumout\;
\ALT_INV_Add0~105_sumout\ <= NOT \Add0~105_sumout\;
\ALT_INV_Add0~101_sumout\ <= NOT \Add0~101_sumout\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\ALT_INV_Add0~93_sumout\ <= NOT \Add0~93_sumout\;
\ALT_INV_Add0~89_sumout\ <= NOT \Add0~89_sumout\;
\ALT_INV_Add0~85_sumout\ <= NOT \Add0~85_sumout\;
\ALT_INV_Add0~81_sumout\ <= NOT \Add0~81_sumout\;
\ALT_INV_Add0~77_sumout\ <= NOT \Add0~77_sumout\;
\ALT_INV_Add0~73_sumout\ <= NOT \Add0~73_sumout\;
\ALT_INV_Add0~69_sumout\ <= NOT \Add0~69_sumout\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Selector32~1_combout\ <= NOT \Selector32~1_combout\;
\ALT_INV_Selector32~0_combout\ <= NOT \Selector32~0_combout\;
\ALT_INV_delay[18]~27_combout\ <= NOT \delay[18]~27_combout\;
\ALT_INV_delay[3]~26_combout\ <= NOT \delay[3]~26_combout\;
\ALT_INV_delay[5]~23_combout\ <= NOT \delay[5]~23_combout\;
\ALT_INV_delay[5]~22_combout\ <= NOT \delay[5]~22_combout\;
\ALT_INV_delay[5]~21_combout\ <= NOT \delay[5]~21_combout\;
\ALT_INV_delay[22]~3_combout\ <= NOT \delay[22]~3_combout\;
\ALT_INV_Selector24~0_combout\ <= NOT \Selector24~0_combout\;
\lcd_controller|ALT_INV_Selector33~0_combout\ <= NOT \lcd_controller|Selector33~0_combout\;
\lcd_controller|ALT_INV_state~8_combout\ <= NOT \lcd_controller|state~8_combout\;
\ALT_INV_Selector42~0_combout\ <= NOT \Selector42~0_combout\;
\lcd_controller|ALT_INV_clk_count[5]~1_combout\ <= NOT \lcd_controller|clk_count[5]~1_combout\;
\lcd_controller|ALT_INV_clk_count[5]~0_combout\ <= NOT \lcd_controller|clk_count[5]~0_combout\;
\lcd_controller|ALT_INV_lcd_data[4]~4_combout\ <= NOT \lcd_controller|lcd_data[4]~4_combout\;
\lcd_controller|ALT_INV_Selector34~1_combout\ <= NOT \lcd_controller|Selector34~1_combout\;
\lcd_controller|ALT_INV_Selector34~0_combout\ <= NOT \lcd_controller|Selector34~0_combout\;
\ALT_INV_state.s1~q\ <= NOT \state.s1~q\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
ALT_INV_delay(11) <= NOT delay(11);
ALT_INV_delay(10) <= NOT delay(10);
ALT_INV_delay(9) <= NOT delay(9);
ALT_INV_delay(8) <= NOT delay(8);
ALT_INV_delay(7) <= NOT delay(7);
ALT_INV_delay(6) <= NOT delay(6);
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
ALT_INV_delay(5) <= NOT delay(5);
ALT_INV_delay(4) <= NOT delay(4);
ALT_INV_delay(3) <= NOT delay(3);
ALT_INV_delay(2) <= NOT delay(2);
ALT_INV_delay(1) <= NOT delay(1);
ALT_INV_delay(0) <= NOT delay(0);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
ALT_INV_delay(17) <= NOT delay(17);
ALT_INV_delay(16) <= NOT delay(16);
ALT_INV_delay(15) <= NOT delay(15);
ALT_INV_delay(14) <= NOT delay(14);
ALT_INV_delay(13) <= NOT delay(13);
ALT_INV_delay(12) <= NOT delay(12);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_delay(23) <= NOT delay(23);
ALT_INV_delay(22) <= NOT delay(22);
ALT_INV_delay(21) <= NOT delay(21);
ALT_INV_delay(20) <= NOT delay(20);
ALT_INV_delay(19) <= NOT delay(19);
ALT_INV_delay(18) <= NOT delay(18);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_delay(29) <= NOT delay(29);
ALT_INV_delay(28) <= NOT delay(28);
ALT_INV_delay(27) <= NOT delay(27);
ALT_INV_delay(26) <= NOT delay(26);
ALT_INV_delay(25) <= NOT delay(25);
ALT_INV_delay(24) <= NOT delay(24);
ALT_INV_delay(30) <= NOT delay(30);
\lcd_controller|ALT_INV_Selector41~0_combout\ <= NOT \lcd_controller|Selector41~0_combout\;
\lcd_controller|ALT_INV_Selector42~1_combout\ <= NOT \lcd_controller|Selector42~1_combout\;
\lcd_controller|ALT_INV_Selector43~2_combout\ <= NOT \lcd_controller|Selector43~2_combout\;
\lcd_controller|ALT_INV_Selector42~0_combout\ <= NOT \lcd_controller|Selector42~0_combout\;
\lcd_controller|ALT_INV_Selector43~1_combout\ <= NOT \lcd_controller|Selector43~1_combout\;
\lcd_controller|ALT_INV_Selector43~0_combout\ <= NOT \lcd_controller|Selector43~0_combout\;
\lcd_controller|ALT_INV_LessThan2~2_combout\ <= NOT \lcd_controller|LessThan2~2_combout\;
\lcd_controller|ALT_INV_LessThan3~11_combout\ <= NOT \lcd_controller|LessThan3~11_combout\;
\lcd_controller|ALT_INV_Selector44~1_combout\ <= NOT \lcd_controller|Selector44~1_combout\;
ALT_INV_w_lcd_bus(1) <= NOT w_lcd_bus(1);
\lcd_controller|ALT_INV_Selector44~0_combout\ <= NOT \lcd_controller|Selector44~0_combout\;
\lcd_controller|ALT_INV_lcd_data[4]~1_combout\ <= NOT \lcd_controller|lcd_data[4]~1_combout\;
\lcd_controller|ALT_INV_lcd_data[4]~0_combout\ <= NOT \lcd_controller|lcd_data[4]~0_combout\;
\lcd_controller|ALT_INV_state~7_combout\ <= NOT \lcd_controller|state~7_combout\;
\lcd_controller|ALT_INV_state~6_combout\ <= NOT \lcd_controller|state~6_combout\;
\lcd_controller|ALT_INV_LessThan7~2_combout\ <= NOT \lcd_controller|LessThan7~2_combout\;
\lcd_controller|ALT_INV_LessThan8~1_combout\ <= NOT \lcd_controller|LessThan8~1_combout\;
\lcd_controller|ALT_INV_LessThan3~10_combout\ <= NOT \lcd_controller|LessThan3~10_combout\;
\lcd_controller|ALT_INV_Selector45~2_combout\ <= NOT \lcd_controller|Selector45~2_combout\;
\lcd_controller|ALT_INV_Selector45~1_combout\ <= NOT \lcd_controller|Selector45~1_combout\;
\lcd_controller|ALT_INV_busy~3_combout\ <= NOT \lcd_controller|busy~3_combout\;
\lcd_controller|ALT_INV_LessThan3~9_combout\ <= NOT \lcd_controller|LessThan3~9_combout\;
\lcd_controller|ALT_INV_LessThan3~8_combout\ <= NOT \lcd_controller|LessThan3~8_combout\;
\lcd_controller|ALT_INV_Selector46~8_combout\ <= NOT \lcd_controller|Selector46~8_combout\;
\lcd_controller|ALT_INV_Selector46~7_combout\ <= NOT \lcd_controller|Selector46~7_combout\;
\lcd_controller|ALT_INV_LessThan9~5_combout\ <= NOT \lcd_controller|LessThan9~5_combout\;
\lcd_controller|ALT_INV_LessThan9~4_combout\ <= NOT \lcd_controller|LessThan9~4_combout\;
\lcd_controller|ALT_INV_LessThan9~3_combout\ <= NOT \lcd_controller|LessThan9~3_combout\;
\lcd_controller|ALT_INV_LessThan10~2_combout\ <= NOT \lcd_controller|LessThan10~2_combout\;
\lcd_controller|ALT_INV_LessThan10~1_combout\ <= NOT \lcd_controller|LessThan10~1_combout\;
\lcd_controller|ALT_INV_state.send~DUPLICATE_q\ <= NOT \lcd_controller|state.send~DUPLICATE_q\;
\lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\ <= NOT \lcd_controller|state.initialize~DUPLICATE_q\;
\lcd_controller|ALT_INV_state.ready~DUPLICATE_q\ <= NOT \lcd_controller|state.ready~DUPLICATE_q\;
\ALT_INV_state.s0~DUPLICATE_q\ <= NOT \state.s0~DUPLICATE_q\;
\lcd_controller|ALT_INV_lcd_data[1]~DUPLICATE_q\ <= NOT \lcd_controller|lcd_data[1]~DUPLICATE_q\;
\lcd_controller|ALT_INV_e~DUPLICATE_q\ <= NOT \lcd_controller|e~DUPLICATE_q\;
\lcd_controller|ALT_INV_clk_count[1]~DUPLICATE_q\ <= NOT \lcd_controller|clk_count[1]~DUPLICATE_q\;
\lcd_controller|ALT_INV_clk_count[22]~DUPLICATE_q\ <= NOT \lcd_controller|clk_count[22]~DUPLICATE_q\;
\lcd_controller|ALT_INV_clk_count[20]~DUPLICATE_q\ <= NOT \lcd_controller|clk_count[20]~DUPLICATE_q\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\lcd_controller|ALT_INV_clk_count[5]~4_combout\ <= NOT \lcd_controller|clk_count[5]~4_combout\;
\lcd_controller|ALT_INV_clk_count[5]~3_combout\ <= NOT \lcd_controller|clk_count[5]~3_combout\;
\lcd_controller|ALT_INV_Selector43~4_combout\ <= NOT \lcd_controller|Selector43~4_combout\;
\lcd_controller|ALT_INV_LessThan8~3_combout\ <= NOT \lcd_controller|LessThan8~3_combout\;
\lcd_controller|ALT_INV_LessThan8~2_combout\ <= NOT \lcd_controller|LessThan8~2_combout\;
\ALT_INV_Selector27~0_combout\ <= NOT \Selector27~0_combout\;

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
	i => \lcd_controller|rs~q\,
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
	i => \lcd_controller|e~DUPLICATE_q\,
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
	i => \lcd_controller|lcd_data\(0),
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
	i => \lcd_controller|lcd_data\(1),
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
	i => \lcd_controller|lcd_data\(2),
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
	i => \lcd_controller|lcd_data\(3),
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
	i => \lcd_controller|lcd_data\(4),
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
	i => \lcd_controller|lcd_data\(4),
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

-- Location: MLABCELL_X87_Y11_N27
\w_led1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \w_led1~0_combout\ = ( \state.s2~q\ & ( \state.s3~q\ ) ) # ( !\state.s2~q\ & ( \state.s3~q\ ) ) # ( \state.s2~q\ & ( !\state.s3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.s2~q\,
	dataf => \ALT_INV_state.s3~q\,
	combout => \w_led1~0_combout\);

-- Location: MLABCELL_X84_Y11_N21
\Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = ( !\state.s4~q\ & ( !\w_led1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_w_led1~0_combout\,
	dataf => \ALT_INV_state.s4~q\,
	combout => \Selector32~0_combout\);

-- Location: FF_X84_Y10_N13
\state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \state.s4~q\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s5~q\);

-- Location: MLABCELL_X84_Y10_N48
\state.s0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.s0~0_combout\ = ( !\state.s5~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_state.s5~q\,
	combout => \state.s0~0_combout\);

-- Location: FF_X84_Y10_N49
\state.s0~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \state.s0~0_combout\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y10_N39
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \state.s0~DUPLICATE_q\ & ( (!\SW[0]~input_o\ & \state.s1~q\) ) ) # ( !\state.s0~DUPLICATE_q\ & ( ((!\SW[0]~input_o\ & \state.s1~q\)) # (\Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110111011001100111011101100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_state.s1~q\,
	dataf => \ALT_INV_state.s0~DUPLICATE_q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X84_Y10_N41
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

-- Location: MLABCELL_X84_Y10_N27
\Selector32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = ( !\state.s5~q\ & ( (!\state.s1~q\ & \state.s0~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.s1~q\,
	datac => \ALT_INV_state.s0~DUPLICATE_q\,
	dataf => \ALT_INV_state.s5~q\,
	combout => \Selector32~1_combout\);

-- Location: FF_X84_Y10_N50
\state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \state.s0~0_combout\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s0~q\);

-- Location: MLABCELL_X84_Y10_N51
\delay[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[5]~0_combout\ = ( !\state.s2~q\ & ( \state.s0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s0~q\,
	dataf => \ALT_INV_state.s2~q\,
	combout => \delay[5]~0_combout\);

-- Location: MLABCELL_X84_Y10_N36
\delay[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[5]~21_combout\ = ( \delay[5]~0_combout\ & ( (!\state.s1~q\ & ((\Equal0~5_combout\))) # (\state.s1~q\ & (\SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_state.s1~q\,
	dataf => \ALT_INV_delay[5]~0_combout\,
	combout => \delay[5]~21_combout\);

-- Location: LABCELL_X83_Y11_N21
\w_led2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \w_led2~0_combout\ = ( \state.s4~q\ & ( \state.s5~q\ ) ) # ( !\state.s4~q\ & ( \state.s5~q\ ) ) # ( \state.s4~q\ & ( !\state.s5~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_state.s4~q\,
	dataf => \ALT_INV_state.s5~q\,
	combout => \w_led2~0_combout\);

-- Location: MLABCELL_X84_Y11_N9
\delay[3]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[3]~26_combout\ = ( \Equal0~5_combout\ & ( (!\state.s0~DUPLICATE_q\) # ((\state.s1~q\ & !\SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101111101010101010111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s0~DUPLICATE_q\,
	datac => \ALT_INV_state.s1~q\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \delay[3]~26_combout\);

-- Location: MLABCELL_X84_Y11_N45
\delay[18]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[18]~27_combout\ = ( \state.s1~q\ & ( (\SW[0]~input_o\ & \state.s0~DUPLICATE_q\) ) ) # ( !\state.s1~q\ & ( (\Equal0~5_combout\ & \state.s0~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_state.s0~DUPLICATE_q\,
	dataf => \ALT_INV_state.s1~q\,
	combout => \delay[18]~27_combout\);

-- Location: MLABCELL_X84_Y10_N15
\delay[5]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[5]~23_combout\ = ( \Equal0~5_combout\ & ( (!\state.s0~DUPLICATE_q\) # ((\state.s1~q\ & !\SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111000000000000000000001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s1~q\,
	datac => \ALT_INV_state.s0~DUPLICATE_q\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_Equal0~5_combout\,
	combout => \delay[5]~23_combout\);

-- Location: LABCELL_X85_Y11_N0
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( !delay(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~78\ = CARRY(( !delay(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(0),
	cin => GND,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: MLABCELL_X84_Y11_N27
\delay[0]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[0]~24_combout\ = ( \delay[5]~21_combout\ & ( (!\Equal0~5_combout\) # ((!\state.s2~q\) # (\delay[5]~23_combout\)) ) ) # ( !\delay[5]~21_combout\ & ( ((!\Add0~77_sumout\ & ((!\Equal0~5_combout\) # (!\state.s2~q\)))) # (\delay[5]~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111100001111111011110000111111101111111011111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_state.s2~q\,
	datac => \ALT_INV_delay[5]~23_combout\,
	datad => \ALT_INV_Add0~77_sumout\,
	dataf => \ALT_INV_delay[5]~21_combout\,
	combout => \delay[0]~24_combout\);

-- Location: FF_X84_Y11_N29
\delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(0));

-- Location: LABCELL_X85_Y11_N3
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( !delay(1) ) + ( VCC ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( !delay(1) ) + ( VCC ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(1),
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: MLABCELL_X84_Y11_N42
\delay[1]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[1]~25_combout\ = ( \delay[5]~21_combout\ & ( (!\Equal0~5_combout\) # ((!\state.s2~q\) # (\delay[5]~23_combout\)) ) ) # ( !\delay[5]~21_combout\ & ( ((!\Add0~81_sumout\ & ((!\Equal0~5_combout\) # (!\state.s2~q\)))) # (\delay[5]~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001110110011111100111011001111111111101110111111111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_delay[5]~23_combout\,
	datac => \ALT_INV_Add0~81_sumout\,
	datad => \ALT_INV_state.s2~q\,
	dataf => \ALT_INV_delay[5]~21_combout\,
	combout => \delay[1]~25_combout\);

-- Location: FF_X84_Y11_N44
\delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(1));

-- Location: LABCELL_X85_Y11_N6
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( !delay(2) ) + ( VCC ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( !delay(2) ) + ( VCC ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(2),
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: MLABCELL_X84_Y11_N36
\delay[2]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[2]~28_combout\ = ( \Equal0~5_combout\ & ( (((!\Add0~85_sumout\ & !\delay[18]~27_combout\)) # (\delay[3]~26_combout\)) # (\w_led2~0_combout\) ) ) # ( !\Equal0~5_combout\ & ( ((!\Add0~85_sumout\ & ((!\delay[18]~27_combout\) # (\w_led2~0_combout\)))) 
-- # (\delay[3]~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001101110011111100110111001111110111011101111111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w_led2~0_combout\,
	datab => \ALT_INV_delay[3]~26_combout\,
	datac => \ALT_INV_Add0~85_sumout\,
	datad => \ALT_INV_delay[18]~27_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \delay[2]~28_combout\);

-- Location: FF_X84_Y11_N38
\delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(2));

-- Location: LABCELL_X85_Y11_N9
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( !delay(3) ) + ( VCC ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( !delay(3) ) + ( VCC ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(3),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: MLABCELL_X84_Y11_N39
\delay[3]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[3]~29_combout\ = ( \Equal0~5_combout\ & ( (((!\delay[18]~27_combout\ & !\Add0~89_sumout\)) # (\delay[3]~26_combout\)) # (\w_led2~0_combout\) ) ) # ( !\Equal0~5_combout\ & ( ((!\Add0~89_sumout\ & ((!\delay[18]~27_combout\) # (\w_led2~0_combout\)))) 
-- # (\delay[3]~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100110011111101110011001111110111011101111111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w_led2~0_combout\,
	datab => \ALT_INV_delay[3]~26_combout\,
	datac => \ALT_INV_delay[18]~27_combout\,
	datad => \ALT_INV_Add0~89_sumout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \delay[3]~29_combout\);

-- Location: FF_X84_Y11_N41
\delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(3));

-- Location: LABCELL_X85_Y11_N12
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( !delay(4) ) + ( VCC ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( !delay(4) ) + ( VCC ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(4),
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: MLABCELL_X84_Y11_N54
\Selector32~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = ( \Selector32~1_combout\ & ( \Add0~93_sumout\ & ( (\Selector32~0_combout\ & ((!\SW[0]~input_o\) # (!\state.s1~q\))) ) ) ) # ( !\Selector32~1_combout\ & ( \Add0~93_sumout\ & ( (\Equal0~5_combout\ & (\Selector32~0_combout\ & 
-- ((!\SW[0]~input_o\) # (!\state.s1~q\)))) ) ) ) # ( \Selector32~1_combout\ & ( !\Add0~93_sumout\ & ( (!\Equal0~5_combout\ & ((!\SW[0]~input_o\) # ((!\state.s1~q\)))) # (\Equal0~5_combout\ & (\Selector32~0_combout\ & ((!\SW[0]~input_o\) # (!\state.s1~q\)))) 
-- ) ) ) # ( !\Selector32~1_combout\ & ( !\Add0~93_sumout\ & ( (!\Equal0~5_combout\ & ((!\SW[0]~input_o\) # ((!\state.s1~q\)))) # (\Equal0~5_combout\ & (\Selector32~0_combout\ & ((!\SW[0]~input_o\) # (!\state.s1~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110001100101011111000110000000101000001000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_Selector32~0_combout\,
	datad => \ALT_INV_state.s1~q\,
	datae => \ALT_INV_Selector32~1_combout\,
	dataf => \ALT_INV_Add0~93_sumout\,
	combout => \Selector32~2_combout\);

-- Location: FF_X84_Y11_N56
\delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Selector32~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(4));

-- Location: LABCELL_X85_Y11_N15
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( !delay(5) ) + ( VCC ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( !delay(5) ) + ( VCC ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(5),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: MLABCELL_X84_Y11_N24
\delay[5]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[5]~30_combout\ = ( \delay[5]~23_combout\ ) # ( !\delay[5]~23_combout\ & ( (!\Equal0~5_combout\ & (((!\Add0~97_sumout\) # (\delay[5]~21_combout\)))) # (\Equal0~5_combout\ & (!\state.s2~q\ & ((!\Add0~97_sumout\) # (\delay[5]~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000001110111011100000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_state.s2~q\,
	datac => \ALT_INV_delay[5]~21_combout\,
	datad => \ALT_INV_Add0~97_sumout\,
	dataf => \ALT_INV_delay[5]~23_combout\,
	combout => \delay[5]~30_combout\);

-- Location: FF_X84_Y11_N26
\delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(5));

-- Location: LABCELL_X85_Y11_N18
\Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( delay(6) ) + ( VCC ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( delay(6) ) + ( VCC ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(6),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: MLABCELL_X84_Y11_N30
\Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = ( \Selector32~1_combout\ & ( \Add0~101_sumout\ & ( (!\Selector32~0_combout\) # ((\SW[0]~input_o\ & \state.s1~q\)) ) ) ) # ( !\Selector32~1_combout\ & ( \Add0~101_sumout\ & ( (!\Equal0~5_combout\) # ((!\Selector32~0_combout\) # 
-- ((\SW[0]~input_o\ & \state.s1~q\))) ) ) ) # ( \Selector32~1_combout\ & ( !\Add0~101_sumout\ & ( (!\Equal0~5_combout\ & (\SW[0]~input_o\ & ((\state.s1~q\)))) # (\Equal0~5_combout\ & ((!\Selector32~0_combout\) # ((\SW[0]~input_o\ & \state.s1~q\)))) ) ) ) # 
-- ( !\Selector32~1_combout\ & ( !\Add0~101_sumout\ & ( (!\Equal0~5_combout\ & (\SW[0]~input_o\ & ((\state.s1~q\)))) # (\Equal0~5_combout\ & ((!\Selector32~0_combout\) # ((\SW[0]~input_o\ & \state.s1~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001110011010100000111001111111010111110111111000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_Selector32~0_combout\,
	datad => \ALT_INV_state.s1~q\,
	datae => \ALT_INV_Selector32~1_combout\,
	dataf => \ALT_INV_Add0~101_sumout\,
	combout => \Selector30~0_combout\);

-- Location: FF_X84_Y11_N32
\delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(6));

-- Location: LABCELL_X85_Y11_N21
\Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( delay(7) ) + ( VCC ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( delay(7) ) + ( VCC ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(7),
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: LABCELL_X83_Y11_N36
\delay[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[5]~22_combout\ = ( !\state.s4~q\ & ( !\state.s5~q\ & ( !\state.s3~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.s3~q\,
	datae => \ALT_INV_state.s4~q\,
	dataf => \ALT_INV_state.s5~q\,
	combout => \delay[5]~22_combout\);

-- Location: MLABCELL_X84_Y11_N12
\Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = ( \SW[0]~input_o\ & ( \Equal0~5_combout\ & ( (!\delay[5]~22_combout\) # (\state.s1~q\) ) ) ) # ( !\SW[0]~input_o\ & ( \Equal0~5_combout\ & ( !\delay[5]~22_combout\ ) ) ) # ( \SW[0]~input_o\ & ( !\Equal0~5_combout\ & ( 
-- ((\Add0~105_sumout\ & ((!\delay[5]~22_combout\) # (!\delay[5]~0_combout\)))) # (\state.s1~q\) ) ) ) # ( !\SW[0]~input_o\ & ( !\Equal0~5_combout\ & ( (\Add0~105_sumout\ & (((!\delay[5]~22_combout\) # (!\delay[5]~0_combout\)) # (\state.s1~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010001011101110111001111110000111100001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~105_sumout\,
	datab => \ALT_INV_state.s1~q\,
	datac => \ALT_INV_delay[5]~22_combout\,
	datad => \ALT_INV_delay[5]~0_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Selector29~0_combout\);

-- Location: FF_X84_Y11_N14
\delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(7));

-- Location: MLABCELL_X84_Y10_N54
\Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = ( \SW[0]~input_o\ & ( ((\Equal0~5_combout\ & ((\state.s3~q\) # (\state.s4~q\)))) # (\state.s1~q\) ) ) # ( !\SW[0]~input_o\ & ( (!\state.s1~q\ & (\Equal0~5_combout\ & ((\state.s3~q\) # (\state.s4~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000000000000111000000001111011111110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s4~q\,
	datab => \ALT_INV_state.s3~q\,
	datac => \ALT_INV_state.s1~q\,
	datad => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \Selector24~0_combout\);

-- Location: LABCELL_X85_Y11_N24
\Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( !delay(8) ) + ( VCC ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( !delay(8) ) + ( VCC ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(8),
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: LABCELL_X85_Y12_N48
\delay[22]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[22]~3_combout\ = ( \Equal0~5_combout\ & ( \state.s0~DUPLICATE_q\ & ( (!\SW[0]~input_o\ & \state.s1~q\) ) ) ) # ( \Equal0~5_combout\ & ( !\state.s0~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_state.s1~q\,
	datae => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_state.s0~DUPLICATE_q\,
	combout => \delay[22]~3_combout\);

-- Location: LABCELL_X83_Y11_N9
\delay[8]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[8]~31_combout\ = ( \Add0~109_sumout\ & ( \delay[22]~3_combout\ ) ) # ( !\Add0~109_sumout\ & ( \delay[22]~3_combout\ ) ) # ( \Add0~109_sumout\ & ( !\delay[22]~3_combout\ & ( (\Equal0~5_combout\ & (!\Selector24~0_combout\ & ((\state.s2~q\) # 
-- (\state.s5~q\)))) ) ) ) # ( !\Add0~109_sumout\ & ( !\delay[22]~3_combout\ & ( !\Selector24~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000100110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s5~q\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_state.s2~q\,
	datad => \ALT_INV_Selector24~0_combout\,
	datae => \ALT_INV_Add0~109_sumout\,
	dataf => \ALT_INV_delay[22]~3_combout\,
	combout => \delay[8]~31_combout\);

-- Location: FF_X83_Y11_N11
\delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[8]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(8));

-- Location: LABCELL_X85_Y12_N42
\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ( !\state.s5~q\ & ( !\state.s3~q\ & ( (!\state.s1~q\) # (\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s1~q\,
	datab => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_state.s5~q\,
	dataf => \ALT_INV_state.s3~q\,
	combout => \Selector27~0_combout\);

-- Location: LABCELL_X85_Y11_N27
\Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( !delay(9) ) + ( VCC ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( !delay(9) ) + ( VCC ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(9),
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: LABCELL_X83_Y11_N27
\Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = ( !\state.s4~q\ & ( \Add0~113_sumout\ & ( ((\Selector27~0_combout\ & \delay[5]~0_combout\)) # (\Equal0~5_combout\) ) ) ) # ( \state.s4~q\ & ( !\Add0~113_sumout\ & ( !\Equal0~5_combout\ ) ) ) # ( !\state.s4~q\ & ( 
-- !\Add0~113_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101010101010101001010111010101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_Selector27~0_combout\,
	datac => \ALT_INV_delay[5]~0_combout\,
	datae => \ALT_INV_state.s4~q\,
	dataf => \ALT_INV_Add0~113_sumout\,
	combout => \Selector27~1_combout\);

-- Location: FF_X83_Y11_N29
\delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Selector27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(9));

-- Location: LABCELL_X85_Y11_N30
\Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( delay(10) ) + ( VCC ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( delay(10) ) + ( VCC ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(10),
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: LABCELL_X83_Y11_N45
\delay[10]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[10]~32_combout\ = ( \Selector24~0_combout\ & ( !\delay[22]~3_combout\ ) ) # ( !\Selector24~0_combout\ & ( !\delay[22]~3_combout\ & ( (\Add0~117_sumout\ & ((!\Equal0~5_combout\) # ((!\state.s5~q\ & !\state.s2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101100111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s5~q\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_state.s2~q\,
	datad => \ALT_INV_Add0~117_sumout\,
	datae => \ALT_INV_Selector24~0_combout\,
	dataf => \ALT_INV_delay[22]~3_combout\,
	combout => \delay[10]~32_combout\);

-- Location: FF_X83_Y11_N47
\delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[10]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(10));

-- Location: LABCELL_X85_Y11_N33
\Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( !delay(11) ) + ( VCC ) + ( \Add0~118\ ))
-- \Add0~122\ = CARRY(( !delay(11) ) + ( VCC ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(11),
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\,
	cout => \Add0~122\);

-- Location: MLABCELL_X84_Y11_N6
\delay[11]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[11]~33_combout\ = ( \Add0~121_sumout\ & ( ((\state.s0~DUPLICATE_q\ & (\state.s1~q\ & \SW[0]~input_o\))) # (\Equal0~5_combout\) ) ) # ( !\Add0~121_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s0~DUPLICATE_q\,
	datab => \ALT_INV_state.s1~q\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_Add0~121_sumout\,
	combout => \delay[11]~33_combout\);

-- Location: FF_X84_Y11_N8
\delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[11]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(11));

-- Location: MLABCELL_X84_Y11_N48
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( delay(9) & ( !delay(6) & ( (!delay(7) & (delay(8) & (!delay(10) & delay(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(7),
	datab => ALT_INV_delay(8),
	datac => ALT_INV_delay(10),
	datad => ALT_INV_delay(11),
	datae => ALT_INV_delay(9),
	dataf => ALT_INV_delay(6),
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X84_Y11_N0
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( delay(4) & ( delay(3) & ( (delay(2) & (delay(1) & (delay(5) & delay(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(2),
	datab => ALT_INV_delay(1),
	datac => ALT_INV_delay(5),
	datad => ALT_INV_delay(0),
	datae => ALT_INV_delay(4),
	dataf => ALT_INV_delay(3),
	combout => \Equal0~3_combout\);

-- Location: LABCELL_X85_Y11_N36
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( delay(12) ) + ( VCC ) + ( \Add0~122\ ))
-- \Add0~54\ = CARRY(( delay(12) ) + ( VCC ) + ( \Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(12),
	cin => \Add0~122\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X83_Y11_N3
\delay[12]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[12]~15_combout\ = ( \Add0~53_sumout\ & ( !\delay[22]~3_combout\ & ( !\Selector24~0_combout\ ) ) ) # ( !\Add0~53_sumout\ & ( !\delay[22]~3_combout\ & ( (\Equal0~5_combout\ & (!\Selector24~0_combout\ & ((\state.s2~q\) # (\state.s5~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s5~q\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_state.s2~q\,
	datad => \ALT_INV_Selector24~0_combout\,
	datae => \ALT_INV_Add0~53_sumout\,
	dataf => \ALT_INV_delay[22]~3_combout\,
	combout => \delay[12]~15_combout\);

-- Location: FF_X83_Y11_N5
\delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[12]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(12));

-- Location: LABCELL_X85_Y11_N39
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( delay(13) ) + ( VCC ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( delay(13) ) + ( VCC ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(13),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: MLABCELL_X87_Y11_N39
\delay[13]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[13]~16_combout\ = ( !\delay[22]~3_combout\ & ( \Add0~57_sumout\ & ( !\Selector24~0_combout\ ) ) ) # ( !\delay[22]~3_combout\ & ( !\Add0~57_sumout\ & ( (!\Selector24~0_combout\ & (\Equal0~5_combout\ & ((\state.s2~q\) # (\state.s5~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s5~q\,
	datab => \ALT_INV_state.s2~q\,
	datac => \ALT_INV_Selector24~0_combout\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_delay[22]~3_combout\,
	dataf => \ALT_INV_Add0~57_sumout\,
	combout => \delay[13]~16_combout\);

-- Location: FF_X87_Y11_N41
\delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(13));

-- Location: LABCELL_X85_Y11_N42
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( !delay(14) ) + ( VCC ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( !delay(14) ) + ( VCC ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(14),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: MLABCELL_X87_Y11_N45
\delay[14]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[14]~17_combout\ = ( \Add0~61_sumout\ & ( \delay[22]~3_combout\ ) ) # ( !\Add0~61_sumout\ & ( \delay[22]~3_combout\ ) ) # ( \Add0~61_sumout\ & ( !\delay[22]~3_combout\ & ( \Selector24~0_combout\ ) ) ) # ( !\Add0~61_sumout\ & ( !\delay[22]~3_combout\ 
-- & ( (!\Equal0~5_combout\) # (((!\state.s2~q\ & !\state.s5~q\)) # (\Selector24~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111110101111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_state.s2~q\,
	datac => \ALT_INV_Selector24~0_combout\,
	datad => \ALT_INV_state.s5~q\,
	datae => \ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_delay[22]~3_combout\,
	combout => \delay[14]~17_combout\);

-- Location: FF_X87_Y11_N47
\delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(14));

-- Location: LABCELL_X85_Y11_N45
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( delay(15) ) + ( VCC ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( delay(15) ) + ( VCC ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(15),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: MLABCELL_X87_Y11_N12
\delay[15]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[15]~18_combout\ = ( !\delay[22]~3_combout\ & ( \Add0~65_sumout\ & ( !\Selector24~0_combout\ ) ) ) # ( !\delay[22]~3_combout\ & ( !\Add0~65_sumout\ & ( (\Equal0~5_combout\ & (!\Selector24~0_combout\ & ((\state.s2~q\) # (\state.s5~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s5~q\,
	datab => \ALT_INV_state.s2~q\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_Selector24~0_combout\,
	datae => \ALT_INV_delay[22]~3_combout\,
	dataf => \ALT_INV_Add0~65_sumout\,
	combout => \delay[15]~18_combout\);

-- Location: FF_X87_Y11_N14
\delay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(15));

-- Location: LABCELL_X85_Y11_N48
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( delay(16) ) + ( VCC ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( delay(16) ) + ( VCC ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay(16),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: MLABCELL_X84_Y10_N42
\delay[16]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[16]~19_combout\ = ( \state.s1~q\ & ( (!\Equal0~5_combout\ & (\Add0~69_sumout\ & ((!\SW[0]~input_o\) # (!\state.s0~q\)))) ) ) # ( !\state.s1~q\ & ( (!\Equal0~5_combout\ & \Add0~69_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110010000000000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_state.s0~q\,
	datad => \ALT_INV_Add0~69_sumout\,
	dataf => \ALT_INV_state.s1~q\,
	combout => \delay[16]~19_combout\);

-- Location: FF_X84_Y10_N44
\delay[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[16]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(16));

-- Location: LABCELL_X85_Y11_N51
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( delay(17) ) + ( VCC ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( delay(17) ) + ( VCC ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(17),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: MLABCELL_X87_Y11_N54
\delay[17]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[17]~20_combout\ = ( \Add0~73_sumout\ & ( !\delay[22]~3_combout\ & ( !\Selector24~0_combout\ ) ) ) # ( !\Add0~73_sumout\ & ( !\delay[22]~3_combout\ & ( (\Equal0~5_combout\ & (!\Selector24~0_combout\ & ((\state.s2~q\) # (\state.s5~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s5~q\,
	datab => \ALT_INV_state.s2~q\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_Selector24~0_combout\,
	datae => \ALT_INV_Add0~73_sumout\,
	dataf => \ALT_INV_delay[22]~3_combout\,
	combout => \delay[17]~20_combout\);

-- Location: FF_X87_Y11_N56
\delay[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(17));

-- Location: MLABCELL_X82_Y11_N3
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !delay(16) & ( !delay(13) & ( (!delay(12) & (!delay(15) & (!delay(17) & delay(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(12),
	datab => ALT_INV_delay(15),
	datac => ALT_INV_delay(17),
	datad => ALT_INV_delay(14),
	datae => ALT_INV_delay(16),
	dataf => ALT_INV_delay(13),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X85_Y11_N54
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !delay(18) ) + ( VCC ) + ( \Add0~74\ ))
-- \Add0~30\ = CARRY(( !delay(18) ) + ( VCC ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(18),
	cin => \Add0~74\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: MLABCELL_X84_Y11_N18
\delay[18]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[18]~9_combout\ = ( \state.s1~q\ & ( ((!\Add0~29_sumout\) # ((\SW[0]~input_o\ & \state.s0~DUPLICATE_q\))) # (\Equal0~5_combout\) ) ) # ( !\state.s1~q\ & ( (!\Add0~29_sumout\) # (\Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111010101111111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_state.s0~DUPLICATE_q\,
	datad => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_state.s1~q\,
	combout => \delay[18]~9_combout\);

-- Location: FF_X84_Y11_N20
\delay[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[18]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(18));

-- Location: LABCELL_X85_Y11_N57
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !delay(19) ) + ( VCC ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( !delay(19) ) + ( VCC ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_delay(19),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: MLABCELL_X87_Y11_N18
\delay[19]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[19]~10_combout\ = ( \Add0~33_sumout\ & ( \delay[22]~3_combout\ ) ) # ( !\Add0~33_sumout\ & ( \delay[22]~3_combout\ ) ) # ( \Add0~33_sumout\ & ( !\delay[22]~3_combout\ & ( \Selector24~0_combout\ ) ) ) # ( !\Add0~33_sumout\ & ( !\delay[22]~3_combout\ 
-- & ( (!\Equal0~5_combout\) # (((!\state.s5~q\ & !\state.s2~q\)) # (\Selector24~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s5~q\,
	datab => \ALT_INV_state.s2~q\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_Selector24~0_combout\,
	datae => \ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_delay[22]~3_combout\,
	combout => \delay[19]~10_combout\);

-- Location: FF_X87_Y11_N20
\delay[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[19]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(19));

-- Location: LABCELL_X85_Y10_N0
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( delay(20) ) + ( VCC ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( delay(20) ) + ( VCC ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(20),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: MLABCELL_X84_Y10_N9
\delay[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[20]~11_combout\ = ( !\delay[22]~3_combout\ & ( \Add0~37_sumout\ & ( !\Selector24~0_combout\ ) ) ) # ( !\delay[22]~3_combout\ & ( !\Add0~37_sumout\ & ( (\Equal0~5_combout\ & (!\Selector24~0_combout\ & ((\state.s5~q\) # (\state.s2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s2~q\,
	datab => \ALT_INV_state.s5~q\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_Selector24~0_combout\,
	datae => \ALT_INV_delay[22]~3_combout\,
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \delay[20]~11_combout\);

-- Location: FF_X84_Y10_N11
\delay[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[20]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(20));

-- Location: LABCELL_X85_Y10_N3
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( delay(21) ) + ( VCC ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( delay(21) ) + ( VCC ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(21),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X83_Y10_N36
\delay[21]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[21]~12_combout\ = ( \state.s5~q\ & ( \state.s2~q\ & ( (!\delay[22]~3_combout\ & (!\Selector24~0_combout\ & ((\Equal0~5_combout\) # (\Add0~41_sumout\)))) ) ) ) # ( !\state.s5~q\ & ( \state.s2~q\ & ( (!\delay[22]~3_combout\ & (!\Selector24~0_combout\ 
-- & ((\Equal0~5_combout\) # (\Add0~41_sumout\)))) ) ) ) # ( \state.s5~q\ & ( !\state.s2~q\ & ( (!\delay[22]~3_combout\ & (!\Selector24~0_combout\ & ((\Equal0~5_combout\) # (\Add0~41_sumout\)))) ) ) ) # ( !\state.s5~q\ & ( !\state.s2~q\ & ( (\Add0~41_sumout\ 
-- & (!\delay[22]~3_combout\ & !\Selector24~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010011000000000001001100000000000100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~41_sumout\,
	datab => \ALT_INV_delay[22]~3_combout\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_Selector24~0_combout\,
	datae => \ALT_INV_state.s5~q\,
	dataf => \ALT_INV_state.s2~q\,
	combout => \delay[21]~12_combout\);

-- Location: FF_X83_Y10_N38
\delay[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[21]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(21));

-- Location: LABCELL_X85_Y10_N6
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( !delay(22) ) + ( VCC ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( !delay(22) ) + ( VCC ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(22),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X83_Y10_N33
\delay[22]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[22]~13_combout\ = ( \delay[22]~3_combout\ & ( \state.s5~q\ ) ) # ( !\delay[22]~3_combout\ & ( \state.s5~q\ & ( ((!\Equal0~5_combout\ & !\Add0~45_sumout\)) # (\Selector24~0_combout\) ) ) ) # ( \delay[22]~3_combout\ & ( !\state.s5~q\ ) ) # ( 
-- !\delay[22]~3_combout\ & ( !\state.s5~q\ & ( ((!\Add0~45_sumout\ & ((!\Equal0~5_combout\) # (!\state.s2~q\)))) # (\Selector24~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101100110011111111111111111110111011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_Selector24~0_combout\,
	datac => \ALT_INV_state.s2~q\,
	datad => \ALT_INV_Add0~45_sumout\,
	datae => \ALT_INV_delay[22]~3_combout\,
	dataf => \ALT_INV_state.s5~q\,
	combout => \delay[22]~13_combout\);

-- Location: FF_X83_Y10_N35
\delay[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[22]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(22));

-- Location: LABCELL_X85_Y10_N9
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( delay(23) ) + ( VCC ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( delay(23) ) + ( VCC ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(23),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: MLABCELL_X84_Y10_N6
\delay[23]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[23]~14_combout\ = ( !\delay[22]~3_combout\ & ( \Add0~49_sumout\ & ( !\Selector24~0_combout\ ) ) ) # ( !\delay[22]~3_combout\ & ( !\Add0~49_sumout\ & ( (!\Selector24~0_combout\ & (\Equal0~5_combout\ & ((\state.s5~q\) # (\state.s2~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s2~q\,
	datab => \ALT_INV_state.s5~q\,
	datac => \ALT_INV_Selector24~0_combout\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_delay[22]~3_combout\,
	dataf => \ALT_INV_Add0~49_sumout\,
	combout => \delay[23]~14_combout\);

-- Location: FF_X84_Y10_N8
\delay[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[23]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(23));

-- Location: LABCELL_X85_Y10_N42
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !delay(20) & ( delay(19) & ( (delay(18) & (!delay(21) & (delay(22) & !delay(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(18),
	datab => ALT_INV_delay(21),
	datac => ALT_INV_delay(22),
	datad => ALT_INV_delay(23),
	datae => ALT_INV_delay(20),
	dataf => ALT_INV_delay(19),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X85_Y10_N12
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( delay(24) ) + ( VCC ) + ( \Add0~50\ ))
-- \Add0~6\ = CARRY(( delay(24) ) + ( VCC ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay(24),
	cin => \Add0~50\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X84_Y10_N0
\delay[24]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[24]~2_combout\ = ( \state.s0~DUPLICATE_q\ & ( (!\Equal0~5_combout\ & (\Add0~5_sumout\ & ((!\SW[0]~input_o\) # (!\state.s1~q\)))) ) ) # ( !\state.s0~DUPLICATE_q\ & ( (!\Equal0~5_combout\ & \Add0~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_state.s1~q\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_Add0~5_sumout\,
	dataf => \ALT_INV_state.s0~DUPLICATE_q\,
	combout => \delay[24]~2_combout\);

-- Location: FF_X84_Y10_N2
\delay[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(24));

-- Location: LABCELL_X85_Y10_N15
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( delay(25) ) + ( VCC ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( delay(25) ) + ( VCC ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(25),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X83_Y10_N18
\delay[25]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[25]~4_combout\ = ( !\Selector24~0_combout\ & ( \state.s2~q\ & ( (!\delay[22]~3_combout\ & ((\Equal0~5_combout\) # (\Add0~9_sumout\))) ) ) ) # ( !\Selector24~0_combout\ & ( !\state.s2~q\ & ( (!\delay[22]~3_combout\ & (((\Equal0~5_combout\ & 
-- \state.s5~q\)) # (\Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001100000000000000000001001100010011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~9_sumout\,
	datab => \ALT_INV_delay[22]~3_combout\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_state.s5~q\,
	datae => \ALT_INV_Selector24~0_combout\,
	dataf => \ALT_INV_state.s2~q\,
	combout => \delay[25]~4_combout\);

-- Location: FF_X83_Y10_N20
\delay[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(25));

-- Location: LABCELL_X85_Y10_N18
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( delay(26) ) + ( VCC ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( delay(26) ) + ( VCC ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(26),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X84_Y10_N3
\delay[26]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[26]~5_combout\ = ( \state.s0~DUPLICATE_q\ & ( (\Add0~13_sumout\ & (!\Equal0~5_combout\ & ((!\SW[0]~input_o\) # (!\state.s1~q\)))) ) ) # ( !\state.s0~DUPLICATE_q\ & ( (\Add0~13_sumout\ & !\Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001110000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_state.s1~q\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_state.s0~DUPLICATE_q\,
	combout => \delay[26]~5_combout\);

-- Location: FF_X84_Y10_N5
\delay[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[26]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(26));

-- Location: LABCELL_X85_Y10_N21
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( delay(27) ) + ( VCC ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( delay(27) ) + ( VCC ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(27),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X84_Y10_N30
\delay[27]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[27]~6_combout\ = ( \state.s0~DUPLICATE_q\ & ( (\Add0~17_sumout\ & (!\Equal0~5_combout\ & ((!\SW[0]~input_o\) # (!\state.s1~q\)))) ) ) # ( !\state.s0~DUPLICATE_q\ & ( (\Add0~17_sumout\ & !\Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001110000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_state.s1~q\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_state.s0~DUPLICATE_q\,
	combout => \delay[27]~6_combout\);

-- Location: FF_X84_Y10_N32
\delay[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[27]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(27));

-- Location: LABCELL_X85_Y10_N24
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( delay(28) ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( delay(28) ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(28),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X84_Y10_N33
\delay[28]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[28]~7_combout\ = ( \state.s0~DUPLICATE_q\ & ( (\Add0~21_sumout\ & (!\Equal0~5_combout\ & ((!\SW[0]~input_o\) # (!\state.s1~q\)))) ) ) # ( !\state.s0~DUPLICATE_q\ & ( (\Add0~21_sumout\ & !\Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001110000000000000111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_state.s1~q\,
	datac => \ALT_INV_Add0~21_sumout\,
	datad => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_state.s0~DUPLICATE_q\,
	combout => \delay[28]~7_combout\);

-- Location: FF_X84_Y10_N35
\delay[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[28]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(28));

-- Location: LABCELL_X85_Y10_N27
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( delay(29) ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( delay(29) ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_delay(29),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X84_Y10_N24
\delay[29]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[29]~8_combout\ = ( \Add0~25_sumout\ & ( (!\Equal0~5_combout\ & ((!\state.s0~q\) # ((!\state.s1~q\) # (!\SW[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s0~q\,
	datab => \ALT_INV_state.s1~q\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \delay[29]~8_combout\);

-- Location: FF_X84_Y10_N26
\delay[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[29]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(29));

-- Location: LABCELL_X85_Y10_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( delay(30) ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_delay(30),
	cin => \Add0~26\,
	sumout => \Add0~1_sumout\);

-- Location: MLABCELL_X84_Y10_N45
\delay[30]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \delay[30]~1_combout\ = ( \Add0~1_sumout\ & ( (!\Equal0~5_combout\ & ((!\SW[0]~input_o\) # ((!\state.s1~q\) # (!\state.s0~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110010001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_state.s1~q\,
	datad => \ALT_INV_state.s0~DUPLICATE_q\,
	dataf => \ALT_INV_Add0~1_sumout\,
	combout => \delay[30]~1_combout\);

-- Location: FF_X84_Y10_N47
\delay[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \delay[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => delay(30));

-- Location: LABCELL_X85_Y10_N48
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !delay(26) & ( !delay(24) & ( (!delay(27) & (!delay(25) & (!delay(28) & !delay(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_delay(27),
	datab => ALT_INV_delay(25),
	datac => ALT_INV_delay(28),
	datad => ALT_INV_delay(29),
	datae => ALT_INV_delay(26),
	dataf => ALT_INV_delay(24),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X85_Y10_N36
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !delay(30) & ( \Equal0~0_combout\ & ( (\Equal0~4_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => ALT_INV_delay(30),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~5_combout\);

-- Location: MLABCELL_X84_Y10_N18
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \state.s1~q\ & ( \SW[0]~input_o\ ) ) # ( !\state.s1~q\ & ( (!\Equal0~5_combout\ & \state.s2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_state.s2~q\,
	dataf => \ALT_INV_state.s1~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X84_Y10_N20
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

-- Location: FF_X85_Y11_N47
\state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \state.s2~q\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s3~q\);

-- Location: FF_X83_Y11_N52
\state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \state.s3~q\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s4~q\);

-- Location: LABCELL_X83_Y10_N15
WideOr0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ( \delay[5]~0_combout\ & ( !\state.s4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.s4~q\,
	dataf => \ALT_INV_delay[5]~0_combout\,
	combout => \WideOr0~combout\);

-- Location: FF_X83_Y10_N16
w_led0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \WideOr0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_led0~q\);

-- Location: FF_X87_Y11_N28
w_led1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \w_led1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_led1~q\);

-- Location: FF_X84_Y11_N52
w_led2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \w_led2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_led2~q\);

-- Location: MLABCELL_X84_Y10_N57
\Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = ( \state.s2~q\ ) # ( !\state.s2~q\ & ( \state.s4~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s4~q\,
	dataf => \ALT_INV_state.s2~q\,
	combout => \Selector42~0_combout\);

-- Location: MLABCELL_X84_Y10_N21
\Selector42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector42~1_combout\ = ( \Selector42~0_combout\ ) # ( !\Selector42~0_combout\ & ( (\w_lcd_enable~q\ & ((!\state.s0~q\) # (\state.s1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.s0~q\,
	datac => \ALT_INV_state.s1~q\,
	datad => \ALT_INV_w_lcd_enable~q\,
	dataf => \ALT_INV_Selector42~0_combout\,
	combout => \Selector42~1_combout\);

-- Location: FF_X84_Y10_N22
w_lcd_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \Selector42~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \w_lcd_enable~q\);

-- Location: MLABCELL_X84_Y7_N0
\lcd_controller|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~125_sumout\ = SUM(( \lcd_controller|clk_count\(0) ) + ( VCC ) + ( !VCC ))
-- \lcd_controller|Add0~126\ = CARRY(( \lcd_controller|clk_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(0),
	cin => GND,
	sumout => \lcd_controller|Add0~125_sumout\,
	cout => \lcd_controller|Add0~126\);

-- Location: FF_X84_Y7_N2
\lcd_controller|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~125_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(0));

-- Location: MLABCELL_X84_Y7_N3
\lcd_controller|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~121_sumout\ = SUM(( \lcd_controller|clk_count\(1) ) + ( GND ) + ( \lcd_controller|Add0~126\ ))
-- \lcd_controller|Add0~122\ = CARRY(( \lcd_controller|clk_count\(1) ) + ( GND ) + ( \lcd_controller|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(1),
	cin => \lcd_controller|Add0~126\,
	sumout => \lcd_controller|Add0~121_sumout\,
	cout => \lcd_controller|Add0~122\);

-- Location: FF_X84_Y7_N5
\lcd_controller|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~121_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(1));

-- Location: MLABCELL_X84_Y7_N6
\lcd_controller|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~113_sumout\ = SUM(( \lcd_controller|clk_count\(2) ) + ( GND ) + ( \lcd_controller|Add0~122\ ))
-- \lcd_controller|Add0~114\ = CARRY(( \lcd_controller|clk_count\(2) ) + ( GND ) + ( \lcd_controller|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(2),
	cin => \lcd_controller|Add0~122\,
	sumout => \lcd_controller|Add0~113_sumout\,
	cout => \lcd_controller|Add0~114\);

-- Location: FF_X84_Y7_N8
\lcd_controller|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~113_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(2));

-- Location: MLABCELL_X84_Y7_N9
\lcd_controller|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~105_sumout\ = SUM(( \lcd_controller|clk_count\(3) ) + ( GND ) + ( \lcd_controller|Add0~114\ ))
-- \lcd_controller|Add0~106\ = CARRY(( \lcd_controller|clk_count\(3) ) + ( GND ) + ( \lcd_controller|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(3),
	cin => \lcd_controller|Add0~114\,
	sumout => \lcd_controller|Add0~105_sumout\,
	cout => \lcd_controller|Add0~106\);

-- Location: FF_X84_Y7_N11
\lcd_controller|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~105_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(3));

-- Location: MLABCELL_X84_Y7_N12
\lcd_controller|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~97_sumout\ = SUM(( \lcd_controller|clk_count\(4) ) + ( GND ) + ( \lcd_controller|Add0~106\ ))
-- \lcd_controller|Add0~98\ = CARRY(( \lcd_controller|clk_count\(4) ) + ( GND ) + ( \lcd_controller|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(4),
	cin => \lcd_controller|Add0~106\,
	sumout => \lcd_controller|Add0~97_sumout\,
	cout => \lcd_controller|Add0~98\);

-- Location: FF_X84_Y7_N14
\lcd_controller|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~97_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(4));

-- Location: MLABCELL_X84_Y7_N15
\lcd_controller|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~101_sumout\ = SUM(( \lcd_controller|clk_count\(5) ) + ( GND ) + ( \lcd_controller|Add0~98\ ))
-- \lcd_controller|Add0~102\ = CARRY(( \lcd_controller|clk_count\(5) ) + ( GND ) + ( \lcd_controller|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(5),
	cin => \lcd_controller|Add0~98\,
	sumout => \lcd_controller|Add0~101_sumout\,
	cout => \lcd_controller|Add0~102\);

-- Location: FF_X84_Y7_N17
\lcd_controller|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~101_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(5));

-- Location: MLABCELL_X84_Y7_N18
\lcd_controller|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~93_sumout\ = SUM(( \lcd_controller|clk_count\(6) ) + ( GND ) + ( \lcd_controller|Add0~102\ ))
-- \lcd_controller|Add0~94\ = CARRY(( \lcd_controller|clk_count\(6) ) + ( GND ) + ( \lcd_controller|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(6),
	cin => \lcd_controller|Add0~102\,
	sumout => \lcd_controller|Add0~93_sumout\,
	cout => \lcd_controller|Add0~94\);

-- Location: FF_X84_Y7_N20
\lcd_controller|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~93_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(6));

-- Location: MLABCELL_X84_Y7_N21
\lcd_controller|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~73_sumout\ = SUM(( \lcd_controller|clk_count\(7) ) + ( GND ) + ( \lcd_controller|Add0~94\ ))
-- \lcd_controller|Add0~74\ = CARRY(( \lcd_controller|clk_count\(7) ) + ( GND ) + ( \lcd_controller|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(7),
	cin => \lcd_controller|Add0~94\,
	sumout => \lcd_controller|Add0~73_sumout\,
	cout => \lcd_controller|Add0~74\);

-- Location: FF_X84_Y7_N23
\lcd_controller|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~73_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(7));

-- Location: MLABCELL_X84_Y7_N24
\lcd_controller|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~77_sumout\ = SUM(( \lcd_controller|clk_count\(8) ) + ( GND ) + ( \lcd_controller|Add0~74\ ))
-- \lcd_controller|Add0~78\ = CARRY(( \lcd_controller|clk_count\(8) ) + ( GND ) + ( \lcd_controller|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(8),
	cin => \lcd_controller|Add0~74\,
	sumout => \lcd_controller|Add0~77_sumout\,
	cout => \lcd_controller|Add0~78\);

-- Location: FF_X84_Y7_N26
\lcd_controller|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~77_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(8));

-- Location: MLABCELL_X84_Y7_N27
\lcd_controller|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~85_sumout\ = SUM(( \lcd_controller|clk_count\(9) ) + ( GND ) + ( \lcd_controller|Add0~78\ ))
-- \lcd_controller|Add0~86\ = CARRY(( \lcd_controller|clk_count\(9) ) + ( GND ) + ( \lcd_controller|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(9),
	cin => \lcd_controller|Add0~78\,
	sumout => \lcd_controller|Add0~85_sumout\,
	cout => \lcd_controller|Add0~86\);

-- Location: FF_X84_Y7_N29
\lcd_controller|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~85_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(9));

-- Location: MLABCELL_X84_Y7_N30
\lcd_controller|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~89_sumout\ = SUM(( \lcd_controller|clk_count\(10) ) + ( GND ) + ( \lcd_controller|Add0~86\ ))
-- \lcd_controller|Add0~90\ = CARRY(( \lcd_controller|clk_count\(10) ) + ( GND ) + ( \lcd_controller|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(10),
	cin => \lcd_controller|Add0~86\,
	sumout => \lcd_controller|Add0~89_sumout\,
	cout => \lcd_controller|Add0~90\);

-- Location: FF_X84_Y7_N32
\lcd_controller|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~89_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(10));

-- Location: MLABCELL_X84_Y7_N33
\lcd_controller|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~81_sumout\ = SUM(( \lcd_controller|clk_count\(11) ) + ( GND ) + ( \lcd_controller|Add0~90\ ))
-- \lcd_controller|Add0~82\ = CARRY(( \lcd_controller|clk_count\(11) ) + ( GND ) + ( \lcd_controller|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(11),
	cin => \lcd_controller|Add0~90\,
	sumout => \lcd_controller|Add0~81_sumout\,
	cout => \lcd_controller|Add0~82\);

-- Location: FF_X84_Y7_N35
\lcd_controller|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~81_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(11));

-- Location: MLABCELL_X84_Y7_N36
\lcd_controller|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~69_sumout\ = SUM(( \lcd_controller|clk_count\(12) ) + ( GND ) + ( \lcd_controller|Add0~82\ ))
-- \lcd_controller|Add0~70\ = CARRY(( \lcd_controller|clk_count\(12) ) + ( GND ) + ( \lcd_controller|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(12),
	cin => \lcd_controller|Add0~82\,
	sumout => \lcd_controller|Add0~69_sumout\,
	cout => \lcd_controller|Add0~70\);

-- Location: FF_X84_Y7_N38
\lcd_controller|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~69_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(12));

-- Location: MLABCELL_X84_Y7_N39
\lcd_controller|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~61_sumout\ = SUM(( \lcd_controller|clk_count\(13) ) + ( GND ) + ( \lcd_controller|Add0~70\ ))
-- \lcd_controller|Add0~62\ = CARRY(( \lcd_controller|clk_count\(13) ) + ( GND ) + ( \lcd_controller|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(13),
	cin => \lcd_controller|Add0~70\,
	sumout => \lcd_controller|Add0~61_sumout\,
	cout => \lcd_controller|Add0~62\);

-- Location: FF_X84_Y7_N41
\lcd_controller|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~61_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(13));

-- Location: MLABCELL_X84_Y7_N42
\lcd_controller|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~65_sumout\ = SUM(( \lcd_controller|clk_count\(14) ) + ( GND ) + ( \lcd_controller|Add0~62\ ))
-- \lcd_controller|Add0~66\ = CARRY(( \lcd_controller|clk_count\(14) ) + ( GND ) + ( \lcd_controller|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(14),
	cin => \lcd_controller|Add0~62\,
	sumout => \lcd_controller|Add0~65_sumout\,
	cout => \lcd_controller|Add0~66\);

-- Location: FF_X84_Y7_N44
\lcd_controller|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~65_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(14));

-- Location: MLABCELL_X84_Y7_N45
\lcd_controller|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~53_sumout\ = SUM(( \lcd_controller|clk_count\(15) ) + ( GND ) + ( \lcd_controller|Add0~66\ ))
-- \lcd_controller|Add0~54\ = CARRY(( \lcd_controller|clk_count\(15) ) + ( GND ) + ( \lcd_controller|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(15),
	cin => \lcd_controller|Add0~66\,
	sumout => \lcd_controller|Add0~53_sumout\,
	cout => \lcd_controller|Add0~54\);

-- Location: FF_X84_Y7_N47
\lcd_controller|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~53_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(15));

-- Location: MLABCELL_X84_Y7_N48
\lcd_controller|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~57_sumout\ = SUM(( \lcd_controller|clk_count\(16) ) + ( GND ) + ( \lcd_controller|Add0~54\ ))
-- \lcd_controller|Add0~58\ = CARRY(( \lcd_controller|clk_count\(16) ) + ( GND ) + ( \lcd_controller|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(16),
	cin => \lcd_controller|Add0~54\,
	sumout => \lcd_controller|Add0~57_sumout\,
	cout => \lcd_controller|Add0~58\);

-- Location: FF_X84_Y7_N50
\lcd_controller|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~57_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(16));

-- Location: MLABCELL_X84_Y7_N51
\lcd_controller|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~13_sumout\ = SUM(( \lcd_controller|clk_count\(17) ) + ( GND ) + ( \lcd_controller|Add0~58\ ))
-- \lcd_controller|Add0~14\ = CARRY(( \lcd_controller|clk_count\(17) ) + ( GND ) + ( \lcd_controller|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(17),
	cin => \lcd_controller|Add0~58\,
	sumout => \lcd_controller|Add0~13_sumout\,
	cout => \lcd_controller|Add0~14\);

-- Location: FF_X84_Y7_N53
\lcd_controller|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~13_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(17));

-- Location: MLABCELL_X84_Y7_N54
\lcd_controller|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~17_sumout\ = SUM(( \lcd_controller|clk_count\(18) ) + ( GND ) + ( \lcd_controller|Add0~14\ ))
-- \lcd_controller|Add0~18\ = CARRY(( \lcd_controller|clk_count\(18) ) + ( GND ) + ( \lcd_controller|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(18),
	cin => \lcd_controller|Add0~14\,
	sumout => \lcd_controller|Add0~17_sumout\,
	cout => \lcd_controller|Add0~18\);

-- Location: FF_X84_Y7_N56
\lcd_controller|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~17_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(18));

-- Location: MLABCELL_X84_Y7_N57
\lcd_controller|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~21_sumout\ = SUM(( \lcd_controller|clk_count\(19) ) + ( GND ) + ( \lcd_controller|Add0~18\ ))
-- \lcd_controller|Add0~22\ = CARRY(( \lcd_controller|clk_count\(19) ) + ( GND ) + ( \lcd_controller|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(19),
	cin => \lcd_controller|Add0~18\,
	sumout => \lcd_controller|Add0~21_sumout\,
	cout => \lcd_controller|Add0~22\);

-- Location: FF_X84_Y7_N59
\lcd_controller|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~21_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(19));

-- Location: MLABCELL_X84_Y6_N0
\lcd_controller|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~25_sumout\ = SUM(( \lcd_controller|clk_count\(20) ) + ( GND ) + ( \lcd_controller|Add0~22\ ))
-- \lcd_controller|Add0~26\ = CARRY(( \lcd_controller|clk_count\(20) ) + ( GND ) + ( \lcd_controller|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(20),
	cin => \lcd_controller|Add0~22\,
	sumout => \lcd_controller|Add0~25_sumout\,
	cout => \lcd_controller|Add0~26\);

-- Location: FF_X84_Y6_N38
\lcd_controller|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~25_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(20));

-- Location: MLABCELL_X84_Y6_N3
\lcd_controller|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~29_sumout\ = SUM(( \lcd_controller|clk_count\(21) ) + ( GND ) + ( \lcd_controller|Add0~26\ ))
-- \lcd_controller|Add0~30\ = CARRY(( \lcd_controller|clk_count\(21) ) + ( GND ) + ( \lcd_controller|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(21),
	cin => \lcd_controller|Add0~26\,
	sumout => \lcd_controller|Add0~29_sumout\,
	cout => \lcd_controller|Add0~30\);

-- Location: FF_X84_Y6_N55
\lcd_controller|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~29_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(21));

-- Location: MLABCELL_X84_Y6_N6
\lcd_controller|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~33_sumout\ = SUM(( \lcd_controller|clk_count[22]~DUPLICATE_q\ ) + ( GND ) + ( \lcd_controller|Add0~30\ ))
-- \lcd_controller|Add0~34\ = CARRY(( \lcd_controller|clk_count[22]~DUPLICATE_q\ ) + ( GND ) + ( \lcd_controller|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count[22]~DUPLICATE_q\,
	cin => \lcd_controller|Add0~30\,
	sumout => \lcd_controller|Add0~33_sumout\,
	cout => \lcd_controller|Add0~34\);

-- Location: FF_X84_Y6_N50
\lcd_controller|clk_count[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~33_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count[22]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y6_N9
\lcd_controller|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~37_sumout\ = SUM(( \lcd_controller|clk_count\(23) ) + ( GND ) + ( \lcd_controller|Add0~34\ ))
-- \lcd_controller|Add0~38\ = CARRY(( \lcd_controller|clk_count\(23) ) + ( GND ) + ( \lcd_controller|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(23),
	cin => \lcd_controller|Add0~34\,
	sumout => \lcd_controller|Add0~37_sumout\,
	cout => \lcd_controller|Add0~38\);

-- Location: FF_X84_Y6_N41
\lcd_controller|clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~37_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(23));

-- Location: MLABCELL_X84_Y6_N12
\lcd_controller|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~41_sumout\ = SUM(( \lcd_controller|clk_count\(24) ) + ( GND ) + ( \lcd_controller|Add0~38\ ))
-- \lcd_controller|Add0~42\ = CARRY(( \lcd_controller|clk_count\(24) ) + ( GND ) + ( \lcd_controller|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(24),
	cin => \lcd_controller|Add0~38\,
	sumout => \lcd_controller|Add0~41_sumout\,
	cout => \lcd_controller|Add0~42\);

-- Location: FF_X84_Y6_N59
\lcd_controller|clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~41_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(24));

-- Location: MLABCELL_X84_Y6_N15
\lcd_controller|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~45_sumout\ = SUM(( \lcd_controller|clk_count\(25) ) + ( GND ) + ( \lcd_controller|Add0~42\ ))
-- \lcd_controller|Add0~46\ = CARRY(( \lcd_controller|clk_count\(25) ) + ( GND ) + ( \lcd_controller|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(25),
	cin => \lcd_controller|Add0~42\,
	sumout => \lcd_controller|Add0~45_sumout\,
	cout => \lcd_controller|Add0~46\);

-- Location: FF_X84_Y6_N11
\lcd_controller|clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~45_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(25));

-- Location: MLABCELL_X84_Y6_N18
\lcd_controller|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~49_sumout\ = SUM(( \lcd_controller|clk_count\(26) ) + ( GND ) + ( \lcd_controller|Add0~46\ ))
-- \lcd_controller|Add0~50\ = CARRY(( \lcd_controller|clk_count\(26) ) + ( GND ) + ( \lcd_controller|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(26),
	cin => \lcd_controller|Add0~46\,
	sumout => \lcd_controller|Add0~49_sumout\,
	cout => \lcd_controller|Add0~50\);

-- Location: FF_X84_Y6_N44
\lcd_controller|clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~49_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(26));

-- Location: MLABCELL_X84_Y6_N21
\lcd_controller|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~1_sumout\ = SUM(( \lcd_controller|clk_count\(27) ) + ( GND ) + ( \lcd_controller|Add0~50\ ))
-- \lcd_controller|Add0~2\ = CARRY(( \lcd_controller|clk_count\(27) ) + ( GND ) + ( \lcd_controller|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(27),
	cin => \lcd_controller|Add0~50\,
	sumout => \lcd_controller|Add0~1_sumout\,
	cout => \lcd_controller|Add0~2\);

-- Location: FF_X84_Y6_N23
\lcd_controller|clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~1_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(27));

-- Location: MLABCELL_X84_Y6_N24
\lcd_controller|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~5_sumout\ = SUM(( \lcd_controller|clk_count\(28) ) + ( GND ) + ( \lcd_controller|Add0~2\ ))
-- \lcd_controller|Add0~6\ = CARRY(( \lcd_controller|clk_count\(28) ) + ( GND ) + ( \lcd_controller|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(28),
	cin => \lcd_controller|Add0~2\,
	sumout => \lcd_controller|Add0~5_sumout\,
	cout => \lcd_controller|Add0~6\);

-- Location: FF_X84_Y6_N32
\lcd_controller|clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~5_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(28));

-- Location: MLABCELL_X84_Y6_N27
\lcd_controller|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~9_sumout\ = SUM(( \lcd_controller|clk_count\(29) ) + ( GND ) + ( \lcd_controller|Add0~6\ ))
-- \lcd_controller|Add0~10\ = CARRY(( \lcd_controller|clk_count\(29) ) + ( GND ) + ( \lcd_controller|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(29),
	cin => \lcd_controller|Add0~6\,
	sumout => \lcd_controller|Add0~9_sumout\,
	cout => \lcd_controller|Add0~10\);

-- Location: FF_X84_Y6_N5
\lcd_controller|clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~9_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(29));

-- Location: MLABCELL_X84_Y6_N30
\lcd_controller|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~109_sumout\ = SUM(( \lcd_controller|clk_count\(30) ) + ( GND ) + ( \lcd_controller|Add0~10\ ))
-- \lcd_controller|Add0~110\ = CARRY(( \lcd_controller|clk_count\(30) ) + ( GND ) + ( \lcd_controller|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(30),
	cin => \lcd_controller|Add0~10\,
	sumout => \lcd_controller|Add0~109_sumout\,
	cout => \lcd_controller|Add0~110\);

-- Location: FF_X84_Y6_N53
\lcd_controller|clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~109_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(30));

-- Location: MLABCELL_X84_Y8_N6
\lcd_controller|LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~0_combout\ = ( !\lcd_controller|clk_count\(28) & ( (!\lcd_controller|clk_count\(29) & (!\lcd_controller|clk_count\(30) & !\lcd_controller|clk_count\(27))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(29),
	datac => \lcd_controller|ALT_INV_clk_count\(30),
	datad => \lcd_controller|ALT_INV_clk_count\(27),
	dataf => \lcd_controller|ALT_INV_clk_count\(28),
	combout => \lcd_controller|LessThan9~0_combout\);

-- Location: LABCELL_X85_Y7_N3
\lcd_controller|LessThan9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~3_combout\ = ( !\lcd_controller|clk_count\(5) & ( !\lcd_controller|clk_count\(3) & ( (!\lcd_controller|clk_count\(4) & !\lcd_controller|clk_count\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(4),
	datac => \lcd_controller|ALT_INV_clk_count\(2),
	datae => \lcd_controller|ALT_INV_clk_count\(5),
	dataf => \lcd_controller|ALT_INV_clk_count\(3),
	combout => \lcd_controller|LessThan9~3_combout\);

-- Location: LABCELL_X85_Y7_N57
\lcd_controller|LessThan9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~4_combout\ = ( !\lcd_controller|LessThan9~3_combout\ & ( \lcd_controller|clk_count\(8) & ( (\lcd_controller|clk_count\(6) & \lcd_controller|clk_count\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(6),
	datad => \lcd_controller|ALT_INV_clk_count\(7),
	datae => \lcd_controller|ALT_INV_LessThan9~3_combout\,
	dataf => \lcd_controller|ALT_INV_clk_count\(8),
	combout => \lcd_controller|LessThan9~4_combout\);

-- Location: MLABCELL_X84_Y8_N0
\lcd_controller|LessThan9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~1_combout\ = ( !\lcd_controller|clk_count\(18) & ( (!\lcd_controller|clk_count\(12) & (!\lcd_controller|clk_count\(17) & !\lcd_controller|clk_count\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(12),
	datac => \lcd_controller|ALT_INV_clk_count\(17),
	datad => \lcd_controller|ALT_INV_clk_count\(13),
	dataf => \lcd_controller|ALT_INV_clk_count\(18),
	combout => \lcd_controller|LessThan9~1_combout\);

-- Location: FF_X84_Y6_N49
\lcd_controller|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~33_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(22));

-- Location: LABCELL_X85_Y6_N48
\lcd_controller|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~5_combout\ = ( !\lcd_controller|clk_count\(22) & ( (!\lcd_controller|clk_count\(23) & (!\lcd_controller|clk_count\(26) & (!\lcd_controller|clk_count\(24) & !\lcd_controller|clk_count\(25)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(23),
	datab => \lcd_controller|ALT_INV_clk_count\(26),
	datac => \lcd_controller|ALT_INV_clk_count\(24),
	datad => \lcd_controller|ALT_INV_clk_count\(25),
	dataf => \lcd_controller|ALT_INV_clk_count\(22),
	combout => \lcd_controller|LessThan0~5_combout\);

-- Location: MLABCELL_X84_Y8_N18
\lcd_controller|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~1_combout\ = ( !\lcd_controller|clk_count\(15) & ( (!\lcd_controller|clk_count\(16) & !\lcd_controller|clk_count\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(16),
	datac => \lcd_controller|ALT_INV_clk_count\(14),
	dataf => \lcd_controller|ALT_INV_clk_count\(15),
	combout => \lcd_controller|LessThan0~1_combout\);

-- Location: FF_X84_Y6_N37
\lcd_controller|clk_count[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~25_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count[20]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y8_N57
\lcd_controller|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~3_combout\ = ( !\lcd_controller|clk_count\(19) & ( !\lcd_controller|clk_count[20]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \lcd_controller|ALT_INV_clk_count\(19),
	dataf => \lcd_controller|ALT_INV_clk_count[20]~DUPLICATE_q\,
	combout => \lcd_controller|LessThan0~3_combout\);

-- Location: MLABCELL_X84_Y8_N12
\lcd_controller|LessThan9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~2_combout\ = ( \lcd_controller|LessThan0~3_combout\ & ( (\lcd_controller|LessThan9~1_combout\ & (\lcd_controller|LessThan0~5_combout\ & (\lcd_controller|LessThan0~1_combout\ & !\lcd_controller|clk_count\(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan9~1_combout\,
	datab => \lcd_controller|ALT_INV_LessThan0~5_combout\,
	datac => \lcd_controller|ALT_INV_LessThan0~1_combout\,
	datad => \lcd_controller|ALT_INV_clk_count\(21),
	dataf => \lcd_controller|ALT_INV_LessThan0~3_combout\,
	combout => \lcd_controller|LessThan9~2_combout\);

-- Location: MLABCELL_X84_Y8_N30
\lcd_controller|LessThan9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~5_combout\ = ( \lcd_controller|LessThan9~4_combout\ & ( \lcd_controller|LessThan9~2_combout\ & ( (\lcd_controller|LessThan9~0_combout\ & !\lcd_controller|clk_count\(11)) ) ) ) # ( !\lcd_controller|LessThan9~4_combout\ & ( 
-- \lcd_controller|LessThan9~2_combout\ & ( (\lcd_controller|LessThan9~0_combout\ & ((!\lcd_controller|clk_count\(11)) # ((!\lcd_controller|clk_count\(9) & !\lcd_controller|clk_count\(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(9),
	datab => \lcd_controller|ALT_INV_LessThan9~0_combout\,
	datac => \lcd_controller|ALT_INV_clk_count\(10),
	datad => \lcd_controller|ALT_INV_clk_count\(11),
	datae => \lcd_controller|ALT_INV_LessThan9~4_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan9~2_combout\,
	combout => \lcd_controller|LessThan9~5_combout\);

-- Location: MLABCELL_X84_Y8_N9
\lcd_controller|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector34~0_combout\ = ( !\lcd_controller|LessThan9~5_combout\ & ( !\lcd_controller|clk_count\(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(31),
	dataf => \lcd_controller|ALT_INV_LessThan9~5_combout\,
	combout => \lcd_controller|Selector34~0_combout\);

-- Location: LABCELL_X80_Y6_N48
\lcd_controller|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector35~0_combout\ = ( \lcd_controller|state.send~DUPLICATE_q\ & ( \lcd_controller|Selector34~0_combout\ & ( (\w_lcd_enable~q\ & \lcd_controller|state.ready~DUPLICATE_q\) ) ) ) # ( !\lcd_controller|state.send~DUPLICATE_q\ & ( 
-- \lcd_controller|Selector34~0_combout\ & ( (\w_lcd_enable~q\ & \lcd_controller|state.ready~DUPLICATE_q\) ) ) ) # ( \lcd_controller|state.send~DUPLICATE_q\ & ( !\lcd_controller|Selector34~0_combout\ ) ) # ( !\lcd_controller|state.send~DUPLICATE_q\ & ( 
-- !\lcd_controller|Selector34~0_combout\ & ( (\w_lcd_enable~q\ & \lcd_controller|state.ready~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111111111111111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w_lcd_enable~q\,
	datac => \lcd_controller|ALT_INV_state.ready~DUPLICATE_q\,
	datae => \lcd_controller|ALT_INV_state.send~DUPLICATE_q\,
	dataf => \lcd_controller|ALT_INV_Selector34~0_combout\,
	combout => \lcd_controller|Selector35~0_combout\);

-- Location: FF_X81_Y6_N28
\lcd_controller|state.send~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Selector35~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|state.send~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y8_N15
\lcd_controller|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~4_combout\ = ( \lcd_controller|clk_count\(17) & ( \lcd_controller|clk_count\(18) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(18),
	dataf => \lcd_controller|ALT_INV_clk_count\(17),
	combout => \lcd_controller|LessThan0~4_combout\);

-- Location: MLABCELL_X84_Y8_N21
\lcd_controller|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~6_combout\ = (\lcd_controller|LessThan9~0_combout\ & \lcd_controller|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_LessThan9~0_combout\,
	datad => \lcd_controller|ALT_INV_LessThan0~5_combout\,
	combout => \lcd_controller|LessThan0~6_combout\);

-- Location: LABCELL_X83_Y7_N12
\lcd_controller|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~0_combout\ = ( !\lcd_controller|clk_count\(9) & ( \lcd_controller|clk_count\(8) & ( (!\lcd_controller|clk_count\(7)) # ((!\lcd_controller|clk_count\(6) & !\lcd_controller|clk_count\(5))) ) ) ) # ( !\lcd_controller|clk_count\(9) & 
-- ( !\lcd_controller|clk_count\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(7),
	datac => \lcd_controller|ALT_INV_clk_count\(6),
	datad => \lcd_controller|ALT_INV_clk_count\(5),
	datae => \lcd_controller|ALT_INV_clk_count\(9),
	dataf => \lcd_controller|ALT_INV_clk_count\(8),
	combout => \lcd_controller|LessThan0~0_combout\);

-- Location: MLABCELL_X84_Y8_N48
\lcd_controller|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~2_combout\ = ( \lcd_controller|clk_count\(13) & ( \lcd_controller|LessThan0~1_combout\ & ( (!\lcd_controller|clk_count\(12) & (!\lcd_controller|clk_count\(11) & ((!\lcd_controller|clk_count\(10)) # 
-- (\lcd_controller|LessThan0~0_combout\)))) ) ) ) # ( !\lcd_controller|clk_count\(13) & ( \lcd_controller|LessThan0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(10),
	datab => \lcd_controller|ALT_INV_clk_count\(12),
	datac => \lcd_controller|ALT_INV_clk_count\(11),
	datad => \lcd_controller|ALT_INV_LessThan0~0_combout\,
	datae => \lcd_controller|ALT_INV_clk_count\(13),
	dataf => \lcd_controller|ALT_INV_LessThan0~1_combout\,
	combout => \lcd_controller|LessThan0~2_combout\);

-- Location: MLABCELL_X84_Y8_N24
\lcd_controller|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~7_combout\ = ( \lcd_controller|LessThan0~6_combout\ & ( \lcd_controller|LessThan0~2_combout\ & ( (!\lcd_controller|LessThan0~3_combout\ & (!\lcd_controller|clk_count\(31) & \lcd_controller|clk_count\(21))) ) ) ) # ( 
-- !\lcd_controller|LessThan0~6_combout\ & ( \lcd_controller|LessThan0~2_combout\ & ( !\lcd_controller|clk_count\(31) ) ) ) # ( \lcd_controller|LessThan0~6_combout\ & ( !\lcd_controller|LessThan0~2_combout\ & ( (!\lcd_controller|clk_count\(31) & 
-- (\lcd_controller|clk_count\(21) & ((!\lcd_controller|LessThan0~3_combout\) # (\lcd_controller|LessThan0~4_combout\)))) ) ) ) # ( !\lcd_controller|LessThan0~6_combout\ & ( !\lcd_controller|LessThan0~2_combout\ & ( !\lcd_controller|clk_count\(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000001011000011110000111100000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan0~3_combout\,
	datab => \lcd_controller|ALT_INV_LessThan0~4_combout\,
	datac => \lcd_controller|ALT_INV_clk_count\(31),
	datad => \lcd_controller|ALT_INV_clk_count\(21),
	datae => \lcd_controller|ALT_INV_LessThan0~6_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan0~2_combout\,
	combout => \lcd_controller|LessThan0~7_combout\);

-- Location: MLABCELL_X84_Y8_N3
\lcd_controller|lcd_data[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[4]~3_combout\ = ( \lcd_controller|LessThan0~7_combout\ ) # ( !\lcd_controller|LessThan0~7_combout\ & ( \lcd_controller|state.power_up~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_state.power_up~q\,
	dataf => \lcd_controller|ALT_INV_LessThan0~7_combout\,
	combout => \lcd_controller|lcd_data[4]~3_combout\);

-- Location: FF_X84_Y8_N5
\lcd_controller|state.power_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|lcd_data[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|state.power_up~q\);

-- Location: MLABCELL_X84_Y8_N42
\lcd_controller|clk_count[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|clk_count[5]~1_combout\ = ( !\lcd_controller|state.ready~DUPLICATE_q\ & ( \lcd_controller|LessThan0~7_combout\ & ( (\lcd_controller|state.power_up~q\ & (((!\lcd_controller|state.send~DUPLICATE_q\) # (\lcd_controller|LessThan9~5_combout\)) 
-- # (\lcd_controller|clk_count\(31)))) ) ) ) # ( !\lcd_controller|state.ready~DUPLICATE_q\ & ( !\lcd_controller|LessThan0~7_combout\ & ( ((!\lcd_controller|state.send~DUPLICATE_q\) # ((!\lcd_controller|state.power_up~q\) # 
-- (\lcd_controller|LessThan9~5_combout\))) # (\lcd_controller|clk_count\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111000000000000000000001101000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(31),
	datab => \lcd_controller|ALT_INV_state.send~DUPLICATE_q\,
	datac => \lcd_controller|ALT_INV_state.power_up~q\,
	datad => \lcd_controller|ALT_INV_LessThan9~5_combout\,
	datae => \lcd_controller|ALT_INV_state.ready~DUPLICATE_q\,
	dataf => \lcd_controller|ALT_INV_LessThan0~7_combout\,
	combout => \lcd_controller|clk_count[5]~1_combout\);

-- Location: MLABCELL_X84_Y8_N39
\lcd_controller|lcd_data[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[4]~1_combout\ = ( \lcd_controller|state.power_up~q\ & ( \lcd_controller|LessThan0~7_combout\ & ( !\lcd_controller|state.send~DUPLICATE_q\ ) ) ) # ( !\lcd_controller|state.power_up~q\ & ( \lcd_controller|LessThan0~7_combout\ & ( 
-- !\lcd_controller|state.send~DUPLICATE_q\ ) ) ) # ( \lcd_controller|state.power_up~q\ & ( !\lcd_controller|LessThan0~7_combout\ & ( !\lcd_controller|state.send~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_state.send~DUPLICATE_q\,
	datae => \lcd_controller|ALT_INV_state.power_up~q\,
	dataf => \lcd_controller|ALT_INV_LessThan0~7_combout\,
	combout => \lcd_controller|lcd_data[4]~1_combout\);

-- Location: LABCELL_X85_Y6_N51
\lcd_controller|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~4_combout\ = ( !\lcd_controller|Add0~45_sumout\ & ( (!\lcd_controller|Add0~37_sumout\ & !\lcd_controller|Add0~41_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_Add0~37_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~41_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~45_sumout\,
	combout => \lcd_controller|LessThan3~4_combout\);

-- Location: MLABCELL_X84_Y6_N39
\lcd_controller|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~0_combout\ = ( !\lcd_controller|Add0~17_sumout\ & ( !\lcd_controller|Add0~21_sumout\ & ( (!\lcd_controller|Add0~29_sumout\ & (!\lcd_controller|Add0~13_sumout\ & (!\lcd_controller|Add0~33_sumout\ & 
-- !\lcd_controller|Add0~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~29_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~13_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~33_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~25_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~17_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~21_sumout\,
	combout => \lcd_controller|LessThan3~0_combout\);

-- Location: LABCELL_X85_Y6_N36
\lcd_controller|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~2_combout\ = ( !\lcd_controller|Add0~61_sumout\ & ( (!\lcd_controller|Add0~65_sumout\ & (!\lcd_controller|Add0~57_sumout\ & !\lcd_controller|Add0~53_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~65_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~53_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~61_sumout\,
	combout => \lcd_controller|LessThan3~2_combout\);

-- Location: MLABCELL_X82_Y6_N30
\lcd_controller|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~6_combout\ = ( !\lcd_controller|Add0~101_sumout\ & ( \lcd_controller|Add0~97_sumout\ & ( !\lcd_controller|Add0~93_sumout\ ) ) ) # ( \lcd_controller|Add0~101_sumout\ & ( !\lcd_controller|Add0~97_sumout\ & ( 
-- (!\lcd_controller|Add0~93_sumout\ & ((!\lcd_controller|Add0~113_sumout\) # (!\lcd_controller|Add0~105_sumout\))) ) ) ) # ( !\lcd_controller|Add0~101_sumout\ & ( !\lcd_controller|Add0~97_sumout\ & ( !\lcd_controller|Add0~93_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001010000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~93_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~101_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~97_sumout\,
	combout => \lcd_controller|LessThan3~6_combout\);

-- Location: MLABCELL_X82_Y6_N18
\lcd_controller|clk_count[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|clk_count[5]~3_combout\ = ( \lcd_controller|Add0~77_sumout\ & ( \lcd_controller|Add0~73_sumout\ & ( (\lcd_controller|Add0~89_sumout\ & (\lcd_controller|Add0~81_sumout\ & ((!\lcd_controller|LessThan3~6_combout\) # 
-- (\lcd_controller|Add0~85_sumout\)))) ) ) ) # ( !\lcd_controller|Add0~77_sumout\ & ( \lcd_controller|Add0~73_sumout\ & ( (\lcd_controller|Add0~89_sumout\ & (\lcd_controller|Add0~81_sumout\ & \lcd_controller|Add0~85_sumout\)) ) ) ) # ( 
-- \lcd_controller|Add0~77_sumout\ & ( !\lcd_controller|Add0~73_sumout\ & ( (\lcd_controller|Add0~89_sumout\ & (\lcd_controller|Add0~81_sumout\ & \lcd_controller|Add0~85_sumout\)) ) ) ) # ( !\lcd_controller|Add0~77_sumout\ & ( 
-- !\lcd_controller|Add0~73_sumout\ & ( (\lcd_controller|Add0~89_sumout\ & (\lcd_controller|Add0~81_sumout\ & \lcd_controller|Add0~85_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan3~6_combout\,
	datae => \lcd_controller|ALT_INV_Add0~77_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~73_sumout\,
	combout => \lcd_controller|clk_count[5]~3_combout\);

-- Location: LABCELL_X85_Y6_N15
\lcd_controller|clk_count[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|clk_count[5]~4_combout\ = ( !\lcd_controller|Add0~5_sumout\ & ( (!\lcd_controller|Add0~69_sumout\ & (!\lcd_controller|Add0~49_sumout\ & !\lcd_controller|Add0~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~49_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~1_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~5_sumout\,
	combout => \lcd_controller|clk_count[5]~4_combout\);

-- Location: LABCELL_X85_Y6_N42
\lcd_controller|clk_count[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|clk_count[5]~0_combout\ = ( !\lcd_controller|clk_count[5]~3_combout\ & ( \lcd_controller|clk_count[5]~4_combout\ & ( (\lcd_controller|LessThan3~4_combout\ & (!\lcd_controller|Add0~9_sumout\ & (\lcd_controller|LessThan3~0_combout\ & 
-- \lcd_controller|LessThan3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datab => \lcd_controller|ALT_INV_Add0~9_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~2_combout\,
	datae => \lcd_controller|ALT_INV_clk_count[5]~3_combout\,
	dataf => \lcd_controller|ALT_INV_clk_count[5]~4_combout\,
	combout => \lcd_controller|clk_count[5]~0_combout\);

-- Location: LABCELL_X83_Y7_N0
\lcd_controller|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan7~0_combout\ = ( \lcd_controller|Add0~93_sumout\ & ( \lcd_controller|Add0~101_sumout\ & ( (\lcd_controller|Add0~105_sumout\ & (\lcd_controller|Add0~97_sumout\ & (\lcd_controller|Add0~73_sumout\ & \lcd_controller|Add0~77_sumout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~73_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~93_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~101_sumout\,
	combout => \lcd_controller|LessThan7~0_combout\);

-- Location: LABCELL_X83_Y7_N39
\lcd_controller|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan1~0_combout\ = ( !\lcd_controller|Add0~89_sumout\ & ( !\lcd_controller|Add0~69_sumout\ & ( (!\lcd_controller|Add0~81_sumout\ & !\lcd_controller|Add0~85_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~89_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~69_sumout\,
	combout => \lcd_controller|LessThan1~0_combout\);

-- Location: LABCELL_X83_Y7_N42
\lcd_controller|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan7~1_combout\ = ( \lcd_controller|LessThan7~0_combout\ & ( \lcd_controller|LessThan1~0_combout\ & ( (\lcd_controller|Add0~57_sumout\ & (\lcd_controller|Add0~53_sumout\ & ((\lcd_controller|Add0~65_sumout\) # 
-- (\lcd_controller|Add0~61_sumout\)))) ) ) ) # ( !\lcd_controller|LessThan7~0_combout\ & ( \lcd_controller|LessThan1~0_combout\ & ( (\lcd_controller|Add0~57_sumout\ & (\lcd_controller|Add0~65_sumout\ & \lcd_controller|Add0~53_sumout\)) ) ) ) # ( 
-- \lcd_controller|LessThan7~0_combout\ & ( !\lcd_controller|LessThan1~0_combout\ & ( (\lcd_controller|Add0~57_sumout\ & (\lcd_controller|Add0~53_sumout\ & ((\lcd_controller|Add0~65_sumout\) # (\lcd_controller|Add0~61_sumout\)))) ) ) ) # ( 
-- !\lcd_controller|LessThan7~0_combout\ & ( !\lcd_controller|LessThan1~0_combout\ & ( (\lcd_controller|Add0~57_sumout\ & (\lcd_controller|Add0~53_sumout\ & ((\lcd_controller|Add0~65_sumout\) # (\lcd_controller|Add0~61_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000001001100000000000000110000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~61_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~65_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~53_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan7~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan1~0_combout\,
	combout => \lcd_controller|LessThan7~1_combout\);

-- Location: LABCELL_X83_Y7_N6
\lcd_controller|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~2_combout\ = ( !\lcd_controller|Add0~93_sumout\ & ( !\lcd_controller|Add0~101_sumout\ & ( (!\lcd_controller|Add0~105_sumout\ & (!\lcd_controller|Add0~113_sumout\ & (!\lcd_controller|Add0~73_sumout\ & 
-- !\lcd_controller|Add0~97_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~73_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~93_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~101_sumout\,
	combout => \lcd_controller|LessThan6~2_combout\);

-- Location: LABCELL_X83_Y7_N18
\lcd_controller|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~1_combout\ = ( !\lcd_controller|Add0~89_sumout\ & ( !\lcd_controller|Add0~69_sumout\ & ( (!\lcd_controller|Add0~77_sumout\ & (!\lcd_controller|Add0~85_sumout\ & !\lcd_controller|Add0~81_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~89_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~69_sumout\,
	combout => \lcd_controller|LessThan6~1_combout\);

-- Location: LABCELL_X83_Y7_N48
\lcd_controller|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~3_combout\ = ( \lcd_controller|Add0~53_sumout\ & ( \lcd_controller|LessThan6~1_combout\ & ( (\lcd_controller|Add0~57_sumout\ & (((\lcd_controller|Add0~61_sumout\ & !\lcd_controller|LessThan6~2_combout\)) # 
-- (\lcd_controller|Add0~65_sumout\))) ) ) ) # ( \lcd_controller|Add0~53_sumout\ & ( !\lcd_controller|LessThan6~1_combout\ & ( (\lcd_controller|Add0~57_sumout\ & ((\lcd_controller|Add0~61_sumout\) # (\lcd_controller|Add0~65_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100110001001100000000000000000001001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~65_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~61_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan6~2_combout\,
	datae => \lcd_controller|ALT_INV_Add0~53_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan6~1_combout\,
	combout => \lcd_controller|LessThan6~3_combout\);

-- Location: LABCELL_X83_Y7_N30
\lcd_controller|LessThan8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan8~2_combout\ = ( \lcd_controller|Add0~101_sumout\ & ( \lcd_controller|Add0~77_sumout\ & ( (!\lcd_controller|Add0~85_sumout\ & ((!\lcd_controller|Add0~73_sumout\) # ((!\lcd_controller|Add0~93_sumout\ & 
-- !\lcd_controller|Add0~97_sumout\)))) ) ) ) # ( !\lcd_controller|Add0~101_sumout\ & ( \lcd_controller|Add0~77_sumout\ & ( (!\lcd_controller|Add0~85_sumout\ & ((!\lcd_controller|Add0~93_sumout\) # (!\lcd_controller|Add0~73_sumout\))) ) ) ) # ( 
-- \lcd_controller|Add0~101_sumout\ & ( !\lcd_controller|Add0~77_sumout\ & ( !\lcd_controller|Add0~85_sumout\ ) ) ) # ( !\lcd_controller|Add0~101_sumout\ & ( !\lcd_controller|Add0~77_sumout\ & ( !\lcd_controller|Add0~85_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000101000001111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~93_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~73_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~101_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~77_sumout\,
	combout => \lcd_controller|LessThan8~2_combout\);

-- Location: LABCELL_X83_Y7_N24
\lcd_controller|LessThan8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan8~3_combout\ = ( \lcd_controller|Add0~61_sumout\ & ( ((\lcd_controller|Add0~89_sumout\ & \lcd_controller|Add0~81_sumout\)) # (\lcd_controller|Add0~69_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~81_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~61_sumout\,
	combout => \lcd_controller|LessThan8~3_combout\);

-- Location: LABCELL_X83_Y6_N48
\lcd_controller|LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan8~0_combout\ = ( \lcd_controller|LessThan8~2_combout\ & ( \lcd_controller|LessThan8~3_combout\ & ( (\lcd_controller|Add0~53_sumout\ & (\lcd_controller|Add0~57_sumout\ & ((\lcd_controller|Add0~69_sumout\) # 
-- (\lcd_controller|Add0~65_sumout\)))) ) ) ) # ( !\lcd_controller|LessThan8~2_combout\ & ( \lcd_controller|LessThan8~3_combout\ & ( (\lcd_controller|Add0~53_sumout\ & \lcd_controller|Add0~57_sumout\) ) ) ) # ( \lcd_controller|LessThan8~2_combout\ & ( 
-- !\lcd_controller|LessThan8~3_combout\ & ( (\lcd_controller|Add0~65_sumout\ & (\lcd_controller|Add0~53_sumout\ & \lcd_controller|Add0~57_sumout\)) ) ) ) # ( !\lcd_controller|LessThan8~2_combout\ & ( !\lcd_controller|LessThan8~3_combout\ & ( 
-- (\lcd_controller|Add0~65_sumout\ & (\lcd_controller|Add0~53_sumout\ & \lcd_controller|Add0~57_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000011110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~65_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~53_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan8~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan8~3_combout\,
	combout => \lcd_controller|LessThan8~0_combout\);

-- Location: MLABCELL_X84_Y6_N42
\lcd_controller|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~5_combout\ = ( !\lcd_controller|Add0~49_sumout\ & ( \lcd_controller|LessThan3~4_combout\ & ( (!\lcd_controller|Add0~5_sumout\ & (!\lcd_controller|Add0~1_sumout\ & (!\lcd_controller|Add0~9_sumout\ & 
-- \lcd_controller|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~1_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~9_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datae => \lcd_controller|ALT_INV_Add0~49_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	combout => \lcd_controller|LessThan3~5_combout\);

-- Location: MLABCELL_X84_Y6_N57
\lcd_controller|lcd_data[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[4]~4_combout\ = ( \lcd_controller|LessThan8~0_combout\ & ( \lcd_controller|LessThan3~5_combout\ & ( (!\lcd_controller|Add0~117_sumout\ & (((\lcd_controller|LessThan7~1_combout\ & \lcd_controller|LessThan6~3_combout\)) # 
-- (\lcd_controller|Add0~109_sumout\))) ) ) ) # ( !\lcd_controller|LessThan8~0_combout\ & ( \lcd_controller|LessThan3~5_combout\ & ( (!\lcd_controller|Add0~117_sumout\ & \lcd_controller|Add0~109_sumout\) ) ) ) # ( \lcd_controller|LessThan8~0_combout\ & ( 
-- !\lcd_controller|LessThan3~5_combout\ & ( !\lcd_controller|Add0~117_sumout\ ) ) ) # ( !\lcd_controller|LessThan8~0_combout\ & ( !\lcd_controller|LessThan3~5_combout\ & ( !\lcd_controller|Add0~117_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000101010100000001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan7~1_combout\,
	datac => \lcd_controller|ALT_INV_LessThan6~3_combout\,
	datad => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan8~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~5_combout\,
	combout => \lcd_controller|lcd_data[4]~4_combout\);

-- Location: LABCELL_X83_Y6_N33
\lcd_controller|LessThan3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~10_combout\ = ( !\lcd_controller|Add0~41_sumout\ & ( (!\lcd_controller|Add0~45_sumout\ & (!\lcd_controller|Add0~37_sumout\ & (!\lcd_controller|Add0~49_sumout\ & !\lcd_controller|Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~45_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~37_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~49_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~1_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~41_sumout\,
	combout => \lcd_controller|LessThan3~10_combout\);

-- Location: LABCELL_X83_Y6_N30
\lcd_controller|state~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|state~7_combout\ = ( !\lcd_controller|Add0~9_sumout\ & ( !\lcd_controller|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_Add0~5_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~9_sumout\,
	combout => \lcd_controller|state~7_combout\);

-- Location: LABCELL_X85_Y7_N18
\lcd_controller|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan5~0_combout\ = ( !\lcd_controller|Add0~73_sumout\ & ( \lcd_controller|Add0~93_sumout\ & ( (!\lcd_controller|Add0~101_sumout\) # ((!\lcd_controller|Add0~97_sumout\ & (!\lcd_controller|Add0~105_sumout\ & 
-- !\lcd_controller|Add0~113_sumout\))) ) ) ) # ( !\lcd_controller|Add0~73_sumout\ & ( !\lcd_controller|Add0~93_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~101_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~73_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~93_sumout\,
	combout => \lcd_controller|LessThan5~0_combout\);

-- Location: LABCELL_X85_Y7_N45
\lcd_controller|Selector43~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector43~4_combout\ = ( \lcd_controller|Add0~85_sumout\ & ( \lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~69_sumout\ & \lcd_controller|Add0~81_sumout\) ) ) ) # ( !\lcd_controller|Add0~85_sumout\ & ( 
-- \lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~69_sumout\ & \lcd_controller|Add0~81_sumout\) ) ) ) # ( \lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~69_sumout\ & \lcd_controller|Add0~81_sumout\) 
-- ) ) ) # ( !\lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~69_sumout\ & (\lcd_controller|Add0~77_sumout\ & (\lcd_controller|Add0~81_sumout\ & !\lcd_controller|LessThan5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan5~0_combout\,
	datae => \lcd_controller|ALT_INV_Add0~85_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~89_sumout\,
	combout => \lcd_controller|Selector43~4_combout\);

-- Location: LABCELL_X83_Y6_N24
\lcd_controller|Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector43~0_combout\ = ( !\lcd_controller|Selector43~4_combout\ & ( \lcd_controller|LessThan3~2_combout\ & ( (!\lcd_controller|Add0~109_sumout\ & (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|LessThan3~10_combout\ & 
-- \lcd_controller|state~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	datad => \lcd_controller|ALT_INV_state~7_combout\,
	datae => \lcd_controller|ALT_INV_Selector43~4_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~2_combout\,
	combout => \lcd_controller|Selector43~0_combout\);

-- Location: MLABCELL_X84_Y6_N51
\lcd_controller|clk_count[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|clk_count[5]~2_combout\ = ( \lcd_controller|lcd_data[4]~4_combout\ & ( \lcd_controller|Selector43~0_combout\ & ( !\lcd_controller|clk_count[5]~1_combout\ ) ) ) # ( !\lcd_controller|lcd_data[4]~4_combout\ & ( 
-- \lcd_controller|Selector43~0_combout\ & ( !\lcd_controller|clk_count[5]~1_combout\ ) ) ) # ( \lcd_controller|lcd_data[4]~4_combout\ & ( !\lcd_controller|Selector43~0_combout\ & ( (!\lcd_controller|clk_count[5]~1_combout\) # 
-- ((\lcd_controller|lcd_data[4]~1_combout\ & ((!\lcd_controller|clk_count[5]~0_combout\) # (\lcd_controller|Add0~109_sumout\)))) ) ) ) # ( !\lcd_controller|lcd_data[4]~4_combout\ & ( !\lcd_controller|Selector43~0_combout\ & ( 
-- !\lcd_controller|clk_count[5]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101110101011101110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count[5]~1_combout\,
	datab => \lcd_controller|ALT_INV_lcd_data[4]~1_combout\,
	datac => \lcd_controller|ALT_INV_clk_count[5]~0_combout\,
	datad => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datae => \lcd_controller|ALT_INV_lcd_data[4]~4_combout\,
	dataf => \lcd_controller|ALT_INV_Selector43~0_combout\,
	combout => \lcd_controller|clk_count[5]~2_combout\);

-- Location: FF_X84_Y6_N35
\lcd_controller|clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~117_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(31));

-- Location: MLABCELL_X84_Y6_N33
\lcd_controller|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~117_sumout\ = SUM(( \lcd_controller|clk_count\(31) ) + ( GND ) + ( \lcd_controller|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(31),
	cin => \lcd_controller|Add0~110\,
	sumout => \lcd_controller|Add0~117_sumout\);

-- Location: FF_X81_Y6_N29
\lcd_controller|state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Selector35~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|state.send~q\);

-- Location: LABCELL_X81_Y6_N39
\lcd_controller|Selector34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector34~1_combout\ = ( \lcd_controller|Selector34~0_combout\ & ( ((\lcd_controller|state.ready~DUPLICATE_q\ & !\w_lcd_enable~q\)) # (\lcd_controller|state.send~q\) ) ) # ( !\lcd_controller|Selector34~0_combout\ & ( 
-- (\lcd_controller|state.ready~DUPLICATE_q\ & !\w_lcd_enable~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.ready~DUPLICATE_q\,
	datac => \ALT_INV_w_lcd_enable~q\,
	datad => \lcd_controller|ALT_INV_state.send~q\,
	dataf => \lcd_controller|ALT_INV_Selector34~0_combout\,
	combout => \lcd_controller|Selector34~1_combout\);

-- Location: LABCELL_X83_Y6_N36
\lcd_controller|LessThan7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan7~2_combout\ = ( !\lcd_controller|LessThan7~1_combout\ & ( \lcd_controller|LessThan3~10_combout\ & ( (!\lcd_controller|Add0~9_sumout\ & (\lcd_controller|LessThan3~0_combout\ & (!\lcd_controller|Add0~109_sumout\ & 
-- !\lcd_controller|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~9_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datac => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan7~1_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	combout => \lcd_controller|LessThan7~2_combout\);

-- Location: LABCELL_X83_Y6_N42
\lcd_controller|state~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|state~6_combout\ = ( !\lcd_controller|LessThan6~3_combout\ & ( !\lcd_controller|Add0~9_sumout\ & ( (!\lcd_controller|Add0~109_sumout\ & (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|LessThan3~10_combout\ & 
-- !\lcd_controller|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	datad => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan6~3_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~9_sumout\,
	combout => \lcd_controller|state~6_combout\);

-- Location: LABCELL_X83_Y6_N45
\lcd_controller|LessThan8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan8~1_combout\ = ( !\lcd_controller|LessThan8~0_combout\ & ( !\lcd_controller|Add0~9_sumout\ & ( (!\lcd_controller|Add0~109_sumout\ & (\lcd_controller|LessThan3~0_combout\ & (!\lcd_controller|Add0~5_sumout\ & 
-- \lcd_controller|LessThan3~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datac => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	datae => \lcd_controller|ALT_INV_LessThan8~0_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~9_sumout\,
	combout => \lcd_controller|LessThan8~1_combout\);

-- Location: MLABCELL_X82_Y6_N27
\lcd_controller|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~9_combout\ = ( \lcd_controller|Add0~81_sumout\ & ( (\lcd_controller|Add0~89_sumout\ & (((\lcd_controller|Add0~73_sumout\ & \lcd_controller|Add0~77_sumout\)) # (\lcd_controller|Add0~85_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000100110000001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~73_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~77_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~81_sumout\,
	combout => \lcd_controller|LessThan3~9_combout\);

-- Location: LABCELL_X81_Y6_N24
\lcd_controller|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~8_combout\ = ( !\lcd_controller|Add0~85_sumout\ & ( \lcd_controller|Add0~101_sumout\ & ( (!\lcd_controller|Add0~97_sumout\ & (!\lcd_controller|Add0~93_sumout\ & ((!\lcd_controller|Add0~113_sumout\) # 
-- (!\lcd_controller|Add0~105_sumout\)))) ) ) ) # ( !\lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|Add0~101_sumout\ & ( !\lcd_controller|Add0~93_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000011001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~93_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~85_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~101_sumout\,
	combout => \lcd_controller|LessThan3~8_combout\);

-- Location: LABCELL_X83_Y7_N57
\lcd_controller|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~0_combout\ = ( !\lcd_controller|Add0~61_sumout\ & ( !\lcd_controller|Add0~65_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_Add0~65_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~61_sumout\,
	combout => \lcd_controller|LessThan6~0_combout\);

-- Location: MLABCELL_X82_Y6_N36
\lcd_controller|busy~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|busy~3_combout\ = ( !\lcd_controller|Add0~53_sumout\ & ( \lcd_controller|LessThan6~0_combout\ & ( (!\lcd_controller|Add0~69_sumout\ & (!\lcd_controller|Add0~57_sumout\ & ((!\lcd_controller|LessThan3~9_combout\) # 
-- (\lcd_controller|LessThan3~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan3~9_combout\,
	datac => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan3~8_combout\,
	datae => \lcd_controller|ALT_INV_Add0~53_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan6~0_combout\,
	combout => \lcd_controller|busy~3_combout\);

-- Location: LABCELL_X81_Y6_N18
\lcd_controller|state~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|state~8_combout\ = ( !\lcd_controller|Add0~5_sumout\ & ( \lcd_controller|LessThan3~10_combout\ & ( (!\lcd_controller|Add0~9_sumout\ & (!\lcd_controller|Add0~109_sumout\ & (\lcd_controller|LessThan3~0_combout\ & 
-- \lcd_controller|busy~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~9_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datad => \lcd_controller|ALT_INV_busy~3_combout\,
	datae => \lcd_controller|ALT_INV_Add0~5_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	combout => \lcd_controller|state~8_combout\);

-- Location: FF_X82_Y6_N7
\lcd_controller|state.initialize~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|state.initialize~DUPLICATE_q\);

-- Location: LABCELL_X81_Y6_N30
\lcd_controller|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~0_combout\ = ( \lcd_controller|Add0~117_sumout\ & ( ((!\lcd_controller|state.power_up~q\ & \lcd_controller|LessThan0~7_combout\)) # (\lcd_controller|state.initialize~DUPLICATE_q\) ) ) # ( !\lcd_controller|Add0~117_sumout\ & ( 
-- (!\lcd_controller|state.power_up~q\ & \lcd_controller|LessThan0~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_state.power_up~q\,
	datac => \lcd_controller|ALT_INV_LessThan0~7_combout\,
	datad => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \lcd_controller|ALT_INV_Add0~117_sumout\,
	combout => \lcd_controller|Selector33~0_combout\);

-- Location: MLABCELL_X82_Y6_N6
\lcd_controller|Selector33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~1_combout\ = ( \lcd_controller|state.initialize~q\ & ( \lcd_controller|Selector33~0_combout\ ) ) # ( !\lcd_controller|state.initialize~q\ & ( \lcd_controller|Selector33~0_combout\ ) ) # ( \lcd_controller|state.initialize~q\ & ( 
-- !\lcd_controller|Selector33~0_combout\ & ( (((\lcd_controller|state~8_combout\) # (\lcd_controller|LessThan8~1_combout\)) # (\lcd_controller|LessThan7~2_combout\)) # (\lcd_controller|state~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state~6_combout\,
	datab => \lcd_controller|ALT_INV_LessThan7~2_combout\,
	datac => \lcd_controller|ALT_INV_LessThan8~1_combout\,
	datad => \lcd_controller|ALT_INV_state~8_combout\,
	datae => \lcd_controller|ALT_INV_state.initialize~q\,
	dataf => \lcd_controller|ALT_INV_Selector33~0_combout\,
	combout => \lcd_controller|Selector33~1_combout\);

-- Location: FF_X82_Y6_N8
\lcd_controller|state.initialize\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector33~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|state.initialize~q\);

-- Location: MLABCELL_X82_Y6_N12
\lcd_controller|lcd_data[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[4]~0_combout\ = ( \lcd_controller|busy~3_combout\ & ( \lcd_controller|LessThan3~10_combout\ & ( (\lcd_controller|state.initialize~q\ & ((!\lcd_controller|LessThan3~0_combout\) # ((!\lcd_controller|state~7_combout\) # 
-- (\lcd_controller|Add0~109_sumout\)))) ) ) ) # ( !\lcd_controller|busy~3_combout\ & ( \lcd_controller|LessThan3~10_combout\ & ( \lcd_controller|state.initialize~q\ ) ) ) # ( \lcd_controller|busy~3_combout\ & ( !\lcd_controller|LessThan3~10_combout\ & ( 
-- \lcd_controller|state.initialize~q\ ) ) ) # ( !\lcd_controller|busy~3_combout\ & ( !\lcd_controller|LessThan3~10_combout\ & ( \lcd_controller|state.initialize~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datab => \lcd_controller|ALT_INV_state.initialize~q\,
	datac => \lcd_controller|ALT_INV_state~7_combout\,
	datad => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datae => \lcd_controller|ALT_INV_busy~3_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	combout => \lcd_controller|lcd_data[4]~0_combout\);

-- Location: LABCELL_X81_Y6_N6
\lcd_controller|Selector34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector34~2_combout\ = ( \lcd_controller|LessThan8~1_combout\ & ( \lcd_controller|state~6_combout\ & ( \lcd_controller|Selector34~1_combout\ ) ) ) # ( !\lcd_controller|LessThan8~1_combout\ & ( \lcd_controller|state~6_combout\ & ( 
-- \lcd_controller|Selector34~1_combout\ ) ) ) # ( \lcd_controller|LessThan8~1_combout\ & ( !\lcd_controller|state~6_combout\ & ( \lcd_controller|Selector34~1_combout\ ) ) ) # ( !\lcd_controller|LessThan8~1_combout\ & ( !\lcd_controller|state~6_combout\ & ( 
-- ((!\lcd_controller|Add0~117_sumout\ & (!\lcd_controller|LessThan7~2_combout\ & \lcd_controller|lcd_data[4]~0_combout\))) # (\lcd_controller|Selector34~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datab => \lcd_controller|ALT_INV_Selector34~1_combout\,
	datac => \lcd_controller|ALT_INV_LessThan7~2_combout\,
	datad => \lcd_controller|ALT_INV_lcd_data[4]~0_combout\,
	datae => \lcd_controller|ALT_INV_LessThan8~1_combout\,
	dataf => \lcd_controller|ALT_INV_state~6_combout\,
	combout => \lcd_controller|Selector34~2_combout\);

-- Location: FF_X81_Y6_N7
\lcd_controller|state.ready~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|state.ready~DUPLICATE_q\);

-- Location: FF_X81_Y6_N50
\w_lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \state.s2~q\,
	sload => VCC,
	ena => \Selector42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_lcd_bus(0));

-- Location: LABCELL_X81_Y6_N33
\lcd_controller|Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector45~0_combout\ = ( w_lcd_bus(0) & ( (\lcd_controller|state.ready~DUPLICATE_q\ & \w_lcd_enable~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.ready~DUPLICATE_q\,
	datac => \ALT_INV_w_lcd_enable~q\,
	dataf => ALT_INV_w_lcd_bus(0),
	combout => \lcd_controller|Selector45~0_combout\);

-- Location: LABCELL_X81_Y6_N36
\lcd_controller|rs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|rs~0_combout\ = ( \lcd_controller|Selector45~0_combout\ & ( ((!\lcd_controller|LessThan0~7_combout\ & \lcd_controller|rs~q\)) # (\lcd_controller|state.power_up~q\) ) ) # ( !\lcd_controller|Selector45~0_combout\ & ( (\lcd_controller|rs~q\ & 
-- ((!\lcd_controller|state.power_up~q\ & ((!\lcd_controller|LessThan0~7_combout\))) # (\lcd_controller|state.power_up~q\ & (!\lcd_controller|state.ready~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100010000000001110001000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.ready~DUPLICATE_q\,
	datab => \lcd_controller|ALT_INV_state.power_up~q\,
	datac => \lcd_controller|ALT_INV_LessThan0~7_combout\,
	datad => \lcd_controller|ALT_INV_rs~q\,
	dataf => \lcd_controller|ALT_INV_Selector45~0_combout\,
	combout => \lcd_controller|rs~0_combout\);

-- Location: FF_X81_Y6_N37
\lcd_controller|rs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|rs~q\);

-- Location: LABCELL_X85_Y6_N12
\lcd_controller|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~0_combout\ = ( \lcd_controller|state.initialize~DUPLICATE_q\ & ( !\lcd_controller|state.send~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_state.send~DUPLICATE_q\,
	dataf => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	combout => \lcd_controller|Selector46~0_combout\);

-- Location: MLABCELL_X87_Y6_N42
\lcd_controller|Selector46~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~3_combout\ = ( \lcd_controller|Add0~109_sumout\ & ( \lcd_controller|Selector46~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \lcd_controller|ALT_INV_Add0~109_sumout\,
	dataf => \lcd_controller|ALT_INV_Selector46~0_combout\,
	combout => \lcd_controller|Selector46~3_combout\);

-- Location: LABCELL_X85_Y7_N30
\lcd_controller|LessThan11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan11~0_combout\ = ( \lcd_controller|clk_count\(4) & ( (\lcd_controller|clk_count\(5) & (\lcd_controller|clk_count\(3) & \lcd_controller|clk_count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(5),
	datab => \lcd_controller|ALT_INV_clk_count\(3),
	datac => \lcd_controller|ALT_INV_clk_count\(2),
	dataf => \lcd_controller|ALT_INV_clk_count\(4),
	combout => \lcd_controller|LessThan11~0_combout\);

-- Location: LABCELL_X85_Y7_N39
\lcd_controller|LessThan11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan11~1_combout\ = ( \lcd_controller|LessThan11~0_combout\ & ( (\lcd_controller|clk_count\(9) & ((\lcd_controller|clk_count\(8)) # (\lcd_controller|clk_count\(7)))) ) ) # ( !\lcd_controller|LessThan11~0_combout\ & ( 
-- (\lcd_controller|clk_count\(9) & (((\lcd_controller|clk_count\(7) & \lcd_controller|clk_count\(6))) # (\lcd_controller|clk_count\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010011000000110001001100010011000100110001001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(7),
	datab => \lcd_controller|ALT_INV_clk_count\(9),
	datac => \lcd_controller|ALT_INV_clk_count\(8),
	datad => \lcd_controller|ALT_INV_clk_count\(6),
	dataf => \lcd_controller|ALT_INV_LessThan11~0_combout\,
	combout => \lcd_controller|LessThan11~1_combout\);

-- Location: FF_X84_Y7_N4
\lcd_controller|clk_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~121_sumout\,
	sclr => \lcd_controller|clk_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count[1]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y7_N24
\lcd_controller|LessThan12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan12~0_combout\ = ( !\lcd_controller|clk_count\(5) & ( \lcd_controller|clk_count[1]~DUPLICATE_q\ & ( (!\lcd_controller|clk_count\(3) & (!\lcd_controller|clk_count\(4) & !\lcd_controller|clk_count\(2))) ) ) ) # ( 
-- !\lcd_controller|clk_count\(5) & ( !\lcd_controller|clk_count[1]~DUPLICATE_q\ & ( (!\lcd_controller|clk_count\(3) & !\lcd_controller|clk_count\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(3),
	datab => \lcd_controller|ALT_INV_clk_count\(4),
	datac => \lcd_controller|ALT_INV_clk_count\(2),
	datae => \lcd_controller|ALT_INV_clk_count\(5),
	dataf => \lcd_controller|ALT_INV_clk_count[1]~DUPLICATE_q\,
	combout => \lcd_controller|LessThan12~0_combout\);

-- Location: LABCELL_X85_Y7_N9
\lcd_controller|LessThan12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan12~1_combout\ = ( \lcd_controller|LessThan12~0_combout\ & ( (\lcd_controller|clk_count\(7) & \lcd_controller|clk_count\(8)) ) ) # ( !\lcd_controller|LessThan12~0_combout\ & ( (\lcd_controller|clk_count\(8) & 
-- ((\lcd_controller|clk_count\(6)) # (\lcd_controller|clk_count\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(7),
	datac => \lcd_controller|ALT_INV_clk_count\(8),
	datad => \lcd_controller|ALT_INV_clk_count\(6),
	dataf => \lcd_controller|ALT_INV_LessThan12~0_combout\,
	combout => \lcd_controller|LessThan12~1_combout\);

-- Location: LABCELL_X85_Y8_N6
\lcd_controller|LessThan12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan12~2_combout\ = ( \lcd_controller|LessThan9~2_combout\ & ( \lcd_controller|LessThan12~1_combout\ & ( (!\lcd_controller|clk_count\(10) & !\lcd_controller|clk_count\(11)) ) ) ) # ( \lcd_controller|LessThan9~2_combout\ & ( 
-- !\lcd_controller|LessThan12~1_combout\ & ( (!\lcd_controller|clk_count\(11) & ((!\lcd_controller|clk_count\(10)) # (!\lcd_controller|clk_count\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000000000000000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(10),
	datac => \lcd_controller|ALT_INV_clk_count\(9),
	datad => \lcd_controller|ALT_INV_clk_count\(11),
	datae => \lcd_controller|ALT_INV_LessThan9~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan12~1_combout\,
	combout => \lcd_controller|LessThan12~2_combout\);

-- Location: LABCELL_X85_Y7_N33
\lcd_controller|LessThan10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan10~1_combout\ = ( \lcd_controller|clk_count[1]~DUPLICATE_q\ & ( (\lcd_controller|clk_count\(5) & \lcd_controller|clk_count\(4)) ) ) # ( !\lcd_controller|clk_count[1]~DUPLICATE_q\ & ( (\lcd_controller|clk_count\(5) & 
-- (\lcd_controller|clk_count\(4) & ((\lcd_controller|clk_count\(2)) # (\lcd_controller|clk_count\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101000000010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(5),
	datab => \lcd_controller|ALT_INV_clk_count\(3),
	datac => \lcd_controller|ALT_INV_clk_count\(4),
	datad => \lcd_controller|ALT_INV_clk_count\(2),
	dataf => \lcd_controller|ALT_INV_clk_count[1]~DUPLICATE_q\,
	combout => \lcd_controller|LessThan10~1_combout\);

-- Location: LABCELL_X85_Y7_N36
\lcd_controller|LessThan10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan10~2_combout\ = ( !\lcd_controller|LessThan10~1_combout\ & ( (!\lcd_controller|clk_count\(7) & (!\lcd_controller|clk_count\(9) & (!\lcd_controller|clk_count\(6) & !\lcd_controller|clk_count\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(7),
	datab => \lcd_controller|ALT_INV_clk_count\(9),
	datac => \lcd_controller|ALT_INV_clk_count\(6),
	datad => \lcd_controller|ALT_INV_clk_count\(8),
	dataf => \lcd_controller|ALT_INV_LessThan10~1_combout\,
	combout => \lcd_controller|LessThan10~2_combout\);

-- Location: LABCELL_X85_Y8_N12
\lcd_controller|LessThan10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan10~0_combout\ = ( \lcd_controller|LessThan9~2_combout\ & ( !\lcd_controller|clk_count\(11) & ( !\lcd_controller|clk_count\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(10),
	datae => \lcd_controller|ALT_INV_LessThan9~2_combout\,
	dataf => \lcd_controller|ALT_INV_clk_count\(11),
	combout => \lcd_controller|LessThan10~0_combout\);

-- Location: LABCELL_X85_Y8_N0
\lcd_controller|Selector46~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~7_combout\ = ( \lcd_controller|LessThan10~2_combout\ & ( \lcd_controller|LessThan10~0_combout\ & ( (\lcd_controller|e~DUPLICATE_q\ & !\lcd_controller|LessThan9~5_combout\) ) ) ) # ( !\lcd_controller|LessThan10~2_combout\ & ( 
-- \lcd_controller|LessThan10~0_combout\ & ( (!\lcd_controller|LessThan9~5_combout\ & (((\lcd_controller|e~DUPLICATE_q\)))) # (\lcd_controller|LessThan9~5_combout\ & ((!\lcd_controller|LessThan11~1_combout\) # ((\lcd_controller|e~DUPLICATE_q\ & 
-- !\lcd_controller|LessThan12~2_combout\)))) ) ) ) # ( \lcd_controller|LessThan10~2_combout\ & ( !\lcd_controller|LessThan10~0_combout\ & ( (\lcd_controller|e~DUPLICATE_q\ & ((!\lcd_controller|LessThan9~5_combout\) # 
-- (!\lcd_controller|LessThan12~2_combout\))) ) ) ) # ( !\lcd_controller|LessThan10~2_combout\ & ( !\lcd_controller|LessThan10~0_combout\ & ( (\lcd_controller|e~DUPLICATE_q\ & ((!\lcd_controller|LessThan9~5_combout\) # 
-- (!\lcd_controller|LessThan12~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000111011001110100011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan11~1_combout\,
	datab => \lcd_controller|ALT_INV_e~DUPLICATE_q\,
	datac => \lcd_controller|ALT_INV_LessThan9~5_combout\,
	datad => \lcd_controller|ALT_INV_LessThan12~2_combout\,
	datae => \lcd_controller|ALT_INV_LessThan10~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan10~0_combout\,
	combout => \lcd_controller|Selector46~7_combout\);

-- Location: FF_X85_Y6_N20
\lcd_controller|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector46~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|e~q\);

-- Location: LABCELL_X85_Y6_N30
\lcd_controller|Selector46~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~8_combout\ = ( \lcd_controller|clk_count\(31) & ( \lcd_controller|e~q\ & ( (!\lcd_controller|state.send~DUPLICATE_q\ & ((!\lcd_controller|state.initialize~DUPLICATE_q\) # (\lcd_controller|Add0~117_sumout\))) ) ) ) # ( 
-- !\lcd_controller|clk_count\(31) & ( \lcd_controller|e~q\ & ( (!\lcd_controller|state.send~DUPLICATE_q\ & ((!\lcd_controller|state.initialize~DUPLICATE_q\) # ((\lcd_controller|Add0~117_sumout\)))) # (\lcd_controller|state.send~DUPLICATE_q\ & 
-- (((\lcd_controller|Selector46~7_combout\)))) ) ) ) # ( \lcd_controller|clk_count\(31) & ( !\lcd_controller|e~q\ & ( (!\lcd_controller|state.send~DUPLICATE_q\ & (\lcd_controller|state.initialize~DUPLICATE_q\ & \lcd_controller|Add0~117_sumout\)) ) ) ) # ( 
-- !\lcd_controller|clk_count\(31) & ( !\lcd_controller|e~q\ & ( (!\lcd_controller|state.send~DUPLICATE_q\ & (\lcd_controller|state.initialize~DUPLICATE_q\ & (\lcd_controller|Add0~117_sumout\))) # (\lcd_controller|state.send~DUPLICATE_q\ & 
-- (((\lcd_controller|Selector46~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100000001010001010110111111000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.send~DUPLICATE_q\,
	datab => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	datac => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datad => \lcd_controller|ALT_INV_Selector46~7_combout\,
	datae => \lcd_controller|ALT_INV_clk_count\(31),
	dataf => \lcd_controller|ALT_INV_e~q\,
	combout => \lcd_controller|Selector46~8_combout\);

-- Location: LABCELL_X85_Y7_N15
\lcd_controller|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan2~0_combout\ = ( \lcd_controller|Add0~97_sumout\ & ( \lcd_controller|Add0~101_sumout\ & ( (!\lcd_controller|Add0~105_sumout\ & !\lcd_controller|Add0~93_sumout\) ) ) ) # ( !\lcd_controller|Add0~97_sumout\ & ( 
-- \lcd_controller|Add0~101_sumout\ & ( !\lcd_controller|Add0~93_sumout\ ) ) ) # ( \lcd_controller|Add0~97_sumout\ & ( !\lcd_controller|Add0~101_sumout\ & ( !\lcd_controller|Add0~93_sumout\ ) ) ) # ( !\lcd_controller|Add0~97_sumout\ & ( 
-- !\lcd_controller|Add0~101_sumout\ & ( !\lcd_controller|Add0~93_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~93_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~97_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~101_sumout\,
	combout => \lcd_controller|LessThan2~0_combout\);

-- Location: LABCELL_X85_Y7_N48
\lcd_controller|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan2~1_combout\ = ( \lcd_controller|Add0~81_sumout\ & ( \lcd_controller|Add0~89_sumout\ ) ) # ( \lcd_controller|Add0~81_sumout\ & ( !\lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~85_sumout\ & 
-- (\lcd_controller|Add0~77_sumout\ & (\lcd_controller|Add0~73_sumout\ & !\lcd_controller|LessThan2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~73_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan2~0_combout\,
	datae => \lcd_controller|ALT_INV_Add0~81_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~89_sumout\,
	combout => \lcd_controller|LessThan2~1_combout\);

-- Location: LABCELL_X85_Y6_N39
\lcd_controller|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~1_combout\ = ( !\lcd_controller|Add0~45_sumout\ & ( (!\lcd_controller|Add0~49_sumout\ & (!\lcd_controller|Add0~37_sumout\ & !\lcd_controller|Add0~41_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_Add0~49_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~37_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~41_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~45_sumout\,
	combout => \lcd_controller|LessThan3~1_combout\);

-- Location: LABCELL_X85_Y6_N24
\lcd_controller|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~3_combout\ = ( !\lcd_controller|Add0~9_sumout\ & ( \lcd_controller|LessThan3~1_combout\ & ( (!\lcd_controller|Add0~1_sumout\ & (!\lcd_controller|Add0~5_sumout\ & (\lcd_controller|LessThan3~0_combout\ & 
-- \lcd_controller|LessThan3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~1_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~2_combout\,
	datae => \lcd_controller|ALT_INV_Add0~9_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~1_combout\,
	combout => \lcd_controller|LessThan3~3_combout\);

-- Location: LABCELL_X83_Y7_N54
\lcd_controller|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan4~0_combout\ = ( \lcd_controller|Add0~77_sumout\ & ( ((\lcd_controller|Add0~97_sumout\ & (\lcd_controller|Add0~101_sumout\ & \lcd_controller|Add0~93_sumout\))) # (\lcd_controller|Add0~73_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101110101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~73_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~101_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~93_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~77_sumout\,
	combout => \lcd_controller|LessThan4~0_combout\);

-- Location: LABCELL_X83_Y7_N27
\lcd_controller|LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan4~1_combout\ = ( \lcd_controller|Add0~85_sumout\ & ( (\lcd_controller|Add0~69_sumout\ & (((\lcd_controller|Add0~89_sumout\ & \lcd_controller|LessThan4~0_combout\)) # (\lcd_controller|Add0~81_sumout\))) ) ) # ( 
-- !\lcd_controller|Add0~85_sumout\ & ( (\lcd_controller|Add0~69_sumout\ & \lcd_controller|Add0~81_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000100110000001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan4~0_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~85_sumout\,
	combout => \lcd_controller|LessThan4~1_combout\);

-- Location: MLABCELL_X84_Y6_N45
\lcd_controller|busy~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|busy~2_combout\ = ( !\lcd_controller|LessThan6~3_combout\ & ( \lcd_controller|LessThan3~1_combout\ & ( (!\lcd_controller|Add0~5_sumout\ & (!\lcd_controller|Add0~1_sumout\ & (\lcd_controller|LessThan3~0_combout\ & 
-- !\lcd_controller|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~1_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datad => \lcd_controller|ALT_INV_Add0~9_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan6~3_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~1_combout\,
	combout => \lcd_controller|busy~2_combout\);

-- Location: LABCELL_X85_Y6_N54
\lcd_controller|Selector46~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~4_combout\ = ( !\lcd_controller|busy~2_combout\ & ( \lcd_controller|Add0~69_sumout\ & ( (\lcd_controller|Selector46~0_combout\ & ((!\lcd_controller|LessThan3~3_combout\) # (\lcd_controller|LessThan4~1_combout\))) ) ) ) # ( 
-- !\lcd_controller|busy~2_combout\ & ( !\lcd_controller|Add0~69_sumout\ & ( (\lcd_controller|Selector46~0_combout\ & ((!\lcd_controller|LessThan3~3_combout\) # ((\lcd_controller|LessThan2~1_combout\ & \lcd_controller|LessThan4~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110001000000000000000000110000001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan2~1_combout\,
	datab => \lcd_controller|ALT_INV_Selector46~0_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datad => \lcd_controller|ALT_INV_LessThan4~1_combout\,
	datae => \lcd_controller|ALT_INV_busy~2_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~69_sumout\,
	combout => \lcd_controller|Selector46~4_combout\);

-- Location: MLABCELL_X82_Y6_N21
\lcd_controller|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~7_combout\ = ( \lcd_controller|Add0~77_sumout\ & ( \lcd_controller|Add0~73_sumout\ & ( (\lcd_controller|Add0~89_sumout\ & (\lcd_controller|Add0~81_sumout\ & ((!\lcd_controller|LessThan3~6_combout\) # 
-- (\lcd_controller|Add0~85_sumout\)))) ) ) ) # ( !\lcd_controller|Add0~77_sumout\ & ( \lcd_controller|Add0~73_sumout\ & ( (\lcd_controller|Add0~89_sumout\ & (\lcd_controller|Add0~81_sumout\ & \lcd_controller|Add0~85_sumout\)) ) ) ) # ( 
-- \lcd_controller|Add0~77_sumout\ & ( !\lcd_controller|Add0~73_sumout\ & ( (\lcd_controller|Add0~89_sumout\ & (\lcd_controller|Add0~81_sumout\ & \lcd_controller|Add0~85_sumout\)) ) ) ) # ( !\lcd_controller|Add0~77_sumout\ & ( 
-- !\lcd_controller|Add0~73_sumout\ & ( (\lcd_controller|Add0~89_sumout\ & (\lcd_controller|Add0~81_sumout\ & \lcd_controller|Add0~85_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010001000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~6_combout\,
	datad => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~77_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~73_sumout\,
	combout => \lcd_controller|LessThan3~7_combout\);

-- Location: LABCELL_X81_Y6_N15
\lcd_controller|LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~4_combout\ = ( !\lcd_controller|Add0~113_sumout\ & ( !\lcd_controller|Add0~105_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \lcd_controller|ALT_INV_Add0~113_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~105_sumout\,
	combout => \lcd_controller|LessThan6~4_combout\);

-- Location: LABCELL_X81_Y6_N54
\lcd_controller|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan1~1_combout\ = ( \lcd_controller|Add0~77_sumout\ & ( (\lcd_controller|Add0~73_sumout\ & (\lcd_controller|Add0~93_sumout\ & (\lcd_controller|Add0~101_sumout\ & \lcd_controller|Add0~97_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~73_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~93_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~101_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~97_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~77_sumout\,
	combout => \lcd_controller|LessThan1~1_combout\);

-- Location: LABCELL_X81_Y6_N42
\lcd_controller|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan1~2_combout\ = ( !\lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|Add0~81_sumout\ & ( (!\lcd_controller|Add0~69_sumout\ & (!\lcd_controller|Add0~89_sumout\ & ((!\lcd_controller|LessThan1~1_combout\) # 
-- (\lcd_controller|LessThan6~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan6~4_combout\,
	datac => \lcd_controller|ALT_INV_LessThan1~1_combout\,
	datad => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~85_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~81_sumout\,
	combout => \lcd_controller|LessThan1~2_combout\);

-- Location: MLABCELL_X82_Y6_N45
\lcd_controller|Selector46~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~5_combout\ = ( !\lcd_controller|Add0~109_sumout\ & ( (!\lcd_controller|state.send~DUPLICATE_q\ & \lcd_controller|state.initialize~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.send~DUPLICATE_q\,
	datac => \lcd_controller|ALT_INV_state.initialize~q\,
	datae => \lcd_controller|ALT_INV_Add0~109_sumout\,
	combout => \lcd_controller|Selector46~5_combout\);

-- Location: LABCELL_X85_Y6_N6
\lcd_controller|Selector46~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~6_combout\ = ( \lcd_controller|Selector46~5_combout\ & ( \lcd_controller|LessThan3~3_combout\ & ( ((\lcd_controller|LessThan2~1_combout\ & (!\lcd_controller|LessThan3~7_combout\ & !\lcd_controller|Add0~69_sumout\))) # 
-- (\lcd_controller|LessThan1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan2~1_combout\,
	datab => \lcd_controller|ALT_INV_LessThan3~7_combout\,
	datac => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan1~2_combout\,
	datae => \lcd_controller|ALT_INV_Selector46~5_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	combout => \lcd_controller|Selector46~6_combout\);

-- Location: LABCELL_X85_Y7_N42
\lcd_controller|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan5~1_combout\ = ( \lcd_controller|Add0~85_sumout\ & ( \lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~69_sumout\ & \lcd_controller|Add0~81_sumout\) ) ) ) # ( !\lcd_controller|Add0~85_sumout\ & ( 
-- \lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~69_sumout\ & \lcd_controller|Add0~81_sumout\) ) ) ) # ( \lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~69_sumout\ & \lcd_controller|Add0~81_sumout\) 
-- ) ) ) # ( !\lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~69_sumout\ & (\lcd_controller|Add0~77_sumout\ & (!\lcd_controller|LessThan5~0_combout\ & \lcd_controller|Add0~81_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan5~0_combout\,
	datad => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~85_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~89_sumout\,
	combout => \lcd_controller|LessThan5~1_combout\);

-- Location: LABCELL_X85_Y7_N6
\lcd_controller|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan5~2_combout\ = ( !\lcd_controller|Add0~109_sumout\ & ( !\lcd_controller|LessThan5~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_LessThan5~1_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~109_sumout\,
	combout => \lcd_controller|LessThan5~2_combout\);

-- Location: LABCELL_X85_Y6_N0
\lcd_controller|Selector46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~1_combout\ = ( \lcd_controller|LessThan2~1_combout\ & ( \lcd_controller|LessThan5~2_combout\ & ( (\lcd_controller|Selector46~0_combout\ & (\lcd_controller|LessThan3~3_combout\ & \lcd_controller|LessThan4~1_combout\)) ) ) ) # ( 
-- !\lcd_controller|LessThan2~1_combout\ & ( \lcd_controller|LessThan5~2_combout\ & ( (\lcd_controller|Add0~69_sumout\ & (\lcd_controller|Selector46~0_combout\ & (\lcd_controller|LessThan3~3_combout\ & \lcd_controller|LessThan4~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datab => \lcd_controller|ALT_INV_Selector46~0_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datad => \lcd_controller|ALT_INV_LessThan4~1_combout\,
	datae => \lcd_controller|ALT_INV_LessThan2~1_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan5~2_combout\,
	combout => \lcd_controller|Selector46~1_combout\);

-- Location: MLABCELL_X87_Y6_N3
\lcd_controller|Selector46~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~2_combout\ = ( \lcd_controller|LessThan8~0_combout\ & ( \lcd_controller|Add0~109_sumout\ & ( (!\lcd_controller|e~DUPLICATE_q\ & !\lcd_controller|Add0~117_sumout\) ) ) ) # ( !\lcd_controller|LessThan8~0_combout\ & ( 
-- \lcd_controller|Add0~109_sumout\ & ( (!\lcd_controller|e~DUPLICATE_q\ & !\lcd_controller|Add0~117_sumout\) ) ) ) # ( \lcd_controller|LessThan8~0_combout\ & ( !\lcd_controller|Add0~109_sumout\ & ( (!\lcd_controller|e~DUPLICATE_q\ & 
-- (!\lcd_controller|Add0~117_sumout\ & ((!\lcd_controller|LessThan3~5_combout\) # (\lcd_controller|LessThan7~1_combout\)))) ) ) ) # ( !\lcd_controller|LessThan8~0_combout\ & ( !\lcd_controller|Add0~109_sumout\ & ( (!\lcd_controller|Add0~117_sumout\ & 
-- ((!\lcd_controller|LessThan3~5_combout\ & (!\lcd_controller|e~DUPLICATE_q\)) # (\lcd_controller|LessThan3~5_combout\ & ((\lcd_controller|LessThan7~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101100000000100010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_e~DUPLICATE_q\,
	datab => \lcd_controller|ALT_INV_LessThan3~5_combout\,
	datac => \lcd_controller|ALT_INV_LessThan7~1_combout\,
	datad => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan8~0_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~109_sumout\,
	combout => \lcd_controller|Selector46~2_combout\);

-- Location: LABCELL_X85_Y6_N18
\lcd_controller|Selector46~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~9_combout\ = ( \lcd_controller|Selector46~1_combout\ & ( \lcd_controller|Selector46~2_combout\ ) ) # ( !\lcd_controller|Selector46~1_combout\ & ( \lcd_controller|Selector46~2_combout\ & ( (\lcd_controller|Selector46~6_combout\) 
-- # (\lcd_controller|Selector46~8_combout\) ) ) ) # ( \lcd_controller|Selector46~1_combout\ & ( !\lcd_controller|Selector46~2_combout\ ) ) # ( !\lcd_controller|Selector46~1_combout\ & ( !\lcd_controller|Selector46~2_combout\ & ( 
-- (((\lcd_controller|Selector46~6_combout\) # (\lcd_controller|Selector46~4_combout\)) # (\lcd_controller|Selector46~8_combout\)) # (\lcd_controller|Selector46~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111100110011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector46~3_combout\,
	datab => \lcd_controller|ALT_INV_Selector46~8_combout\,
	datac => \lcd_controller|ALT_INV_Selector46~4_combout\,
	datad => \lcd_controller|ALT_INV_Selector46~6_combout\,
	datae => \lcd_controller|ALT_INV_Selector46~1_combout\,
	dataf => \lcd_controller|ALT_INV_Selector46~2_combout\,
	combout => \lcd_controller|Selector46~9_combout\);

-- Location: FF_X85_Y6_N19
\lcd_controller|e~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector46~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|e~DUPLICATE_q\);

-- Location: FF_X81_Y6_N8
\lcd_controller|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector34~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|state.ready~q\);

-- Location: LABCELL_X81_Y6_N57
\lcd_controller|Selector45~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector45~1_combout\ = ( !\lcd_controller|state.ready~q\ & ( \lcd_controller|state.initialize~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	dataf => \lcd_controller|ALT_INV_state.ready~q\,
	combout => \lcd_controller|Selector45~1_combout\);

-- Location: LABCELL_X81_Y6_N0
\lcd_controller|Selector45~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector45~2_combout\ = ( \lcd_controller|busy~3_combout\ & ( \lcd_controller|LessThan3~1_combout\ & ( (!\lcd_controller|Add0~117_sumout\ & (\lcd_controller|Selector45~1_combout\ & ((!\lcd_controller|LessThan3~0_combout\) # 
-- (\lcd_controller|Add0~1_sumout\)))) ) ) ) # ( !\lcd_controller|busy~3_combout\ & ( \lcd_controller|LessThan3~1_combout\ & ( (!\lcd_controller|Add0~117_sumout\ & \lcd_controller|Selector45~1_combout\) ) ) ) # ( \lcd_controller|busy~3_combout\ & ( 
-- !\lcd_controller|LessThan3~1_combout\ & ( (!\lcd_controller|Add0~117_sumout\ & \lcd_controller|Selector45~1_combout\) ) ) ) # ( !\lcd_controller|busy~3_combout\ & ( !\lcd_controller|LessThan3~1_combout\ & ( (!\lcd_controller|Add0~117_sumout\ & 
-- \lcd_controller|Selector45~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datab => \lcd_controller|ALT_INV_Selector45~1_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datad => \lcd_controller|ALT_INV_Add0~1_sumout\,
	datae => \lcd_controller|ALT_INV_busy~3_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~1_combout\,
	combout => \lcd_controller|Selector45~2_combout\);

-- Location: MLABCELL_X82_Y6_N0
\lcd_controller|Selector45~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector45~3_combout\ = ( \lcd_controller|LessThan3~3_combout\ & ( \lcd_controller|Selector45~0_combout\ ) ) # ( !\lcd_controller|LessThan3~3_combout\ & ( \lcd_controller|Selector45~0_combout\ ) ) # ( \lcd_controller|LessThan3~3_combout\ & 
-- ( !\lcd_controller|Selector45~0_combout\ & ( (!\lcd_controller|LessThan5~1_combout\ & (!\lcd_controller|Add0~109_sumout\ & (\lcd_controller|LessThan4~1_combout\ & \lcd_controller|Selector45~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan5~1_combout\,
	datab => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan4~1_combout\,
	datad => \lcd_controller|ALT_INV_Selector45~2_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	dataf => \lcd_controller|ALT_INV_Selector45~0_combout\,
	combout => \lcd_controller|Selector45~3_combout\);

-- Location: LABCELL_X83_Y6_N0
\lcd_controller|lcd_data[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[4]~2_combout\ = ( \lcd_controller|lcd_data[4]~0_combout\ & ( \lcd_controller|state~6_combout\ & ( \lcd_controller|lcd_data[4]~1_combout\ ) ) ) # ( !\lcd_controller|lcd_data[4]~0_combout\ & ( \lcd_controller|state~6_combout\ & ( 
-- \lcd_controller|lcd_data[4]~1_combout\ ) ) ) # ( \lcd_controller|lcd_data[4]~0_combout\ & ( !\lcd_controller|state~6_combout\ & ( (\lcd_controller|lcd_data[4]~1_combout\ & (((\lcd_controller|LessThan8~1_combout\) # (\lcd_controller|LessThan7~2_combout\)) 
-- # (\lcd_controller|Add0~117_sumout\))) ) ) ) # ( !\lcd_controller|lcd_data[4]~0_combout\ & ( !\lcd_controller|state~6_combout\ & ( \lcd_controller|lcd_data[4]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datab => \lcd_controller|ALT_INV_lcd_data[4]~1_combout\,
	datac => \lcd_controller|ALT_INV_LessThan7~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan8~1_combout\,
	datae => \lcd_controller|ALT_INV_lcd_data[4]~0_combout\,
	dataf => \lcd_controller|ALT_INV_state~6_combout\,
	combout => \lcd_controller|lcd_data[4]~2_combout\);

-- Location: FF_X82_Y6_N1
\lcd_controller|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector45~3_combout\,
	ena => \lcd_controller|lcd_data[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(0));

-- Location: FF_X82_Y7_N50
\lcd_controller|lcd_data[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector44~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data[1]~DUPLICATE_q\);

-- Location: FF_X82_Y7_N26
\w_lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \state.s4~q\,
	sload => VCC,
	ena => \Selector42~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_lcd_bus(1));

-- Location: MLABCELL_X82_Y7_N24
\lcd_controller|Selector44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~1_combout\ = ( w_lcd_bus(1) & ( \lcd_controller|lcd_data[4]~1_combout\ & ( (\w_lcd_enable~q\ & \lcd_controller|state.ready~DUPLICATE_q\) ) ) ) # ( w_lcd_bus(1) & ( !\lcd_controller|lcd_data[4]~1_combout\ & ( ((\w_lcd_enable~q\ & 
-- \lcd_controller|state.ready~DUPLICATE_q\)) # (\lcd_controller|lcd_data[1]~DUPLICATE_q\) ) ) ) # ( !w_lcd_bus(1) & ( !\lcd_controller|lcd_data[4]~1_combout\ & ( \lcd_controller|lcd_data[1]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000111110001111100000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w_lcd_enable~q\,
	datab => \lcd_controller|ALT_INV_state.ready~DUPLICATE_q\,
	datac => \lcd_controller|ALT_INV_lcd_data[1]~DUPLICATE_q\,
	datae => ALT_INV_w_lcd_bus(1),
	dataf => \lcd_controller|ALT_INV_lcd_data[4]~1_combout\,
	combout => \lcd_controller|Selector44~1_combout\);

-- Location: MLABCELL_X82_Y7_N33
\lcd_controller|Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~0_combout\ = ( \lcd_controller|LessThan3~0_combout\ & ( \lcd_controller|state~7_combout\ & ( (!\lcd_controller|Add0~117_sumout\ & ((!\lcd_controller|LessThan3~10_combout\) # ((\lcd_controller|Add0~109_sumout\) # 
-- (\lcd_controller|LessThan6~3_combout\)))) ) ) ) # ( !\lcd_controller|LessThan3~0_combout\ & ( \lcd_controller|state~7_combout\ & ( !\lcd_controller|Add0~117_sumout\ ) ) ) # ( \lcd_controller|LessThan3~0_combout\ & ( !\lcd_controller|state~7_combout\ & ( 
-- !\lcd_controller|Add0~117_sumout\ ) ) ) # ( !\lcd_controller|LessThan3~0_combout\ & ( !\lcd_controller|state~7_combout\ & ( !\lcd_controller|Add0~117_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	datab => \lcd_controller|ALT_INV_LessThan6~3_combout\,
	datac => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	dataf => \lcd_controller|ALT_INV_state~7_combout\,
	combout => \lcd_controller|Selector44~0_combout\);

-- Location: MLABCELL_X82_Y7_N48
\lcd_controller|Selector44~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~2_combout\ = ( \lcd_controller|lcd_data\(1) & ( \lcd_controller|LessThan8~1_combout\ & ( ((\lcd_controller|LessThan7~2_combout\ & (\lcd_controller|Selector44~0_combout\ & \lcd_controller|lcd_data[4]~0_combout\))) # 
-- (\lcd_controller|Selector44~1_combout\) ) ) ) # ( !\lcd_controller|lcd_data\(1) & ( \lcd_controller|LessThan8~1_combout\ & ( ((\lcd_controller|LessThan7~2_combout\ & (\lcd_controller|Selector44~0_combout\ & \lcd_controller|lcd_data[4]~0_combout\))) # 
-- (\lcd_controller|Selector44~1_combout\) ) ) ) # ( \lcd_controller|lcd_data\(1) & ( !\lcd_controller|LessThan8~1_combout\ & ( ((\lcd_controller|Selector44~0_combout\ & \lcd_controller|lcd_data[4]~0_combout\)) # (\lcd_controller|Selector44~1_combout\) ) ) ) 
-- # ( !\lcd_controller|lcd_data\(1) & ( !\lcd_controller|LessThan8~1_combout\ & ( ((\lcd_controller|LessThan7~2_combout\ & (\lcd_controller|Selector44~0_combout\ & \lcd_controller|lcd_data[4]~0_combout\))) # (\lcd_controller|Selector44~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010111010101010101111101010101010101110101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector44~1_combout\,
	datab => \lcd_controller|ALT_INV_LessThan7~2_combout\,
	datac => \lcd_controller|ALT_INV_Selector44~0_combout\,
	datad => \lcd_controller|ALT_INV_lcd_data[4]~0_combout\,
	datae => \lcd_controller|ALT_INV_lcd_data\(1),
	dataf => \lcd_controller|ALT_INV_LessThan8~1_combout\,
	combout => \lcd_controller|Selector44~2_combout\);

-- Location: FF_X82_Y7_N49
\lcd_controller|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector44~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(1));

-- Location: MLABCELL_X82_Y6_N24
\lcd_controller|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector42~0_combout\ = ( \lcd_controller|state.initialize~q\ & ( !\lcd_controller|Add0~109_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_Add0~109_sumout\,
	dataf => \lcd_controller|ALT_INV_state.initialize~q\,
	combout => \lcd_controller|Selector42~0_combout\);

-- Location: LABCELL_X83_Y6_N27
\lcd_controller|Selector43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector43~1_combout\ = ( !\lcd_controller|LessThan7~1_combout\ & ( \lcd_controller|LessThan6~3_combout\ & ( (!\lcd_controller|Add0~109_sumout\ & (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|state~7_combout\ & 
-- \lcd_controller|LessThan3~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datac => \lcd_controller|ALT_INV_state~7_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	datae => \lcd_controller|ALT_INV_LessThan7~1_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan6~3_combout\,
	combout => \lcd_controller|Selector43~1_combout\);

-- Location: LABCELL_X83_Y6_N12
\lcd_controller|LessThan3~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~11_combout\ = ( !\lcd_controller|Add0~69_sumout\ & ( !\lcd_controller|LessThan3~7_combout\ & ( (\lcd_controller|LessThan3~2_combout\ & (\lcd_controller|state~7_combout\ & (\lcd_controller|LessThan3~10_combout\ & 
-- \lcd_controller|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~2_combout\,
	datab => \lcd_controller|ALT_INV_state~7_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datae => \lcd_controller|ALT_INV_Add0~69_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~7_combout\,
	combout => \lcd_controller|LessThan3~11_combout\);

-- Location: MLABCELL_X82_Y6_N48
\lcd_controller|Selector43~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector43~2_combout\ = ( !\lcd_controller|Add0~117_sumout\ & ( \lcd_controller|state~7_combout\ & ( (!\lcd_controller|LessThan3~2_combout\) # ((!\lcd_controller|LessThan3~0_combout\) # ((!\lcd_controller|LessThan3~10_combout\) # 
-- (!\lcd_controller|LessThan1~2_combout\))) ) ) ) # ( !\lcd_controller|Add0~117_sumout\ & ( !\lcd_controller|state~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~2_combout\,
	datab => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	datad => \lcd_controller|ALT_INV_LessThan1~2_combout\,
	datae => \lcd_controller|ALT_INV_Add0~117_sumout\,
	dataf => \lcd_controller|ALT_INV_state~7_combout\,
	combout => \lcd_controller|Selector43~2_combout\);

-- Location: LABCELL_X83_Y6_N15
\lcd_controller|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan2~2_combout\ = ( !\lcd_controller|LessThan2~1_combout\ & ( !\lcd_controller|Add0~69_sumout\ & ( (\lcd_controller|LessThan3~2_combout\ & (\lcd_controller|state~7_combout\ & (\lcd_controller|LessThan3~0_combout\ & 
-- \lcd_controller|LessThan3~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~2_combout\,
	datab => \lcd_controller|ALT_INV_state~7_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	datae => \lcd_controller|ALT_INV_LessThan2~1_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~69_sumout\,
	combout => \lcd_controller|LessThan2~2_combout\);

-- Location: LABCELL_X83_Y6_N54
\lcd_controller|Selector43~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector43~3_combout\ = ( \lcd_controller|Selector43~2_combout\ & ( !\lcd_controller|LessThan2~2_combout\ & ( (\lcd_controller|Selector42~0_combout\ & (((!\lcd_controller|Selector43~0_combout\ & \lcd_controller|Selector43~1_combout\)) # 
-- (\lcd_controller|LessThan3~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector42~0_combout\,
	datab => \lcd_controller|ALT_INV_Selector43~0_combout\,
	datac => \lcd_controller|ALT_INV_Selector43~1_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~11_combout\,
	datae => \lcd_controller|ALT_INV_Selector43~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan2~2_combout\,
	combout => \lcd_controller|Selector43~3_combout\);

-- Location: FF_X83_Y6_N55
\lcd_controller|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector43~3_combout\,
	ena => \lcd_controller|lcd_data[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(2));

-- Location: MLABCELL_X82_Y6_N54
\lcd_controller|Selector42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector42~1_combout\ = ( !\lcd_controller|Add0~109_sumout\ & ( \lcd_controller|state~7_combout\ & ( (\lcd_controller|LessThan3~10_combout\ & (\lcd_controller|LessThan1~2_combout\ & (\lcd_controller|LessThan3~2_combout\ & 
-- \lcd_controller|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	datab => \lcd_controller|ALT_INV_LessThan1~2_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datae => \lcd_controller|ALT_INV_Add0~109_sumout\,
	dataf => \lcd_controller|ALT_INV_state~7_combout\,
	combout => \lcd_controller|Selector42~1_combout\);

-- Location: LABCELL_X83_Y6_N18
\lcd_controller|Selector42~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector42~2_combout\ = ( \lcd_controller|state.initialize~q\ & ( \lcd_controller|LessThan2~2_combout\ & ( (\lcd_controller|Add0~117_sumout\) # (\lcd_controller|Selector42~1_combout\) ) ) ) # ( \lcd_controller|state.initialize~q\ & ( 
-- !\lcd_controller|LessThan2~2_combout\ & ( (((!\lcd_controller|Add0~109_sumout\ & \lcd_controller|LessThan3~11_combout\)) # (\lcd_controller|Add0~117_sumout\)) # (\lcd_controller|Selector42~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101111111011100000000000000000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector42~1_combout\,
	datab => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan3~11_combout\,
	datae => \lcd_controller|ALT_INV_state.initialize~q\,
	dataf => \lcd_controller|ALT_INV_LessThan2~2_combout\,
	combout => \lcd_controller|Selector42~2_combout\);

-- Location: FF_X83_Y6_N20
\lcd_controller|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector42~2_combout\,
	ena => \lcd_controller|lcd_data[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(3));

-- Location: LABCELL_X81_Y6_N48
\lcd_controller|Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector41~0_combout\ = ( w_lcd_bus(0) & ( (!\lcd_controller|state.ready~DUPLICATE_q\ & ((!\lcd_controller|state.initialize~DUPLICATE_q\) # ((\lcd_controller|Add0~117_sumout\)))) # (\lcd_controller|state.ready~DUPLICATE_q\ & 
-- (((\w_lcd_enable~q\)))) ) ) # ( !w_lcd_bus(0) & ( (!\lcd_controller|state.ready~DUPLICATE_q\ & ((!\lcd_controller|state.initialize~DUPLICATE_q\) # (\lcd_controller|Add0~117_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011111110110000101100001011000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.initialize~DUPLICATE_q\,
	datab => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datac => \lcd_controller|ALT_INV_state.ready~DUPLICATE_q\,
	datad => \ALT_INV_w_lcd_enable~q\,
	datae => ALT_INV_w_lcd_bus(0),
	combout => \lcd_controller|Selector41~0_combout\);

-- Location: LABCELL_X83_Y6_N6
\lcd_controller|Selector41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector41~1_combout\ = ( \lcd_controller|LessThan3~5_combout\ & ( \lcd_controller|Selector41~0_combout\ ) ) # ( !\lcd_controller|LessThan3~5_combout\ & ( \lcd_controller|Selector41~0_combout\ ) ) # ( \lcd_controller|LessThan3~5_combout\ & 
-- ( !\lcd_controller|Selector41~0_combout\ & ( (\lcd_controller|LessThan1~2_combout\ & (!\lcd_controller|state.ready~q\ & (!\lcd_controller|Add0~109_sumout\ & \lcd_controller|LessThan3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan1~2_combout\,
	datab => \lcd_controller|ALT_INV_state.ready~q\,
	datac => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan3~2_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~5_combout\,
	dataf => \lcd_controller|ALT_INV_Selector41~0_combout\,
	combout => \lcd_controller|Selector41~1_combout\);

-- Location: FF_X83_Y6_N7
\lcd_controller|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector41~1_combout\,
	ena => \lcd_controller|lcd_data[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(4));

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

-- Location: LABCELL_X53_Y2_N3
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


