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

-- DATE "01/26/2025 17:37:31"

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
	PIN_AA26 : INOUT std_logic;
	PIN_AB26 : INOUT std_logic;
	SW : IN std_logic_vector(3 DOWNTO 0);
	LED : OUT std_logic_vector(3 DOWNTO 0);
	FPGA_CLK1_50 : IN std_logic;
	PIN_AA11 : INOUT std_logic;
	PCB_RS : OUT std_logic;
	PCB_RW : OUT std_logic;
	PCB_E : OUT std_logic;
	DB : OUT std_logic_vector(7 DOWNTO 0);
	PCB_BT0 : IN std_logic;
	PCB_BT1 : IN std_logic;
	PCB_BT2 : IN std_logic;
	PCB_BT3 : IN std_logic
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
-- SW[0]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PIN_AA11	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_AA26	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIN_AB26	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_CLK1_50	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PCB_BT0	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_BT1	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_BT2	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCB_BT3	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_PCB_BT0 : std_logic;
SIGNAL ww_PCB_BT1 : std_logic;
SIGNAL ww_PCB_BT2 : std_logic;
SIGNAL ww_PCB_BT3 : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \PIN_AA11~input_o\ : std_logic;
SIGNAL \PIN_AA26~input_o\ : std_logic;
SIGNAL \PIN_AB26~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \FPGA_CLK1_50~input_o\ : std_logic;
SIGNAL \FPGA_CLK1_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \tim_100kHz|Add0~25_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~26\ : std_logic;
SIGNAL \tim_100kHz|Add0~13_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~14\ : std_logic;
SIGNAL \tim_100kHz|Add0~21_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~22\ : std_logic;
SIGNAL \tim_100kHz|Add0~17_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~18\ : std_logic;
SIGNAL \tim_100kHz|Add0~33_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~34\ : std_logic;
SIGNAL \tim_100kHz|Add0~29_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~30\ : std_logic;
SIGNAL \tim_100kHz|Add0~1_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~2\ : std_logic;
SIGNAL \tim_100kHz|Add0~5_sumout\ : std_logic;
SIGNAL \tim_100kHz|Add0~6\ : std_logic;
SIGNAL \tim_100kHz|Add0~9_sumout\ : std_logic;
SIGNAL \tim_100kHz|Equal0~0_combout\ : std_logic;
SIGNAL \tim_100kHz|Equal0~1_combout\ : std_logic;
SIGNAL \tim_100kHz|clock_signal~0_combout\ : std_logic;
SIGNAL \tim_100kHz|clock_signal~feeder_combout\ : std_logic;
SIGNAL \tim_100kHz|clock_signal~q\ : std_logic;
SIGNAL \PCB_BT2~input_o\ : std_logic;
SIGNAL \PCB_BT1~input_o\ : std_logic;
SIGNAL \PCB_BT0~input_o\ : std_logic;
SIGNAL \btn_controller|state~0_combout\ : std_logic;
SIGNAL \btn_controller|state~q\ : std_logic;
SIGNAL \PCB_BT3~input_o\ : std_logic;
SIGNAL \btn_controller|and_buttons~0_combout\ : std_logic;
SIGNAL \btn_controller|and_buttons~feeder_combout\ : std_logic;
SIGNAL \btn_controller|and_buttons~q\ : std_logic;
SIGNAL \btn_controller|btn_num[0]~2_combout\ : std_logic;
SIGNAL \btn_controller|Add0~77_sumout\ : std_logic;
SIGNAL \btn_controller|delay~20_combout\ : std_logic;
SIGNAL \btn_controller|delay[0]~1_combout\ : std_logic;
SIGNAL \btn_controller|Add0~78\ : std_logic;
SIGNAL \btn_controller|Add0~81_sumout\ : std_logic;
SIGNAL \btn_controller|delay~21_combout\ : std_logic;
SIGNAL \btn_controller|Add0~82\ : std_logic;
SIGNAL \btn_controller|Add0~85_sumout\ : std_logic;
SIGNAL \btn_controller|delay~22_combout\ : std_logic;
SIGNAL \btn_controller|Add0~86\ : std_logic;
SIGNAL \btn_controller|Add0~89_sumout\ : std_logic;
SIGNAL \btn_controller|delay~23_combout\ : std_logic;
SIGNAL \btn_controller|delay[3]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~90\ : std_logic;
SIGNAL \btn_controller|Add0~93_sumout\ : std_logic;
SIGNAL \btn_controller|delay~24_combout\ : std_logic;
SIGNAL \btn_controller|Add0~94\ : std_logic;
SIGNAL \btn_controller|Add0~97_sumout\ : std_logic;
SIGNAL \btn_controller|delay~25_combout\ : std_logic;
SIGNAL \btn_controller|Add0~98\ : std_logic;
SIGNAL \btn_controller|Add0~101_sumout\ : std_logic;
SIGNAL \btn_controller|delay~26_combout\ : std_logic;
SIGNAL \btn_controller|Add0~102\ : std_logic;
SIGNAL \btn_controller|Add0~105_sumout\ : std_logic;
SIGNAL \btn_controller|delay~27_combout\ : std_logic;
SIGNAL \btn_controller|Add0~106\ : std_logic;
SIGNAL \btn_controller|Add0~109_sumout\ : std_logic;
SIGNAL \btn_controller|delay~28_combout\ : std_logic;
SIGNAL \btn_controller|Add0~110\ : std_logic;
SIGNAL \btn_controller|Add0~113_sumout\ : std_logic;
SIGNAL \btn_controller|delay~29_combout\ : std_logic;
SIGNAL \btn_controller|Add0~114\ : std_logic;
SIGNAL \btn_controller|Add0~117_sumout\ : std_logic;
SIGNAL \btn_controller|delay~30_combout\ : std_logic;
SIGNAL \btn_controller|Add0~118\ : std_logic;
SIGNAL \btn_controller|Add0~121_sumout\ : std_logic;
SIGNAL \btn_controller|delay~31_combout\ : std_logic;
SIGNAL \btn_controller|Equal0~4_combout\ : std_logic;
SIGNAL \btn_controller|delay[28]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~122\ : std_logic;
SIGNAL \btn_controller|Add0~53_sumout\ : std_logic;
SIGNAL \btn_controller|delay~14_combout\ : std_logic;
SIGNAL \btn_controller|delay[12]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~54\ : std_logic;
SIGNAL \btn_controller|Add0~57_sumout\ : std_logic;
SIGNAL \btn_controller|delay~15_combout\ : std_logic;
SIGNAL \btn_controller|delay[13]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~58\ : std_logic;
SIGNAL \btn_controller|Add0~61_sumout\ : std_logic;
SIGNAL \btn_controller|delay~16_combout\ : std_logic;
SIGNAL \btn_controller|delay[14]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~62\ : std_logic;
SIGNAL \btn_controller|Add0~65_sumout\ : std_logic;
SIGNAL \btn_controller|delay~17_combout\ : std_logic;
SIGNAL \btn_controller|delay[15]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~66\ : std_logic;
SIGNAL \btn_controller|Add0~69_sumout\ : std_logic;
SIGNAL \btn_controller|delay~18_combout\ : std_logic;
SIGNAL \btn_controller|Add0~70\ : std_logic;
SIGNAL \btn_controller|Add0~73_sumout\ : std_logic;
SIGNAL \btn_controller|delay~19_combout\ : std_logic;
SIGNAL \btn_controller|Add0~74\ : std_logic;
SIGNAL \btn_controller|Add0~29_sumout\ : std_logic;
SIGNAL \btn_controller|delay~8_combout\ : std_logic;
SIGNAL \btn_controller|delay[18]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~30\ : std_logic;
SIGNAL \btn_controller|Add0~33_sumout\ : std_logic;
SIGNAL \btn_controller|delay~9_combout\ : std_logic;
SIGNAL \btn_controller|Add0~34\ : std_logic;
SIGNAL \btn_controller|Add0~37_sumout\ : std_logic;
SIGNAL \btn_controller|delay~10_combout\ : std_logic;
SIGNAL \btn_controller|delay[20]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~38\ : std_logic;
SIGNAL \btn_controller|Add0~41_sumout\ : std_logic;
SIGNAL \btn_controller|delay~11_combout\ : std_logic;
SIGNAL \btn_controller|delay[21]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~42\ : std_logic;
SIGNAL \btn_controller|Add0~45_sumout\ : std_logic;
SIGNAL \btn_controller|delay~12_combout\ : std_logic;
SIGNAL \btn_controller|delay[22]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~46\ : std_logic;
SIGNAL \btn_controller|Add0~49_sumout\ : std_logic;
SIGNAL \btn_controller|delay~13_combout\ : std_logic;
SIGNAL \btn_controller|Add0~50\ : std_logic;
SIGNAL \btn_controller|Add0~5_sumout\ : std_logic;
SIGNAL \btn_controller|delay~2_combout\ : std_logic;
SIGNAL \btn_controller|delay[24]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~6\ : std_logic;
SIGNAL \btn_controller|Add0~9_sumout\ : std_logic;
SIGNAL \btn_controller|delay~3_combout\ : std_logic;
SIGNAL \btn_controller|Add0~10\ : std_logic;
SIGNAL \btn_controller|Add0~13_sumout\ : std_logic;
SIGNAL \btn_controller|delay~4_combout\ : std_logic;
SIGNAL \btn_controller|Add0~14\ : std_logic;
SIGNAL \btn_controller|Add0~17_sumout\ : std_logic;
SIGNAL \btn_controller|delay~5_combout\ : std_logic;
SIGNAL \btn_controller|Add0~18\ : std_logic;
SIGNAL \btn_controller|Add0~21_sumout\ : std_logic;
SIGNAL \btn_controller|delay~6_combout\ : std_logic;
SIGNAL \btn_controller|delay[29]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|Add0~22\ : std_logic;
SIGNAL \btn_controller|Add0~25_sumout\ : std_logic;
SIGNAL \btn_controller|delay~7_combout\ : std_logic;
SIGNAL \btn_controller|Equal0~0_combout\ : std_logic;
SIGNAL \btn_controller|Equal0~3_combout\ : std_logic;
SIGNAL \btn_controller|Equal0~1_combout\ : std_logic;
SIGNAL \btn_controller|Add0~26\ : std_logic;
SIGNAL \btn_controller|Add0~1_sumout\ : std_logic;
SIGNAL \btn_controller|delay~0_combout\ : std_logic;
SIGNAL \btn_controller|Equal0~2_combout\ : std_logic;
SIGNAL \btn_controller|Equal0~5_combout\ : std_logic;
SIGNAL \btn_controller|output~0_combout\ : std_logic;
SIGNAL \btn_controller|output~feeder_combout\ : std_logic;
SIGNAL \btn_controller|output~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|state.DISPL_CLEAR~0_combout\ : std_logic;
SIGNAL \main_fsm|state.DISPL_CLEAR~q\ : std_logic;
SIGNAL \btn_controller|output~q\ : std_logic;
SIGNAL \main_fsm|state.PRSD_MSG~q\ : std_logic;
SIGNAL \main_fsm|WideNor1~combout\ : std_logic;
SIGNAL \main_fsm|Selector37~0_combout\ : std_logic;
SIGNAL \main_fsm|state.WAIT_INPUT~q\ : std_logic;
SIGNAL \main_fsm|Selector39~0_combout\ : std_logic;
SIGNAL \main_fsm|state.PRSD_MSG~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|state.SEND~q\ : std_logic;
SIGNAL \main_fsm|state.WAIT_INPUT~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|delay[8]~0_combout\ : std_logic;
SIGNAL \main_fsm|delay[8]~1_combout\ : std_logic;
SIGNAL \main_fsm|delay[8]~2_combout\ : std_logic;
SIGNAL \main_fsm|delay[26]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|delay[9]~3_combout\ : std_logic;
SIGNAL \main_fsm|delay[9]~4_combout\ : std_logic;
SIGNAL \main_fsm|Add0~77_sumout\ : std_logic;
SIGNAL \main_fsm|delay[0]~5_combout\ : std_logic;
SIGNAL \main_fsm|Add0~78\ : std_logic;
SIGNAL \main_fsm|Add0~81_sumout\ : std_logic;
SIGNAL \main_fsm|delay[1]~6_combout\ : std_logic;
SIGNAL \main_fsm|Add0~82\ : std_logic;
SIGNAL \main_fsm|Add0~85_sumout\ : std_logic;
SIGNAL \main_fsm|delay[2]~7_combout\ : std_logic;
SIGNAL \main_fsm|delay[2]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~86\ : std_logic;
SIGNAL \main_fsm|Add0~89_sumout\ : std_logic;
SIGNAL \main_fsm|delay[3]~8_combout\ : std_logic;
SIGNAL \main_fsm|delay[3]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~90\ : std_logic;
SIGNAL \main_fsm|Add0~65_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~66\ : std_logic;
SIGNAL \main_fsm|Add0~93_sumout\ : std_logic;
SIGNAL \main_fsm|delay[5]~9_combout\ : std_logic;
SIGNAL \main_fsm|delay[5]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~94\ : std_logic;
SIGNAL \main_fsm|Add0~73_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~74\ : std_logic;
SIGNAL \main_fsm|Add0~97_sumout\ : std_logic;
SIGNAL \main_fsm|delay[7]~10_combout\ : std_logic;
SIGNAL \main_fsm|delay[7]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~98\ : std_logic;
SIGNAL \main_fsm|Add0~101_sumout\ : std_logic;
SIGNAL \main_fsm|delay[8]~11_combout\ : std_logic;
SIGNAL \main_fsm|Add0~102\ : std_logic;
SIGNAL \main_fsm|Add0~105_sumout\ : std_logic;
SIGNAL \main_fsm|delay[9]~12_combout\ : std_logic;
SIGNAL \main_fsm|Add0~106\ : std_logic;
SIGNAL \main_fsm|Add0~109_sumout\ : std_logic;
SIGNAL \main_fsm|delay[10]~13_combout\ : std_logic;
SIGNAL \main_fsm|delay[10]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~110\ : std_logic;
SIGNAL \main_fsm|Add0~29_sumout\ : std_logic;
SIGNAL \main_fsm|delay[11]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~30\ : std_logic;
SIGNAL \main_fsm|Add0~33_sumout\ : std_logic;
SIGNAL \main_fsm|delay[12]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~34\ : std_logic;
SIGNAL \main_fsm|Add0~113_sumout\ : std_logic;
SIGNAL \main_fsm|delay[13]~14_combout\ : std_logic;
SIGNAL \main_fsm|Add0~114\ : std_logic;
SIGNAL \main_fsm|Add0~37_sumout\ : std_logic;
SIGNAL \main_fsm|delay[14]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~38\ : std_logic;
SIGNAL \main_fsm|Add0~117_sumout\ : std_logic;
SIGNAL \main_fsm|delay[15]~15_combout\ : std_logic;
SIGNAL \main_fsm|Add0~118\ : std_logic;
SIGNAL \main_fsm|Add0~121_sumout\ : std_logic;
SIGNAL \main_fsm|delay[16]~16_combout\ : std_logic;
SIGNAL \main_fsm|Add0~122\ : std_logic;
SIGNAL \main_fsm|Add0~41_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~42\ : std_logic;
SIGNAL \main_fsm|Add0~45_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~46\ : std_logic;
SIGNAL \main_fsm|Add0~49_sumout\ : std_logic;
SIGNAL \main_fsm|delay[19]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~50\ : std_logic;
SIGNAL \main_fsm|Add0~5_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~6\ : std_logic;
SIGNAL \main_fsm|Add0~9_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~10\ : std_logic;
SIGNAL \main_fsm|Add0~13_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~14\ : std_logic;
SIGNAL \main_fsm|Add0~17_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~18\ : std_logic;
SIGNAL \main_fsm|Add0~21_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~22\ : std_logic;
SIGNAL \main_fsm|Add0~25_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~26\ : std_logic;
SIGNAL \main_fsm|Add0~1_sumout\ : std_logic;
SIGNAL \main_fsm|Equal0~4_combout\ : std_logic;
SIGNAL \main_fsm|Equal0~3_combout\ : std_logic;
SIGNAL \main_fsm|Equal0~1_combout\ : std_logic;
SIGNAL \main_fsm|Add0~2\ : std_logic;
SIGNAL \main_fsm|Add0~53_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~54\ : std_logic;
SIGNAL \main_fsm|Add0~57_sumout\ : std_logic;
SIGNAL \main_fsm|Add0~58\ : std_logic;
SIGNAL \main_fsm|Add0~61_sumout\ : std_logic;
SIGNAL \main_fsm|delay[30]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|Add0~62\ : std_logic;
SIGNAL \main_fsm|Add0~69_sumout\ : std_logic;
SIGNAL \main_fsm|Equal0~2_combout\ : std_logic;
SIGNAL \main_fsm|Equal0~0_combout\ : std_logic;
SIGNAL \main_fsm|Equal0~5_combout\ : std_logic;
SIGNAL \main_fsm|state.START~0_combout\ : std_logic;
SIGNAL \main_fsm|state.START~q\ : std_logic;
SIGNAL \main_fsm|Selector66~0_combout\ : std_logic;
SIGNAL \main_fsm|led0~feeder_combout\ : std_logic;
SIGNAL \main_fsm|led0~q\ : std_logic;
SIGNAL \tim_1Hz|Add0~13_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~14\ : std_logic;
SIGNAL \tim_1Hz|Add0~33_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~34\ : std_logic;
SIGNAL \tim_1Hz|Add0~45_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~46\ : std_logic;
SIGNAL \tim_1Hz|Add0~89_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~90\ : std_logic;
SIGNAL \tim_1Hz|Add0~61_sumout\ : std_logic;
SIGNAL \tim_1Hz|counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|Add0~62\ : std_logic;
SIGNAL \tim_1Hz|Add0~101_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~102\ : std_logic;
SIGNAL \tim_1Hz|Add0~53_sumout\ : std_logic;
SIGNAL \tim_1Hz|counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|Add0~54\ : std_logic;
SIGNAL \tim_1Hz|Add0~93_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~94\ : std_logic;
SIGNAL \tim_1Hz|Add0~17_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~18\ : std_logic;
SIGNAL \tim_1Hz|Add0~21_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~22\ : std_logic;
SIGNAL \tim_1Hz|Add0~25_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~26\ : std_logic;
SIGNAL \tim_1Hz|Add0~41_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~42\ : std_logic;
SIGNAL \tim_1Hz|Add0~57_sumout\ : std_logic;
SIGNAL \tim_1Hz|counter[12]~feeder_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~58\ : std_logic;
SIGNAL \tim_1Hz|Add0~85_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~86\ : std_logic;
SIGNAL \tim_1Hz|Add0~81_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~82\ : std_logic;
SIGNAL \tim_1Hz|Add0~77_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~78\ : std_logic;
SIGNAL \tim_1Hz|Add0~73_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~74\ : std_logic;
SIGNAL \tim_1Hz|Add0~9_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~10\ : std_logic;
SIGNAL \tim_1Hz|Add0~5_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~6\ : std_logic;
SIGNAL \tim_1Hz|Add0~1_sumout\ : std_logic;
SIGNAL \tim_1Hz|counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|Add0~2\ : std_logic;
SIGNAL \tim_1Hz|Add0~29_sumout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~0_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~30\ : std_logic;
SIGNAL \tim_1Hz|Add0~97_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~98\ : std_logic;
SIGNAL \tim_1Hz|Add0~49_sumout\ : std_logic;
SIGNAL \tim_1Hz|counter[22]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|Equal0~1_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~50\ : std_logic;
SIGNAL \tim_1Hz|Add0~65_sumout\ : std_logic;
SIGNAL \tim_1Hz|Add0~66\ : std_logic;
SIGNAL \tim_1Hz|Add0~37_sumout\ : std_logic;
SIGNAL \tim_1Hz|counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|Equal0~3_combout\ : std_logic;
SIGNAL \tim_1Hz|Add0~38\ : std_logic;
SIGNAL \tim_1Hz|Add0~69_sumout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~2_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~4_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~5_combout\ : std_logic;
SIGNAL \tim_1Hz|Equal0~6_combout\ : std_logic;
SIGNAL \tim_1Hz|clock_signal~0_combout\ : std_logic;
SIGNAL \tim_1Hz|clock_signal~q\ : std_logic;
SIGNAL \main_fsm|lcd_enable~q\ : std_logic;
SIGNAL \main_fsm|Selector65~0_combout\ : std_logic;
SIGNAL \main_fsm|lcd_enable~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|Add0~125_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~126\ : std_logic;
SIGNAL \lcd_controller|Add0~121_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~122\ : std_logic;
SIGNAL \lcd_controller|Add0~117_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~118\ : std_logic;
SIGNAL \lcd_controller|Add0~113_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~114\ : std_logic;
SIGNAL \lcd_controller|Add0~105_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~106\ : std_logic;
SIGNAL \lcd_controller|Add0~109_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~110\ : std_logic;
SIGNAL \lcd_controller|Add0~101_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~102\ : std_logic;
SIGNAL \lcd_controller|Add0~93_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~94\ : std_logic;
SIGNAL \lcd_controller|Add0~97_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~98\ : std_logic;
SIGNAL \lcd_controller|Add0~85_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~86\ : std_logic;
SIGNAL \lcd_controller|Add0~89_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~90\ : std_logic;
SIGNAL \lcd_controller|Add0~77_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~78\ : std_logic;
SIGNAL \lcd_controller|Add0~81_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~82\ : std_logic;
SIGNAL \lcd_controller|Add0~69_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~70\ : std_logic;
SIGNAL \lcd_controller|Add0~73_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~74\ : std_logic;
SIGNAL \lcd_controller|Add0~61_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~62\ : std_logic;
SIGNAL \lcd_controller|Add0~65_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~66\ : std_logic;
SIGNAL \lcd_controller|Add0~33_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~34\ : std_logic;
SIGNAL \lcd_controller|Add0~37_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~38\ : std_logic;
SIGNAL \lcd_controller|Add0~41_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~42\ : std_logic;
SIGNAL \lcd_controller|Add0~46\ : std_logic;
SIGNAL \lcd_controller|Add0~49_sumout\ : std_logic;
SIGNAL \lcd_controller|clk_count[21]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|Add0~50\ : std_logic;
SIGNAL \lcd_controller|Add0~53_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~54\ : std_logic;
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
SIGNAL \lcd_controller|Add0~5_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~6\ : std_logic;
SIGNAL \lcd_controller|Add0~9_sumout\ : std_logic;
SIGNAL \lcd_controller|Add0~10\ : std_logic;
SIGNAL \lcd_controller|Add0~57_sumout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~5_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~1_combout\ : std_logic;
SIGNAL \lcd_controller|Add0~58\ : std_logic;
SIGNAL \lcd_controller|Add0~1_sumout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~6_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan9~5_combout\ : std_logic;
SIGNAL \lcd_controller|Selector35~0_combout\ : std_logic;
SIGNAL \lcd_controller|state.send~q\ : std_logic;
SIGNAL \lcd_controller|Selector34~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~11_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~10_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~0_combout\ : std_logic;
SIGNAL \lcd_controller|busy~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~3_combout\ : std_logic;
SIGNAL \lcd_controller|busy~2_combout\ : std_logic;
SIGNAL \lcd_controller|lcd_data[0]~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan7~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan1~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan7~1_combout\ : std_logic;
SIGNAL \lcd_controller|lcd_data[0]~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan8~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan8~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan8~2_combout\ : std_logic;
SIGNAL \lcd_controller|lcd_data[0]~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector34~1_combout\ : std_logic;
SIGNAL \lcd_controller|state.ready~q\ : std_logic;
SIGNAL \lcd_controller|LessThan0~7_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan0~8_combout\ : std_logic;
SIGNAL \lcd_controller|rw~0_combout\ : std_logic;
SIGNAL \lcd_controller|state.power_up~q\ : std_logic;
SIGNAL \lcd_controller|clk_count[27]~3_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan4~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan4~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~5_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~13_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[27]~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan2~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan2~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~6_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~7_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan5~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan5~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan6~4_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan1~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan1~2_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[27]~0_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[27]~2_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[20]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|Add0~45_sumout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector33~2_combout\ : std_logic;
SIGNAL \lcd_controller|busy~6_combout\ : std_logic;
SIGNAL \lcd_controller|Selector33~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector33~4_combout\ : std_logic;
SIGNAL \lcd_controller|Selector33~3_combout\ : std_logic;
SIGNAL \lcd_controller|Selector33~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector33~5_combout\ : std_logic;
SIGNAL \lcd_controller|state.initialize~q\ : std_logic;
SIGNAL \lcd_controller|lcd_data[0]~0_combout\ : std_logic;
SIGNAL \btn_controller|btn_num[31]~feeder_combout\ : std_logic;
SIGNAL \btn_controller|btn_num[31]~0_combout\ : std_logic;
SIGNAL \main_fsm|WideOr8~combout\ : std_logic;
SIGNAL \main_fsm|Selector60~0_combout\ : std_logic;
SIGNAL \lcd_controller|rs~0_combout\ : std_logic;
SIGNAL \lcd_controller|rs~q\ : std_logic;
SIGNAL \lcd_controller|e~q\ : std_logic;
SIGNAL \lcd_controller|LessThan3~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~1_combout\ : std_logic;
SIGNAL \lcd_controller|clk_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|LessThan12~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan12~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~5_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan11~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan11~1_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan10~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan10~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~6_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~7_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan5~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan4~2_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan2~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~4_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~8_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan1~3_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~3_combout\ : std_logic;
SIGNAL \lcd_controller|busy~3_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector46~8_combout\ : std_logic;
SIGNAL \lcd_controller|e~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|btn_num~1_combout\ : std_logic;
SIGNAL \main_fsm|Selector64~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector45~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~9_combout\ : std_logic;
SIGNAL \lcd_controller|busy~5_combout\ : std_logic;
SIGNAL \lcd_controller|Selector45~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector45~2_combout\ : std_logic;
SIGNAL \lcd_controller|lcd_data[0]~4_combout\ : std_logic;
SIGNAL \lcd_controller|Selector44~3_combout\ : std_logic;
SIGNAL \btn_controller|btn_num[1]~3_combout\ : std_logic;
SIGNAL \main_fsm|Selector63~0_combout\ : std_logic;
SIGNAL \main_fsm|lcd_bus[1]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|Selector44~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector44~2_combout\ : std_logic;
SIGNAL \lcd_controller|Selector44~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan4~3_combout\ : std_logic;
SIGNAL \lcd_controller|Selector44~4_combout\ : std_logic;
SIGNAL \lcd_controller|Selector44~5_combout\ : std_logic;
SIGNAL \lcd_controller|Selector43~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector43~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector42~0_combout\ : std_logic;
SIGNAL \lcd_controller|LessThan3~12_combout\ : std_logic;
SIGNAL \lcd_controller|Selector42~1_combout\ : std_logic;
SIGNAL \lcd_controller|Selector41~0_combout\ : std_logic;
SIGNAL \lcd_controller|Selector41~1_combout\ : std_logic;
SIGNAL \main_fsm|lcd_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \lcd_controller|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \tim_1Hz|counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \btn_controller|delay\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \main_fsm|delay\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \lcd_controller|clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \tim_100kHz|counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \btn_controller|btn_num\ : std_logic_vector(31 DOWNTO 0);
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
SIGNAL \lcd_controller|ALT_INV_clk_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \tim_1Hz|ALT_INV_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \tim_1Hz|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \tim_100kHz|ALT_INV_counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \main_fsm|ALT_INV_delay\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \lcd_controller|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \tim_100kHz|ALT_INV_clock_signal~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Selector66~0_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.START~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.SEND~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.DISPL_CLEAR~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.PRSD_MSG~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.WAIT_INPUT~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_e~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_rs~q\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_clock_signal~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_led0~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[27]~3_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_output~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_WideNor1~combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector41~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector42~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~12_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector43~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector44~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector33~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector44~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector44~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector44~1_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_lcd_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \lcd_controller|ALT_INV_Selector44~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_busy~6_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan4~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_lcd_data[0]~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_lcd_data[0]~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_lcd_data[0]~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector45~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_busy~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_busy~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~11_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~10_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~9_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector45~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~7_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~6_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan11~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan11~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan10~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan10~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan12~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan12~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan5~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan5~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan1~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan1~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan6~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~7_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~6_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_busy~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan6~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan6~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan4~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan4~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan4~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan8~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan8~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan8~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_busy~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector46~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_lcd_data[0]~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state.power_up~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state.send~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state.initialize~q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_state.ready~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_lcd_enable~q\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_and_buttons~0_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_btn_num[0]~2_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_and_buttons~q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[9]~4_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[9]~3_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[8]~0_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_output~0_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \btn_controller|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_state~q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_btn_num\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \lcd_controller|ALT_INV_clk_count[27]~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[27]~0_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_LessThan3~13_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector33~4_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector33~3_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector33~2_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector33~1_combout\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_Selector34~0_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_WideOr8~combout\ : std_logic;
SIGNAL \tim_100kHz|ALT_INV_clock_signal~0_combout\ : std_logic;
SIGNAL \tim_100kHz|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \tim_100kHz|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \main_fsm|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[3]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[15]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[14]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[13]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[12]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[22]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[21]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[20]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[18]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[29]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[28]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_delay[24]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[10]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[7]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[5]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[3]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[2]~DUPLICATE_q\ : std_logic;
SIGNAL \btn_controller|ALT_INV_output~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_lcd_bus[1]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_e~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[30]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[19]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[14]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[12]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[11]~DUPLICATE_q\ : std_logic;
SIGNAL \main_fsm|ALT_INV_delay[26]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[20]~DUPLICATE_q\ : std_logic;
SIGNAL \lcd_controller|ALT_INV_clk_count[21]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_counter[4]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_counter[6]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_counter[22]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_counter[20]~DUPLICATE_q\ : std_logic;
SIGNAL \tim_1Hz|ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_PCB_BT3~input_o\ : std_logic;
SIGNAL \ALT_INV_PCB_BT2~input_o\ : std_logic;
SIGNAL \ALT_INV_PCB_BT1~input_o\ : std_logic;
SIGNAL \ALT_INV_PCB_BT0~input_o\ : std_logic;

BEGIN

ww_SW <= SW;
LED <= ww_LED;
ww_FPGA_CLK1_50 <= FPGA_CLK1_50;
PCB_RS <= ww_PCB_RS;
PCB_RW <= ww_PCB_RW;
PCB_E <= ww_PCB_E;
DB <= ww_DB;
ww_PCB_BT0 <= PCB_BT0;
ww_PCB_BT1 <= PCB_BT1;
ww_PCB_BT2 <= PCB_BT2;
ww_PCB_BT3 <= PCB_BT3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
\lcd_controller|ALT_INV_clk_count\(30) <= NOT \lcd_controller|clk_count\(30);
\lcd_controller|ALT_INV_clk_count\(29) <= NOT \lcd_controller|clk_count\(29);
\lcd_controller|ALT_INV_clk_count\(28) <= NOT \lcd_controller|clk_count\(28);
\lcd_controller|ALT_INV_clk_count\(27) <= NOT \lcd_controller|clk_count\(27);
\lcd_controller|ALT_INV_clk_count\(26) <= NOT \lcd_controller|clk_count\(26);
\lcd_controller|ALT_INV_clk_count\(25) <= NOT \lcd_controller|clk_count\(25);
\lcd_controller|ALT_INV_clk_count\(23) <= NOT \lcd_controller|clk_count\(23);
\lcd_controller|ALT_INV_clk_count\(22) <= NOT \lcd_controller|clk_count\(22);
\lcd_controller|ALT_INV_clk_count\(24) <= NOT \lcd_controller|clk_count\(24);
\lcd_controller|ALT_INV_clk_count\(31) <= NOT \lcd_controller|clk_count\(31);
\lcd_controller|ALT_INV_clk_count\(18) <= NOT \lcd_controller|clk_count\(18);
\lcd_controller|ALT_INV_clk_count\(17) <= NOT \lcd_controller|clk_count\(17);
\lcd_controller|ALT_INV_clk_count\(20) <= NOT \lcd_controller|clk_count\(20);
\lcd_controller|ALT_INV_clk_count\(19) <= NOT \lcd_controller|clk_count\(19);
\lcd_controller|ALT_INV_clk_count\(15) <= NOT \lcd_controller|clk_count\(15);
\lcd_controller|ALT_INV_clk_count\(16) <= NOT \lcd_controller|clk_count\(16);
\lcd_controller|ALT_INV_clk_count\(14) <= NOT \lcd_controller|clk_count\(14);
\lcd_controller|ALT_INV_clk_count\(7) <= NOT \lcd_controller|clk_count\(7);
\lcd_controller|ALT_INV_clk_count\(8) <= NOT \lcd_controller|clk_count\(8);
\lcd_controller|ALT_INV_clk_count\(5) <= NOT \lcd_controller|clk_count\(5);
\lcd_controller|ALT_INV_clk_count\(6) <= NOT \lcd_controller|clk_count\(6);
\lcd_controller|ALT_INV_clk_count\(9) <= NOT \lcd_controller|clk_count\(9);
\lcd_controller|ALT_INV_clk_count\(10) <= NOT \lcd_controller|clk_count\(10);
\lcd_controller|ALT_INV_clk_count\(11) <= NOT \lcd_controller|clk_count\(11);
\lcd_controller|ALT_INV_clk_count\(12) <= NOT \lcd_controller|clk_count\(12);
\lcd_controller|ALT_INV_clk_count\(13) <= NOT \lcd_controller|clk_count\(13);
\lcd_controller|ALT_INV_clk_count\(21) <= NOT \lcd_controller|clk_count\(21);
\tim_1Hz|ALT_INV_counter\(5) <= NOT \tim_1Hz|counter\(5);
\tim_1Hz|ALT_INV_counter\(21) <= NOT \tim_1Hz|counter\(21);
\tim_1Hz|ALT_INV_counter\(7) <= NOT \tim_1Hz|counter\(7);
\tim_1Hz|ALT_INV_counter\(3) <= NOT \tim_1Hz|counter\(3);
\tim_1Hz|ALT_INV_counter\(13) <= NOT \tim_1Hz|counter\(13);
\tim_1Hz|ALT_INV_counter\(14) <= NOT \tim_1Hz|counter\(14);
\tim_1Hz|ALT_INV_counter\(15) <= NOT \tim_1Hz|counter\(15);
\tim_1Hz|ALT_INV_counter\(16) <= NOT \tim_1Hz|counter\(16);
\tim_1Hz|ALT_INV_counter\(25) <= NOT \tim_1Hz|counter\(25);
\tim_1Hz|ALT_INV_counter\(23) <= NOT \tim_1Hz|counter\(23);
\tim_1Hz|ALT_INV_counter\(4) <= NOT \tim_1Hz|counter\(4);
\tim_1Hz|ALT_INV_counter\(12) <= NOT \tim_1Hz|counter\(12);
\tim_1Hz|ALT_INV_counter\(6) <= NOT \tim_1Hz|counter\(6);
\tim_1Hz|ALT_INV_counter\(22) <= NOT \tim_1Hz|counter\(22);
\tim_1Hz|ALT_INV_counter\(2) <= NOT \tim_1Hz|counter\(2);
\tim_1Hz|ALT_INV_counter\(11) <= NOT \tim_1Hz|counter\(11);
\tim_1Hz|ALT_INV_counter\(24) <= NOT \tim_1Hz|counter\(24);
\tim_1Hz|ALT_INV_counter\(1) <= NOT \tim_1Hz|counter\(1);
\tim_1Hz|ALT_INV_counter\(20) <= NOT \tim_1Hz|counter\(20);
\tim_1Hz|ALT_INV_counter\(10) <= NOT \tim_1Hz|counter\(10);
\tim_1Hz|ALT_INV_counter\(9) <= NOT \tim_1Hz|counter\(9);
\tim_1Hz|ALT_INV_counter\(8) <= NOT \tim_1Hz|counter\(8);
\tim_1Hz|ALT_INV_counter\(0) <= NOT \tim_1Hz|counter\(0);
\tim_1Hz|ALT_INV_counter\(17) <= NOT \tim_1Hz|counter\(17);
\tim_1Hz|ALT_INV_counter\(18) <= NOT \tim_1Hz|counter\(18);
\tim_1Hz|ALT_INV_counter\(19) <= NOT \tim_1Hz|counter\(19);
\tim_1Hz|ALT_INV_Add0~57_sumout\ <= NOT \tim_1Hz|Add0~57_sumout\;
\tim_100kHz|ALT_INV_counter\(4) <= NOT \tim_100kHz|counter\(4);
\tim_100kHz|ALT_INV_counter\(5) <= NOT \tim_100kHz|counter\(5);
\tim_100kHz|ALT_INV_counter\(0) <= NOT \tim_100kHz|counter\(0);
\tim_100kHz|ALT_INV_counter\(2) <= NOT \tim_100kHz|counter\(2);
\tim_100kHz|ALT_INV_counter\(3) <= NOT \tim_100kHz|counter\(3);
\tim_100kHz|ALT_INV_counter\(1) <= NOT \tim_100kHz|counter\(1);
\tim_100kHz|ALT_INV_counter\(8) <= NOT \tim_100kHz|counter\(8);
\tim_100kHz|ALT_INV_counter\(7) <= NOT \tim_100kHz|counter\(7);
\tim_100kHz|ALT_INV_counter\(6) <= NOT \tim_100kHz|counter\(6);
\main_fsm|ALT_INV_delay\(6) <= NOT \main_fsm|delay\(6);
\main_fsm|ALT_INV_delay\(30) <= NOT \main_fsm|delay\(30);
\main_fsm|ALT_INV_delay\(4) <= NOT \main_fsm|delay\(4);
\main_fsm|ALT_INV_delay\(29) <= NOT \main_fsm|delay\(29);
\main_fsm|ALT_INV_delay\(28) <= NOT \main_fsm|delay\(28);
\main_fsm|ALT_INV_delay\(27) <= NOT \main_fsm|delay\(27);
\main_fsm|ALT_INV_delay\(19) <= NOT \main_fsm|delay\(19);
\main_fsm|ALT_INV_delay\(18) <= NOT \main_fsm|delay\(18);
\main_fsm|ALT_INV_delay\(17) <= NOT \main_fsm|delay\(17);
\main_fsm|ALT_INV_delay\(14) <= NOT \main_fsm|delay\(14);
\main_fsm|ALT_INV_delay\(12) <= NOT \main_fsm|delay\(12);
\main_fsm|ALT_INV_delay\(11) <= NOT \main_fsm|delay\(11);
\main_fsm|ALT_INV_delay\(25) <= NOT \main_fsm|delay\(25);
\main_fsm|ALT_INV_delay\(24) <= NOT \main_fsm|delay\(24);
\main_fsm|ALT_INV_delay\(23) <= NOT \main_fsm|delay\(23);
\main_fsm|ALT_INV_delay\(22) <= NOT \main_fsm|delay\(22);
\main_fsm|ALT_INV_delay\(21) <= NOT \main_fsm|delay\(21);
\main_fsm|ALT_INV_delay\(20) <= NOT \main_fsm|delay\(20);
\main_fsm|ALT_INV_delay\(26) <= NOT \main_fsm|delay\(26);
\lcd_controller|ALT_INV_clk_count\(1) <= NOT \lcd_controller|clk_count\(1);
\lcd_controller|ALT_INV_clk_count\(2) <= NOT \lcd_controller|clk_count\(2);
\lcd_controller|ALT_INV_clk_count\(3) <= NOT \lcd_controller|clk_count\(3);
\lcd_controller|ALT_INV_clk_count\(4) <= NOT \lcd_controller|clk_count\(4);
\lcd_controller|ALT_INV_Add0~117_sumout\ <= NOT \lcd_controller|Add0~117_sumout\;
\lcd_controller|ALT_INV_Add0~113_sumout\ <= NOT \lcd_controller|Add0~113_sumout\;
\lcd_controller|ALT_INV_Add0~109_sumout\ <= NOT \lcd_controller|Add0~109_sumout\;
\tim_100kHz|ALT_INV_clock_signal~q\ <= NOT \tim_100kHz|clock_signal~q\;
\main_fsm|ALT_INV_Selector66~0_combout\ <= NOT \main_fsm|Selector66~0_combout\;
\main_fsm|ALT_INV_state.START~q\ <= NOT \main_fsm|state.START~q\;
\main_fsm|ALT_INV_state.SEND~q\ <= NOT \main_fsm|state.SEND~q\;
\main_fsm|ALT_INV_state.DISPL_CLEAR~q\ <= NOT \main_fsm|state.DISPL_CLEAR~q\;
\main_fsm|ALT_INV_state.PRSD_MSG~q\ <= NOT \main_fsm|state.PRSD_MSG~q\;
\main_fsm|ALT_INV_state.WAIT_INPUT~q\ <= NOT \main_fsm|state.WAIT_INPUT~q\;
\lcd_controller|ALT_INV_e~q\ <= NOT \lcd_controller|e~q\;
\lcd_controller|ALT_INV_rs~q\ <= NOT \lcd_controller|rs~q\;
\tim_1Hz|ALT_INV_clock_signal~q\ <= NOT \tim_1Hz|clock_signal~q\;
\main_fsm|ALT_INV_led0~q\ <= NOT \main_fsm|led0~q\;
\lcd_controller|ALT_INV_clk_count[27]~3_combout\ <= NOT \lcd_controller|clk_count[27]~3_combout\;
\lcd_controller|ALT_INV_clk_count\(0) <= NOT \lcd_controller|clk_count\(0);
\btn_controller|ALT_INV_Add0~121_sumout\ <= NOT \btn_controller|Add0~121_sumout\;
\btn_controller|ALT_INV_Add0~117_sumout\ <= NOT \btn_controller|Add0~117_sumout\;
\btn_controller|ALT_INV_Add0~113_sumout\ <= NOT \btn_controller|Add0~113_sumout\;
\btn_controller|ALT_INV_Add0~109_sumout\ <= NOT \btn_controller|Add0~109_sumout\;
\btn_controller|ALT_INV_Add0~105_sumout\ <= NOT \btn_controller|Add0~105_sumout\;
\btn_controller|ALT_INV_Add0~101_sumout\ <= NOT \btn_controller|Add0~101_sumout\;
\btn_controller|ALT_INV_Add0~97_sumout\ <= NOT \btn_controller|Add0~97_sumout\;
\btn_controller|ALT_INV_Add0~93_sumout\ <= NOT \btn_controller|Add0~93_sumout\;
\btn_controller|ALT_INV_Add0~89_sumout\ <= NOT \btn_controller|Add0~89_sumout\;
\btn_controller|ALT_INV_Add0~85_sumout\ <= NOT \btn_controller|Add0~85_sumout\;
\btn_controller|ALT_INV_Add0~81_sumout\ <= NOT \btn_controller|Add0~81_sumout\;
\btn_controller|ALT_INV_Add0~77_sumout\ <= NOT \btn_controller|Add0~77_sumout\;
\btn_controller|ALT_INV_Add0~73_sumout\ <= NOT \btn_controller|Add0~73_sumout\;
\btn_controller|ALT_INV_Add0~69_sumout\ <= NOT \btn_controller|Add0~69_sumout\;
\btn_controller|ALT_INV_Add0~65_sumout\ <= NOT \btn_controller|Add0~65_sumout\;
\btn_controller|ALT_INV_Add0~61_sumout\ <= NOT \btn_controller|Add0~61_sumout\;
\btn_controller|ALT_INV_Add0~57_sumout\ <= NOT \btn_controller|Add0~57_sumout\;
\btn_controller|ALT_INV_Add0~53_sumout\ <= NOT \btn_controller|Add0~53_sumout\;
\btn_controller|ALT_INV_Add0~49_sumout\ <= NOT \btn_controller|Add0~49_sumout\;
\btn_controller|ALT_INV_Add0~45_sumout\ <= NOT \btn_controller|Add0~45_sumout\;
\btn_controller|ALT_INV_Add0~41_sumout\ <= NOT \btn_controller|Add0~41_sumout\;
\btn_controller|ALT_INV_Add0~37_sumout\ <= NOT \btn_controller|Add0~37_sumout\;
\btn_controller|ALT_INV_Add0~33_sumout\ <= NOT \btn_controller|Add0~33_sumout\;
\btn_controller|ALT_INV_Add0~29_sumout\ <= NOT \btn_controller|Add0~29_sumout\;
\btn_controller|ALT_INV_Add0~25_sumout\ <= NOT \btn_controller|Add0~25_sumout\;
\btn_controller|ALT_INV_Add0~21_sumout\ <= NOT \btn_controller|Add0~21_sumout\;
\btn_controller|ALT_INV_Add0~17_sumout\ <= NOT \btn_controller|Add0~17_sumout\;
\btn_controller|ALT_INV_Add0~13_sumout\ <= NOT \btn_controller|Add0~13_sumout\;
\btn_controller|ALT_INV_Add0~9_sumout\ <= NOT \btn_controller|Add0~9_sumout\;
\btn_controller|ALT_INV_Add0~5_sumout\ <= NOT \btn_controller|Add0~5_sumout\;
\btn_controller|ALT_INV_Add0~1_sumout\ <= NOT \btn_controller|Add0~1_sumout\;
\main_fsm|ALT_INV_Add0~121_sumout\ <= NOT \main_fsm|Add0~121_sumout\;
\main_fsm|ALT_INV_Add0~117_sumout\ <= NOT \main_fsm|Add0~117_sumout\;
\main_fsm|ALT_INV_Add0~113_sumout\ <= NOT \main_fsm|Add0~113_sumout\;
\main_fsm|ALT_INV_Add0~109_sumout\ <= NOT \main_fsm|Add0~109_sumout\;
\main_fsm|ALT_INV_Add0~105_sumout\ <= NOT \main_fsm|Add0~105_sumout\;
\main_fsm|ALT_INV_Add0~101_sumout\ <= NOT \main_fsm|Add0~101_sumout\;
\main_fsm|ALT_INV_Add0~97_sumout\ <= NOT \main_fsm|Add0~97_sumout\;
\main_fsm|ALT_INV_Add0~93_sumout\ <= NOT \main_fsm|Add0~93_sumout\;
\main_fsm|ALT_INV_Add0~89_sumout\ <= NOT \main_fsm|Add0~89_sumout\;
\main_fsm|ALT_INV_Add0~85_sumout\ <= NOT \main_fsm|Add0~85_sumout\;
\main_fsm|ALT_INV_Add0~81_sumout\ <= NOT \main_fsm|Add0~81_sumout\;
\main_fsm|ALT_INV_Add0~77_sumout\ <= NOT \main_fsm|Add0~77_sumout\;
\main_fsm|ALT_INV_delay\(13) <= NOT \main_fsm|delay\(13);
\main_fsm|ALT_INV_delay\(10) <= NOT \main_fsm|delay\(10);
\main_fsm|ALT_INV_delay\(9) <= NOT \main_fsm|delay\(9);
\main_fsm|ALT_INV_delay\(8) <= NOT \main_fsm|delay\(8);
\main_fsm|ALT_INV_Equal0~3_combout\ <= NOT \main_fsm|Equal0~3_combout\;
\main_fsm|ALT_INV_delay\(7) <= NOT \main_fsm|delay\(7);
\main_fsm|ALT_INV_delay\(5) <= NOT \main_fsm|delay\(5);
\main_fsm|ALT_INV_delay\(3) <= NOT \main_fsm|delay\(3);
\main_fsm|ALT_INV_delay\(2) <= NOT \main_fsm|delay\(2);
\main_fsm|ALT_INV_delay\(1) <= NOT \main_fsm|delay\(1);
\main_fsm|ALT_INV_delay\(0) <= NOT \main_fsm|delay\(0);
\main_fsm|ALT_INV_Equal0~2_combout\ <= NOT \main_fsm|Equal0~2_combout\;
\main_fsm|ALT_INV_Equal0~1_combout\ <= NOT \main_fsm|Equal0~1_combout\;
\main_fsm|ALT_INV_Equal0~0_combout\ <= NOT \main_fsm|Equal0~0_combout\;
\btn_controller|ALT_INV_output~q\ <= NOT \btn_controller|output~q\;
\main_fsm|ALT_INV_WideNor1~combout\ <= NOT \main_fsm|WideNor1~combout\;
\lcd_controller|ALT_INV_Selector41~0_combout\ <= NOT \lcd_controller|Selector41~0_combout\;
\lcd_controller|ALT_INV_Selector42~0_combout\ <= NOT \lcd_controller|Selector42~0_combout\;
\lcd_controller|ALT_INV_LessThan3~12_combout\ <= NOT \lcd_controller|LessThan3~12_combout\;
\lcd_controller|ALT_INV_Selector43~0_combout\ <= NOT \lcd_controller|Selector43~0_combout\;
\lcd_controller|ALT_INV_Selector44~5_combout\ <= NOT \lcd_controller|Selector44~5_combout\;
\lcd_controller|ALT_INV_Selector33~0_combout\ <= NOT \lcd_controller|Selector33~0_combout\;
\lcd_controller|ALT_INV_Selector44~3_combout\ <= NOT \lcd_controller|Selector44~3_combout\;
\lcd_controller|ALT_INV_Selector44~2_combout\ <= NOT \lcd_controller|Selector44~2_combout\;
\lcd_controller|ALT_INV_Selector44~1_combout\ <= NOT \lcd_controller|Selector44~1_combout\;
\main_fsm|ALT_INV_lcd_bus\(1) <= NOT \main_fsm|lcd_bus\(1);
\lcd_controller|ALT_INV_Selector44~0_combout\ <= NOT \lcd_controller|Selector44~0_combout\;
\lcd_controller|ALT_INV_busy~6_combout\ <= NOT \lcd_controller|busy~6_combout\;
\lcd_controller|ALT_INV_LessThan4~3_combout\ <= NOT \lcd_controller|LessThan4~3_combout\;
\lcd_controller|ALT_INV_lcd_data[0]~3_combout\ <= NOT \lcd_controller|lcd_data[0]~3_combout\;
\lcd_controller|ALT_INV_lcd_data[0]~2_combout\ <= NOT \lcd_controller|lcd_data[0]~2_combout\;
\lcd_controller|ALT_INV_lcd_data[0]~1_combout\ <= NOT \lcd_controller|lcd_data[0]~1_combout\;
\lcd_controller|ALT_INV_Selector45~1_combout\ <= NOT \lcd_controller|Selector45~1_combout\;
\lcd_controller|ALT_INV_busy~5_combout\ <= NOT \lcd_controller|busy~5_combout\;
\lcd_controller|ALT_INV_busy~4_combout\ <= NOT \lcd_controller|busy~4_combout\;
\lcd_controller|ALT_INV_LessThan3~11_combout\ <= NOT \lcd_controller|LessThan3~11_combout\;
\lcd_controller|ALT_INV_LessThan3~10_combout\ <= NOT \lcd_controller|LessThan3~10_combout\;
\lcd_controller|ALT_INV_LessThan3~9_combout\ <= NOT \lcd_controller|LessThan3~9_combout\;
\lcd_controller|ALT_INV_Selector45~0_combout\ <= NOT \lcd_controller|Selector45~0_combout\;
\main_fsm|ALT_INV_lcd_bus\(0) <= NOT \main_fsm|lcd_bus\(0);
\lcd_controller|ALT_INV_Selector46~7_combout\ <= NOT \lcd_controller|Selector46~7_combout\;
\lcd_controller|ALT_INV_Selector46~6_combout\ <= NOT \lcd_controller|Selector46~6_combout\;
\lcd_controller|ALT_INV_LessThan11~1_combout\ <= NOT \lcd_controller|LessThan11~1_combout\;
\lcd_controller|ALT_INV_LessThan11~0_combout\ <= NOT \lcd_controller|LessThan11~0_combout\;
\lcd_controller|ALT_INV_Selector46~5_combout\ <= NOT \lcd_controller|Selector46~5_combout\;
\lcd_controller|ALT_INV_LessThan9~5_combout\ <= NOT \lcd_controller|LessThan9~5_combout\;
\lcd_controller|ALT_INV_LessThan9~4_combout\ <= NOT \lcd_controller|LessThan9~4_combout\;
\lcd_controller|ALT_INV_LessThan9~3_combout\ <= NOT \lcd_controller|LessThan9~3_combout\;
\lcd_controller|ALT_INV_LessThan9~2_combout\ <= NOT \lcd_controller|LessThan9~2_combout\;
\lcd_controller|ALT_INV_LessThan10~1_combout\ <= NOT \lcd_controller|LessThan10~1_combout\;
\lcd_controller|ALT_INV_LessThan10~0_combout\ <= NOT \lcd_controller|LessThan10~0_combout\;
\lcd_controller|ALT_INV_LessThan12~1_combout\ <= NOT \lcd_controller|LessThan12~1_combout\;
\lcd_controller|ALT_INV_LessThan12~0_combout\ <= NOT \lcd_controller|LessThan12~0_combout\;
\lcd_controller|ALT_INV_LessThan9~1_combout\ <= NOT \lcd_controller|LessThan9~1_combout\;
\lcd_controller|ALT_INV_LessThan9~0_combout\ <= NOT \lcd_controller|LessThan9~0_combout\;
\lcd_controller|ALT_INV_Selector46~4_combout\ <= NOT \lcd_controller|Selector46~4_combout\;
\lcd_controller|ALT_INV_LessThan5~2_combout\ <= NOT \lcd_controller|LessThan5~2_combout\;
\lcd_controller|ALT_INV_LessThan5~1_combout\ <= NOT \lcd_controller|LessThan5~1_combout\;
\lcd_controller|ALT_INV_LessThan5~0_combout\ <= NOT \lcd_controller|LessThan5~0_combout\;
\lcd_controller|ALT_INV_Selector46~3_combout\ <= NOT \lcd_controller|Selector46~3_combout\;
\lcd_controller|ALT_INV_LessThan1~3_combout\ <= NOT \lcd_controller|LessThan1~3_combout\;
\lcd_controller|ALT_INV_LessThan1~2_combout\ <= NOT \lcd_controller|LessThan1~2_combout\;
\lcd_controller|ALT_INV_LessThan6~4_combout\ <= NOT \lcd_controller|LessThan6~4_combout\;
\lcd_controller|ALT_INV_LessThan1~1_combout\ <= NOT \lcd_controller|LessThan1~1_combout\;
\lcd_controller|ALT_INV_LessThan3~8_combout\ <= NOT \lcd_controller|LessThan3~8_combout\;
\lcd_controller|ALT_INV_LessThan3~7_combout\ <= NOT \lcd_controller|LessThan3~7_combout\;
\lcd_controller|ALT_INV_LessThan3~6_combout\ <= NOT \lcd_controller|LessThan3~6_combout\;
\lcd_controller|ALT_INV_Selector46~2_combout\ <= NOT \lcd_controller|Selector46~2_combout\;
\lcd_controller|ALT_INV_busy~3_combout\ <= NOT \lcd_controller|busy~3_combout\;
\lcd_controller|ALT_INV_LessThan6~3_combout\ <= NOT \lcd_controller|LessThan6~3_combout\;
\lcd_controller|ALT_INV_LessThan6~2_combout\ <= NOT \lcd_controller|LessThan6~2_combout\;
\lcd_controller|ALT_INV_LessThan6~1_combout\ <= NOT \lcd_controller|LessThan6~1_combout\;
\lcd_controller|ALT_INV_LessThan3~5_combout\ <= NOT \lcd_controller|LessThan3~5_combout\;
\lcd_controller|ALT_INV_LessThan4~2_combout\ <= NOT \lcd_controller|LessThan4~2_combout\;
\lcd_controller|ALT_INV_LessThan4~1_combout\ <= NOT \lcd_controller|LessThan4~1_combout\;
\lcd_controller|ALT_INV_LessThan4~0_combout\ <= NOT \lcd_controller|LessThan4~0_combout\;
\lcd_controller|ALT_INV_LessThan2~2_combout\ <= NOT \lcd_controller|LessThan2~2_combout\;
\lcd_controller|ALT_INV_LessThan2~1_combout\ <= NOT \lcd_controller|LessThan2~1_combout\;
\lcd_controller|ALT_INV_LessThan2~0_combout\ <= NOT \lcd_controller|LessThan2~0_combout\;
\lcd_controller|ALT_INV_LessThan3~4_combout\ <= NOT \lcd_controller|LessThan3~4_combout\;
\lcd_controller|ALT_INV_LessThan3~3_combout\ <= NOT \lcd_controller|LessThan3~3_combout\;
\lcd_controller|ALT_INV_Selector46~1_combout\ <= NOT \lcd_controller|Selector46~1_combout\;
\lcd_controller|ALT_INV_LessThan8~2_combout\ <= NOT \lcd_controller|LessThan8~2_combout\;
\lcd_controller|ALT_INV_LessThan8~1_combout\ <= NOT \lcd_controller|LessThan8~1_combout\;
\lcd_controller|ALT_INV_LessThan8~0_combout\ <= NOT \lcd_controller|LessThan8~0_combout\;
\lcd_controller|ALT_INV_LessThan3~2_combout\ <= NOT \lcd_controller|LessThan3~2_combout\;
\lcd_controller|ALT_INV_LessThan6~0_combout\ <= NOT \lcd_controller|LessThan6~0_combout\;
\lcd_controller|ALT_INV_LessThan7~1_combout\ <= NOT \lcd_controller|LessThan7~1_combout\;
\lcd_controller|ALT_INV_LessThan7~0_combout\ <= NOT \lcd_controller|LessThan7~0_combout\;
\lcd_controller|ALT_INV_LessThan1~0_combout\ <= NOT \lcd_controller|LessThan1~0_combout\;
\lcd_controller|ALT_INV_LessThan3~1_combout\ <= NOT \lcd_controller|LessThan3~1_combout\;
\lcd_controller|ALT_INV_LessThan3~0_combout\ <= NOT \lcd_controller|LessThan3~0_combout\;
\lcd_controller|ALT_INV_busy~2_combout\ <= NOT \lcd_controller|busy~2_combout\;
\lcd_controller|ALT_INV_Selector46~0_combout\ <= NOT \lcd_controller|Selector46~0_combout\;
\lcd_controller|ALT_INV_lcd_data[0]~0_combout\ <= NOT \lcd_controller|lcd_data[0]~0_combout\;
\lcd_controller|ALT_INV_state.power_up~q\ <= NOT \lcd_controller|state.power_up~q\;
\lcd_controller|ALT_INV_LessThan0~8_combout\ <= NOT \lcd_controller|LessThan0~8_combout\;
\lcd_controller|ALT_INV_LessThan0~7_combout\ <= NOT \lcd_controller|LessThan0~7_combout\;
\lcd_controller|ALT_INV_LessThan0~6_combout\ <= NOT \lcd_controller|LessThan0~6_combout\;
\lcd_controller|ALT_INV_LessThan0~5_combout\ <= NOT \lcd_controller|LessThan0~5_combout\;
\lcd_controller|ALT_INV_LessThan0~4_combout\ <= NOT \lcd_controller|LessThan0~4_combout\;
\lcd_controller|ALT_INV_LessThan0~3_combout\ <= NOT \lcd_controller|LessThan0~3_combout\;
\lcd_controller|ALT_INV_LessThan0~2_combout\ <= NOT \lcd_controller|LessThan0~2_combout\;
\lcd_controller|ALT_INV_LessThan0~1_combout\ <= NOT \lcd_controller|LessThan0~1_combout\;
\lcd_controller|ALT_INV_LessThan0~0_combout\ <= NOT \lcd_controller|LessThan0~0_combout\;
\lcd_controller|ALT_INV_state.send~q\ <= NOT \lcd_controller|state.send~q\;
\lcd_controller|ALT_INV_state.initialize~q\ <= NOT \lcd_controller|state.initialize~q\;
\lcd_controller|ALT_INV_state.ready~q\ <= NOT \lcd_controller|state.ready~q\;
\main_fsm|ALT_INV_lcd_enable~q\ <= NOT \main_fsm|lcd_enable~q\;
\main_fsm|ALT_INV_lcd_bus\(4) <= NOT \main_fsm|lcd_bus\(4);
\tim_1Hz|ALT_INV_Equal0~6_combout\ <= NOT \tim_1Hz|Equal0~6_combout\;
\tim_1Hz|ALT_INV_Equal0~5_combout\ <= NOT \tim_1Hz|Equal0~5_combout\;
\tim_1Hz|ALT_INV_Equal0~4_combout\ <= NOT \tim_1Hz|Equal0~4_combout\;
\tim_1Hz|ALT_INV_Equal0~3_combout\ <= NOT \tim_1Hz|Equal0~3_combout\;
\tim_1Hz|ALT_INV_Equal0~2_combout\ <= NOT \tim_1Hz|Equal0~2_combout\;
\tim_1Hz|ALT_INV_Equal0~1_combout\ <= NOT \tim_1Hz|Equal0~1_combout\;
\tim_1Hz|ALT_INV_Equal0~0_combout\ <= NOT \tim_1Hz|Equal0~0_combout\;
\btn_controller|ALT_INV_and_buttons~0_combout\ <= NOT \btn_controller|and_buttons~0_combout\;
\btn_controller|ALT_INV_btn_num[0]~2_combout\ <= NOT \btn_controller|btn_num[0]~2_combout\;
\btn_controller|ALT_INV_and_buttons~q\ <= NOT \btn_controller|and_buttons~q\;
\main_fsm|ALT_INV_delay[9]~4_combout\ <= NOT \main_fsm|delay[9]~4_combout\;
\main_fsm|ALT_INV_delay[9]~3_combout\ <= NOT \main_fsm|delay[9]~3_combout\;
\main_fsm|ALT_INV_delay[8]~0_combout\ <= NOT \main_fsm|delay[8]~0_combout\;
\btn_controller|ALT_INV_output~0_combout\ <= NOT \btn_controller|output~0_combout\;
\btn_controller|ALT_INV_Equal0~5_combout\ <= NOT \btn_controller|Equal0~5_combout\;
\btn_controller|ALT_INV_Equal0~4_combout\ <= NOT \btn_controller|Equal0~4_combout\;
\btn_controller|ALT_INV_delay\(11) <= NOT \btn_controller|delay\(11);
\btn_controller|ALT_INV_delay\(10) <= NOT \btn_controller|delay\(10);
\btn_controller|ALT_INV_delay\(9) <= NOT \btn_controller|delay\(9);
\btn_controller|ALT_INV_delay\(8) <= NOT \btn_controller|delay\(8);
\btn_controller|ALT_INV_delay\(7) <= NOT \btn_controller|delay\(7);
\btn_controller|ALT_INV_delay\(6) <= NOT \btn_controller|delay\(6);
\btn_controller|ALT_INV_Equal0~3_combout\ <= NOT \btn_controller|Equal0~3_combout\;
\btn_controller|ALT_INV_delay\(5) <= NOT \btn_controller|delay\(5);
\btn_controller|ALT_INV_delay\(4) <= NOT \btn_controller|delay\(4);
\btn_controller|ALT_INV_delay\(3) <= NOT \btn_controller|delay\(3);
\btn_controller|ALT_INV_delay\(2) <= NOT \btn_controller|delay\(2);
\btn_controller|ALT_INV_delay\(1) <= NOT \btn_controller|delay\(1);
\btn_controller|ALT_INV_delay\(0) <= NOT \btn_controller|delay\(0);
\btn_controller|ALT_INV_Equal0~2_combout\ <= NOT \btn_controller|Equal0~2_combout\;
\btn_controller|ALT_INV_delay\(17) <= NOT \btn_controller|delay\(17);
\btn_controller|ALT_INV_delay\(16) <= NOT \btn_controller|delay\(16);
\btn_controller|ALT_INV_delay\(15) <= NOT \btn_controller|delay\(15);
\btn_controller|ALT_INV_delay\(14) <= NOT \btn_controller|delay\(14);
\btn_controller|ALT_INV_delay\(13) <= NOT \btn_controller|delay\(13);
\btn_controller|ALT_INV_delay\(12) <= NOT \btn_controller|delay\(12);
\btn_controller|ALT_INV_Equal0~1_combout\ <= NOT \btn_controller|Equal0~1_combout\;
\btn_controller|ALT_INV_delay\(23) <= NOT \btn_controller|delay\(23);
\btn_controller|ALT_INV_delay\(22) <= NOT \btn_controller|delay\(22);
\btn_controller|ALT_INV_delay\(21) <= NOT \btn_controller|delay\(21);
\btn_controller|ALT_INV_delay\(20) <= NOT \btn_controller|delay\(20);
\btn_controller|ALT_INV_delay\(19) <= NOT \btn_controller|delay\(19);
\btn_controller|ALT_INV_delay\(18) <= NOT \btn_controller|delay\(18);
\btn_controller|ALT_INV_Equal0~0_combout\ <= NOT \btn_controller|Equal0~0_combout\;
\btn_controller|ALT_INV_delay\(29) <= NOT \btn_controller|delay\(29);
\btn_controller|ALT_INV_delay\(28) <= NOT \btn_controller|delay\(28);
\btn_controller|ALT_INV_delay\(27) <= NOT \btn_controller|delay\(27);
\btn_controller|ALT_INV_delay\(26) <= NOT \btn_controller|delay\(26);
\btn_controller|ALT_INV_delay\(25) <= NOT \btn_controller|delay\(25);
\btn_controller|ALT_INV_delay\(24) <= NOT \btn_controller|delay\(24);
\btn_controller|ALT_INV_delay\(30) <= NOT \btn_controller|delay\(30);
\btn_controller|ALT_INV_state~q\ <= NOT \btn_controller|state~q\;
\btn_controller|ALT_INV_btn_num\(1) <= NOT \btn_controller|btn_num\(1);
\btn_controller|ALT_INV_btn_num\(0) <= NOT \btn_controller|btn_num\(0);
\lcd_controller|ALT_INV_clk_count[27]~1_combout\ <= NOT \lcd_controller|clk_count[27]~1_combout\;
\lcd_controller|ALT_INV_clk_count[27]~0_combout\ <= NOT \lcd_controller|clk_count[27]~0_combout\;
\lcd_controller|ALT_INV_LessThan3~13_combout\ <= NOT \lcd_controller|LessThan3~13_combout\;
\lcd_controller|ALT_INV_Selector33~4_combout\ <= NOT \lcd_controller|Selector33~4_combout\;
\lcd_controller|ALT_INV_Selector33~3_combout\ <= NOT \lcd_controller|Selector33~3_combout\;
\lcd_controller|ALT_INV_Selector33~2_combout\ <= NOT \lcd_controller|Selector33~2_combout\;
\lcd_controller|ALT_INV_Selector33~1_combout\ <= NOT \lcd_controller|Selector33~1_combout\;
\lcd_controller|ALT_INV_Selector34~0_combout\ <= NOT \lcd_controller|Selector34~0_combout\;
\btn_controller|ALT_INV_btn_num\(31) <= NOT \btn_controller|btn_num\(31);
\main_fsm|ALT_INV_WideOr8~combout\ <= NOT \main_fsm|WideOr8~combout\;
\tim_100kHz|ALT_INV_clock_signal~0_combout\ <= NOT \tim_100kHz|clock_signal~0_combout\;
\tim_100kHz|ALT_INV_Equal0~1_combout\ <= NOT \tim_100kHz|Equal0~1_combout\;
\tim_100kHz|ALT_INV_Equal0~0_combout\ <= NOT \tim_100kHz|Equal0~0_combout\;
\main_fsm|ALT_INV_Equal0~5_combout\ <= NOT \main_fsm|Equal0~5_combout\;
\main_fsm|ALT_INV_Equal0~4_combout\ <= NOT \main_fsm|Equal0~4_combout\;
\main_fsm|ALT_INV_delay\(16) <= NOT \main_fsm|delay\(16);
\main_fsm|ALT_INV_delay\(15) <= NOT \main_fsm|delay\(15);
\btn_controller|ALT_INV_delay[3]~DUPLICATE_q\ <= NOT \btn_controller|delay[3]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[15]~DUPLICATE_q\ <= NOT \btn_controller|delay[15]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[14]~DUPLICATE_q\ <= NOT \btn_controller|delay[14]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[13]~DUPLICATE_q\ <= NOT \btn_controller|delay[13]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[12]~DUPLICATE_q\ <= NOT \btn_controller|delay[12]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[22]~DUPLICATE_q\ <= NOT \btn_controller|delay[22]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[21]~DUPLICATE_q\ <= NOT \btn_controller|delay[21]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[20]~DUPLICATE_q\ <= NOT \btn_controller|delay[20]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[18]~DUPLICATE_q\ <= NOT \btn_controller|delay[18]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[29]~DUPLICATE_q\ <= NOT \btn_controller|delay[29]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[28]~DUPLICATE_q\ <= NOT \btn_controller|delay[28]~DUPLICATE_q\;
\btn_controller|ALT_INV_delay[24]~DUPLICATE_q\ <= NOT \btn_controller|delay[24]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[10]~DUPLICATE_q\ <= NOT \main_fsm|delay[10]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[7]~DUPLICATE_q\ <= NOT \main_fsm|delay[7]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[5]~DUPLICATE_q\ <= NOT \main_fsm|delay[5]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[3]~DUPLICATE_q\ <= NOT \main_fsm|delay[3]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[2]~DUPLICATE_q\ <= NOT \main_fsm|delay[2]~DUPLICATE_q\;
\btn_controller|ALT_INV_output~DUPLICATE_q\ <= NOT \btn_controller|output~DUPLICATE_q\;
\main_fsm|ALT_INV_lcd_bus[1]~DUPLICATE_q\ <= NOT \main_fsm|lcd_bus[1]~DUPLICATE_q\;
\main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\ <= NOT \main_fsm|lcd_enable~DUPLICATE_q\;
\main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\ <= NOT \main_fsm|state.PRSD_MSG~DUPLICATE_q\;
\main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\ <= NOT \main_fsm|state.WAIT_INPUT~DUPLICATE_q\;
\lcd_controller|ALT_INV_e~DUPLICATE_q\ <= NOT \lcd_controller|e~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[30]~DUPLICATE_q\ <= NOT \main_fsm|delay[30]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[19]~DUPLICATE_q\ <= NOT \main_fsm|delay[19]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[14]~DUPLICATE_q\ <= NOT \main_fsm|delay[14]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[12]~DUPLICATE_q\ <= NOT \main_fsm|delay[12]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[11]~DUPLICATE_q\ <= NOT \main_fsm|delay[11]~DUPLICATE_q\;
\main_fsm|ALT_INV_delay[26]~DUPLICATE_q\ <= NOT \main_fsm|delay[26]~DUPLICATE_q\;
\lcd_controller|ALT_INV_clk_count[1]~DUPLICATE_q\ <= NOT \lcd_controller|clk_count[1]~DUPLICATE_q\;
\lcd_controller|ALT_INV_clk_count[20]~DUPLICATE_q\ <= NOT \lcd_controller|clk_count[20]~DUPLICATE_q\;
\lcd_controller|ALT_INV_clk_count[21]~DUPLICATE_q\ <= NOT \lcd_controller|clk_count[21]~DUPLICATE_q\;
\tim_1Hz|ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \tim_1Hz|counter[3]~DUPLICATE_q\;
\tim_1Hz|ALT_INV_counter[4]~DUPLICATE_q\ <= NOT \tim_1Hz|counter[4]~DUPLICATE_q\;
\tim_1Hz|ALT_INV_counter[6]~DUPLICATE_q\ <= NOT \tim_1Hz|counter[6]~DUPLICATE_q\;
\tim_1Hz|ALT_INV_counter[22]~DUPLICATE_q\ <= NOT \tim_1Hz|counter[22]~DUPLICATE_q\;
\tim_1Hz|ALT_INV_counter[1]~DUPLICATE_q\ <= NOT \tim_1Hz|counter[1]~DUPLICATE_q\;
\tim_1Hz|ALT_INV_counter[20]~DUPLICATE_q\ <= NOT \tim_1Hz|counter[20]~DUPLICATE_q\;
\tim_1Hz|ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \tim_1Hz|counter[0]~DUPLICATE_q\;
\ALT_INV_PCB_BT3~input_o\ <= NOT \PCB_BT3~input_o\;
\ALT_INV_PCB_BT2~input_o\ <= NOT \PCB_BT2~input_o\;
\ALT_INV_PCB_BT1~input_o\ <= NOT \PCB_BT1~input_o\;
\ALT_INV_PCB_BT0~input_o\ <= NOT \PCB_BT0~input_o\;

-- Location: IOOBUF_X89_Y8_N22
\LED[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \main_fsm|led0~q\,
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
	i => \tim_1Hz|clock_signal~q\,
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

-- Location: IOOBUF_X54_Y0_N2
\PIN_AA11~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => PIN_AA11);

-- Location: IOOBUF_X6_Y0_N19
\PIN_AA26~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => PIN_AA26);

-- Location: IOOBUF_X89_Y6_N5
\PIN_AB26~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => PIN_AB26);

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

-- Location: MLABCELL_X78_Y4_N30
\tim_100kHz|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~25_sumout\ = SUM(( \tim_100kHz|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \tim_100kHz|Add0~26\ = CARRY(( \tim_100kHz|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(0),
	cin => GND,
	sumout => \tim_100kHz|Add0~25_sumout\,
	cout => \tim_100kHz|Add0~26\);

-- Location: FF_X78_Y4_N31
\tim_100kHz|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_100kHz|Add0~25_sumout\,
	sclr => \tim_100kHz|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_100kHz|counter\(0));

-- Location: MLABCELL_X78_Y4_N33
\tim_100kHz|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~13_sumout\ = SUM(( \tim_100kHz|counter\(1) ) + ( GND ) + ( \tim_100kHz|Add0~26\ ))
-- \tim_100kHz|Add0~14\ = CARRY(( \tim_100kHz|counter\(1) ) + ( GND ) + ( \tim_100kHz|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(1),
	cin => \tim_100kHz|Add0~26\,
	sumout => \tim_100kHz|Add0~13_sumout\,
	cout => \tim_100kHz|Add0~14\);

-- Location: FF_X78_Y4_N35
\tim_100kHz|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_100kHz|Add0~13_sumout\,
	sclr => \tim_100kHz|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_100kHz|counter\(1));

-- Location: MLABCELL_X78_Y4_N36
\tim_100kHz|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~21_sumout\ = SUM(( \tim_100kHz|counter\(2) ) + ( GND ) + ( \tim_100kHz|Add0~14\ ))
-- \tim_100kHz|Add0~22\ = CARRY(( \tim_100kHz|counter\(2) ) + ( GND ) + ( \tim_100kHz|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(2),
	cin => \tim_100kHz|Add0~14\,
	sumout => \tim_100kHz|Add0~21_sumout\,
	cout => \tim_100kHz|Add0~22\);

-- Location: FF_X78_Y4_N38
\tim_100kHz|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_100kHz|Add0~21_sumout\,
	sclr => \tim_100kHz|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_100kHz|counter\(2));

-- Location: MLABCELL_X78_Y4_N39
\tim_100kHz|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~17_sumout\ = SUM(( \tim_100kHz|counter\(3) ) + ( GND ) + ( \tim_100kHz|Add0~22\ ))
-- \tim_100kHz|Add0~18\ = CARRY(( \tim_100kHz|counter\(3) ) + ( GND ) + ( \tim_100kHz|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(3),
	cin => \tim_100kHz|Add0~22\,
	sumout => \tim_100kHz|Add0~17_sumout\,
	cout => \tim_100kHz|Add0~18\);

-- Location: FF_X78_Y4_N41
\tim_100kHz|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_100kHz|Add0~17_sumout\,
	sclr => \tim_100kHz|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_100kHz|counter\(3));

-- Location: MLABCELL_X78_Y4_N42
\tim_100kHz|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~33_sumout\ = SUM(( \tim_100kHz|counter\(4) ) + ( GND ) + ( \tim_100kHz|Add0~18\ ))
-- \tim_100kHz|Add0~34\ = CARRY(( \tim_100kHz|counter\(4) ) + ( GND ) + ( \tim_100kHz|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(4),
	cin => \tim_100kHz|Add0~18\,
	sumout => \tim_100kHz|Add0~33_sumout\,
	cout => \tim_100kHz|Add0~34\);

-- Location: FF_X78_Y4_N44
\tim_100kHz|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_100kHz|Add0~33_sumout\,
	sclr => \tim_100kHz|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_100kHz|counter\(4));

-- Location: MLABCELL_X78_Y4_N45
\tim_100kHz|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~29_sumout\ = SUM(( \tim_100kHz|counter\(5) ) + ( GND ) + ( \tim_100kHz|Add0~34\ ))
-- \tim_100kHz|Add0~30\ = CARRY(( \tim_100kHz|counter\(5) ) + ( GND ) + ( \tim_100kHz|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(5),
	cin => \tim_100kHz|Add0~34\,
	sumout => \tim_100kHz|Add0~29_sumout\,
	cout => \tim_100kHz|Add0~30\);

-- Location: FF_X78_Y4_N47
\tim_100kHz|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_100kHz|Add0~29_sumout\,
	sclr => \tim_100kHz|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_100kHz|counter\(5));

-- Location: MLABCELL_X78_Y4_N48
\tim_100kHz|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~1_sumout\ = SUM(( \tim_100kHz|counter\(6) ) + ( GND ) + ( \tim_100kHz|Add0~30\ ))
-- \tim_100kHz|Add0~2\ = CARRY(( \tim_100kHz|counter\(6) ) + ( GND ) + ( \tim_100kHz|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(6),
	cin => \tim_100kHz|Add0~30\,
	sumout => \tim_100kHz|Add0~1_sumout\,
	cout => \tim_100kHz|Add0~2\);

-- Location: FF_X78_Y4_N50
\tim_100kHz|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_100kHz|Add0~1_sumout\,
	sclr => \tim_100kHz|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_100kHz|counter\(6));

-- Location: MLABCELL_X78_Y4_N51
\tim_100kHz|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~5_sumout\ = SUM(( \tim_100kHz|counter\(7) ) + ( GND ) + ( \tim_100kHz|Add0~2\ ))
-- \tim_100kHz|Add0~6\ = CARRY(( \tim_100kHz|counter\(7) ) + ( GND ) + ( \tim_100kHz|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(7),
	cin => \tim_100kHz|Add0~2\,
	sumout => \tim_100kHz|Add0~5_sumout\,
	cout => \tim_100kHz|Add0~6\);

-- Location: FF_X78_Y4_N52
\tim_100kHz|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_100kHz|Add0~5_sumout\,
	sclr => \tim_100kHz|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_100kHz|counter\(7));

-- Location: MLABCELL_X78_Y4_N54
\tim_100kHz|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Add0~9_sumout\ = SUM(( \tim_100kHz|counter\(8) ) + ( GND ) + ( \tim_100kHz|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_100kHz|ALT_INV_counter\(8),
	cin => \tim_100kHz|Add0~6\,
	sumout => \tim_100kHz|Add0~9_sumout\);

-- Location: FF_X78_Y4_N56
\tim_100kHz|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_100kHz|Add0~9_sumout\,
	sclr => \tim_100kHz|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_100kHz|counter\(8));

-- Location: MLABCELL_X78_Y4_N12
\tim_100kHz|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Equal0~0_combout\ = ( !\tim_100kHz|counter\(2) & ( \tim_100kHz|counter\(5) & ( (\tim_100kHz|counter\(4) & (!\tim_100kHz|counter\(0) & \tim_100kHz|counter\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_100kHz|ALT_INV_counter\(4),
	datac => \tim_100kHz|ALT_INV_counter\(0),
	datad => \tim_100kHz|ALT_INV_counter\(3),
	datae => \tim_100kHz|ALT_INV_counter\(2),
	dataf => \tim_100kHz|ALT_INV_counter\(5),
	combout => \tim_100kHz|Equal0~0_combout\);

-- Location: MLABCELL_X78_Y4_N6
\tim_100kHz|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|Equal0~1_combout\ = ( !\tim_100kHz|counter\(8) & ( \tim_100kHz|Equal0~0_combout\ & ( (\tim_100kHz|counter\(1) & (\tim_100kHz|counter\(6) & \tim_100kHz|counter\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_100kHz|ALT_INV_counter\(1),
	datac => \tim_100kHz|ALT_INV_counter\(6),
	datad => \tim_100kHz|ALT_INV_counter\(7),
	datae => \tim_100kHz|ALT_INV_counter\(8),
	dataf => \tim_100kHz|ALT_INV_Equal0~0_combout\,
	combout => \tim_100kHz|Equal0~1_combout\);

-- Location: MLABCELL_X78_Y4_N27
\tim_100kHz|clock_signal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|clock_signal~0_combout\ = ( !\tim_100kHz|Equal0~1_combout\ & ( \tim_100kHz|clock_signal~q\ ) ) # ( \tim_100kHz|Equal0~1_combout\ & ( !\tim_100kHz|clock_signal~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \tim_100kHz|ALT_INV_Equal0~1_combout\,
	dataf => \tim_100kHz|ALT_INV_clock_signal~q\,
	combout => \tim_100kHz|clock_signal~0_combout\);

-- Location: MLABCELL_X78_Y4_N21
\tim_100kHz|clock_signal~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_100kHz|clock_signal~feeder_combout\ = ( \tim_100kHz|clock_signal~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \tim_100kHz|ALT_INV_clock_signal~0_combout\,
	combout => \tim_100kHz|clock_signal~feeder_combout\);

-- Location: FF_X78_Y4_N23
\tim_100kHz|clock_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~input_o\,
	d => \tim_100kHz|clock_signal~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_100kHz|clock_signal~q\);

-- Location: IOIBUF_X74_Y0_N41
\PCB_BT2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCB_BT2,
	o => \PCB_BT2~input_o\);

-- Location: IOIBUF_X78_Y0_N35
\PCB_BT1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCB_BT1,
	o => \PCB_BT1~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\PCB_BT0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCB_BT0,
	o => \PCB_BT0~input_o\);

-- Location: LABCELL_X80_Y2_N48
\btn_controller|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|state~0_combout\ = ( \btn_controller|Equal0~5_combout\ & ( (\btn_controller|and_buttons~q\ & !\btn_controller|state~q\) ) ) # ( !\btn_controller|Equal0~5_combout\ & ( (\btn_controller|state~q\) # (\btn_controller|and_buttons~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_and_buttons~q\,
	datad => \btn_controller|ALT_INV_state~q\,
	dataf => \btn_controller|ALT_INV_Equal0~5_combout\,
	combout => \btn_controller|state~0_combout\);

-- Location: FF_X80_Y2_N25
\btn_controller|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \btn_controller|state~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|state~q\);

-- Location: IOIBUF_X26_Y0_N92
\PCB_BT3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCB_BT3,
	o => \PCB_BT3~input_o\);

-- Location: LABCELL_X80_Y3_N33
\btn_controller|and_buttons~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|and_buttons~0_combout\ = ( \btn_controller|state~q\ & ( \PCB_BT3~input_o\ & ( \btn_controller|and_buttons~q\ ) ) ) # ( !\btn_controller|state~q\ & ( \PCB_BT3~input_o\ & ( (!\PCB_BT2~input_o\) # ((!\PCB_BT1~input_o\) # (!\PCB_BT0~input_o\)) 
-- ) ) ) # ( \btn_controller|state~q\ & ( !\PCB_BT3~input_o\ & ( \btn_controller|and_buttons~q\ ) ) ) # ( !\btn_controller|state~q\ & ( !\PCB_BT3~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001111111111111110111111100000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PCB_BT2~input_o\,
	datab => \ALT_INV_PCB_BT1~input_o\,
	datac => \ALT_INV_PCB_BT0~input_o\,
	datad => \btn_controller|ALT_INV_and_buttons~q\,
	datae => \btn_controller|ALT_INV_state~q\,
	dataf => \ALT_INV_PCB_BT3~input_o\,
	combout => \btn_controller|and_buttons~0_combout\);

-- Location: LABCELL_X80_Y2_N39
\btn_controller|and_buttons~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|and_buttons~feeder_combout\ = ( \btn_controller|and_buttons~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \btn_controller|ALT_INV_and_buttons~0_combout\,
	combout => \btn_controller|and_buttons~feeder_combout\);

-- Location: FF_X80_Y2_N41
\btn_controller|and_buttons\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|and_buttons~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|and_buttons~q\);

-- Location: LABCELL_X80_Y2_N45
\btn_controller|btn_num[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|btn_num[0]~2_combout\ = ( !\btn_controller|state~q\ & ( \btn_controller|and_buttons~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_and_buttons~q\,
	dataf => \btn_controller|ALT_INV_state~q\,
	combout => \btn_controller|btn_num[0]~2_combout\);

-- Location: MLABCELL_X78_Y3_N0
\btn_controller|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~77_sumout\ = SUM(( !\btn_controller|delay\(0) ) + ( VCC ) + ( !VCC ))
-- \btn_controller|Add0~78\ = CARRY(( !\btn_controller|delay\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay\(0),
	cin => GND,
	sumout => \btn_controller|Add0~77_sumout\,
	cout => \btn_controller|Add0~78\);

-- Location: LABCELL_X79_Y2_N21
\btn_controller|delay~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~20_combout\ = ( \btn_controller|Add0~77_sumout\ & ( \btn_controller|btn_num[0]~2_combout\ ) ) # ( !\btn_controller|Add0~77_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~77_sumout\,
	combout => \btn_controller|delay~20_combout\);

-- Location: LABCELL_X79_Y2_N45
\btn_controller|delay[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay[0]~1_combout\ = ( \btn_controller|Equal0~5_combout\ & ( \btn_controller|btn_num[0]~2_combout\ ) ) # ( !\btn_controller|Equal0~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Equal0~5_combout\,
	combout => \btn_controller|delay[0]~1_combout\);

-- Location: FF_X79_Y2_N23
\btn_controller|delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~20_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(0));

-- Location: MLABCELL_X78_Y3_N3
\btn_controller|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~81_sumout\ = SUM(( !\btn_controller|delay\(1) ) + ( VCC ) + ( \btn_controller|Add0~78\ ))
-- \btn_controller|Add0~82\ = CARRY(( !\btn_controller|delay\(1) ) + ( VCC ) + ( \btn_controller|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay\(1),
	cin => \btn_controller|Add0~78\,
	sumout => \btn_controller|Add0~81_sumout\,
	cout => \btn_controller|Add0~82\);

-- Location: LABCELL_X79_Y2_N54
\btn_controller|delay~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~21_combout\ = ( \btn_controller|Add0~81_sumout\ & ( \btn_controller|btn_num[0]~2_combout\ ) ) # ( !\btn_controller|Add0~81_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~81_sumout\,
	combout => \btn_controller|delay~21_combout\);

-- Location: FF_X79_Y2_N56
\btn_controller|delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~21_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(1));

-- Location: MLABCELL_X78_Y3_N6
\btn_controller|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~85_sumout\ = SUM(( !\btn_controller|delay\(2) ) + ( VCC ) + ( \btn_controller|Add0~82\ ))
-- \btn_controller|Add0~86\ = CARRY(( !\btn_controller|delay\(2) ) + ( VCC ) + ( \btn_controller|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay\(2),
	cin => \btn_controller|Add0~82\,
	sumout => \btn_controller|Add0~85_sumout\,
	cout => \btn_controller|Add0~86\);

-- Location: LABCELL_X79_Y2_N51
\btn_controller|delay~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~22_combout\ = ( \btn_controller|Add0~85_sumout\ & ( \btn_controller|btn_num[0]~2_combout\ ) ) # ( !\btn_controller|Add0~85_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~85_sumout\,
	combout => \btn_controller|delay~22_combout\);

-- Location: FF_X79_Y2_N53
\btn_controller|delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~22_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(2));

-- Location: MLABCELL_X78_Y3_N9
\btn_controller|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~89_sumout\ = SUM(( !\btn_controller|delay[3]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~86\ ))
-- \btn_controller|Add0~90\ = CARRY(( !\btn_controller|delay[3]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay[3]~DUPLICATE_q\,
	cin => \btn_controller|Add0~86\,
	sumout => \btn_controller|Add0~89_sumout\,
	cout => \btn_controller|Add0~90\);

-- Location: LABCELL_X79_Y2_N6
\btn_controller|delay~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~23_combout\ = ( \btn_controller|Add0~89_sumout\ & ( \btn_controller|btn_num[0]~2_combout\ ) ) # ( !\btn_controller|Add0~89_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~89_sumout\,
	combout => \btn_controller|delay~23_combout\);

-- Location: FF_X79_Y2_N7
\btn_controller|delay[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~23_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[3]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y3_N12
\btn_controller|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~93_sumout\ = SUM(( \btn_controller|delay\(4) ) + ( VCC ) + ( \btn_controller|Add0~90\ ))
-- \btn_controller|Add0~94\ = CARRY(( \btn_controller|delay\(4) ) + ( VCC ) + ( \btn_controller|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay\(4),
	cin => \btn_controller|Add0~90\,
	sumout => \btn_controller|Add0~93_sumout\,
	cout => \btn_controller|Add0~94\);

-- Location: LABCELL_X79_Y2_N15
\btn_controller|delay~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~24_combout\ = ( \btn_controller|Add0~93_sumout\ ) # ( !\btn_controller|Add0~93_sumout\ & ( \btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~93_sumout\,
	combout => \btn_controller|delay~24_combout\);

-- Location: FF_X79_Y2_N17
\btn_controller|delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~24_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(4));

-- Location: MLABCELL_X78_Y3_N15
\btn_controller|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~97_sumout\ = SUM(( \btn_controller|delay\(5) ) + ( VCC ) + ( \btn_controller|Add0~94\ ))
-- \btn_controller|Add0~98\ = CARRY(( \btn_controller|delay\(5) ) + ( VCC ) + ( \btn_controller|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay\(5),
	cin => \btn_controller|Add0~94\,
	sumout => \btn_controller|Add0~97_sumout\,
	cout => \btn_controller|Add0~98\);

-- Location: LABCELL_X79_Y2_N42
\btn_controller|delay~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~25_combout\ = ( \btn_controller|Add0~97_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~97_sumout\,
	combout => \btn_controller|delay~25_combout\);

-- Location: FF_X79_Y2_N44
\btn_controller|delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~25_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(5));

-- Location: MLABCELL_X78_Y3_N18
\btn_controller|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~101_sumout\ = SUM(( \btn_controller|delay\(6) ) + ( VCC ) + ( \btn_controller|Add0~98\ ))
-- \btn_controller|Add0~102\ = CARRY(( \btn_controller|delay\(6) ) + ( VCC ) + ( \btn_controller|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay\(6),
	cin => \btn_controller|Add0~98\,
	sumout => \btn_controller|Add0~101_sumout\,
	cout => \btn_controller|Add0~102\);

-- Location: LABCELL_X79_Y3_N33
\btn_controller|delay~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~26_combout\ = ( \btn_controller|Add0~101_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~101_sumout\,
	combout => \btn_controller|delay~26_combout\);

-- Location: FF_X79_Y3_N35
\btn_controller|delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~26_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(6));

-- Location: MLABCELL_X78_Y3_N21
\btn_controller|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~105_sumout\ = SUM(( \btn_controller|delay\(7) ) + ( VCC ) + ( \btn_controller|Add0~102\ ))
-- \btn_controller|Add0~106\ = CARRY(( \btn_controller|delay\(7) ) + ( VCC ) + ( \btn_controller|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay\(7),
	cin => \btn_controller|Add0~102\,
	sumout => \btn_controller|Add0~105_sumout\,
	cout => \btn_controller|Add0~106\);

-- Location: LABCELL_X79_Y3_N42
\btn_controller|delay~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~27_combout\ = (\btn_controller|Add0~105_sumout\ & !\btn_controller|btn_num[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_Add0~105_sumout\,
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	combout => \btn_controller|delay~27_combout\);

-- Location: FF_X79_Y3_N44
\btn_controller|delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~27_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(7));

-- Location: MLABCELL_X78_Y3_N24
\btn_controller|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~109_sumout\ = SUM(( !\btn_controller|delay\(8) ) + ( VCC ) + ( \btn_controller|Add0~106\ ))
-- \btn_controller|Add0~110\ = CARRY(( !\btn_controller|delay\(8) ) + ( VCC ) + ( \btn_controller|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay\(8),
	cin => \btn_controller|Add0~106\,
	sumout => \btn_controller|Add0~109_sumout\,
	cout => \btn_controller|Add0~110\);

-- Location: LABCELL_X79_Y3_N51
\btn_controller|delay~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~28_combout\ = ( !\btn_controller|Add0~109_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~109_sumout\,
	combout => \btn_controller|delay~28_combout\);

-- Location: FF_X79_Y3_N53
\btn_controller|delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~28_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(8));

-- Location: MLABCELL_X78_Y3_N27
\btn_controller|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~113_sumout\ = SUM(( !\btn_controller|delay\(9) ) + ( VCC ) + ( \btn_controller|Add0~110\ ))
-- \btn_controller|Add0~114\ = CARRY(( !\btn_controller|delay\(9) ) + ( VCC ) + ( \btn_controller|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay\(9),
	cin => \btn_controller|Add0~110\,
	sumout => \btn_controller|Add0~113_sumout\,
	cout => \btn_controller|Add0~114\);

-- Location: LABCELL_X79_Y3_N18
\btn_controller|delay~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~29_combout\ = (!\btn_controller|Add0~113_sumout\ & !\btn_controller|btn_num[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_Add0~113_sumout\,
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	combout => \btn_controller|delay~29_combout\);

-- Location: FF_X79_Y3_N20
\btn_controller|delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~29_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(9));

-- Location: MLABCELL_X78_Y3_N30
\btn_controller|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~117_sumout\ = SUM(( !\btn_controller|delay\(10) ) + ( VCC ) + ( \btn_controller|Add0~114\ ))
-- \btn_controller|Add0~118\ = CARRY(( !\btn_controller|delay\(10) ) + ( VCC ) + ( \btn_controller|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay\(10),
	cin => \btn_controller|Add0~114\,
	sumout => \btn_controller|Add0~117_sumout\,
	cout => \btn_controller|Add0~118\);

-- Location: LABCELL_X79_Y3_N36
\btn_controller|delay~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~30_combout\ = ( !\btn_controller|Add0~117_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~117_sumout\,
	combout => \btn_controller|delay~30_combout\);

-- Location: FF_X79_Y3_N38
\btn_controller|delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~30_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(10));

-- Location: MLABCELL_X78_Y3_N33
\btn_controller|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~121_sumout\ = SUM(( \btn_controller|delay\(11) ) + ( VCC ) + ( \btn_controller|Add0~118\ ))
-- \btn_controller|Add0~122\ = CARRY(( \btn_controller|delay\(11) ) + ( VCC ) + ( \btn_controller|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay\(11),
	cin => \btn_controller|Add0~118\,
	sumout => \btn_controller|Add0~121_sumout\,
	cout => \btn_controller|Add0~122\);

-- Location: LABCELL_X79_Y3_N57
\btn_controller|delay~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~31_combout\ = (!\btn_controller|btn_num[0]~2_combout\ & \btn_controller|Add0~121_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	datac => \btn_controller|ALT_INV_Add0~121_sumout\,
	combout => \btn_controller|delay~31_combout\);

-- Location: FF_X79_Y3_N59
\btn_controller|delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~31_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(11));

-- Location: LABCELL_X79_Y3_N6
\btn_controller|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Equal0~4_combout\ = ( \btn_controller|delay\(10) & ( !\btn_controller|delay\(6) & ( (\btn_controller|delay\(8) & (!\btn_controller|delay\(7) & (\btn_controller|delay\(9) & !\btn_controller|delay\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(8),
	datab => \btn_controller|ALT_INV_delay\(7),
	datac => \btn_controller|ALT_INV_delay\(9),
	datad => \btn_controller|ALT_INV_delay\(11),
	datae => \btn_controller|ALT_INV_delay\(10),
	dataf => \btn_controller|ALT_INV_delay\(6),
	combout => \btn_controller|Equal0~4_combout\);

-- Location: FF_X78_Y2_N37
\btn_controller|delay[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~6_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[28]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y3_N36
\btn_controller|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~53_sumout\ = SUM(( \btn_controller|delay[12]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~122\ ))
-- \btn_controller|Add0~54\ = CARRY(( \btn_controller|delay[12]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay[12]~DUPLICATE_q\,
	cin => \btn_controller|Add0~122\,
	sumout => \btn_controller|Add0~53_sumout\,
	cout => \btn_controller|Add0~54\);

-- Location: LABCELL_X79_Y2_N0
\btn_controller|delay~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~14_combout\ = ( \btn_controller|Add0~53_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~53_sumout\,
	combout => \btn_controller|delay~14_combout\);

-- Location: FF_X79_Y2_N1
\btn_controller|delay[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~14_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[12]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y3_N39
\btn_controller|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~57_sumout\ = SUM(( !\btn_controller|delay[13]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~54\ ))
-- \btn_controller|Add0~58\ = CARRY(( !\btn_controller|delay[13]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay[13]~DUPLICATE_q\,
	cin => \btn_controller|Add0~54\,
	sumout => \btn_controller|Add0~57_sumout\,
	cout => \btn_controller|Add0~58\);

-- Location: LABCELL_X79_Y2_N3
\btn_controller|delay~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~15_combout\ = (!\btn_controller|btn_num[0]~2_combout\ & !\btn_controller|Add0~57_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	datad => \btn_controller|ALT_INV_Add0~57_sumout\,
	combout => \btn_controller|delay~15_combout\);

-- Location: FF_X79_Y2_N4
\btn_controller|delay[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~15_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[13]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y3_N42
\btn_controller|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~61_sumout\ = SUM(( \btn_controller|delay[14]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~58\ ))
-- \btn_controller|Add0~62\ = CARRY(( \btn_controller|delay[14]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay[14]~DUPLICATE_q\,
	cin => \btn_controller|Add0~58\,
	sumout => \btn_controller|Add0~61_sumout\,
	cout => \btn_controller|Add0~62\);

-- Location: LABCELL_X79_Y2_N48
\btn_controller|delay~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~16_combout\ = ( \btn_controller|Add0~61_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~61_sumout\,
	combout => \btn_controller|delay~16_combout\);

-- Location: FF_X79_Y2_N49
\btn_controller|delay[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~16_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[14]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y3_N45
\btn_controller|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~65_sumout\ = SUM(( \btn_controller|delay[15]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~62\ ))
-- \btn_controller|Add0~66\ = CARRY(( \btn_controller|delay[15]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay[15]~DUPLICATE_q\,
	cin => \btn_controller|Add0~62\,
	sumout => \btn_controller|Add0~65_sumout\,
	cout => \btn_controller|Add0~66\);

-- Location: LABCELL_X79_Y2_N57
\btn_controller|delay~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~17_combout\ = ( \btn_controller|Add0~65_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~65_sumout\,
	combout => \btn_controller|delay~17_combout\);

-- Location: FF_X79_Y2_N58
\btn_controller|delay[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~17_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[15]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y3_N48
\btn_controller|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~69_sumout\ = SUM(( \btn_controller|delay\(16) ) + ( VCC ) + ( \btn_controller|Add0~66\ ))
-- \btn_controller|Add0~70\ = CARRY(( \btn_controller|delay\(16) ) + ( VCC ) + ( \btn_controller|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay\(16),
	cin => \btn_controller|Add0~66\,
	sumout => \btn_controller|Add0~69_sumout\,
	cout => \btn_controller|Add0~70\);

-- Location: LABCELL_X79_Y2_N9
\btn_controller|delay~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~18_combout\ = (!\btn_controller|btn_num[0]~2_combout\ & \btn_controller|Add0~69_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	datad => \btn_controller|ALT_INV_Add0~69_sumout\,
	combout => \btn_controller|delay~18_combout\);

-- Location: FF_X79_Y2_N11
\btn_controller|delay[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~18_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(16));

-- Location: MLABCELL_X78_Y3_N51
\btn_controller|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~73_sumout\ = SUM(( \btn_controller|delay\(17) ) + ( VCC ) + ( \btn_controller|Add0~70\ ))
-- \btn_controller|Add0~74\ = CARRY(( \btn_controller|delay\(17) ) + ( VCC ) + ( \btn_controller|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay\(17),
	cin => \btn_controller|Add0~70\,
	sumout => \btn_controller|Add0~73_sumout\,
	cout => \btn_controller|Add0~74\);

-- Location: LABCELL_X79_Y2_N18
\btn_controller|delay~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~19_combout\ = ( \btn_controller|Add0~73_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~73_sumout\,
	combout => \btn_controller|delay~19_combout\);

-- Location: FF_X79_Y2_N19
\btn_controller|delay[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~19_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(17));

-- Location: MLABCELL_X78_Y3_N54
\btn_controller|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~29_sumout\ = SUM(( \btn_controller|delay[18]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~74\ ))
-- \btn_controller|Add0~30\ = CARRY(( \btn_controller|delay[18]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay[18]~DUPLICATE_q\,
	cin => \btn_controller|Add0~74\,
	sumout => \btn_controller|Add0~29_sumout\,
	cout => \btn_controller|Add0~30\);

-- Location: LABCELL_X79_Y3_N27
\btn_controller|delay~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~8_combout\ = ( \btn_controller|Add0~29_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~29_sumout\,
	combout => \btn_controller|delay~8_combout\);

-- Location: FF_X79_Y3_N28
\btn_controller|delay[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~8_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[18]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y3_N57
\btn_controller|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~33_sumout\ = SUM(( \btn_controller|delay\(19) ) + ( VCC ) + ( \btn_controller|Add0~30\ ))
-- \btn_controller|Add0~34\ = CARRY(( \btn_controller|delay\(19) ) + ( VCC ) + ( \btn_controller|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay\(19),
	cin => \btn_controller|Add0~30\,
	sumout => \btn_controller|Add0~33_sumout\,
	cout => \btn_controller|Add0~34\);

-- Location: LABCELL_X79_Y3_N54
\btn_controller|delay~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~9_combout\ = ( \btn_controller|Add0~33_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~33_sumout\,
	combout => \btn_controller|delay~9_combout\);

-- Location: FF_X79_Y3_N55
\btn_controller|delay[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~9_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(19));

-- Location: MLABCELL_X78_Y2_N0
\btn_controller|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~37_sumout\ = SUM(( \btn_controller|delay[20]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~34\ ))
-- \btn_controller|Add0~38\ = CARRY(( \btn_controller|delay[20]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay[20]~DUPLICATE_q\,
	cin => \btn_controller|Add0~34\,
	sumout => \btn_controller|Add0~37_sumout\,
	cout => \btn_controller|Add0~38\);

-- Location: LABCELL_X79_Y3_N3
\btn_controller|delay~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~10_combout\ = ( \btn_controller|Add0~37_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~37_sumout\,
	combout => \btn_controller|delay~10_combout\);

-- Location: FF_X79_Y3_N4
\btn_controller|delay[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~10_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[20]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y2_N3
\btn_controller|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~41_sumout\ = SUM(( \btn_controller|delay[21]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~38\ ))
-- \btn_controller|Add0~42\ = CARRY(( \btn_controller|delay[21]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay[21]~DUPLICATE_q\,
	cin => \btn_controller|Add0~38\,
	sumout => \btn_controller|Add0~41_sumout\,
	cout => \btn_controller|Add0~42\);

-- Location: LABCELL_X79_Y3_N0
\btn_controller|delay~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~11_combout\ = ( \btn_controller|Add0~41_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~41_sumout\,
	combout => \btn_controller|delay~11_combout\);

-- Location: FF_X79_Y3_N1
\btn_controller|delay[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~11_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[21]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y2_N6
\btn_controller|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~45_sumout\ = SUM(( \btn_controller|delay[22]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~42\ ))
-- \btn_controller|Add0~46\ = CARRY(( \btn_controller|delay[22]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_delay[22]~DUPLICATE_q\,
	cin => \btn_controller|Add0~42\,
	sumout => \btn_controller|Add0~45_sumout\,
	cout => \btn_controller|Add0~46\);

-- Location: LABCELL_X79_Y3_N45
\btn_controller|delay~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~12_combout\ = ( \btn_controller|Add0~45_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~45_sumout\,
	combout => \btn_controller|delay~12_combout\);

-- Location: FF_X79_Y3_N46
\btn_controller|delay[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~12_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[22]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y2_N9
\btn_controller|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~49_sumout\ = SUM(( \btn_controller|delay\(23) ) + ( VCC ) + ( \btn_controller|Add0~46\ ))
-- \btn_controller|Add0~50\ = CARRY(( \btn_controller|delay\(23) ) + ( VCC ) + ( \btn_controller|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(23),
	cin => \btn_controller|Add0~46\,
	sumout => \btn_controller|Add0~49_sumout\,
	cout => \btn_controller|Add0~50\);

-- Location: MLABCELL_X78_Y2_N57
\btn_controller|delay~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~13_combout\ = ( \btn_controller|Add0~49_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~49_sumout\,
	combout => \btn_controller|delay~13_combout\);

-- Location: FF_X78_Y2_N59
\btn_controller|delay[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~13_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(23));

-- Location: MLABCELL_X78_Y2_N12
\btn_controller|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~5_sumout\ = SUM(( \btn_controller|delay[24]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~50\ ))
-- \btn_controller|Add0~6\ = CARRY(( \btn_controller|delay[24]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_delay[24]~DUPLICATE_q\,
	cin => \btn_controller|Add0~50\,
	sumout => \btn_controller|Add0~5_sumout\,
	cout => \btn_controller|Add0~6\);

-- Location: MLABCELL_X78_Y2_N54
\btn_controller|delay~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~2_combout\ = ( \btn_controller|Add0~5_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~5_sumout\,
	combout => \btn_controller|delay~2_combout\);

-- Location: FF_X78_Y2_N55
\btn_controller|delay[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~2_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[24]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y2_N15
\btn_controller|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~9_sumout\ = SUM(( \btn_controller|delay\(25) ) + ( VCC ) + ( \btn_controller|Add0~6\ ))
-- \btn_controller|Add0~10\ = CARRY(( \btn_controller|delay\(25) ) + ( VCC ) + ( \btn_controller|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(25),
	cin => \btn_controller|Add0~6\,
	sumout => \btn_controller|Add0~9_sumout\,
	cout => \btn_controller|Add0~10\);

-- Location: LABCELL_X79_Y2_N12
\btn_controller|delay~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~3_combout\ = ( \btn_controller|Add0~9_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~9_sumout\,
	combout => \btn_controller|delay~3_combout\);

-- Location: FF_X79_Y2_N13
\btn_controller|delay[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~3_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(25));

-- Location: MLABCELL_X78_Y2_N18
\btn_controller|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~13_sumout\ = SUM(( \btn_controller|delay\(26) ) + ( VCC ) + ( \btn_controller|Add0~10\ ))
-- \btn_controller|Add0~14\ = CARRY(( \btn_controller|delay\(26) ) + ( VCC ) + ( \btn_controller|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(26),
	cin => \btn_controller|Add0~10\,
	sumout => \btn_controller|Add0~13_sumout\,
	cout => \btn_controller|Add0~14\);

-- Location: LABCELL_X77_Y2_N12
\btn_controller|delay~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~4_combout\ = ( \btn_controller|Add0~13_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~13_sumout\,
	combout => \btn_controller|delay~4_combout\);

-- Location: FF_X77_Y2_N13
\btn_controller|delay[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~4_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(26));

-- Location: MLABCELL_X78_Y2_N21
\btn_controller|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~17_sumout\ = SUM(( \btn_controller|delay\(27) ) + ( VCC ) + ( \btn_controller|Add0~14\ ))
-- \btn_controller|Add0~18\ = CARRY(( \btn_controller|delay\(27) ) + ( VCC ) + ( \btn_controller|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_delay\(27),
	cin => \btn_controller|Add0~14\,
	sumout => \btn_controller|Add0~17_sumout\,
	cout => \btn_controller|Add0~18\);

-- Location: MLABCELL_X78_Y2_N39
\btn_controller|delay~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~5_combout\ = ( \btn_controller|Add0~17_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~17_sumout\,
	combout => \btn_controller|delay~5_combout\);

-- Location: FF_X78_Y2_N40
\btn_controller|delay[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~5_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(27));

-- Location: MLABCELL_X78_Y2_N24
\btn_controller|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~21_sumout\ = SUM(( \btn_controller|delay[28]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~18\ ))
-- \btn_controller|Add0~22\ = CARRY(( \btn_controller|delay[28]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \btn_controller|ALT_INV_delay[28]~DUPLICATE_q\,
	cin => \btn_controller|Add0~18\,
	sumout => \btn_controller|Add0~21_sumout\,
	cout => \btn_controller|Add0~22\);

-- Location: MLABCELL_X78_Y2_N36
\btn_controller|delay~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~6_combout\ = ( \btn_controller|Add0~21_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~21_sumout\,
	combout => \btn_controller|delay~6_combout\);

-- Location: FF_X78_Y2_N38
\btn_controller|delay[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~6_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(28));

-- Location: FF_X78_Y2_N56
\btn_controller|delay[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~2_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(24));

-- Location: FF_X78_Y2_N53
\btn_controller|delay[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~7_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay[29]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y2_N27
\btn_controller|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~25_sumout\ = SUM(( \btn_controller|delay[29]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~22\ ))
-- \btn_controller|Add0~26\ = CARRY(( \btn_controller|delay[29]~DUPLICATE_q\ ) + ( VCC ) + ( \btn_controller|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_delay[29]~DUPLICATE_q\,
	cin => \btn_controller|Add0~22\,
	sumout => \btn_controller|Add0~25_sumout\,
	cout => \btn_controller|Add0~26\);

-- Location: MLABCELL_X78_Y2_N51
\btn_controller|delay~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~7_combout\ = ( \btn_controller|Add0~25_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~25_sumout\,
	combout => \btn_controller|delay~7_combout\);

-- Location: FF_X78_Y2_N52
\btn_controller|delay[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~7_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(29));

-- Location: MLABCELL_X78_Y2_N42
\btn_controller|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Equal0~0_combout\ = ( !\btn_controller|delay\(26) & ( !\btn_controller|delay\(25) & ( (!\btn_controller|delay\(28) & (!\btn_controller|delay\(27) & (!\btn_controller|delay\(24) & !\btn_controller|delay\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(28),
	datab => \btn_controller|ALT_INV_delay\(27),
	datac => \btn_controller|ALT_INV_delay\(24),
	datad => \btn_controller|ALT_INV_delay\(29),
	datae => \btn_controller|ALT_INV_delay\(26),
	dataf => \btn_controller|ALT_INV_delay\(25),
	combout => \btn_controller|Equal0~0_combout\);

-- Location: FF_X79_Y2_N8
\btn_controller|delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~23_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(3));

-- Location: LABCELL_X79_Y2_N36
\btn_controller|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Equal0~3_combout\ = ( \btn_controller|delay\(1) & ( \btn_controller|delay\(3) & ( (\btn_controller|delay\(0) & (!\btn_controller|delay\(4) & (\btn_controller|delay\(2) & !\btn_controller|delay\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(0),
	datab => \btn_controller|ALT_INV_delay\(4),
	datac => \btn_controller|ALT_INV_delay\(2),
	datad => \btn_controller|ALT_INV_delay\(5),
	datae => \btn_controller|ALT_INV_delay\(1),
	dataf => \btn_controller|ALT_INV_delay\(3),
	combout => \btn_controller|Equal0~3_combout\);

-- Location: FF_X79_Y3_N5
\btn_controller|delay[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~10_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(20));

-- Location: FF_X79_Y3_N29
\btn_controller|delay[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~8_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(18));

-- Location: FF_X79_Y3_N47
\btn_controller|delay[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~12_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(22));

-- Location: FF_X79_Y3_N2
\btn_controller|delay[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~11_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(21));

-- Location: LABCELL_X79_Y3_N12
\btn_controller|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Equal0~1_combout\ = ( !\btn_controller|delay\(21) & ( !\btn_controller|delay\(23) & ( (!\btn_controller|delay\(20) & (!\btn_controller|delay\(19) & (!\btn_controller|delay\(18) & !\btn_controller|delay\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(20),
	datab => \btn_controller|ALT_INV_delay\(19),
	datac => \btn_controller|ALT_INV_delay\(18),
	datad => \btn_controller|ALT_INV_delay\(22),
	datae => \btn_controller|ALT_INV_delay\(21),
	dataf => \btn_controller|ALT_INV_delay\(23),
	combout => \btn_controller|Equal0~1_combout\);

-- Location: MLABCELL_X78_Y2_N30
\btn_controller|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Add0~1_sumout\ = SUM(( \btn_controller|delay\(30) ) + ( VCC ) + ( \btn_controller|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_delay\(30),
	cin => \btn_controller|Add0~26\,
	sumout => \btn_controller|Add0~1_sumout\);

-- Location: MLABCELL_X78_Y2_N48
\btn_controller|delay~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|delay~0_combout\ = ( \btn_controller|Add0~1_sumout\ & ( !\btn_controller|btn_num[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \btn_controller|ALT_INV_Add0~1_sumout\,
	combout => \btn_controller|delay~0_combout\);

-- Location: FF_X78_Y2_N49
\btn_controller|delay[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~0_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(30));

-- Location: FF_X79_Y2_N2
\btn_controller|delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~14_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(12));

-- Location: FF_X79_Y2_N5
\btn_controller|delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~15_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(13));

-- Location: FF_X79_Y2_N59
\btn_controller|delay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~17_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(15));

-- Location: FF_X79_Y2_N50
\btn_controller|delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|delay~16_combout\,
	ena => \btn_controller|delay[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|delay\(14));

-- Location: LABCELL_X79_Y2_N30
\btn_controller|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Equal0~2_combout\ = ( !\btn_controller|delay\(15) & ( !\btn_controller|delay\(14) & ( (!\btn_controller|delay\(12) & (!\btn_controller|delay\(16) & (\btn_controller|delay\(13) & !\btn_controller|delay\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_delay\(12),
	datab => \btn_controller|ALT_INV_delay\(16),
	datac => \btn_controller|ALT_INV_delay\(13),
	datad => \btn_controller|ALT_INV_delay\(17),
	datae => \btn_controller|ALT_INV_delay\(15),
	dataf => \btn_controller|ALT_INV_delay\(14),
	combout => \btn_controller|Equal0~2_combout\);

-- Location: LABCELL_X79_Y2_N24
\btn_controller|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|Equal0~5_combout\ = ( !\btn_controller|delay\(30) & ( \btn_controller|Equal0~2_combout\ & ( (\btn_controller|Equal0~4_combout\ & (\btn_controller|Equal0~0_combout\ & (\btn_controller|Equal0~3_combout\ & \btn_controller|Equal0~1_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_Equal0~4_combout\,
	datab => \btn_controller|ALT_INV_Equal0~0_combout\,
	datac => \btn_controller|ALT_INV_Equal0~3_combout\,
	datad => \btn_controller|ALT_INV_Equal0~1_combout\,
	datae => \btn_controller|ALT_INV_delay\(30),
	dataf => \btn_controller|ALT_INV_Equal0~2_combout\,
	combout => \btn_controller|Equal0~5_combout\);

-- Location: LABCELL_X80_Y2_N21
\btn_controller|output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|output~0_combout\ = ( !\btn_controller|Equal0~5_combout\ & ( \btn_controller|state~q\ & ( \btn_controller|output~DUPLICATE_q\ ) ) ) # ( \btn_controller|Equal0~5_combout\ & ( !\btn_controller|state~q\ ) ) # ( 
-- !\btn_controller|Equal0~5_combout\ & ( !\btn_controller|state~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_output~DUPLICATE_q\,
	datae => \btn_controller|ALT_INV_Equal0~5_combout\,
	dataf => \btn_controller|ALT_INV_state~q\,
	combout => \btn_controller|output~0_combout\);

-- Location: LABCELL_X79_Y4_N42
\btn_controller|output~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|output~feeder_combout\ = ( \btn_controller|output~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \btn_controller|ALT_INV_output~0_combout\,
	combout => \btn_controller|output~feeder_combout\);

-- Location: FF_X79_Y4_N44
\btn_controller|output~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|output~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|output~DUPLICATE_q\);

-- Location: LABCELL_X80_Y5_N30
\main_fsm|state.DISPL_CLEAR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|state.DISPL_CLEAR~0_combout\ = !\main_fsm|state.START~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_state.START~q\,
	combout => \main_fsm|state.DISPL_CLEAR~0_combout\);

-- Location: FF_X80_Y5_N32
\main_fsm|state.DISPL_CLEAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|state.DISPL_CLEAR~0_combout\,
	ena => \main_fsm|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|state.DISPL_CLEAR~q\);

-- Location: FF_X79_Y4_N43
\btn_controller|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|output~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|output~q\);

-- Location: FF_X80_Y5_N17
\main_fsm|state.PRSD_MSG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector39~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|state.PRSD_MSG~q\);

-- Location: LABCELL_X80_Y5_N9
\main_fsm|WideNor1\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|WideNor1~combout\ = ( !\main_fsm|state.PRSD_MSG~q\ & ( (!\main_fsm|state.WAIT_INPUT~q\ & (\main_fsm|state.START~q\ & (!\main_fsm|state.DISPL_CLEAR~q\ & !\main_fsm|state.SEND~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	datab => \main_fsm|ALT_INV_state.START~q\,
	datac => \main_fsm|ALT_INV_state.DISPL_CLEAR~q\,
	datad => \main_fsm|ALT_INV_state.SEND~q\,
	dataf => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	combout => \main_fsm|WideNor1~combout\);

-- Location: LABCELL_X80_Y5_N24
\main_fsm|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector37~0_combout\ = ( \main_fsm|Equal0~5_combout\ & ( \main_fsm|WideNor1~combout\ ) ) # ( !\main_fsm|Equal0~5_combout\ & ( \main_fsm|WideNor1~combout\ ) ) # ( \main_fsm|Equal0~5_combout\ & ( !\main_fsm|WideNor1~combout\ & ( 
-- (((\main_fsm|state.WAIT_INPUT~q\ & \btn_controller|output~q\)) # (\main_fsm|state.SEND~q\)) # (\main_fsm|state.DISPL_CLEAR~q\) ) ) ) # ( !\main_fsm|Equal0~5_combout\ & ( !\main_fsm|WideNor1~combout\ & ( (\main_fsm|state.WAIT_INPUT~q\ & 
-- (((\btn_controller|output~q\) # (\main_fsm|state.SEND~q\)) # (\main_fsm|state.DISPL_CLEAR~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101001111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	datab => \main_fsm|ALT_INV_state.DISPL_CLEAR~q\,
	datac => \main_fsm|ALT_INV_state.SEND~q\,
	datad => \btn_controller|ALT_INV_output~q\,
	datae => \main_fsm|ALT_INV_Equal0~5_combout\,
	dataf => \main_fsm|ALT_INV_WideNor1~combout\,
	combout => \main_fsm|Selector37~0_combout\);

-- Location: FF_X79_Y5_N37
\main_fsm|state.WAIT_INPUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector37~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|state.WAIT_INPUT~q\);

-- Location: LABCELL_X80_Y5_N42
\main_fsm|Selector39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector39~0_combout\ = ( \main_fsm|Equal0~5_combout\ & ( (\main_fsm|state.WAIT_INPUT~q\ & !\btn_controller|output~q\) ) ) # ( !\main_fsm|Equal0~5_combout\ & ( ((\main_fsm|state.WAIT_INPUT~q\ & !\btn_controller|output~q\)) # 
-- (\main_fsm|state.PRSD_MSG~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100110011010101010000000001110111001100110101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	datab => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datad => \btn_controller|ALT_INV_output~q\,
	datae => \main_fsm|ALT_INV_Equal0~5_combout\,
	combout => \main_fsm|Selector39~0_combout\);

-- Location: FF_X80_Y5_N16
\main_fsm|state.PRSD_MSG~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector39~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|state.PRSD_MSG~DUPLICATE_q\);

-- Location: FF_X79_Y5_N44
\main_fsm|state.SEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|state.PRSD_MSG~DUPLICATE_q\,
	sload => VCC,
	ena => \main_fsm|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|state.SEND~q\);

-- Location: FF_X79_Y5_N38
\main_fsm|state.WAIT_INPUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector37~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|state.WAIT_INPUT~DUPLICATE_q\);

-- Location: LABCELL_X79_Y5_N45
\main_fsm|delay[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[8]~0_combout\ = ( \main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( (!\main_fsm|state.DISPL_CLEAR~q\ & !\main_fsm|state.SEND~q\) ) ) # ( !\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( (!\main_fsm|state.DISPL_CLEAR~q\ & (!\main_fsm|state.SEND~q\ & 
-- ((!\main_fsm|state.START~q\) # (\main_fsm|state.PRSD_MSG~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010100000100000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.DISPL_CLEAR~q\,
	datab => \main_fsm|ALT_INV_state.START~q\,
	datac => \main_fsm|ALT_INV_state.SEND~q\,
	datad => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	dataf => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	combout => \main_fsm|delay[8]~0_combout\);

-- Location: LABCELL_X79_Y5_N57
\main_fsm|delay[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[8]~1_combout\ = ( \main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( (!\btn_controller|output~DUPLICATE_q\ & \main_fsm|delay[8]~0_combout\) ) ) # ( !\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( (\main_fsm|delay[8]~0_combout\ & 
-- \main_fsm|Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \btn_controller|ALT_INV_output~DUPLICATE_q\,
	datab => \main_fsm|ALT_INV_delay[8]~0_combout\,
	datad => \main_fsm|ALT_INV_Equal0~5_combout\,
	dataf => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	combout => \main_fsm|delay[8]~1_combout\);

-- Location: LABCELL_X79_Y5_N54
\main_fsm|delay[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[8]~2_combout\ = ( \main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( (!\main_fsm|Equal0~5_combout\) # ((\main_fsm|delay[8]~0_combout\ & !\btn_controller|output~DUPLICATE_q\)) ) ) # ( !\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( 
-- (!\main_fsm|Equal0~5_combout\) # (\main_fsm|delay[8]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111110011111100001111001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay[8]~0_combout\,
	datac => \main_fsm|ALT_INV_Equal0~5_combout\,
	datad => \btn_controller|ALT_INV_output~DUPLICATE_q\,
	dataf => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	combout => \main_fsm|delay[8]~2_combout\);

-- Location: FF_X79_Y5_N19
\main_fsm|delay[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~1_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[26]~DUPLICATE_q\);

-- Location: MLABCELL_X78_Y5_N6
\main_fsm|delay[9]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[9]~3_combout\ = ( \main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( (\main_fsm|Equal0~5_combout\ & ((!\main_fsm|delay[8]~0_combout\) # (\btn_controller|output~DUPLICATE_q\))) ) ) # ( !\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( 
-- (!\main_fsm|delay[8]~0_combout\ & \main_fsm|Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_output~DUPLICATE_q\,
	datac => \main_fsm|ALT_INV_delay[8]~0_combout\,
	datad => \main_fsm|ALT_INV_Equal0~5_combout\,
	dataf => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	combout => \main_fsm|delay[9]~3_combout\);

-- Location: MLABCELL_X78_Y5_N12
\main_fsm|delay[9]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[9]~4_combout\ = ( \main_fsm|Equal0~5_combout\ & ( \main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( (!\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & \btn_controller|output~DUPLICATE_q\) ) ) ) # ( !\main_fsm|Equal0~5_combout\ & ( 
-- \main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( \btn_controller|output~DUPLICATE_q\ ) ) ) # ( \main_fsm|Equal0~5_combout\ & ( !\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( (\main_fsm|state.START~q\ & !\main_fsm|state.PRSD_MSG~DUPLICATE_q\) ) ) ) # ( 
-- !\main_fsm|Equal0~5_combout\ & ( !\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100000011000000000000111111110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_state.START~q\,
	datac => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	datad => \btn_controller|ALT_INV_output~DUPLICATE_q\,
	datae => \main_fsm|ALT_INV_Equal0~5_combout\,
	dataf => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	combout => \main_fsm|delay[9]~4_combout\);

-- Location: LABCELL_X79_Y6_N0
\main_fsm|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~77_sumout\ = SUM(( !\main_fsm|delay\(0) ) + ( VCC ) + ( !VCC ))
-- \main_fsm|Add0~78\ = CARRY(( !\main_fsm|delay\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(0),
	cin => GND,
	sumout => \main_fsm|Add0~77_sumout\,
	cout => \main_fsm|Add0~78\);

-- Location: MLABCELL_X78_Y5_N3
\main_fsm|delay[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[0]~5_combout\ = ( \main_fsm|delay[9]~3_combout\ ) # ( !\main_fsm|delay[9]~3_combout\ & ( (!\main_fsm|delay[9]~4_combout\ & (\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & (\main_fsm|Equal0~5_combout\))) # (\main_fsm|delay[9]~4_combout\ & 
-- (((!\main_fsm|Add0~77_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100010000000111110001000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	datab => \main_fsm|ALT_INV_Equal0~5_combout\,
	datac => \main_fsm|ALT_INV_delay[9]~4_combout\,
	datad => \main_fsm|ALT_INV_Add0~77_sumout\,
	dataf => \main_fsm|ALT_INV_delay[9]~3_combout\,
	combout => \main_fsm|delay[0]~5_combout\);

-- Location: FF_X78_Y5_N5
\main_fsm|delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(0));

-- Location: LABCELL_X79_Y6_N3
\main_fsm|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~81_sumout\ = SUM(( !\main_fsm|delay\(1) ) + ( VCC ) + ( \main_fsm|Add0~78\ ))
-- \main_fsm|Add0~82\ = CARRY(( !\main_fsm|delay\(1) ) + ( VCC ) + ( \main_fsm|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(1),
	cin => \main_fsm|Add0~78\,
	sumout => \main_fsm|Add0~81_sumout\,
	cout => \main_fsm|Add0~82\);

-- Location: MLABCELL_X78_Y5_N21
\main_fsm|delay[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[1]~6_combout\ = ( \main_fsm|delay[9]~4_combout\ & ( (!\main_fsm|Add0~81_sumout\) # (\main_fsm|delay[9]~3_combout\) ) ) # ( !\main_fsm|delay[9]~4_combout\ & ( ((\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & \main_fsm|Equal0~5_combout\)) # 
-- (\main_fsm|delay[9]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	datab => \main_fsm|ALT_INV_Equal0~5_combout\,
	datac => \main_fsm|ALT_INV_delay[9]~3_combout\,
	datad => \main_fsm|ALT_INV_Add0~81_sumout\,
	dataf => \main_fsm|ALT_INV_delay[9]~4_combout\,
	combout => \main_fsm|delay[1]~6_combout\);

-- Location: FF_X78_Y5_N23
\main_fsm|delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(1));

-- Location: LABCELL_X79_Y6_N6
\main_fsm|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~85_sumout\ = SUM(( !\main_fsm|delay[2]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~82\ ))
-- \main_fsm|Add0~86\ = CARRY(( !\main_fsm|delay[2]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay[2]~DUPLICATE_q\,
	cin => \main_fsm|Add0~82\,
	sumout => \main_fsm|Add0~85_sumout\,
	cout => \main_fsm|Add0~86\);

-- Location: MLABCELL_X78_Y5_N51
\main_fsm|delay[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[2]~7_combout\ = ( \main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( ((!\main_fsm|Add0~85_sumout\) # ((\main_fsm|delay[8]~0_combout\ & !\btn_controller|output~DUPLICATE_q\))) # (\main_fsm|Equal0~5_combout\) ) ) # ( 
-- !\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( (!\main_fsm|Add0~85_sumout\) # (\main_fsm|Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111010011111111111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay[8]~0_combout\,
	datab => \btn_controller|ALT_INV_output~DUPLICATE_q\,
	datac => \main_fsm|ALT_INV_Equal0~5_combout\,
	datad => \main_fsm|ALT_INV_Add0~85_sumout\,
	dataf => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	combout => \main_fsm|delay[2]~7_combout\);

-- Location: FF_X78_Y5_N52
\main_fsm|delay[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[2]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N9
\main_fsm|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~89_sumout\ = SUM(( !\main_fsm|delay[3]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~86\ ))
-- \main_fsm|Add0~90\ = CARRY(( !\main_fsm|delay[3]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay[3]~DUPLICATE_q\,
	cin => \main_fsm|Add0~86\,
	sumout => \main_fsm|Add0~89_sumout\,
	cout => \main_fsm|Add0~90\);

-- Location: MLABCELL_X78_Y5_N42
\main_fsm|delay[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[3]~8_combout\ = ( \main_fsm|Equal0~5_combout\ ) # ( !\main_fsm|Equal0~5_combout\ & ( (!\main_fsm|Add0~89_sumout\) # ((\main_fsm|delay[8]~0_combout\ & (!\btn_controller|output~DUPLICATE_q\ & \main_fsm|state.WAIT_INPUT~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100111111110000010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay[8]~0_combout\,
	datab => \btn_controller|ALT_INV_output~DUPLICATE_q\,
	datac => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	datad => \main_fsm|ALT_INV_Add0~89_sumout\,
	dataf => \main_fsm|ALT_INV_Equal0~5_combout\,
	combout => \main_fsm|delay[3]~8_combout\);

-- Location: FF_X78_Y5_N43
\main_fsm|delay[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[3]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N12
\main_fsm|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~65_sumout\ = SUM(( \main_fsm|delay\(4) ) + ( VCC ) + ( \main_fsm|Add0~90\ ))
-- \main_fsm|Add0~66\ = CARRY(( \main_fsm|delay\(4) ) + ( VCC ) + ( \main_fsm|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay\(4),
	cin => \main_fsm|Add0~90\,
	sumout => \main_fsm|Add0~65_sumout\,
	cout => \main_fsm|Add0~66\);

-- Location: FF_X79_Y6_N14
\main_fsm|delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~65_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(4));

-- Location: LABCELL_X79_Y6_N15
\main_fsm|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~93_sumout\ = SUM(( \main_fsm|delay[5]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~66\ ))
-- \main_fsm|Add0~94\ = CARRY(( \main_fsm|delay[5]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay[5]~DUPLICATE_q\,
	cin => \main_fsm|Add0~66\,
	sumout => \main_fsm|Add0~93_sumout\,
	cout => \main_fsm|Add0~94\);

-- Location: MLABCELL_X78_Y5_N36
\main_fsm|delay[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[5]~9_combout\ = ( \main_fsm|delay[9]~4_combout\ & ( (!\main_fsm|delay[9]~3_combout\ & (((\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & \main_fsm|Equal0~5_combout\)) # (\main_fsm|Add0~93_sumout\))) ) ) # ( !\main_fsm|delay[9]~4_combout\ & ( 
-- (\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & (!\main_fsm|delay[9]~3_combout\ & \main_fsm|Equal0~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100110011000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	datab => \main_fsm|ALT_INV_delay[9]~3_combout\,
	datac => \main_fsm|ALT_INV_Equal0~5_combout\,
	datad => \main_fsm|ALT_INV_Add0~93_sumout\,
	dataf => \main_fsm|ALT_INV_delay[9]~4_combout\,
	combout => \main_fsm|delay[5]~9_combout\);

-- Location: FF_X78_Y5_N38
\main_fsm|delay[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[5]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N18
\main_fsm|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~73_sumout\ = SUM(( \main_fsm|delay\(6) ) + ( VCC ) + ( \main_fsm|Add0~94\ ))
-- \main_fsm|Add0~74\ = CARRY(( \main_fsm|delay\(6) ) + ( VCC ) + ( \main_fsm|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(6),
	cin => \main_fsm|Add0~94\,
	sumout => \main_fsm|Add0~73_sumout\,
	cout => \main_fsm|Add0~74\);

-- Location: FF_X79_Y6_N20
\main_fsm|delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~73_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(6));

-- Location: LABCELL_X79_Y6_N21
\main_fsm|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~97_sumout\ = SUM(( \main_fsm|delay[7]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~74\ ))
-- \main_fsm|Add0~98\ = CARRY(( \main_fsm|delay[7]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay[7]~DUPLICATE_q\,
	cin => \main_fsm|Add0~74\,
	sumout => \main_fsm|Add0~97_sumout\,
	cout => \main_fsm|Add0~98\);

-- Location: MLABCELL_X78_Y5_N57
\main_fsm|delay[7]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[7]~10_combout\ = ( \main_fsm|delay[9]~4_combout\ & ( (!\main_fsm|delay[9]~3_combout\ & (((\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & \main_fsm|Equal0~5_combout\)) # (\main_fsm|Add0~97_sumout\))) ) ) # ( !\main_fsm|delay[9]~4_combout\ & ( 
-- (\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & (!\main_fsm|delay[9]~3_combout\ & \main_fsm|Equal0~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100110011000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	datab => \main_fsm|ALT_INV_delay[9]~3_combout\,
	datac => \main_fsm|ALT_INV_Equal0~5_combout\,
	datad => \main_fsm|ALT_INV_Add0~97_sumout\,
	dataf => \main_fsm|ALT_INV_delay[9]~4_combout\,
	combout => \main_fsm|delay[7]~10_combout\);

-- Location: FF_X78_Y5_N58
\main_fsm|delay[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[7]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N24
\main_fsm|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~101_sumout\ = SUM(( !\main_fsm|delay\(8) ) + ( VCC ) + ( \main_fsm|Add0~98\ ))
-- \main_fsm|Add0~102\ = CARRY(( !\main_fsm|delay\(8) ) + ( VCC ) + ( \main_fsm|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay\(8),
	cin => \main_fsm|Add0~98\,
	sumout => \main_fsm|Add0~101_sumout\,
	cout => \main_fsm|Add0~102\);

-- Location: MLABCELL_X78_Y5_N48
\main_fsm|delay[8]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[8]~11_combout\ = ( \main_fsm|Equal0~5_combout\ ) # ( !\main_fsm|Equal0~5_combout\ & ( (!\main_fsm|Add0~101_sumout\) # ((\main_fsm|delay[8]~0_combout\ & (!\btn_controller|output~DUPLICATE_q\ & \main_fsm|state.WAIT_INPUT~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000100111111110000010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay[8]~0_combout\,
	datab => \btn_controller|ALT_INV_output~DUPLICATE_q\,
	datac => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	datad => \main_fsm|ALT_INV_Add0~101_sumout\,
	dataf => \main_fsm|ALT_INV_Equal0~5_combout\,
	combout => \main_fsm|delay[8]~11_combout\);

-- Location: FF_X78_Y5_N50
\main_fsm|delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(8));

-- Location: LABCELL_X79_Y6_N27
\main_fsm|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~105_sumout\ = SUM(( !\main_fsm|delay\(9) ) + ( VCC ) + ( \main_fsm|Add0~102\ ))
-- \main_fsm|Add0~106\ = CARRY(( !\main_fsm|delay\(9) ) + ( VCC ) + ( \main_fsm|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(9),
	cin => \main_fsm|Add0~102\,
	sumout => \main_fsm|Add0~105_sumout\,
	cout => \main_fsm|Add0~106\);

-- Location: MLABCELL_X78_Y5_N54
\main_fsm|delay[9]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[9]~12_combout\ = ( \main_fsm|delay[9]~4_combout\ & ( ((!\main_fsm|Add0~105_sumout\ & ((!\main_fsm|state.PRSD_MSG~DUPLICATE_q\) # (!\main_fsm|Equal0~5_combout\)))) # (\main_fsm|delay[9]~3_combout\) ) ) # ( !\main_fsm|delay[9]~4_combout\ & ( 
-- (!\main_fsm|state.PRSD_MSG~DUPLICATE_q\) # ((!\main_fsm|Equal0~5_combout\) # (\main_fsm|delay[9]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111110111111101111111011001100111111101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	datab => \main_fsm|ALT_INV_delay[9]~3_combout\,
	datac => \main_fsm|ALT_INV_Equal0~5_combout\,
	datad => \main_fsm|ALT_INV_Add0~105_sumout\,
	dataf => \main_fsm|ALT_INV_delay[9]~4_combout\,
	combout => \main_fsm|delay[9]~12_combout\);

-- Location: FF_X78_Y5_N56
\main_fsm|delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(9));

-- Location: LABCELL_X79_Y6_N30
\main_fsm|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~109_sumout\ = SUM(( !\main_fsm|delay[10]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~106\ ))
-- \main_fsm|Add0~110\ = CARRY(( !\main_fsm|delay[10]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay[10]~DUPLICATE_q\,
	cin => \main_fsm|Add0~106\,
	sumout => \main_fsm|Add0~109_sumout\,
	cout => \main_fsm|Add0~110\);

-- Location: MLABCELL_X78_Y5_N0
\main_fsm|delay[10]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[10]~13_combout\ = ( \main_fsm|delay[9]~4_combout\ & ( ((!\main_fsm|Add0~109_sumout\ & ((!\main_fsm|state.PRSD_MSG~DUPLICATE_q\) # (!\main_fsm|Equal0~5_combout\)))) # (\main_fsm|delay[9]~3_combout\) ) ) # ( !\main_fsm|delay[9]~4_combout\ & 
-- ( (!\main_fsm|state.PRSD_MSG~DUPLICATE_q\) # ((!\main_fsm|Equal0~5_combout\) # (\main_fsm|delay[9]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011111111111011101111111111100000111111111110000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	datab => \main_fsm|ALT_INV_Equal0~5_combout\,
	datac => \main_fsm|ALT_INV_Add0~109_sumout\,
	datad => \main_fsm|ALT_INV_delay[9]~3_combout\,
	dataf => \main_fsm|ALT_INV_delay[9]~4_combout\,
	combout => \main_fsm|delay[10]~13_combout\);

-- Location: FF_X78_Y5_N1
\main_fsm|delay[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[10]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N33
\main_fsm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~29_sumout\ = SUM(( \main_fsm|delay[11]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~110\ ))
-- \main_fsm|Add0~30\ = CARRY(( \main_fsm|delay[11]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay[11]~DUPLICATE_q\,
	cin => \main_fsm|Add0~110\,
	sumout => \main_fsm|Add0~29_sumout\,
	cout => \main_fsm|Add0~30\);

-- Location: FF_X79_Y6_N35
\main_fsm|delay[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~29_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[11]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N36
\main_fsm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~33_sumout\ = SUM(( \main_fsm|delay[12]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~30\ ))
-- \main_fsm|Add0~34\ = CARRY(( \main_fsm|delay[12]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay[12]~DUPLICATE_q\,
	cin => \main_fsm|Add0~30\,
	sumout => \main_fsm|Add0~33_sumout\,
	cout => \main_fsm|Add0~34\);

-- Location: FF_X79_Y6_N38
\main_fsm|delay[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~33_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[12]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N39
\main_fsm|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~113_sumout\ = SUM(( !\main_fsm|delay\(13) ) + ( VCC ) + ( \main_fsm|Add0~34\ ))
-- \main_fsm|Add0~114\ = CARRY(( !\main_fsm|delay\(13) ) + ( VCC ) + ( \main_fsm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(13),
	cin => \main_fsm|Add0~34\,
	sumout => \main_fsm|Add0~113_sumout\,
	cout => \main_fsm|Add0~114\);

-- Location: MLABCELL_X78_Y5_N45
\main_fsm|delay[13]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[13]~14_combout\ = ( \main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( ((!\main_fsm|Add0~113_sumout\) # ((\main_fsm|delay[8]~0_combout\ & !\btn_controller|output~DUPLICATE_q\))) # (\main_fsm|Equal0~5_combout\) ) ) # ( 
-- !\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( (!\main_fsm|Add0~113_sumout\) # (\main_fsm|Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111111111111010011111111111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay[8]~0_combout\,
	datab => \btn_controller|ALT_INV_output~DUPLICATE_q\,
	datac => \main_fsm|ALT_INV_Equal0~5_combout\,
	datad => \main_fsm|ALT_INV_Add0~113_sumout\,
	dataf => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	combout => \main_fsm|delay[13]~14_combout\);

-- Location: FF_X78_Y5_N47
\main_fsm|delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[13]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(13));

-- Location: LABCELL_X79_Y6_N42
\main_fsm|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~37_sumout\ = SUM(( \main_fsm|delay[14]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~114\ ))
-- \main_fsm|Add0~38\ = CARRY(( \main_fsm|delay[14]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay[14]~DUPLICATE_q\,
	cin => \main_fsm|Add0~114\,
	sumout => \main_fsm|Add0~37_sumout\,
	cout => \main_fsm|Add0~38\);

-- Location: FF_X79_Y6_N44
\main_fsm|delay[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~37_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[14]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y6_N45
\main_fsm|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~117_sumout\ = SUM(( \main_fsm|delay\(15) ) + ( VCC ) + ( \main_fsm|Add0~38\ ))
-- \main_fsm|Add0~118\ = CARRY(( \main_fsm|delay\(15) ) + ( VCC ) + ( \main_fsm|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay\(15),
	cin => \main_fsm|Add0~38\,
	sumout => \main_fsm|Add0~117_sumout\,
	cout => \main_fsm|Add0~118\);

-- Location: MLABCELL_X78_Y5_N39
\main_fsm|delay[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[15]~15_combout\ = ( \main_fsm|delay[9]~4_combout\ & ( (!\main_fsm|delay[9]~3_combout\ & (((\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & \main_fsm|Equal0~5_combout\)) # (\main_fsm|Add0~117_sumout\))) ) ) # ( !\main_fsm|delay[9]~4_combout\ & ( 
-- (\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & (!\main_fsm|delay[9]~3_combout\ & \main_fsm|Equal0~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100110011000000010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	datab => \main_fsm|ALT_INV_delay[9]~3_combout\,
	datac => \main_fsm|ALT_INV_Equal0~5_combout\,
	datad => \main_fsm|ALT_INV_Add0~117_sumout\,
	dataf => \main_fsm|ALT_INV_delay[9]~4_combout\,
	combout => \main_fsm|delay[15]~15_combout\);

-- Location: FF_X78_Y5_N41
\main_fsm|delay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(15));

-- Location: LABCELL_X79_Y6_N48
\main_fsm|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~121_sumout\ = SUM(( \main_fsm|delay\(16) ) + ( VCC ) + ( \main_fsm|Add0~118\ ))
-- \main_fsm|Add0~122\ = CARRY(( \main_fsm|delay\(16) ) + ( VCC ) + ( \main_fsm|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(16),
	cin => \main_fsm|Add0~118\,
	sumout => \main_fsm|Add0~121_sumout\,
	cout => \main_fsm|Add0~122\);

-- Location: MLABCELL_X78_Y5_N18
\main_fsm|delay[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|delay[16]~16_combout\ = ( \main_fsm|delay[9]~4_combout\ & ( (!\main_fsm|delay[9]~3_combout\ & (((\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & \main_fsm|Equal0~5_combout\)) # (\main_fsm|Add0~121_sumout\))) ) ) # ( !\main_fsm|delay[9]~4_combout\ & ( 
-- (\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & (\main_fsm|Equal0~5_combout\ & !\main_fsm|delay[9]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000011111000000000001111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	datab => \main_fsm|ALT_INV_Equal0~5_combout\,
	datac => \main_fsm|ALT_INV_Add0~121_sumout\,
	datad => \main_fsm|ALT_INV_delay[9]~3_combout\,
	dataf => \main_fsm|ALT_INV_delay[9]~4_combout\,
	combout => \main_fsm|delay[16]~16_combout\);

-- Location: FF_X78_Y5_N20
\main_fsm|delay[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(16));

-- Location: LABCELL_X79_Y6_N51
\main_fsm|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~41_sumout\ = SUM(( \main_fsm|delay\(17) ) + ( VCC ) + ( \main_fsm|Add0~122\ ))
-- \main_fsm|Add0~42\ = CARRY(( \main_fsm|delay\(17) ) + ( VCC ) + ( \main_fsm|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay\(17),
	cin => \main_fsm|Add0~122\,
	sumout => \main_fsm|Add0~41_sumout\,
	cout => \main_fsm|Add0~42\);

-- Location: FF_X79_Y6_N52
\main_fsm|delay[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~41_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(17));

-- Location: LABCELL_X79_Y6_N54
\main_fsm|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~45_sumout\ = SUM(( \main_fsm|delay\(18) ) + ( VCC ) + ( \main_fsm|Add0~42\ ))
-- \main_fsm|Add0~46\ = CARRY(( \main_fsm|delay\(18) ) + ( VCC ) + ( \main_fsm|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay\(18),
	cin => \main_fsm|Add0~42\,
	sumout => \main_fsm|Add0~45_sumout\,
	cout => \main_fsm|Add0~46\);

-- Location: FF_X79_Y6_N55
\main_fsm|delay[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~45_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(18));

-- Location: LABCELL_X79_Y6_N57
\main_fsm|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~49_sumout\ = SUM(( \main_fsm|delay[19]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~46\ ))
-- \main_fsm|Add0~50\ = CARRY(( \main_fsm|delay[19]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay[19]~DUPLICATE_q\,
	cin => \main_fsm|Add0~46\,
	sumout => \main_fsm|Add0~49_sumout\,
	cout => \main_fsm|Add0~50\);

-- Location: FF_X79_Y6_N59
\main_fsm|delay[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~49_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[19]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y5_N0
\main_fsm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~5_sumout\ = SUM(( \main_fsm|delay\(20) ) + ( VCC ) + ( \main_fsm|Add0~50\ ))
-- \main_fsm|Add0~6\ = CARRY(( \main_fsm|delay\(20) ) + ( VCC ) + ( \main_fsm|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(20),
	cin => \main_fsm|Add0~50\,
	sumout => \main_fsm|Add0~5_sumout\,
	cout => \main_fsm|Add0~6\);

-- Location: FF_X79_Y5_N2
\main_fsm|delay[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~5_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(20));

-- Location: LABCELL_X79_Y5_N3
\main_fsm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~9_sumout\ = SUM(( \main_fsm|delay\(21) ) + ( VCC ) + ( \main_fsm|Add0~6\ ))
-- \main_fsm|Add0~10\ = CARRY(( \main_fsm|delay\(21) ) + ( VCC ) + ( \main_fsm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay\(21),
	cin => \main_fsm|Add0~6\,
	sumout => \main_fsm|Add0~9_sumout\,
	cout => \main_fsm|Add0~10\);

-- Location: FF_X79_Y5_N4
\main_fsm|delay[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~9_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(21));

-- Location: LABCELL_X79_Y5_N6
\main_fsm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~13_sumout\ = SUM(( \main_fsm|delay\(22) ) + ( VCC ) + ( \main_fsm|Add0~10\ ))
-- \main_fsm|Add0~14\ = CARRY(( \main_fsm|delay\(22) ) + ( VCC ) + ( \main_fsm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay\(22),
	cin => \main_fsm|Add0~10\,
	sumout => \main_fsm|Add0~13_sumout\,
	cout => \main_fsm|Add0~14\);

-- Location: FF_X79_Y5_N8
\main_fsm|delay[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~13_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(22));

-- Location: LABCELL_X79_Y5_N9
\main_fsm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~17_sumout\ = SUM(( \main_fsm|delay\(23) ) + ( VCC ) + ( \main_fsm|Add0~14\ ))
-- \main_fsm|Add0~18\ = CARRY(( \main_fsm|delay\(23) ) + ( VCC ) + ( \main_fsm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay\(23),
	cin => \main_fsm|Add0~14\,
	sumout => \main_fsm|Add0~17_sumout\,
	cout => \main_fsm|Add0~18\);

-- Location: FF_X79_Y5_N10
\main_fsm|delay[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~17_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(23));

-- Location: LABCELL_X79_Y5_N12
\main_fsm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~21_sumout\ = SUM(( \main_fsm|delay\(24) ) + ( VCC ) + ( \main_fsm|Add0~18\ ))
-- \main_fsm|Add0~22\ = CARRY(( \main_fsm|delay\(24) ) + ( VCC ) + ( \main_fsm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay\(24),
	cin => \main_fsm|Add0~18\,
	sumout => \main_fsm|Add0~21_sumout\,
	cout => \main_fsm|Add0~22\);

-- Location: FF_X79_Y5_N14
\main_fsm|delay[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~21_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(24));

-- Location: LABCELL_X79_Y5_N15
\main_fsm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~25_sumout\ = SUM(( \main_fsm|delay\(25) ) + ( VCC ) + ( \main_fsm|Add0~22\ ))
-- \main_fsm|Add0~26\ = CARRY(( \main_fsm|delay\(25) ) + ( VCC ) + ( \main_fsm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(25),
	cin => \main_fsm|Add0~22\,
	sumout => \main_fsm|Add0~25_sumout\,
	cout => \main_fsm|Add0~26\);

-- Location: FF_X79_Y5_N17
\main_fsm|delay[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~25_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(25));

-- Location: LABCELL_X79_Y5_N18
\main_fsm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~1_sumout\ = SUM(( \main_fsm|delay[26]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~26\ ))
-- \main_fsm|Add0~2\ = CARRY(( \main_fsm|delay[26]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay[26]~DUPLICATE_q\,
	cin => \main_fsm|Add0~26\,
	sumout => \main_fsm|Add0~1_sumout\,
	cout => \main_fsm|Add0~2\);

-- Location: FF_X79_Y5_N20
\main_fsm|delay[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~1_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(26));

-- Location: FF_X78_Y5_N2
\main_fsm|delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[10]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(10));

-- Location: MLABCELL_X78_Y5_N24
\main_fsm|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Equal0~4_combout\ = ( \main_fsm|delay\(9) & ( \main_fsm|delay\(8) & ( (\main_fsm|delay\(10) & (\main_fsm|delay\(13) & (!\main_fsm|delay\(16) & !\main_fsm|delay\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(10),
	datab => \main_fsm|ALT_INV_delay\(13),
	datac => \main_fsm|ALT_INV_delay\(16),
	datad => \main_fsm|ALT_INV_delay\(15),
	datae => \main_fsm|ALT_INV_delay\(9),
	dataf => \main_fsm|ALT_INV_delay\(8),
	combout => \main_fsm|Equal0~4_combout\);

-- Location: FF_X78_Y5_N59
\main_fsm|delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(7));

-- Location: FF_X78_Y5_N53
\main_fsm|delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(2));

-- Location: FF_X78_Y5_N37
\main_fsm|delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[5]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(5));

-- Location: FF_X78_Y5_N44
\main_fsm|delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|delay[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(3));

-- Location: MLABCELL_X78_Y5_N30
\main_fsm|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Equal0~3_combout\ = ( \main_fsm|delay\(1) & ( \main_fsm|delay\(3) & ( (\main_fsm|delay\(0) & (!\main_fsm|delay\(7) & (\main_fsm|delay\(2) & !\main_fsm|delay\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(0),
	datab => \main_fsm|ALT_INV_delay\(7),
	datac => \main_fsm|ALT_INV_delay\(2),
	datad => \main_fsm|ALT_INV_delay\(5),
	datae => \main_fsm|ALT_INV_delay\(1),
	dataf => \main_fsm|ALT_INV_delay\(3),
	combout => \main_fsm|Equal0~3_combout\);

-- Location: FF_X79_Y6_N43
\main_fsm|delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~37_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(14));

-- Location: FF_X79_Y6_N58
\main_fsm|delay[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~49_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(19));

-- Location: FF_X79_Y6_N34
\main_fsm|delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~29_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(11));

-- Location: FF_X79_Y6_N37
\main_fsm|delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~33_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(12));

-- Location: LABCELL_X80_Y6_N0
\main_fsm|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Equal0~1_combout\ = ( !\main_fsm|delay\(11) & ( !\main_fsm|delay\(12) & ( (!\main_fsm|delay\(18) & (!\main_fsm|delay\(14) & (!\main_fsm|delay\(17) & !\main_fsm|delay\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(18),
	datab => \main_fsm|ALT_INV_delay\(14),
	datac => \main_fsm|ALT_INV_delay\(17),
	datad => \main_fsm|ALT_INV_delay\(19),
	datae => \main_fsm|ALT_INV_delay\(11),
	dataf => \main_fsm|ALT_INV_delay\(12),
	combout => \main_fsm|Equal0~1_combout\);

-- Location: LABCELL_X79_Y5_N21
\main_fsm|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~53_sumout\ = SUM(( \main_fsm|delay\(27) ) + ( VCC ) + ( \main_fsm|Add0~2\ ))
-- \main_fsm|Add0~54\ = CARRY(( \main_fsm|delay\(27) ) + ( VCC ) + ( \main_fsm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(27),
	cin => \main_fsm|Add0~2\,
	sumout => \main_fsm|Add0~53_sumout\,
	cout => \main_fsm|Add0~54\);

-- Location: FF_X79_Y5_N22
\main_fsm|delay[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~53_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(27));

-- Location: LABCELL_X79_Y5_N24
\main_fsm|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~57_sumout\ = SUM(( \main_fsm|delay\(28) ) + ( VCC ) + ( \main_fsm|Add0~54\ ))
-- \main_fsm|Add0~58\ = CARRY(( \main_fsm|delay\(28) ) + ( VCC ) + ( \main_fsm|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \main_fsm|ALT_INV_delay\(28),
	cin => \main_fsm|Add0~54\,
	sumout => \main_fsm|Add0~57_sumout\,
	cout => \main_fsm|Add0~58\);

-- Location: FF_X79_Y5_N25
\main_fsm|delay[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~57_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(28));

-- Location: LABCELL_X79_Y5_N27
\main_fsm|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~61_sumout\ = SUM(( \main_fsm|delay\(29) ) + ( VCC ) + ( \main_fsm|Add0~58\ ))
-- \main_fsm|Add0~62\ = CARRY(( \main_fsm|delay\(29) ) + ( VCC ) + ( \main_fsm|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_delay\(29),
	cin => \main_fsm|Add0~58\,
	sumout => \main_fsm|Add0~61_sumout\,
	cout => \main_fsm|Add0~62\);

-- Location: FF_X79_Y5_N29
\main_fsm|delay[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~61_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(29));

-- Location: FF_X79_Y5_N32
\main_fsm|delay[30]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~69_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay[30]~DUPLICATE_q\);

-- Location: LABCELL_X79_Y5_N30
\main_fsm|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Add0~69_sumout\ = SUM(( \main_fsm|delay[30]~DUPLICATE_q\ ) + ( VCC ) + ( \main_fsm|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_delay[30]~DUPLICATE_q\,
	cin => \main_fsm|Add0~62\,
	sumout => \main_fsm|Add0~69_sumout\);

-- Location: FF_X79_Y5_N31
\main_fsm|delay[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|Add0~69_sumout\,
	sclr => \main_fsm|delay[8]~1_combout\,
	ena => \main_fsm|delay[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|delay\(30));

-- Location: LABCELL_X80_Y5_N0
\main_fsm|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Equal0~2_combout\ = ( !\main_fsm|delay\(6) & ( !\main_fsm|delay\(28) & ( (!\main_fsm|delay\(27) & (!\main_fsm|delay\(29) & (!\main_fsm|delay\(30) & !\main_fsm|delay\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(27),
	datab => \main_fsm|ALT_INV_delay\(29),
	datac => \main_fsm|ALT_INV_delay\(30),
	datad => \main_fsm|ALT_INV_delay\(4),
	datae => \main_fsm|ALT_INV_delay\(6),
	dataf => \main_fsm|ALT_INV_delay\(28),
	combout => \main_fsm|Equal0~2_combout\);

-- Location: LABCELL_X79_Y5_N39
\main_fsm|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Equal0~0_combout\ = ( !\main_fsm|delay\(23) & ( !\main_fsm|delay\(22) & ( (!\main_fsm|delay\(20) & (!\main_fsm|delay\(24) & (!\main_fsm|delay\(25) & !\main_fsm|delay\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(20),
	datab => \main_fsm|ALT_INV_delay\(24),
	datac => \main_fsm|ALT_INV_delay\(25),
	datad => \main_fsm|ALT_INV_delay\(21),
	datae => \main_fsm|ALT_INV_delay\(23),
	dataf => \main_fsm|ALT_INV_delay\(22),
	combout => \main_fsm|Equal0~0_combout\);

-- Location: LABCELL_X79_Y5_N48
\main_fsm|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Equal0~5_combout\ = ( \main_fsm|Equal0~2_combout\ & ( \main_fsm|Equal0~0_combout\ & ( (!\main_fsm|delay\(26) & (\main_fsm|Equal0~4_combout\ & (\main_fsm|Equal0~3_combout\ & \main_fsm|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_delay\(26),
	datab => \main_fsm|ALT_INV_Equal0~4_combout\,
	datac => \main_fsm|ALT_INV_Equal0~3_combout\,
	datad => \main_fsm|ALT_INV_Equal0~1_combout\,
	datae => \main_fsm|ALT_INV_Equal0~2_combout\,
	dataf => \main_fsm|ALT_INV_Equal0~0_combout\,
	combout => \main_fsm|Equal0~5_combout\);

-- Location: MLABCELL_X78_Y5_N9
\main_fsm|state.START~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|state.START~0_combout\ = ( \main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( (!\btn_controller|output~DUPLICATE_q\) # (\main_fsm|state.START~q\) ) ) # ( !\main_fsm|state.WAIT_INPUT~DUPLICATE_q\ & ( (\main_fsm|state.START~q\) # 
-- (\main_fsm|Equal0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \btn_controller|ALT_INV_output~DUPLICATE_q\,
	datac => \main_fsm|ALT_INV_Equal0~5_combout\,
	datad => \main_fsm|ALT_INV_state.START~q\,
	dataf => \main_fsm|ALT_INV_state.WAIT_INPUT~DUPLICATE_q\,
	combout => \main_fsm|state.START~0_combout\);

-- Location: FF_X78_Y5_N16
\main_fsm|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|state.START~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|state.START~q\);

-- Location: LABCELL_X80_Y5_N12
\main_fsm|Selector66~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector66~0_combout\ = ( \main_fsm|state.SEND~q\ & ( \main_fsm|state.PRSD_MSG~DUPLICATE_q\ & ( (\main_fsm|state.WAIT_INPUT~q\) # (\main_fsm|led0~q\) ) ) ) # ( !\main_fsm|state.SEND~q\ & ( \main_fsm|state.PRSD_MSG~DUPLICATE_q\ & ( 
-- (\main_fsm|state.WAIT_INPUT~q\) # (\main_fsm|led0~q\) ) ) ) # ( \main_fsm|state.SEND~q\ & ( !\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & ( ((\main_fsm|led0~q\ & ((!\main_fsm|state.START~q\) # (\main_fsm|state.DISPL_CLEAR~q\)))) # 
-- (\main_fsm|state.WAIT_INPUT~q\) ) ) ) # ( !\main_fsm|state.SEND~q\ & ( !\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & ( (\main_fsm|state.WAIT_INPUT~q\) # (\main_fsm|led0~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010011110101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_led0~q\,
	datab => \main_fsm|ALT_INV_state.START~q\,
	datac => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	datad => \main_fsm|ALT_INV_state.DISPL_CLEAR~q\,
	datae => \main_fsm|ALT_INV_state.SEND~q\,
	dataf => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	combout => \main_fsm|Selector66~0_combout\);

-- Location: LABCELL_X77_Y4_N51
\main_fsm|led0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|led0~feeder_combout\ = ( \main_fsm|Selector66~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \main_fsm|ALT_INV_Selector66~0_combout\,
	combout => \main_fsm|led0~feeder_combout\);

-- Location: FF_X77_Y4_N52
\main_fsm|led0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \main_fsm|led0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|led0~q\);

-- Location: LABCELL_X88_Y9_N30
\tim_1Hz|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~13_sumout\ = SUM(( \tim_1Hz|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \tim_1Hz|Add0~14\ = CARRY(( \tim_1Hz|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(0),
	cin => GND,
	sumout => \tim_1Hz|Add0~13_sumout\,
	cout => \tim_1Hz|Add0~14\);

-- Location: FF_X88_Y9_N31
\tim_1Hz|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~13_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(0));

-- Location: LABCELL_X88_Y9_N33
\tim_1Hz|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~33_sumout\ = SUM(( \tim_1Hz|counter\(1) ) + ( GND ) + ( \tim_1Hz|Add0~14\ ))
-- \tim_1Hz|Add0~34\ = CARRY(( \tim_1Hz|counter\(1) ) + ( GND ) + ( \tim_1Hz|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(1),
	cin => \tim_1Hz|Add0~14\,
	sumout => \tim_1Hz|Add0~33_sumout\,
	cout => \tim_1Hz|Add0~34\);

-- Location: FF_X88_Y9_N35
\tim_1Hz|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~33_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(1));

-- Location: LABCELL_X88_Y9_N36
\tim_1Hz|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~45_sumout\ = SUM(( \tim_1Hz|counter\(2) ) + ( GND ) + ( \tim_1Hz|Add0~34\ ))
-- \tim_1Hz|Add0~46\ = CARRY(( \tim_1Hz|counter\(2) ) + ( GND ) + ( \tim_1Hz|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(2),
	cin => \tim_1Hz|Add0~34\,
	sumout => \tim_1Hz|Add0~45_sumout\,
	cout => \tim_1Hz|Add0~46\);

-- Location: FF_X88_Y9_N38
\tim_1Hz|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~45_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(2));

-- Location: LABCELL_X88_Y9_N39
\tim_1Hz|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~89_sumout\ = SUM(( \tim_1Hz|counter\(3) ) + ( GND ) + ( \tim_1Hz|Add0~46\ ))
-- \tim_1Hz|Add0~90\ = CARRY(( \tim_1Hz|counter\(3) ) + ( GND ) + ( \tim_1Hz|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(3),
	cin => \tim_1Hz|Add0~46\,
	sumout => \tim_1Hz|Add0~89_sumout\,
	cout => \tim_1Hz|Add0~90\);

-- Location: FF_X88_Y9_N40
\tim_1Hz|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~89_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(3));

-- Location: LABCELL_X88_Y9_N42
\tim_1Hz|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~61_sumout\ = SUM(( \tim_1Hz|counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \tim_1Hz|Add0~90\ ))
-- \tim_1Hz|Add0~62\ = CARRY(( \tim_1Hz|counter[4]~DUPLICATE_q\ ) + ( GND ) + ( \tim_1Hz|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_counter[4]~DUPLICATE_q\,
	cin => \tim_1Hz|Add0~90\,
	sumout => \tim_1Hz|Add0~61_sumout\,
	cout => \tim_1Hz|Add0~62\);

-- Location: FF_X88_Y9_N44
\tim_1Hz|counter[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~61_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter[4]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N45
\tim_1Hz|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~101_sumout\ = SUM(( \tim_1Hz|counter\(5) ) + ( GND ) + ( \tim_1Hz|Add0~62\ ))
-- \tim_1Hz|Add0~102\ = CARRY(( \tim_1Hz|counter\(5) ) + ( GND ) + ( \tim_1Hz|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(5),
	cin => \tim_1Hz|Add0~62\,
	sumout => \tim_1Hz|Add0~101_sumout\,
	cout => \tim_1Hz|Add0~102\);

-- Location: FF_X88_Y9_N46
\tim_1Hz|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~101_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(5));

-- Location: LABCELL_X88_Y9_N48
\tim_1Hz|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~53_sumout\ = SUM(( \tim_1Hz|counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \tim_1Hz|Add0~102\ ))
-- \tim_1Hz|Add0~54\ = CARRY(( \tim_1Hz|counter[6]~DUPLICATE_q\ ) + ( GND ) + ( \tim_1Hz|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_1Hz|ALT_INV_counter[6]~DUPLICATE_q\,
	cin => \tim_1Hz|Add0~102\,
	sumout => \tim_1Hz|Add0~53_sumout\,
	cout => \tim_1Hz|Add0~54\);

-- Location: FF_X88_Y9_N49
\tim_1Hz|counter[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~53_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter[6]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N51
\tim_1Hz|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~93_sumout\ = SUM(( \tim_1Hz|counter\(7) ) + ( GND ) + ( \tim_1Hz|Add0~54\ ))
-- \tim_1Hz|Add0~94\ = CARRY(( \tim_1Hz|counter\(7) ) + ( GND ) + ( \tim_1Hz|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(7),
	cin => \tim_1Hz|Add0~54\,
	sumout => \tim_1Hz|Add0~93_sumout\,
	cout => \tim_1Hz|Add0~94\);

-- Location: FF_X88_Y9_N53
\tim_1Hz|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~93_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(7));

-- Location: LABCELL_X88_Y9_N54
\tim_1Hz|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~17_sumout\ = SUM(( \tim_1Hz|counter\(8) ) + ( GND ) + ( \tim_1Hz|Add0~94\ ))
-- \tim_1Hz|Add0~18\ = CARRY(( \tim_1Hz|counter\(8) ) + ( GND ) + ( \tim_1Hz|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(8),
	cin => \tim_1Hz|Add0~94\,
	sumout => \tim_1Hz|Add0~17_sumout\,
	cout => \tim_1Hz|Add0~18\);

-- Location: FF_X88_Y9_N56
\tim_1Hz|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~17_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(8));

-- Location: LABCELL_X88_Y9_N57
\tim_1Hz|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~21_sumout\ = SUM(( \tim_1Hz|counter\(9) ) + ( GND ) + ( \tim_1Hz|Add0~18\ ))
-- \tim_1Hz|Add0~22\ = CARRY(( \tim_1Hz|counter\(9) ) + ( GND ) + ( \tim_1Hz|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_counter\(9),
	cin => \tim_1Hz|Add0~18\,
	sumout => \tim_1Hz|Add0~21_sumout\,
	cout => \tim_1Hz|Add0~22\);

-- Location: FF_X88_Y9_N59
\tim_1Hz|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~21_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(9));

-- Location: LABCELL_X88_Y8_N0
\tim_1Hz|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~25_sumout\ = SUM(( \tim_1Hz|counter\(10) ) + ( GND ) + ( \tim_1Hz|Add0~22\ ))
-- \tim_1Hz|Add0~26\ = CARRY(( \tim_1Hz|counter\(10) ) + ( GND ) + ( \tim_1Hz|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(10),
	cin => \tim_1Hz|Add0~22\,
	sumout => \tim_1Hz|Add0~25_sumout\,
	cout => \tim_1Hz|Add0~26\);

-- Location: FF_X88_Y9_N5
\tim_1Hz|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \tim_1Hz|Add0~25_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(10));

-- Location: LABCELL_X88_Y8_N3
\tim_1Hz|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~41_sumout\ = SUM(( \tim_1Hz|counter\(11) ) + ( GND ) + ( \tim_1Hz|Add0~26\ ))
-- \tim_1Hz|Add0~42\ = CARRY(( \tim_1Hz|counter\(11) ) + ( GND ) + ( \tim_1Hz|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_1Hz|ALT_INV_counter\(11),
	cin => \tim_1Hz|Add0~26\,
	sumout => \tim_1Hz|Add0~41_sumout\,
	cout => \tim_1Hz|Add0~42\);

-- Location: FF_X88_Y9_N20
\tim_1Hz|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \tim_1Hz|Add0~41_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(11));

-- Location: LABCELL_X88_Y8_N6
\tim_1Hz|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~57_sumout\ = SUM(( \tim_1Hz|counter\(12) ) + ( GND ) + ( \tim_1Hz|Add0~42\ ))
-- \tim_1Hz|Add0~58\ = CARRY(( \tim_1Hz|counter\(12) ) + ( GND ) + ( \tim_1Hz|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \tim_1Hz|ALT_INV_counter\(12),
	cin => \tim_1Hz|Add0~42\,
	sumout => \tim_1Hz|Add0~57_sumout\,
	cout => \tim_1Hz|Add0~58\);

-- Location: MLABCELL_X87_Y9_N15
\tim_1Hz|counter[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|counter[12]~feeder_combout\ = ( \tim_1Hz|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \tim_1Hz|ALT_INV_Add0~57_sumout\,
	combout => \tim_1Hz|counter[12]~feeder_combout\);

-- Location: FF_X87_Y9_N16
\tim_1Hz|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|counter[12]~feeder_combout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(12));

-- Location: LABCELL_X88_Y8_N9
\tim_1Hz|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~85_sumout\ = SUM(( \tim_1Hz|counter\(13) ) + ( GND ) + ( \tim_1Hz|Add0~58\ ))
-- \tim_1Hz|Add0~86\ = CARRY(( \tim_1Hz|counter\(13) ) + ( GND ) + ( \tim_1Hz|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(13),
	cin => \tim_1Hz|Add0~58\,
	sumout => \tim_1Hz|Add0~85_sumout\,
	cout => \tim_1Hz|Add0~86\);

-- Location: FF_X88_Y8_N10
\tim_1Hz|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~85_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(13));

-- Location: LABCELL_X88_Y8_N12
\tim_1Hz|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~81_sumout\ = SUM(( \tim_1Hz|counter\(14) ) + ( GND ) + ( \tim_1Hz|Add0~86\ ))
-- \tim_1Hz|Add0~82\ = CARRY(( \tim_1Hz|counter\(14) ) + ( GND ) + ( \tim_1Hz|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_counter\(14),
	cin => \tim_1Hz|Add0~86\,
	sumout => \tim_1Hz|Add0~81_sumout\,
	cout => \tim_1Hz|Add0~82\);

-- Location: FF_X88_Y8_N14
\tim_1Hz|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~81_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(14));

-- Location: LABCELL_X88_Y8_N15
\tim_1Hz|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~77_sumout\ = SUM(( \tim_1Hz|counter\(15) ) + ( GND ) + ( \tim_1Hz|Add0~82\ ))
-- \tim_1Hz|Add0~78\ = CARRY(( \tim_1Hz|counter\(15) ) + ( GND ) + ( \tim_1Hz|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(15),
	cin => \tim_1Hz|Add0~82\,
	sumout => \tim_1Hz|Add0~77_sumout\,
	cout => \tim_1Hz|Add0~78\);

-- Location: FF_X88_Y8_N16
\tim_1Hz|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~77_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(15));

-- Location: LABCELL_X88_Y8_N18
\tim_1Hz|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~73_sumout\ = SUM(( \tim_1Hz|counter\(16) ) + ( GND ) + ( \tim_1Hz|Add0~78\ ))
-- \tim_1Hz|Add0~74\ = CARRY(( \tim_1Hz|counter\(16) ) + ( GND ) + ( \tim_1Hz|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_counter\(16),
	cin => \tim_1Hz|Add0~78\,
	sumout => \tim_1Hz|Add0~73_sumout\,
	cout => \tim_1Hz|Add0~74\);

-- Location: FF_X88_Y8_N19
\tim_1Hz|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~73_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(16));

-- Location: LABCELL_X88_Y8_N21
\tim_1Hz|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~9_sumout\ = SUM(( \tim_1Hz|counter\(17) ) + ( GND ) + ( \tim_1Hz|Add0~74\ ))
-- \tim_1Hz|Add0~10\ = CARRY(( \tim_1Hz|counter\(17) ) + ( GND ) + ( \tim_1Hz|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(17),
	cin => \tim_1Hz|Add0~74\,
	sumout => \tim_1Hz|Add0~9_sumout\,
	cout => \tim_1Hz|Add0~10\);

-- Location: FF_X88_Y8_N23
\tim_1Hz|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~9_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(17));

-- Location: LABCELL_X88_Y8_N24
\tim_1Hz|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~5_sumout\ = SUM(( \tim_1Hz|counter\(18) ) + ( GND ) + ( \tim_1Hz|Add0~10\ ))
-- \tim_1Hz|Add0~6\ = CARRY(( \tim_1Hz|counter\(18) ) + ( GND ) + ( \tim_1Hz|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_counter\(18),
	cin => \tim_1Hz|Add0~10\,
	sumout => \tim_1Hz|Add0~5_sumout\,
	cout => \tim_1Hz|Add0~6\);

-- Location: FF_X88_Y8_N25
\tim_1Hz|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~5_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(18));

-- Location: LABCELL_X88_Y8_N27
\tim_1Hz|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~1_sumout\ = SUM(( \tim_1Hz|counter\(19) ) + ( GND ) + ( \tim_1Hz|Add0~6\ ))
-- \tim_1Hz|Add0~2\ = CARRY(( \tim_1Hz|counter\(19) ) + ( GND ) + ( \tim_1Hz|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(19),
	cin => \tim_1Hz|Add0~6\,
	sumout => \tim_1Hz|Add0~1_sumout\,
	cout => \tim_1Hz|Add0~2\);

-- Location: FF_X88_Y8_N29
\tim_1Hz|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~1_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(19));

-- Location: FF_X88_Y9_N32
\tim_1Hz|counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~13_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter[0]~DUPLICATE_q\);

-- Location: FF_X88_Y8_N32
\tim_1Hz|counter[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~29_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter[20]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y8_N30
\tim_1Hz|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~29_sumout\ = SUM(( \tim_1Hz|counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \tim_1Hz|Add0~2\ ))
-- \tim_1Hz|Add0~30\ = CARRY(( \tim_1Hz|counter[20]~DUPLICATE_q\ ) + ( GND ) + ( \tim_1Hz|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_counter[20]~DUPLICATE_q\,
	cin => \tim_1Hz|Add0~2\,
	sumout => \tim_1Hz|Add0~29_sumout\,
	cout => \tim_1Hz|Add0~30\);

-- Location: FF_X88_Y8_N31
\tim_1Hz|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~29_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(20));

-- Location: LABCELL_X88_Y9_N0
\tim_1Hz|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~0_combout\ = ( !\tim_1Hz|counter\(9) & ( \tim_1Hz|counter\(20) & ( (!\tim_1Hz|counter\(8) & (!\tim_1Hz|counter[0]~DUPLICATE_q\ & !\tim_1Hz|counter\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(8),
	datab => \tim_1Hz|ALT_INV_counter[0]~DUPLICATE_q\,
	datac => \tim_1Hz|ALT_INV_counter\(10),
	datae => \tim_1Hz|ALT_INV_counter\(9),
	dataf => \tim_1Hz|ALT_INV_counter\(20),
	combout => \tim_1Hz|Equal0~0_combout\);

-- Location: FF_X88_Y9_N50
\tim_1Hz|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~53_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(6));

-- Location: FF_X88_Y8_N38
\tim_1Hz|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~49_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(22));

-- Location: LABCELL_X88_Y8_N33
\tim_1Hz|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~97_sumout\ = SUM(( \tim_1Hz|counter\(21) ) + ( GND ) + ( \tim_1Hz|Add0~30\ ))
-- \tim_1Hz|Add0~98\ = CARRY(( \tim_1Hz|counter\(21) ) + ( GND ) + ( \tim_1Hz|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(21),
	cin => \tim_1Hz|Add0~30\,
	sumout => \tim_1Hz|Add0~97_sumout\,
	cout => \tim_1Hz|Add0~98\);

-- Location: FF_X88_Y9_N25
\tim_1Hz|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \tim_1Hz|Add0~97_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(21));

-- Location: LABCELL_X88_Y8_N36
\tim_1Hz|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~49_sumout\ = SUM(( \tim_1Hz|counter\(22) ) + ( GND ) + ( \tim_1Hz|Add0~98\ ))
-- \tim_1Hz|Add0~50\ = CARRY(( \tim_1Hz|counter\(22) ) + ( GND ) + ( \tim_1Hz|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(22),
	cin => \tim_1Hz|Add0~98\,
	sumout => \tim_1Hz|Add0~49_sumout\,
	cout => \tim_1Hz|Add0~50\);

-- Location: FF_X88_Y8_N37
\tim_1Hz|counter[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~49_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter[22]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N15
\tim_1Hz|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~1_combout\ = ( \tim_1Hz|counter\(11) & ( (\tim_1Hz|counter\(6) & (\tim_1Hz|counter[22]~DUPLICATE_q\ & !\tim_1Hz|counter\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(6),
	datac => \tim_1Hz|ALT_INV_counter[22]~DUPLICATE_q\,
	datad => \tim_1Hz|ALT_INV_counter\(2),
	dataf => \tim_1Hz|ALT_INV_counter\(11),
	combout => \tim_1Hz|Equal0~1_combout\);

-- Location: LABCELL_X88_Y8_N39
\tim_1Hz|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~65_sumout\ = SUM(( \tim_1Hz|counter\(23) ) + ( GND ) + ( \tim_1Hz|Add0~50\ ))
-- \tim_1Hz|Add0~66\ = CARRY(( \tim_1Hz|counter\(23) ) + ( GND ) + ( \tim_1Hz|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(23),
	cin => \tim_1Hz|Add0~50\,
	sumout => \tim_1Hz|Add0~65_sumout\,
	cout => \tim_1Hz|Add0~66\);

-- Location: FF_X88_Y8_N40
\tim_1Hz|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~65_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(23));

-- Location: LABCELL_X88_Y8_N42
\tim_1Hz|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~37_sumout\ = SUM(( \tim_1Hz|counter\(24) ) + ( GND ) + ( \tim_1Hz|Add0~66\ ))
-- \tim_1Hz|Add0~38\ = CARRY(( \tim_1Hz|counter\(24) ) + ( GND ) + ( \tim_1Hz|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_counter\(24),
	cin => \tim_1Hz|Add0~66\,
	sumout => \tim_1Hz|Add0~37_sumout\,
	cout => \tim_1Hz|Add0~38\);

-- Location: FF_X88_Y8_N44
\tim_1Hz|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~37_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(24));

-- Location: FF_X88_Y9_N34
\tim_1Hz|counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~33_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter[1]~DUPLICATE_q\);

-- Location: FF_X88_Y9_N41
\tim_1Hz|counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~89_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y9_N21
\tim_1Hz|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~3_combout\ = ( !\tim_1Hz|counter\(5) & ( !\tim_1Hz|counter\(7) & ( (\tim_1Hz|counter\(21) & !\tim_1Hz|counter[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_counter\(21),
	datac => \tim_1Hz|ALT_INV_counter[3]~DUPLICATE_q\,
	datae => \tim_1Hz|ALT_INV_counter\(5),
	dataf => \tim_1Hz|ALT_INV_counter\(7),
	combout => \tim_1Hz|Equal0~3_combout\);

-- Location: FF_X88_Y9_N43
\tim_1Hz|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~61_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(4));

-- Location: LABCELL_X88_Y8_N45
\tim_1Hz|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Add0~69_sumout\ = SUM(( \tim_1Hz|counter\(25) ) + ( GND ) + ( \tim_1Hz|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_counter\(25),
	cin => \tim_1Hz|Add0~38\,
	sumout => \tim_1Hz|Add0~69_sumout\);

-- Location: FF_X88_Y8_N46
\tim_1Hz|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \tim_1Hz|Add0~69_sumout\,
	sclr => \tim_1Hz|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tim_1Hz|counter\(25));

-- Location: LABCELL_X88_Y8_N48
\tim_1Hz|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~2_combout\ = ( !\tim_1Hz|counter\(25) & ( !\tim_1Hz|counter\(15) & ( (\tim_1Hz|counter\(14) & (\tim_1Hz|counter\(13) & \tim_1Hz|counter\(16))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_counter\(14),
	datac => \tim_1Hz|ALT_INV_counter\(13),
	datad => \tim_1Hz|ALT_INV_counter\(16),
	datae => \tim_1Hz|ALT_INV_counter\(25),
	dataf => \tim_1Hz|ALT_INV_counter\(15),
	combout => \tim_1Hz|Equal0~2_combout\);

-- Location: LABCELL_X88_Y9_N6
\tim_1Hz|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~4_combout\ = ( \tim_1Hz|Equal0~2_combout\ & ( (\tim_1Hz|Equal0~3_combout\ & (\tim_1Hz|counter\(12) & (!\tim_1Hz|counter\(4) & !\tim_1Hz|counter\(23)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_Equal0~3_combout\,
	datab => \tim_1Hz|ALT_INV_counter\(12),
	datac => \tim_1Hz|ALT_INV_counter\(4),
	datad => \tim_1Hz|ALT_INV_counter\(23),
	dataf => \tim_1Hz|ALT_INV_Equal0~2_combout\,
	combout => \tim_1Hz|Equal0~4_combout\);

-- Location: LABCELL_X88_Y9_N12
\tim_1Hz|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~5_combout\ = ( \tim_1Hz|Equal0~4_combout\ & ( (\tim_1Hz|Equal0~1_combout\ & (\tim_1Hz|counter\(24) & !\tim_1Hz|counter[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \tim_1Hz|ALT_INV_Equal0~1_combout\,
	datac => \tim_1Hz|ALT_INV_counter\(24),
	datad => \tim_1Hz|ALT_INV_counter[1]~DUPLICATE_q\,
	dataf => \tim_1Hz|ALT_INV_Equal0~4_combout\,
	combout => \tim_1Hz|Equal0~5_combout\);

-- Location: LABCELL_X88_Y9_N27
\tim_1Hz|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|Equal0~6_combout\ = ( \tim_1Hz|Equal0~0_combout\ & ( \tim_1Hz|Equal0~5_combout\ & ( (\tim_1Hz|counter\(19) & (\tim_1Hz|counter\(18) & !\tim_1Hz|counter\(17))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tim_1Hz|ALT_INV_counter\(19),
	datac => \tim_1Hz|ALT_INV_counter\(18),
	datad => \tim_1Hz|ALT_INV_counter\(17),
	datae => \tim_1Hz|ALT_INV_Equal0~0_combout\,
	dataf => \tim_1Hz|ALT_INV_Equal0~5_combout\,
	combout => \tim_1Hz|Equal0~6_combout\);

-- Location: LABCELL_X88_Y9_N9
\tim_1Hz|clock_signal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \tim_1Hz|clock_signal~0_combout\ = !\tim_1Hz|Equal0~6_combout\ $ (!\tim_1Hz|clock_signal~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \tim_1Hz|ALT_INV_Equal0~6_combout\,
	datad => \tim_1Hz|ALT_INV_clock_signal~q\,
	combout => \tim_1Hz|clock_signal~0_combout\);

-- Location: FF_X88_Y9_N10
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

-- Location: FF_X79_Y5_N53
\main_fsm|lcd_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector65~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|lcd_enable~q\);

-- Location: LABCELL_X79_Y5_N42
\main_fsm|Selector65~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector65~0_combout\ = ( \main_fsm|WideNor1~combout\ & ( ((\main_fsm|state.PRSD_MSG~DUPLICATE_q\) # (\main_fsm|lcd_enable~q\)) # (\main_fsm|state.DISPL_CLEAR~q\) ) ) # ( !\main_fsm|WideNor1~combout\ & ( (((!\main_fsm|state.START~q\ & 
-- \main_fsm|lcd_enable~q\)) # (\main_fsm|state.PRSD_MSG~DUPLICATE_q\)) # (\main_fsm|state.DISPL_CLEAR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110111111111010111011111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_state.DISPL_CLEAR~q\,
	datab => \main_fsm|ALT_INV_state.START~q\,
	datac => \main_fsm|ALT_INV_lcd_enable~q\,
	datad => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	dataf => \main_fsm|ALT_INV_WideNor1~combout\,
	combout => \main_fsm|Selector65~0_combout\);

-- Location: FF_X79_Y5_N52
\main_fsm|lcd_enable~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector65~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|lcd_enable~DUPLICATE_q\);

-- Location: FF_X83_Y5_N29
\lcd_controller|clk_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~57_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(30));

-- Location: LABCELL_X83_Y6_N0
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

-- Location: FF_X83_Y6_N1
\lcd_controller|clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~125_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(0));

-- Location: LABCELL_X83_Y6_N3
\lcd_controller|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~121_sumout\ = SUM(( \lcd_controller|clk_count\(1) ) + ( GND ) + ( \lcd_controller|Add0~126\ ))
-- \lcd_controller|Add0~122\ = CARRY(( \lcd_controller|clk_count\(1) ) + ( GND ) + ( \lcd_controller|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(1),
	cin => \lcd_controller|Add0~126\,
	sumout => \lcd_controller|Add0~121_sumout\,
	cout => \lcd_controller|Add0~122\);

-- Location: FF_X83_Y6_N5
\lcd_controller|clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~121_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(1));

-- Location: LABCELL_X83_Y6_N6
\lcd_controller|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~117_sumout\ = SUM(( \lcd_controller|clk_count\(2) ) + ( GND ) + ( \lcd_controller|Add0~122\ ))
-- \lcd_controller|Add0~118\ = CARRY(( \lcd_controller|clk_count\(2) ) + ( GND ) + ( \lcd_controller|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(2),
	cin => \lcd_controller|Add0~122\,
	sumout => \lcd_controller|Add0~117_sumout\,
	cout => \lcd_controller|Add0~118\);

-- Location: FF_X83_Y6_N8
\lcd_controller|clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~117_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(2));

-- Location: LABCELL_X83_Y6_N9
\lcd_controller|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~113_sumout\ = SUM(( \lcd_controller|clk_count\(3) ) + ( GND ) + ( \lcd_controller|Add0~118\ ))
-- \lcd_controller|Add0~114\ = CARRY(( \lcd_controller|clk_count\(3) ) + ( GND ) + ( \lcd_controller|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(3),
	cin => \lcd_controller|Add0~118\,
	sumout => \lcd_controller|Add0~113_sumout\,
	cout => \lcd_controller|Add0~114\);

-- Location: FF_X83_Y6_N11
\lcd_controller|clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~113_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(3));

-- Location: LABCELL_X83_Y6_N12
\lcd_controller|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~105_sumout\ = SUM(( \lcd_controller|clk_count\(4) ) + ( GND ) + ( \lcd_controller|Add0~114\ ))
-- \lcd_controller|Add0~106\ = CARRY(( \lcd_controller|clk_count\(4) ) + ( GND ) + ( \lcd_controller|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(4),
	cin => \lcd_controller|Add0~114\,
	sumout => \lcd_controller|Add0~105_sumout\,
	cout => \lcd_controller|Add0~106\);

-- Location: FF_X83_Y6_N14
\lcd_controller|clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~105_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(4));

-- Location: LABCELL_X83_Y6_N15
\lcd_controller|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~109_sumout\ = SUM(( \lcd_controller|clk_count\(5) ) + ( GND ) + ( \lcd_controller|Add0~106\ ))
-- \lcd_controller|Add0~110\ = CARRY(( \lcd_controller|clk_count\(5) ) + ( GND ) + ( \lcd_controller|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(5),
	cin => \lcd_controller|Add0~106\,
	sumout => \lcd_controller|Add0~109_sumout\,
	cout => \lcd_controller|Add0~110\);

-- Location: FF_X83_Y6_N17
\lcd_controller|clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~109_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(5));

-- Location: LABCELL_X83_Y6_N18
\lcd_controller|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~101_sumout\ = SUM(( \lcd_controller|clk_count\(6) ) + ( GND ) + ( \lcd_controller|Add0~110\ ))
-- \lcd_controller|Add0~102\ = CARRY(( \lcd_controller|clk_count\(6) ) + ( GND ) + ( \lcd_controller|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(6),
	cin => \lcd_controller|Add0~110\,
	sumout => \lcd_controller|Add0~101_sumout\,
	cout => \lcd_controller|Add0~102\);

-- Location: FF_X83_Y6_N20
\lcd_controller|clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~101_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(6));

-- Location: LABCELL_X83_Y6_N21
\lcd_controller|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~93_sumout\ = SUM(( \lcd_controller|clk_count\(7) ) + ( GND ) + ( \lcd_controller|Add0~102\ ))
-- \lcd_controller|Add0~94\ = CARRY(( \lcd_controller|clk_count\(7) ) + ( GND ) + ( \lcd_controller|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(7),
	cin => \lcd_controller|Add0~102\,
	sumout => \lcd_controller|Add0~93_sumout\,
	cout => \lcd_controller|Add0~94\);

-- Location: FF_X83_Y6_N23
\lcd_controller|clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~93_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(7));

-- Location: LABCELL_X83_Y6_N24
\lcd_controller|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~97_sumout\ = SUM(( \lcd_controller|clk_count\(8) ) + ( GND ) + ( \lcd_controller|Add0~94\ ))
-- \lcd_controller|Add0~98\ = CARRY(( \lcd_controller|clk_count\(8) ) + ( GND ) + ( \lcd_controller|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(8),
	cin => \lcd_controller|Add0~94\,
	sumout => \lcd_controller|Add0~97_sumout\,
	cout => \lcd_controller|Add0~98\);

-- Location: FF_X83_Y6_N26
\lcd_controller|clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~97_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(8));

-- Location: LABCELL_X83_Y6_N27
\lcd_controller|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~85_sumout\ = SUM(( \lcd_controller|clk_count\(9) ) + ( GND ) + ( \lcd_controller|Add0~98\ ))
-- \lcd_controller|Add0~86\ = CARRY(( \lcd_controller|clk_count\(9) ) + ( GND ) + ( \lcd_controller|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(9),
	cin => \lcd_controller|Add0~98\,
	sumout => \lcd_controller|Add0~85_sumout\,
	cout => \lcd_controller|Add0~86\);

-- Location: FF_X83_Y6_N29
\lcd_controller|clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~85_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(9));

-- Location: LABCELL_X83_Y6_N30
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

-- Location: FF_X83_Y6_N32
\lcd_controller|clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~89_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(10));

-- Location: LABCELL_X83_Y6_N33
\lcd_controller|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~77_sumout\ = SUM(( \lcd_controller|clk_count\(11) ) + ( GND ) + ( \lcd_controller|Add0~90\ ))
-- \lcd_controller|Add0~78\ = CARRY(( \lcd_controller|clk_count\(11) ) + ( GND ) + ( \lcd_controller|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(11),
	cin => \lcd_controller|Add0~90\,
	sumout => \lcd_controller|Add0~77_sumout\,
	cout => \lcd_controller|Add0~78\);

-- Location: FF_X83_Y6_N35
\lcd_controller|clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~77_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(11));

-- Location: LABCELL_X83_Y6_N36
\lcd_controller|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~81_sumout\ = SUM(( \lcd_controller|clk_count\(12) ) + ( GND ) + ( \lcd_controller|Add0~78\ ))
-- \lcd_controller|Add0~82\ = CARRY(( \lcd_controller|clk_count\(12) ) + ( GND ) + ( \lcd_controller|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(12),
	cin => \lcd_controller|Add0~78\,
	sumout => \lcd_controller|Add0~81_sumout\,
	cout => \lcd_controller|Add0~82\);

-- Location: FF_X83_Y6_N38
\lcd_controller|clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~81_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(12));

-- Location: LABCELL_X83_Y6_N39
\lcd_controller|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~69_sumout\ = SUM(( \lcd_controller|clk_count\(13) ) + ( GND ) + ( \lcd_controller|Add0~82\ ))
-- \lcd_controller|Add0~70\ = CARRY(( \lcd_controller|clk_count\(13) ) + ( GND ) + ( \lcd_controller|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(13),
	cin => \lcd_controller|Add0~82\,
	sumout => \lcd_controller|Add0~69_sumout\,
	cout => \lcd_controller|Add0~70\);

-- Location: FF_X83_Y6_N41
\lcd_controller|clk_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~69_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(13));

-- Location: LABCELL_X83_Y6_N42
\lcd_controller|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~73_sumout\ = SUM(( \lcd_controller|clk_count\(14) ) + ( GND ) + ( \lcd_controller|Add0~70\ ))
-- \lcd_controller|Add0~74\ = CARRY(( \lcd_controller|clk_count\(14) ) + ( GND ) + ( \lcd_controller|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(14),
	cin => \lcd_controller|Add0~70\,
	sumout => \lcd_controller|Add0~73_sumout\,
	cout => \lcd_controller|Add0~74\);

-- Location: FF_X83_Y6_N44
\lcd_controller|clk_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~73_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(14));

-- Location: LABCELL_X83_Y6_N45
\lcd_controller|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~61_sumout\ = SUM(( \lcd_controller|clk_count\(15) ) + ( GND ) + ( \lcd_controller|Add0~74\ ))
-- \lcd_controller|Add0~62\ = CARRY(( \lcd_controller|clk_count\(15) ) + ( GND ) + ( \lcd_controller|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(15),
	cin => \lcd_controller|Add0~74\,
	sumout => \lcd_controller|Add0~61_sumout\,
	cout => \lcd_controller|Add0~62\);

-- Location: FF_X83_Y6_N47
\lcd_controller|clk_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~61_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(15));

-- Location: LABCELL_X83_Y6_N48
\lcd_controller|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~65_sumout\ = SUM(( \lcd_controller|clk_count\(16) ) + ( GND ) + ( \lcd_controller|Add0~62\ ))
-- \lcd_controller|Add0~66\ = CARRY(( \lcd_controller|clk_count\(16) ) + ( GND ) + ( \lcd_controller|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(16),
	cin => \lcd_controller|Add0~62\,
	sumout => \lcd_controller|Add0~65_sumout\,
	cout => \lcd_controller|Add0~66\);

-- Location: FF_X83_Y6_N50
\lcd_controller|clk_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~65_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(16));

-- Location: LABCELL_X83_Y6_N51
\lcd_controller|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~33_sumout\ = SUM(( \lcd_controller|clk_count\(17) ) + ( GND ) + ( \lcd_controller|Add0~66\ ))
-- \lcd_controller|Add0~34\ = CARRY(( \lcd_controller|clk_count\(17) ) + ( GND ) + ( \lcd_controller|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(17),
	cin => \lcd_controller|Add0~66\,
	sumout => \lcd_controller|Add0~33_sumout\,
	cout => \lcd_controller|Add0~34\);

-- Location: FF_X83_Y6_N53
\lcd_controller|clk_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~33_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(17));

-- Location: LABCELL_X83_Y6_N54
\lcd_controller|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~37_sumout\ = SUM(( \lcd_controller|clk_count\(18) ) + ( GND ) + ( \lcd_controller|Add0~34\ ))
-- \lcd_controller|Add0~38\ = CARRY(( \lcd_controller|clk_count\(18) ) + ( GND ) + ( \lcd_controller|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(18),
	cin => \lcd_controller|Add0~34\,
	sumout => \lcd_controller|Add0~37_sumout\,
	cout => \lcd_controller|Add0~38\);

-- Location: FF_X83_Y6_N56
\lcd_controller|clk_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~37_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(18));

-- Location: LABCELL_X83_Y6_N57
\lcd_controller|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~41_sumout\ = SUM(( \lcd_controller|clk_count\(19) ) + ( GND ) + ( \lcd_controller|Add0~38\ ))
-- \lcd_controller|Add0~42\ = CARRY(( \lcd_controller|clk_count\(19) ) + ( GND ) + ( \lcd_controller|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(19),
	cin => \lcd_controller|Add0~38\,
	sumout => \lcd_controller|Add0~41_sumout\,
	cout => \lcd_controller|Add0~42\);

-- Location: FF_X83_Y6_N59
\lcd_controller|clk_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~41_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(19));

-- Location: LABCELL_X83_Y5_N0
\lcd_controller|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~45_sumout\ = SUM(( \lcd_controller|clk_count[20]~DUPLICATE_q\ ) + ( GND ) + ( \lcd_controller|Add0~42\ ))
-- \lcd_controller|Add0~46\ = CARRY(( \lcd_controller|clk_count[20]~DUPLICATE_q\ ) + ( GND ) + ( \lcd_controller|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count[20]~DUPLICATE_q\,
	cin => \lcd_controller|Add0~42\,
	sumout => \lcd_controller|Add0~45_sumout\,
	cout => \lcd_controller|Add0~46\);

-- Location: LABCELL_X83_Y5_N3
\lcd_controller|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~49_sumout\ = SUM(( \lcd_controller|clk_count[21]~DUPLICATE_q\ ) + ( GND ) + ( \lcd_controller|Add0~46\ ))
-- \lcd_controller|Add0~50\ = CARRY(( \lcd_controller|clk_count[21]~DUPLICATE_q\ ) + ( GND ) + ( \lcd_controller|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count[21]~DUPLICATE_q\,
	cin => \lcd_controller|Add0~46\,
	sumout => \lcd_controller|Add0~49_sumout\,
	cout => \lcd_controller|Add0~50\);

-- Location: FF_X83_Y5_N38
\lcd_controller|clk_count[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~49_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count[21]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y5_N6
\lcd_controller|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~53_sumout\ = SUM(( \lcd_controller|clk_count\(22) ) + ( GND ) + ( \lcd_controller|Add0~50\ ))
-- \lcd_controller|Add0~54\ = CARRY(( \lcd_controller|clk_count\(22) ) + ( GND ) + ( \lcd_controller|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(22),
	cin => \lcd_controller|Add0~50\,
	sumout => \lcd_controller|Add0~53_sumout\,
	cout => \lcd_controller|Add0~54\);

-- Location: FF_X83_Y5_N55
\lcd_controller|clk_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~53_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(22));

-- Location: LABCELL_X83_Y5_N9
\lcd_controller|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~13_sumout\ = SUM(( \lcd_controller|clk_count\(23) ) + ( GND ) + ( \lcd_controller|Add0~54\ ))
-- \lcd_controller|Add0~14\ = CARRY(( \lcd_controller|clk_count\(23) ) + ( GND ) + ( \lcd_controller|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(23),
	cin => \lcd_controller|Add0~54\,
	sumout => \lcd_controller|Add0~13_sumout\,
	cout => \lcd_controller|Add0~14\);

-- Location: FF_X83_Y5_N53
\lcd_controller|clk_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~13_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(23));

-- Location: LABCELL_X83_Y5_N12
\lcd_controller|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~17_sumout\ = SUM(( \lcd_controller|clk_count\(24) ) + ( GND ) + ( \lcd_controller|Add0~14\ ))
-- \lcd_controller|Add0~18\ = CARRY(( \lcd_controller|clk_count\(24) ) + ( GND ) + ( \lcd_controller|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(24),
	cin => \lcd_controller|Add0~14\,
	sumout => \lcd_controller|Add0~17_sumout\,
	cout => \lcd_controller|Add0~18\);

-- Location: FF_X83_Y5_N59
\lcd_controller|clk_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~17_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(24));

-- Location: LABCELL_X83_Y5_N15
\lcd_controller|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~21_sumout\ = SUM(( \lcd_controller|clk_count\(25) ) + ( GND ) + ( \lcd_controller|Add0~18\ ))
-- \lcd_controller|Add0~22\ = CARRY(( \lcd_controller|clk_count\(25) ) + ( GND ) + ( \lcd_controller|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(25),
	cin => \lcd_controller|Add0~18\,
	sumout => \lcd_controller|Add0~21_sumout\,
	cout => \lcd_controller|Add0~22\);

-- Location: FF_X83_Y5_N41
\lcd_controller|clk_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~21_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(25));

-- Location: LABCELL_X83_Y5_N18
\lcd_controller|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~25_sumout\ = SUM(( \lcd_controller|clk_count\(26) ) + ( GND ) + ( \lcd_controller|Add0~22\ ))
-- \lcd_controller|Add0~26\ = CARRY(( \lcd_controller|clk_count\(26) ) + ( GND ) + ( \lcd_controller|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(26),
	cin => \lcd_controller|Add0~22\,
	sumout => \lcd_controller|Add0~25_sumout\,
	cout => \lcd_controller|Add0~26\);

-- Location: FF_X83_Y5_N17
\lcd_controller|clk_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~25_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(26));

-- Location: LABCELL_X83_Y5_N21
\lcd_controller|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~29_sumout\ = SUM(( \lcd_controller|clk_count\(27) ) + ( GND ) + ( \lcd_controller|Add0~26\ ))
-- \lcd_controller|Add0~30\ = CARRY(( \lcd_controller|clk_count\(27) ) + ( GND ) + ( \lcd_controller|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(27),
	cin => \lcd_controller|Add0~26\,
	sumout => \lcd_controller|Add0~29_sumout\,
	cout => \lcd_controller|Add0~30\);

-- Location: FF_X83_Y5_N47
\lcd_controller|clk_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~29_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(27));

-- Location: LABCELL_X83_Y5_N24
\lcd_controller|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~5_sumout\ = SUM(( \lcd_controller|clk_count\(28) ) + ( GND ) + ( \lcd_controller|Add0~30\ ))
-- \lcd_controller|Add0~6\ = CARRY(( \lcd_controller|clk_count\(28) ) + ( GND ) + ( \lcd_controller|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(28),
	cin => \lcd_controller|Add0~30\,
	sumout => \lcd_controller|Add0~5_sumout\,
	cout => \lcd_controller|Add0~6\);

-- Location: FF_X83_Y5_N5
\lcd_controller|clk_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~5_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(28));

-- Location: LABCELL_X83_Y5_N27
\lcd_controller|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~9_sumout\ = SUM(( \lcd_controller|clk_count\(29) ) + ( GND ) + ( \lcd_controller|Add0~6\ ))
-- \lcd_controller|Add0~10\ = CARRY(( \lcd_controller|clk_count\(29) ) + ( GND ) + ( \lcd_controller|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(29),
	cin => \lcd_controller|Add0~6\,
	sumout => \lcd_controller|Add0~9_sumout\,
	cout => \lcd_controller|Add0~10\);

-- Location: FF_X83_Y5_N11
\lcd_controller|clk_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~9_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(29));

-- Location: LABCELL_X83_Y5_N30
\lcd_controller|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~57_sumout\ = SUM(( \lcd_controller|clk_count\(30) ) + ( GND ) + ( \lcd_controller|Add0~10\ ))
-- \lcd_controller|Add0~58\ = CARRY(( \lcd_controller|clk_count\(30) ) + ( GND ) + ( \lcd_controller|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_clk_count\(30),
	cin => \lcd_controller|Add0~10\,
	sumout => \lcd_controller|Add0~57_sumout\,
	cout => \lcd_controller|Add0~58\);

-- Location: MLABCELL_X82_Y5_N18
\lcd_controller|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~5_combout\ = ( !\lcd_controller|clk_count\(26) & ( !\lcd_controller|clk_count\(25) & ( (!\lcd_controller|clk_count\(23) & (!\lcd_controller|clk_count\(22) & !\lcd_controller|clk_count\(24))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(23),
	datab => \lcd_controller|ALT_INV_clk_count\(22),
	datac => \lcd_controller|ALT_INV_clk_count\(24),
	datae => \lcd_controller|ALT_INV_clk_count\(26),
	dataf => \lcd_controller|ALT_INV_clk_count\(25),
	combout => \lcd_controller|LessThan0~5_combout\);

-- Location: FF_X83_Y5_N49
\lcd_controller|clk_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~45_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(20));

-- Location: MLABCELL_X82_Y4_N15
\lcd_controller|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~3_combout\ = ( !\lcd_controller|clk_count\(19) & ( !\lcd_controller|clk_count\(20) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(20),
	dataf => \lcd_controller|ALT_INV_clk_count\(19),
	combout => \lcd_controller|LessThan0~3_combout\);

-- Location: FF_X83_Y5_N37
\lcd_controller|clk_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~49_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(21));

-- Location: MLABCELL_X82_Y4_N27
\lcd_controller|LessThan9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~0_combout\ = ( !\lcd_controller|clk_count\(18) & ( (!\lcd_controller|clk_count\(12) & (!\lcd_controller|clk_count\(17) & !\lcd_controller|clk_count\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(12),
	datac => \lcd_controller|ALT_INV_clk_count\(17),
	datad => \lcd_controller|ALT_INV_clk_count\(13),
	dataf => \lcd_controller|ALT_INV_clk_count\(18),
	combout => \lcd_controller|LessThan9~0_combout\);

-- Location: MLABCELL_X82_Y6_N18
\lcd_controller|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~1_combout\ = ( !\lcd_controller|clk_count\(16) & ( (!\lcd_controller|clk_count\(15) & !\lcd_controller|clk_count\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(15),
	datad => \lcd_controller|ALT_INV_clk_count\(14),
	dataf => \lcd_controller|ALT_INV_clk_count\(16),
	combout => \lcd_controller|LessThan0~1_combout\);

-- Location: MLABCELL_X82_Y4_N0
\lcd_controller|LessThan9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~1_combout\ = ( \lcd_controller|LessThan0~1_combout\ & ( (\lcd_controller|LessThan0~5_combout\ & (\lcd_controller|LessThan0~3_combout\ & (!\lcd_controller|clk_count\(21) & \lcd_controller|LessThan9~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan0~5_combout\,
	datab => \lcd_controller|ALT_INV_LessThan0~3_combout\,
	datac => \lcd_controller|ALT_INV_clk_count\(21),
	datad => \lcd_controller|ALT_INV_LessThan9~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan0~1_combout\,
	combout => \lcd_controller|LessThan9~1_combout\);

-- Location: LABCELL_X83_Y5_N33
\lcd_controller|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Add0~1_sumout\ = SUM(( \lcd_controller|clk_count\(31) ) + ( GND ) + ( \lcd_controller|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(31),
	cin => \lcd_controller|Add0~58\,
	sumout => \lcd_controller|Add0~1_sumout\);

-- Location: FF_X83_Y5_N35
\lcd_controller|clk_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~1_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count\(31));

-- Location: MLABCELL_X82_Y4_N3
\lcd_controller|LessThan9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~3_combout\ = ( \lcd_controller|clk_count\(6) & ( (\lcd_controller|clk_count\(7) & \lcd_controller|clk_count\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(7),
	datad => \lcd_controller|ALT_INV_clk_count\(8),
	dataf => \lcd_controller|ALT_INV_clk_count\(6),
	combout => \lcd_controller|LessThan9~3_combout\);

-- Location: MLABCELL_X84_Y4_N42
\lcd_controller|LessThan9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~2_combout\ = ( !\lcd_controller|clk_count\(3) & ( (!\lcd_controller|clk_count\(2) & (!\lcd_controller|clk_count\(4) & !\lcd_controller|clk_count\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(2),
	datac => \lcd_controller|ALT_INV_clk_count\(4),
	datad => \lcd_controller|ALT_INV_clk_count\(5),
	dataf => \lcd_controller|ALT_INV_clk_count\(3),
	combout => \lcd_controller|LessThan9~2_combout\);

-- Location: MLABCELL_X82_Y4_N30
\lcd_controller|LessThan9~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~4_combout\ = ( \lcd_controller|clk_count\(11) & ( (((\lcd_controller|LessThan9~3_combout\ & !\lcd_controller|LessThan9~2_combout\)) # (\lcd_controller|clk_count\(10))) # (\lcd_controller|clk_count\(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111011101110111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(9),
	datab => \lcd_controller|ALT_INV_clk_count\(10),
	datac => \lcd_controller|ALT_INV_LessThan9~3_combout\,
	datad => \lcd_controller|ALT_INV_LessThan9~2_combout\,
	dataf => \lcd_controller|ALT_INV_clk_count\(11),
	combout => \lcd_controller|LessThan9~4_combout\);

-- Location: MLABCELL_X82_Y4_N24
\lcd_controller|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~6_combout\ = ( !\lcd_controller|clk_count\(27) & ( (!\lcd_controller|clk_count\(29) & (!\lcd_controller|clk_count\(28) & !\lcd_controller|clk_count\(30))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(29),
	datac => \lcd_controller|ALT_INV_clk_count\(28),
	datad => \lcd_controller|ALT_INV_clk_count\(30),
	dataf => \lcd_controller|ALT_INV_clk_count\(27),
	combout => \lcd_controller|LessThan0~6_combout\);

-- Location: MLABCELL_X82_Y4_N18
\lcd_controller|LessThan9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan9~5_combout\ = ( !\lcd_controller|LessThan9~4_combout\ & ( \lcd_controller|LessThan0~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_LessThan0~6_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan9~4_combout\,
	combout => \lcd_controller|LessThan9~5_combout\);

-- Location: MLABCELL_X84_Y4_N24
\lcd_controller|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector35~0_combout\ = ( \lcd_controller|state.send~q\ & ( \lcd_controller|clk_count\(31) ) ) # ( !\lcd_controller|state.send~q\ & ( \lcd_controller|clk_count\(31) & ( (\main_fsm|lcd_enable~DUPLICATE_q\ & \lcd_controller|state.ready~q\) ) 
-- ) ) # ( \lcd_controller|state.send~q\ & ( !\lcd_controller|clk_count\(31) & ( (!\lcd_controller|LessThan9~1_combout\ & (\main_fsm|lcd_enable~DUPLICATE_q\ & (\lcd_controller|state.ready~q\))) # (\lcd_controller|LessThan9~1_combout\ & 
-- (((\main_fsm|lcd_enable~DUPLICATE_q\ & \lcd_controller|state.ready~q\)) # (\lcd_controller|LessThan9~5_combout\))) ) ) ) # ( !\lcd_controller|state.send~q\ & ( !\lcd_controller|clk_count\(31) & ( (\main_fsm|lcd_enable~DUPLICATE_q\ & 
-- \lcd_controller|state.ready~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110101011100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan9~1_combout\,
	datab => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	datac => \lcd_controller|ALT_INV_state.ready~q\,
	datad => \lcd_controller|ALT_INV_LessThan9~5_combout\,
	datae => \lcd_controller|ALT_INV_state.send~q\,
	dataf => \lcd_controller|ALT_INV_clk_count\(31),
	combout => \lcd_controller|Selector35~0_combout\);

-- Location: FF_X84_Y4_N26
\lcd_controller|state.send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|state.send~q\);

-- Location: MLABCELL_X82_Y4_N12
\lcd_controller|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector34~0_combout\ = ( \lcd_controller|LessThan0~6_combout\ & ( (!\lcd_controller|clk_count\(31) & (\lcd_controller|state.send~q\ & ((!\lcd_controller|LessThan9~1_combout\) # (\lcd_controller|LessThan9~4_combout\)))) ) ) # ( 
-- !\lcd_controller|LessThan0~6_combout\ & ( (!\lcd_controller|clk_count\(31) & \lcd_controller|state.send~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101000100000000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(31),
	datab => \lcd_controller|ALT_INV_LessThan9~4_combout\,
	datac => \lcd_controller|ALT_INV_LessThan9~1_combout\,
	datad => \lcd_controller|ALT_INV_state.send~q\,
	dataf => \lcd_controller|ALT_INV_LessThan0~6_combout\,
	combout => \lcd_controller|Selector34~0_combout\);

-- Location: MLABCELL_X82_Y6_N21
\lcd_controller|LessThan3~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~11_combout\ = ( \lcd_controller|Add0~77_sumout\ & ( (\lcd_controller|Add0~89_sumout\ & (((\lcd_controller|Add0~97_sumout\ & \lcd_controller|Add0~93_sumout\)) # (\lcd_controller|Add0~85_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001110000010100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~93_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~77_sumout\,
	combout => \lcd_controller|LessThan3~11_combout\);

-- Location: MLABCELL_X82_Y6_N6
\lcd_controller|LessThan3~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~10_combout\ = ( !\lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|Add0~101_sumout\ & ( (!\lcd_controller|Add0~109_sumout\) # ((!\lcd_controller|Add0~105_sumout\ & ((!\lcd_controller|Add0~113_sumout\) # 
-- (!\lcd_controller|Add0~117_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~85_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~101_sumout\,
	combout => \lcd_controller|LessThan3~10_combout\);

-- Location: MLABCELL_X84_Y6_N45
\lcd_controller|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~0_combout\ = ( !\lcd_controller|Add0~69_sumout\ & ( !\lcd_controller|Add0~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_Add0~73_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~69_sumout\,
	combout => \lcd_controller|LessThan6~0_combout\);

-- Location: MLABCELL_X84_Y5_N24
\lcd_controller|busy~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|busy~4_combout\ = ( \lcd_controller|LessThan3~10_combout\ & ( \lcd_controller|LessThan6~0_combout\ & ( (!\lcd_controller|Add0~81_sumout\ & (!\lcd_controller|Add0~61_sumout\ & !\lcd_controller|Add0~65_sumout\)) ) ) ) # ( 
-- !\lcd_controller|LessThan3~10_combout\ & ( \lcd_controller|LessThan6~0_combout\ & ( (!\lcd_controller|Add0~81_sumout\ & (!\lcd_controller|Add0~61_sumout\ & (!\lcd_controller|LessThan3~11_combout\ & !\lcd_controller|Add0~65_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~61_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~11_combout\,
	datad => \lcd_controller|ALT_INV_Add0~65_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan3~10_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan6~0_combout\,
	combout => \lcd_controller|busy~4_combout\);

-- Location: MLABCELL_X82_Y5_N45
\lcd_controller|LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~3_combout\ = ( !\lcd_controller|Add0~29_sumout\ & ( (!\lcd_controller|Add0~13_sumout\ & (!\lcd_controller|Add0~17_sumout\ & (!\lcd_controller|Add0~25_sumout\ & !\lcd_controller|Add0~21_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~13_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~17_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~25_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~21_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~29_sumout\,
	combout => \lcd_controller|LessThan3~3_combout\);

-- Location: MLABCELL_X84_Y5_N33
\lcd_controller|busy~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|busy~2_combout\ = ( !\lcd_controller|Add0~5_sumout\ & ( !\lcd_controller|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_Add0~9_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~5_sumout\,
	combout => \lcd_controller|busy~2_combout\);

-- Location: MLABCELL_X84_Y5_N48
\lcd_controller|lcd_data[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[0]~3_combout\ = ( \lcd_controller|LessThan3~3_combout\ & ( \lcd_controller|busy~2_combout\ & ( (\lcd_controller|state.initialize~q\ & (((!\lcd_controller|LessThan3~0_combout\) # (!\lcd_controller|busy~4_combout\)) # 
-- (\lcd_controller|Add0~57_sumout\))) ) ) ) # ( !\lcd_controller|LessThan3~3_combout\ & ( \lcd_controller|busy~2_combout\ & ( \lcd_controller|state.initialize~q\ ) ) ) # ( \lcd_controller|LessThan3~3_combout\ & ( !\lcd_controller|busy~2_combout\ & ( 
-- \lcd_controller|state.initialize~q\ ) ) ) # ( !\lcd_controller|LessThan3~3_combout\ & ( !\lcd_controller|busy~2_combout\ & ( \lcd_controller|state.initialize~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_state.initialize~q\,
	datac => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datad => \lcd_controller|ALT_INV_busy~4_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	dataf => \lcd_controller|ALT_INV_busy~2_combout\,
	combout => \lcd_controller|lcd_data[0]~3_combout\);

-- Location: MLABCELL_X82_Y6_N0
\lcd_controller|LessThan6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~2_combout\ = ( !\lcd_controller|Add0~93_sumout\ & ( !\lcd_controller|Add0~101_sumout\ & ( (!\lcd_controller|Add0~109_sumout\ & (!\lcd_controller|Add0~113_sumout\ & (!\lcd_controller|Add0~105_sumout\ & 
-- !\lcd_controller|Add0~117_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~93_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~101_sumout\,
	combout => \lcd_controller|LessThan6~2_combout\);

-- Location: MLABCELL_X82_Y6_N33
\lcd_controller|LessThan6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~1_combout\ = ( !\lcd_controller|Add0~89_sumout\ & ( !\lcd_controller|Add0~77_sumout\ & ( (!\lcd_controller|Add0~81_sumout\ & (!\lcd_controller|Add0~97_sumout\ & !\lcd_controller|Add0~85_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~89_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~77_sumout\,
	combout => \lcd_controller|LessThan6~1_combout\);

-- Location: MLABCELL_X82_Y6_N24
\lcd_controller|LessThan6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~3_combout\ = ( \lcd_controller|Add0~61_sumout\ & ( \lcd_controller|LessThan6~1_combout\ & ( (\lcd_controller|Add0~65_sumout\ & (((\lcd_controller|Add0~69_sumout\ & !\lcd_controller|LessThan6~2_combout\)) # 
-- (\lcd_controller|Add0~73_sumout\))) ) ) ) # ( \lcd_controller|Add0~61_sumout\ & ( !\lcd_controller|LessThan6~1_combout\ & ( (\lcd_controller|Add0~65_sumout\ & ((\lcd_controller|Add0~73_sumout\) # (\lcd_controller|Add0~69_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000111011100000000000000000000000001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~73_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan6~2_combout\,
	datad => \lcd_controller|ALT_INV_Add0~65_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~61_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan6~1_combout\,
	combout => \lcd_controller|LessThan6~3_combout\);

-- Location: MLABCELL_X84_Y6_N36
\lcd_controller|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan7~0_combout\ = ( \lcd_controller|Add0~109_sumout\ & ( \lcd_controller|Add0~97_sumout\ & ( (\lcd_controller|Add0~93_sumout\ & (\lcd_controller|Add0~101_sumout\ & (\lcd_controller|Add0~105_sumout\ & 
-- \lcd_controller|Add0~113_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~93_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~101_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~109_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~97_sumout\,
	combout => \lcd_controller|LessThan7~0_combout\);

-- Location: MLABCELL_X84_Y6_N42
\lcd_controller|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan1~0_combout\ = ( !\lcd_controller|Add0~81_sumout\ & ( (!\lcd_controller|Add0~77_sumout\ & (!\lcd_controller|Add0~89_sumout\ & !\lcd_controller|Add0~85_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~85_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~81_sumout\,
	combout => \lcd_controller|LessThan1~0_combout\);

-- Location: MLABCELL_X84_Y6_N6
\lcd_controller|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan7~1_combout\ = ( \lcd_controller|LessThan7~0_combout\ & ( \lcd_controller|LessThan1~0_combout\ & ( (\lcd_controller|Add0~61_sumout\ & (\lcd_controller|Add0~65_sumout\ & ((\lcd_controller|Add0~73_sumout\) # 
-- (\lcd_controller|Add0~69_sumout\)))) ) ) ) # ( !\lcd_controller|LessThan7~0_combout\ & ( \lcd_controller|LessThan1~0_combout\ & ( (\lcd_controller|Add0~73_sumout\ & (\lcd_controller|Add0~61_sumout\ & \lcd_controller|Add0~65_sumout\)) ) ) ) # ( 
-- \lcd_controller|LessThan7~0_combout\ & ( !\lcd_controller|LessThan1~0_combout\ & ( (\lcd_controller|Add0~61_sumout\ & (\lcd_controller|Add0~65_sumout\ & ((\lcd_controller|Add0~73_sumout\) # (\lcd_controller|Add0~69_sumout\)))) ) ) ) # ( 
-- !\lcd_controller|LessThan7~0_combout\ & ( !\lcd_controller|LessThan1~0_combout\ & ( (\lcd_controller|Add0~61_sumout\ & (\lcd_controller|Add0~65_sumout\ & ((\lcd_controller|Add0~73_sumout\) # (\lcd_controller|Add0~69_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100000000000000110000000000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~73_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~61_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~65_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan7~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan1~0_combout\,
	combout => \lcd_controller|LessThan7~1_combout\);

-- Location: MLABCELL_X84_Y5_N42
\lcd_controller|lcd_data[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[0]~2_combout\ = ( \lcd_controller|LessThan3~0_combout\ & ( \lcd_controller|LessThan3~3_combout\ & ( (!\lcd_controller|Add0~57_sumout\ & (\lcd_controller|busy~2_combout\ & ((!\lcd_controller|LessThan6~3_combout\) # 
-- (!\lcd_controller|LessThan7~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan6~3_combout\,
	datac => \lcd_controller|ALT_INV_busy~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan7~1_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	combout => \lcd_controller|lcd_data[0]~2_combout\);

-- Location: MLABCELL_X84_Y5_N18
\lcd_controller|LessThan8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan8~0_combout\ = ( !\lcd_controller|Add0~85_sumout\ & ( \lcd_controller|Add0~97_sumout\ & ( (!\lcd_controller|Add0~93_sumout\) # ((!\lcd_controller|Add0~101_sumout\ & ((!\lcd_controller|Add0~109_sumout\) # 
-- (!\lcd_controller|Add0~105_sumout\)))) ) ) ) # ( !\lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|Add0~97_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111100111011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~93_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~101_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~85_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~97_sumout\,
	combout => \lcd_controller|LessThan8~0_combout\);

-- Location: MLABCELL_X84_Y5_N30
\lcd_controller|LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~2_combout\ = ( \lcd_controller|Add0~89_sumout\ & ( \lcd_controller|Add0~77_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_Add0~77_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~89_sumout\,
	combout => \lcd_controller|LessThan3~2_combout\);

-- Location: MLABCELL_X84_Y6_N57
\lcd_controller|LessThan8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan8~1_combout\ = ( !\lcd_controller|Add0~81_sumout\ & ( !\lcd_controller|Add0~73_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_Add0~73_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~81_sumout\,
	combout => \lcd_controller|LessThan8~1_combout\);

-- Location: MLABCELL_X84_Y5_N36
\lcd_controller|LessThan8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan8~2_combout\ = ( !\lcd_controller|LessThan6~0_combout\ & ( \lcd_controller|LessThan8~1_combout\ & ( (\lcd_controller|Add0~61_sumout\ & (\lcd_controller|Add0~65_sumout\ & (!\lcd_controller|LessThan8~0_combout\ & 
-- \lcd_controller|LessThan3~2_combout\))) ) ) ) # ( !\lcd_controller|LessThan6~0_combout\ & ( !\lcd_controller|LessThan8~1_combout\ & ( (\lcd_controller|Add0~61_sumout\ & \lcd_controller|Add0~65_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~61_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~65_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan8~0_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~2_combout\,
	datae => \lcd_controller|ALT_INV_LessThan6~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan8~1_combout\,
	combout => \lcd_controller|LessThan8~2_combout\);

-- Location: MLABCELL_X84_Y5_N6
\lcd_controller|lcd_data[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[0]~1_combout\ = ( \lcd_controller|LessThan3~3_combout\ & ( \lcd_controller|busy~2_combout\ & ( (!\lcd_controller|Add0~1_sumout\ & (((!\lcd_controller|LessThan3~0_combout\) # (\lcd_controller|LessThan8~2_combout\)) # 
-- (\lcd_controller|Add0~57_sumout\))) ) ) ) # ( !\lcd_controller|LessThan3~3_combout\ & ( \lcd_controller|busy~2_combout\ & ( !\lcd_controller|Add0~1_sumout\ ) ) ) # ( \lcd_controller|LessThan3~3_combout\ & ( !\lcd_controller|busy~2_combout\ & ( 
-- !\lcd_controller|Add0~1_sumout\ ) ) ) # ( !\lcd_controller|LessThan3~3_combout\ & ( !\lcd_controller|busy~2_combout\ & ( !\lcd_controller|Add0~1_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan8~2_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datad => \lcd_controller|ALT_INV_Add0~1_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	dataf => \lcd_controller|ALT_INV_busy~2_combout\,
	combout => \lcd_controller|lcd_data[0]~1_combout\);

-- Location: LABCELL_X85_Y5_N45
\lcd_controller|Selector34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector34~1_combout\ = ( \lcd_controller|state.ready~q\ & ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( ((\lcd_controller|lcd_data[0]~3_combout\ & (!\lcd_controller|lcd_data[0]~2_combout\ & \lcd_controller|lcd_data[0]~1_combout\))) # 
-- (\lcd_controller|Selector34~0_combout\) ) ) ) # ( !\lcd_controller|state.ready~q\ & ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( ((\lcd_controller|lcd_data[0]~3_combout\ & (!\lcd_controller|lcd_data[0]~2_combout\ & \lcd_controller|lcd_data[0]~1_combout\))) # 
-- (\lcd_controller|Selector34~0_combout\) ) ) ) # ( \lcd_controller|state.ready~q\ & ( !\main_fsm|lcd_enable~DUPLICATE_q\ ) ) # ( !\lcd_controller|state.ready~q\ & ( !\main_fsm|lcd_enable~DUPLICATE_q\ & ( ((\lcd_controller|lcd_data[0]~3_combout\ & 
-- (!\lcd_controller|lcd_data[0]~2_combout\ & \lcd_controller|lcd_data[0]~1_combout\))) # (\lcd_controller|Selector34~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110101111111111111111101010101011101010101010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector34~0_combout\,
	datab => \lcd_controller|ALT_INV_lcd_data[0]~3_combout\,
	datac => \lcd_controller|ALT_INV_lcd_data[0]~2_combout\,
	datad => \lcd_controller|ALT_INV_lcd_data[0]~1_combout\,
	datae => \lcd_controller|ALT_INV_state.ready~q\,
	dataf => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	combout => \lcd_controller|Selector34~1_combout\);

-- Location: FF_X85_Y5_N47
\lcd_controller|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector34~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|state.ready~q\);

-- Location: MLABCELL_X82_Y4_N33
\lcd_controller|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~7_combout\ = ( \lcd_controller|LessThan0~6_combout\ & ( \lcd_controller|LessThan0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_LessThan0~5_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan0~6_combout\,
	combout => \lcd_controller|LessThan0~7_combout\);

-- Location: MLABCELL_X82_Y4_N9
\lcd_controller|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~4_combout\ = ( \lcd_controller|clk_count\(18) & ( \lcd_controller|clk_count\(17) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_clk_count\(17),
	dataf => \lcd_controller|ALT_INV_clk_count\(18),
	combout => \lcd_controller|LessThan0~4_combout\);

-- Location: MLABCELL_X84_Y4_N18
\lcd_controller|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~0_combout\ = ( \lcd_controller|clk_count\(6) & ( !\lcd_controller|clk_count\(9) & ( (!\lcd_controller|clk_count\(7)) # (!\lcd_controller|clk_count\(8)) ) ) ) # ( !\lcd_controller|clk_count\(6) & ( !\lcd_controller|clk_count\(9) & 
-- ( (!\lcd_controller|clk_count\(7)) # ((!\lcd_controller|clk_count\(8)) # (!\lcd_controller|clk_count\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111100111111001111110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_clk_count\(7),
	datac => \lcd_controller|ALT_INV_clk_count\(8),
	datad => \lcd_controller|ALT_INV_clk_count\(5),
	datae => \lcd_controller|ALT_INV_clk_count\(6),
	dataf => \lcd_controller|ALT_INV_clk_count\(9),
	combout => \lcd_controller|LessThan0~0_combout\);

-- Location: MLABCELL_X82_Y4_N42
\lcd_controller|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~2_combout\ = ( \lcd_controller|clk_count\(13) & ( \lcd_controller|LessThan0~0_combout\ & ( (!\lcd_controller|clk_count\(12) & (!\lcd_controller|clk_count\(11) & \lcd_controller|LessThan0~1_combout\)) ) ) ) # ( 
-- !\lcd_controller|clk_count\(13) & ( \lcd_controller|LessThan0~0_combout\ & ( \lcd_controller|LessThan0~1_combout\ ) ) ) # ( \lcd_controller|clk_count\(13) & ( !\lcd_controller|LessThan0~0_combout\ & ( (!\lcd_controller|clk_count\(12) & 
-- (!\lcd_controller|clk_count\(10) & (!\lcd_controller|clk_count\(11) & \lcd_controller|LessThan0~1_combout\))) ) ) ) # ( !\lcd_controller|clk_count\(13) & ( !\lcd_controller|LessThan0~0_combout\ & ( \lcd_controller|LessThan0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001000000000000000111111110000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(12),
	datab => \lcd_controller|ALT_INV_clk_count\(10),
	datac => \lcd_controller|ALT_INV_clk_count\(11),
	datad => \lcd_controller|ALT_INV_LessThan0~1_combout\,
	datae => \lcd_controller|ALT_INV_clk_count\(13),
	dataf => \lcd_controller|ALT_INV_LessThan0~0_combout\,
	combout => \lcd_controller|LessThan0~2_combout\);

-- Location: MLABCELL_X82_Y4_N48
\lcd_controller|LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan0~8_combout\ = ( \lcd_controller|clk_count\(31) & ( \lcd_controller|LessThan0~2_combout\ ) ) # ( !\lcd_controller|clk_count\(31) & ( \lcd_controller|LessThan0~2_combout\ & ( (\lcd_controller|LessThan0~7_combout\ & 
-- ((!\lcd_controller|clk_count\(21)) # (\lcd_controller|LessThan0~3_combout\))) ) ) ) # ( \lcd_controller|clk_count\(31) & ( !\lcd_controller|LessThan0~2_combout\ ) ) # ( !\lcd_controller|clk_count\(31) & ( !\lcd_controller|LessThan0~2_combout\ & ( 
-- (\lcd_controller|LessThan0~7_combout\ & ((!\lcd_controller|clk_count\(21)) # ((\lcd_controller|LessThan0~3_combout\ & !\lcd_controller|LessThan0~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001010111111111111111100001011000010111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(21),
	datab => \lcd_controller|ALT_INV_LessThan0~3_combout\,
	datac => \lcd_controller|ALT_INV_LessThan0~7_combout\,
	datad => \lcd_controller|ALT_INV_LessThan0~4_combout\,
	datae => \lcd_controller|ALT_INV_clk_count\(31),
	dataf => \lcd_controller|ALT_INV_LessThan0~2_combout\,
	combout => \lcd_controller|LessThan0~8_combout\);

-- Location: LABCELL_X85_Y5_N39
\lcd_controller|rw~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|rw~0_combout\ = ( \lcd_controller|state.power_up~q\ ) # ( !\lcd_controller|state.power_up~q\ & ( !\lcd_controller|LessThan0~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan0~8_combout\,
	datae => \lcd_controller|ALT_INV_state.power_up~q\,
	combout => \lcd_controller|rw~0_combout\);

-- Location: FF_X85_Y5_N40
\lcd_controller|state.power_up\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|rw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|state.power_up~q\);

-- Location: MLABCELL_X82_Y4_N36
\lcd_controller|clk_count[27]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|clk_count[27]~3_combout\ = ( !\lcd_controller|state.power_up~q\ & ( (((!\lcd_controller|LessThan0~8_combout\)) # (\lcd_controller|state.ready~q\)) ) ) # ( \lcd_controller|state.power_up~q\ & ( ((\lcd_controller|state.send~q\ & 
-- (!\lcd_controller|clk_count\(31) & ((!\lcd_controller|LessThan9~1_combout\) # (!\lcd_controller|LessThan9~5_combout\))))) # (\lcd_controller|state.ready~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111001111110011001111110011001111110011111100110011101100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan9~1_combout\,
	datab => \lcd_controller|ALT_INV_state.ready~q\,
	datac => \lcd_controller|ALT_INV_state.send~q\,
	datad => \lcd_controller|ALT_INV_clk_count\(31),
	datae => \lcd_controller|ALT_INV_state.power_up~q\,
	dataf => \lcd_controller|ALT_INV_LessThan9~5_combout\,
	datag => \lcd_controller|ALT_INV_LessThan0~8_combout\,
	combout => \lcd_controller|clk_count[27]~3_combout\);

-- Location: MLABCELL_X82_Y6_N57
\lcd_controller|LessThan4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan4~0_combout\ = ( \lcd_controller|Add0~105_sumout\ & ( (!\lcd_controller|Add0~93_sumout\ & ((!\lcd_controller|Add0~109_sumout\) # (!\lcd_controller|Add0~101_sumout\))) ) ) # ( !\lcd_controller|Add0~105_sumout\ & ( 
-- !\lcd_controller|Add0~93_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111010000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~101_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~93_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~105_sumout\,
	combout => \lcd_controller|LessThan4~0_combout\);

-- Location: MLABCELL_X82_Y6_N36
\lcd_controller|LessThan4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan4~1_combout\ = ( \lcd_controller|LessThan4~0_combout\ & ( \lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~81_sumout\ & \lcd_controller|Add0~77_sumout\) ) ) ) # ( !\lcd_controller|LessThan4~0_combout\ & ( 
-- \lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~81_sumout\ & (((\lcd_controller|Add0~85_sumout\ & \lcd_controller|Add0~97_sumout\)) # (\lcd_controller|Add0~77_sumout\))) ) ) ) # ( \lcd_controller|LessThan4~0_combout\ & ( 
-- !\lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~81_sumout\ & \lcd_controller|Add0~77_sumout\) ) ) ) # ( !\lcd_controller|LessThan4~0_combout\ & ( !\lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~81_sumout\ & 
-- \lcd_controller|Add0~77_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000100110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan4~0_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~89_sumout\,
	combout => \lcd_controller|LessThan4~1_combout\);

-- Location: MLABCELL_X82_Y6_N15
\lcd_controller|LessThan3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~4_combout\ = ( !\lcd_controller|Add0~61_sumout\ & ( (!\lcd_controller|Add0~73_sumout\ & (!\lcd_controller|Add0~69_sumout\ & !\lcd_controller|Add0~65_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_Add0~73_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~69_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~65_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~61_sumout\,
	combout => \lcd_controller|LessThan3~4_combout\);

-- Location: MLABCELL_X82_Y5_N42
\lcd_controller|LessThan3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~5_combout\ = ( !\lcd_controller|Add0~25_sumout\ & ( (!\lcd_controller|Add0~17_sumout\ & (!\lcd_controller|Add0~13_sumout\ & !\lcd_controller|Add0~21_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_Add0~17_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~13_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~21_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~25_sumout\,
	combout => \lcd_controller|LessThan3~5_combout\);

-- Location: LABCELL_X83_Y5_N42
\lcd_controller|LessThan3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~13_combout\ = ( \lcd_controller|LessThan3~5_combout\ & ( !\lcd_controller|Add0~29_sumout\ & ( (!\lcd_controller|Add0~5_sumout\ & (!\lcd_controller|Add0~9_sumout\ & (\lcd_controller|LessThan3~4_combout\ & 
-- \lcd_controller|LessThan3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~9_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~5_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~29_sumout\,
	combout => \lcd_controller|LessThan3~13_combout\);

-- Location: LABCELL_X83_Y5_N57
\lcd_controller|clk_count[27]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|clk_count[27]~1_combout\ = ( \lcd_controller|LessThan0~8_combout\ & ( \lcd_controller|LessThan3~13_combout\ & ( (\lcd_controller|state.power_up~q\ & (!\lcd_controller|state.send~q\ & ((\lcd_controller|LessThan4~1_combout\) # 
-- (\lcd_controller|Add0~57_sumout\)))) ) ) ) # ( !\lcd_controller|LessThan0~8_combout\ & ( \lcd_controller|LessThan3~13_combout\ & ( (!\lcd_controller|state.send~q\ & ((\lcd_controller|LessThan4~1_combout\) # (\lcd_controller|Add0~57_sumout\))) ) ) ) # ( 
-- \lcd_controller|LessThan0~8_combout\ & ( !\lcd_controller|LessThan3~13_combout\ & ( (\lcd_controller|state.power_up~q\ & !\lcd_controller|state.send~q\) ) ) ) # ( !\lcd_controller|LessThan0~8_combout\ & ( !\lcd_controller|LessThan3~13_combout\ & ( 
-- !\lcd_controller|state.send~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100010001000100010000001100110011000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.power_up~q\,
	datab => \lcd_controller|ALT_INV_state.send~q\,
	datac => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan4~1_combout\,
	datae => \lcd_controller|ALT_INV_LessThan0~8_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~13_combout\,
	combout => \lcd_controller|clk_count[27]~1_combout\);

-- Location: MLABCELL_X82_Y6_N12
\lcd_controller|LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan2~0_combout\ = ( !\lcd_controller|Add0~101_sumout\ & ( (!\lcd_controller|Add0~113_sumout\) # ((!\lcd_controller|Add0~109_sumout\) # (!\lcd_controller|Add0~105_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~105_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~101_sumout\,
	combout => \lcd_controller|LessThan2~0_combout\);

-- Location: MLABCELL_X82_Y6_N48
\lcd_controller|LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan2~1_combout\ = ( \lcd_controller|Add0~85_sumout\ & ( \lcd_controller|Add0~77_sumout\ & ( ((\lcd_controller|Add0~97_sumout\ & (\lcd_controller|Add0~93_sumout\ & !\lcd_controller|LessThan2~0_combout\))) # 
-- (\lcd_controller|Add0~89_sumout\) ) ) ) # ( !\lcd_controller|Add0~85_sumout\ & ( \lcd_controller|Add0~77_sumout\ & ( \lcd_controller|Add0~89_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~93_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan2~0_combout\,
	datae => \lcd_controller|ALT_INV_Add0~85_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~77_sumout\,
	combout => \lcd_controller|LessThan2~1_combout\);

-- Location: MLABCELL_X82_Y6_N54
\lcd_controller|LessThan3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~6_combout\ = ( \lcd_controller|Add0~117_sumout\ & ( (!\lcd_controller|Add0~101_sumout\ & ((!\lcd_controller|Add0~109_sumout\) # ((!\lcd_controller|Add0~105_sumout\ & !\lcd_controller|Add0~113_sumout\)))) ) ) # ( 
-- !\lcd_controller|Add0~117_sumout\ & ( (!\lcd_controller|Add0~101_sumout\ & ((!\lcd_controller|Add0~109_sumout\) # (!\lcd_controller|Add0~105_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000111000001110000011100000101000001110000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~101_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~113_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~117_sumout\,
	combout => \lcd_controller|LessThan3~6_combout\);

-- Location: MLABCELL_X82_Y6_N42
\lcd_controller|LessThan3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~7_combout\ = ( \lcd_controller|Add0~85_sumout\ & ( \lcd_controller|LessThan3~6_combout\ & ( (\lcd_controller|Add0~89_sumout\ & \lcd_controller|Add0~77_sumout\) ) ) ) # ( \lcd_controller|Add0~85_sumout\ & ( 
-- !\lcd_controller|LessThan3~6_combout\ & ( (\lcd_controller|Add0~89_sumout\ & \lcd_controller|Add0~77_sumout\) ) ) ) # ( !\lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|LessThan3~6_combout\ & ( (\lcd_controller|Add0~93_sumout\ & 
-- (\lcd_controller|Add0~89_sumout\ & (\lcd_controller|Add0~77_sumout\ & \lcd_controller|Add0~97_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000110000001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~93_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~89_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~85_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~6_combout\,
	combout => \lcd_controller|LessThan3~7_combout\);

-- Location: LABCELL_X83_Y4_N24
\lcd_controller|LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan5~0_combout\ = ( !\lcd_controller|Add0~93_sumout\ & ( \lcd_controller|Add0~101_sumout\ & ( (!\lcd_controller|Add0~109_sumout\) # ((!\lcd_controller|Add0~113_sumout\ & (!\lcd_controller|Add0~105_sumout\ & 
-- !\lcd_controller|Add0~117_sumout\))) ) ) ) # ( !\lcd_controller|Add0~93_sumout\ & ( !\lcd_controller|Add0~101_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011101100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~113_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~117_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~93_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~101_sumout\,
	combout => \lcd_controller|LessThan5~0_combout\);

-- Location: LABCELL_X83_Y4_N54
\lcd_controller|LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan5~1_combout\ = ( \lcd_controller|Add0~85_sumout\ & ( \lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~81_sumout\ & \lcd_controller|Add0~77_sumout\) ) ) ) # ( !\lcd_controller|Add0~85_sumout\ & ( 
-- \lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~81_sumout\ & \lcd_controller|Add0~77_sumout\) ) ) ) # ( \lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~81_sumout\ & \lcd_controller|Add0~77_sumout\) 
-- ) ) ) # ( !\lcd_controller|Add0~85_sumout\ & ( !\lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|Add0~81_sumout\ & (\lcd_controller|Add0~97_sumout\ & (!\lcd_controller|LessThan5~0_combout\ & \lcd_controller|Add0~77_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan5~0_combout\,
	datad => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~85_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~89_sumout\,
	combout => \lcd_controller|LessThan5~1_combout\);

-- Location: LABCELL_X83_Y4_N3
\lcd_controller|LessThan6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan6~4_combout\ = ( !\lcd_controller|Add0~117_sumout\ & ( !\lcd_controller|Add0~113_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \lcd_controller|ALT_INV_Add0~113_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~117_sumout\,
	combout => \lcd_controller|LessThan6~4_combout\);

-- Location: LABCELL_X83_Y4_N0
\lcd_controller|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan1~1_combout\ = ( \lcd_controller|Add0~101_sumout\ & ( (\lcd_controller|Add0~105_sumout\ & (\lcd_controller|Add0~109_sumout\ & (\lcd_controller|Add0~97_sumout\ & \lcd_controller|Add0~93_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~105_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~109_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~97_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~93_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~101_sumout\,
	combout => \lcd_controller|LessThan1~1_combout\);

-- Location: LABCELL_X83_Y4_N6
\lcd_controller|LessThan1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan1~2_combout\ = ( \lcd_controller|LessThan1~1_combout\ & ( !\lcd_controller|Add0~89_sumout\ & ( (\lcd_controller|LessThan6~4_combout\ & (!\lcd_controller|Add0~77_sumout\ & (!\lcd_controller|Add0~81_sumout\ & 
-- !\lcd_controller|Add0~85_sumout\))) ) ) ) # ( !\lcd_controller|LessThan1~1_combout\ & ( !\lcd_controller|Add0~89_sumout\ & ( (!\lcd_controller|Add0~77_sumout\ & (!\lcd_controller|Add0~81_sumout\ & !\lcd_controller|Add0~85_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan6~4_combout\,
	datab => \lcd_controller|ALT_INV_Add0~77_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~85_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan1~1_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~89_sumout\,
	combout => \lcd_controller|LessThan1~2_combout\);

-- Location: LABCELL_X83_Y5_N39
\lcd_controller|clk_count[27]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|clk_count[27]~0_combout\ = ( \lcd_controller|LessThan1~2_combout\ & ( \lcd_controller|LessThan3~13_combout\ ) ) # ( !\lcd_controller|LessThan1~2_combout\ & ( \lcd_controller|LessThan3~13_combout\ & ( (!\lcd_controller|LessThan5~1_combout\) 
-- # ((!\lcd_controller|Add0~81_sumout\ & ((!\lcd_controller|LessThan2~1_combout\) # (!\lcd_controller|LessThan3~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111101010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~81_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan2~1_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~7_combout\,
	datad => \lcd_controller|ALT_INV_LessThan5~1_combout\,
	datae => \lcd_controller|ALT_INV_LessThan1~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~13_combout\,
	combout => \lcd_controller|clk_count[27]~0_combout\);

-- Location: LABCELL_X83_Y5_N51
\lcd_controller|clk_count[27]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|clk_count[27]~2_combout\ = ( \lcd_controller|clk_count[27]~1_combout\ & ( \lcd_controller|clk_count[27]~0_combout\ & ( ((\lcd_controller|Add0~57_sumout\ & (!\lcd_controller|lcd_data[0]~2_combout\ & \lcd_controller|lcd_data[0]~1_combout\))) 
-- # (\lcd_controller|clk_count[27]~3_combout\) ) ) ) # ( !\lcd_controller|clk_count[27]~1_combout\ & ( \lcd_controller|clk_count[27]~0_combout\ & ( \lcd_controller|clk_count[27]~3_combout\ ) ) ) # ( \lcd_controller|clk_count[27]~1_combout\ & ( 
-- !\lcd_controller|clk_count[27]~0_combout\ & ( ((!\lcd_controller|lcd_data[0]~2_combout\ & \lcd_controller|lcd_data[0]~1_combout\)) # (\lcd_controller|clk_count[27]~3_combout\) ) ) ) # ( !\lcd_controller|clk_count[27]~1_combout\ & ( 
-- !\lcd_controller|clk_count[27]~0_combout\ & ( \lcd_controller|clk_count[27]~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100111111001100110011001100110011001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_clk_count[27]~3_combout\,
	datac => \lcd_controller|ALT_INV_lcd_data[0]~2_combout\,
	datad => \lcd_controller|ALT_INV_lcd_data[0]~1_combout\,
	datae => \lcd_controller|ALT_INV_clk_count[27]~1_combout\,
	dataf => \lcd_controller|ALT_INV_clk_count[27]~0_combout\,
	combout => \lcd_controller|clk_count[27]~2_combout\);

-- Location: FF_X83_Y5_N50
\lcd_controller|clk_count[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	asdata => \lcd_controller|Add0~45_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count[20]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y5_N0
\lcd_controller|LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~0_combout\ = ( !\lcd_controller|Add0~53_sumout\ & ( !\lcd_controller|Add0~49_sumout\ & ( (!\lcd_controller|Add0~45_sumout\ & (!\lcd_controller|Add0~33_sumout\ & (!\lcd_controller|Add0~41_sumout\ & 
-- !\lcd_controller|Add0~37_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~45_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~33_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~41_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~37_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~53_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~49_sumout\,
	combout => \lcd_controller|LessThan3~0_combout\);

-- Location: MLABCELL_X84_Y6_N18
\lcd_controller|Selector33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~2_combout\ = ( !\lcd_controller|LessThan7~1_combout\ & ( !\lcd_controller|Add0~57_sumout\ & ( (\lcd_controller|state.initialize~q\ & (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|LessThan3~3_combout\ & 
-- \lcd_controller|busy~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.initialize~q\,
	datab => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datad => \lcd_controller|ALT_INV_busy~2_combout\,
	datae => \lcd_controller|ALT_INV_LessThan7~1_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~57_sumout\,
	combout => \lcd_controller|Selector33~2_combout\);

-- Location: MLABCELL_X84_Y6_N30
\lcd_controller|busy~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|busy~6_combout\ = ( \lcd_controller|LessThan3~0_combout\ & ( !\lcd_controller|Add0~5_sumout\ & ( (\lcd_controller|LessThan3~5_combout\ & (!\lcd_controller|Add0~29_sumout\ & (\lcd_controller|busy~4_combout\ & 
-- !\lcd_controller|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~5_combout\,
	datab => \lcd_controller|ALT_INV_Add0~29_sumout\,
	datac => \lcd_controller|ALT_INV_busy~4_combout\,
	datad => \lcd_controller|ALT_INV_Add0~9_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~5_sumout\,
	combout => \lcd_controller|busy~6_combout\);

-- Location: MLABCELL_X84_Y5_N3
\lcd_controller|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~0_combout\ = ( !\lcd_controller|Add0~57_sumout\ & ( \lcd_controller|state.initialize~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \lcd_controller|ALT_INV_state.initialize~q\,
	dataf => \lcd_controller|ALT_INV_Add0~57_sumout\,
	combout => \lcd_controller|Selector33~0_combout\);

-- Location: LABCELL_X85_Y5_N0
\lcd_controller|Selector33~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~4_combout\ = ( \lcd_controller|state.initialize~q\ & ( \lcd_controller|Add0~1_sumout\ ) ) # ( !\lcd_controller|state.initialize~q\ & ( \lcd_controller|Add0~1_sumout\ & ( (!\lcd_controller|state.power_up~q\ & 
-- !\lcd_controller|LessThan0~8_combout\) ) ) ) # ( \lcd_controller|state.initialize~q\ & ( !\lcd_controller|Add0~1_sumout\ & ( (!\lcd_controller|state.power_up~q\ & !\lcd_controller|LessThan0~8_combout\) ) ) ) # ( !\lcd_controller|state.initialize~q\ & ( 
-- !\lcd_controller|Add0~1_sumout\ & ( (!\lcd_controller|state.power_up~q\ & !\lcd_controller|LessThan0~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_state.power_up~q\,
	datac => \lcd_controller|ALT_INV_LessThan0~8_combout\,
	datae => \lcd_controller|ALT_INV_state.initialize~q\,
	dataf => \lcd_controller|ALT_INV_Add0~1_sumout\,
	combout => \lcd_controller|Selector33~4_combout\);

-- Location: MLABCELL_X84_Y6_N21
\lcd_controller|Selector33~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~3_combout\ = ( !\lcd_controller|LessThan8~2_combout\ & ( !\lcd_controller|Add0~57_sumout\ & ( (\lcd_controller|state.initialize~q\ & (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|busy~2_combout\ & 
-- \lcd_controller|LessThan3~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.initialize~q\,
	datab => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datac => \lcd_controller|ALT_INV_busy~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datae => \lcd_controller|ALT_INV_LessThan8~2_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~57_sumout\,
	combout => \lcd_controller|Selector33~3_combout\);

-- Location: MLABCELL_X84_Y6_N48
\lcd_controller|Selector33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~1_combout\ = ( !\lcd_controller|LessThan6~3_combout\ & ( \lcd_controller|state.initialize~q\ & ( (!\lcd_controller|Add0~57_sumout\ & (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|LessThan3~3_combout\ & 
-- \lcd_controller|busy~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datad => \lcd_controller|ALT_INV_busy~2_combout\,
	datae => \lcd_controller|ALT_INV_LessThan6~3_combout\,
	dataf => \lcd_controller|ALT_INV_state.initialize~q\,
	combout => \lcd_controller|Selector33~1_combout\);

-- Location: MLABCELL_X84_Y6_N12
\lcd_controller|Selector33~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector33~5_combout\ = ( \lcd_controller|Selector33~3_combout\ & ( \lcd_controller|Selector33~1_combout\ ) ) # ( !\lcd_controller|Selector33~3_combout\ & ( \lcd_controller|Selector33~1_combout\ ) ) # ( 
-- \lcd_controller|Selector33~3_combout\ & ( !\lcd_controller|Selector33~1_combout\ ) ) # ( !\lcd_controller|Selector33~3_combout\ & ( !\lcd_controller|Selector33~1_combout\ & ( (((\lcd_controller|busy~6_combout\ & \lcd_controller|Selector33~0_combout\)) # 
-- (\lcd_controller|Selector33~4_combout\)) # (\lcd_controller|Selector33~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector33~2_combout\,
	datab => \lcd_controller|ALT_INV_busy~6_combout\,
	datac => \lcd_controller|ALT_INV_Selector33~0_combout\,
	datad => \lcd_controller|ALT_INV_Selector33~4_combout\,
	datae => \lcd_controller|ALT_INV_Selector33~3_combout\,
	dataf => \lcd_controller|ALT_INV_Selector33~1_combout\,
	combout => \lcd_controller|Selector33~5_combout\);

-- Location: FF_X84_Y6_N13
\lcd_controller|state.initialize\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector33~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|state.initialize~q\);

-- Location: MLABCELL_X82_Y4_N57
\lcd_controller|lcd_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[0]~0_combout\ = ( \lcd_controller|state.power_up~q\ & ( \lcd_controller|LessThan0~8_combout\ & ( !\lcd_controller|state.send~q\ ) ) ) # ( \lcd_controller|state.power_up~q\ & ( !\lcd_controller|LessThan0~8_combout\ & ( 
-- !\lcd_controller|state.send~q\ ) ) ) # ( !\lcd_controller|state.power_up~q\ & ( !\lcd_controller|LessThan0~8_combout\ & ( !\lcd_controller|state.send~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.send~q\,
	datae => \lcd_controller|ALT_INV_state.power_up~q\,
	dataf => \lcd_controller|ALT_INV_LessThan0~8_combout\,
	combout => \lcd_controller|lcd_data[0]~0_combout\);

-- Location: LABCELL_X80_Y5_N6
\btn_controller|btn_num[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|btn_num[31]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \btn_controller|btn_num[31]~feeder_combout\);

-- Location: LABCELL_X80_Y3_N36
\btn_controller|btn_num[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|btn_num[31]~0_combout\ = ( !\btn_controller|state~q\ & ( \PCB_BT3~input_o\ & ( (\btn_controller|and_buttons~q\ & ((!\PCB_BT2~input_o\) # ((!\PCB_BT1~input_o\) # (!\PCB_BT0~input_o\)))) ) ) ) # ( !\btn_controller|state~q\ & ( 
-- !\PCB_BT3~input_o\ & ( \btn_controller|and_buttons~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PCB_BT2~input_o\,
	datab => \ALT_INV_PCB_BT1~input_o\,
	datac => \btn_controller|ALT_INV_and_buttons~q\,
	datad => \ALT_INV_PCB_BT0~input_o\,
	datae => \btn_controller|ALT_INV_state~q\,
	dataf => \ALT_INV_PCB_BT3~input_o\,
	combout => \btn_controller|btn_num[31]~0_combout\);

-- Location: FF_X80_Y5_N8
\btn_controller|btn_num[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	d => \btn_controller|btn_num[31]~feeder_combout\,
	ena => \btn_controller|btn_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|btn_num\(31));

-- Location: LABCELL_X80_Y5_N54
\main_fsm|WideOr8\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|WideOr8~combout\ = ( !\main_fsm|state.SEND~q\ & ( !\main_fsm|state.WAIT_INPUT~q\ & ( (\main_fsm|state.START~q\ & !\main_fsm|WideNor1~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_state.START~q\,
	datad => \main_fsm|ALT_INV_WideNor1~combout\,
	datae => \main_fsm|ALT_INV_state.SEND~q\,
	dataf => \main_fsm|ALT_INV_state.WAIT_INPUT~q\,
	combout => \main_fsm|WideOr8~combout\);

-- Location: LABCELL_X80_Y5_N48
\main_fsm|Selector60~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector60~0_combout\ = ( \main_fsm|WideOr8~combout\ & ( \main_fsm|state.PRSD_MSG~DUPLICATE_q\ & ( (\btn_controller|btn_num\(31)) # (\main_fsm|lcd_bus\(4)) ) ) ) # ( !\main_fsm|WideOr8~combout\ & ( \main_fsm|state.PRSD_MSG~DUPLICATE_q\ & ( 
-- (\btn_controller|btn_num\(31)) # (\main_fsm|lcd_bus\(4)) ) ) ) # ( !\main_fsm|WideOr8~combout\ & ( !\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & ( \main_fsm|lcd_bus\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm|ALT_INV_lcd_bus\(4),
	datad => \btn_controller|ALT_INV_btn_num\(31),
	datae => \main_fsm|ALT_INV_WideOr8~combout\,
	dataf => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	combout => \main_fsm|Selector60~0_combout\);

-- Location: FF_X79_Y4_N25
\main_fsm|lcd_bus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector60~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|lcd_bus\(4));

-- Location: LABCELL_X81_Y4_N15
\lcd_controller|rs~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|rs~0_combout\ = ( \lcd_controller|rs~q\ & ( \main_fsm|lcd_bus\(4) & ( ((!\lcd_controller|lcd_data[0]~0_combout\) # ((\main_fsm|lcd_enable~DUPLICATE_q\ & \lcd_controller|state.ready~q\))) # (\lcd_controller|state.initialize~q\) ) ) ) # ( 
-- !\lcd_controller|rs~q\ & ( \main_fsm|lcd_bus\(4) & ( (\main_fsm|lcd_enable~DUPLICATE_q\ & (!\lcd_controller|state.initialize~q\ & (\lcd_controller|lcd_data[0]~0_combout\ & \lcd_controller|state.ready~q\))) ) ) ) # ( \lcd_controller|rs~q\ & ( 
-- !\main_fsm|lcd_bus\(4) & ( (!\lcd_controller|lcd_data[0]~0_combout\) # (\lcd_controller|state.initialize~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000001001111001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	datab => \lcd_controller|ALT_INV_state.initialize~q\,
	datac => \lcd_controller|ALT_INV_lcd_data[0]~0_combout\,
	datad => \lcd_controller|ALT_INV_state.ready~q\,
	datae => \lcd_controller|ALT_INV_rs~q\,
	dataf => \main_fsm|ALT_INV_lcd_bus\(4),
	combout => \lcd_controller|rs~0_combout\);

-- Location: FF_X81_Y4_N16
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

-- Location: FF_X82_Y5_N8
\lcd_controller|e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector46~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|e~q\);

-- Location: LABCELL_X83_Y4_N18
\lcd_controller|LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~1_combout\ = ( !\lcd_controller|Add0~29_sumout\ & ( \lcd_controller|LessThan3~0_combout\ & ( (!\lcd_controller|Add0~13_sumout\ & (!\lcd_controller|Add0~25_sumout\ & (!\lcd_controller|Add0~17_sumout\ & 
-- !\lcd_controller|Add0~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~13_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~25_sumout\,
	datac => \lcd_controller|ALT_INV_Add0~17_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~21_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~29_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	combout => \lcd_controller|LessThan3~1_combout\);

-- Location: MLABCELL_X82_Y5_N48
\lcd_controller|Selector46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~1_combout\ = ( \lcd_controller|LessThan8~2_combout\ & ( \lcd_controller|LessThan3~1_combout\ & ( (!\lcd_controller|e~q\ & (((!\lcd_controller|busy~2_combout\) # (\lcd_controller|LessThan7~1_combout\)) # 
-- (\lcd_controller|Add0~57_sumout\))) ) ) ) # ( !\lcd_controller|LessThan8~2_combout\ & ( \lcd_controller|LessThan3~1_combout\ & ( (!\lcd_controller|Add0~57_sumout\ & ((!\lcd_controller|busy~2_combout\ & (!\lcd_controller|e~q\)) # 
-- (\lcd_controller|busy~2_combout\ & ((\lcd_controller|LessThan7~1_combout\))))) # (\lcd_controller|Add0~57_sumout\ & (!\lcd_controller|e~q\)) ) ) ) # ( \lcd_controller|LessThan8~2_combout\ & ( !\lcd_controller|LessThan3~1_combout\ & ( !\lcd_controller|e~q\ 
-- ) ) ) # ( !\lcd_controller|LessThan8~2_combout\ & ( !\lcd_controller|LessThan3~1_combout\ & ( !\lcd_controller|e~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000100110011101100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_e~q\,
	datac => \lcd_controller|ALT_INV_busy~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan7~1_combout\,
	datae => \lcd_controller|ALT_INV_LessThan8~2_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~1_combout\,
	combout => \lcd_controller|Selector46~1_combout\);

-- Location: FF_X83_Y6_N4
\lcd_controller|clk_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Add0~121_sumout\,
	sclr => \lcd_controller|clk_count[27]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|clk_count[1]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y4_N57
\lcd_controller|LessThan12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan12~0_combout\ = ( \lcd_controller|clk_count[1]~DUPLICATE_q\ & ( !\lcd_controller|clk_count\(3) & ( (!\lcd_controller|clk_count\(2) & (!\lcd_controller|clk_count\(5) & !\lcd_controller|clk_count\(4))) ) ) ) # ( 
-- !\lcd_controller|clk_count[1]~DUPLICATE_q\ & ( !\lcd_controller|clk_count\(3) & ( (!\lcd_controller|clk_count\(5) & !\lcd_controller|clk_count\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(2),
	datac => \lcd_controller|ALT_INV_clk_count\(5),
	datad => \lcd_controller|ALT_INV_clk_count\(4),
	datae => \lcd_controller|ALT_INV_clk_count[1]~DUPLICATE_q\,
	dataf => \lcd_controller|ALT_INV_clk_count\(3),
	combout => \lcd_controller|LessThan12~0_combout\);

-- Location: MLABCELL_X84_Y4_N39
\lcd_controller|LessThan12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan12~1_combout\ = ( \lcd_controller|LessThan12~0_combout\ & ( !\lcd_controller|clk_count\(9) & ( (!\lcd_controller|clk_count\(7)) # (!\lcd_controller|clk_count\(8)) ) ) ) # ( !\lcd_controller|LessThan12~0_combout\ & ( 
-- !\lcd_controller|clk_count\(9) & ( (!\lcd_controller|clk_count\(8)) # ((!\lcd_controller|clk_count\(6) & !\lcd_controller|clk_count\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110100000111111111111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(6),
	datac => \lcd_controller|ALT_INV_clk_count\(7),
	datad => \lcd_controller|ALT_INV_clk_count\(8),
	datae => \lcd_controller|ALT_INV_LessThan12~0_combout\,
	dataf => \lcd_controller|ALT_INV_clk_count\(9),
	combout => \lcd_controller|LessThan12~1_combout\);

-- Location: MLABCELL_X82_Y4_N6
\lcd_controller|Selector46~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~5_combout\ = ( \lcd_controller|LessThan9~5_combout\ & ( (!\lcd_controller|clk_count\(11) & (\lcd_controller|LessThan9~1_combout\ & ((!\lcd_controller|clk_count\(10)) # (\lcd_controller|LessThan12~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110100000000000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan12~1_combout\,
	datab => \lcd_controller|ALT_INV_clk_count\(10),
	datac => \lcd_controller|ALT_INV_clk_count\(11),
	datad => \lcd_controller|ALT_INV_LessThan9~1_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan9~5_combout\,
	combout => \lcd_controller|Selector46~5_combout\);

-- Location: MLABCELL_X84_Y4_N15
\lcd_controller|LessThan11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan11~0_combout\ = ( \lcd_controller|clk_count\(4) & ( \lcd_controller|clk_count\(3) & ( (\lcd_controller|clk_count\(2) & \lcd_controller|clk_count\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(2),
	datac => \lcd_controller|ALT_INV_clk_count\(5),
	datae => \lcd_controller|ALT_INV_clk_count\(4),
	dataf => \lcd_controller|ALT_INV_clk_count\(3),
	combout => \lcd_controller|LessThan11~0_combout\);

-- Location: MLABCELL_X84_Y4_N51
\lcd_controller|LessThan11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan11~1_combout\ = ( \lcd_controller|LessThan11~0_combout\ & ( (\lcd_controller|clk_count\(9) & ((\lcd_controller|clk_count\(8)) # (\lcd_controller|clk_count\(7)))) ) ) # ( !\lcd_controller|LessThan11~0_combout\ & ( 
-- (\lcd_controller|clk_count\(9) & (((\lcd_controller|clk_count\(7) & \lcd_controller|clk_count\(6))) # (\lcd_controller|clk_count\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101000001010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(9),
	datab => \lcd_controller|ALT_INV_clk_count\(7),
	datac => \lcd_controller|ALT_INV_clk_count\(8),
	datad => \lcd_controller|ALT_INV_clk_count\(6),
	dataf => \lcd_controller|ALT_INV_LessThan11~0_combout\,
	combout => \lcd_controller|LessThan11~1_combout\);

-- Location: MLABCELL_X84_Y4_N6
\lcd_controller|LessThan10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan10~0_combout\ = ( \lcd_controller|clk_count\(4) & ( \lcd_controller|clk_count\(3) & ( \lcd_controller|clk_count\(5) ) ) ) # ( \lcd_controller|clk_count\(4) & ( !\lcd_controller|clk_count\(3) & ( (\lcd_controller|clk_count\(5) & 
-- ((\lcd_controller|clk_count[1]~DUPLICATE_q\) # (\lcd_controller|clk_count\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100110001001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(2),
	datab => \lcd_controller|ALT_INV_clk_count\(5),
	datac => \lcd_controller|ALT_INV_clk_count[1]~DUPLICATE_q\,
	datae => \lcd_controller|ALT_INV_clk_count\(4),
	dataf => \lcd_controller|ALT_INV_clk_count\(3),
	combout => \lcd_controller|LessThan10~0_combout\);

-- Location: MLABCELL_X84_Y4_N48
\lcd_controller|LessThan10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan10~1_combout\ = ( !\lcd_controller|LessThan10~0_combout\ & ( (!\lcd_controller|clk_count\(9) & (!\lcd_controller|clk_count\(7) & (!\lcd_controller|clk_count\(6) & !\lcd_controller|clk_count\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_clk_count\(9),
	datab => \lcd_controller|ALT_INV_clk_count\(7),
	datac => \lcd_controller|ALT_INV_clk_count\(6),
	datad => \lcd_controller|ALT_INV_clk_count\(8),
	dataf => \lcd_controller|ALT_INV_LessThan10~0_combout\,
	combout => \lcd_controller|LessThan10~1_combout\);

-- Location: MLABCELL_X84_Y4_N30
\lcd_controller|Selector46~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~6_combout\ = ( \lcd_controller|LessThan9~1_combout\ & ( \lcd_controller|LessThan9~5_combout\ & ( (!\lcd_controller|LessThan11~1_combout\ & (!\lcd_controller|clk_count\(10) & (!\lcd_controller|LessThan10~1_combout\ & 
-- !\lcd_controller|clk_count\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan11~1_combout\,
	datab => \lcd_controller|ALT_INV_clk_count\(10),
	datac => \lcd_controller|ALT_INV_LessThan10~1_combout\,
	datad => \lcd_controller|ALT_INV_clk_count\(11),
	datae => \lcd_controller|ALT_INV_LessThan9~1_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan9~5_combout\,
	combout => \lcd_controller|Selector46~6_combout\);

-- Location: LABCELL_X83_Y4_N48
\lcd_controller|Selector46~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~7_combout\ = ( \lcd_controller|Selector46~5_combout\ & ( \lcd_controller|Selector46~6_combout\ & ( (!\lcd_controller|state.send~q\ & (((\lcd_controller|e~DUPLICATE_q\ & !\lcd_controller|state.initialize~q\)))) # 
-- (\lcd_controller|state.send~q\ & (!\lcd_controller|clk_count\(31))) ) ) ) # ( !\lcd_controller|Selector46~5_combout\ & ( \lcd_controller|Selector46~6_combout\ & ( (!\lcd_controller|state.send~q\ & (((\lcd_controller|e~DUPLICATE_q\ & 
-- !\lcd_controller|state.initialize~q\)))) # (\lcd_controller|state.send~q\ & (!\lcd_controller|clk_count\(31))) ) ) ) # ( \lcd_controller|Selector46~5_combout\ & ( !\lcd_controller|Selector46~6_combout\ & ( (!\lcd_controller|state.send~q\ & 
-- (\lcd_controller|e~DUPLICATE_q\ & !\lcd_controller|state.initialize~q\)) ) ) ) # ( !\lcd_controller|Selector46~5_combout\ & ( !\lcd_controller|Selector46~6_combout\ & ( (\lcd_controller|e~DUPLICATE_q\ & ((!\lcd_controller|state.send~q\ & 
-- ((!\lcd_controller|state.initialize~q\))) # (\lcd_controller|state.send~q\ & (!\lcd_controller|clk_count\(31))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000000100000010100000000001001110010001000100111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.send~q\,
	datab => \lcd_controller|ALT_INV_clk_count\(31),
	datac => \lcd_controller|ALT_INV_e~DUPLICATE_q\,
	datad => \lcd_controller|ALT_INV_state.initialize~q\,
	datae => \lcd_controller|ALT_INV_Selector46~5_combout\,
	dataf => \lcd_controller|ALT_INV_Selector46~6_combout\,
	combout => \lcd_controller|Selector46~7_combout\);

-- Location: MLABCELL_X82_Y5_N33
\lcd_controller|LessThan5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan5~2_combout\ = ( !\lcd_controller|Add0~9_sumout\ & ( !\lcd_controller|LessThan5~1_combout\ & ( (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|LessThan3~4_combout\ & (\lcd_controller|LessThan3~3_combout\ & 
-- !\lcd_controller|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datab => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datad => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~9_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan5~1_combout\,
	combout => \lcd_controller|LessThan5~2_combout\);

-- Location: MLABCELL_X82_Y5_N30
\lcd_controller|LessThan4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan4~2_combout\ = ( !\lcd_controller|Add0~9_sumout\ & ( !\lcd_controller|LessThan4~1_combout\ & ( (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|LessThan3~4_combout\ & (!\lcd_controller|Add0~5_sumout\ & 
-- \lcd_controller|LessThan3~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datab => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datac => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datae => \lcd_controller|ALT_INV_Add0~9_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan4~1_combout\,
	combout => \lcd_controller|LessThan4~2_combout\);

-- Location: MLABCELL_X82_Y5_N12
\lcd_controller|LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan2~2_combout\ = ( !\lcd_controller|Add0~81_sumout\ & ( !\lcd_controller|LessThan2~1_combout\ & ( (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|LessThan3~3_combout\ & (\lcd_controller|busy~2_combout\ & 
-- \lcd_controller|LessThan3~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datab => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datac => \lcd_controller|ALT_INV_busy~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datae => \lcd_controller|ALT_INV_Add0~81_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan2~1_combout\,
	combout => \lcd_controller|LessThan2~2_combout\);

-- Location: MLABCELL_X82_Y5_N36
\lcd_controller|Selector46~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~4_combout\ = ( \lcd_controller|state.initialize~q\ & ( !\lcd_controller|LessThan2~2_combout\ & ( (!\lcd_controller|Add0~57_sumout\ & (!\lcd_controller|state.send~q\ & (\lcd_controller|LessThan5~2_combout\ & 
-- !\lcd_controller|LessThan4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_state.send~q\,
	datac => \lcd_controller|ALT_INV_LessThan5~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan4~2_combout\,
	datae => \lcd_controller|ALT_INV_state.initialize~q\,
	dataf => \lcd_controller|ALT_INV_LessThan2~2_combout\,
	combout => \lcd_controller|Selector46~4_combout\);

-- Location: MLABCELL_X84_Y4_N0
\lcd_controller|Selector46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~0_combout\ = ( \lcd_controller|Add0~1_sumout\ & ( (\lcd_controller|state.initialize~q\ & !\lcd_controller|state.send~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_state.initialize~q\,
	datac => \lcd_controller|ALT_INV_state.send~q\,
	dataf => \lcd_controller|ALT_INV_Add0~1_sumout\,
	combout => \lcd_controller|Selector46~0_combout\);

-- Location: MLABCELL_X82_Y5_N15
\lcd_controller|LessThan3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~8_combout\ = ( !\lcd_controller|Add0~81_sumout\ & ( !\lcd_controller|LessThan3~7_combout\ & ( (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|LessThan3~3_combout\ & (\lcd_controller|LessThan3~4_combout\ & 
-- \lcd_controller|busy~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datab => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datad => \lcd_controller|ALT_INV_busy~2_combout\,
	datae => \lcd_controller|ALT_INV_Add0~81_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~7_combout\,
	combout => \lcd_controller|LessThan3~8_combout\);

-- Location: LABCELL_X81_Y5_N42
\lcd_controller|LessThan1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan1~3_combout\ = ( !\lcd_controller|Add0~9_sumout\ & ( \lcd_controller|LessThan3~3_combout\ & ( (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|LessThan3~4_combout\ & (\lcd_controller|LessThan1~2_combout\ & 
-- !\lcd_controller|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datab => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datac => \lcd_controller|ALT_INV_LessThan1~2_combout\,
	datad => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~9_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	combout => \lcd_controller|LessThan1~3_combout\);

-- Location: MLABCELL_X82_Y5_N54
\lcd_controller|Selector46~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~3_combout\ = ( \lcd_controller|LessThan1~3_combout\ & ( \lcd_controller|LessThan2~2_combout\ & ( (\lcd_controller|state.initialize~q\ & (!\lcd_controller|state.send~q\ & !\lcd_controller|Add0~57_sumout\)) ) ) ) # ( 
-- \lcd_controller|LessThan1~3_combout\ & ( !\lcd_controller|LessThan2~2_combout\ & ( (\lcd_controller|state.initialize~q\ & (!\lcd_controller|state.send~q\ & !\lcd_controller|Add0~57_sumout\)) ) ) ) # ( !\lcd_controller|LessThan1~3_combout\ & ( 
-- !\lcd_controller|LessThan2~2_combout\ & ( (\lcd_controller|state.initialize~q\ & (!\lcd_controller|state.send~q\ & (!\lcd_controller|Add0~57_sumout\ & \lcd_controller|LessThan3~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000010000000100000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.initialize~q\,
	datab => \lcd_controller|ALT_INV_state.send~q\,
	datac => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datad => \lcd_controller|ALT_INV_LessThan3~8_combout\,
	datae => \lcd_controller|ALT_INV_LessThan1~3_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan2~2_combout\,
	combout => \lcd_controller|Selector46~3_combout\);

-- Location: LABCELL_X81_Y5_N51
\lcd_controller|busy~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|busy~3_combout\ = ( !\lcd_controller|Add0~9_sumout\ & ( \lcd_controller|LessThan3~5_combout\ & ( (\lcd_controller|LessThan3~0_combout\ & (!\lcd_controller|Add0~29_sumout\ & (!\lcd_controller|LessThan6~3_combout\ & 
-- !\lcd_controller|Add0~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datab => \lcd_controller|ALT_INV_Add0~29_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan6~3_combout\,
	datad => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datae => \lcd_controller|ALT_INV_Add0~9_sumout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~5_combout\,
	combout => \lcd_controller|busy~3_combout\);

-- Location: MLABCELL_X82_Y5_N24
\lcd_controller|Selector46~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~2_combout\ = ( \lcd_controller|busy~3_combout\ & ( \lcd_controller|LessThan2~2_combout\ & ( (\lcd_controller|Add0~57_sumout\ & (!\lcd_controller|state.send~q\ & \lcd_controller|state.initialize~q\)) ) ) ) # ( 
-- !\lcd_controller|busy~3_combout\ & ( \lcd_controller|LessThan2~2_combout\ & ( (\lcd_controller|Add0~57_sumout\ & (!\lcd_controller|state.send~q\ & \lcd_controller|state.initialize~q\)) ) ) ) # ( \lcd_controller|busy~3_combout\ & ( 
-- !\lcd_controller|LessThan2~2_combout\ & ( (\lcd_controller|Add0~57_sumout\ & (!\lcd_controller|state.send~q\ & \lcd_controller|state.initialize~q\)) ) ) ) # ( !\lcd_controller|busy~3_combout\ & ( !\lcd_controller|LessThan2~2_combout\ & ( 
-- (!\lcd_controller|state.send~q\ & (\lcd_controller|state.initialize~q\ & ((!\lcd_controller|LessThan4~2_combout\) # (\lcd_controller|Add0~57_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_state.send~q\,
	datac => \lcd_controller|ALT_INV_state.initialize~q\,
	datad => \lcd_controller|ALT_INV_LessThan4~2_combout\,
	datae => \lcd_controller|ALT_INV_busy~3_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan2~2_combout\,
	combout => \lcd_controller|Selector46~2_combout\);

-- Location: MLABCELL_X82_Y5_N6
\lcd_controller|Selector46~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector46~8_combout\ = ( \lcd_controller|Selector46~3_combout\ & ( \lcd_controller|Selector46~2_combout\ ) ) # ( !\lcd_controller|Selector46~3_combout\ & ( \lcd_controller|Selector46~2_combout\ & ( (!\lcd_controller|Selector46~1_combout\) 
-- # (((\lcd_controller|Selector46~0_combout\) # (\lcd_controller|Selector46~4_combout\)) # (\lcd_controller|Selector46~7_combout\)) ) ) ) # ( \lcd_controller|Selector46~3_combout\ & ( !\lcd_controller|Selector46~2_combout\ ) ) # ( 
-- !\lcd_controller|Selector46~3_combout\ & ( !\lcd_controller|Selector46~2_combout\ & ( ((\lcd_controller|Selector46~0_combout\) # (\lcd_controller|Selector46~4_combout\)) # (\lcd_controller|Selector46~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111111111111111111110111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector46~1_combout\,
	datab => \lcd_controller|ALT_INV_Selector46~7_combout\,
	datac => \lcd_controller|ALT_INV_Selector46~4_combout\,
	datad => \lcd_controller|ALT_INV_Selector46~0_combout\,
	datae => \lcd_controller|ALT_INV_Selector46~3_combout\,
	dataf => \lcd_controller|ALT_INV_Selector46~2_combout\,
	combout => \lcd_controller|Selector46~8_combout\);

-- Location: FF_X82_Y5_N7
\lcd_controller|e~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector46~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|e~DUPLICATE_q\);

-- Location: LABCELL_X81_Y5_N18
\btn_controller|btn_num~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|btn_num~1_combout\ = ( \PCB_BT0~input_o\ & ( \PCB_BT1~input_o\ & ( !\PCB_BT2~input_o\ ) ) ) # ( !\PCB_BT0~input_o\ & ( \PCB_BT1~input_o\ ) ) # ( !\PCB_BT0~input_o\ & ( !\PCB_BT1~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_PCB_BT2~input_o\,
	datae => \ALT_INV_PCB_BT0~input_o\,
	dataf => \ALT_INV_PCB_BT1~input_o\,
	combout => \btn_controller|btn_num~1_combout\);

-- Location: FF_X80_Y5_N22
\btn_controller|btn_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \btn_controller|btn_num~1_combout\,
	sload => VCC,
	ena => \btn_controller|btn_num[31]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|btn_num\(0));

-- Location: LABCELL_X80_Y5_N33
\main_fsm|Selector64~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector64~0_combout\ = ( \main_fsm|state.PRSD_MSG~DUPLICATE_q\ & ( (!\btn_controller|btn_num\(31) & (\main_fsm|lcd_bus\(0))) # (\btn_controller|btn_num\(31) & (!\btn_controller|btn_num\(0) & ((\main_fsm|WideOr8~combout\) # 
-- (\main_fsm|lcd_bus\(0))))) ) ) # ( !\main_fsm|state.PRSD_MSG~DUPLICATE_q\ & ( (\main_fsm|WideOr8~combout\) # (\main_fsm|lcd_bus\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010100010111000101010001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_lcd_bus\(0),
	datab => \btn_controller|ALT_INV_btn_num\(0),
	datac => \btn_controller|ALT_INV_btn_num\(31),
	datad => \main_fsm|ALT_INV_WideOr8~combout\,
	dataf => \main_fsm|ALT_INV_state.PRSD_MSG~DUPLICATE_q\,
	combout => \main_fsm|Selector64~0_combout\);

-- Location: FF_X80_Y5_N26
\main_fsm|lcd_bus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector64~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|lcd_bus\(0));

-- Location: LABCELL_X81_Y5_N24
\lcd_controller|Selector45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector45~0_combout\ = ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( (\main_fsm|lcd_bus\(0) & \lcd_controller|state.ready~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm|ALT_INV_lcd_bus\(0),
	datac => \lcd_controller|ALT_INV_state.ready~q\,
	dataf => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	combout => \lcd_controller|Selector45~0_combout\);

-- Location: LABCELL_X81_Y5_N57
\lcd_controller|LessThan3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~9_combout\ = ( !\lcd_controller|Add0~17_sumout\ & ( !\lcd_controller|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \lcd_controller|ALT_INV_Add0~17_sumout\,
	dataf => \lcd_controller|ALT_INV_Add0~13_sumout\,
	combout => \lcd_controller|LessThan3~9_combout\);

-- Location: LABCELL_X85_Y5_N33
\lcd_controller|busy~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|busy~5_combout\ = ( \lcd_controller|LessThan3~0_combout\ & ( \lcd_controller|LessThan3~9_combout\ & ( (!\lcd_controller|Add0~29_sumout\ & (\lcd_controller|busy~4_combout\ & (!\lcd_controller|Add0~25_sumout\ & 
-- !\lcd_controller|Add0~21_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~29_sumout\,
	datab => \lcd_controller|ALT_INV_busy~4_combout\,
	datac => \lcd_controller|ALT_INV_Add0~25_sumout\,
	datad => \lcd_controller|ALT_INV_Add0~21_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan3~9_combout\,
	combout => \lcd_controller|busy~5_combout\);

-- Location: LABCELL_X85_Y5_N15
\lcd_controller|Selector45~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector45~1_combout\ = ( \lcd_controller|state.initialize~q\ & ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( (!\lcd_controller|Add0~57_sumout\ & (!\lcd_controller|state.ready~q\ & !\lcd_controller|Add0~1_sumout\)) ) ) ) # ( 
-- \lcd_controller|state.initialize~q\ & ( !\main_fsm|lcd_enable~DUPLICATE_q\ & ( (!\lcd_controller|Add0~57_sumout\ & !\lcd_controller|Add0~1_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datac => \lcd_controller|ALT_INV_state.ready~q\,
	datad => \lcd_controller|ALT_INV_Add0~1_sumout\,
	datae => \lcd_controller|ALT_INV_state.initialize~q\,
	dataf => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	combout => \lcd_controller|Selector45~1_combout\);

-- Location: LABCELL_X85_Y5_N48
\lcd_controller|Selector45~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector45~2_combout\ = ( \lcd_controller|LessThan4~2_combout\ & ( \lcd_controller|Selector45~1_combout\ & ( ((\lcd_controller|Add0~57_sumout\ & (!\lcd_controller|busy~5_combout\ & \lcd_controller|LessThan5~2_combout\))) # 
-- (\lcd_controller|Selector45~0_combout\) ) ) ) # ( !\lcd_controller|LessThan4~2_combout\ & ( \lcd_controller|Selector45~1_combout\ & ( ((!\lcd_controller|busy~5_combout\ & \lcd_controller|LessThan5~2_combout\)) # (\lcd_controller|Selector45~0_combout\) ) ) 
-- ) # ( \lcd_controller|LessThan4~2_combout\ & ( !\lcd_controller|Selector45~1_combout\ & ( \lcd_controller|Selector45~0_combout\ ) ) ) # ( !\lcd_controller|LessThan4~2_combout\ & ( !\lcd_controller|Selector45~1_combout\ & ( 
-- \lcd_controller|Selector45~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011111100110011001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_Selector45~0_combout\,
	datac => \lcd_controller|ALT_INV_busy~5_combout\,
	datad => \lcd_controller|ALT_INV_LessThan5~2_combout\,
	datae => \lcd_controller|ALT_INV_LessThan4~2_combout\,
	dataf => \lcd_controller|ALT_INV_Selector45~1_combout\,
	combout => \lcd_controller|Selector45~2_combout\);

-- Location: MLABCELL_X84_Y5_N0
\lcd_controller|lcd_data[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|lcd_data[0]~4_combout\ = ( \lcd_controller|lcd_data[0]~2_combout\ & ( \lcd_controller|lcd_data[0]~0_combout\ ) ) # ( !\lcd_controller|lcd_data[0]~2_combout\ & ( (\lcd_controller|lcd_data[0]~0_combout\ & 
-- ((!\lcd_controller|lcd_data[0]~1_combout\) # (!\lcd_controller|lcd_data[0]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_controller|ALT_INV_lcd_data[0]~1_combout\,
	datac => \lcd_controller|ALT_INV_lcd_data[0]~3_combout\,
	datad => \lcd_controller|ALT_INV_lcd_data[0]~0_combout\,
	dataf => \lcd_controller|ALT_INV_lcd_data[0]~2_combout\,
	combout => \lcd_controller|lcd_data[0]~4_combout\);

-- Location: FF_X85_Y5_N49
\lcd_controller|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector45~2_combout\,
	ena => \lcd_controller|lcd_data[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(0));

-- Location: MLABCELL_X84_Y6_N54
\lcd_controller|Selector44~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~3_combout\ = ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( (\lcd_controller|state.initialize~q\ & (!\lcd_controller|state.ready~q\ & !\lcd_controller|Add0~1_sumout\)) ) ) # ( !\main_fsm|lcd_enable~DUPLICATE_q\ & ( 
-- (\lcd_controller|state.initialize~q\ & !\lcd_controller|Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.initialize~q\,
	datab => \lcd_controller|ALT_INV_state.ready~q\,
	datac => \lcd_controller|ALT_INV_Add0~1_sumout\,
	dataf => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	combout => \lcd_controller|Selector44~3_combout\);

-- Location: FF_X78_Y5_N34
\main_fsm|lcd_bus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector63~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|lcd_bus\(1));

-- Location: LABCELL_X80_Y5_N21
\btn_controller|btn_num[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \btn_controller|btn_num[1]~3_combout\ = ( \btn_controller|btn_num[0]~2_combout\ & ( \PCB_BT2~input_o\ & ( (\PCB_BT1~input_o\ & (\PCB_BT0~input_o\ & ((!\PCB_BT3~input_o\) # (\btn_controller|btn_num\(1))))) ) ) ) # ( !\btn_controller|btn_num[0]~2_combout\ & 
-- ( \PCB_BT2~input_o\ & ( \btn_controller|btn_num\(1) ) ) ) # ( \btn_controller|btn_num[0]~2_combout\ & ( !\PCB_BT2~input_o\ & ( (\PCB_BT1~input_o\ & \PCB_BT0~input_o\) ) ) ) # ( !\btn_controller|btn_num[0]~2_combout\ & ( !\PCB_BT2~input_o\ & ( 
-- \btn_controller|btn_num\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000001010000010100110011001100110000010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_PCB_BT1~input_o\,
	datab => \btn_controller|ALT_INV_btn_num\(1),
	datac => \ALT_INV_PCB_BT0~input_o\,
	datad => \ALT_INV_PCB_BT3~input_o\,
	datae => \btn_controller|ALT_INV_btn_num[0]~2_combout\,
	dataf => \ALT_INV_PCB_BT2~input_o\,
	combout => \btn_controller|btn_num[1]~3_combout\);

-- Location: FF_X79_Y5_N41
\btn_controller|btn_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \btn_controller|btn_num[1]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \btn_controller|btn_num\(1));

-- Location: LABCELL_X80_Y5_N39
\main_fsm|Selector63~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \main_fsm|Selector63~0_combout\ = ( \btn_controller|btn_num\(31) & ( (!\main_fsm|lcd_bus\(1) & (\btn_controller|btn_num\(1) & (\main_fsm|state.PRSD_MSG~q\))) # (\main_fsm|lcd_bus\(1) & ((!\main_fsm|WideOr8~combout\) # ((\btn_controller|btn_num\(1) & 
-- \main_fsm|state.PRSD_MSG~q\)))) ) ) # ( !\btn_controller|btn_num\(31) & ( (\main_fsm|lcd_bus\(1) & ((!\main_fsm|WideOr8~combout\) # (\main_fsm|state.PRSD_MSG~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010101010111000000110101011100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_lcd_bus\(1),
	datab => \btn_controller|ALT_INV_btn_num\(1),
	datac => \main_fsm|ALT_INV_state.PRSD_MSG~q\,
	datad => \main_fsm|ALT_INV_WideOr8~combout\,
	dataf => \btn_controller|ALT_INV_btn_num\(31),
	combout => \main_fsm|Selector63~0_combout\);

-- Location: FF_X78_Y5_N35
\main_fsm|lcd_bus[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \tim_100kHz|clock_signal~q\,
	asdata => \main_fsm|Selector63~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_fsm|lcd_bus[1]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y5_N39
\lcd_controller|Selector44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~1_combout\ = ( \main_fsm|lcd_enable~DUPLICATE_q\ & ( (\main_fsm|lcd_bus[1]~DUPLICATE_q\ & \lcd_controller|state.ready~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_lcd_bus[1]~DUPLICATE_q\,
	datad => \lcd_controller|ALT_INV_state.ready~q\,
	dataf => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	combout => \lcd_controller|Selector44~1_combout\);

-- Location: MLABCELL_X84_Y6_N51
\lcd_controller|Selector44~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~2_combout\ = ( !\lcd_controller|LessThan7~1_combout\ & ( \lcd_controller|LessThan6~3_combout\ & ( (!\lcd_controller|Add0~57_sumout\ & (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|busy~2_combout\ & 
-- \lcd_controller|LessThan3~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datab => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datac => \lcd_controller|ALT_INV_busy~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datae => \lcd_controller|ALT_INV_LessThan7~1_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan6~3_combout\,
	combout => \lcd_controller|Selector44~2_combout\);

-- Location: MLABCELL_X84_Y6_N27
\lcd_controller|Selector44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~0_combout\ = ( !\lcd_controller|LessThan5~1_combout\ & ( !\lcd_controller|Add0~57_sumout\ & ( (\lcd_controller|LessThan3~3_combout\ & (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|busy~2_combout\ & 
-- \lcd_controller|LessThan3~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datab => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datac => \lcd_controller|ALT_INV_busy~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datae => \lcd_controller|ALT_INV_LessThan5~1_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~57_sumout\,
	combout => \lcd_controller|Selector44~0_combout\);

-- Location: MLABCELL_X84_Y6_N24
\lcd_controller|LessThan4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan4~3_combout\ = ( !\lcd_controller|LessThan4~1_combout\ & ( !\lcd_controller|Add0~57_sumout\ & ( (\lcd_controller|LessThan3~3_combout\ & (\lcd_controller|LessThan3~0_combout\ & (\lcd_controller|LessThan3~4_combout\ & 
-- \lcd_controller|busy~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datab => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datad => \lcd_controller|ALT_INV_busy~2_combout\,
	datae => \lcd_controller|ALT_INV_LessThan4~1_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~57_sumout\,
	combout => \lcd_controller|LessThan4~3_combout\);

-- Location: MLABCELL_X84_Y6_N0
\lcd_controller|Selector44~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~4_combout\ = ( \lcd_controller|Selector44~0_combout\ & ( \lcd_controller|LessThan4~3_combout\ & ( \lcd_controller|Selector44~1_combout\ ) ) ) # ( !\lcd_controller|Selector44~0_combout\ & ( \lcd_controller|LessThan4~3_combout\ & 
-- ( \lcd_controller|Selector44~1_combout\ ) ) ) # ( \lcd_controller|Selector44~0_combout\ & ( !\lcd_controller|LessThan4~3_combout\ & ( \lcd_controller|Selector44~1_combout\ ) ) ) # ( !\lcd_controller|Selector44~0_combout\ & ( 
-- !\lcd_controller|LessThan4~3_combout\ & ( ((\lcd_controller|Selector44~3_combout\ & (\lcd_controller|Selector44~2_combout\ & !\lcd_controller|busy~6_combout\))) # (\lcd_controller|Selector44~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector44~3_combout\,
	datab => \lcd_controller|ALT_INV_Selector44~1_combout\,
	datac => \lcd_controller|ALT_INV_Selector44~2_combout\,
	datad => \lcd_controller|ALT_INV_busy~6_combout\,
	datae => \lcd_controller|ALT_INV_Selector44~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan4~3_combout\,
	combout => \lcd_controller|Selector44~4_combout\);

-- Location: FF_X84_Y6_N2
\lcd_controller|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector44~4_combout\,
	ena => \lcd_controller|lcd_data[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(1));

-- Location: LABCELL_X83_Y4_N42
\lcd_controller|Selector44~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector44~5_combout\ = ( \lcd_controller|LessThan5~1_combout\ & ( \lcd_controller|busy~2_combout\ & ( (\lcd_controller|LessThan3~4_combout\ & (!\lcd_controller|LessThan4~1_combout\ & (\lcd_controller|LessThan3~1_combout\ & 
-- !\lcd_controller|Add0~57_sumout\))) ) ) ) # ( !\lcd_controller|LessThan5~1_combout\ & ( \lcd_controller|busy~2_combout\ & ( (\lcd_controller|LessThan3~4_combout\ & (\lcd_controller|LessThan3~1_combout\ & !\lcd_controller|Add0~57_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datab => \lcd_controller|ALT_INV_LessThan4~1_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~1_combout\,
	datad => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datae => \lcd_controller|ALT_INV_LessThan5~1_combout\,
	dataf => \lcd_controller|ALT_INV_busy~2_combout\,
	combout => \lcd_controller|Selector44~5_combout\);

-- Location: LABCELL_X83_Y4_N12
\lcd_controller|Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector43~0_combout\ = ( !\lcd_controller|Add0~1_sumout\ & ( \lcd_controller|busy~2_combout\ & ( (!\lcd_controller|LessThan3~4_combout\) # ((!\lcd_controller|LessThan1~2_combout\) # ((!\lcd_controller|LessThan3~3_combout\) # 
-- (!\lcd_controller|LessThan3~0_combout\))) ) ) ) # ( !\lcd_controller|Add0~1_sumout\ & ( !\lcd_controller|busy~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datab => \lcd_controller|ALT_INV_LessThan1~2_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datae => \lcd_controller|ALT_INV_Add0~1_sumout\,
	dataf => \lcd_controller|ALT_INV_busy~2_combout\,
	combout => \lcd_controller|Selector43~0_combout\);

-- Location: MLABCELL_X84_Y5_N54
\lcd_controller|Selector43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector43~1_combout\ = ( \lcd_controller|Selector44~2_combout\ & ( \lcd_controller|Selector43~0_combout\ & ( (\lcd_controller|Selector33~0_combout\ & (!\lcd_controller|LessThan2~2_combout\ & ((!\lcd_controller|Selector44~5_combout\) # 
-- (\lcd_controller|LessThan3~8_combout\)))) ) ) ) # ( !\lcd_controller|Selector44~2_combout\ & ( \lcd_controller|Selector43~0_combout\ & ( (\lcd_controller|Selector33~0_combout\ & (!\lcd_controller|LessThan2~2_combout\ & 
-- \lcd_controller|LessThan3~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000100000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Selector33~0_combout\,
	datab => \lcd_controller|ALT_INV_Selector44~5_combout\,
	datac => \lcd_controller|ALT_INV_LessThan2~2_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~8_combout\,
	datae => \lcd_controller|ALT_INV_Selector44~2_combout\,
	dataf => \lcd_controller|ALT_INV_Selector43~0_combout\,
	combout => \lcd_controller|Selector43~1_combout\);

-- Location: FF_X84_Y5_N55
\lcd_controller|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector43~1_combout\,
	ena => \lcd_controller|lcd_data[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(2));

-- Location: LABCELL_X85_Y5_N18
\lcd_controller|Selector42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector42~0_combout\ = ( \lcd_controller|state.initialize~q\ & ( \lcd_controller|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \lcd_controller|ALT_INV_state.initialize~q\,
	dataf => \lcd_controller|ALT_INV_Add0~1_sumout\,
	combout => \lcd_controller|Selector42~0_combout\);

-- Location: LABCELL_X83_Y5_N45
\lcd_controller|LessThan3~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|LessThan3~12_combout\ = ( \lcd_controller|LessThan3~3_combout\ & ( !\lcd_controller|Add0~81_sumout\ & ( (!\lcd_controller|Add0~5_sumout\ & (!\lcd_controller|Add0~9_sumout\ & (\lcd_controller|LessThan3~0_combout\ & 
-- \lcd_controller|LessThan3~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_Add0~5_sumout\,
	datab => \lcd_controller|ALT_INV_Add0~9_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~0_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~3_combout\,
	dataf => \lcd_controller|ALT_INV_Add0~81_sumout\,
	combout => \lcd_controller|LessThan3~12_combout\);

-- Location: MLABCELL_X84_Y5_N12
\lcd_controller|Selector42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector42~1_combout\ = ( \lcd_controller|Selector33~0_combout\ & ( \lcd_controller|LessThan1~3_combout\ ) ) # ( !\lcd_controller|Selector33~0_combout\ & ( \lcd_controller|LessThan1~3_combout\ & ( \lcd_controller|Selector42~0_combout\ ) ) 
-- ) # ( \lcd_controller|Selector33~0_combout\ & ( !\lcd_controller|LessThan1~3_combout\ & ( ((\lcd_controller|LessThan2~1_combout\ & (\lcd_controller|LessThan3~12_combout\ & !\lcd_controller|LessThan3~7_combout\))) # (\lcd_controller|Selector42~0_combout\) 
-- ) ) ) # ( !\lcd_controller|Selector33~0_combout\ & ( !\lcd_controller|LessThan1~3_combout\ & ( \lcd_controller|Selector42~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001101110011001100110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_LessThan2~1_combout\,
	datab => \lcd_controller|ALT_INV_Selector42~0_combout\,
	datac => \lcd_controller|ALT_INV_LessThan3~12_combout\,
	datad => \lcd_controller|ALT_INV_LessThan3~7_combout\,
	datae => \lcd_controller|ALT_INV_Selector33~0_combout\,
	dataf => \lcd_controller|ALT_INV_LessThan1~3_combout\,
	combout => \lcd_controller|Selector42~1_combout\);

-- Location: FF_X84_Y5_N13
\lcd_controller|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector42~1_combout\,
	ena => \lcd_controller|lcd_data[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_controller|lcd_data\(3));

-- Location: LABCELL_X83_Y4_N30
\lcd_controller|Selector41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector41~0_combout\ = ( \lcd_controller|LessThan3~4_combout\ & ( \lcd_controller|busy~2_combout\ & ( (!\lcd_controller|state.ready~q\ & (!\lcd_controller|Add0~57_sumout\ & (\lcd_controller|LessThan3~1_combout\ & 
-- \lcd_controller|LessThan1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_controller|ALT_INV_state.ready~q\,
	datab => \lcd_controller|ALT_INV_Add0~57_sumout\,
	datac => \lcd_controller|ALT_INV_LessThan3~1_combout\,
	datad => \lcd_controller|ALT_INV_LessThan1~2_combout\,
	datae => \lcd_controller|ALT_INV_LessThan3~4_combout\,
	dataf => \lcd_controller|ALT_INV_busy~2_combout\,
	combout => \lcd_controller|Selector41~0_combout\);

-- Location: LABCELL_X83_Y4_N39
\lcd_controller|Selector41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \lcd_controller|Selector41~1_combout\ = ( \lcd_controller|Add0~1_sumout\ & ( \main_fsm|lcd_bus\(4) & ( ((!\lcd_controller|state.ready~q\) # (\lcd_controller|Selector41~0_combout\)) # (\main_fsm|lcd_enable~DUPLICATE_q\) ) ) ) # ( 
-- !\lcd_controller|Add0~1_sumout\ & ( \main_fsm|lcd_bus\(4) & ( ((!\lcd_controller|state.ready~q\ & ((!\lcd_controller|state.initialize~q\))) # (\lcd_controller|state.ready~q\ & (\main_fsm|lcd_enable~DUPLICATE_q\))) # (\lcd_controller|Selector41~0_combout\) 
-- ) ) ) # ( \lcd_controller|Add0~1_sumout\ & ( !\main_fsm|lcd_bus\(4) & ( (!\lcd_controller|state.ready~q\) # (\lcd_controller|Selector41~0_combout\) ) ) ) # ( !\lcd_controller|Add0~1_sumout\ & ( !\main_fsm|lcd_bus\(4) & ( 
-- ((!\lcd_controller|state.initialize~q\ & !\lcd_controller|state.ready~q\)) # (\lcd_controller|Selector41~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100001111111111110000111111001111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm|ALT_INV_lcd_enable~DUPLICATE_q\,
	datab => \lcd_controller|ALT_INV_state.initialize~q\,
	datac => \lcd_controller|ALT_INV_Selector41~0_combout\,
	datad => \lcd_controller|ALT_INV_state.ready~q\,
	datae => \lcd_controller|ALT_INV_Add0~1_sumout\,
	dataf => \main_fsm|ALT_INV_lcd_bus\(4),
	combout => \lcd_controller|Selector41~1_combout\);

-- Location: FF_X83_Y4_N41
\lcd_controller|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FPGA_CLK1_50~inputCLKENA0_outclk\,
	d => \lcd_controller|Selector41~1_combout\,
	ena => \lcd_controller|lcd_data[0]~4_combout\,
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

-- Location: IOIBUF_X54_Y0_N1
\PIN_AA11~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PIN_AA11,
	o => \PIN_AA11~input_o\);

-- Location: IOIBUF_X6_Y0_N18
\PIN_AA26~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PIN_AA26,
	o => \PIN_AA26~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\PIN_AB26~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => PIN_AB26,
	o => \PIN_AB26~input_o\);

-- Location: LABCELL_X62_Y14_N3
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


